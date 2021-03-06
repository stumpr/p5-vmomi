package VMOMI::ExpiredFeatureLicense;
use parent 'VMOMI::NotEnoughLicenses';

use strict;
use warnings;

our @class_ancestors = ( 
    'NotEnoughLicenses',
    'RuntimeFault',
    'MethodFault',
);

our @class_members = ( 
    ['feature', undef, 0, ],
    ['count', undef, 0, ],
    ['expirationDate', undef, 0, ],
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
