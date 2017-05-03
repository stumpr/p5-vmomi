package VMOMI::ClusterDependencyRuleInfo;
use parent 'VMOMI::ClusterRuleInfo';

use strict;
use warnings;

our @class_ancestors = ( 
    'ClusterRuleInfo',
    'DynamicData',
);

our @class_members = ( 
    ['vmGroup', undef, 0, ],
    ['dependsOnVmGroup', undef, 0, ],
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
