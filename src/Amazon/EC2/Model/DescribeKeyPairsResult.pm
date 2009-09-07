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


package Amazon::EC2::Model::DescribeKeyPairsResult;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeKeyPairsResult
    # 
    # Properties:
    #
    # 
    # KeyPair: Amazon::EC2::Model::KeyPair
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            KeyPair => {FieldValue => [], FieldType => ["Amazon::EC2::Model::KeyPair"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getKeyPair {
        return shift->{_fields}->{KeyPair}->{FieldValue};
    }

    sub setKeyPair {
        my $self = shift;
        foreach my $keyPair (@_) {
            if (not $self->_isArrayRef($keyPair)) {
                $keyPair =  [$keyPair];    
            }
            $self->{_fields}->{KeyPair}->{FieldValue} = $keyPair;
        }
    }


    sub withKeyPair {
        my ($self, $keyPairArgs) = @_;
        foreach my $keyPair (@$keyPairArgs) {
            $self->{_fields}->{KeyPair}->{FieldValue} = $keyPair;
        }
        return $self;
    }   


    sub isSetKeyPair {
        return  scalar (@{shift->{_fields}->{KeyPair}->{FieldValue}}) > 0;
    }





1;