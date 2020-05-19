# AWS::DirectoryService::MicrosoftAD generated from spec 14.3.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD->new( %$_ ) };

package Cfn::Resource::AWS::DirectoryService::MicrosoftAD {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Alias','DnsIpAddresses' ]
  }
  sub supported_regions {
    [ 'af-south-1','ap-east-1','ap-northeast-1','ap-northeast-2','ap-northeast-3','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','cn-north-1','cn-northwest-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-gov-east-1','us-gov-west-1','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD::VpcSettings',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD::VpcSettings',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD::VpcSettingsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD::VpcSettingsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has SubnetIds => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VpcId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has CreateAlias => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Edition => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has EnableSso => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Password => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has ShortName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has VpcSettings => (isa => 'Cfn::Resource::Properties::AWS::DirectoryService::MicrosoftAD::VpcSettings', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
