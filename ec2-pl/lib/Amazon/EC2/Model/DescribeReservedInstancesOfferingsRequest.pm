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


package Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest
    # 
    # Properties:
    #
    # 
    # ReservedInstancesId: string
    # InstanceType: string
    # AvailabilityZone: string
    # ProductDescription: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ReservedInstancesId => {FieldValue => [], FieldType => ["string"]},
            InstanceType => { FieldValue => undef, FieldType => "string"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
            ProductDescription => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getReservedInstancesId {
        return shift->{_fields}->{ReservedInstancesId}->{FieldValue};
    }


    sub setReservedInstancesId    {
        my ($self, $value) = @_;
        $self->{_fields}->{ReservedInstancesId}->{FieldValue} = $value;
        return $self;
    }



    sub withReservedInstancesId {
        my $self = shift;
            my $list = $self->{_fields}->{ReservedInstancesId}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetReservedInstancesId {
        return scalar (@{shift->{_fields}->{ReservedInstancesId}->{FieldValue}}) > 0;
    }


    sub getInstanceType {
        return shift->{_fields}->{InstanceType}->{FieldValue};
    }


    sub setInstanceType {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceType}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceType {
        my ($self, $value) = @_;
        $self->setInstanceType($value);
        return $self;
    }


    sub isSetInstanceType {
        return defined (shift->{_fields}->{InstanceType}->{FieldValue});
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


    sub getProductDescription {
        return shift->{_fields}->{ProductDescription}->{FieldValue};
    }


    sub setProductDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{ProductDescription}->{FieldValue} = $value;
        return $self;
    }


    sub withProductDescription {
        my ($self, $value) = @_;
        $self->setProductDescription($value);
        return $self;
    }


    sub isSetProductDescription {
        return defined (shift->{_fields}->{ProductDescription}->{FieldValue});
    }





1;