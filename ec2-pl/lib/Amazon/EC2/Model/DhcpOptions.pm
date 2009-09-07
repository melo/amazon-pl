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


package Amazon::EC2::Model::DhcpOptions;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DhcpOptions
    # 
    # Properties:
    #
    # 
    # DhcpOptionsId: string
    # Configuration: Amazon::EC2::Model::DhcpConfiguration
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            DhcpOptionsId => { FieldValue => undef, FieldType => "string"},
            Configuration => {FieldValue => [], FieldType => ["Amazon::EC2::Model::DhcpConfiguration"]},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getDhcpOptionsId {
        return shift->{_fields}->{DhcpOptionsId}->{FieldValue};
    }


    sub setDhcpOptionsId {
        my ($self, $value) = @_;

        $self->{_fields}->{DhcpOptionsId}->{FieldValue} = $value;
        return $self;
    }


    sub withDhcpOptionsId {
        my ($self, $value) = @_;
        $self->setDhcpOptionsId($value);
        return $self;
    }


    sub isSetDhcpOptionsId {
        return defined (shift->{_fields}->{DhcpOptionsId}->{FieldValue});
    }

    sub getConfiguration {
        return shift->{_fields}->{Configuration}->{FieldValue};
    }

    sub setConfiguration {
        my $self = shift;
        foreach my $configuration (@_) {
            if (not $self->_isArrayRef($configuration)) {
                $configuration =  [$configuration];    
            }
            $self->{_fields}->{Configuration}->{FieldValue} = $configuration;
        }
    }


    sub withConfiguration {
        my ($self, $configurationArgs) = @_;
        foreach my $configuration (@$configurationArgs) {
            $self->{_fields}->{Configuration}->{FieldValue} = $configuration;
        }
        return $self;
    }   


    sub isSetConfiguration {
        return  scalar (@{shift->{_fields}->{Configuration}->{FieldValue}}) > 0;
    }





1;