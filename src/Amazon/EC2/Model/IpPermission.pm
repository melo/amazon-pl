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


package Amazon::EC2::Model::IpPermission;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::IpPermission
    # 
    # Properties:
    #
    # 
    # IpProtocol: string
    # FromPort: int
    # ToPort: int
    # UserIdGroupPair: Amazon::EC2::Model::UserIdGroupPair
    # IpRange: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            IpProtocol => { FieldValue => undef, FieldType => "string"},
            FromPort => { FieldValue => undef, FieldType => "int"},
            ToPort => { FieldValue => undef, FieldType => "int"},
            UserIdGroupPair => {FieldValue => [], FieldType => ["Amazon::EC2::Model::UserIdGroupPair"]},
            IpRange => {FieldValue => [], FieldType => ["string"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
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

    sub getUserIdGroupPair {
        return shift->{_fields}->{UserIdGroupPair}->{FieldValue};
    }

    sub setUserIdGroupPair {
        my $self = shift;
        foreach my $userIdGroupPair (@_) {
            if (not $self->_isArrayRef($userIdGroupPair)) {
                $userIdGroupPair =  [$userIdGroupPair];    
            }
            $self->{_fields}->{UserIdGroupPair}->{FieldValue} = $userIdGroupPair;
        }
    }


    sub withUserIdGroupPair {
        my ($self, $userIdGroupPairArgs) = @_;
        foreach my $userIdGroupPair (@$userIdGroupPairArgs) {
            $self->{_fields}->{UserIdGroupPair}->{FieldValue} = $userIdGroupPair;
        }
        return $self;
    }   


    sub isSetUserIdGroupPair {
        return  scalar (@{shift->{_fields}->{UserIdGroupPair}->{FieldValue}}) > 0;
    }

    sub getIpRange {
        return shift->{_fields}->{IpRange}->{FieldValue};
    }


    sub setIpRange    {
        my ($self, $value) = @_;
        $self->{_fields}->{IpRange}->{FieldValue} = $value;
        return $self;
    }



    sub withIpRange {
        my $self = shift;
            my $list = $self->{_fields}->{IpRange}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetIpRange {
        return scalar (@{shift->{_fields}->{IpRange}->{FieldValue}}) > 0;
    }





1;