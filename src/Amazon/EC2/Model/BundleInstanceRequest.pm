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


package Amazon::EC2::Model::BundleInstanceRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::BundleInstanceRequest
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # Storage: Amazon::EC2::Model::Storage
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            Storage => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Storage"},
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





1;