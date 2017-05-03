package VMOMI::AgentInstallFailed;
use parent 'VMOMI::HostConnectFault';

use strict;
use warnings;

our @class_ancestors = ( 
    'HostConnectFault',
    'VimFault',
    'MethodFault',
);

our @class_members = ( 
    ['reason', undef, 0, 1],
    ['statusCode', undef, 0, 1],
    ['installerOutput', undef, 0, 1],
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
