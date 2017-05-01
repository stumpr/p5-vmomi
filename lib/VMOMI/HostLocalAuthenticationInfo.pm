package VMOMI::HostLocalAuthenticationInfo;
use parent 'VMOMI::HostAuthenticationStoreInfo';

our @class_ancestors = ( 
    'HostAuthenticationStoreInfo',
    'DynamicData',
);

our @class_members = ( );

sub get_class_ancestors {
    return @class_ancestors;
}

sub get_class_members {
    my $class = shift;
    my @super_members = $class->SUPER::get_class_members();
    return (@super_members, @class_members);
}

1;
