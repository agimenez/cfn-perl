# AWS::NetworkManager::CustomerGatewayAssociation generated from spec 14.3.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::NetworkManager::CustomerGatewayAssociation',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::NetworkManager::CustomerGatewayAssociation->new( %$_ ) };

package Cfn::Resource::AWS::NetworkManager::CustomerGatewayAssociation {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::NetworkManager::CustomerGatewayAssociation', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-east-1','ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



package Cfn::Resource::Properties::AWS::NetworkManager::CustomerGatewayAssociation {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has CustomerGatewayArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has DeviceId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has GlobalNetworkId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has LinkId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
