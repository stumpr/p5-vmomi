package VMOMI::InsufficientAgentVmsDeployed;
use parent 'VMOMI::InsufficientResourcesFault';

our @class_ancestors = ( 
    'InsufficientResourcesFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['hostName', undef, 0, ],
    ['requiredNumAgentVms', undef, 0, ],
    ['currentNumAgentVms', undef, 0, ],
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
