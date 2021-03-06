package VMOMI::VirtualMachineDiskDeviceInfo;
use parent 'VMOMI::VirtualMachineTargetInfo';

use strict;
use warnings;

our @class_ancestors = ( 
    'VirtualMachineTargetInfo',
    'DynamicData',
);

our @class_members = ( 
    ['capacity', undef, 0, 1],
    ['vm', 'ManagedObjectReference', 1, 1],
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
