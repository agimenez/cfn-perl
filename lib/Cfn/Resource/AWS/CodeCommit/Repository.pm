# AWS::CodeCommit::Repository generated from spec 2.22.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::CodeCommit::Repository',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::CodeCommit::Repository->new( %$_ ) };

package Cfn::Resource::AWS::CodeCommit::Repository {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::CodeCommit::Repository', is => 'rw', coerce => 1);
  sub _build_attributes {
    [ 'Arn','CloneUrlHttp','CloneUrlSsh','Name' ]
  }
}


subtype 'ArrayOfCfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger',
     as 'Cfn::Value',
  where { $_->isa('Cfn::Value::Array') or $_->isa('Cfn::Value::Function') },
message { "$_ is not a Cfn::Value or a Cfn::Value::Function" };

coerce 'ArrayOfCfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger',
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
         Moose::Util::TypeConstraints::find_type_constraint('Cfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger')->coerce($_)
       } @$_
     ]);
   };

subtype 'Cfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTriggerValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTriggerValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Branches => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has CustomData => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has DestinationArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Events => (isa => 'Cfn::Value::Array|Cfn::Value::Function|Cfn::DynamicValue', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Name => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::CodeCommit::Repository {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has RepositoryDescription => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RepositoryName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Triggers => (isa => 'ArrayOfCfn::Resource::Properties::AWS::CodeCommit::Repository::RepositoryTrigger', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Conditional');
}

1;
