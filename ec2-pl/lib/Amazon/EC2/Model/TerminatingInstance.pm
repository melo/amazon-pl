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


package Amazon::EC2::Model::TerminatingInstance;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::TerminatingInstance
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # ShutdownState: Amazon::EC2::Model::InstanceState
    # PreviousState: Amazon::EC2::Model::InstanceState
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            ShutdownState => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceState"},
            PreviousState => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceState"},
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

    sub getShutdownState {
        return shift->{_fields}->{ShutdownState}->{FieldValue};
    }


    sub setShutdownState {
        my ($self, $value) = @_;
        $self->{_fields}->{ShutdownState}->{FieldValue} = $value;
    }


    sub withShutdownState {
        my ($self, $value) = @_;
        $self->setShutdownState($value);
        return $self;
    }


    sub isSetShutdownState {
        return defined (shift->{_fields}->{ShutdownState}->{FieldValue});

    }

    sub getPreviousState {
        return shift->{_fields}->{PreviousState}->{FieldValue};
    }


    sub setPreviousState {
        my ($self, $value) = @_;
        $self->{_fields}->{PreviousState}->{FieldValue} = $value;
    }


    sub withPreviousState {
        my ($self, $value) = @_;
        $self->setPreviousState($value);
        return $self;
    }


    sub isSetPreviousState {
        return defined (shift->{_fields}->{PreviousState}->{FieldValue});

    }





1;