# AWS::SSO::InstanceAccessControlAttributeConfiguration generated from spec 22.0.0
use Moose::Util::TypeConstraints;

coerce 'Cfn::Resource::Properties::AWS::SSO::InstanceAccessControlAttributeConfiguration',
  from 'HashRef',
   via { Cfn::Resource::Properties::AWS::SSO::InstanceAccessControlAttributeConfiguration->new( %$_ ) };

package Cfn::Resource::AWS::SSO::InstanceAccessControlAttributeConfiguration {
  use Moose;
  extends 'Cfn::Resource';
  has Properties => (isa => 'Cfn::Resource::Properties::AWS::SSO::InstanceAccessControlAttributeConfiguration', is => 'rw', coerce => 1);
  
  sub AttributeList {
    [  ]
  }
  sub supported_regions {
    [ 'ap-northeast-1','ap-northeast-2','ap-south-1','ap-southeast-1','ap-southeast-2','ca-central-1','eu-central-1','eu-north-1','eu-west-1','eu-west-2','us-east-1','us-east-2','us-west-2' ]
  }
}



package Cfn::Resource::Properties::AWS::SSO::InstanceAccessControlAttributeConfiguration {
  use Moose;
  use MooseX::StrictConstructor;
  extends 'Cfn::Resource::Properties';
  
  has InstanceAccessControlAttributeConfiguration => (isa => 'Cfn::Value::Json|Cfn::DynamicValue', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
  has InstanceArn => (isa => 'Cfn::Value::String', is => 'rw', coerce => 1, required => 1, traits => [ 'CfnMutability' ], mutability => 'Mutable');
}

1;
### main pod documentation begin ###

=encoding UTF-8

=head1 NAME

Cfn::Resource::AWS::SSO::InstanceAccessControlAttributeConfiguration - Cfn resource for AWS::SSO::InstanceAccessControlAttributeConfiguration

=head1 DESCRIPTION

This module implements a Perl module that represents the CloudFormation object AWS::SSO::InstanceAccessControlAttributeConfiguration.

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
