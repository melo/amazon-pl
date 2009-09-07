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


package Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest
    # 
    # Properties:
    #
    # 
    # GroupName: string
    # SourceSecurityGroupName: string
    # SourceSecurityGroupOwnerId: string
    # IpProtocol: string
    # FromPort: int
    # ToPort: int
    # CidrIp: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            GroupName => { FieldValue => undef, FieldType => "string"},
            SourceSecurityGroupName => { FieldValue => undef, FieldType => "string"},
            SourceSecurityGroupOwnerId => { FieldValue => undef, FieldType => "string"},
            IpProtocol => { FieldValue => undef, FieldType => "string"},
            FromPort => { FieldValue => undef, FieldType => "int"},
            ToPort => { FieldValue => undef, FieldType => "int"},
            CidrIp => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getGroupName {
        return shift->{_fields}->{GroupName}->{FieldValue};
    }


    sub setGroupName {
        my ($self, $value) = @_;

        $self->{_fields}->{GroupName}->{FieldValue} = $value;
        return $self;
    }


    sub withGroupName {
        my ($self, $value) = @_;
        $self->setGroupName($value);
        return $self;
    }


    sub isSetGroupName {
        return defined (shift->{_fields}->{GroupName}->{FieldValue});
    }


    sub getSourceSecurityGroupName {
        return shift->{_fields}->{SourceSecurityGroupName}->{FieldValue};
    }


    sub setSourceSecurityGroupName {
        my ($self, $value) = @_;

        $self->{_fields}->{SourceSecurityGroupName}->{FieldValue} = $value;
        return $self;
    }


    sub withSourceSecurityGroupName {
        my ($self, $value) = @_;
        $self->setSourceSecurityGroupName($value);
        return $self;
    }


    sub isSetSourceSecurityGroupName {
        return defined (shift->{_fields}->{SourceSecurityGroupName}->{FieldValue});
    }


    sub getSourceSecurityGroupOwnerId {
        return shift->{_fields}->{SourceSecurityGroupOwnerId}->{FieldValue};
    }


    sub setSourceSecurityGroupOwnerId {
        my ($self, $value) = @_;

        $self->{_fields}->{SourceSecurityGroupOwnerId}->{FieldValue} = $value;
        return $self;
    }


    sub withSourceSecurityGroupOwnerId {
        my ($self, $value) = @_;
        $self->setSourceSecurityGroupOwnerId($value);
        return $self;
    }


    sub isSetSourceSecurityGroupOwnerId {
        return defined (shift->{_fields}->{SourceSecurityGroupOwnerId}->{FieldValue});
    }


    sub getIpProtocol {
        return shift->{_fields}->{IpProtocol}->{FieldValue};
    }


    sub setIpProtocol {
        my ($self, $value) = @_;

        $self->{_fields}->{IpProtocol}->{FieldValue} = $value;
        return $self;
    }


    sub withIpProtocol {
        my ($self, $value) = @_;
        $self->setIpProtocol($value);
        return $self;
    }


    sub isSetIpProtocol {
        return defined (shift->{_fields}->{IpProtocol}->{FieldValue});
    }


    sub getFromPort {
        return shift->{_fields}->{FromPort}->{FieldValue};
    }


    sub setFromPort {
        my ($self, $value) = @_;

        $self->{_fields}->{FromPort}->{FieldValue} = $value;
        return $self;
    }


    sub withFromPort {
        my ($self, $value) = @_;
        $self->setFromPort($value);
        return $self;
    }


    sub isSetFromPort {
        return defined (shift->{_fields}->{FromPort}->{FieldValue});
    }


    sub getToPort {
        return shift->{_fields}->{ToPort}->{FieldValue};
    }


    sub setToPort {
        my ($self, $value) = @_;

        $self->{_fields}->{ToPort}->{FieldValue} = $value;
        return $self;
    }


    sub withToPort {
        my ($self, $value) = @_;
        $self->setToPort($value);
        return $self;
    }


    sub isSetToPort {
        return defined (shift->{_fields}->{ToPort}->{FieldValue});
    }


    sub getCidrIp {
        return shift->{_fields}->{CidrIp}->{FieldValue};
    }


    sub setCidrIp {
        my ($self, $value) = @_;

        $self->{_fields}->{CidrIp}->{FieldValue} = $value;
        return $self;
    }


    sub withCidrIp {
        my ($self, $value) = @_;
        $self->setCidrIp($value);
        return $self;
    }


    sub isSetCidrIp {
        return defined (shift->{_fields}->{CidrIp}->{FieldValue});
    }





1;