package VMOMI::PlacementAction;
use parent 'VMOMI::ClusterAction';

use strict;
use warnings;

our @class_ancestors = ( 
    'ClusterAction',
    'DynamicData',
);

our @class_members = ( 
    ['vm', 'ManagedObjectReference', 0, 1],
    ['targetHost', 'ManagedObjectReference', 0, 1],
    ['relocateSpec', 'VirtualMachineRelocateSpec', 0, 1],
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
