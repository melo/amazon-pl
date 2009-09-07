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


package Amazon::EC2::Model::S3Storage;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::S3Storage
    # 
    # Properties:
    #
    # 
    # Bucket: string
    # Prefix: string
    # AWSAccessKeyId: string
    # UploadPolicy: string
    # UploadPolicySignature: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            Bucket => { FieldValue => undef, FieldType => "string"},
            Prefix => { FieldValue => undef, FieldType => "string"},
            AWSAccessKeyId => { FieldValue => undef, FieldType => "string"},
            UploadPolicy => { FieldValue => undef, FieldType => "string"},
            UploadPolicySignature => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getBucket {
        return shift->{_fields}->{Bucket}->{FieldValue};
    }


    sub setBucket {
        my ($self, $value) = @_;

        $self->{_fields}->{Bucket}->{FieldValue} = $value;
        return $self;
    }


    sub withBucket {
        my ($self, $value) = @_;
        $self->setBucket($value);
        return $self;
    }


    sub isSetBucket {
        return defined (shift->{_fields}->{Bucket}->{FieldValue});
    }


    sub getPrefix {
        return shift->{_fields}->{Prefix}->{FieldValue};
    }


    sub setPrefix {
        my ($self, $value) = @_;

        $self->{_fields}->{Prefix}->{FieldValue} = $value;
        return $self;
    }


    sub withPrefix {
        my ($self, $value) = @_;
        $self->setPrefix($value);
        return $self;
    }


    sub isSetPrefix {
        return defined (shift->{_fields}->{Prefix}->{FieldValue});
    }


    sub getAWSAccessKeyId {
        return shift->{_fields}->{AWSAccessKeyId}->{FieldValue};
    }


    sub setAWSAccessKeyId {
        my ($self, $value) = @_;

        $self->{_fields}->{AWSAccessKeyId}->{FieldValue} = $value;
        return $self;
    }


    sub withAWSAccessKeyId {
        my ($self, $value) = @_;
        $self->setAWSAccessKeyId($value);
        return $self;
    }


    sub isSetAWSAccessKeyId {
        return defined (shift->{_fields}->{AWSAccessKeyId}->{FieldValue});
    }


    sub getUploadPolicy {
        return shift->{_fields}->{UploadPolicy}->{FieldValue};
    }


    sub setUploadPolicy {
        my ($self, $value) = @_;

        $self->{_fields}->{UploadPolicy}->{FieldValue} = $value;
        return $self;
    }


    sub withUploadPolicy {
        my ($self, $value) = @_;
        $self->setUploadPolicy($value);
        return $self;
    }


    sub isSetUploadPolicy {
        return defined (shift->{_fields}->{UploadPolicy}->{FieldValue});
    }


    sub getUploadPolicySignature {
        return shift->{_fields}->{UploadPolicySignature}->{FieldValue};
    }


    sub setUploadPolicySignature {
        my ($self, $value) = @_;

        $self->{_fields}->{UploadPolicySignature}->{FieldValue} = $value;
        return $self;
    }


    sub withUploadPolicySignature {
        my ($self, $value) = @_;
        $self->setUploadPolicySignature($value);
        return $self;
    }


    sub isSetUploadPolicySignature {
        return defined (shift->{_fields}->{UploadPolicySignature}->{FieldValue});
    }





1;