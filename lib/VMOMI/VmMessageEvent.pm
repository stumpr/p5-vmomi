package VMOMI::VmMessageEvent;
use parent 'VMOMI::VmEvent';

our @class_ancestors = ( 
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['message', undef, 0, ],
    ['messageInfo', 'VirtualMachineMessage', 1, 1],
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
