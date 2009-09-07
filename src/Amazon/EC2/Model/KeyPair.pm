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


package Amazon::EC2::Model::KeyPair;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::KeyPair
    # 
    # Properties:
    #
    # 
    # KeyName: string
    # KeyFingerprint: string
    # KeyMaterial: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            KeyName => { FieldValue => undef, FieldType => "string"},
            KeyFingerprint => { FieldValue => undef, FieldType => "string"},
            KeyMaterial => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getKeyName {
        return shift->{_fields}->{KeyName}->{FieldValue};
    }


    sub setKeyName {
        my ($self, $value) = @_;

        $self->{_fields}->{KeyName}->{FieldValue} = $value;
        return $self;
    }


    sub withKeyName {
        my ($self, $value) = @_;
        $self->setKeyName($value);
        return $self;
    }


    sub isSetKeyName {
        return defined (shift->{_fields}->{KeyName}->{FieldValue});
    }


    sub getKeyFingerprint {
        return shift->{_fields}->{KeyFingerprint}->{FieldValue};
    }


    sub setKeyFingerprint {
        my ($self, $value) = @_;

        $self->{_fields}->{KeyFingerprint}->{FieldValue} = $value;
        return $self;
    }


    sub withKeyFingerprint {
        my ($self, $value) = @_;
        $self->setKeyFingerprint($value);
        return $self;
    }


    sub isSetKeyFingerprint {
        return defined (shift->{_fields}->{KeyFingerprint}->{FieldValue});
    }


    sub getKeyMaterial {
        return shift->{_fields}->{KeyMaterial}->{FieldValue};
    }


    sub setKeyMaterial {
        my ($self, $value) = @_;

        $self->{_fields}->{KeyMaterial}->{FieldValue} = $value;
        return $self;
    }


    sub withKeyMaterial {
        my ($self, $value) = @_;
        $self->setKeyMaterial($value);
        return $self;
    }


    sub isSetKeyMaterial {
        return defined (shift->{_fields}->{KeyMaterial}->{FieldValue});
    }





1;