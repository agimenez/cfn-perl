# AWS::AppMesh::Route generated from spec 6.1.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::AppMesh::Route->new( %$_ ) };

package Cfn::Resource::AWS::AppMesh::Route {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','MeshName','RouteName','Uid','VirtualRouterName' ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-west-1','eu-west-2','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::MatchRange',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::MatchRange',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::MatchRangeValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::MatchRangeValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has End => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Start => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HeaderMatchMethod',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HeaderMatchMethod',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HeaderMatchMethodValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HeaderMatchMethodValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Exact => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Prefix => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Range => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::MatchRange', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Regex => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Suffix => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::WeightedTargetValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::WeightedTargetValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has VirtualNode => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Weight => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeaderValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeaderValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Invert => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Match => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::HeaderMatchMethod', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::Duration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::Duration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::DurationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::DurationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Unit => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Value => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has WeightedTargets => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteMatch',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteMatch',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteMatchValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteMatchValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Headers => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteHeader', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Method => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Prefix => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scheme => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has WeightedTargets => (isa => 'ArrayOfCfn::Resource::Properties::AWS::AppMesh::Route::WeightedTarget', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRetryPolicy',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRetryPolicy',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRetryPolicyValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRetryPolicyValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HttpRetryEvents => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MaxRetries => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PerRetryTimeout => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::Duration', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TcpRetryEvents => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRoute',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRoute',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Action => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRouteAction', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRoute',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRoute',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Action => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteAction', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Match => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRouteMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RetryPolicy => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRetryPolicy', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::AppMesh::Route::RouteSpec',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::AppMesh::Route::RouteSpec',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::AppMesh::Route::RouteSpecValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::AppMesh::Route::RouteSpecValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has HttpRoute => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::HttpRoute', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Priority => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TcpRoute => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::TcpRoute', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::AppMesh::Route {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has MeshName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has RouteName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has Spec => (isa => 'Cfn::Resource::Properties::AWS::AppMesh::Route::RouteSpec', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VirtualRouterName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
}

1;
