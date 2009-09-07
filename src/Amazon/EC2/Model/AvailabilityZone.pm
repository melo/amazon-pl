################################################################################ 
#  Copyright 2008 Amazon Technologies, Inc.
#  Licensed under the Apache License, Version 2.0 (the "License"); 
#  
#  You may not use this file except in compliance with the License. 
#  You may obtain a copy of the License at: http://aws.amazon.com/apache2.0
#  This file is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR 
#  CONDITIONS OF ANY KIND, either express or implied. See the License for the 
#  specific language governing permissions and limitations under the License.
################################################################################ 
#    __  _    _  ___ 
#   (  )( \/\/ )/ __)
#   /__\ \    / \__ \
#  (_)(_) \/\/  (___/
# 
#  Amazon EC2 Perl Library
#  API Version: 2009-07-15
#  Generated: Tue Aug 25 19:22:35 PDT 2009 
# 


package Amazon::EC2::Model::AvailabilityZone;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::AvailabilityZone
    # 
    # Properties:
    #
    # 
    # ZoneName: string
    # ZoneState: string
    # RegionName: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ZoneName => { FieldValue => undef, FieldType => "string"},
            ZoneState => { FieldValue => undef, FieldType => "string"},
            RegionName => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getZoneName {
        return shift->{_fields}->{ZoneName}->{FieldValue};
    }


    sub setZoneName {
        my ($self, $value) = @_;

        $self->{_fields}->{ZoneName}->{FieldValue} = $value;
        return $self;
    }


    sub withZoneName {
        my ($self, $value) = @_;
        $self->setZoneName($value);
        return $self;
    }


    sub isSetZoneName {
        return defined (shift->{_fields}->{ZoneName}->{FieldValue});
    }


    sub getZoneState {
        return shift->{_fields}->{ZoneState}->{FieldValue};
    }


    sub setZoneState {
        my ($self, $value) = @_;

        $self->{_fields}->{ZoneState}->{FieldValue} = $value;
        return $self;
    }


    sub withZoneState {
        my ($self, $value) = @_;
        $self->setZoneState($value);
        return $self;
    }


    sub isSetZoneState {
        return defined (shift->{_fields}->{ZoneState}->{FieldValue});
    }


    sub getRegionName {
        return shift->{_fields}->{RegionName}->{FieldValue};
    }


    sub setRegionName {
        my ($self, $value) = @_;

        $self->{_fields}->{RegionName}->{FieldValue} = $value;
        return $self;
    }


    sub withRegionName {
        my ($self, $value) = @_;
        $self->setRegionName($value);
        return $self;
    }


    sub isSetRegionName {
        return defined (shift->{_fields}->{RegionName}->{FieldValue});
    }





1;