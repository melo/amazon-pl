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
# Create Vpn Connection  Sample
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
 # sample for Create Vpn Connection Action
 #**********************************************************************/
 use Amazon::EC2::Model::CreateVpnConnectionRequest;
 # @TODO: set request. Action can be passed as Amazon::EC2::Model::CreateVpnConnectionRequest
 # object or hash of parameters
 # invokeCreateVpnConnection($service, $request);

                                                                                                                                                                                                                                                                            
    # 
    # Create Vpn Connection Action Sample
    #
  sub invokeCreateVpnConnection {
      my ($service, $request) = @_;  
      eval {
              my $response = $service->createVpnConnection($request);
              
                print ("Service Response\n");
                print ("=============================================================================\n");

                print("        CreateVpnConnectionResponse\n");
                if ($response->isSetResponseMetadata()) { 
                    print("            ResponseMetadata\n");
                    my $responseMetadata = $response->getResponseMetadata();
                    if ($responseMetadata->isSetRequestId()) 
                    {
                        print("                RequestId\n");
                        print("                    " . $responseMetadata->getRequestId() . "\n");
                    }
                } 
                if ($response->isSetCreateVpnConnectionResult()) { 
                    print("            CreateVpnConnectionResult\n");
                    my $createVpnConnectionResult = $response->getCreateVpnConnectionResult();
                    if ($createVpnConnectionResult->isSetVpnConnection()) { 
                        print("                VpnConnection\n");
                        my $vpnConnection = $createVpnConnectionResult->getVpnConnection();
                        if ($vpnConnection->isSetVpnConnectionId()) 
                        {
                            print("                    VpnConnectionId\n");
                            print("                        " . $vpnConnection->getVpnConnectionId() . "\n");
                        }
                        if ($vpnConnection->isSetVpnConnectionState()) 
                        {
                            print("                    VpnConnectionState\n");
                            print("                        " . $vpnConnection->getVpnConnectionState() . "\n");
                        }
                        if ($vpnConnection->isSetCustomerGatewayConfiguration()) 
                        {
                            print("                    CustomerGatewayConfiguration\n");
                            print("                        " . $vpnConnection->getCustomerGatewayConfiguration() . "\n");
                        }
                        if ($vpnConnection->isSetType()) 
                        {
                            print("                    Type\n");
                            print("                        " . $vpnConnection->getType() . "\n");
                        }
                        if ($vpnConnection->isSetCustomerGatewayId()) 
                        {
                            print("                    CustomerGatewayId\n");
                            print("                        " . $vpnConnection->getCustomerGatewayId() . "\n");
                        }
                        if ($vpnConnection->isSetVpnGatewayId()) 
                        {
                            print("                    VpnGatewayId\n");
                            print("                        " . $vpnConnection->getVpnGatewayId() . "\n");
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

            