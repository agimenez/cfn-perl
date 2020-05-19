# AWS::EMR::InstanceFleetConfig generated from spec 14.3.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig->new( %$_ ) };

package Cfn::Resource::AWS::EMR::InstanceFleetConfig {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'af-south-1','ap-east-1','ap-northeast-1','ap-northeast-2','ap-northeast-3','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','cn-north-1','cn-northwest-1','eu-central-1','eu-north-1','eu-south-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-gov-east-1','us-gov-west-1','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::VolumeSpecification',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::VolumeSpecification',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::VolumeSpecificationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::VolumeSpecificationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Iops => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has SizeInGB => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has VolumeType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfigValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfigValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has VolumeSpecification => (isa => 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::VolumeSpecification', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has VolumesPerInstance => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::SpotProvisioningSpecification',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::SpotProvisioningSpecification',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::SpotProvisioningSpecificationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::SpotProvisioningSpecificationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BlockDurationMinutes => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimeoutAction => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimeoutDurationMinutes => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has EbsBlockDeviceConfigs => (isa => 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsBlockDeviceConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has EbsOptimized => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::ConfigurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::ConfigurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Classification => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has ConfigurationProperties => (isa => 'Cfn::Value::Hash|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Configurations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       die 'Only accepts functions'; 
     }
   },
  from 'ArrayRef',
   via {
     Cfn::Value::Array->new(Value => [
       map { 
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfigValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfigValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BidPrice => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has BidPriceAsPercentageOfOnDemandPrice => (isa => 'Cfn::Value::Double', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Configurations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::Configuration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has EbsConfiguration => (isa => 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::EbsConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has InstanceType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has WeightedCapacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

subtype 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceFleetProvisioningSpecifications',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceFleetProvisioningSpecifications',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceFleetProvisioningSpecificationsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceFleetProvisioningSpecificationsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has SpotSpecification => (isa => 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::SpotProvisioningSpecification', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has ClusterId => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has InstanceFleetType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has InstanceTypeConfigs => (isa => 'ArrayOfCfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceTypeConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has LaunchSpecifications => (isa => 'Cfn::Resource::Properties::AWS::EMR::InstanceFleetConfig::InstanceFleetProvisioningSpecifications', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has TargetOnDemandCapacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TargetSpotCapacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
