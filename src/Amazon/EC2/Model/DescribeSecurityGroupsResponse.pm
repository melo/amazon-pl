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


package Amazon::EC2::Model::DescribeSecurityGroupsResponse;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::DescribeSecurityGroupsResponse
    # 
    # Properties:
    #
    # 
    # ResponseMetadata: Amazon::EC2::Model::ResponseMetadata
    # DescribeSecurityGroupsResult: Amazon::EC2::Model::DescribeSecurityGroupsResult
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            ResponseMetadata => {FieldValue => undef, FieldType => "Amazon::EC2::Model::ResponseMetadata"},
            DescribeSecurityGroupsResult => {FieldValue => undef, FieldType => "Amazon::EC2::Model::DescribeSecurityGroupsResult"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

       
     #
     # Construct Amazon::EC2::Model::DescribeSecurityGroupsResponse from XML string
     # 
    sub fromXML {
        my ($self, $xml) = @_;
        eval "use XML::Simple";
        my $tree = XML::Simple::XMLin ($xml);
         
        # TODO: check valid XML (is this a response XML?)
        
        return new Amazon::EC2::Model::DescribeSecurityGroupsResponse($tree);
          
    }
    
    sub getResponseMetadata {
        return shift->{_fields}->{ResponseMetadata}->{FieldValue};
    }


    sub setResponseMetadata {
        my ($self, $value) = @_;
        $self->{_fields}->{ResponseMetadata}->{FieldValue} = $value;
    }


    sub withResponseMetadata {
        my ($self, $value) = @_;
        $self->setResponseMetadata($value);
        return $self;
    }


    sub isSetResponseMetadata {
        return defined (shift->{_fields}->{ResponseMetadata}->{FieldValue});

    }

    sub getDescribeSecurityGroupsResult {
        return shift->{_fields}->{DescribeSecurityGroupsResult}->{FieldValue};
    }


    sub setDescribeSecurityGroupsResult {
        my ($self, $value) = @_;
        $self->{_fields}->{DescribeSecurityGroupsResult}->{FieldValue} = $value;
    }


    sub withDescribeSecurityGroupsResult {
        my ($self, $value) = @_;
        $self->setDescribeSecurityGroupsResult($value);
        return $self;
    }


    sub isSetDescribeSecurityGroupsResult {
        return defined (shift->{_fields}->{DescribeSecurityGroupsResult}->{FieldValue});

    }



    #
    # XML Representation for this object
    # 
    # Returns string XML for this object
    #
    sub toXML {
        my $self = shift;
        my $xml = "";
        $xml .= "<DescribeSecurityGroupsResponse xmlns=\"http://ec2.amazonaws.com/doc/2009-07-15/\">";
        $xml .= $self->_toXMLFragment();
        $xml .= "</DescribeSecurityGroupsResponse>";
        return $xml;
    }


1;