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


package Amazon::EC2::Model::RunningInstance;

use base qw (Amazon::EC2::Model);

    

    #
    # Amazon::EC2::Model::RunningInstance
    # 
    # Properties:
    #
    # 
    # InstanceId: string
    # ImageId: string
    # InstanceState: Amazon::EC2::Model::InstanceState
    # PrivateDnsName: string
    # PublicDnsName: string
    # StateTransitionReason: string
    # KeyName: string
    # AmiLaunchIndex: string
    # ProductCode: string
    # InstanceType: string
    # LaunchTime: string
    # Placement: Amazon::EC2::Model::Placement
    # KernelId: string
    # RamdiskId: string
    # Platform: string
    # Monitoring: Amazon::EC2::Model::Monitoring
    #
    # 
    # 
    sub new {
        my ($class, $data) = @_;
        my $self = {};
        $self->{_fields} = {
            
            InstanceId => { FieldValue => undef, FieldType => "string"},
            ImageId => { FieldValue => undef, FieldType => "string"},
            InstanceState => {FieldValue => undef, FieldType => "Amazon::EC2::Model::InstanceState"},
            PrivateDnsName => { FieldValue => undef, FieldType => "string"},
            PublicDnsName => { FieldValue => undef, FieldType => "string"},
            StateTransitionReason => { FieldValue => undef, FieldType => "string"},
            KeyName => { FieldValue => undef, FieldType => "string"},
            AmiLaunchIndex => { FieldValue => undef, FieldType => "string"},
            ProductCode => {FieldValue => [], FieldType => ["string"]},
            InstanceType => { FieldValue => undef, FieldType => "string"},
            LaunchTime => { FieldValue => undef, FieldType => "string"},
            Placement => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Placement"},
            KernelId => { FieldValue => undef, FieldType => "string"},
            RamdiskId => { FieldValue => undef, FieldType => "string"},
            Platform => { FieldValue => undef, FieldType => "string"},
            Monitoring => {FieldValue => undef, FieldType => "Amazon::EC2::Model::Monitoring"},
        };

        bless ($self, $class);
        if (defined $data) {
           $self->_fromHashRef($data); 
        }
        
        return $self;
    }

    
    sub getInstanceId {
        return shift->{_fields}->{InstanceId}->{FieldValue};
    }


    sub setInstanceId {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceId}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceId {
        my ($self, $value) = @_;
        $self->setInstanceId($value);
        return $self;
    }


    sub isSetInstanceId {
        return defined (shift->{_fields}->{InstanceId}->{FieldValue});
    }


    sub getImageId {
        return shift->{_fields}->{ImageId}->{FieldValue};
    }


    sub setImageId {
        my ($self, $value) = @_;

        $self->{_fields}->{ImageId}->{FieldValue} = $value;
        return $self;
    }


    sub withImageId {
        my ($self, $value) = @_;
        $self->setImageId($value);
        return $self;
    }


    sub isSetImageId {
        return defined (shift->{_fields}->{ImageId}->{FieldValue});
    }

    sub getInstanceState {
        return shift->{_fields}->{InstanceState}->{FieldValue};
    }


    sub setInstanceState {
        my ($self, $value) = @_;
        $self->{_fields}->{InstanceState}->{FieldValue} = $value;
    }


    sub withInstanceState {
        my ($self, $value) = @_;
        $self->setInstanceState($value);
        return $self;
    }


    sub isSetInstanceState {
        return defined (shift->{_fields}->{InstanceState}->{FieldValue});

    }


    sub getPrivateDnsName {
        return shift->{_fields}->{PrivateDnsName}->{FieldValue};
    }


    sub setPrivateDnsName {
        my ($self, $value) = @_;

        $self->{_fields}->{PrivateDnsName}->{FieldValue} = $value;
        return $self;
    }


    sub withPrivateDnsName {
        my ($self, $value) = @_;
        $self->setPrivateDnsName($value);
        return $self;
    }


    sub isSetPrivateDnsName {
        return defined (shift->{_fields}->{PrivateDnsName}->{FieldValue});
    }


    sub getPublicDnsName {
        return shift->{_fields}->{PublicDnsName}->{FieldValue};
    }


    sub setPublicDnsName {
        my ($self, $value) = @_;

        $self->{_fields}->{PublicDnsName}->{FieldValue} = $value;
        return $self;
    }


    sub withPublicDnsName {
        my ($self, $value) = @_;
        $self->setPublicDnsName($value);
        return $self;
    }


    sub isSetPublicDnsName {
        return defined (shift->{_fields}->{PublicDnsName}->{FieldValue});
    }


    sub getStateTransitionReason {
        return shift->{_fields}->{StateTransitionReason}->{FieldValue};
    }


    sub setStateTransitionReason {
        my ($self, $value) = @_;

        $self->{_fields}->{StateTransitionReason}->{FieldValue} = $value;
        return $self;
    }


    sub withStateTransitionReason {
        my ($self, $value) = @_;
        $self->setStateTransitionReason($value);
        return $self;
    }


    sub isSetStateTransitionReason {
        return defined (shift->{_fields}->{StateTransitionReason}->{FieldValue});
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


    sub getAmiLaunchIndex {
        return shift->{_fields}->{AmiLaunchIndex}->{FieldValue};
    }


    sub setAmiLaunchIndex {
        my ($self, $value) = @_;

        $self->{_fields}->{AmiLaunchIndex}->{FieldValue} = $value;
        return $self;
    }


    sub withAmiLaunchIndex {
        my ($self, $value) = @_;
        $self->setAmiLaunchIndex($value);
        return $self;
    }


    sub isSetAmiLaunchIndex {
        return defined (shift->{_fields}->{AmiLaunchIndex}->{FieldValue});
    }

    sub getProductCode {
        return shift->{_fields}->{ProductCode}->{FieldValue};
    }


    sub setProductCode    {
        my ($self, $value) = @_;
        $self->{_fields}->{ProductCode}->{FieldValue} = $value;
        return $self;
    }



    sub withProductCode {
        my $self = shift;
            my $list = $self->{_fields}->{ProductCode}->{FieldValue};
            for (@_) {
                push (@$list, $_);
            }
        return $self;
    }  
      

    sub isSetProductCode {
        return scalar (@{shift->{_fields}->{ProductCode}->{FieldValue}}) > 0;
    }


    sub getInstanceType {
        return shift->{_fields}->{InstanceType}->{FieldValue};
    }


    sub setInstanceType {
        my ($self, $value) = @_;

        $self->{_fields}->{InstanceType}->{FieldValue} = $value;
        return $self;
    }


    sub withInstanceType {
        my ($self, $value) = @_;
        $self->setInstanceType($value);
        return $self;
    }


    sub isSetInstanceType {
        return defined (shift->{_fields}->{InstanceType}->{FieldValue});
    }


    sub getLaunchTime {
        return shift->{_fields}->{LaunchTime}->{FieldValue};
    }


    sub setLaunchTime {
        my ($self, $value) = @_;

        $self->{_fields}->{LaunchTime}->{FieldValue} = $value;
        return $self;
    }


    sub withLaunchTime {
        my ($self, $value) = @_;
        $self->setLaunchTime($value);
        return $self;
    }


    sub isSetLaunchTime {
        return defined (shift->{_fields}->{LaunchTime}->{FieldValue});
    }

    sub getPlacement {
        return shift->{_fields}->{Placement}->{FieldValue};
    }


    sub setPlacement {
        my ($self, $value) = @_;
        $self->{_fields}->{Placement}->{FieldValue} = $value;
    }


    sub withPlacement {
        my ($self, $value) = @_;
        $self->setPlacement($value);
        return $self;
    }


    sub isSetPlacement {
        return defined (shift->{_fields}->{Placement}->{FieldValue});

    }


    sub getKernelId {
        return shift->{_fields}->{KernelId}->{FieldValue};
    }


    sub setKernelId {
        my ($self, $value) = @_;

        $self->{_fields}->{KernelId}->{FieldValue} = $value;
        return $self;
    }


    sub withKernelId {
        my ($self, $value) = @_;
        $self->setKernelId($value);
        return $self;
    }


    sub isSetKernelId {
        return defined (shift->{_fields}->{KernelId}->{FieldValue});
    }


    sub getRamdiskId {
        return shift->{_fields}->{RamdiskId}->{FieldValue};
    }


    sub setRamdiskId {
        my ($self, $value) = @_;

        $self->{_fields}->{RamdiskId}->{FieldValue} = $value;
        return $self;
    }


    sub withRamdiskId {
        my ($self, $value) = @_;
        $self->setRamdiskId($value);
        return $self;
    }


    sub isSetRamdiskId {
        return defined (shift->{_fields}->{RamdiskId}->{FieldValue});
    }


    sub getPlatform {
        return shift->{_fields}->{Platform}->{FieldValue};
    }


    sub setPlatform {
        my ($self, $value) = @_;

        $self->{_fields}->{Platform}->{FieldValue} = $value;
        return $self;
    }


    sub withPlatform {
        my ($self, $value) = @_;
        $self->setPlatform($value);
        return $self;
    }


    sub isSetPlatform {
        return defined (shift->{_fields}->{Platform}->{FieldValue});
    }

    sub getMonitoring {
        return shift->{_fields}->{Monitoring}->{FieldValue};
    }


    sub setMonitoring {
        my ($self, $value) = @_;
        $self->{_fields}->{Monitoring}->{FieldValue} = $value;
    }


    sub withMonitoring {
        my ($self, $value) = @_;
        $self->setMonitoring($value);
        return $self;
    }


    sub isSetMonitoring {
        return defined (shift->{_fields}->{Monitoring}->{FieldValue});

    }





1;