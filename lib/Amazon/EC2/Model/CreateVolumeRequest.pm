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


package Amazon::EC2::Model::CreateVolumeRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::CreateVolumeRequest
    # 
    # Properties:
    #
    # 
    # Size: string
    # SnapshotId: string
    # AvailabilityZone: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Size => { FieldValue => undef, FieldType => "string"},
            SnapshotId => { FieldValue => undef, FieldType => "string"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getSize {
        return shift->{_fields}->{Size}->{FieldValue};
    }


    sub setSize {
        my ($self, $value) = @_;

        $self->{_fields}->{Size}->{FieldValue} = $value;
        return $self;
    }


    sub withSize {
        my ($self, $value) = @_;
        $self->setSize($value);
        return $self;
    }


    sub isSetSize {
        return defined (shift->{_fields}->{Size}->{FieldValue});
    }


    sub getSnapshotId {
        return shift->{_fields}->{SnapshotId}->{FieldValue};
    }


    sub setSnapshotId {
        my ($self, $value) = @_;

        $self->{_fields}->{SnapshotId}->{FieldValue} = $value;
        return $self;
    }


    sub withSnapshotId {
        my ($self, $value) = @_;
        $self->setSnapshotId($value);
        return $self;
    }


    sub isSetSnapshotId {
        return defined (shift->{_fields}->{SnapshotId}->{FieldValue});
    }


    sub getAvailabilityZone {
        return shift->{_fields}->{AvailabilityZone}->{FieldValue};
    }


    sub setAvailabilityZone {
        my ($self, $value) = @_;

        $self->{_fields}->{AvailabilityZone}->{FieldValue} = $value;
        return $self;
    }


    sub withAvailabilityZone {
        my ($self, $value) = @_;
        $self->setAvailabilityZone($value);
        return $self;
    }


    sub isSetAvailabilityZone {
        return defined (shift->{_fields}->{AvailabilityZone}->{FieldValue});
    }





1;