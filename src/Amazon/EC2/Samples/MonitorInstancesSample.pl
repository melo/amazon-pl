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
# Monitor Instances  Sample
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
 # sample for Monitor Instances Action
 #**********************************************************************/
 use Amazon::EC2::Model::MonitorInstancesRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::MonitorInstancesRequest
 # object or hash of parameters
 # invokeMonitorInstances($service, $request);

                                                                                                                                                                                            
    # 
    # Monitor Instances Action Sample
    #
  sub invokeMonitorInstances {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->monitorInstances($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        MonitorInstancesResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetMonitorInstancesResult()) { 
                    print("            MonitorInstancesResult\n");
                    my $monitorInstancesResult = $response->getMonitorInstancesResult();
                    my $instanceMonitoringList = $monitorInstancesResult->getInstanceMonitoring();
                    foreach (@$instanceMonitoringList) {
                        my $instanceMonitoring = $_;
                        print("                InstanceMonitoring\n");
                        if ($instanceMonitoring->isSetInstanceId()) 
                        {
                            print("                    InstanceId\n");
                            print("                        " . $instanceMonitoring->getInstanceId() . "\n");
                        }
                        if ($instanceMonitoring->isSetMonitoring()) { 
                            print("                    Monitoring\n");
                            my $monitoring = $instanceMonitoring->getMonitoring();
                            if ($monitoring->isSetMonitoringState()) 
                            {
                                print("                        MonitoringState\n");
                                print("                            " . $monitoring->getMonitoringState() . "\n");
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

                                                                                            