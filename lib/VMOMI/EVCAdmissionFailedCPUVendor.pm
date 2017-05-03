package VMOMI::EVCAdmissionFailedCPUVendor;
use parent 'VMOMI::EVCAdmissionFailed';

use strict;
use warnings;

our @class_ancestors = ( 
    'EVCAdmissionFailed',
    'NotSupportedHostInCluster',
    'NotSupportedHost',
    'HostConnectFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['clusterCPUVendor', undef, 0, ],
    ['hostCPUVendor', undef, 0, ],
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
