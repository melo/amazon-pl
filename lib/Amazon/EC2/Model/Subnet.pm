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


package Amazon::EC2::Model::Subnet;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Subnet
    # 
    # Properties:
    #
    # 
    # SubnetId: string
    # SubnetState: string
    # VpcId: string
    # CidrBlock: string
    # AvailableIpAddressCount: int
    # AvailabilityZone: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            SubnetId => { FieldValue => undef, FieldType => "string"},
            SubnetState => { FieldValue => undef, FieldType => "string"},
            VpcId => { FieldValue => undef, FieldType => "string"},
            CidrBlock => { FieldValue => undef, FieldType => "string"},
            AvailableIpAddressCount => { FieldValue => undef, FieldType => "int"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getSubnetId {
        return shift->{_fields}->{SubnetId}->{FieldValue};
    }


    sub setSubnetId {
        my ($self, $value) = @_;

        $self->{_fields}->{SubnetId}->{FieldValue} = $value;
        return $self;
    }


    sub withSubnetId {
        my ($self, $value) = @_;
        $self->setSubnetId($value);
        return $self;
    }


    sub isSetSubnetId {
        return defined (shift->{_fields}->{SubnetId}->{FieldValue});
    }


    sub getSubnetState {
        return shift->{_fields}->{SubnetState}->{FieldValue};
    }


    sub setSubnetState {
        my ($self, $value) = @_;

        $self->{_fields}->{SubnetState}->{FieldValue} = $value;
        return $self;
    }


    sub withSubnetState {
        my ($self, $value) = @_;
        $self->setSubnetState($value);
        return $self;
    }


    sub isSetSubnetState {
        return defined (shift->{_fields}->{SubnetState}->{FieldValue});
    }


    sub getVpcId {
        return shift->{_fields}->{VpcId}->{FieldValue};
    }


    sub setVpcId {
        my ($self, $value) = @_;

        $self->{_fields}->{VpcId}->{FieldValue} = $value;
        return $self;
    }


    sub withVpcId {
        my ($self, $value) = @_;
        $self->setVpcId($value);
        return $self;
    }


    sub isSetVpcId {
        return defined (shift->{_fields}->{VpcId}->{FieldValue});
    }


    sub getCidrBlock {
        return shift->{_fields}->{CidrBlock}->{FieldValue};
    }


    sub setCidrBlock {
        my ($self, $value) = @_;

        $self->{_fields}->{CidrBlock}->{FieldValue} = $value;
        return $self;
    }


    sub withCidrBlock {
        my ($self, $value) = @_;
        $self->setCidrBlock($value);
        return $self;
    }


    sub isSetCidrBlock {
        return defined (shift->{_fields}->{CidrBlock}->{FieldValue});
    }


    sub getAvailableIpAddressCount {
        return shift->{_fields}->{AvailableIpAddressCount}->{FieldValue};
    }


    sub setAvailableIpAddressCount {
        my ($self, $value) = @_;

        $self->{_fields}->{AvailableIpAddressCount}->{FieldValue} = $value;
        return $self;
    }


    sub withAvailableIpAddressCount {
        my ($self, $value) = @_;
        $self->setAvailableIpAddressCount($value);
        return $self;
    }


    sub isSetAvailableIpAddressCount {
        return defined (shift->{_fields}->{AvailableIpAddressCount}->{FieldValue});
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