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



#
# Describe Instances  Sample
#

use strict;
use Carp qw( carp croak );

# this is only needed when samples are running from directory
# not included in the @INC path
use lib qw(../../../.);  


 #***********************************************************************
 # Access Key ID and Secret Acess Key ID, obtained from:
 # http://aws.amazon.com
 #**********************************************************************/
 
 my $AWS_ACCESS_KEY_ID        = "<Your Access Key ID>";
 my $AWS_SECRET_ACCESS_KEY    = "<Your Secret Access Key>";

 #***********************************************************************
 # Instantiate Http Client Implementation of EC2 
 #**********************************************************************/
 use Amazon::EC2::Client; 
 my $service = Amazon::EC2::Client->new($AWS_ACCESS_KEY_ID, $AWS_SECRET_ACCESS_KEY);
 
 #************************************************************************
 # Uncomment to try out Mock Service that simulates Amazon::EC2
 # responses without calling Amazon::EC2 service.
 #
 # Responses are loaded from local XML files. You can tweak XML files to
 # experiment with various outputs during development
 #
 # XML files available under Amazon/EC2/Mock tree
 #
 #**********************************************************************/
 # use Amazon::EC2::Mock;  
 # my $service = Amazon::EC2::Mock->new;

 #************************************************************************
 # Setup request parameters and uncomment invoke to try out 
 # sample for Describe Instances Action
 #**********************************************************************/
 use Amazon::EC2::Model::DescribeInstancesRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::DescribeInstancesRequest
 # object or hash of parameters
 # invokeDescribeInstances($service, $request);

                                                                                                            
    # 
    # Describe Instances Action Sample
    #
  sub invokeDescribeInstances {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->describeInstances($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        DescribeInstancesResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetDescribeInstancesResult()) { 
                    print("            DescribeInstancesResult\n");
                    my $describeInstancesResult = $response->getDescribeInstancesResult();
                    my $reservationList = $describeInstancesResult->getReservation();
                    foreach (@$reservationList) {
                        my $reservation = $_;
                        print("                Reservation\n");
                        if ($reservation->isSetReservationId()) 
                        {
                            print("                    ReservationId\n");
                            print("                        " . $reservation->getReservationId() . "\n");
                        }
                        if ($reservation->isSetOwnerId()) 
                        {
                            print("                    OwnerId\n");
                            print("                        " . $reservation->getOwnerId() . "\n");
                        }
                        if ($reservation->isSetRequesterId()) 
                        {
                            print("                    RequesterId\n");
                            print("                        " . $reservation->getRequesterId() . "\n");
                        }
                        my $groupNameList  =  $reservation->getGroupName();
                        foreach (@$groupNameList) { 
                            my $groupName = $_;
                            print("                    GroupName\n");
                            print("                        " . $groupName);
                        }	
                        my $runningInstanceList = $reservation->getRunningInstance();
                        foreach (@$runningInstanceList) {
                            my $runningInstance = $_;
                            print("                    RunningInstance\n");
                            if ($runningInstance->isSetInstanceId()) 
                            {
                                print("                        InstanceId\n");
                                print("                            " . $runningInstance->getInstanceId() . "\n");
                            }
                            if ($runningInstance->isSetImageId()) 
                            {
                                print("                        ImageId\n");
                                print("                            " . $runningInstance->getImageId() . "\n");
                            }
                            if ($runningInstance->isSetInstanceState()) { 
                                print("                        InstanceState\n");
                                my $instanceState = $runningInstance->getInstanceState();
                                if ($instanceState->isSetCode()) 
                                {
                                    print("                            Code\n");
                                    print("                                " . $instanceState->getCode() . "\n");
                                }
                                if ($instanceState->isSetName()) 
                                {
                                    print("                            Name\n");
                                    print("                                " . $instanceState->getName() . "\n");
                                }
                            } 
                            if ($runningInstance->isSetPrivateDnsName()) 
                            {
                                print("                        PrivateDnsName\n");
                                print("                            " . $runningInstance->getPrivateDnsName() . "\n");
                            }
                            if ($runningInstance->isSetPublicDnsName()) 
                            {
                                print("                        PublicDnsName\n");
                                print("                            " . $runningInstance->getPublicDnsName() . "\n");
                            }
                            if ($runningInstance->isSetStateTransitionReason()) 
                            {
                                print("                        StateTransitionReason\n");
                                print("                            " . $runningInstance->getStateTransitionReason() . "\n");
                            }
                            if ($runningInstance->isSetKeyName()) 
                            {
                                print("                        KeyName\n");
                                print("                            " . $runningInstance->getKeyName() . "\n");
                            }
                            if ($runningInstance->isSetAmiLaunchIndex()) 
                            {
                                print("                        AmiLaunchIndex\n");
                                print("                            " . $runningInstance->getAmiLaunchIndex() . "\n");
                            }
                            my $productCodeList  =  $runningInstance->getProductCode();
                            foreach (@$productCodeList) { 
                                my $productCode = $_;
                                print("                        ProductCode\n");
                                print("                            " . $productCode);
                            }	
                            if ($runningInstance->isSetInstanceType()) 
                            {
                                print("                        InstanceType\n");
                                print("                            " . $runningInstance->getInstanceType() . "\n");
                            }
                            if ($runningInstance->isSetLaunchTime()) 
                            {
                                print("                        LaunchTime\n");
                                print("                            " . $runningInstance->getLaunchTime() . "\n");
                            }
                            if ($runningInstance->isSetPlacement()) { 
                                print("                        Placement\n");
                                my $placement = $runningInstance->getPlacement();
                                if ($placement->isSetAvailabilityZone()) 
                                {
                                    print("                            AvailabilityZone\n");
                                    print("                                " . $placement->getAvailabilityZone() . "\n");
                                }
                            } 
                            if ($runningInstance->isSetKernelId()) 
                            {
                                print("                        KernelId\n");
                                print("                            " . $runningInstance->getKernelId() . "\n");
                            }
                            if ($runningInstance->isSetRamdiskId()) 
                            {
                                print("                        RamdiskId\n");
                                print("                            " . $runningInstance->getRamdiskId() . "\n");
                            }
                            if ($runningInstance->isSetPlatform()) 
                            {
                                print("                        Platform\n");
                                print("                            " . $runningInstance->getPlatform() . "\n");
                            }
                            if ($runningInstance->isSetMonitoring()) { 
                                print("                        Monitoring\n");
                                my $monitoring = $runningInstance->getMonitoring();
                                if ($monitoring->isSetMonitoringState()) 
                                {
                                    print("                            MonitoringState\n");
                                    print("                                " . $monitoring->getMonitoringState() . "\n");
                                }
                            } 
                        }
                    }
                } 

           
     };
    my $ex = $@;
    if ($ex) {
        require Amazon::EC2::Exception;
        if (ref $ex eq "Amazon::EC2::Exception") {
            print("Caught Exception: " . $ex->getMessage() . "\n");
            print("Response Status Code: " . $ex->getStatusCode() . "\n");
            print("Error Code: " . $ex->getErrorCode() . "\n");
            print("Error Type: " . $ex->getErrorType() . "\n");
            print("Request ID: " . $ex->getRequestId() . "\n");
            print("XML: " . $ex->getXML() . "\n");
        } else {
            croak $@;
        }
    }
 }

                                                                                                                                                                            