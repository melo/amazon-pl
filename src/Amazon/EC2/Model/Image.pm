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


package Amazon::EC2::Model::Image;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Image
    # 
    # Properties:
    #
    # 
    # ImageId: string
    # ImageLocation: string
    # ImageState: string
    # OwnerId: string
    # Visibility: string
    # ProductCode: string
    # Architecture: string
    # ImageType: string
    # KernelId: string
    # RamdiskId: string
    # Platform: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageId => { FieldValue => undef, FieldType => "string"},
            ImageLocation => { FieldValue => undef, FieldType => "string"},
            ImageState => { FieldValue => undef, FieldType => "string"},
            OwnerId => { FieldValue => undef, FieldType => "string"},
            Visibility => { FieldValue => undef, FieldType => "string"},
            ProductCode => {FieldValue => [], FieldType => ["string"]},
            Architecture => { FieldValue => undef, FieldType => "string"},
            ImageType => { FieldValue => undef, FieldType => "string"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            Platform => { FieldValue => undef, FieldType => "string"},
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


    sub getImageLocation {
        return shift->{_fields}->{ImageLocation}->{FieldValue};
    }


    sub setImageLocation {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageLocation}->{FieldValue} = $value;
        return $self;
    }


    sub withImageLocation {
        my ($self, $value) = @_;
        $self->setImageLocation($value);
        return $self;
    }


    sub isSetImageLocation {
        return defined (shift->{_fields}->{ImageLocation}->{FieldValue});
    }


    sub getImageState {
        return shift->{_fields}->{ImageState}->{FieldValue};
    }


    sub setImageState {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageState}->{FieldValue} = $value;
        return $self;
    }


    sub withImageState {
        my ($self, $value) = @_;
        $self->setImageState($value);
        return $self;
    }


    sub isSetImageState {
        return defined (shift->{_fields}->{ImageState}->{FieldValue});
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


    sub getVisibility {
        return shift->{_fields}->{Visibility}->{FieldValue};
    }


    sub setVisibility {
        my ($self, $value) = @_;

        $self->{_fields}->{Visibility}->{FieldValue} = $value;
        return $self;
    }


    sub withVisibility {
        my ($self, $value) = @_;
        $self->setVisibility($value);
        return $self;
    }


    sub isSetVisibility {
        return defined (shift->{_fields}->{Visibility}->{FieldValue});
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


    sub getArchitecture {
        return shift->{_fields}->{Architecture}->{FieldValue};
    }


    sub setArchitecture {
        my ($self, $value) = @_;

        $self->{_fields}->{Architecture}->{FieldValue} = $value;
        return $self;
    }


    sub withArchitecture {
        my ($self, $value) = @_;
        $self->setArchitecture($value);
        return $self;
    }


    sub isSetArchitecture {
        return defined (shift->{_fields}->{Architecture}->{FieldValue});
    }


    sub getImageType {
        return shift->{_fields}->{ImageType}->{FieldValue};
    }


    sub setImageType {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageType}->{FieldValue} = $value;
        return $self;
    }


    sub withImageType {
        my ($self, $value) = @_;
        $self->setImageType($value);
        return $self;
    }


    sub isSetImageType {
        return defined (shift->{_fields}->{ImageType}->{FieldValue});
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


    sub getPlatform {
        return shift->{_fields}->{Platform}->{FieldValue};
    }


    sub setPlatform {
        my ($self, $value) = @_;

        $self->{_fields}->{Platform}->{FieldValue} = $value;
        return $self;
    }


    sub withPlatform {
        my ($self, $value) = @_;
        $self->setPlatform($value);
        return $self;
    }


    sub isSetPlatform {
        return defined (shift->{_fields}->{Platform}->{FieldValue});
    }





1;