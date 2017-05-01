package VMOMI::ProfileUpdateFailed;
use parent 'VMOMI::VimFault';

our @class_ancestors = ( 
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['failure', 'ProfileUpdateFailedUpdateFailure', 1, ],
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
