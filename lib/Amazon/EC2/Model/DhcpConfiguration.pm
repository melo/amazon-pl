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


package Amazon::EC2::Model::DhcpConfiguration;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DhcpConfiguration
    # 
    # Properties:
    #
    # 
    # Key: string
    # Value: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Key => { FieldValue => undef, FieldType => "string"},
            Value => {FieldValue => [], FieldType => ["string"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getKey {
        return shift->{_fields}->{Key}->{FieldValue};
    }


    sub setKey {
        my ($self, $value) = @_;

        $self->{_fields}->{Key}->{FieldValue} = $value;
        return $self;
    }


    sub withKey {
        my ($self, $value) = @_;
        $self->setKey($value);
        return $self;
    }


    sub isSetKey {
        return defined (shift->{_fields}->{Key}->{FieldValue});
    }

    sub getValue {
        return shift->{_fields}->{Value}->{FieldValue};
    }


    sub setValue    {
        my ($self, $value) = @_;
        $self->{_fields}->{Value}->{FieldValue} = $value;
        return $self;
    }



    sub withValue {
        my $self = shift;
            my $list = $self->{_fields}->{Value}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetValue {
        return scalar (@{shift->{_fields}->{Value}->{FieldValue}}) > 0;
    }





1;