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


package Amazon::EC2::Model::Vpc;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Vpc
    # 
    # Properties:
    #
    # 
    # VpcId: string
    # VpcState: string
    # CidrBlock: string
    # DhcpOptionsId: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VpcId => { FieldValue => undef, FieldType => "string"},
            VpcState => { FieldValue => undef, FieldType => "string"},
            CidrBlock => { FieldValue => undef, FieldType => "string"},
            DhcpOptionsId => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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


    sub getVpcState {
        return shift->{_fields}->{VpcState}->{FieldValue};
    }


    sub setVpcState {
        my ($self, $value) = @_;

        $self->{_fields}->{VpcState}->{FieldValue} = $value;
        return $self;
    }


    sub withVpcState {
        my ($self, $value) = @_;
        $self->setVpcState($value);
        return $self;
    }


    sub isSetVpcState {
        return defined (shift->{_fields}->{VpcState}->{FieldValue});
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


    sub getDhcpOptionsId {
        return shift->{_fields}->{DhcpOptionsId}->{FieldValue};
    }


    sub setDhcpOptionsId {
        my ($self, $value) = @_;

        $self->{_fields}->{DhcpOptionsId}->{FieldValue} = $value;
        return $self;
    }


    sub withDhcpOptionsId {
        my ($self, $value) = @_;
        $self->setDhcpOptionsId($value);
        return $self;
    }


    sub isSetDhcpOptionsId {
        return defined (shift->{_fields}->{DhcpOptionsId}->{FieldValue});
    }





1;