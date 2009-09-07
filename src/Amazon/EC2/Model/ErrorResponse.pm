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


package Amazon::EC2::Model::ErrorResponse;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::ErrorResponse
    # 
    # Properties:
    #
    # 
    # Error: Amazon::EC2::Model::Error
    # RequestId: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Error => {FieldValue => [], FieldType => ["Amazon::EC2::Model::Error"]},
            RequestId => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

       
     #
     # Construct Amazon::EC2::Model::ErrorResponse from XML string
     # 
    sub fromXML {
        my ($self, $xml) = @_;
        eval "use XML::Simple";
        my $tree = XML::Simple::XMLin ($xml);
         
        # TODO: check valid XML (is this a response XML?)
        
        return new Amazon::EC2::Model::ErrorResponse($tree);
          
    }
    
    sub getError {
        return shift->{_fields}->{Error}->{FieldValue};
    }

    sub setError {
        my $self = shift;
        foreach my $error (@_) {
            if (not $self->_isArrayRef($error)) {
                $error =  [$error];    
            }
            $self->{_fields}->{Error}->{FieldValue} = $error;
        }
    }


    sub withError {
        my ($self, $errorArgs) = @_;
        foreach my $error (@$errorArgs) {
            $self->{_fields}->{Error}->{FieldValue} = $error;
        }
        return $self;
    }   


    sub isSetError {
        return  scalar (@{shift->{_fields}->{Error}->{FieldValue}}) > 0;
    }


    sub getRequestId {
        return shift->{_fields}->{RequestId}->{FieldValue};
    }


    sub setRequestId {
        my ($self, $value) = @_;

        $self->{_fields}->{RequestId}->{FieldValue} = $value;
        return $self;
    }


    sub withRequestId {
        my ($self, $value) = @_;
        $self->setRequestId($value);
        return $self;
    }


    sub isSetRequestId {
        return defined (shift->{_fields}->{RequestId}->{FieldValue});
    }



    #
    # XML Representation for this object
    # 
    # Returns string XML for this object
    #
    sub toXML {
        my $self = shift;
        my $xml = "";
        $xml .= "<ErrorResponse xmlns=\"http://ec2.amazonaws.com/doc/2009-07-15/\">";
        $xml .= $self->_toXMLFragment();
        $xml .= "</ErrorResponse>";
        return $xml;
    }


1;