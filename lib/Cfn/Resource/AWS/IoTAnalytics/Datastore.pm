# AWS::IoTAnalytics::Datastore generated from spec 17.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore->new( %$_ ) };

package Cfn::Resource::AWS::IoTAnalytics::Datastore {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-southeast-2','eu-central-1','eu-west-1','us-east-1','us-east-2','us-west-2' ]
  }
}



subtype 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::ServiceManagedS3',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::ServiceManagedS3',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::ServiceManagedS3Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::ServiceManagedS3Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
}

subtype 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::CustomerManagedS3',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::CustomerManagedS3',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::CustomerManagedS3Value->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::CustomerManagedS3Value {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has Bucket => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has KeyPrefix => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RoleArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::RetentionPeriod',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::RetentionPeriod',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::RetentionPeriodValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::RetentionPeriodValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has NumberOfDays => (isa => 'Cfn::Value::Integer', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Unlimited => (isa => 'Cfn::Value::Boolean', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

subtype 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::DatastoreStorage',
     as 'Cfn::Value';

coerce 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::DatastoreStorage',
  from 'HashRef',
   via {
     if (my $f = Cfn::TypeLibrary::try_function($_)) {
       return $f
     } else {
       return Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::DatastoreStorageValue->new( %$_ );
     }
   };

package Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::DatastoreStorageValue {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Value::TypedValue';
  
  has CustomerManagedS3 => (isa => 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::CustomerManagedS3', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has ServiceManagedS3 => (isa => 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::ServiceManagedS3', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

package Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has DatastoreName => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Immutable');
  has DatastoreStorage => (isa => 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::DatastoreStorage', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has RetentionPeriod => (isa => 'Cfn::Resource::Properties::AWS::IoTAnalytics::Datastore::RetentionPeriod', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has Tags => (isa => 'ArrayOfCfn::Resource::Properties::TagType', is => 'rw', coerce => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::IoTAnalytics::Datastore - Cfn resource for AWS::IoTAnalytics::Datastore

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::IoTAnalytics::Datastore.

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
