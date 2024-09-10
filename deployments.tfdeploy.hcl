# Copyright (c) HashiCorp, Inc.
# SPDX-License-Identifier: MPL-2.0

identity_token "aws" {
  audience = ["stacks-barretto-StacksyStacks-eks-deferred-stack"]
}

deployment "development" {
  inputs = {
    cluster_name        = "stacks-demo"
    kubernetes_version  = "1.30"
    region              = "us-east-1"
    role_arn            = "arn:aws:iam::418295693524:role/stacks-barretto-StacksyStacks-eks-deferred-stack"
    identity_token      = identity_token.aws.jwt
    default_tags        = { stacks-preview-example = "eks-deferred-stack" }
  }
}
