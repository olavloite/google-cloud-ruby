# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!

require "helper"

require "gapic/grpc/service_stub"

require "google/cloud/recommendationengine/v1beta1/catalog_service_pb"
require "google/cloud/recommendationengine/v1beta1/catalog_service_services_pb"
require "google/cloud/recommendation_engine/v1beta1/catalog_service"

class ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::ClientTest < Minitest::Test
  class ClientStub
    attr_accessor :call_rpc_count, :requests

    def initialize response, operation, &block
      @response = response
      @operation = operation
      @block = block
      @call_rpc_count = 0
      @requests = []
    end

    def call_rpc *args, **kwargs
      @call_rpc_count += 1

      @requests << @block&.call(*args, **kwargs)

      yield @response, @operation if block_given?

      @response
    end
  end

  def test_create_catalog_item
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    catalog_item = {}

    create_catalog_item_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :create_catalog_item, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::CreateCatalogItemRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem), request["catalog_item"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, create_catalog_item_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.create_catalog_item({ parent: parent, catalog_item: catalog_item }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.create_catalog_item parent: parent, catalog_item: catalog_item do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.create_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::CreateCatalogItemRequest.new(parent: parent, catalog_item: catalog_item) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.create_catalog_item({ parent: parent, catalog_item: catalog_item }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.create_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::CreateCatalogItemRequest.new(parent: parent, catalog_item: catalog_item), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, create_catalog_item_client_stub.call_rpc_count
    end
  end

  def test_get_catalog_item
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    get_catalog_item_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :get_catalog_item, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::GetCatalogItemRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, get_catalog_item_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.get_catalog_item({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.get_catalog_item name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.get_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::GetCatalogItemRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.get_catalog_item({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.get_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::GetCatalogItemRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, get_catalog_item_client_stub.call_rpc_count
    end
  end

  def test_list_catalog_items
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::ListCatalogItemsResponse.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    page_size = 42
    page_token = "hello world"
    filter = "hello world"

    list_catalog_items_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :list_catalog_items, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::ListCatalogItemsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal 42, request["page_size"]
      assert_equal "hello world", request["page_token"]
      assert_equal "hello world", request["filter"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, list_catalog_items_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.list_catalog_items({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.list_catalog_items parent: parent, page_size: page_size, page_token: page_token, filter: filter do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.list_catalog_items ::Google::Cloud::RecommendationEngine::V1beta1::ListCatalogItemsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.list_catalog_items({ parent: parent, page_size: page_size, page_token: page_token, filter: filter }, grpc_options) do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.list_catalog_items ::Google::Cloud::RecommendationEngine::V1beta1::ListCatalogItemsRequest.new(parent: parent, page_size: page_size, page_token: page_token, filter: filter), grpc_options do |response, operation|
        assert_kind_of Gapic::PagedEnumerable, response
        assert_equal grpc_response, response.response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, list_catalog_items_client_stub.call_rpc_count
    end
  end

  def test_update_catalog_item
    # Create GRPC objects.
    grpc_response = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"
    catalog_item = {}
    update_mask = {}

    update_catalog_item_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :update_catalog_item, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::UpdateCatalogItemRequest, request
      assert_equal "hello world", request["name"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecommendationEngine::V1beta1::CatalogItem), request["catalog_item"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Protobuf::FieldMask), request["update_mask"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, update_catalog_item_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.update_catalog_item({ name: name, catalog_item: catalog_item, update_mask: update_mask }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.update_catalog_item name: name, catalog_item: catalog_item, update_mask: update_mask do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.update_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::UpdateCatalogItemRequest.new(name: name, catalog_item: catalog_item, update_mask: update_mask) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.update_catalog_item({ name: name, catalog_item: catalog_item, update_mask: update_mask }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.update_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::UpdateCatalogItemRequest.new(name: name, catalog_item: catalog_item, update_mask: update_mask), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, update_catalog_item_client_stub.call_rpc_count
    end
  end

  def test_delete_catalog_item
    # Create GRPC objects.
    grpc_response = ::Google::Protobuf::Empty.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    name = "hello world"

    delete_catalog_item_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :delete_catalog_item, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::DeleteCatalogItemRequest, request
      assert_equal "hello world", request["name"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, delete_catalog_item_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.delete_catalog_item({ name: name }) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.delete_catalog_item name: name do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.delete_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::DeleteCatalogItemRequest.new(name: name) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.delete_catalog_item({ name: name }, grpc_options) do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.delete_catalog_item ::Google::Cloud::RecommendationEngine::V1beta1::DeleteCatalogItemRequest.new(name: name), grpc_options do |response, operation|
        assert_equal grpc_response, response
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, delete_catalog_item_client_stub.call_rpc_count
    end
  end

  def test_import_catalog_items
    # Create GRPC objects.
    grpc_response = ::Google::Longrunning::Operation.new
    grpc_operation = GRPC::ActiveCall::Operation.new nil
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure
    grpc_options = {}

    # Create request parameters for a unary method.
    parent = "hello world"
    request_id = "hello world"
    input_config = {}
    errors_config = {}

    import_catalog_items_client_stub = ClientStub.new grpc_response, grpc_operation do |name, request, options:|
      assert_equal :import_catalog_items, name
      assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::ImportCatalogItemsRequest, request
      assert_equal "hello world", request["parent"]
      assert_equal "hello world", request["request_id"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecommendationEngine::V1beta1::InputConfig), request["input_config"]
      assert_equal Gapic::Protobuf.coerce({}, to: ::Google::Cloud::RecommendationEngine::V1beta1::ImportErrorsConfig), request["errors_config"]
      refute_nil options
    end

    Gapic::ServiceStub.stub :new, import_catalog_items_client_stub do
      # Create client
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end

      # Use hash object
      client.import_catalog_items({ parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config }) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use named arguments
      client.import_catalog_items parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object
      client.import_catalog_items ::Google::Cloud::RecommendationEngine::V1beta1::ImportCatalogItemsRequest.new(parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use hash object with options
      client.import_catalog_items({ parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config }, grpc_options) do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Use protobuf object with options
      client.import_catalog_items ::Google::Cloud::RecommendationEngine::V1beta1::ImportCatalogItemsRequest.new(parent: parent, request_id: request_id, input_config: input_config, errors_config: errors_config), grpc_options do |response, operation|
        assert_kind_of Gapic::Operation, response
        assert_equal grpc_response, response.grpc_op
        assert_equal grpc_operation, operation
      end

      # Verify method calls
      assert_equal 5, import_catalog_items_client_stub.call_rpc_count
    end
  end

  def test_configure
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = block_config = config = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    config = client.configure do |c|
      block_config = c
    end

    assert_same block_config, config
    assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client::Configuration, config
  end

  def test_operations_client
    grpc_channel = GRPC::Core::Channel.new "localhost:8888", nil, :this_channel_is_insecure

    client = nil
    Gapic::ServiceStub.stub :new, nil do
      client = ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Client.new do |config|
        config.credentials = grpc_channel
      end
    end

    assert_kind_of ::Google::Cloud::RecommendationEngine::V1beta1::CatalogService::Operations, client.operations_client
  end
end
