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



package  Amazon::EC2::Mock;
{
   # Public API ------------------------------------------------------------#
    sub new {
        my ($class, $awsAccessKeyId, $awsSecretAccessKey, $config) = @_;
        my $defaultConfig =  {
                            ServiceURL => "https://ec2.amazonaws.com",
                            UserAgent => "Amazon EC2 Perl Library",
                            SignatureVersion => 1,
                            ProxyHost => undef,
                            ProxyPort => -1,
                            MaxErrorRetry => 3
                          };
        my $self = {};
        $self->{_awsAccessKeyId} = $awsAccessKeyId;
        $self->{_awsSecretAccessKey} = $awsSecretAccessKey;
        $self->{_config} = $defaultConfig;
        $self->{_config} = {%$defaultConfig, %$config} if defined ($config);

        return bless ($self, $class);
    }

            
    sub allocateAddress {
        require Amazon::EC2::Model::AllocateAddressResponse;
        return Amazon::EC2::Model::AllocateAddressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AllocateAddressResponse.xml"});
    }


            
    sub associateAddress {
        require Amazon::EC2::Model::AssociateAddressResponse;
        return Amazon::EC2::Model::AssociateAddressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AssociateAddressResponse.xml"});
    }


            
    sub attachVolume {
        require Amazon::EC2::Model::AttachVolumeResponse;
        return Amazon::EC2::Model::AttachVolumeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AttachVolumeResponse.xml"});
    }


            
    sub authorizeSecurityGroupIngress {
        require Amazon::EC2::Model::AuthorizeSecurityGroupIngressResponse;
        return Amazon::EC2::Model::AuthorizeSecurityGroupIngressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AuthorizeSecurityGroupIngressResponse.xml"});
    }


            
    sub bundleInstance {
        require Amazon::EC2::Model::BundleInstanceResponse;
        return Amazon::EC2::Model::BundleInstanceResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/BundleInstanceResponse.xml"});
    }


            
    sub cancelBundleTask {
        require Amazon::EC2::Model::CancelBundleTaskResponse;
        return Amazon::EC2::Model::CancelBundleTaskResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CancelBundleTaskResponse.xml"});
    }


            
    sub confirmProductInstance {
        require Amazon::EC2::Model::ConfirmProductInstanceResponse;
        return Amazon::EC2::Model::ConfirmProductInstanceResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/ConfirmProductInstanceResponse.xml"});
    }


            
    sub createKeyPair {
        require Amazon::EC2::Model::CreateKeyPairResponse;
        return Amazon::EC2::Model::CreateKeyPairResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateKeyPairResponse.xml"});
    }


            
    sub createSecurityGroup {
        require Amazon::EC2::Model::CreateSecurityGroupResponse;
        return Amazon::EC2::Model::CreateSecurityGroupResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateSecurityGroupResponse.xml"});
    }


            
    sub createSnapshot {
        require Amazon::EC2::Model::CreateSnapshotResponse;
        return Amazon::EC2::Model::CreateSnapshotResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateSnapshotResponse.xml"});
    }


            
    sub createVolume {
        require Amazon::EC2::Model::CreateVolumeResponse;
        return Amazon::EC2::Model::CreateVolumeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateVolumeResponse.xml"});
    }


            
    sub deleteKeyPair {
        require Amazon::EC2::Model::DeleteKeyPairResponse;
        return Amazon::EC2::Model::DeleteKeyPairResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteKeyPairResponse.xml"});
    }


            
    sub deleteSecurityGroup {
        require Amazon::EC2::Model::DeleteSecurityGroupResponse;
        return Amazon::EC2::Model::DeleteSecurityGroupResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteSecurityGroupResponse.xml"});
    }


            
    sub deleteSnapshot {
        require Amazon::EC2::Model::DeleteSnapshotResponse;
        return Amazon::EC2::Model::DeleteSnapshotResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteSnapshotResponse.xml"});
    }


            
    sub deleteVolume {
        require Amazon::EC2::Model::DeleteVolumeResponse;
        return Amazon::EC2::Model::DeleteVolumeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteVolumeResponse.xml"});
    }


            
    sub deregisterImage {
        require Amazon::EC2::Model::DeregisterImageResponse;
        return Amazon::EC2::Model::DeregisterImageResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeregisterImageResponse.xml"});
    }


            
    sub describeAddresses {
        require Amazon::EC2::Model::DescribeAddressesResponse;
        return Amazon::EC2::Model::DescribeAddressesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeAddressesResponse.xml"});
    }


            
    sub describeAvailabilityZones {
        require Amazon::EC2::Model::DescribeAvailabilityZonesResponse;
        return Amazon::EC2::Model::DescribeAvailabilityZonesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeAvailabilityZonesResponse.xml"});
    }


            
    sub describeBundleTasks {
        require Amazon::EC2::Model::DescribeBundleTasksResponse;
        return Amazon::EC2::Model::DescribeBundleTasksResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeBundleTasksResponse.xml"});
    }


            
    sub describeImageAttribute {
        require Amazon::EC2::Model::DescribeImageAttributeResponse;
        return Amazon::EC2::Model::DescribeImageAttributeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeImageAttributeResponse.xml"});
    }


            
    sub describeImages {
        require Amazon::EC2::Model::DescribeImagesResponse;
        return Amazon::EC2::Model::DescribeImagesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeImagesResponse.xml"});
    }


            
    sub describeInstances {
        require Amazon::EC2::Model::DescribeInstancesResponse;
        return Amazon::EC2::Model::DescribeInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeInstancesResponse.xml"});
    }


            
    sub describeRegions {
        require Amazon::EC2::Model::DescribeRegionsResponse;
        return Amazon::EC2::Model::DescribeRegionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeRegionsResponse.xml"});
    }


            
    sub describeReservedInstances {
        require Amazon::EC2::Model::DescribeReservedInstancesResponse;
        return Amazon::EC2::Model::DescribeReservedInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeReservedInstancesResponse.xml"});
    }


            
    sub describeReservedInstancesOfferings {
        require Amazon::EC2::Model::DescribeReservedInstancesOfferingsResponse;
        return Amazon::EC2::Model::DescribeReservedInstancesOfferingsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeReservedInstancesOfferingsResponse.xml"});
    }


            
    sub describeKeyPairs {
        require Amazon::EC2::Model::DescribeKeyPairsResponse;
        return Amazon::EC2::Model::DescribeKeyPairsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeKeyPairsResponse.xml"});
    }


            
    sub describeSecurityGroups {
        require Amazon::EC2::Model::DescribeSecurityGroupsResponse;
        return Amazon::EC2::Model::DescribeSecurityGroupsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeSecurityGroupsResponse.xml"});
    }


            
    sub describeSnapshots {
        require Amazon::EC2::Model::DescribeSnapshotsResponse;
        return Amazon::EC2::Model::DescribeSnapshotsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeSnapshotsResponse.xml"});
    }


            
    sub describeVolumes {
        require Amazon::EC2::Model::DescribeVolumesResponse;
        return Amazon::EC2::Model::DescribeVolumesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeVolumesResponse.xml"});
    }


            
    sub detachVolume {
        require Amazon::EC2::Model::DetachVolumeResponse;
        return Amazon::EC2::Model::DetachVolumeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DetachVolumeResponse.xml"});
    }


            
    sub disassociateAddress {
        require Amazon::EC2::Model::DisassociateAddressResponse;
        return Amazon::EC2::Model::DisassociateAddressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DisassociateAddressResponse.xml"});
    }


            
    sub getConsoleOutput {
        require Amazon::EC2::Model::GetConsoleOutputResponse;
        return Amazon::EC2::Model::GetConsoleOutputResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/GetConsoleOutputResponse.xml"});
    }


            
    sub modifyImageAttribute {
        require Amazon::EC2::Model::ModifyImageAttributeResponse;
        return Amazon::EC2::Model::ModifyImageAttributeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/ModifyImageAttributeResponse.xml"});
    }


            
    sub purchaseReservedInstancesOffering {
        require Amazon::EC2::Model::PurchaseReservedInstancesOfferingResponse;
        return Amazon::EC2::Model::PurchaseReservedInstancesOfferingResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/PurchaseReservedInstancesOfferingResponse.xml"});
    }


            
    sub rebootInstances {
        require Amazon::EC2::Model::RebootInstancesResponse;
        return Amazon::EC2::Model::RebootInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/RebootInstancesResponse.xml"});
    }


            
    sub registerImage {
        require Amazon::EC2::Model::RegisterImageResponse;
        return Amazon::EC2::Model::RegisterImageResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/RegisterImageResponse.xml"});
    }


            
    sub releaseAddress {
        require Amazon::EC2::Model::ReleaseAddressResponse;
        return Amazon::EC2::Model::ReleaseAddressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/ReleaseAddressResponse.xml"});
    }


            
    sub resetImageAttribute {
        require Amazon::EC2::Model::ResetImageAttributeResponse;
        return Amazon::EC2::Model::ResetImageAttributeResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/ResetImageAttributeResponse.xml"});
    }


            
    sub revokeSecurityGroupIngress {
        require Amazon::EC2::Model::RevokeSecurityGroupIngressResponse;
        return Amazon::EC2::Model::RevokeSecurityGroupIngressResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/RevokeSecurityGroupIngressResponse.xml"});
    }


            
    sub runInstances {
        require Amazon::EC2::Model::RunInstancesResponse;
        return Amazon::EC2::Model::RunInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/RunInstancesResponse.xml"});
    }


            
    sub terminateInstances {
        require Amazon::EC2::Model::TerminateInstancesResponse;
        return Amazon::EC2::Model::TerminateInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/TerminateInstancesResponse.xml"});
    }


            
    sub monitorInstances {
        require Amazon::EC2::Model::MonitorInstancesResponse;
        return Amazon::EC2::Model::MonitorInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/MonitorInstancesResponse.xml"});
    }


            
    sub unmonitorInstances {
        require Amazon::EC2::Model::UnmonitorInstancesResponse;
        return Amazon::EC2::Model::UnmonitorInstancesResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/UnmonitorInstancesResponse.xml"});
    }


            
    sub describeVpnConnections {
        require Amazon::EC2::Model::DescribeVpnConnectionsResponse;
        return Amazon::EC2::Model::DescribeVpnConnectionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeVpnConnectionsResponse.xml"});
    }


            
    sub describeSubnets {
        require Amazon::EC2::Model::DescribeSubnetsResponse;
        return Amazon::EC2::Model::DescribeSubnetsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeSubnetsResponse.xml"});
    }


            
    sub detachVpnGateway {
        require Amazon::EC2::Model::DetachVpnGatewayResponse;
        return Amazon::EC2::Model::DetachVpnGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DetachVpnGatewayResponse.xml"});
    }


            
    sub describeVpcs {
        require Amazon::EC2::Model::DescribeVpcsResponse;
        return Amazon::EC2::Model::DescribeVpcsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeVpcsResponse.xml"});
    }


            
    sub deleteCustomerGateway {
        require Amazon::EC2::Model::DeleteCustomerGatewayResponse;
        return Amazon::EC2::Model::DeleteCustomerGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteCustomerGatewayResponse.xml"});
    }


            
    sub attachVpnGateway {
        require Amazon::EC2::Model::AttachVpnGatewayResponse;
        return Amazon::EC2::Model::AttachVpnGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AttachVpnGatewayResponse.xml"});
    }


            
    sub deleteDhcpOptions {
        require Amazon::EC2::Model::DeleteDhcpOptionsResponse;
        return Amazon::EC2::Model::DeleteDhcpOptionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteDhcpOptionsResponse.xml"});
    }


            
    sub deleteSubnet {
        require Amazon::EC2::Model::DeleteSubnetResponse;
        return Amazon::EC2::Model::DeleteSubnetResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteSubnetResponse.xml"});
    }


            
    sub createVpc {
        require Amazon::EC2::Model::CreateVpcResponse;
        return Amazon::EC2::Model::CreateVpcResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateVpcResponse.xml"});
    }


            
    sub createCustomerGateway {
        require Amazon::EC2::Model::CreateCustomerGatewayResponse;
        return Amazon::EC2::Model::CreateCustomerGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateCustomerGatewayResponse.xml"});
    }


            
    sub createVpnGateway {
        require Amazon::EC2::Model::CreateVpnGatewayResponse;
        return Amazon::EC2::Model::CreateVpnGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateVpnGatewayResponse.xml"});
    }


            
    sub deleteVpc {
        require Amazon::EC2::Model::DeleteVpcResponse;
        return Amazon::EC2::Model::DeleteVpcResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteVpcResponse.xml"});
    }


            
    sub associateDhcpOptions {
        require Amazon::EC2::Model::AssociateDhcpOptionsResponse;
        return Amazon::EC2::Model::AssociateDhcpOptionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/AssociateDhcpOptionsResponse.xml"});
    }


            
    sub describeVpnGateways {
        require Amazon::EC2::Model::DescribeVpnGatewaysResponse;
        return Amazon::EC2::Model::DescribeVpnGatewaysResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeVpnGatewaysResponse.xml"});
    }


            
    sub createSubnet {
        require Amazon::EC2::Model::CreateSubnetResponse;
        return Amazon::EC2::Model::CreateSubnetResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateSubnetResponse.xml"});
    }


            
    sub deleteVpnConnection {
        require Amazon::EC2::Model::DeleteVpnConnectionResponse;
        return Amazon::EC2::Model::DeleteVpnConnectionResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteVpnConnectionResponse.xml"});
    }


            
    sub deleteVpnGateway {
        require Amazon::EC2::Model::DeleteVpnGatewayResponse;
        return Amazon::EC2::Model::DeleteVpnGatewayResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DeleteVpnGatewayResponse.xml"});
    }


            
    sub describeCustomerGateways {
        require Amazon::EC2::Model::DescribeCustomerGatewaysResponse;
        return Amazon::EC2::Model::DescribeCustomerGatewaysResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeCustomerGatewaysResponse.xml"});
    }


            
    sub createVpnConnection {
        require Amazon::EC2::Model::CreateVpnConnectionResponse;
        return Amazon::EC2::Model::CreateVpnConnectionResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateVpnConnectionResponse.xml"});
    }


            
    sub describeDhcpOptions {
        require Amazon::EC2::Model::DescribeDhcpOptionsResponse;
        return Amazon::EC2::Model::DescribeDhcpOptionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/DescribeDhcpOptionsResponse.xml"});
    }


            
    sub createDhcpOptions {
        require Amazon::EC2::Model::CreateDhcpOptionsResponse;
        return Amazon::EC2::Model::CreateDhcpOptionsResponse
                    ->fromXML ($INC{"Amazon/EC2/Mock/CreateDhcpOptionsResponse.xml"});
    }

}

1;