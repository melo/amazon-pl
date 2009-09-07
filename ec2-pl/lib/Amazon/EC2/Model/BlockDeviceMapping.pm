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


package Amazon::EC2::Model::BlockDeviceMapping;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::BlockDeviceMapping
    # 
    # Properties:
    #
    # 
    # VirtualName: string
    # DeviceName: string
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            VirtualName => { FieldValue => undef, FieldType => "string"},
            DeviceName => { FieldValue => undef, FieldType => "string"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getVirtualName {
        return shift->{_fields}->{VirtualName}->{FieldValue};
    }


    sub setVirtualName {
        my ($self, $value) = @_;

        $self->{_fields}->{VirtualName}->{FieldValue} = $value;
        return $self;
    }


    sub withVirtualName {
        my ($self, $value) = @_;
        $self->setVirtualName($value);
        return $self;
    }


    sub isSetVirtualName {
        return defined (shift->{_fields}->{VirtualName}->{FieldValue});
    }


    sub getDeviceName {
        return shift->{_fields}->{DeviceName}->{FieldValue};
    }


    sub setDeviceName {
        my ($self, $value) = @_;

        $self->{_fields}->{DeviceName}->{FieldValue} = $value;
        return $self;
    }


    sub withDeviceName {
        my ($self, $value) = @_;
        $self->setDeviceName($value);
        return $self;
    }


    sub isSetDeviceName {
        return defined (shift->{_fields}->{DeviceName}->{FieldValue});
    }





1;