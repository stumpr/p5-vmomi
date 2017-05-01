package VMOMI::VmWwnConflictEvent;
use parent 'VMOMI::VmEvent';

our @class_ancestors = ( 
    'VmEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['conflictedVms', 'VmEventArgument', 1, 1],
    ['conflictedHosts', 'HostEventArgument', 1, 1],
    ['wwn', undef, 0, ],
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