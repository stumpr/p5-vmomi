package VMOMI::VAppOvfSectionInfo;
use parent 'VMOMI::DynamicData';

our @class_ancestors = ( 
    'DynamicData',
);

our @class_members = ( 
    ['key', undef, 0, 1],
    ['namespace', undef, 0, 1],
    ['type', undef, 0, 1],
    ['atEnvelopeLevel', 'boolean', 0, 1],
    ['contents', undef, 0, 1],
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