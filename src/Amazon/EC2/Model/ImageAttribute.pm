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


package Amazon::EC2::Model::ImageAttribute;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::ImageAttribute
    # 
    # Properties:
    #
    # 
    # ImageId: string
    # LaunchPermission: Amazon::EC2::Model::LaunchPermission
    # ProductCode: string
    # KernelId: string
    # RamdiskId: string
    # BlockDeviceMapping: Amazon::EC2::Model::BlockDeviceMapping
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageId => { FieldValue => undef, FieldType => "string"},
            LaunchPermission => {FieldValue => [], FieldType => ["Amazon::EC2::Model::LaunchPermission"]},
            ProductCode => {FieldValue => [], FieldType => ["string"]},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            BlockDeviceMapping => {FieldValue => undef, FieldType => "Amazon::EC2::Model::BlockDeviceMapping"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getImageId {
        return shift->{_fields}->{ImageId}->{FieldValue};
    }


    sub setImageId {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageId}->{FieldValue} = $value;
        return $self;
    }


    sub withImageId {
        my ($self, $value) = @_;
        $self->setImageId($value);
        return $self;
    }


    sub isSetImageId {
        return defined (shift->{_fields}->{ImageId}->{FieldValue});
    }

    sub getLaunchPermission {
        return shift->{_fields}->{LaunchPermission}->{FieldValue};
    }

    sub setLaunchPermission {
        my $self = shift;
        foreach my $launchPermission (@_) {
            if (not $self->_isArrayRef($launchPermission)) {
                $launchPermission =  [$launchPermission];    
            }
            $self->{_fields}->{LaunchPermission}->{FieldValue} = $launchPermission;
        }
    }


    sub withLaunchPermission {
        my ($self, $launchPermissionArgs) = @_;
        foreach my $launchPermission (@$launchPermissionArgs) {
            $self->{_fields}->{LaunchPermission}->{FieldValue} = $launchPermission;
        }
        return $self;
    }   


    sub isSetLaunchPermission {
        return  scalar (@{shift->{_fields}->{LaunchPermission}->{FieldValue}}) > 0;
    }

    sub getProductCode {
        return shift->{_fields}->{ProductCode}->{FieldValue};
    }


    sub setProductCode    {
        my ($self, $value) = @_;
        $self->{_fields}->{ProductCode}->{FieldValue} = $value;
        return $self;
    }



    sub withProductCode {
        my $self = shift;
            my $list = $self->{_fields}->{ProductCode}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetProductCode {
        return scalar (@{shift->{_fields}->{ProductCode}->{FieldValue}}) > 0;
    }


    sub getKernelId {
        return shift->{_fields}->{KernelId}->{FieldValue};
    }


    sub setKernelId {
        my ($self, $value) = @_;

        $self->{_fields}->{KernelId}->{FieldValue} = $value;
        return $self;
    }


    sub withKernelId {
        my ($self, $value) = @_;
        $self->setKernelId($value);
        return $self;
    }


    sub isSetKernelId {
        return defined (shift->{_fields}->{KernelId}->{FieldValue});
    }


    sub getRamdiskId {
        return shift->{_fields}->{RamdiskId}->{FieldValue};
    }


    sub setRamdiskId {
        my ($self, $value) = @_;

        $self->{_fields}->{RamdiskId}->{FieldValue} = $value;
        return $self;
    }


    sub withRamdiskId {
        my ($self, $value) = @_;
        $self->setRamdiskId($value);
        return $self;
    }


    sub isSetRamdiskId {
        return defined (shift->{_fields}->{RamdiskId}->{FieldValue});
    }

    sub getBlockDeviceMapping {
        return shift->{_fields}->{BlockDeviceMapping}->{FieldValue};
    }


    sub setBlockDeviceMapping {
        my ($self, $value) = @_;
        $self->{_fields}->{BlockDeviceMapping}->{FieldValue} = $value;
    }


    sub withBlockDeviceMapping {
        my ($self, $value) = @_;
        $self->setBlockDeviceMapping($value);
        return $self;
    }


    sub isSetBlockDeviceMapping {
        return defined (shift->{_fields}->{BlockDeviceMapping}->{FieldValue});

    }





1;