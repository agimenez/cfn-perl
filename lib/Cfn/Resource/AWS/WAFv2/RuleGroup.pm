# AWS::WAFv2::RuleGroup generated from spec 18.4.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::WAFv2::RuleGroup->new( %$_ ) };

package Cfn::Resource::AWS::WAFv2::RuleGroup {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [ 'Arn','Id' ]
  }
  sub supported_regions {
    [ 'ap-east-1','ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','eu-west-3','me-south-1','sa-east-1','us-east-1','us-east-2','us-gov-west-1','us-west-1','us-west-2' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Priority => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetForwardedIPConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetForwardedIPConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetForwardedIPConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetForwardedIPConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FallbackBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HeaderName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Position => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FallbackBehavior => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has HeaderName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AllQueryArguments => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Body => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Method => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has QueryString => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SingleHeader => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SingleQueryArgument => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UriPath => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ComparisonOperator => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Size => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Arn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Arn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetForwardedIPConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetForwardedIPConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CountryCodes => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ForwardedIPConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::FieldToMatch', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PositionalConstraint => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SearchString => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SearchStringBase64 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::TextTransformation', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementTwo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementTwo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AggregateKeyType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ForwardedIPConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Limit => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScopeDownStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementTwo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementTwo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementTwo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementTwo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementTwo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementTwo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementThree', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AndStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NotStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OrStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateBasedStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementOne::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementOne::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AggregateKeyType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ForwardedIPConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ForwardedIPConfiguration', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Limit => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScopeDownStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementOne::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementOne::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementOne::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementOne::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementOne::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementOne::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementTwo', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CloudWatchMetricsEnabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MetricName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SampledRequestsEnabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementOne::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementOne::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AndStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::AndStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NotStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::NotStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OrStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::OrStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateBasedStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RateBasedStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RuleAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RuleAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RuleAction::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RuleAction::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Allow => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Block => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Count => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule::Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule::Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Action => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::RuleAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Priority => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::StatementOne', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VisibilityConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::WAFv2::RuleGroup {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has Capacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rules => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::RuleGroup::Rule', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scope => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VisibilityConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::RuleGroup::VisibilityConfig', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::WAFv2::RuleGroup - Cfn resource for AWS::WAFv2::RuleGroup

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::WAFv2::RuleGroup.

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
