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


package Amazon::EC2::Model::VpnGateway;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::VpnGateway
    # 
    # Properties:
    #
    # 
    # VpnGatewayId: string
    # VpnGatewayState: string
    # Type: string
    # AvailabilityZone: string
    # VpcAttachment: Amazon::EC2::Model::VpcAttachment
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VpnGatewayId => { FieldValue => undef, FieldType => "string"},
            VpnGatewayState => { FieldValue => undef, FieldType => "string"},
            Type => { FieldValue => undef, FieldType => "string"},
            AvailabilityZone => { FieldValue => undef, FieldType => "string"},
            VpcAttachment => {FieldValue => [], FieldType => ["Amazon::EC2::Model::VpcAttachment"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getVpnGatewayId {
        return shift->{_fields}->{VpnGatewayId}->{FieldValue};
    }


    sub setVpnGatewayId {
        my ($self, $value) = @_;

        $self->{_fields}->{VpnGatewayId}->{FieldValue} = $value;
        return $self;
    }


    sub withVpnGatewayId {
        my ($self, $value) = @_;
        $self->setVpnGatewayId($value);
        return $self;
    }


    sub isSetVpnGatewayId {
        return defined (shift->{_fields}->{VpnGatewayId}->{FieldValue});
    }


    sub getVpnGatewayState {
        return shift->{_fields}->{VpnGatewayState}->{FieldValue};
    }


    sub setVpnGatewayState {
        my ($self, $value) = @_;

        $self->{_fields}->{VpnGatewayState}->{FieldValue} = $value;
        return $self;
    }


    sub withVpnGatewayState {
        my ($self, $value) = @_;
        $self->setVpnGatewayState($value);
        return $self;
    }


    sub isSetVpnGatewayState {
        return defined (shift->{_fields}->{VpnGatewayState}->{FieldValue});
    }


    sub getType {
        return shift->{_fields}->{Type}->{FieldValue};
    }


    sub setType {
        my ($self, $value) = @_;

        $self->{_fields}->{Type}->{FieldValue} = $value;
        return $self;
    }


    sub withType {
        my ($self, $value) = @_;
        $self->setType($value);
        return $self;
    }


    sub isSetType {
        return defined (shift->{_fields}->{Type}->{FieldValue});
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

    sub getVpcAttachment {
        return shift->{_fields}->{VpcAttachment}->{FieldValue};
    }

    sub setVpcAttachment {
        my $self = shift;
        foreach my $vpcAttachment (@_) {
            if (not $self->_isArrayRef($vpcAttachment)) {
                $vpcAttachment =  [$vpcAttachment];    
            }
            $self->{_fields}->{VpcAttachment}->{FieldValue} = $vpcAttachment;
        }
    }


    sub withVpcAttachment {
        my ($self, $vpcAttachmentArgs) = @_;
        foreach my $vpcAttachment (@$vpcAttachmentArgs) {
            $self->{_fields}->{VpcAttachment}->{FieldValue} = $vpcAttachment;
        }
        return $self;
    }   


    sub isSetVpcAttachment {
        return  scalar (@{shift->{_fields}->{VpcAttachment}->{FieldValue}}) > 0;
    }





1;