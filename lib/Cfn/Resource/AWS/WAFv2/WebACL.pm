# AWS::WAFv2::WebACL generated from spec 9.1.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::WAFv2::WebACL->new( %$_ ) };

package Cfn::Resource::AWS::WAFv2::WebACL {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-west-1','eu-west-2','eu-west-3','sa-east-1','us-east-1','us-east-2','us-west-1','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::UriPath',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::UriPath',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::UriPathValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::UriPathValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformationValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformationValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Priority => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Type => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleQueryArgument',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleQueryArgument',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleQueryArgumentValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleQueryArgumentValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleHeader',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleHeader',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleHeaderValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleHeaderValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::QueryString',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::QueryString',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::QueryStringValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::QueryStringValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Method',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Method',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::MethodValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::MethodValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRuleValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRuleValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Body',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Body',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::BodyValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::BodyValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllQueryArguments',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllQueryArguments',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllQueryArgumentsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllQueryArgumentsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformationsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformationsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TextTransformations => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformation', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatchValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatchValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AllQueryArguments => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllQueryArguments', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Body => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Body', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Method => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Method', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has QueryString => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::QueryString', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SingleHeader => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleHeader', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SingleQueryArgument => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SingleQueryArgument', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has UriPath => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::UriPath', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRules',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRules',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRulesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRulesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ExcludedRules => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRule', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountryCodes',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountryCodes',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountryCodesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountryCodesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CountryCodes => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ComparisonOperator => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Size => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ExcludedRules => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRules', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ExcludedRules => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ExcludedRules', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VendorName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CountryCodes => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountryCodes', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatement',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatement',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatementValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatementValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has FieldToMatch => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::FieldToMatch', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has PositionalConstraint => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SearchString => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SearchStringBase64 => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has TextTransformations => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TextTransformations', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThreeValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThreeValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ManagedRuleGroupStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RuleGroupReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThrees',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThrees',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThreesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThreesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has StatementThrees => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementTwoValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementTwoValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AggregateKeyType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Limit => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScopeDownStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementTwoValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementTwoValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThrees', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementTwoValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementTwoValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThree', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementTwoValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementTwoValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementThrees', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwoValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwoValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AndStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ManagedRuleGroupStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NotStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OrStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateBasedStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RuleGroupReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwos',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwos',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwosValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwosValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has StatementTwos => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementOneValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementOneValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AggregateKeyType => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Limit => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ScopeDownStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementOneValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementOneValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwos', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementOneValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementOneValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwo', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NoneAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NoneAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::NoneActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::NoneActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementOneValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementOneValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Statements => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementTwos', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfig',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfig',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfigValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfigValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CloudWatchMetricsEnabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has MetricName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SampledRequestsEnabled => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementOne',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementOne',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementOneValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementOneValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has AndStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AndStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ByteMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ByteMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has GeoMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::GeoMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has IPSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::IPSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ManagedRuleGroupStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::ManagedRuleGroupStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NotStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NotStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OrStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OrStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RateBasedStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RateBasedStatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RegexPatternSetReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RegexPatternSetReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RuleGroupReferenceStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleGroupReferenceStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SizeConstraintStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SizeConstraintStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has SqliMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::SqliMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has XssMatchStatement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::XssMatchStatement', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Allow => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Block => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Count => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OverrideAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OverrideAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::OverrideActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::OverrideActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Count => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::CountAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has None => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::NoneAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::Rule',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::Rule',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rule')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rule',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rule',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Action => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::RuleAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has OverrideAction => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::OverrideAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Priority => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Statement => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::StatementOne', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VisibilityConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}
subtype 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummaryValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummaryValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LockToken => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rules',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rules',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::RulesValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::RulesValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Rules => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::Rule', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultAction',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultAction',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultActionValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultActionValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Allow => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::AllowAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Block => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::BlockAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLs',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLs',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLsValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLsValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has WebACLs => (isa => 'ArrayOfCfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACL',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACL',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has ARN => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Capacity => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DefaultAction => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rules => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rules', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VisibilityConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TagList',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TagList',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::WAFv2::WebACL::TagListValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::WAFv2::WebACL::TagListValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has TagList => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::WAFv2::WebACL {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has DefaultAction => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::DefaultAction', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Description => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Id => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Limit => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has LockToken => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NextLockToken => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has NextMarker => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Rules => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::Rules', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Scope => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Summary => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLSummary', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::TagList', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has VisibilityConfig => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::VisibilityConfig', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has WebACL => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACL', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has WebACLs => (isa => 'Cfn::Resource::Properties::AWS::WAFv2::WebACL::WebACLs', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
