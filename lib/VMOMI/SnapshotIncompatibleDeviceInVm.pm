package VMOMI::SnapshotIncompatibleDeviceInVm;
use parent 'VMOMI::SnapshotFault';

use strict;
use warnings;

our @class_ancestors = ( 
    'SnapshotFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['fault', 'LocalizedMethodFault', 0, ],
);

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
