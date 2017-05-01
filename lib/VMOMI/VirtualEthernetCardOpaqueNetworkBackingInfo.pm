package VMOMI::VirtualEthernetCardOpaqueNetworkBackingInfo;
use parent 'VMOMI::VirtualDeviceBackingInfo';

our @class_ancestors = ( 
    'VirtualDeviceBackingInfo',
    'DynamicData',
);

our @class_members = ( 
    ['opaqueNetworkId', undef, 0, ],
    ['opaqueNetworkType', undef, 0, ],
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
