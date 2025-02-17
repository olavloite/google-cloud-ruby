# Generated by the protocol buffer compiler.  DO NOT EDIT!
# Source: google/cloud/dialogflow/cx/v3/test_case.proto for package 'Google.Cloud.Dialogflow.CX.V3'
# Original file comments:
# Copyright 2021 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

require 'grpc'
require 'google/cloud/dialogflow/cx/v3/test_case_pb'

module Google
  module Cloud
    module Dialogflow
      module CX
        module V3
          module TestCases
            # Service for managing [Test Cases][google.cloud.dialogflow.cx.v3.TestCase] and
            # [Test Case Results][google.cloud.dialogflow.cx.v3.TestCaseResult].
            class Service

              include GRPC::GenericService

              self.marshal_class_method = :encode
              self.unmarshal_class_method = :decode
              self.service_name = 'google.cloud.dialogflow.cx.v3.TestCases'

              # Fetches a list of test cases for a given agent.
              rpc :ListTestCases, ::Google::Cloud::Dialogflow::CX::V3::ListTestCasesRequest, ::Google::Cloud::Dialogflow::CX::V3::ListTestCasesResponse
              # Batch deletes test cases.
              rpc :BatchDeleteTestCases, ::Google::Cloud::Dialogflow::CX::V3::BatchDeleteTestCasesRequest, ::Google::Protobuf::Empty
              # Gets a test case.
              rpc :GetTestCase, ::Google::Cloud::Dialogflow::CX::V3::GetTestCaseRequest, ::Google::Cloud::Dialogflow::CX::V3::TestCase
              # Creates a test case for the given agent.
              rpc :CreateTestCase, ::Google::Cloud::Dialogflow::CX::V3::CreateTestCaseRequest, ::Google::Cloud::Dialogflow::CX::V3::TestCase
              # Updates the specified test case.
              rpc :UpdateTestCase, ::Google::Cloud::Dialogflow::CX::V3::UpdateTestCaseRequest, ::Google::Cloud::Dialogflow::CX::V3::TestCase
              # Kicks off a test case run.
              # This method is a [long-running
              # operation](https://cloud.google.com/dialogflow/cx/docs/how/long-running-operation).
              # The returned `Operation` type has the following method-specific fields:
              #
              # - `metadata`: [RunTestCaseMetadata][google.cloud.dialogflow.cx.v3.RunTestCaseMetadata]
              # - `response`: [RunTestCaseResponse][google.cloud.dialogflow.cx.v3.RunTestCaseResponse]
              rpc :RunTestCase, ::Google::Cloud::Dialogflow::CX::V3::RunTestCaseRequest, ::Google::Longrunning::Operation
              # Kicks off a batch run of test cases.
              rpc :BatchRunTestCases, ::Google::Cloud::Dialogflow::CX::V3::BatchRunTestCasesRequest, ::Google::Longrunning::Operation
              # Calculates the test coverage for an agent.
              rpc :CalculateCoverage, ::Google::Cloud::Dialogflow::CX::V3::CalculateCoverageRequest, ::Google::Cloud::Dialogflow::CX::V3::CalculateCoverageResponse
              # Imports the test cases from a Cloud Storage bucket or a local file. It
              # always creates new test cases and won't overwite any existing ones. The
              # provided ID in the imported test case is neglected.
              rpc :ImportTestCases, ::Google::Cloud::Dialogflow::CX::V3::ImportTestCasesRequest, ::Google::Longrunning::Operation
              # Exports the test cases under the agent to a Cloud Storage bucket or a local
              # file. Filter can be applied to export a subset of test cases.
              rpc :ExportTestCases, ::Google::Cloud::Dialogflow::CX::V3::ExportTestCasesRequest, ::Google::Longrunning::Operation
              # Fetches a list of results for a given test case.
              rpc :ListTestCaseResults, ::Google::Cloud::Dialogflow::CX::V3::ListTestCaseResultsRequest, ::Google::Cloud::Dialogflow::CX::V3::ListTestCaseResultsResponse
              # Gets a test case result.
              rpc :GetTestCaseResult, ::Google::Cloud::Dialogflow::CX::V3::GetTestCaseResultRequest, ::Google::Cloud::Dialogflow::CX::V3::TestCaseResult
            end

            Stub = Service.rpc_stub_class
          end
        end
      end
    end
  end
end
