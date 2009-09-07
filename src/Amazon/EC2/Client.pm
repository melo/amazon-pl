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



package Amazon::EC2::Client;
use strict;
use warnings;
use Digest::SHA qw (hmac_sha1_base64 hmac_sha256_base64);
use XML::Simple;
use LWP::UserAgent;
use URI;
use URI::Escape;
use Time::HiRes qw(usleep);
use Carp qw(croak);
use File::Basename;
use XML::LibXSLT;
use XML::LibXML;
use Cwd ();
use Amazon::EC2::Exception;

my $SERVICE_VERSION = "2009-07-15";

#
 # The Amazon Elastic Compute Cloud (Amazon EC2) web service provides you with
 # the ability to execute your applications in Amazon's computing environment.
 # To use Amazon EC2 you simply:
 # 1. Create an Amazon Machine Image (AMI) containing all your software, including
 # your operating system and associated configuration settings, applications,
 # libraries, etc. Think of this as zipping up the contents of your hard drive. We
 # provide all the necessary tools to create and package your AMI.
 # 2. Upload this AMI to the Amazon S3 (Amazon Simple Storage Service) service. This
 # gives us reliable, secure access to your AMI.
 # 3. Register your AMI with Amazon EC2. This allows us to verify that your AMI has
 # been uploaded correctly and to allocate a unique identifier for it.
 # 4. Use this AMI ID and the Amazon EC2 web service APIs to run, monitor, and
 # terminate as many instances of this AMI as required.
 # You can also skip the first three steps and choose to launch an AMI that is
 # provided by Amazon or shared by another user.
 # While instances are running, you are billed for the computing and network
 # resources that they consume.
 # You can also skip the first three steps and choose to launch an AMI that is
 # provided by Amazon or shared by another user.
 # While instances are running, you are billed for the computing and network
 # resources that they consume.
 # 
# Amazon::EC2::Client is the implementation of service API
#
#

    #
    # Construct new Http Client
    #
    # Valid configuration options are:
    #
    # ServiceURL
    # UserAgent
    # SignatureVersion
    # MaxErrorRetry
    # ProxyHost
    # ProxyPort
    # MaxErrorRetry
    #
    sub new {
        my ($class, $awsAccessKeyId, $awsSecretAccessKey, $config) = @_;
        my $defaultConfig =  {
                            ServiceURL => "https://ec2.amazonaws.com",
                            UserAgent => "Amazon EC2 Perl Library",
                            SignatureVersion => 2,
                            SignatureMethod => "HmacSHA256",
                            ProxyHost => undef,
                            ProxyPort => -1,
                            MaxErrorRetry => 3
                          };
        my $self = {};
        $self->{_awsAccessKeyId} = $awsAccessKeyId;
        $self->{_awsSecretAccessKey} = $awsSecretAccessKey;
        $self->{_config} = $defaultConfig;
        $self->{_config} = {%$defaultConfig, %$config} if defined ($config);
        $self->{_xml_parser} = XML::LibXML->new();
        $self->{_xslt_parser} = XML::LibXSLT->new();
        return bless ($self, $class);
    }

    # Public API ------------------------------------------------------------#


            
    #
    # Allocate Address 
    # The AllocateAddress operation acquires an elastic IP address for use with your
    # account.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AllocateAddress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AllocateAddressRequest request
    # or Amazon::EC2::Model::AllocateAddressRequest object itself
    # See Amazon::EC2::Model::AllocateAddressRequest for valid arguments
    # Returns Amazon::EC2::Model::AllocateAddressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub allocateAddress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AllocateAddressRequest") {
            require Amazon::EC2::Model::AllocateAddressRequest;
            $request = Amazon::EC2::Model::AllocateAddressRequest->new($request);
        }
        require Amazon::EC2::Model::AllocateAddressResponse;
        return Amazon::EC2::Model::AllocateAddressResponse->fromXML($self->_invoke($self->_convertAllocateAddress($request)));
    }


            
    #
    # Associate Address 
    # The AssociateAddress operation associates an elastic IP address with an
    # instance.
    # 
    # If the IP address is currently assigned to another instance, the IP address is
    # assigned to the new instance. This is an idempotent operation. If you enter it
    # more than once, Amazon EC2 does not return an error.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AssociateAddress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AssociateAddressRequest request
    # or Amazon::EC2::Model::AssociateAddressRequest object itself
    # See Amazon::EC2::Model::AssociateAddressRequest for valid arguments
    # Returns Amazon::EC2::Model::AssociateAddressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub associateAddress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AssociateAddressRequest") {
            require Amazon::EC2::Model::AssociateAddressRequest;
            $request = Amazon::EC2::Model::AssociateAddressRequest->new($request);
        }
        require Amazon::EC2::Model::AssociateAddressResponse;
        return Amazon::EC2::Model::AssociateAddressResponse->fromXML($self->_invoke($self->_convertAssociateAddress($request)));
    }


            
    #
    # Attach Volume 
    # Attach a previously created volume to a running instance.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AttachVolume.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AttachVolumeRequest request
    # or Amazon::EC2::Model::AttachVolumeRequest object itself
    # See Amazon::EC2::Model::AttachVolumeRequest for valid arguments
    # Returns Amazon::EC2::Model::AttachVolumeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub attachVolume {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AttachVolumeRequest") {
            require Amazon::EC2::Model::AttachVolumeRequest;
            $request = Amazon::EC2::Model::AttachVolumeRequest->new($request);
        }
        require Amazon::EC2::Model::AttachVolumeResponse;
        return Amazon::EC2::Model::AttachVolumeResponse->fromXML($self->_invoke($self->_convertAttachVolume($request)));
    }


            
    #
    # Authorize Security Group Ingress 
    # The AuthorizeSecurityGroupIngress operation adds permissions to a security
    # group.
    # Permissions are specified by the IP protocol (TCP, UDP or ICMP), the source of
    # the request (by IP range or an Amazon EC2 user-group pair), the source and
    # destination port ranges (for TCP and UDP), and the ICMP codes and types (for
    # ICMP). When authorizing ICMP, -1 can be used as a wildcard in the type and code
    # fields.
    # Permission changes are propagated to instances within the security group as
    # quickly as possible. However, depending on the number of instances, a small
    # delay might occur.
    # When authorizing a user/group pair permission, GroupName,
    # SourceSecurityGroupName and SourceSecurityGroupOwnerId must be specified. When
    # authorizing a CIDR IP permission, GroupName, IpProtocol, FromPort, ToPort and
    # CidrIp must be specified. Mixing these two types of parameters is not allowed.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AuthorizeSecurityGroupIngress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest request
    # or Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest object itself
    # See Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest for valid arguments
    # Returns Amazon::EC2::Model::AuthorizeSecurityGroupIngressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub authorizeSecurityGroupIngress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest") {
            require Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest;
            $request = Amazon::EC2::Model::AuthorizeSecurityGroupIngressRequest->new($request);
        }
        require Amazon::EC2::Model::AuthorizeSecurityGroupIngressResponse;
        return Amazon::EC2::Model::AuthorizeSecurityGroupIngressResponse->fromXML($self->_invoke($self->_convertAuthorizeSecurityGroupIngress($request)));
    }


            
    #
    # Bundle Instance 
    # The BundleInstance operation request that an instance is bundled the next time it boots.
    # The bundling process creates a new image from a running instance and stores
    # the AMI data in S3. Once bundled, the image must be registered in the normal
    # way using the RegisterImage API.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-BundleInstance.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::BundleInstanceRequest request
    # or Amazon::EC2::Model::BundleInstanceRequest object itself
    # See Amazon::EC2::Model::BundleInstanceRequest for valid arguments
    # Returns Amazon::EC2::Model::BundleInstanceResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub bundleInstance {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::BundleInstanceRequest") {
            require Amazon::EC2::Model::BundleInstanceRequest;
            $request = Amazon::EC2::Model::BundleInstanceRequest->new($request);
        }
        require Amazon::EC2::Model::BundleInstanceResponse;
        return Amazon::EC2::Model::BundleInstanceResponse->fromXML($self->_invoke($self->_convertBundleInstance($request)));
    }


            
    #
    # Cancel Bundle Task 
    # CancelBundleTask operation cancels a pending or
    # in-progress bundling task. This is an asynchronous
    # call and it make take a while for the task to be cancelled.
    # If a task is cancelled while it is storing items,
    # there may be parts of the incomplete AMI stored in S3.
    # It is up to the caller to clean up these parts from S3.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CancelBundleTask.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CancelBundleTaskRequest request
    # or Amazon::EC2::Model::CancelBundleTaskRequest object itself
    # See Amazon::EC2::Model::CancelBundleTaskRequest for valid arguments
    # Returns Amazon::EC2::Model::CancelBundleTaskResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub cancelBundleTask {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CancelBundleTaskRequest") {
            require Amazon::EC2::Model::CancelBundleTaskRequest;
            $request = Amazon::EC2::Model::CancelBundleTaskRequest->new($request);
        }
        require Amazon::EC2::Model::CancelBundleTaskResponse;
        return Amazon::EC2::Model::CancelBundleTaskResponse->fromXML($self->_invoke($self->_convertCancelBundleTask($request)));
    }


            
    #
    # Confirm Product Instance 
    # The ConfirmProductInstance operation returns true if the specified product code
    # is attached to the specified instance. The operation returns false if the
    # product code is not attached to the instance.
    # The ConfirmProductInstance operation can only be executed by the owner of the
    # AMI. This feature is useful when an AMI owner is providing support and wants to
    # verify whether a user's instance is eligible.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-ConfirmProductInstance.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::ConfirmProductInstanceRequest request
    # or Amazon::EC2::Model::ConfirmProductInstanceRequest object itself
    # See Amazon::EC2::Model::ConfirmProductInstanceRequest for valid arguments
    # Returns Amazon::EC2::Model::ConfirmProductInstanceResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub confirmProductInstance {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::ConfirmProductInstanceRequest") {
            require Amazon::EC2::Model::ConfirmProductInstanceRequest;
            $request = Amazon::EC2::Model::ConfirmProductInstanceRequest->new($request);
        }
        require Amazon::EC2::Model::ConfirmProductInstanceResponse;
        return Amazon::EC2::Model::ConfirmProductInstanceResponse->fromXML($self->_invoke($self->_convertConfirmProductInstance($request)));
    }


            
    #
    # Create Key Pair 
    # The CreateKeyPair operation creates a new 2048 bit RSA key pair and returns a
    # unique ID that can be used to reference this key pair when launching new
    # instances. For more information, see RunInstances.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateKeyPair.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateKeyPairRequest request
    # or Amazon::EC2::Model::CreateKeyPairRequest object itself
    # See Amazon::EC2::Model::CreateKeyPairRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateKeyPairResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createKeyPair {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateKeyPairRequest") {
            require Amazon::EC2::Model::CreateKeyPairRequest;
            $request = Amazon::EC2::Model::CreateKeyPairRequest->new($request);
        }
        require Amazon::EC2::Model::CreateKeyPairResponse;
        return Amazon::EC2::Model::CreateKeyPairResponse->fromXML($self->_invoke($self->_convertCreateKeyPair($request)));
    }


            
    #
    # Create Security Group 
    # The CreateSecurityGroup operation creates a new security group.
    # Every instance is launched in a security group. If no security group is
    # specified during launch, the instances are launched in the default security
    # group. Instances within the same security group have unrestricted network
    # access to each other. Instances will reject network access attempts from other
    # instances in a different security group. As the owner of instances you can
    # grant or revoke specific permissions using the AuthorizeSecurityGroupIngress
    # and RevokeSecurityGroupIngress operations.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateSecurityGroup.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateSecurityGroupRequest request
    # or Amazon::EC2::Model::CreateSecurityGroupRequest object itself
    # See Amazon::EC2::Model::CreateSecurityGroupRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateSecurityGroupResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createSecurityGroup {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateSecurityGroupRequest") {
            require Amazon::EC2::Model::CreateSecurityGroupRequest;
            $request = Amazon::EC2::Model::CreateSecurityGroupRequest->new($request);
        }
        require Amazon::EC2::Model::CreateSecurityGroupResponse;
        return Amazon::EC2::Model::CreateSecurityGroupResponse->fromXML($self->_invoke($self->_convertCreateSecurityGroup($request)));
    }


            
    #
    # Create Snapshot 
    # Create a snapshot of the volume identified by volume ID. A volume does not have to be detached
    # at the time the snapshot is taken.
    # Important Note:
    # Snapshot creation requires that the system is in a consistent state.
    # For instance, this means that if taking a snapshot of a database, the tables must
    # be read-only locked to ensure that the snapshot will not contain a corrupted
    # version of the database.  Therefore, be careful when using this API to ensure that
    # the system remains in the consistent state until the create snapshot status
    # has returned.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateSnapshot.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateSnapshotRequest request
    # or Amazon::EC2::Model::CreateSnapshotRequest object itself
    # See Amazon::EC2::Model::CreateSnapshotRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateSnapshotResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createSnapshot {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateSnapshotRequest") {
            require Amazon::EC2::Model::CreateSnapshotRequest;
            $request = Amazon::EC2::Model::CreateSnapshotRequest->new($request);
        }
        require Amazon::EC2::Model::CreateSnapshotResponse;
        return Amazon::EC2::Model::CreateSnapshotResponse->fromXML($self->_invoke($self->_convertCreateSnapshot($request)));
    }


            
    #
    # Create Volume 
    # Initializes an empty volume of a given size
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateVolume.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateVolumeRequest request
    # or Amazon::EC2::Model::CreateVolumeRequest object itself
    # See Amazon::EC2::Model::CreateVolumeRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateVolumeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createVolume {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateVolumeRequest") {
            require Amazon::EC2::Model::CreateVolumeRequest;
            $request = Amazon::EC2::Model::CreateVolumeRequest->new($request);
        }
        require Amazon::EC2::Model::CreateVolumeResponse;
        return Amazon::EC2::Model::CreateVolumeResponse->fromXML($self->_invoke($self->_convertCreateVolume($request)));
    }


            
    #
    # Delete Key Pair 
    # The DeleteKeyPair operation deletes a key pair.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteKeyPair.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteKeyPairRequest request
    # or Amazon::EC2::Model::DeleteKeyPairRequest object itself
    # See Amazon::EC2::Model::DeleteKeyPairRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteKeyPairResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteKeyPair {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteKeyPairRequest") {
            require Amazon::EC2::Model::DeleteKeyPairRequest;
            $request = Amazon::EC2::Model::DeleteKeyPairRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteKeyPairResponse;
        return Amazon::EC2::Model::DeleteKeyPairResponse->fromXML($self->_invoke($self->_convertDeleteKeyPair($request)));
    }


            
    #
    # Delete Security Group 
    # The DeleteSecurityGroup operation deletes a security group.
    # Note:
    # If you attempt to delete a security group that contains instances, a fault is
    # returned.
    # If you attempt to delete a security group that is referenced by another
    # security group, a fault is returned. For example, if security group B has a
    # rule that allows access from security group A, security group A cannot be
    # deleted until the allow rule is removed.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteSecurityGroup.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteSecurityGroupRequest request
    # or Amazon::EC2::Model::DeleteSecurityGroupRequest object itself
    # See Amazon::EC2::Model::DeleteSecurityGroupRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteSecurityGroupResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteSecurityGroup {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteSecurityGroupRequest") {
            require Amazon::EC2::Model::DeleteSecurityGroupRequest;
            $request = Amazon::EC2::Model::DeleteSecurityGroupRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteSecurityGroupResponse;
        return Amazon::EC2::Model::DeleteSecurityGroupResponse->fromXML($self->_invoke($self->_convertDeleteSecurityGroup($request)));
    }


            
    #
    # Delete Snapshot 
    # Deletes the snapshot identitied by snapshotId.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteSnapshot.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteSnapshotRequest request
    # or Amazon::EC2::Model::DeleteSnapshotRequest object itself
    # See Amazon::EC2::Model::DeleteSnapshotRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteSnapshotResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteSnapshot {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteSnapshotRequest") {
            require Amazon::EC2::Model::DeleteSnapshotRequest;
            $request = Amazon::EC2::Model::DeleteSnapshotRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteSnapshotResponse;
        return Amazon::EC2::Model::DeleteSnapshotResponse->fromXML($self->_invoke($self->_convertDeleteSnapshot($request)));
    }


            
    #
    # Delete Volume 
    # Deletes a  previously created volume. Once successfully deleted, a new volume  can be created with the same name.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteVolume.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteVolumeRequest request
    # or Amazon::EC2::Model::DeleteVolumeRequest object itself
    # See Amazon::EC2::Model::DeleteVolumeRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteVolumeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteVolume {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteVolumeRequest") {
            require Amazon::EC2::Model::DeleteVolumeRequest;
            $request = Amazon::EC2::Model::DeleteVolumeRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteVolumeResponse;
        return Amazon::EC2::Model::DeleteVolumeResponse->fromXML($self->_invoke($self->_convertDeleteVolume($request)));
    }


            
    #
    # Deregister Image 
    # The DeregisterImage operation deregisters an AMI. Once deregistered, instances
    # of the AMI can no longer be launched.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeregisterImage.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeregisterImageRequest request
    # or Amazon::EC2::Model::DeregisterImageRequest object itself
    # See Amazon::EC2::Model::DeregisterImageRequest for valid arguments
    # Returns Amazon::EC2::Model::DeregisterImageResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deregisterImage {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeregisterImageRequest") {
            require Amazon::EC2::Model::DeregisterImageRequest;
            $request = Amazon::EC2::Model::DeregisterImageRequest->new($request);
        }
        require Amazon::EC2::Model::DeregisterImageResponse;
        return Amazon::EC2::Model::DeregisterImageResponse->fromXML($self->_invoke($self->_convertDeregisterImage($request)));
    }


            
    #
    # Describe Addresses 
    # The DescribeAddresses operation lists elastic IP addresses assigned to your
    # account.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeAddresses.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeAddressesRequest request
    # or Amazon::EC2::Model::DescribeAddressesRequest object itself
    # See Amazon::EC2::Model::DescribeAddressesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeAddressesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeAddresses {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeAddressesRequest") {
            require Amazon::EC2::Model::DescribeAddressesRequest;
            $request = Amazon::EC2::Model::DescribeAddressesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeAddressesResponse;
        return Amazon::EC2::Model::DescribeAddressesResponse->fromXML($self->_invoke($self->_convertDescribeAddresses($request)));
    }


            
    #
    # Describe Availability Zones 
    # The DescribeAvailabilityZones operation describes availability zones that are
    # currently available to the account and their states.
    # Availability zones are not the same across accounts. The availability zone
    # us-east-1a for account A is not necessarily the same as us-east-1a for account
    # B. Zone assignments are mapped independently for each account.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeAvailabilityZones.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeAvailabilityZonesRequest request
    # or Amazon::EC2::Model::DescribeAvailabilityZonesRequest object itself
    # See Amazon::EC2::Model::DescribeAvailabilityZonesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeAvailabilityZonesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeAvailabilityZones {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeAvailabilityZonesRequest") {
            require Amazon::EC2::Model::DescribeAvailabilityZonesRequest;
            $request = Amazon::EC2::Model::DescribeAvailabilityZonesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeAvailabilityZonesResponse;
        return Amazon::EC2::Model::DescribeAvailabilityZonesResponse->fromXML($self->_invoke($self->_convertDescribeAvailabilityZones($request)));
    }


            
    #
    # Describe Bundle Tasks 
    # The DescribeBundleTasks operation describes in-progress
    # and recent bundle tasks. Complete and failed tasks are
    # removed from the list a short time after completion.
    # If no bundle ids are given, all bundle tasks are returned.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeBundleTasks.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeBundleTasksRequest request
    # or Amazon::EC2::Model::DescribeBundleTasksRequest object itself
    # See Amazon::EC2::Model::DescribeBundleTasksRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeBundleTasksResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeBundleTasks {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeBundleTasksRequest") {
            require Amazon::EC2::Model::DescribeBundleTasksRequest;
            $request = Amazon::EC2::Model::DescribeBundleTasksRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeBundleTasksResponse;
        return Amazon::EC2::Model::DescribeBundleTasksResponse->fromXML($self->_invoke($self->_convertDescribeBundleTasks($request)));
    }


            
    #
    # Describe Image Attribute 
    # The DescribeImageAttribute operation returns information about an attribute of
    # an AMI. Only one attribute can be specified per call.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeImageAttribute.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeImageAttributeRequest request
    # or Amazon::EC2::Model::DescribeImageAttributeRequest object itself
    # See Amazon::EC2::Model::DescribeImageAttributeRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeImageAttributeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeImageAttribute {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeImageAttributeRequest") {
            require Amazon::EC2::Model::DescribeImageAttributeRequest;
            $request = Amazon::EC2::Model::DescribeImageAttributeRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeImageAttributeResponse;
        return Amazon::EC2::Model::DescribeImageAttributeResponse->fromXML($self->_invoke($self->_convertDescribeImageAttribute($request)));
    }


            
    #
    # Describe Images 
    # The DescribeImages operation returns information about AMIs, AKIs, and ARIs
    # available to the user. Information returned includes image type, product codes,
    # architecture, and kernel and RAM disk IDs. Images available to the user include
    # public images available for any user to launch, private images owned by the
    # user making the request, and private images owned by other users for which the
    # user has explicit launch permissions.
    # Launch permissions fall into three categories:
    # Public:
    # The owner of the AMI granted launch permissions for the AMI to the all group.
    # All users have launch permissions for these AMIs.
    # Explicit:
    # The owner of the AMI granted launch permissions to a specific user.
    # Implicit:
    # A user has implicit launch permissions for all AMIs he or she owns.
    # The list of AMIs returned can be modified by specifying AMI IDs, AMI owners, or
    # users with launch permissions. If no options are specified, Amazon EC2 returns
    # all AMIs for which the user has launch permissions.
    # If you specify one or more AMI IDs, only AMIs that have the specified IDs are
    # returned. If you specify an invalid AMI ID, a fault is returned. If you specify
    # an AMI ID for which you do not have access, it will not be included in the
    # returned results.
    # If you specify one or more AMI owners, only AMIs from the specified owners and
    # for which you have access are returned. The results can include the account IDs
    # of the specified owners, amazon for AMIs owned by Amazon or self for AMIs that
    # you own.
    # If you specify a list of executable users, only users that have launch
    # permissions for the AMIs are returned. You can specify account IDs (if you own
    # the AMI(s)), self for AMIs for which you own or have explicit permissions, or
    # all for public AMIs.
    # Note:
    # Deregistered images are included in the returned results for an unspecified
    # interval after deregistration.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeImages.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeImagesRequest request
    # or Amazon::EC2::Model::DescribeImagesRequest object itself
    # See Amazon::EC2::Model::DescribeImagesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeImagesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeImages {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeImagesRequest") {
            require Amazon::EC2::Model::DescribeImagesRequest;
            $request = Amazon::EC2::Model::DescribeImagesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeImagesResponse;
        return Amazon::EC2::Model::DescribeImagesResponse->fromXML($self->_invoke($self->_convertDescribeImages($request)));
    }


            
    #
    # Describe Instances 
    # The DescribeInstances operation returns information about instances that you
    # own.
    # If you specify one or more instance IDs, Amazon EC2 returns information for
    # those instances. If you do not specify instance IDs, Amazon EC2 returns
    # information for all relevant instances. If you specify an invalid instance ID,
    # a fault is returned. If you specify an instance that you do not own, it will
    # not be included in the returned results.
    # Recently terminated instances might appear in the returned results. This
    # interval is usually less than one hour.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeInstancesRequest request
    # or Amazon::EC2::Model::DescribeInstancesRequest object itself
    # See Amazon::EC2::Model::DescribeInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeInstancesRequest") {
            require Amazon::EC2::Model::DescribeInstancesRequest;
            $request = Amazon::EC2::Model::DescribeInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeInstancesResponse;
        return Amazon::EC2::Model::DescribeInstancesResponse->fromXML($self->_invoke($self->_convertDescribeInstances($request)));
    }


            
    #
    # Describe Regions 
    # The DescribeRegions operation describes regions zones that are currently available to the account.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeRegions.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeRegionsRequest request
    # or Amazon::EC2::Model::DescribeRegionsRequest object itself
    # See Amazon::EC2::Model::DescribeRegionsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeRegionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeRegions {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeRegionsRequest") {
            require Amazon::EC2::Model::DescribeRegionsRequest;
            $request = Amazon::EC2::Model::DescribeRegionsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeRegionsResponse;
        return Amazon::EC2::Model::DescribeRegionsResponse->fromXML($self->_invoke($self->_convertDescribeRegions($request)));
    }


            
    #
    # Describe Reserved Instances 
    # The DescribeReservedInstances operation describes Reserved Instances that were purchased for use with your account.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeReservedInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeReservedInstancesRequest request
    # or Amazon::EC2::Model::DescribeReservedInstancesRequest object itself
    # See Amazon::EC2::Model::DescribeReservedInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeReservedInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeReservedInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeReservedInstancesRequest") {
            require Amazon::EC2::Model::DescribeReservedInstancesRequest;
            $request = Amazon::EC2::Model::DescribeReservedInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeReservedInstancesResponse;
        return Amazon::EC2::Model::DescribeReservedInstancesResponse->fromXML($self->_invoke($self->_convertDescribeReservedInstances($request)));
    }


            
    #
    # Describe Reserved Instances Offerings 
    # The DescribeReservedInstancesOfferings operation describes Reserved
    # Instance offerings that are available for purchase. With Amazon EC2
    # Reserved Instances, you purchase the right to launch Amazon EC2 instances
    # for a period of time (without getting insufficient capacity errors) and
    # pay a lower usage rate for the actual time used.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeReservedInstancesOfferings.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest request
    # or Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest object itself
    # See Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeReservedInstancesOfferingsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeReservedInstancesOfferings {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest") {
            require Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest;
            $request = Amazon::EC2::Model::DescribeReservedInstancesOfferingsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeReservedInstancesOfferingsResponse;
        return Amazon::EC2::Model::DescribeReservedInstancesOfferingsResponse->fromXML($self->_invoke($self->_convertDescribeReservedInstancesOfferings($request)));
    }


            
    #
    # Describe Key Pairs 
    # The DescribeKeyPairs operation returns information about key pairs available to
    # you. If you specify key pairs, information about those key pairs is returned.
    # Otherwise, information for all registered key pairs is returned.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeKeyPairs.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeKeyPairsRequest request
    # or Amazon::EC2::Model::DescribeKeyPairsRequest object itself
    # See Amazon::EC2::Model::DescribeKeyPairsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeKeyPairsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeKeyPairs {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeKeyPairsRequest") {
            require Amazon::EC2::Model::DescribeKeyPairsRequest;
            $request = Amazon::EC2::Model::DescribeKeyPairsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeKeyPairsResponse;
        return Amazon::EC2::Model::DescribeKeyPairsResponse->fromXML($self->_invoke($self->_convertDescribeKeyPairs($request)));
    }


            
    #
    # Describe Security Groups 
    # The DescribeSecurityGroups operation returns information about security groups
    # that you own.
    # If you specify security group names, information about those security group is
    # returned. Otherwise, information for all security group is returned. If you
    # specify a group that does not exist, a fault is returned.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeSecurityGroups.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeSecurityGroupsRequest request
    # or Amazon::EC2::Model::DescribeSecurityGroupsRequest object itself
    # See Amazon::EC2::Model::DescribeSecurityGroupsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeSecurityGroupsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeSecurityGroups {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeSecurityGroupsRequest") {
            require Amazon::EC2::Model::DescribeSecurityGroupsRequest;
            $request = Amazon::EC2::Model::DescribeSecurityGroupsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeSecurityGroupsResponse;
        return Amazon::EC2::Model::DescribeSecurityGroupsResponse->fromXML($self->_invoke($self->_convertDescribeSecurityGroups($request)));
    }


            
    #
    # Describe Snapshots 
    # Describes the indicated snapshots, or in lieu of that, all snapshots owned by the caller.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeSnapshots.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeSnapshotsRequest request
    # or Amazon::EC2::Model::DescribeSnapshotsRequest object itself
    # See Amazon::EC2::Model::DescribeSnapshotsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeSnapshotsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeSnapshots {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeSnapshotsRequest") {
            require Amazon::EC2::Model::DescribeSnapshotsRequest;
            $request = Amazon::EC2::Model::DescribeSnapshotsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeSnapshotsResponse;
        return Amazon::EC2::Model::DescribeSnapshotsResponse->fromXML($self->_invoke($self->_convertDescribeSnapshots($request)));
    }


            
    #
    # Describe Volumes 
    # Describes the status of the indicated or, in lieu of any specified,  all volumes belonging to the caller. Volumes that have been deleted are not described.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeVolumes.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeVolumesRequest request
    # or Amazon::EC2::Model::DescribeVolumesRequest object itself
    # See Amazon::EC2::Model::DescribeVolumesRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeVolumesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeVolumes {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeVolumesRequest") {
            require Amazon::EC2::Model::DescribeVolumesRequest;
            $request = Amazon::EC2::Model::DescribeVolumesRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeVolumesResponse;
        return Amazon::EC2::Model::DescribeVolumesResponse->fromXML($self->_invoke($self->_convertDescribeVolumes($request)));
    }


            
    #
    # Detach Volume 
    # Detach a previously attached volume from a running instance.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DetachVolume.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DetachVolumeRequest request
    # or Amazon::EC2::Model::DetachVolumeRequest object itself
    # See Amazon::EC2::Model::DetachVolumeRequest for valid arguments
    # Returns Amazon::EC2::Model::DetachVolumeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub detachVolume {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DetachVolumeRequest") {
            require Amazon::EC2::Model::DetachVolumeRequest;
            $request = Amazon::EC2::Model::DetachVolumeRequest->new($request);
        }
        require Amazon::EC2::Model::DetachVolumeResponse;
        return Amazon::EC2::Model::DetachVolumeResponse->fromXML($self->_invoke($self->_convertDetachVolume($request)));
    }


            
    #
    # Disassociate Address 
    # The DisassociateAddress operation disassociates the specified elastic IP
    # address from the instance to which it is assigned. This is an idempotent
    # operation. If you enter it more than once, Amazon EC2 does not return an error.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DisassociateAddress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DisassociateAddressRequest request
    # or Amazon::EC2::Model::DisassociateAddressRequest object itself
    # See Amazon::EC2::Model::DisassociateAddressRequest for valid arguments
    # Returns Amazon::EC2::Model::DisassociateAddressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub disassociateAddress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DisassociateAddressRequest") {
            require Amazon::EC2::Model::DisassociateAddressRequest;
            $request = Amazon::EC2::Model::DisassociateAddressRequest->new($request);
        }
        require Amazon::EC2::Model::DisassociateAddressResponse;
        return Amazon::EC2::Model::DisassociateAddressResponse->fromXML($self->_invoke($self->_convertDisassociateAddress($request)));
    }


            
    #
    # Get Console Output 
    # The GetConsoleOutput operation retrieves console output for the specified
    # instance.
    # Instance console output is buffered and posted shortly after instance boot,
    # reboot, and termination. Amazon EC2 preserves the most recent 64 KB output
    # which will be available for at least one hour after the most recent post.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-GetConsoleOutput.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::GetConsoleOutputRequest request
    # or Amazon::EC2::Model::GetConsoleOutputRequest object itself
    # See Amazon::EC2::Model::GetConsoleOutputRequest for valid arguments
    # Returns Amazon::EC2::Model::GetConsoleOutputResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub getConsoleOutput {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::GetConsoleOutputRequest") {
            require Amazon::EC2::Model::GetConsoleOutputRequest;
            $request = Amazon::EC2::Model::GetConsoleOutputRequest->new($request);
        }
        require Amazon::EC2::Model::GetConsoleOutputResponse;
        return Amazon::EC2::Model::GetConsoleOutputResponse->fromXML($self->_invoke($self->_convertGetConsoleOutput($request)));
    }


            
    #
    # Modify Image Attribute 
    # The ModifyImageAttribute operation modifies an attribute of an AMI.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-ModifyImageAttribute.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::ModifyImageAttributeRequest request
    # or Amazon::EC2::Model::ModifyImageAttributeRequest object itself
    # See Amazon::EC2::Model::ModifyImageAttributeRequest for valid arguments
    # Returns Amazon::EC2::Model::ModifyImageAttributeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub modifyImageAttribute {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::ModifyImageAttributeRequest") {
            require Amazon::EC2::Model::ModifyImageAttributeRequest;
            $request = Amazon::EC2::Model::ModifyImageAttributeRequest->new($request);
        }
        require Amazon::EC2::Model::ModifyImageAttributeResponse;
        return Amazon::EC2::Model::ModifyImageAttributeResponse->fromXML($self->_invoke($self->_convertModifyImageAttribute($request)));
    }


            
    #
    # Purchase Reserved Instances Offering 
    # The PurchaseReservedInstancesOffering operation purchases a
    # Reserved Instance for use with your account. With Amazon EC2
    # Reserved Instances, you purchase the right to launch Amazon EC2
    # instances for a period of time (without getting insufficient
    # capacity errors) and pay a lower usage rate for the
    # actual time used.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-PurchaseReservedInstancesOffering.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest request
    # or Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest object itself
    # See Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest for valid arguments
    # Returns Amazon::EC2::Model::PurchaseReservedInstancesOfferingResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub purchaseReservedInstancesOffering {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest") {
            require Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest;
            $request = Amazon::EC2::Model::PurchaseReservedInstancesOfferingRequest->new($request);
        }
        require Amazon::EC2::Model::PurchaseReservedInstancesOfferingResponse;
        return Amazon::EC2::Model::PurchaseReservedInstancesOfferingResponse->fromXML($self->_invoke($self->_convertPurchaseReservedInstancesOffering($request)));
    }


            
    #
    # Reboot Instances 
    # The RebootInstances operation requests a reboot of one or more instances. This
    # operation is asynchronous; it only queues a request to reboot the specified
    # instance(s). The operation will succeed if the instances are valid and belong
    # to the user. Requests to reboot terminated instances are ignored.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-RebootInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::RebootInstancesRequest request
    # or Amazon::EC2::Model::RebootInstancesRequest object itself
    # See Amazon::EC2::Model::RebootInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::RebootInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub rebootInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::RebootInstancesRequest") {
            require Amazon::EC2::Model::RebootInstancesRequest;
            $request = Amazon::EC2::Model::RebootInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::RebootInstancesResponse;
        return Amazon::EC2::Model::RebootInstancesResponse->fromXML($self->_invoke($self->_convertRebootInstances($request)));
    }


            
    #
    # Register Image 
    # The RegisterImage operation registers an AMI with Amazon EC2. Images must be
    # registered before they can be launched. For more information, see RunInstances.
    # Each AMI is associated with an unique ID which is provided by the Amazon EC2
    # service through the RegisterImage operation. During registration, Amazon EC2
    # retrieves the specified image manifest from Amazon S3 and verifies that the
    # image is owned by the user registering the image.
    # The image manifest is retrieved once and stored within the Amazon EC2. Any
    # modifications to an image in Amazon S3 invalidates this registration. If you
    # make changes to an image, deregister the previous image and register the new
    # image. For more information, see DeregisterImage.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-RegisterImage.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::RegisterImageRequest request
    # or Amazon::EC2::Model::RegisterImageRequest object itself
    # See Amazon::EC2::Model::RegisterImageRequest for valid arguments
    # Returns Amazon::EC2::Model::RegisterImageResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub registerImage {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::RegisterImageRequest") {
            require Amazon::EC2::Model::RegisterImageRequest;
            $request = Amazon::EC2::Model::RegisterImageRequest->new($request);
        }
        require Amazon::EC2::Model::RegisterImageResponse;
        return Amazon::EC2::Model::RegisterImageResponse->fromXML($self->_invoke($self->_convertRegisterImage($request)));
    }


            
    #
    # Release Address 
    # The ReleaseAddress operation releases an elastic IP address associated with
    # your account.
    # Note:
    # Releasing an IP address automatically disassociates it from any instance with
    # which it is associated. For more information, see DisassociateAddress.
    # Important:
    # After releasing an elastic IP address, it is released to the IP address pool
    # and might no longer be available to your account. Make sure to update your DNS
    # records and any servers or devices that communicate with the address.
    # If you run this operation on an elastic IP address that is already released,
    # the address might be assigned to another account which will cause Amazon EC2 to
    # return an error.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-ReleaseAddress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::ReleaseAddressRequest request
    # or Amazon::EC2::Model::ReleaseAddressRequest object itself
    # See Amazon::EC2::Model::ReleaseAddressRequest for valid arguments
    # Returns Amazon::EC2::Model::ReleaseAddressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub releaseAddress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::ReleaseAddressRequest") {
            require Amazon::EC2::Model::ReleaseAddressRequest;
            $request = Amazon::EC2::Model::ReleaseAddressRequest->new($request);
        }
        require Amazon::EC2::Model::ReleaseAddressResponse;
        return Amazon::EC2::Model::ReleaseAddressResponse->fromXML($self->_invoke($self->_convertReleaseAddress($request)));
    }


            
    #
    # Reset Image Attribute 
    # The ResetImageAttribute operation resets an attribute of an AMI to its default
    # value.
    # Note:
    # The productCodes attribute cannot be reset.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-ResetImageAttribute.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::ResetImageAttributeRequest request
    # or Amazon::EC2::Model::ResetImageAttributeRequest object itself
    # See Amazon::EC2::Model::ResetImageAttributeRequest for valid arguments
    # Returns Amazon::EC2::Model::ResetImageAttributeResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub resetImageAttribute {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::ResetImageAttributeRequest") {
            require Amazon::EC2::Model::ResetImageAttributeRequest;
            $request = Amazon::EC2::Model::ResetImageAttributeRequest->new($request);
        }
        require Amazon::EC2::Model::ResetImageAttributeResponse;
        return Amazon::EC2::Model::ResetImageAttributeResponse->fromXML($self->_invoke($self->_convertResetImageAttribute($request)));
    }


            
    #
    # Revoke Security Group Ingress 
    # The RevokeSecurityGroupIngress operation revokes permissions from a security
    # group. The permissions used to revoke must be specified using the same values
    # used to grant the permissions.
    # Permissions are specified by IP protocol (TCP, UDP, or ICMP), the source of the
    # request (by IP range or an Amazon EC2 user-group pair), the source and
    # destination port ranges (for TCP and UDP), and the ICMP codes and types (for
    # ICMP).
    # Permission changes are quickly propagated to instances within the security
    # group. However, depending on the number of instances in the group, a small
    # delay is might occur, .
    # When revoking a user/group pair permission, GroupName, SourceSecurityGroupName
    # and SourceSecurityGroupOwnerId must be specified. When authorizing a CIDR IP
    # permission, GroupName, IpProtocol, FromPort, ToPort and CidrIp must be
    # specified. Mixing these two types of parameters is not allowed.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-RevokeSecurityGroupIngress.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::RevokeSecurityGroupIngressRequest request
    # or Amazon::EC2::Model::RevokeSecurityGroupIngressRequest object itself
    # See Amazon::EC2::Model::RevokeSecurityGroupIngressRequest for valid arguments
    # Returns Amazon::EC2::Model::RevokeSecurityGroupIngressResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub revokeSecurityGroupIngress {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::RevokeSecurityGroupIngressRequest") {
            require Amazon::EC2::Model::RevokeSecurityGroupIngressRequest;
            $request = Amazon::EC2::Model::RevokeSecurityGroupIngressRequest->new($request);
        }
        require Amazon::EC2::Model::RevokeSecurityGroupIngressResponse;
        return Amazon::EC2::Model::RevokeSecurityGroupIngressResponse->fromXML($self->_invoke($self->_convertRevokeSecurityGroupIngress($request)));
    }


            
    #
    # Run Instances 
    # The RunInstances operation launches a specified number of instances.
    # If Amazon EC2 cannot launch the minimum number AMIs you request, no instances
    # launch. If there is insufficient capacity to launch the maximum number of AMIs
    # you request, Amazon EC2 launches as many as possible to satisfy the requested
    # maximum values.
    # Every instance is launched in a security group. If you do not specify a
    # security group at launch, the instances start in your default security group.
    # For more information on creating security groups, see CreateSecurityGroup.
    # An optional instance type can be specified. For information about instance
    # types, see Instance Types.
    # You can provide an optional key pair ID for each image in the launch request
    # (for more information, see CreateKeyPair). All instances that are created from
    # images that use this key pair will have access to the associated public key at
    # boot. You can use this key to provide secure access to an instance of an image
    # on a per-instance basis. Amazon EC2 public images use this feature to provide
    # secure access without passwords.
    # Important:
    # Launching public images without a key pair ID will leave them inaccessible.
    # The public key material is made available to the instance at boot time by
    # placing it in the openssh_id.pub file on a logical device that is exposed to
    # the instance as /dev/sda2 (the ephemeral store). The format of this file is
    # suitable for use as an entry within ~/.ssh/authorized_keys (the OpenSSH
    # format). This can be done at boot (e.g., as part of rc.local) allowing for
    # secure access without passwords.
    # Optional user data can be provided in the launch request. All instances that
    # collectively comprise the launch request have access to this data For more
    # information, see Instance Metadata.
    # Note:
    # If any of the AMIs have a product code attached for which the user has not
    # subscribed, the RunInstances call will fail.
    # Important:
    # We strongly recommend using the 2.6.18 Xen stock kernel with the c1.medium and
    # c1.xlarge instances. Although the default Amazon EC2 kernels will work, the new
    # kernels provide greater stability and performance for these instance types. For
    # more information about kernels, see Kernels, RAM Disks, and Block Device
    # Mappings.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-RunInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::RunInstancesRequest request
    # or Amazon::EC2::Model::RunInstancesRequest object itself
    # See Amazon::EC2::Model::RunInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::RunInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub runInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::RunInstancesRequest") {
            require Amazon::EC2::Model::RunInstancesRequest;
            $request = Amazon::EC2::Model::RunInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::RunInstancesResponse;
        return Amazon::EC2::Model::RunInstancesResponse->fromXML($self->_invoke($self->_convertRunInstances($request)));
    }


            
    #
    # Terminate Instances 
    # The TerminateInstances operation shuts down one or more instances. This
    # operation is idempotent; if you terminate an instance more than once, each call
    # will succeed.
    # Terminated instances will remain visible after termination (approximately one
    # hour).
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-TerminateInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::TerminateInstancesRequest request
    # or Amazon::EC2::Model::TerminateInstancesRequest object itself
    # See Amazon::EC2::Model::TerminateInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::TerminateInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub terminateInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::TerminateInstancesRequest") {
            require Amazon::EC2::Model::TerminateInstancesRequest;
            $request = Amazon::EC2::Model::TerminateInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::TerminateInstancesResponse;
        return Amazon::EC2::Model::TerminateInstancesResponse->fromXML($self->_invoke($self->_convertTerminateInstances($request)));
    }


            
    #
    # Monitor Instances 
    # Enables monitoring for a running instance.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-MonitorInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::MonitorInstancesRequest request
    # or Amazon::EC2::Model::MonitorInstancesRequest object itself
    # See Amazon::EC2::Model::MonitorInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::MonitorInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub monitorInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::MonitorInstancesRequest") {
            require Amazon::EC2::Model::MonitorInstancesRequest;
            $request = Amazon::EC2::Model::MonitorInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::MonitorInstancesResponse;
        return Amazon::EC2::Model::MonitorInstancesResponse->fromXML($self->_invoke($self->_convertMonitorInstances($request)));
    }


            
    #
    # Unmonitor Instances 
    # Disables monitoring for a running instance.
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-UnmonitorInstances.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::UnmonitorInstancesRequest request
    # or Amazon::EC2::Model::UnmonitorInstancesRequest object itself
    # See Amazon::EC2::Model::UnmonitorInstancesRequest for valid arguments
    # Returns Amazon::EC2::Model::UnmonitorInstancesResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub unmonitorInstances {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::UnmonitorInstancesRequest") {
            require Amazon::EC2::Model::UnmonitorInstancesRequest;
            $request = Amazon::EC2::Model::UnmonitorInstancesRequest->new($request);
        }
        require Amazon::EC2::Model::UnmonitorInstancesResponse;
        return Amazon::EC2::Model::UnmonitorInstancesResponse->fromXML($self->_invoke($self->_convertUnmonitorInstances($request)));
    }


            
    #
    # Describe Vpn Connections 
    # Gives you information about your VPN connections.
    # Important
    # We strongly recommend you use HTTPS when calling this operation because the response
    # contains sensitive cryptographic information for configuring your customer gateway.
    # You can filter the results to return information only about VPN connections that match criteria you
    # specify. For example, you could ask to get information about a particular VPN connection (or all) only if
    # the VPN's state is pending or available. You can specify multiple filters (e.g., the VPN connection
    # is associated with a particular VPN gateway, and the gateway's state is pending or available). The
    # result includes information for a particular VPN connection only if the VPN connection matches all your
    # filters. If there's no match, no special message is returned; the response is simply empty. The following
    # table shows the available filters.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeVpnConnections.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeVpnConnectionsRequest request
    # or Amazon::EC2::Model::DescribeVpnConnectionsRequest object itself
    # See Amazon::EC2::Model::DescribeVpnConnectionsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeVpnConnectionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeVpnConnections {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeVpnConnectionsRequest") {
            require Amazon::EC2::Model::DescribeVpnConnectionsRequest;
            $request = Amazon::EC2::Model::DescribeVpnConnectionsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeVpnConnectionsResponse;
        return Amazon::EC2::Model::DescribeVpnConnectionsResponse->fromXML($self->_invoke($self->_convertDescribeVpnConnections($request)));
    }


            
    #
    # Describe Subnets 
    # Gives you information about your subnets. You can filter the results to return information only about
    # subnets that match criteria you specify. For example, you could ask to get information about a
    # particular subnet (or all) only if the subnet's state is available. You can specify multiple filters
    # (e.g., the subnet is in a particular VPC, and the subnet's state is available). The result includes
    # information for a particular subnet only if the subnet matches all your filters. If there's no match, no
    # special message is returned; the response is simply empty. The following table shows the available
    # filters.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeSubnets.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeSubnetsRequest request
    # or Amazon::EC2::Model::DescribeSubnetsRequest object itself
    # See Amazon::EC2::Model::DescribeSubnetsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeSubnetsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeSubnets {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeSubnetsRequest") {
            require Amazon::EC2::Model::DescribeSubnetsRequest;
            $request = Amazon::EC2::Model::DescribeSubnetsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeSubnetsResponse;
        return Amazon::EC2::Model::DescribeSubnetsResponse->fromXML($self->_invoke($self->_convertDescribeSubnets($request)));
    }


            
    #
    # Detach Vpn Gateway 
    # Detaches a VPN gateway from a VPC. You do this if you're planning to turn off the VPC and not use it
    # anymore. You can confirm a VPN gateway has been completely detached from a VPC by describing
    # the VPN gateway (any attachments to the VPN gateway are also described).
    # You must wait for the attachment's state to switch to detached before you can delete the VPC or
    # attach a different VPC to the VPN gateway.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DetachVpnGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DetachVpnGatewayRequest request
    # or Amazon::EC2::Model::DetachVpnGatewayRequest object itself
    # See Amazon::EC2::Model::DetachVpnGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::DetachVpnGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub detachVpnGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DetachVpnGatewayRequest") {
            require Amazon::EC2::Model::DetachVpnGatewayRequest;
            $request = Amazon::EC2::Model::DetachVpnGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::DetachVpnGatewayResponse;
        return Amazon::EC2::Model::DetachVpnGatewayResponse->fromXML($self->_invoke($self->_convertDetachVpnGateway($request)));
    }


            
    #
    # Describe Vpcs 
    # Gives you information about your VPCs. You can filter the results to return information only about
    # VPCs that match criteria you specify. For example, you could ask to get information about a particular
    # VPC or VPCs (or all your VPCs) only if the VPC's state is available. You can specify multiple filters
    # (e.g., the VPC uses one of several sets of DHCP options, and the VPC's state is available). The
    # result includes information for a particular VPC only if the VPC matches all your filters. If there's no
    # match, no special message is returned; the response is simply empty. The following table shows the
    # available filters.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeVpcs.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeVpcsRequest request
    # or Amazon::EC2::Model::DescribeVpcsRequest object itself
    # See Amazon::EC2::Model::DescribeVpcsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeVpcsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeVpcs {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeVpcsRequest") {
            require Amazon::EC2::Model::DescribeVpcsRequest;
            $request = Amazon::EC2::Model::DescribeVpcsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeVpcsResponse;
        return Amazon::EC2::Model::DescribeVpcsResponse->fromXML($self->_invoke($self->_convertDescribeVpcs($request)));
    }


            
    #
    # Delete Customer Gateway 
    # Deletes a customer gateway. You must delete the VPN connection before deleting the customer
    # gateway.
    # You can have a single active customer gateway per AWS account (active means that you've created
    # a VPN connection with that customer gateway). AWS might delete any customer gateway you leave
    # inactive for an extended period of time.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteCustomerGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteCustomerGatewayRequest request
    # or Amazon::EC2::Model::DeleteCustomerGatewayRequest object itself
    # See Amazon::EC2::Model::DeleteCustomerGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteCustomerGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteCustomerGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteCustomerGatewayRequest") {
            require Amazon::EC2::Model::DeleteCustomerGatewayRequest;
            $request = Amazon::EC2::Model::DeleteCustomerGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteCustomerGatewayResponse;
        return Amazon::EC2::Model::DeleteCustomerGatewayResponse->fromXML($self->_invoke($self->_convertDeleteCustomerGateway($request)));
    }


            
    #
    # Attach Vpn Gateway 
    # Attaches a VPN gateway to a VPC. This is the last step required to get your VPC fully connected
    # to your data center before launching instances in it. For more information, go to Process for Using
    # Amazon VPC in the Amazon Virtual Private Cloud Developer Guide.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AttachVpnGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AttachVpnGatewayRequest request
    # or Amazon::EC2::Model::AttachVpnGatewayRequest object itself
    # See Amazon::EC2::Model::AttachVpnGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::AttachVpnGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub attachVpnGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AttachVpnGatewayRequest") {
            require Amazon::EC2::Model::AttachVpnGatewayRequest;
            $request = Amazon::EC2::Model::AttachVpnGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::AttachVpnGatewayResponse;
        return Amazon::EC2::Model::AttachVpnGatewayResponse->fromXML($self->_invoke($self->_convertAttachVpnGateway($request)));
    }


            
    #
    # Delete Dhcp Options 
    # Deletes a set of DHCP options that you specify. Amazon VPC returns an error if the set of options
    # you specify is currently associated with a VPC. You can disassociate the set of options by associating
    # either a new set of options or the default options with the VPC.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteDhcpOptions.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteDhcpOptionsRequest request
    # or Amazon::EC2::Model::DeleteDhcpOptionsRequest object itself
    # See Amazon::EC2::Model::DeleteDhcpOptionsRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteDhcpOptionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteDhcpOptions {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteDhcpOptionsRequest") {
            require Amazon::EC2::Model::DeleteDhcpOptionsRequest;
            $request = Amazon::EC2::Model::DeleteDhcpOptionsRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteDhcpOptionsResponse;
        return Amazon::EC2::Model::DeleteDhcpOptionsResponse->fromXML($self->_invoke($self->_convertDeleteDhcpOptions($request)));
    }


            
    #
    # Delete Subnet 
    # Deletes a subnet from a VPC. You must terminate all running instances in the subnet before deleting it,
    # otherwise Amazon VPC returns an error.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteSubnet.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteSubnetRequest request
    # or Amazon::EC2::Model::DeleteSubnetRequest object itself
    # See Amazon::EC2::Model::DeleteSubnetRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteSubnetResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteSubnet {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteSubnetRequest") {
            require Amazon::EC2::Model::DeleteSubnetRequest;
            $request = Amazon::EC2::Model::DeleteSubnetRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteSubnetResponse;
        return Amazon::EC2::Model::DeleteSubnetResponse->fromXML($self->_invoke($self->_convertDeleteSubnet($request)));
    }


            
    #
    # Create Vpc 
    # Creates a VPC with the CIDR block you specify. The smallest VPC you can create uses a /28 netmask
    # (16 IP addresses), and the largest uses a /18 netmask (16,384 IP addresses). To help you decide
    # how big to make your VPC, go to the topic about creating VPCs in the Amazon Virtual Private Cloud
    # Developer Guide.
    # By default, each instance you launch in the VPC has the default DHCP options (the standard EC2 host
    # name, no domain name, no DNS server, no NTP server, and no NetBIOS server or node type).
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateVpc.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateVpcRequest request
    # or Amazon::EC2::Model::CreateVpcRequest object itself
    # See Amazon::EC2::Model::CreateVpcRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateVpcResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createVpc {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateVpcRequest") {
            require Amazon::EC2::Model::CreateVpcRequest;
            $request = Amazon::EC2::Model::CreateVpcRequest->new($request);
        }
        require Amazon::EC2::Model::CreateVpcResponse;
        return Amazon::EC2::Model::CreateVpcResponse->fromXML($self->_invoke($self->_convertCreateVpc($request)));
    }


            
    #
    # Create Customer Gateway 
    # Provides information to AWS about your customer gateway device. The customer gateway is the
    # appliance at your end of the VPN connection (compared to the VPN gateway, which is the device
    # at the AWS side of the VPN connection). You can have a single active customer gateway per AWS
    # account (active means that you've created a VPN connection to use with the customer gateway). AWS
    # might delete any customer gateway that you create with this operation if you leave it inactive for an
    # extended period of time.
    # You must provide the Internet-routable IP address of the customer gateway's external interface. The IP
    # address must be static.
    # You must also provide the device's Border Gateway Protocol (BGP) Autonomous System Number
    # (ASN). You can use an existing ASN assigned to your network. If you don't have an ASN already,
    # you can use a private ASN (in the 64512 - 65534 range). For more information about ASNs, go to
    # http://en.wikipedia.org/wiki/Autonomous_system_%28Internet%29.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateCustomerGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateCustomerGatewayRequest request
    # or Amazon::EC2::Model::CreateCustomerGatewayRequest object itself
    # See Amazon::EC2::Model::CreateCustomerGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateCustomerGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createCustomerGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateCustomerGatewayRequest") {
            require Amazon::EC2::Model::CreateCustomerGatewayRequest;
            $request = Amazon::EC2::Model::CreateCustomerGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::CreateCustomerGatewayResponse;
        return Amazon::EC2::Model::CreateCustomerGatewayResponse->fromXML($self->_invoke($self->_convertCreateCustomerGateway($request)));
    }


            
    #
    # Create Vpn Gateway 
    # Creates a new VPN gateway. A VPN gateway is the VPC-side endpoint for your VPN connection. You
    # can create a VPN gateway before creating the VPC itself.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateVpnGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateVpnGatewayRequest request
    # or Amazon::EC2::Model::CreateVpnGatewayRequest object itself
    # See Amazon::EC2::Model::CreateVpnGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateVpnGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createVpnGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateVpnGatewayRequest") {
            require Amazon::EC2::Model::CreateVpnGatewayRequest;
            $request = Amazon::EC2::Model::CreateVpnGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::CreateVpnGatewayResponse;
        return Amazon::EC2::Model::CreateVpnGatewayResponse->fromXML($self->_invoke($self->_convertCreateVpnGateway($request)));
    }


            
    #
    # Delete Vpc 
    # Deletes a VPC. You must terminate all running instances and delete all subnets before deleting the
    # VPC, otherwise Amazon VPC returns an error.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteVpc.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteVpcRequest request
    # or Amazon::EC2::Model::DeleteVpcRequest object itself
    # See Amazon::EC2::Model::DeleteVpcRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteVpcResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteVpc {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteVpcRequest") {
            require Amazon::EC2::Model::DeleteVpcRequest;
            $request = Amazon::EC2::Model::DeleteVpcRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteVpcResponse;
        return Amazon::EC2::Model::DeleteVpcResponse->fromXML($self->_invoke($self->_convertDeleteVpc($request)));
    }


            
    #
    # Associate Dhcp Options 
    # Associates a set of DHCP options (that you've previously created) with the specified VPC. Or,
    # associates the default DHCP options with the VPC. The default set consists of the standard EC2 host
    # name, no domain name, no DNS server, no NTP server, and no NetBIOS server or node type.
    # After you associate the options with the VPC, any existing instances and all new instances that you
    # launch in that VPC use the options. For more information about the supported DHCP options and using
    # them with Amazon VPC, go to Using DHCP Options in the Amazon Virtual Private Cloud Developer
    # Guide.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-AssociateDhcpOptions.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::AssociateDhcpOptionsRequest request
    # or Amazon::EC2::Model::AssociateDhcpOptionsRequest object itself
    # See Amazon::EC2::Model::AssociateDhcpOptionsRequest for valid arguments
    # Returns Amazon::EC2::Model::AssociateDhcpOptionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub associateDhcpOptions {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::AssociateDhcpOptionsRequest") {
            require Amazon::EC2::Model::AssociateDhcpOptionsRequest;
            $request = Amazon::EC2::Model::AssociateDhcpOptionsRequest->new($request);
        }
        require Amazon::EC2::Model::AssociateDhcpOptionsResponse;
        return Amazon::EC2::Model::AssociateDhcpOptionsResponse->fromXML($self->_invoke($self->_convertAssociateDhcpOptions($request)));
    }


            
    #
    # Describe Vpn Gateways 
    # Gives you information about your VPN gateways. You can filter the results to return information only
    # about VPN gateways that match criteria you specify. For example, you could ask to get information
    # about a particular VPN gateway (or all) only if the gateway's state is pending or available. You can
    # specify multiple filters (e.g., the VPN gateway is in a particular Availability Zone and the gateway's state
    # is pending or available). The result includes information for a particular VPN gateway only if the
    # gateway matches all your filters. If there's no match, no special message is returned; the response is
    # simply empty. The following table shows the available filters.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeVpnGateways.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeVpnGatewaysRequest request
    # or Amazon::EC2::Model::DescribeVpnGatewaysRequest object itself
    # See Amazon::EC2::Model::DescribeVpnGatewaysRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeVpnGatewaysResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeVpnGateways {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeVpnGatewaysRequest") {
            require Amazon::EC2::Model::DescribeVpnGatewaysRequest;
            $request = Amazon::EC2::Model::DescribeVpnGatewaysRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeVpnGatewaysResponse;
        return Amazon::EC2::Model::DescribeVpnGatewaysResponse->fromXML($self->_invoke($self->_convertDescribeVpnGateways($request)));
    }


            
    #
    # Create Subnet 
    # Creates a subnet in an existing VPC. You can create up to 20 subnets in a VPC. If you add more than
    # one subnet to a VPC, they're set up in a star topology with a logical router in the middle.
    # When you create each subnet, you provide the VPC ID and the CIDR block you want for the subnet.
    # Once you create a subnet, you can't change its CIDR block. The subnet's CIDR block can be the same
    # as the VPC's CIDR block (assuming you want only a single subnet in the VPC), or a subset of the
    # VPC's CIDR block. If you create more than one subnet in a VPC, the subnets' CIDR blocks must not
    # overlap. The smallest subnet (and VPC) you can create uses a /28 netmask (16 IP addresses), and the
    # largest uses a /18 netmask (16,384 IP addresses).
    # Important:
    # AWS reserves both the first four and the last IP address in each subnet's CIDR block. They're
    # not available for use.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateSubnet.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateSubnetRequest request
    # or Amazon::EC2::Model::CreateSubnetRequest object itself
    # See Amazon::EC2::Model::CreateSubnetRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateSubnetResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createSubnet {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateSubnetRequest") {
            require Amazon::EC2::Model::CreateSubnetRequest;
            $request = Amazon::EC2::Model::CreateSubnetRequest->new($request);
        }
        require Amazon::EC2::Model::CreateSubnetResponse;
        return Amazon::EC2::Model::CreateSubnetResponse->fromXML($self->_invoke($self->_convertCreateSubnet($request)));
    }


            
    #
    # Delete Vpn Connection 
    # Deletes a VPN connection. Use this if you want to delete a VPC and all its associated components.
    # Another reason to use this operation is if you believe the tunnel credentials for your VPN connection
    # have been compromised. In that situation, you can delete the VPN connection and create a new one
    # that has new keys, without needing to delete the VPC or VPN gateway. If you create a new VPN
    # connection, you must reconfigure the customer gateway using the new configuration information
    # returned with the new VPN connection ID.
    # If you're deleting the VPC and all its associated parts, we recommend you detach the VPN gateway
    # from the VPC and delete the VPC before deleting the VPN connection.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteVpnConnection.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteVpnConnectionRequest request
    # or Amazon::EC2::Model::DeleteVpnConnectionRequest object itself
    # See Amazon::EC2::Model::DeleteVpnConnectionRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteVpnConnectionResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteVpnConnection {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteVpnConnectionRequest") {
            require Amazon::EC2::Model::DeleteVpnConnectionRequest;
            $request = Amazon::EC2::Model::DeleteVpnConnectionRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteVpnConnectionResponse;
        return Amazon::EC2::Model::DeleteVpnConnectionResponse->fromXML($self->_invoke($self->_convertDeleteVpnConnection($request)));
    }


            
    #
    # Delete Vpn Gateway 
    # Deletes a VPN gateway. Use this when you want to delete a VPC and all its associated components
    # because you no longer need them. We recommend that before you delete a VPN gateway, you detach
    # it from the VPC and delete the VPN connection. Note that you don't need to delete the VPN gateway if
    # you just want to delete and re-create the VPN connection between your VPC and data center.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DeleteVpnGateway.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DeleteVpnGatewayRequest request
    # or Amazon::EC2::Model::DeleteVpnGatewayRequest object itself
    # See Amazon::EC2::Model::DeleteVpnGatewayRequest for valid arguments
    # Returns Amazon::EC2::Model::DeleteVpnGatewayResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub deleteVpnGateway {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DeleteVpnGatewayRequest") {
            require Amazon::EC2::Model::DeleteVpnGatewayRequest;
            $request = Amazon::EC2::Model::DeleteVpnGatewayRequest->new($request);
        }
        require Amazon::EC2::Model::DeleteVpnGatewayResponse;
        return Amazon::EC2::Model::DeleteVpnGatewayResponse->fromXML($self->_invoke($self->_convertDeleteVpnGateway($request)));
    }


            
    #
    # Describe Customer Gateways 
    # Gives you information about your customer gateways. You can filter the results to return information
    # only about customer gateways that match criteria you specify. For example, you could ask to get
    # information about a particular customer gateway (or all) only if the gateway's state is pending or
    # available. You can specify multiple filters (e.g., the customer gateway has a particular IP address for
    # the Internet-routable external interface, and the gateway's state is pending or available). The result
    # includes information for a particular customer gateway only if the gateway matches all your filters. If
    # there's no match, no special message is returned; the response is simply empty. The following table
    # shows the available filters.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeCustomerGateways.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeCustomerGatewaysRequest request
    # or Amazon::EC2::Model::DescribeCustomerGatewaysRequest object itself
    # See Amazon::EC2::Model::DescribeCustomerGatewaysRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeCustomerGatewaysResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeCustomerGateways {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeCustomerGatewaysRequest") {
            require Amazon::EC2::Model::DescribeCustomerGatewaysRequest;
            $request = Amazon::EC2::Model::DescribeCustomerGatewaysRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeCustomerGatewaysResponse;
        return Amazon::EC2::Model::DescribeCustomerGatewaysResponse->fromXML($self->_invoke($self->_convertDescribeCustomerGateways($request)));
    }


            
    #
    # Create Vpn Connection 
    # Creates a new VPN connection between an existing VPN gateway and customer gateway. The only
    # supported connection type is ipsec.1.
    # The response includes information that you need to configure your customer gateway, in XML format.
    # We recommend you use the command line version of this operation (ec2-create-vpn-connection),
    # which takes an -f option (for format) and returns configuration information formatted as expected by
    # the vendor you specified, or in a generic, human readable format. For information about the command,
    # go to ec2-create-vpn-connection in the Amazon Virtual Private Cloud Command Line Reference.
    # Important
    # We strongly recommend you use HTTPS when calling this operation because the response
    # contains sensitive cryptographic information for configuring your customer gateway.
    # If you decide to shut down your VPN connection for any reason and then create a new one, you must
    # re-configure your customer gateway with the new information returned from this call.
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateVpnConnection.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateVpnConnectionRequest request
    # or Amazon::EC2::Model::CreateVpnConnectionRequest object itself
    # See Amazon::EC2::Model::CreateVpnConnectionRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateVpnConnectionResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createVpnConnection {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateVpnConnectionRequest") {
            require Amazon::EC2::Model::CreateVpnConnectionRequest;
            $request = Amazon::EC2::Model::CreateVpnConnectionRequest->new($request);
        }
        require Amazon::EC2::Model::CreateVpnConnectionResponse;
        return Amazon::EC2::Model::CreateVpnConnectionResponse->fromXML($self->_invoke($self->_convertCreateVpnConnection($request)));
    }


            
    #
    # Describe Dhcp Options 
    # Gives you information about one or more sets of DHCP options. You can specify one or more DHCP
    # options set IDs, or no IDs (to describe all your sets of DHCP options). The returned information
    # consists of:
    # - The DHCP options set ID
    # - The options
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-DescribeDhcpOptions.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::DescribeDhcpOptionsRequest request
    # or Amazon::EC2::Model::DescribeDhcpOptionsRequest object itself
    # See Amazon::EC2::Model::DescribeDhcpOptionsRequest for valid arguments
    # Returns Amazon::EC2::Model::DescribeDhcpOptionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub describeDhcpOptions {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::DescribeDhcpOptionsRequest") {
            require Amazon::EC2::Model::DescribeDhcpOptionsRequest;
            $request = Amazon::EC2::Model::DescribeDhcpOptionsRequest->new($request);
        }
        require Amazon::EC2::Model::DescribeDhcpOptionsResponse;
        return Amazon::EC2::Model::DescribeDhcpOptionsResponse->fromXML($self->_invoke($self->_convertDescribeDhcpOptions($request)));
    }


            
    #
    # Create Dhcp Options 
    # Creates a set of DHCP options that you can then associate with one or more VPCs, causing all existing
    # and new instances that you launch in those VPCs to use the set of DHCP options. The following table
    # lists the individual DHCP options you can specify. For more information about the options, go to
    # http://www.ietf.org/rfc/rfc2132.txt
    # 
    # 
    # See http://docs.amazonwebservices.com/AWSEC2/2009-07-15/DeveloperGuide/ApiReference-Query-CreateDhcpOptions.html
    # Argument either hash reference of parameters for Amazon::EC2::Model::CreateDhcpOptionsRequest request
    # or Amazon::EC2::Model::CreateDhcpOptionsRequest object itself
    # See Amazon::EC2::Model::CreateDhcpOptionsRequest for valid arguments
    # Returns Amazon::EC2::Model::CreateDhcpOptionsResponse
    #
    # throws Amazon::EC2::Exception. Use eval to catch it
    #
    sub createDhcpOptions {
        my ($self, $request) = @_;
        if (not ref $request eq "Amazon::EC2::Model::CreateDhcpOptionsRequest") {
            require Amazon::EC2::Model::CreateDhcpOptionsRequest;
            $request = Amazon::EC2::Model::CreateDhcpOptionsRequest->new($request);
        }
        require Amazon::EC2::Model::CreateDhcpOptionsResponse;
        return Amazon::EC2::Model::CreateDhcpOptionsResponse->fromXML($self->_invoke($self->_convertCreateDhcpOptions($request)));
    }

    # Private API ------------------------------------------------------------#

    #
    # Invoke request and return response
    #
    sub _invoke {
        my ($self, $parameters) = @_;
        my $actionName = $parameters->{Action};
        my $response = undef;
        my $statusCode = 200;

        # Add required request parameters #
        $parameters = $self->_addRequiredParameters($parameters);

        my $retries = 0;
        my $shouldRetry = 1;

        eval {
            do {
                # Submit the request and read response body #
                eval {
                    $response = $self->_httpPost($parameters);
                    if ($response->is_success) {
                        $shouldRetry = 0;
                    } else {
                        if ($response->code == 500 || $response->code == 503) {
                            $shouldRetry = 1;
                            $self->_pauseOnRetry(++$retries, $response->code);
                        } else {
                            my $ex = $self->_reportAnyErrors($response->content, $response->code);
                            Carp::croak ($ex) if ($ex);
                        }
                    }
                };
                my $e = $@;
                if ($e) {
                    if (ref $e eq "Amazon::EC2::Exception") {
                        Carp::croak $e;
                    } else {
                        Carp::croak (Amazon::EC2::Exception->new ({Message => $e}));
                    }
                }
            } while ($shouldRetry);
        };
        my $e = $@;
        if ($e) {
            if (ref $e eq "Amazon::EC2::Exception") {
                Carp::croak $e;
            } else {
                Carp::croak (Amazon::EC2::Exception->new ({Message => $e}));
            }
        }
        my($file, $path) = fileparse( Cwd::abs_path(__FILE__));
        my $xml = $self->{_xml_parser}->parse_string($response->content);
        my $template = $self->{_xml_parser}->parse_file($path . "Model/" . $actionName . "Response.xslt");
        my $transformer = $self->{_xslt_parser}->parse_stylesheet($template);
        my $results = $transformer->output_string($transformer->transform($xml));
        if ($results =~ m/^<ErrorResponse/) {
          Carp::croak (Amazon::EC2::Exception->new ({Message => $results}));
        } else {
          return $results;
        }
    }

    #
    # Exponential sleep on failed request
    # Retries - current retry
    # throws Amazon::EC2::Exception if maximum number of retries has been reached
    #
    sub _pauseOnRetry {
        my ($self, $retries, $status) = @_;
        if ($retries <= $self->{_config}->{MaxErrorRetry}) {
            my $delay = (4 ** $retries) * 100000 ;
            usleep($delay);
        } else {
            Carp::croak new Amazon::EC2::Exception ({Message => "Maximum number of retry attempts reached :  " . ($retries - 1),
            StatusCode => $status});
        }
    }

    #
    # Look for additional error strings in the response and return formatted exception
    #
    sub _reportAnyErrors {
        my ($self, $responseBody, $status, $e) = @_;
        my $ex = undef;
        if (defined($responseBody) and $responseBody =~ m/</) {
            if ($responseBody =~ m/<RequestId>(.*)<\/RequestId>.*<Error><Code>(.*)<\/Code><Message>(.*)<\/Message><\/Error>.*(<Error>)?/msg) {

                my $requestId = $1;
                my $code = $2;
                my $message = $3;
                $ex = Amazon::EC2::Exception->new ({Message => $message,
                                                              StatusCode => $status,
                					      ErrorCode => $code,
                                                              ErrorType => "Unknown",
                                                              RequestId => $requestId,
                                                              XML => $responseBody});

            } elsif ($responseBody =~ m/<Error><Code>(.*)<\/Code><Message>(.*)<\/Message><\/Error>.*(<Error>)?.*<RequestID>(.*)<\/RequestID>/msg) {

                my $code = $1;
                my $message = $2;
                my $requestId = $4;
                $ex = Amazon::EC2::Exception->new({Message => $message,
                                                           StatusCode => $status,
                                                           ErrorCode => $code,
                                                           ErrorType => "Unknown",
                                                           RequestId => $requestId,
                                                           XML => $responseBody});
            } else {
                $ex = Amazon::EC2::Exception->new({
                                                        Message => "Internal Error",
                                                        StatusCode => $status});
            }
        } else {
            $ex = Amazon::EC2::Exception->new({
                                                Message => "Internal Error",
                                                StatusCode => $status});
        }
        return $ex;
    }

    #
    # perform http post
    #
    sub _httpPost {
	my ($self, $parameters) = @_;
        my $url = $self->{_config}->{ServiceURL};
        require LWP::UserAgent;
        my $ua = LWP::UserAgent->new;
	my $request= HTTP::Request->new("POST", $url);
	$request->content_type("application/x-www-form-urlencoded; charset=utf-8");
	my $data = "";
    	foreach my $parameterName (keys %$parameters) {
   	    no warnings "uninitialized";
   	    $data .= $parameterName .  "="  . $self->_urlencode($parameters->{$parameterName}, 0);
       	    $data .= "&";
   	}
    	chop ($data);
	$request->content($data);
	my $response = $ua->request($request);
        return $response;
    }

    #
    # Add authentication related and version parameters
    #
    sub _addRequiredParameters {
   	my ($self,  $parameters) = @_;
        $parameters->{AWSAccessKeyId} = $self->{_awsAccessKeyId};
        $parameters->{Timestamp} = $self->_getFormattedTimestamp();
        $parameters->{Version} = $SERVICE_VERSION;
        $parameters->{SignatureVersion} = $self->{_config}->{SignatureVersion} || "1";
        $parameters->{Signature} = $self->_signParameters($parameters, $self->{_awsSecretAccessKey});

        return $parameters;
    }

    #
    # Computes RFC 2104-compliant HMAC signature for request parameters
    # Implements AWS Signature, as per following spec:
    #
    # If Signature Version is 0, it signs concatenated Action and Timestamp
    #
    # If Signature Version is 1, it performs the following:
    #
    # Sorts all  parameters (including SignatureVersion and excluding Signature,
    # the value of which is being created), ignoring case.
    #
    # Iterate over the sorted list and append the parameter name (in original case)
    # and then its value. It will not URL-encode the parameter values before
    # constructing this string. There are no separators.
    #
    sub _signParameters {
     	my ($self, $parameters, $key)  = @_;
        my $algorithm = "HmacSHA1";
        my $data = "";
        my $signatureVersion = $parameters->{SignatureVersion};
        if ("0" eq $signatureVersion) {
            $data =  $self->_calculateStringToSignV0($parameters);
        } elsif ("1" eq $signatureVersion) {
            $data = $self->_calculateStringToSignV1($parameters);
        } elsif ("2" eq $signatureVersion) {
            $algorithm = $self->{_config}->{SignatureMethod};
            $parameters->{SignatureMethod} = $algorithm;
            $data = $self->_calculateStringToSignV2($parameters);
        } else {
            Carp::croak ("Invalid Signature Version specified");
        }
        return $self->_sign($data, $key, $algorithm);
    }


    sub _calculateStringToSignV0 {
        my ($self, $parameters)  = @_;
        return $parameters->{Action} .  $parameters->{Timestamp};
    }


    sub _calculateStringToSignV1 {
        my ($self, $parameters)  = @_;
        my $data = "";
        foreach my $parameterName (sort { lc($a) cmp lc($b) } keys %$parameters) {
            no warnings "uninitialized";
        	$data .= $parameterName . $parameters->{$parameterName};
        }
        return $data;
    }

    sub _calculateStringToSignV2  {
        my ($self, $parameters)  = @_;
        my $endpoint = URI->new ($self->{_config}->{ServiceURL});
        my $data = "POST";
        $data .= "\n";
        $data .= $endpoint->host;
        $data .= "\n";
        my $path =  $endpoint->path || "/";
        $data .= $self->_urlencode($path, 1);
        $data .= "\n";
        my @parameterKeys =   keys %$parameters;
        foreach my $parameterName (sort { $a cmp $b } @parameterKeys ) {
            no warnings "uninitialized";
            $data .= $parameterName .  "="  . $self->_urlencode($parameters->{$parameterName});
            $data .= "&";
        }
        chop ($data);
        return $data;
    }

    sub _urlencode {
	my ($self, $value, $path) = @_;
	use URI::Escape qw(uri_escape_utf8);
	my $escapepattern = "^A-Za-z0-9\-_.~";
	if ($path) {
	    $escapepattern = $escapepattern .  "/";
	}
	return uri_escape_utf8($value, $escapepattern);
    }

    #
    # Computes RFC 2104-compliant HMAC signature.
    #
    sub  _sign {
        my ($self, $data, $key, $algorithm) = @_;
        my $output = "";
        if ("HmacSHA1" eq $algorithm) {
           $output  =  hmac_sha1_base64 ($data, $key);
        } elsif ("HmacSHA256" eq $algorithm) {
            $output = hmac_sha256_base64 ($data, $key);
        } else {
         	Carp::croak ("Non-supported signing method specified");
        }
        return $output . "=";
    }

    #
    # Formats date as ISO 8601 timestamp
    #
    sub _getFormattedTimestamp {
        return sprintf("%04d-%02d-%02dT%02d:%02d:%02d.000Z",
        sub {    ($_[5]+1900,
                 $_[4]+1,
                 $_[3],
                 $_[2],
                 $_[1],
                 $_[0])
           }->(gmtime(time)));
    }

                        
    #
    # Convert AllocateAddressRequest to name value pairs
    #
    sub _convertAllocateAddress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AllocateAddress";

        return $parameters;
    }
        
                                        
    #
    # Convert AttachVpnGatewayRequest to name value pairs
    #
    sub _convertAttachVpnGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AttachVpnGateway";
        if ($request->isSetVpnGatewayId()) {
            $parameters->{"VpnGatewayId"} =  $request->getVpnGatewayId();
        }
        if ($request->isSetVpcId()) {
            $parameters->{"VpcId"} =  $request->getVpcId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert AssociateDhcpOptionsRequest to name value pairs
    #
    sub _convertAssociateDhcpOptions() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AssociateDhcpOptions";
        if ($request->isSetDhcpOptionsId()) {
            $parameters->{"DhcpOptionsId"} =  $request->getDhcpOptionsId();
        }
        if ($request->isSetVpcId()) {
            $parameters->{"VpcId"} =  $request->getVpcId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert AssociateAddressRequest to name value pairs
    #
    sub _convertAssociateAddress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AssociateAddress";
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }
        if ($request->isSetPublicIp()) {
            $parameters->{"PublicIp"} =  $request->getPublicIp();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert AuthorizeSecurityGroupIngressRequest to name value pairs
    #
    sub _convertAuthorizeSecurityGroupIngress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AuthorizeSecurityGroupIngress";
        if ($request->isSetGroupName()) {
            $parameters->{"GroupName"} =  $request->getGroupName();
        }
        if ($request->isSetSourceSecurityGroupName()) {
            $parameters->{"SourceSecurityGroupName"} =  $request->getSourceSecurityGroupName();
        }
        if ($request->isSetSourceSecurityGroupOwnerId()) {
            $parameters->{"SourceSecurityGroupOwnerId"} =  $request->getSourceSecurityGroupOwnerId();
        }
        if ($request->isSetIpProtocol()) {
            $parameters->{"IpProtocol"} =  $request->getIpProtocol();
        }
        if ($request->isSetFromPort()) {
            $parameters->{"FromPort"} =  $request->getFromPort();
        }
        if ($request->isSetToPort()) {
            $parameters->{"ToPort"} =  $request->getToPort();
        }
        if ($request->isSetCidrIp()) {
            $parameters->{"CidrIp"} =  $request->getCidrIp();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert BundleInstanceRequest to name value pairs
    #
    sub _convertBundleInstance() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "BundleInstance";
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }
        if ($request->isSetStorage()) {
            my $storagebundleInstanceRequest = $request->getStorage();
            if ($storagebundleInstanceRequest->isSetS3()) {
                my $s3storage = $storagebundleInstanceRequest->getS3();
                if ($s3storage->isSetBucket()) {
                    $parameters->{"Storage" . "." . "S3" . "." . "Bucket"} =  $s3storage->getBucket();
                }
                if ($s3storage->isSetPrefix()) {
                    $parameters->{"Storage" . "." . "S3" . "." . "Prefix"} =  $s3storage->getPrefix();
                }
                if ($s3storage->isSetAWSAccessKeyId()) {
                    $parameters->{"Storage" . "." . "S3" . "." . "AWSAccessKeyId"} =  $s3storage->getAWSAccessKeyId();
                }
                if ($s3storage->isSetUploadPolicy()) {
                    $parameters->{"Storage" . "." . "S3" . "." . "UploadPolicy"} =  $s3storage->getUploadPolicy();
                }
                if ($s3storage->isSetUploadPolicySignature()) {
                    $parameters->{"Storage" . "." . "S3" . "." . "UploadPolicySignature"} =  $s3storage->getUploadPolicySignature();
                }
            }
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CancelBundleTaskRequest to name value pairs
    #
    sub _convertCancelBundleTask() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CancelBundleTask";
        if ($request->isSetBundleId()) {
            $parameters->{"BundleId"} =  $request->getBundleId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert ConfirmProductInstanceRequest to name value pairs
    #
    sub _convertConfirmProductInstance() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "ConfirmProductInstance";
        if ($request->isSetProductCode()) {
            $parameters->{"ProductCode"} =  $request->getProductCode();
        }
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateKeyPairRequest to name value pairs
    #
    sub _convertCreateKeyPair() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateKeyPair";
        if ($request->isSetKeyName()) {
            $parameters->{"KeyName"} =  $request->getKeyName();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateSubnetRequest to name value pairs
    #
    sub _convertCreateSubnet() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateSubnet";
        if ($request->isSetVpcId()) {
            $parameters->{"VpcId"} =  $request->getVpcId();
        }
        if ($request->isSetCidrBlock()) {
            $parameters->{"CidrBlock"} =  $request->getCidrBlock();
        }
        if ($request->isSetAvailabilityZone()) {
            $parameters->{"AvailabilityZone"} =  $request->getAvailabilityZone();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateVpnConnectionRequest to name value pairs
    #
    sub _convertCreateVpnConnection() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateVpnConnection";
        if ($request->isSetType()) {
            $parameters->{"Type"} =  $request->getType();
        }
        if ($request->isSetCustomerGatewayId()) {
            $parameters->{"CustomerGatewayId"} =  $request->getCustomerGatewayId();
        }
        if ($request->isSetVpnGatewayId()) {
            $parameters->{"VpnGatewayId"} =  $request->getVpnGatewayId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateVpnGatewayRequest to name value pairs
    #
    sub _convertCreateVpnGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateVpnGateway";
        if ($request->isSetType()) {
            $parameters->{"Type"} =  $request->getType();
        }
        if ($request->isSetAvailabilityZone()) {
            $parameters->{"AvailabilityZone"} =  $request->getAvailabilityZone();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateDhcpOptionsRequest to name value pairs
    #
    sub _convertCreateDhcpOptions() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateDhcpOptions";
        if ($request->isSetConfiguration()) {
            my $configurationcreateDhcpOptionsRequest = $request->getConfiguration();
            if ($configurationcreateDhcpOptionsRequest->isSetKey()) {
                $parameters->{"Configuration" . "." . "Key"} =  $configurationcreateDhcpOptionsRequest->getKey();
            }
            my $valueconfigurationList = $configurationcreateDhcpOptionsRequest->getValue();
            for my $valueconfigurationIndex (0 .. $#{$valueconfigurationList}) {
                my $valueconfiguration = $valueconfigurationList->[$valueconfigurationIndex];
                $parameters->{"Configuration" . "." . "Value" . "."  . ($valueconfigurationIndex + 1)} =  $valueconfiguration;
            }
        }

        return $parameters;
    }
        
                                                
    #
    # Convert CreateVpcRequest to name value pairs
    #
    sub _convertCreateVpc() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateVpc";
        if ($request->isSetCidrBlock()) {
            $parameters->{"CidrBlock"} =  $request->getCidrBlock();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateCustomerGatewayRequest to name value pairs
    #
    sub _convertCreateCustomerGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateCustomerGateway";
        if ($request->isSetType()) {
            $parameters->{"Type"} =  $request->getType();
        }
        if ($request->isSetIpAddress()) {
            $parameters->{"IpAddress"} =  $request->getIpAddress();
        }
        if ($request->isSetBgpAsn()) {
            $parameters->{"BgpAsn"} =  $request->getBgpAsn();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateSecurityGroupRequest to name value pairs
    #
    sub _convertCreateSecurityGroup() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateSecurityGroup";
        if ($request->isSetGroupName()) {
            $parameters->{"GroupName"} =  $request->getGroupName();
        }
        if ($request->isSetGroupDescription()) {
            $parameters->{"GroupDescription"} =  $request->getGroupDescription();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteKeyPairRequest to name value pairs
    #
    sub _convertDeleteKeyPair() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteKeyPair";
        if ($request->isSetKeyName()) {
            $parameters->{"KeyName"} =  $request->getKeyName();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteVpcRequest to name value pairs
    #
    sub _convertDeleteVpc() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteVpc";
        if ($request->isSetVpcId()) {
            $parameters->{"VpcId"} =  $request->getVpcId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteVpnGatewayRequest to name value pairs
    #
    sub _convertDeleteVpnGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteVpnGateway";
        if ($request->isSetVpnGatewayId()) {
            $parameters->{"VpnGatewayId"} =  $request->getVpnGatewayId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteVpnConnectionRequest to name value pairs
    #
    sub _convertDeleteVpnConnection() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteVpnConnection";
        if ($request->isSetVpnConnectionId()) {
            $parameters->{"VpnConnectionId"} =  $request->getVpnConnectionId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteDhcpOptionsRequest to name value pairs
    #
    sub _convertDeleteDhcpOptions() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteDhcpOptions";
        if ($request->isSetDhcpOptionsId()) {
            $parameters->{"DhcpOptionsId"} =  $request->getDhcpOptionsId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteCustomerGatewayRequest to name value pairs
    #
    sub _convertDeleteCustomerGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteCustomerGateway";
        if ($request->isSetCustomerGatewayId()) {
            $parameters->{"CustomerGatewayId"} =  $request->getCustomerGatewayId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteSecurityGroupRequest to name value pairs
    #
    sub _convertDeleteSecurityGroup() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteSecurityGroup";
        if ($request->isSetGroupName()) {
            $parameters->{"GroupName"} =  $request->getGroupName();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteSubnetRequest to name value pairs
    #
    sub _convertDeleteSubnet() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteSubnet";
        if ($request->isSetSubnetId()) {
            $parameters->{"SubnetId"} =  $request->getSubnetId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeVpcsRequest to name value pairs
    #
    sub _convertDescribeVpcs() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeVpcs";
        my $vpcIddescribeVpcsRequestList = $request->getVpcId();
        for my $vpcIddescribeVpcsRequestIndex (0 .. $#{$vpcIddescribeVpcsRequestList}) {
            my $vpcIddescribeVpcsRequest = $vpcIddescribeVpcsRequestList->[$vpcIddescribeVpcsRequestIndex];
            $parameters->{"VpcId" . "."  . ($vpcIddescribeVpcsRequestIndex + 1)} =  $vpcIddescribeVpcsRequest;
        }
        my $filterdescribeVpcsRequestList = $request->getFilter();
        for my $filterdescribeVpcsRequestIndex (0 .. $#{$filterdescribeVpcsRequestList}) {
            my $filterdescribeVpcsRequest = $filterdescribeVpcsRequestList->[$filterdescribeVpcsRequestIndex];
            if ($filterdescribeVpcsRequest->isSetName()) {
                $parameters->{"Filter" . "."  . ($filterdescribeVpcsRequestIndex + 1) . "." . "Name"} =  $filterdescribeVpcsRequest->getName();
            }
            my $valuefilterList = $filterdescribeVpcsRequest->getValue();
            for my $valuefilterIndex (0 .. $#{$valuefilterList}) {
                my $valuefilter = $valuefilterList->[$valuefilterIndex];
                $parameters->{"Filter" . "."  . ($filterdescribeVpcsRequestIndex + 1) . "." . "Value" . "."  . ($valuefilterIndex + 1)} =  $valuefilter;
            }

        }

        return $parameters;
    }
        
                                                
    #
    # Convert DescribeVpnGatewaysRequest to name value pairs
    #
    sub _convertDescribeVpnGateways() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeVpnGateways";
        my $vpnGatewayIddescribeVpnGatewaysRequestList = $request->getVpnGatewayId();
        for my $vpnGatewayIddescribeVpnGatewaysRequestIndex (0 .. $#{$vpnGatewayIddescribeVpnGatewaysRequestList}) {
            my $vpnGatewayIddescribeVpnGatewaysRequest = $vpnGatewayIddescribeVpnGatewaysRequestList->[$vpnGatewayIddescribeVpnGatewaysRequestIndex];
            $parameters->{"VpnGatewayId" . "."  . ($vpnGatewayIddescribeVpnGatewaysRequestIndex + 1)} =  $vpnGatewayIddescribeVpnGatewaysRequest;
        }
        my $filterdescribeVpnGatewaysRequestList = $request->getFilter();
        for my $filterdescribeVpnGatewaysRequestIndex (0 .. $#{$filterdescribeVpnGatewaysRequestList}) {
            my $filterdescribeVpnGatewaysRequest = $filterdescribeVpnGatewaysRequestList->[$filterdescribeVpnGatewaysRequestIndex];
            if ($filterdescribeVpnGatewaysRequest->isSetName()) {
                $parameters->{"Filter" . "."  . ($filterdescribeVpnGatewaysRequestIndex + 1) . "." . "Name"} =  $filterdescribeVpnGatewaysRequest->getName();
            }
            my $valuefilterList = $filterdescribeVpnGatewaysRequest->getValue();
            for my $valuefilterIndex (0 .. $#{$valuefilterList}) {
                my $valuefilter = $valuefilterList->[$valuefilterIndex];
                $parameters->{"Filter" . "."  . ($filterdescribeVpnGatewaysRequestIndex + 1) . "." . "Value" . "."  . ($valuefilterIndex + 1)} =  $valuefilter;
            }

        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeDhcpOptionsRequest to name value pairs
    #
    sub _convertDescribeDhcpOptions() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeDhcpOptions";
        my $dhcpOptionsIddescribeDhcpOptionsRequestList = $request->getDhcpOptionsId();
        for my $dhcpOptionsIddescribeDhcpOptionsRequestIndex (0 .. $#{$dhcpOptionsIddescribeDhcpOptionsRequestList}) {
            my $dhcpOptionsIddescribeDhcpOptionsRequest = $dhcpOptionsIddescribeDhcpOptionsRequestList->[$dhcpOptionsIddescribeDhcpOptionsRequestIndex];
            $parameters->{"DhcpOptionsId" . "."  . ($dhcpOptionsIddescribeDhcpOptionsRequestIndex + 1)} =  $dhcpOptionsIddescribeDhcpOptionsRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeVpnConnectionsRequest to name value pairs
    #
    sub _convertDescribeVpnConnections() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeVpnConnections";
        my $vpnConnectionIddescribeVpnConnectionsRequestList = $request->getVpnConnectionId();
        for my $vpnConnectionIddescribeVpnConnectionsRequestIndex (0 .. $#{$vpnConnectionIddescribeVpnConnectionsRequestList}) {
            my $vpnConnectionIddescribeVpnConnectionsRequest = $vpnConnectionIddescribeVpnConnectionsRequestList->[$vpnConnectionIddescribeVpnConnectionsRequestIndex];
            $parameters->{"VpnConnectionId" . "."  . ($vpnConnectionIddescribeVpnConnectionsRequestIndex + 1)} =  $vpnConnectionIddescribeVpnConnectionsRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeCustomerGatewaysRequest to name value pairs
    #
    sub _convertDescribeCustomerGateways() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeCustomerGateways";
        my $customerGatewayIddescribeCustomerGatewaysRequestList = $request->getCustomerGatewayId();
        for my $customerGatewayIddescribeCustomerGatewaysRequestIndex (0 .. $#{$customerGatewayIddescribeCustomerGatewaysRequestList}) {
            my $customerGatewayIddescribeCustomerGatewaysRequest = $customerGatewayIddescribeCustomerGatewaysRequestList->[$customerGatewayIddescribeCustomerGatewaysRequestIndex];
            $parameters->{"CustomerGatewayId" . "."  . ($customerGatewayIddescribeCustomerGatewaysRequestIndex + 1)} =  $customerGatewayIddescribeCustomerGatewaysRequest;
        }
        my $filterdescribeCustomerGatewaysRequestList = $request->getFilter();
        for my $filterdescribeCustomerGatewaysRequestIndex (0 .. $#{$filterdescribeCustomerGatewaysRequestList}) {
            my $filterdescribeCustomerGatewaysRequest = $filterdescribeCustomerGatewaysRequestList->[$filterdescribeCustomerGatewaysRequestIndex];
            if ($filterdescribeCustomerGatewaysRequest->isSetName()) {
                $parameters->{"Filter" . "."  . ($filterdescribeCustomerGatewaysRequestIndex + 1) . "." . "Name"} =  $filterdescribeCustomerGatewaysRequest->getName();
            }
            my $valuefilterList = $filterdescribeCustomerGatewaysRequest->getValue();
            for my $valuefilterIndex (0 .. $#{$valuefilterList}) {
                my $valuefilter = $valuefilterList->[$valuefilterIndex];
                $parameters->{"Filter" . "."  . ($filterdescribeCustomerGatewaysRequestIndex + 1) . "." . "Value" . "."  . ($valuefilterIndex + 1)} =  $valuefilter;
            }

        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeReservedInstancesOfferingsRequest to name value pairs
    #
    sub _convertDescribeReservedInstancesOfferings() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeReservedInstancesOfferings";
        my $reservedInstancesIddescribeReservedInstancesOfferingsRequestList = $request->getReservedInstancesId();
        for my $reservedInstancesIddescribeReservedInstancesOfferingsRequestIndex (0 .. $#{$reservedInstancesIddescribeReservedInstancesOfferingsRequestList}) {
            my $reservedInstancesIddescribeReservedInstancesOfferingsRequest = $reservedInstancesIddescribeReservedInstancesOfferingsRequestList->[$reservedInstancesIddescribeReservedInstancesOfferingsRequestIndex];
            $parameters->{"ReservedInstancesId" . "."  . ($reservedInstancesIddescribeReservedInstancesOfferingsRequestIndex + 1)} =  $reservedInstancesIddescribeReservedInstancesOfferingsRequest;
        }
        if ($request->isSetInstanceType()) {
            $parameters->{"InstanceType"} =  $request->getInstanceType();
        }
        if ($request->isSetAvailabilityZone()) {
            $parameters->{"AvailabilityZone"} =  $request->getAvailabilityZone();
        }
        if ($request->isSetProductDescription()) {
            $parameters->{"ProductDescription"} =  $request->getProductDescription();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeReservedInstancesRequest to name value pairs
    #
    sub _convertDescribeReservedInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeReservedInstances";
        my $reservedInstancesIddescribeReservedInstancesRequestList = $request->getReservedInstancesId();
        for my $reservedInstancesIddescribeReservedInstancesRequestIndex (0 .. $#{$reservedInstancesIddescribeReservedInstancesRequestList}) {
            my $reservedInstancesIddescribeReservedInstancesRequest = $reservedInstancesIddescribeReservedInstancesRequestList->[$reservedInstancesIddescribeReservedInstancesRequestIndex];
            $parameters->{"ReservedInstancesId" . "."  . ($reservedInstancesIddescribeReservedInstancesRequestIndex + 1)} =  $reservedInstancesIddescribeReservedInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeSubnetsRequest to name value pairs
    #
    sub _convertDescribeSubnets() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeSubnets";
        my $subnetIddescribeSubnetsRequestList = $request->getSubnetId();
        for my $subnetIddescribeSubnetsRequestIndex (0 .. $#{$subnetIddescribeSubnetsRequestList}) {
            my $subnetIddescribeSubnetsRequest = $subnetIddescribeSubnetsRequestList->[$subnetIddescribeSubnetsRequestIndex];
            $parameters->{"SubnetId" . "."  . ($subnetIddescribeSubnetsRequestIndex + 1)} =  $subnetIddescribeSubnetsRequest;
        }
        my $filterdescribeSubnetsRequestList = $request->getFilter();
        for my $filterdescribeSubnetsRequestIndex (0 .. $#{$filterdescribeSubnetsRequestList}) {
            my $filterdescribeSubnetsRequest = $filterdescribeSubnetsRequestList->[$filterdescribeSubnetsRequestIndex];
            if ($filterdescribeSubnetsRequest->isSetName()) {
                $parameters->{"Filter" . "."  . ($filterdescribeSubnetsRequestIndex + 1) . "." . "Name"} =  $filterdescribeSubnetsRequest->getName();
            }
            my $valuefilterList = $filterdescribeSubnetsRequest->getValue();
            for my $valuefilterIndex (0 .. $#{$valuefilterList}) {
                my $valuefilter = $valuefilterList->[$valuefilterIndex];
                $parameters->{"Filter" . "."  . ($filterdescribeSubnetsRequestIndex + 1) . "." . "Value" . "."  . ($valuefilterIndex + 1)} =  $valuefilter;
            }

        }

        return $parameters;
    }
        
                                        
    #
    # Convert PurchaseReservedInstancesOfferingRequest to name value pairs
    #
    sub _convertPurchaseReservedInstancesOffering() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "PurchaseReservedInstancesOffering";
        if ($request->isSetReservedInstancesOfferingId()) {
            $parameters->{"ReservedInstancesOfferingId"} =  $request->getReservedInstancesOfferingId();
        }
        if ($request->isSetInstanceCount()) {
            $parameters->{"InstanceCount"} =  $request->getInstanceCount();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeregisterImageRequest to name value pairs
    #
    sub _convertDeregisterImage() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeregisterImage";
        if ($request->isSetImageId()) {
            $parameters->{"ImageId"} =  $request->getImageId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeAddressesRequest to name value pairs
    #
    sub _convertDescribeAddresses() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeAddresses";
        my $publicIpdescribeAddressesRequestList = $request->getPublicIp();
        for my $publicIpdescribeAddressesRequestIndex (0 .. $#{$publicIpdescribeAddressesRequestList}) {
            my $publicIpdescribeAddressesRequest = $publicIpdescribeAddressesRequestList->[$publicIpdescribeAddressesRequestIndex];
            $parameters->{"PublicIp" . "."  . ($publicIpdescribeAddressesRequestIndex + 1)} =  $publicIpdescribeAddressesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeAvailabilityZonesRequest to name value pairs
    #
    sub _convertDescribeAvailabilityZones() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeAvailabilityZones";
        my $zoneNamedescribeAvailabilityZonesRequestList = $request->getZoneName();
        for my $zoneNamedescribeAvailabilityZonesRequestIndex (0 .. $#{$zoneNamedescribeAvailabilityZonesRequestList}) {
            my $zoneNamedescribeAvailabilityZonesRequest = $zoneNamedescribeAvailabilityZonesRequestList->[$zoneNamedescribeAvailabilityZonesRequestIndex];
            $parameters->{"ZoneName" . "."  . ($zoneNamedescribeAvailabilityZonesRequestIndex + 1)} =  $zoneNamedescribeAvailabilityZonesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeBundleTasksRequest to name value pairs
    #
    sub _convertDescribeBundleTasks() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeBundleTasks";
        my $bundleIddescribeBundleTasksRequestList = $request->getBundleId();
        for my $bundleIddescribeBundleTasksRequestIndex (0 .. $#{$bundleIddescribeBundleTasksRequestList}) {
            my $bundleIddescribeBundleTasksRequest = $bundleIddescribeBundleTasksRequestList->[$bundleIddescribeBundleTasksRequestIndex];
            $parameters->{"BundleId" . "."  . ($bundleIddescribeBundleTasksRequestIndex + 1)} =  $bundleIddescribeBundleTasksRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeImageAttributeRequest to name value pairs
    #
    sub _convertDescribeImageAttribute() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeImageAttribute";
        if ($request->isSetImageId()) {
            $parameters->{"ImageId"} =  $request->getImageId();
        }
        if ($request->isSetAttribute()) {
            $parameters->{"Attribute"} =  $request->getAttribute();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeImagesRequest to name value pairs
    #
    sub _convertDescribeImages() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeImages";
        my $imageIddescribeImagesRequestList = $request->getImageId();
        for my $imageIddescribeImagesRequestIndex (0 .. $#{$imageIddescribeImagesRequestList}) {
            my $imageIddescribeImagesRequest = $imageIddescribeImagesRequestList->[$imageIddescribeImagesRequestIndex];
            $parameters->{"ImageId" . "."  . ($imageIddescribeImagesRequestIndex + 1)} =  $imageIddescribeImagesRequest;
        }
        my $ownerdescribeImagesRequestList = $request->getOwner();
        for my $ownerdescribeImagesRequestIndex (0 .. $#{$ownerdescribeImagesRequestList}) {
            my $ownerdescribeImagesRequest = $ownerdescribeImagesRequestList->[$ownerdescribeImagesRequestIndex];
            $parameters->{"Owner" . "."  . ($ownerdescribeImagesRequestIndex + 1)} =  $ownerdescribeImagesRequest;
        }
        my $executableBydescribeImagesRequestList = $request->getExecutableBy();
        for my $executableBydescribeImagesRequestIndex (0 .. $#{$executableBydescribeImagesRequestList}) {
            my $executableBydescribeImagesRequest = $executableBydescribeImagesRequestList->[$executableBydescribeImagesRequestIndex];
            $parameters->{"ExecutableBy" . "."  . ($executableBydescribeImagesRequestIndex + 1)} =  $executableBydescribeImagesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeInstancesRequest to name value pairs
    #
    sub _convertDescribeInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeInstances";
        my $instanceIddescribeInstancesRequestList = $request->getInstanceId();
        for my $instanceIddescribeInstancesRequestIndex (0 .. $#{$instanceIddescribeInstancesRequestList}) {
            my $instanceIddescribeInstancesRequest = $instanceIddescribeInstancesRequestList->[$instanceIddescribeInstancesRequestIndex];
            $parameters->{"InstanceId" . "."  . ($instanceIddescribeInstancesRequestIndex + 1)} =  $instanceIddescribeInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeKeyPairsRequest to name value pairs
    #
    sub _convertDescribeKeyPairs() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeKeyPairs";
        my $keyNamedescribeKeyPairsRequestList = $request->getKeyName();
        for my $keyNamedescribeKeyPairsRequestIndex (0 .. $#{$keyNamedescribeKeyPairsRequestList}) {
            my $keyNamedescribeKeyPairsRequest = $keyNamedescribeKeyPairsRequestList->[$keyNamedescribeKeyPairsRequestIndex];
            $parameters->{"KeyName" . "."  . ($keyNamedescribeKeyPairsRequestIndex + 1)} =  $keyNamedescribeKeyPairsRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeSecurityGroupsRequest to name value pairs
    #
    sub _convertDescribeSecurityGroups() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeSecurityGroups";
        my $groupNamedescribeSecurityGroupsRequestList = $request->getGroupName();
        for my $groupNamedescribeSecurityGroupsRequestIndex (0 .. $#{$groupNamedescribeSecurityGroupsRequestList}) {
            my $groupNamedescribeSecurityGroupsRequest = $groupNamedescribeSecurityGroupsRequestList->[$groupNamedescribeSecurityGroupsRequestIndex];
            $parameters->{"GroupName" . "."  . ($groupNamedescribeSecurityGroupsRequestIndex + 1)} =  $groupNamedescribeSecurityGroupsRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DisassociateAddressRequest to name value pairs
    #
    sub _convertDisassociateAddress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DisassociateAddress";
        if ($request->isSetPublicIp()) {
            $parameters->{"PublicIp"} =  $request->getPublicIp();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert GetConsoleOutputRequest to name value pairs
    #
    sub _convertGetConsoleOutput() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "GetConsoleOutput";
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert ModifyImageAttributeRequest to name value pairs
    #
    sub _convertModifyImageAttribute() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "ModifyImageAttribute";
        if ($request->isSetImageId()) {
            $parameters->{"ImageId"} =  $request->getImageId();
        }
        if ($request->isSetAttribute()) {
            $parameters->{"Attribute"} =  $request->getAttribute();
        }
        if ($request->isSetOperationType()) {
            $parameters->{"OperationType"} =  $request->getOperationType();
        }
        my $userIdmodifyImageAttributeRequestList = $request->getUserId();
        for my $userIdmodifyImageAttributeRequestIndex (0 .. $#{$userIdmodifyImageAttributeRequestList}) {
            my $userIdmodifyImageAttributeRequest = $userIdmodifyImageAttributeRequestList->[$userIdmodifyImageAttributeRequestIndex];
            $parameters->{"UserId" . "."  . ($userIdmodifyImageAttributeRequestIndex + 1)} =  $userIdmodifyImageAttributeRequest;
        }
        my $userGroupmodifyImageAttributeRequestList = $request->getUserGroup();
        for my $userGroupmodifyImageAttributeRequestIndex (0 .. $#{$userGroupmodifyImageAttributeRequestList}) {
            my $userGroupmodifyImageAttributeRequest = $userGroupmodifyImageAttributeRequestList->[$userGroupmodifyImageAttributeRequestIndex];
            $parameters->{"UserGroup" . "."  . ($userGroupmodifyImageAttributeRequestIndex + 1)} =  $userGroupmodifyImageAttributeRequest;
        }
        my $productCodemodifyImageAttributeRequestList = $request->getProductCode();
        for my $productCodemodifyImageAttributeRequestIndex (0 .. $#{$productCodemodifyImageAttributeRequestList}) {
            my $productCodemodifyImageAttributeRequest = $productCodemodifyImageAttributeRequestList->[$productCodemodifyImageAttributeRequestIndex];
            $parameters->{"ProductCode" . "."  . ($productCodemodifyImageAttributeRequestIndex + 1)} =  $productCodemodifyImageAttributeRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert MonitorInstancesRequest to name value pairs
    #
    sub _convertMonitorInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "MonitorInstances";
        my $instanceIdmonitorInstancesRequestList = $request->getInstanceId();
        for my $instanceIdmonitorInstancesRequestIndex (0 .. $#{$instanceIdmonitorInstancesRequestList}) {
            my $instanceIdmonitorInstancesRequest = $instanceIdmonitorInstancesRequestList->[$instanceIdmonitorInstancesRequestIndex];
            $parameters->{"InstanceId" . "."  . ($instanceIdmonitorInstancesRequestIndex + 1)} =  $instanceIdmonitorInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert UnmonitorInstancesRequest to name value pairs
    #
    sub _convertUnmonitorInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "UnmonitorInstances";
        my $instanceIdunmonitorInstancesRequestList = $request->getInstanceId();
        for my $instanceIdunmonitorInstancesRequestIndex (0 .. $#{$instanceIdunmonitorInstancesRequestList}) {
            my $instanceIdunmonitorInstancesRequest = $instanceIdunmonitorInstancesRequestList->[$instanceIdunmonitorInstancesRequestIndex];
            $parameters->{"InstanceId" . "."  . ($instanceIdunmonitorInstancesRequestIndex + 1)} =  $instanceIdunmonitorInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert RebootInstancesRequest to name value pairs
    #
    sub _convertRebootInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "RebootInstances";
        my $instanceIdrebootInstancesRequestList = $request->getInstanceId();
        for my $instanceIdrebootInstancesRequestIndex (0 .. $#{$instanceIdrebootInstancesRequestList}) {
            my $instanceIdrebootInstancesRequest = $instanceIdrebootInstancesRequestList->[$instanceIdrebootInstancesRequestIndex];
            $parameters->{"InstanceId" . "."  . ($instanceIdrebootInstancesRequestIndex + 1)} =  $instanceIdrebootInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert RegisterImageRequest to name value pairs
    #
    sub _convertRegisterImage() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "RegisterImage";
        if ($request->isSetImageLocation()) {
            $parameters->{"ImageLocation"} =  $request->getImageLocation();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert ReleaseAddressRequest to name value pairs
    #
    sub _convertReleaseAddress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "ReleaseAddress";
        if ($request->isSetPublicIp()) {
            $parameters->{"PublicIp"} =  $request->getPublicIp();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert ResetImageAttributeRequest to name value pairs
    #
    sub _convertResetImageAttribute() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "ResetImageAttribute";
        if ($request->isSetImageId()) {
            $parameters->{"ImageId"} =  $request->getImageId();
        }
        if ($request->isSetAttribute()) {
            $parameters->{"Attribute"} =  $request->getAttribute();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert RevokeSecurityGroupIngressRequest to name value pairs
    #
    sub _convertRevokeSecurityGroupIngress() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "RevokeSecurityGroupIngress";
        if ($request->isSetGroupName()) {
            $parameters->{"GroupName"} =  $request->getGroupName();
        }
        if ($request->isSetSourceSecurityGroupName()) {
            $parameters->{"SourceSecurityGroupName"} =  $request->getSourceSecurityGroupName();
        }
        if ($request->isSetSourceSecurityGroupOwnerId()) {
            $parameters->{"SourceSecurityGroupOwnerId"} =  $request->getSourceSecurityGroupOwnerId();
        }
        if ($request->isSetIpProtocol()) {
            $parameters->{"IpProtocol"} =  $request->getIpProtocol();
        }
        if ($request->isSetFromPort()) {
            $parameters->{"FromPort"} =  $request->getFromPort();
        }
        if ($request->isSetToPort()) {
            $parameters->{"ToPort"} =  $request->getToPort();
        }
        if ($request->isSetCidrIp()) {
            $parameters->{"CidrIp"} =  $request->getCidrIp();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert RunInstancesRequest to name value pairs
    #
    sub _convertRunInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "RunInstances";
        if ($request->isSetImageId()) {
            $parameters->{"ImageId"} =  $request->getImageId();
        }
        if ($request->isSetMinCount()) {
            $parameters->{"MinCount"} =  $request->getMinCount();
        }
        if ($request->isSetMaxCount()) {
            $parameters->{"MaxCount"} =  $request->getMaxCount();
        }
        if ($request->isSetKeyName()) {
            $parameters->{"KeyName"} =  $request->getKeyName();
        }
        my $securityGrouprunInstancesRequestList = $request->getSecurityGroup();
        for my $securityGrouprunInstancesRequestIndex (0 .. $#{$securityGrouprunInstancesRequestList}) {
            my $securityGrouprunInstancesRequest = $securityGrouprunInstancesRequestList->[$securityGrouprunInstancesRequestIndex];
            $parameters->{"SecurityGroup" . "."  . ($securityGrouprunInstancesRequestIndex + 1)} =  $securityGrouprunInstancesRequest;
        }
        if ($request->isSetUserData()) {
            $parameters->{"UserData"} =  $request->getUserData();
        }
        if ($request->isSetInstanceType()) {
            $parameters->{"InstanceType"} =  $request->getInstanceType();
        }
        if ($request->isSetPlacement()) {
            my $placementrunInstancesRequest = $request->getPlacement();
            if ($placementrunInstancesRequest->isSetAvailabilityZone()) {
                $parameters->{"Placement" . "." . "AvailabilityZone"} =  $placementrunInstancesRequest->getAvailabilityZone();
            }
        }
        if ($request->isSetKernelId()) {
            $parameters->{"KernelId"} =  $request->getKernelId();
        }
        if ($request->isSetRamdiskId()) {
            $parameters->{"RamdiskId"} =  $request->getRamdiskId();
        }
        my $blockDeviceMappingrunInstancesRequestList = $request->getBlockDeviceMapping();
        for my $blockDeviceMappingrunInstancesRequestIndex (0 .. $#{$blockDeviceMappingrunInstancesRequestList}) {
            my $blockDeviceMappingrunInstancesRequest = $blockDeviceMappingrunInstancesRequestList->[$blockDeviceMappingrunInstancesRequestIndex];
            if ($blockDeviceMappingrunInstancesRequest->isSetVirtualName()) {
                $parameters->{"BlockDeviceMapping" . "."  . ($blockDeviceMappingrunInstancesRequestIndex + 1) . "." . "VirtualName"} =  $blockDeviceMappingrunInstancesRequest->getVirtualName();
            }
            if ($blockDeviceMappingrunInstancesRequest->isSetDeviceName()) {
                $parameters->{"BlockDeviceMapping" . "."  . ($blockDeviceMappingrunInstancesRequestIndex + 1) . "." . "DeviceName"} =  $blockDeviceMappingrunInstancesRequest->getDeviceName();
            }

        }
        if ($request->isSetMonitoring()) {
            $parameters->{"Monitoring"} =  $request->getMonitoring() ? "true" : "false";
        }
        if ($request->isSetSubnetId()) {
            $parameters->{"SubnetId"} =  $request->getSubnetId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert TerminateInstancesRequest to name value pairs
    #
    sub _convertTerminateInstances() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "TerminateInstances";
        my $instanceIdterminateInstancesRequestList = $request->getInstanceId();
        for my $instanceIdterminateInstancesRequestIndex (0 .. $#{$instanceIdterminateInstancesRequestList}) {
            my $instanceIdterminateInstancesRequest = $instanceIdterminateInstancesRequestList->[$instanceIdterminateInstancesRequestIndex];
            $parameters->{"InstanceId" . "."  . ($instanceIdterminateInstancesRequestIndex + 1)} =  $instanceIdterminateInstancesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteVolumeRequest to name value pairs
    #
    sub _convertDeleteVolume() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteVolume";
        if ($request->isSetVolumeId()) {
            $parameters->{"VolumeId"} =  $request->getVolumeId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateVolumeRequest to name value pairs
    #
    sub _convertCreateVolume() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateVolume";
        if ($request->isSetSize()) {
            $parameters->{"Size"} =  $request->getSize();
        }
        if ($request->isSetSnapshotId()) {
            $parameters->{"SnapshotId"} =  $request->getSnapshotId();
        }
        if ($request->isSetAvailabilityZone()) {
            $parameters->{"AvailabilityZone"} =  $request->getAvailabilityZone();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeVolumesRequest to name value pairs
    #
    sub _convertDescribeVolumes() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeVolumes";
        my $volumeIddescribeVolumesRequestList = $request->getVolumeId();
        for my $volumeIddescribeVolumesRequestIndex (0 .. $#{$volumeIddescribeVolumesRequestList}) {
            my $volumeIddescribeVolumesRequest = $volumeIddescribeVolumesRequestList->[$volumeIddescribeVolumesRequestIndex];
            $parameters->{"VolumeId" . "."  . ($volumeIddescribeVolumesRequestIndex + 1)} =  $volumeIddescribeVolumesRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DetachVolumeRequest to name value pairs
    #
    sub _convertDetachVolume() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DetachVolume";
        if ($request->isSetVolumeId()) {
            $parameters->{"VolumeId"} =  $request->getVolumeId();
        }
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }
        if ($request->isSetDevice()) {
            $parameters->{"Device"} =  $request->getDevice();
        }
        if ($request->isSetForce()) {
            $parameters->{"Force"} =  $request->getForce() ? "true" : "false";
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DetachVpnGatewayRequest to name value pairs
    #
    sub _convertDetachVpnGateway() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DetachVpnGateway";
        if ($request->isSetVpnGatewayId()) {
            $parameters->{"VpnGatewayId"} =  $request->getVpnGatewayId();
        }
        if ($request->isSetVpcId()) {
            $parameters->{"VpcId"} =  $request->getVpcId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DescribeSnapshotsRequest to name value pairs
    #
    sub _convertDescribeSnapshots() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeSnapshots";
        my $snapshotIddescribeSnapshotsRequestList = $request->getSnapshotId();
        for my $snapshotIddescribeSnapshotsRequestIndex (0 .. $#{$snapshotIddescribeSnapshotsRequestList}) {
            my $snapshotIddescribeSnapshotsRequest = $snapshotIddescribeSnapshotsRequestList->[$snapshotIddescribeSnapshotsRequestIndex];
            $parameters->{"SnapshotId" . "."  . ($snapshotIddescribeSnapshotsRequestIndex + 1)} =  $snapshotIddescribeSnapshotsRequest;
        }

        return $parameters;
    }
        
                                        
    #
    # Convert DeleteSnapshotRequest to name value pairs
    #
    sub _convertDeleteSnapshot() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DeleteSnapshot";
        if ($request->isSetSnapshotId()) {
            $parameters->{"SnapshotId"} =  $request->getSnapshotId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert CreateSnapshotRequest to name value pairs
    #
    sub _convertCreateSnapshot() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "CreateSnapshot";
        if ($request->isSetVolumeId()) {
            $parameters->{"VolumeId"} =  $request->getVolumeId();
        }

        return $parameters;
    }
        
                                        
    #
    # Convert AttachVolumeRequest to name value pairs
    #
    sub _convertAttachVolume() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "AttachVolume";
        if ($request->isSetVolumeId()) {
            $parameters->{"VolumeId"} =  $request->getVolumeId();
        }
        if ($request->isSetInstanceId()) {
            $parameters->{"InstanceId"} =  $request->getInstanceId();
        }
        if ($request->isSetDevice()) {
            $parameters->{"Device"} =  $request->getDevice();
        }

        return $parameters;
    }
        
                                                                                                                                                                                                                                                                                
    #
    # Convert DescribeRegionsRequest to name value pairs
    #
    sub _convertDescribeRegions() {
        my ($self, $request) = @_;
        
        my $parameters = {};
        $parameters->{"Action"} = "DescribeRegions";
        my $regionNamedescribeRegionsRequestList = $request->getRegionName();
        for my $regionNamedescribeRegionsRequestIndex (0 .. $#{$regionNamedescribeRegionsRequestList}) {
            my $regionNamedescribeRegionsRequest = $regionNamedescribeRegionsRequestList->[$regionNamedescribeRegionsRequestIndex];
            $parameters->{"RegionName" . "."  . ($regionNamedescribeRegionsRequestIndex + 1)} =  $regionNamedescribeRegionsRequest;
        }

        return $parameters;
    }
        
                                                                                                                                                                                                                                                                                                                                                                                                                                        
1;

