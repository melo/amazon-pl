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


package Amazon::EC2::Model::SecurityGroup;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::SecurityGroup
    # 
    # Properties:
    #
    # 
    # OwnerId: string
    # GroupName: string
    # GroupDescription: string
    # IpPermission: Amazon::EC2::Model::IpPermission
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            OwnerId => { FieldValue => undef, FieldType => "string"},
            GroupName => { FieldValue => undef, FieldType => "string"},
            GroupDescription => { FieldValue => undef, FieldType => "string"},
            IpPermission => {FieldValue => [], FieldType => ["Amazon::EC2::Model::IpPermission"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getOwnerId {
        return shift->{_fields}->{OwnerId}->{FieldValue};
    }


    sub setOwnerId {
        my ($self, $value) = @_;

        $self->{_fields}->{OwnerId}->{FieldValue} = $value;
        return $self;
    }


    sub withOwnerId {
        my ($self, $value) = @_;
        $self->setOwnerId($value);
        return $self;
    }


    sub isSetOwnerId {
        return defined (shift->{_fields}->{OwnerId}->{FieldValue});
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


    sub getGroupDescription {
        return shift->{_fields}->{GroupDescription}->{FieldValue};
    }


    sub setGroupDescription {
        my ($self, $value) = @_;

        $self->{_fields}->{GroupDescription}->{FieldValue} = $value;
        return $self;
    }


    sub withGroupDescription {
        my ($self, $value) = @_;
        $self->setGroupDescription($value);
        return $self;
    }


    sub isSetGroupDescription {
        return defined (shift->{_fields}->{GroupDescription}->{FieldValue});
    }

    sub getIpPermission {
        return shift->{_fields}->{IpPermission}->{FieldValue};
    }

    sub setIpPermission {
        my $self = shift;
        foreach my $ipPermission (@_) {
            if (not $self->_isArrayRef($ipPermission)) {
                $ipPermission =  [$ipPermission];    
            }
            $self->{_fields}->{IpPermission}->{FieldValue} = $ipPermission;
        }
    }


    sub withIpPermission {
        my ($self, $ipPermissionArgs) = @_;
        foreach my $ipPermission (@$ipPermissionArgs) {
            $self->{_fields}->{IpPermission}->{FieldValue} = $ipPermission;
        }
        return $self;
    }   


    sub isSetIpPermission {
        return  scalar (@{shift->{_fields}->{IpPermission}->{FieldValue}}) > 0;
    }





1;