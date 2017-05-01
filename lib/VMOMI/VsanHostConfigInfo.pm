package VMOMI::VsanHostConfigInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['enabled', 'boolean', 0, 1],
    ['hostSystem', 'ManagedObjectReference', 0, 1],
    ['clusterInfo', 'VsanHostConfigInfoClusterInfo', 0, 1],
    ['storageInfo', 'VsanHostConfigInfoStorageInfo', 0, 1],
    ['networkInfo', 'VsanHostConfigInfoNetworkInfo', 0, 1],
    ['faultDomainInfo', 'VsanHostFaultDomainInfo', 0, 1],
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
