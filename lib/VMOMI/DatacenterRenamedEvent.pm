package VMOMI::DatacenterRenamedEvent;
use parent 'VMOMI::DatacenterEvent';

use strict;
use warnings;

our @class_ancestors = ( 
    'DatacenterEvent',
    'Event',
    'DynamicData',
);

our @class_members = ( 
    ['oldName', undef, 0, ],
    ['newName', undef, 0, ],
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
