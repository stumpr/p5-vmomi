package VMOMI::VirtualVmxnet3Vrdma;
use parent 'VMOMI::VirtualVmxnet3';

our @class_ancestors = ( 
    'VirtualVmxnet3',
    'VirtualVmxnet',
    'VirtualEthernetCard',
    'VirtualDevice',
    'DynamicData',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
