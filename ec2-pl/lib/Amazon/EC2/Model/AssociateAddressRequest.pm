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


package Amazon::EC2::Model::AssociateAddressRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::AssociateAddressRequest
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # PublicIp: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            PublicIp => { FieldValue => undef, FieldType => "string"},
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


    sub getPublicIp {
        return shift->{_fields}->{PublicIp}->{FieldValue};
    }


    sub setPublicIp {
        my ($self, $value) = @_;

        $self->{_fields}->{PublicIp}->{FieldValue} = $value;
        return $self;
    }


    sub withPublicIp {
        my ($self, $value) = @_;
        $self->setPublicIp($value);
        return $self;
    }


    sub isSetPublicIp {
        return defined (shift->{_fields}->{PublicIp}->{FieldValue});
    }





1;