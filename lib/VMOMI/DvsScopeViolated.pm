package VMOMI::DvsScopeViolated;
use parent 'VMOMI::DvsFault';

use strict;
use warnings;

our @class_ancestors = ( 
    'DvsFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['scope', 'ManagedObjectReference', 1, ],
    ['entity', 'ManagedObjectReference', 0, ],
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
