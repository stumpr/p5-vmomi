package VMOMI::VirtualMachineMemoryReservationInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['virtualMachineMin', undef, 0, ],
    ['virtualMachineMax', undef, 0, ],
    ['virtualMachineReserved', undef, 0, ],
    ['allocationPolicy', undef, 0, ],
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
