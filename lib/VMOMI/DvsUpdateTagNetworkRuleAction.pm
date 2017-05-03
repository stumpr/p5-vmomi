package VMOMI::DvsUpdateTagNetworkRuleAction;
use parent 'VMOMI::DvsNetworkRuleAction';

use strict;
use warnings;

our @class_ancestors = ( 
    'DvsNetworkRuleAction',
    'DynamicData',
);

our @class_members = ( 
    ['qosTag', undef, 0, 1],
    ['dscpTag', undef, 0, 1],
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
