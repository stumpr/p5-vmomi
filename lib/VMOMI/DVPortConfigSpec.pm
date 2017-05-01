package VMOMI::DVPortConfigSpec;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['operation', undef, 0, ],
    ['key', undef, 0, 1],
    ['name', undef, 0, 1],
    ['scope', 'ManagedObjectReference', 1, 1],
    ['description', undef, 0, 1],
    ['setting', 'DVPortSetting', 0, 1],
    ['configVersion', undef, 0, 1],
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
