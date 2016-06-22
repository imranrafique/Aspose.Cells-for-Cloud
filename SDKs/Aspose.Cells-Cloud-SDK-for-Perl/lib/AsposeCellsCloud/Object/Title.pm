package AsposeCellsCloud::Object::Title;

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
    'IsVisible' => 'boolean',
    'LinkedSource' => 'string',
    'RotationAngle' => 'int',
    'Text' => 'string',
    'TextDirection' => 'string',
    'TextHorizontalAlignment' => 'string',
    'TextVerticalAlignment' => 'string',
    'Area' => 'Area',
    'AutoScaleFont' => 'boolean',
    'BackgroundMode' => 'string',
    'Border' => 'Line',
    'Font' => 'Font',
    'IsAutomaticSize' => 'boolean',
    'IsInnerMode' => 'boolean',
    'Shadow' => 'boolean',
    'ShapeProperties' => 'ARRAY[LinkElement]',
    'Width' => 'int',
    'Height' => 'int',
    'X' => 'int',
    'Y' => 'int',
    'link' => 'Link'
};

my $attribute_map = {
    'IsVisible' => 'IsVisible',
    'LinkedSource' => 'LinkedSource',
    'RotationAngle' => 'RotationAngle',
    'Text' => 'Text',
    'TextDirection' => 'TextDirection',
    'TextHorizontalAlignment' => 'TextHorizontalAlignment',
    'TextVerticalAlignment' => 'TextVerticalAlignment',
    'Area' => 'Area',
    'AutoScaleFont' => 'AutoScaleFont',
    'BackgroundMode' => 'BackgroundMode',
    'Border' => 'Border',
    'Font' => 'Font',
    'IsAutomaticSize' => 'IsAutomaticSize',
    'IsInnerMode' => 'IsInnerMode',
    'Shadow' => 'Shadow',
    'ShapeProperties' => 'ShapeProperties',
    'Width' => 'Width',
    'Height' => 'Height',
    'X' => 'X',
    'Y' => 'Y',
    'link' => 'link'
};

# new object
sub new { 
    my ($class, %args) = @_; 
    my $self = { 
        #
        'IsVisible' => $args{'IsVisible'}, 
        #
        'LinkedSource' => $args{'LinkedSource'}, 
        #
        'RotationAngle' => $args{'RotationAngle'}, 
        #
        'Text' => $args{'Text'}, 
        #
        'TextDirection' => $args{'TextDirection'}, 
        #
        'TextHorizontalAlignment' => $args{'TextHorizontalAlignment'}, 
        #
        'TextVerticalAlignment' => $args{'TextVerticalAlignment'}, 
        #
        'Area' => $args{'Area'}, 
        #
        'AutoScaleFont' => $args{'AutoScaleFont'}, 
        #
        'BackgroundMode' => $args{'BackgroundMode'}, 
        #
        'Border' => $args{'Border'}, 
        #
        'Font' => $args{'Font'}, 
        #
        'IsAutomaticSize' => $args{'IsAutomaticSize'}, 
        #
        'IsInnerMode' => $args{'IsInnerMode'}, 
        #
        'Shadow' => $args{'Shadow'}, 
        #
        'ShapeProperties' => $args{'ShapeProperties'}, 
        #
        'Width' => $args{'Width'}, 
        #
        'Height' => $args{'Height'}, 
        #
        'X' => $args{'X'}, 
        #
        'Y' => $args{'Y'}, 
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