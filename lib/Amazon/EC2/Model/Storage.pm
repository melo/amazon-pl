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


package Amazon::EC2::Model::Storage;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::Storage
    # 
    # Properties:
    #
    # 
    # S3: Amazon::EC2::Model::S3Storage
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            S3 => {FieldValue => undef, FieldType => "Amazon::EC2::Model::S3Storage"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

        sub getS3 {
        return shift->{_fields}->{S3}->{FieldValue};
    }


    sub setS3 {
        my ($self, $value) = @_;
        $self->{_fields}->{S3}->{FieldValue} = $value;
    }


    sub withS3 {
        my ($self, $value) = @_;
        $self->setS3($value);
        return $self;
    }


    sub isSetS3 {
        return defined (shift->{_fields}->{S3}->{FieldValue});

    }





1;