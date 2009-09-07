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


package Amazon::EC2::Model::Volume;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Volume
    # 
    # Properties:
    #
    # 
    # VolumeId: string
    # Size: string
    # SnapshotId: string
    # AvailabilityZone: string
    # Status: string
    # CreateTime: string
    # Attachment: Amazon::EC2::Model::Attachment
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VolumeId => { FieldValue => undef, FieldType => "string"},
            Size => { FieldValue => undef, FieldType => "string"},
            SnapshotId => { FieldValue => undef, FieldType => "string"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
            Status => { FieldValue => undef, FieldType => "string"},
            CreateTime => { FieldValue => undef, FieldType => "string"},
            Attachment => {FieldValue => [], FieldType => ["Amazon::EC2::Model::Attachment"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getVolumeId {
        return shift->{_fields}->{VolumeId}->{FieldValue};
    }


    sub setVolumeId {
        my ($self, $value) = @_;

        $self->{_fields}->{VolumeId}->{FieldValue} = $value;
        return $self;
    }


    sub withVolumeId {
        my ($self, $value) = @_;
        $self->setVolumeId($value);
        return $self;
    }


    sub isSetVolumeId {
        return defined (shift->{_fields}->{VolumeId}->{FieldValue});
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


    sub getStatus {
        return shift->{_fields}->{Status}->{FieldValue};
    }


    sub setStatus {
        my ($self, $value) = @_;

        $self->{_fields}->{Status}->{FieldValue} = $value;
        return $self;
    }


    sub withStatus {
        my ($self, $value) = @_;
        $self->setStatus($value);
        return $self;
    }


    sub isSetStatus {
        return defined (shift->{_fields}->{Status}->{FieldValue});
    }


    sub getCreateTime {
        return shift->{_fields}->{CreateTime}->{FieldValue};
    }


    sub setCreateTime {
        my ($self, $value) = @_;

        $self->{_fields}->{CreateTime}->{FieldValue} = $value;
        return $self;
    }


    sub withCreateTime {
        my ($self, $value) = @_;
        $self->setCreateTime($value);
        return $self;
    }


    sub isSetCreateTime {
        return defined (shift->{_fields}->{CreateTime}->{FieldValue});
    }

    sub getAttachment {
        return shift->{_fields}->{Attachment}->{FieldValue};
    }

    sub setAttachment {
        my $self = shift;
        foreach my $attachment (@_) {
            if (not $self->_isArrayRef($attachment)) {
                $attachment =  [$attachment];    
            }
            $self->{_fields}->{Attachment}->{FieldValue} = $attachment;
        }
    }


    sub withAttachment {
        my ($self, $attachmentArgs) = @_;
        foreach my $attachment (@$attachmentArgs) {
            $self->{_fields}->{Attachment}->{FieldValue} = $attachment;
        }
        return $self;
    }   


    sub isSetAttachment {
        return  scalar (@{shift->{_fields}->{Attachment}->{FieldValue}}) > 0;
    }





1;