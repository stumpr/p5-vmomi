package VMOMI::ClusterFailoverLevelAdmissionControlPolicy;
use parent 'VMOMI::ClusterDasAdmissionControlPolicy';

use strict;
use warnings;

our @class_ancestors = ( 
    'ClusterDasAdmissionControlPolicy',
    'DynamicData',
);

our @class_members = ( 
    ['failoverLevel', undef, 0, ],
    ['slotPolicy', 'ClusterSlotPolicy', 0, 1],
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
