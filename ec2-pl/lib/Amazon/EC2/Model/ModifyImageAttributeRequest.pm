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


package Amazon::EC2::Model::ModifyImageAttributeRequest;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::ModifyImageAttributeRequest
    # 
    # Properties:
    #
    # 
    # ImageId: string
    # Attribute: string
    # OperationType: string
    # UserId: string
    # UserGroup: string
    # ProductCode: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ImageId => { FieldValue => undef, FieldType => "string"},
            Attribute => { FieldValue => undef, FieldType => "string"},
            OperationType => { FieldValue => undef, FieldType => "string"},
            UserId => {FieldValue => [], FieldType => ["string"]},
            UserGroup => {FieldValue => [], FieldType => ["string"]},
            ProductCode => {FieldValue => [], FieldType => ["string"]},
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


    sub getAttribute {
        return shift->{_fields}->{Attribute}->{FieldValue};
    }


    sub setAttribute {
        my ($self, $value) = @_;

        $self->{_fields}->{Attribute}->{FieldValue} = $value;
        return $self;
    }


    sub withAttribute {
        my ($self, $value) = @_;
        $self->setAttribute($value);
        return $self;
    }


    sub isSetAttribute {
        return defined (shift->{_fields}->{Attribute}->{FieldValue});
    }


    sub getOperationType {
        return shift->{_fields}->{OperationType}->{FieldValue};
    }


    sub setOperationType {
        my ($self, $value) = @_;

        $self->{_fields}->{OperationType}->{FieldValue} = $value;
        return $self;
    }


    sub withOperationType {
        my ($self, $value) = @_;
        $self->setOperationType($value);
        return $self;
    }


    sub isSetOperationType {
        return defined (shift->{_fields}->{OperationType}->{FieldValue});
    }

    sub getUserId {
        return shift->{_fields}->{UserId}->{FieldValue};
    }


    sub setUserId    {
        my ($self, $value) = @_;
        $self->{_fields}->{UserId}->{FieldValue} = $value;
        return $self;
    }



    sub withUserId {
        my $self = shift;
            my $list = $self->{_fields}->{UserId}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetUserId {
        return scalar (@{shift->{_fields}->{UserId}->{FieldValue}}) > 0;
    }

    sub getUserGroup {
        return shift->{_fields}->{UserGroup}->{FieldValue};
    }


    sub setUserGroup    {
        my ($self, $value) = @_;
        $self->{_fields}->{UserGroup}->{FieldValue} = $value;
        return $self;
    }



    sub withUserGroup {
        my $self = shift;
            my $list = $self->{_fields}->{UserGroup}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetUserGroup {
        return scalar (@{shift->{_fields}->{UserGroup}->{FieldValue}}) > 0;
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





1;