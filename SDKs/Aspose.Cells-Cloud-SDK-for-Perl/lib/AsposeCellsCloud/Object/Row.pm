package AsposeCellsCloud::Object::Row;

require 5.6.0;
use strict;
use warnings;
use utf8;
use JSON qw(decode_json);
use Data::Dumper;
use Module::Runtime qw(use_module);
use Log::Any qw($log);
use Date::Parse;
use DateTime;

use base "AsposeCellsCloud::Object::BaseObject";

#
#
#
#NOTE: This class is auto generated by the swagger code generator program. Do not edit the class manually.
#

my $swagger_types = {
    'GroupLevel' => 'int',
    'Height' => 'double',
    'Index' => 'int',
    'IsBlank' => 'boolean',
    'IsHeightMatched' => 'boolean',
    'IsHidden' => 'boolean',
    'Style' => 'LinkElement',
    'link' => 'Link'
};

my $attribute_map = {
    'GroupLevel' => 'GroupLevel',
    'Height' => 'Height',
    'Index' => 'Index',
    'IsBlank' => 'IsBlank',
    'IsHeightMatched' => 'IsHeightMatched',
    'IsHidden' => 'IsHidden',
    'Style' => 'Style',
    'link' => 'link'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'GroupLevel' => $args{'GroupLevel'}, 
        #
        'Height' => $args{'Height'}, 
        #
        'Index' => $args{'Index'}, 
        #
        'IsBlank' => $args{'IsBlank'}, 
        #
        'IsHeightMatched' => $args{'IsHeightMatched'}, 
        #
        'IsHidden' => $args{'IsHidden'}, 
        #
        'Style' => $args{'Style'}, 
        #
        'link' => $args{'link'}
    }; 

    return bless $self, $class; 
}  

# get swagger type of the attribute
sub get_swagger_types {
    return $swagger_types;
}

# get attribute mappping
sub get_attribute_map {
    return $attribute_map;
}

1;
