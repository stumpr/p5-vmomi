package VMOMI::BaseConfigInfoRawDiskMappingBackingInfo;
use parent 'VMOMI::BaseConfigInfoFileBackingInfo';

our @class_ancestors = ( 
    'BaseConfigInfoFileBackingInfo',
    'BaseConfigInfoBackingInfo',
    'DynamicData',
);

our @class_members = ( 
    ['lunUuid', undef, 0, ],
    ['compatibilityMode', undef, 0, ],
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
