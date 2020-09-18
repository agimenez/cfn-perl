# AWS::AppMesh::VirtualGateway generated from spec 17.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway->new( %$_ ) };

package Cfn::Resource::AWS::AppMesh::VirtualGateway {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','MeshName','MeshOwner','ResourceOwner','Uid','VirtualGatewayName' ]
  }
  sub supported_regions {
    [ 'ap-east-1','ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-2','ca-central-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextFileTrust',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextFileTrust',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextFileTrustValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextFileTrustValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CertificateChain => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextAcmTrust',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextAcmTrust',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextAcmTrustValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextAcmTrustValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CertificateAuthorityArns => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextTrust',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextTrust',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextTrustValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextTrustValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ACM => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextAcmTrust', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has File => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextFileTrust', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContext',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContext',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Trust => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContextTrust', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsFileCertificate',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsFileCertificate',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsFileCertificateValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsFileCertificateValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CertificateChain => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PrivateKey => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsAcmCertificate',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsAcmCertificate',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsAcmCertificateValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsAcmCertificateValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CertificateArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsCertificate',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsCertificate',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsCertificateValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsCertificateValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ACM => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsAcmCertificate', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has File => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsFileCertificate', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayFileAccessLog',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayFileAccessLog',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayFileAccessLogValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayFileAccessLogValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Path => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyTls',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyTls',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyTlsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyTlsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Enforce => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Ports => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Validation => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayTlsValidationContext', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayPortMapping',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayPortMapping',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayPortMappingValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayPortMappingValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Port => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Protocol => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTls',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTls',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Certificate => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTlsCertificate', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Mode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayHealthCheckPolicy',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayHealthCheckPolicy',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayHealthCheckPolicyValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayHealthCheckPolicyValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HealthyThreshold => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IntervalMillis => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Path => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Port => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Protocol => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TimeoutMillis => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UnhealthyThreshold => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicy',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicy',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TLS => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicyTls', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayAccessLog',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayAccessLog',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayAccessLogValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayAccessLogValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has File => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayFileAccessLog', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayLogging',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayLogging',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayLoggingValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayLoggingValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AccessLog => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayAccessLog', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HealthCheck => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayHealthCheckPolicy', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PortMapping => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayPortMapping', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TLS => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListenerTls', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayBackendDefaults',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayBackendDefaults',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayBackendDefaultsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayBackendDefaultsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ClientPolicy => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayClientPolicy', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewaySpec',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewaySpec',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewaySpecValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewaySpecValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has BackendDefaults => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayBackendDefaults', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Listeners => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayListener', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Logging => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewayLogging', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has MeshName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has MeshOwner => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Spec => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::VirtualGateway::VirtualGatewaySpec', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VirtualGatewayName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::AppMesh::VirtualGateway - Cfn resource for AWS::AppMesh::VirtualGateway

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::AppMesh::VirtualGateway.

See L<Cfn> for more information on how to use it.

=head1 AUTHOR

    Jose Luis Martinez
    CAPSiDE
    jlmartinez@capside.com

=head1 COPYRIGHT and LICENSE

Copyright (c) 2013 by CAPSiDE
This code is distributed under the Apache 2 License. The full text of the 
license can be found in the LICENSE file included with this module.

=cut
