# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/cloud/dialogflow/v2/session.proto

require 'google/protobuf'

require 'google/api/annotations_pb'
require 'google/api/client_pb'
require 'google/api/field_behavior_pb'
require 'google/api/resource_pb'
require 'google/cloud/dialogflow/v2/audio_config_pb'
require 'google/cloud/dialogflow/v2/context_pb'
require 'google/cloud/dialogflow/v2/intent_pb'
require 'google/cloud/dialogflow/v2/session_entity_type_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/field_mask_pb'
require 'google/protobuf/struct_pb'
require 'google/rpc/status_pb'
require 'google/type/latlng_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/cloud/dialogflow/v2/session.proto", :syntax => :proto3) do
    add_message "google.cloud.dialogflow.v2.DetectIntentRequest" do
      optional :session, :string, 1
      optional :query_params, :message, 2, "google.cloud.dialogflow.v2.QueryParameters"
      optional :query_input, :message, 3, "google.cloud.dialogflow.v2.QueryInput"
      optional :output_audio_config, :message, 4, "google.cloud.dialogflow.v2.OutputAudioConfig"
      optional :output_audio_config_mask, :message, 7, "google.protobuf.FieldMask"
      optional :input_audio, :bytes, 5
    end
    add_message "google.cloud.dialogflow.v2.DetectIntentResponse" do
      optional :response_id, :string, 1
      optional :query_result, :message, 2, "google.cloud.dialogflow.v2.QueryResult"
      optional :webhook_status, :message, 3, "google.rpc.Status"
      optional :output_audio, :bytes, 4
      optional :output_audio_config, :message, 6, "google.cloud.dialogflow.v2.OutputAudioConfig"
    end
    add_message "google.cloud.dialogflow.v2.QueryParameters" do
      optional :time_zone, :string, 1
      optional :geo_location, :message, 2, "google.type.LatLng"
      repeated :contexts, :message, 3, "google.cloud.dialogflow.v2.Context"
      optional :reset_contexts, :bool, 4
      repeated :session_entity_types, :message, 5, "google.cloud.dialogflow.v2.SessionEntityType"
      optional :payload, :message, 6, "google.protobuf.Struct"
      optional :sentiment_analysis_request_config, :message, 10, "google.cloud.dialogflow.v2.SentimentAnalysisRequestConfig"
      map :webhook_headers, :string, :string, 14
    end
    add_message "google.cloud.dialogflow.v2.QueryInput" do
      oneof :input do
        optional :audio_config, :message, 1, "google.cloud.dialogflow.v2.InputAudioConfig"
        optional :text, :message, 2, "google.cloud.dialogflow.v2.TextInput"
        optional :event, :message, 3, "google.cloud.dialogflow.v2.EventInput"
      end
    end
    add_message "google.cloud.dialogflow.v2.QueryResult" do
      optional :query_text, :string, 1
      optional :language_code, :string, 15
      optional :speech_recognition_confidence, :float, 2
      optional :action, :string, 3
      optional :parameters, :message, 4, "google.protobuf.Struct"
      optional :all_required_params_present, :bool, 5
      optional :cancels_slot_filling, :bool, 21
      optional :fulfillment_text, :string, 6
      repeated :fulfillment_messages, :message, 7, "google.cloud.dialogflow.v2.Intent.Message"
      optional :webhook_source, :string, 8
      optional :webhook_payload, :message, 9, "google.protobuf.Struct"
      repeated :output_contexts, :message, 10, "google.cloud.dialogflow.v2.Context"
      optional :intent, :message, 11, "google.cloud.dialogflow.v2.Intent"
      optional :intent_detection_confidence, :float, 12
      optional :diagnostic_info, :message, 14, "google.protobuf.Struct"
      optional :sentiment_analysis_result, :message, 17, "google.cloud.dialogflow.v2.SentimentAnalysisResult"
    end
    add_message "google.cloud.dialogflow.v2.StreamingDetectIntentRequest" do
      optional :session, :string, 1
      optional :query_params, :message, 2, "google.cloud.dialogflow.v2.QueryParameters"
      optional :query_input, :message, 3, "google.cloud.dialogflow.v2.QueryInput"
      optional :single_utterance, :bool, 4
      optional :output_audio_config, :message, 5, "google.cloud.dialogflow.v2.OutputAudioConfig"
      optional :output_audio_config_mask, :message, 7, "google.protobuf.FieldMask"
      optional :input_audio, :bytes, 6
    end
    add_message "google.cloud.dialogflow.v2.StreamingDetectIntentResponse" do
      optional :response_id, :string, 1
      optional :recognition_result, :message, 2, "google.cloud.dialogflow.v2.StreamingRecognitionResult"
      optional :query_result, :message, 3, "google.cloud.dialogflow.v2.QueryResult"
      optional :webhook_status, :message, 4, "google.rpc.Status"
      optional :output_audio, :bytes, 5
      optional :output_audio_config, :message, 6, "google.cloud.dialogflow.v2.OutputAudioConfig"
    end
    add_message "google.cloud.dialogflow.v2.StreamingRecognitionResult" do
      optional :message_type, :enum, 1, "google.cloud.dialogflow.v2.StreamingRecognitionResult.MessageType"
      optional :transcript, :string, 2
      optional :is_final, :bool, 3
      optional :confidence, :float, 4
      repeated :speech_word_info, :message, 7, "google.cloud.dialogflow.v2.SpeechWordInfo"
      optional :speech_end_offset, :message, 8, "google.protobuf.Duration"
    end
    add_enum "google.cloud.dialogflow.v2.StreamingRecognitionResult.MessageType" do
      value :MESSAGE_TYPE_UNSPECIFIED, 0
      value :TRANSCRIPT, 1
      value :END_OF_SINGLE_UTTERANCE, 2
    end
    add_message "google.cloud.dialogflow.v2.TextInput" do
      optional :text, :string, 1
      optional :language_code, :string, 2
    end
    add_message "google.cloud.dialogflow.v2.EventInput" do
      optional :name, :string, 1
      optional :parameters, :message, 2, "google.protobuf.Struct"
      optional :language_code, :string, 3
    end
    add_message "google.cloud.dialogflow.v2.SentimentAnalysisRequestConfig" do
      optional :analyze_query_text_sentiment, :bool, 1
    end
    add_message "google.cloud.dialogflow.v2.SentimentAnalysisResult" do
      optional :query_text_sentiment, :message, 1, "google.cloud.dialogflow.v2.Sentiment"
    end
    add_message "google.cloud.dialogflow.v2.Sentiment" do
      optional :score, :float, 1
      optional :magnitude, :float, 2
    end
  end
end

module Google
  module Cloud
    module Dialogflow
      module V2
        DetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DetectIntentRequest").msgclass
        DetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.DetectIntentResponse").msgclass
        QueryParameters = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryParameters").msgclass
        QueryInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryInput").msgclass
        QueryResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.QueryResult").msgclass
        StreamingDetectIntentRequest = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingDetectIntentRequest").msgclass
        StreamingDetectIntentResponse = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingDetectIntentResponse").msgclass
        StreamingRecognitionResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingRecognitionResult").msgclass
        StreamingRecognitionResult::MessageType = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.StreamingRecognitionResult.MessageType").enummodule
        TextInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.TextInput").msgclass
        EventInput = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.EventInput").msgclass
        SentimentAnalysisRequestConfig = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SentimentAnalysisRequestConfig").msgclass
        SentimentAnalysisResult = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.SentimentAnalysisResult").msgclass
        Sentiment = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.cloud.dialogflow.v2.Sentiment").msgclass
      end
    end
  end
end
