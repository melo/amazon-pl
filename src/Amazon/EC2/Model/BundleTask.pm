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


package Amazon::EC2::Model::BundleTask;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::BundleTask
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # BundleId: string
    # BundleState: string
    # StartTime: string
    # UpdateTime: string
    # Storage: Amazon::EC2::Model::Storage
    # Progress: string
    # BundleTaskError: Amazon::EC2::Model::BundleTaskError
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            BundleId => { FieldValue => undef, FieldType => "string"},
            BundleState => { FieldValue => undef, FieldType => "string"},
            StartTime => { FieldValue => undef, FieldType => "string"},
            UpdateTime => { FieldValue => undef, FieldType => "string"},
            Storage => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Storage"},
            Progress => { FieldValue => undef, FieldType => "string"},
            BundleTaskError => {FieldValue => undef, FieldType => "Amazon::EC2::Model::BundleTaskError"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getInstanceId {
        return shift->{_fields}->{InstanceId}->{FieldValue};
    }


    sub setInstanceId {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceId}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceId {
        my ($self, $value) = @_;
        $self->setInstanceId($value);
        return $self;
    }


    sub isSetInstanceId {
        return defined (shift->{_fields}->{InstanceId}->{FieldValue});
    }


    sub getBundleId {
        return shift->{_fields}->{BundleId}->{FieldValue};
    }


    sub setBundleId {
        my ($self, $value) = @_;

        $self->{_fields}->{BundleId}->{FieldValue} = $value;
        return $self;
    }


    sub withBundleId {
        my ($self, $value) = @_;
        $self->setBundleId($value);
        return $self;
    }


    sub isSetBundleId {
        return defined (shift->{_fields}->{BundleId}->{FieldValue});
    }


    sub getBundleState {
        return shift->{_fields}->{BundleState}->{FieldValue};
    }


    sub setBundleState {
        my ($self, $value) = @_;

        $self->{_fields}->{BundleState}->{FieldValue} = $value;
        return $self;
    }


    sub withBundleState {
        my ($self, $value) = @_;
        $self->setBundleState($value);
        return $self;
    }


    sub isSetBundleState {
        return defined (shift->{_fields}->{BundleState}->{FieldValue});
    }


    sub getStartTime {
        return shift->{_fields}->{StartTime}->{FieldValue};
    }


    sub setStartTime {
        my ($self, $value) = @_;

        $self->{_fields}->{StartTime}->{FieldValue} = $value;
        return $self;
    }


    sub withStartTime {
        my ($self, $value) = @_;
        $self->setStartTime($value);
        return $self;
    }


    sub isSetStartTime {
        return defined (shift->{_fields}->{StartTime}->{FieldValue});
    }


    sub getUpdateTime {
        return shift->{_fields}->{UpdateTime}->{FieldValue};
    }


    sub setUpdateTime {
        my ($self, $value) = @_;

        $self->{_fields}->{UpdateTime}->{FieldValue} = $value;
        return $self;
    }


    sub withUpdateTime {
        my ($self, $value) = @_;
        $self->setUpdateTime($value);
        return $self;
    }


    sub isSetUpdateTime {
        return defined (shift->{_fields}->{UpdateTime}->{FieldValue});
    }

    sub getStorage {
        return shift->{_fields}->{Storage}->{FieldValue};
    }


    sub setStorage {
        my ($self, $value) = @_;
        $self->{_fields}->{Storage}->{FieldValue} = $value;
    }


    sub withStorage {
        my ($self, $value) = @_;
        $self->setStorage($value);
        return $self;
    }


    sub isSetStorage {
        return defined (shift->{_fields}->{Storage}->{FieldValue});

    }


    sub getProgress {
        return shift->{_fields}->{Progress}->{FieldValue};
    }


    sub setProgress {
        my ($self, $value) = @_;

        $self->{_fields}->{Progress}->{FieldValue} = $value;
        return $self;
    }


    sub withProgress {
        my ($self, $value) = @_;
        $self->setProgress($value);
        return $self;
    }


    sub isSetProgress {
        return defined (shift->{_fields}->{Progress}->{FieldValue});
    }

    sub getBundleTaskError {
        return shift->{_fields}->{BundleTaskError}->{FieldValue};
    }


    sub setBundleTaskError {
        my ($self, $value) = @_;
        $self->{_fields}->{BundleTaskError}->{FieldValue} = $value;
    }


    sub withBundleTaskError {
        my ($self, $value) = @_;
        $self->setBundleTaskError($value);
        return $self;
    }


    sub isSetBundleTaskError {
        return defined (shift->{_fields}->{BundleTaskError}->{FieldValue});

    }





1;