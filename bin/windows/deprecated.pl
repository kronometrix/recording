#
# Copyright (c) 2016 Stefan Parvu (www.kronometrix.org).
#
# This program is free software; you can redistribute it and/or
# modify it under the terms of the GNU General Public License
# as published by the Free Software Foundation; either version 2
# of the License, or (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program; if not, write to the Free Software Foundation,
# Inc., 59 Temple Place - Suite 330, Boston, MA 02111-1307, USA.
#
# (http://www.gnu.org/copyleft/gpl.html)

package PerlSvc;

use strict;
use warnings;
use Getopt::Long;
use File::Copy;
use Time::HiRes qw(time gettimeofday sleep tv_interval);
use Win32::OLE ('in');
use Sys::Hostname;
use Win32;


# Debug Only
#use Data::Dumper;

### Command line arguments
usage() if defined $ARGV[0] and $ARGV[0] eq "--help";

my ($h, $V);

Getopt::Long::Configure('bundling');
my $result = GetOptions (
                "h|help"    => \$h,
                "V|version" => \$V
                );

usage() if ( $h || ! $result );
revision() if defined $V;

# process [[interval [count]]
my ( $interval, $loop_max );
if ( defined $ARGV[0] ) {
    $interval = $ARGV[0];
    $loop_max = defined $ARGV[1] ? $ARGV[1] : 2**32;
    usage() if $interval == 0;
}
else {
    $interval = 1;
    $loop_max = 1;
}

### Variables
my $loop        = 0;                      # current loop number
my $recid       = 'nics';
$|= 1;                                    # autoflush


### MAIN BODY


# physical ids
my $pdev  = 'PCI|USB|VMBUS';
my $vdev  = 'ROOT|SW|\{';
my $vid   = 'Microsoft|VMWare|VirtualBox';

# get stats
my $wmi = Win32::OLE->GetObject("winmgmts://./root/cimv2")
    or die "Cannot initialize WMI interface\n";

my $s1 = [gettimeofday];

# get no of NICs
my $nicq = 
  "SELECT * from Win32_NetworkAdapter";

my $wn = $wmi->ExecQuery($nicq);

my $nnic = 0;
my $pnic = 0;
my $vnic = 0;

print "WARNING: This utility uses Win32_NetworkAdapter to fetch all\n";
print "available network adapters found on system. The Win32_NetworkAdapter\n";
print "class is very slow and not optimized for production usage.\n";

foreach my $nic (in $wn) {

    my $vendor = $nic->{Manufacturer};
    my $pnp    = $nic->{PNPDeviceID};
    my $desc   = $nic->{Description};
    my $id     = $nic->{Index};

    if (defined $vendor and defined $pnp) {
        if    ( $vendor =~ /$vid/i and $pnp !~ /$pdev/i ) { $vnic++; }
        elsif ( $vendor !~ /$vid/i and $pnp =~ /$vdev/i ) { $vnic++; }
        else  { $pnic++; }
    } else { 
        print "Warning: $id, $desc missing vendor and pnp information \n";
	$vendor = 'NA';
	$pnp    = 'NA';
    }

    print "$id, $desc, $vendor, $pnp\n";
}

$nnic = $vnic + $pnic;
print "\nNICs: $nnic, Physical: $pnic, Virtual: $vnic \n";

my $e1 = [gettimeofday];
my $delta1  = tv_interval ($s1, $e1);
print "Win32_NetworkAdapter calls took: $delta1 sec\n";


# usage - print usage and exit.
#
sub usage {
    print STDERR <<END;
USAGE: nics -V
 eg.
  nics.exe               # default CLI mode, prints all NICs
END
    exit 0;
}


# revision - print revision and exit
#
sub revision {
    print STDERR <<END;
nics: 1.0.19, 2016-01-25 2231
END
    exit 0;
}