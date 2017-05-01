package VMOMI::OvfHardwareExport;
use parent 'VMOMI::OvfExport';

our @class_ancestors = ( 
    'OvfExport',
    'OvfFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['device', 'VirtualDevice', 0, 1],
    ['vmPath', undef, 0, ],
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
