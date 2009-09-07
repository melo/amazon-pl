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


package Amazon::EC2::Model::DescribeAddressesResult;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeAddressesResult
    # 
    # Properties:
    #
    # 
    # Address: Amazon::EC2::Model::Address
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Address => {FieldValue => [], FieldType => ["Amazon::EC2::Model::Address"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getAddress {
        return shift->{_fields}->{Address}->{FieldValue};
    }

    sub setAddress {
        my $self = shift;
        foreach my $address (@_) {
            if (not $self->_isArrayRef($address)) {
                $address =  [$address];    
            }
            $self->{_fields}->{Address}->{FieldValue} = $address;
        }
    }


    sub withAddress {
        my ($self, $addressArgs) = @_;
        foreach my $address (@$addressArgs) {
            $self->{_fields}->{Address}->{FieldValue} = $address;
        }
        return $self;
    }   


    sub isSetAddress {
        return  scalar (@{shift->{_fields}->{Address}->{FieldValue}}) > 0;
    }





1;