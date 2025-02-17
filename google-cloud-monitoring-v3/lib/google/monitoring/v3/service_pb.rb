# Generated by the protocol buffer compiler.  DO NOT EDIT!
# source: google/monitoring/v3/service.proto

require 'google/protobuf'

require 'google/api/resource_pb'
require 'google/protobuf/duration_pb'
require 'google/protobuf/timestamp_pb'
require 'google/type/calendar_period_pb'
Google::Protobuf::DescriptorPool.generated_pool.build do
  add_file("google/monitoring/v3/service.proto", :syntax => :proto3) do
    add_message "google.monitoring.v3.Service" do
      optional :name, :string, 1
      optional :display_name, :string, 2
      optional :telemetry, :message, 13, "google.monitoring.v3.Service.Telemetry"
      map :user_labels, :string, :string, 14
      oneof :identifier do
        optional :custom, :message, 6, "google.monitoring.v3.Service.Custom"
        optional :app_engine, :message, 7, "google.monitoring.v3.Service.AppEngine"
        optional :cloud_endpoints, :message, 8, "google.monitoring.v3.Service.CloudEndpoints"
        optional :cluster_istio, :message, 9, "google.monitoring.v3.Service.ClusterIstio"
        optional :mesh_istio, :message, 10, "google.monitoring.v3.Service.MeshIstio"
        optional :istio_canonical_service, :message, 11, "google.monitoring.v3.Service.IstioCanonicalService"
      end
    end
    add_message "google.monitoring.v3.Service.Custom" do
    end
    add_message "google.monitoring.v3.Service.AppEngine" do
      optional :module_id, :string, 1
    end
    add_message "google.monitoring.v3.Service.CloudEndpoints" do
      optional :service, :string, 1
    end
    add_message "google.monitoring.v3.Service.ClusterIstio" do
      optional :location, :string, 1
      optional :cluster_name, :string, 2
      optional :service_namespace, :string, 3
      optional :service_name, :string, 4
    end
    add_message "google.monitoring.v3.Service.MeshIstio" do
      optional :mesh_uid, :string, 1
      optional :service_namespace, :string, 3
      optional :service_name, :string, 4
    end
    add_message "google.monitoring.v3.Service.IstioCanonicalService" do
      optional :mesh_uid, :string, 1
      optional :canonical_service_namespace, :string, 3
      optional :canonical_service, :string, 4
    end
    add_message "google.monitoring.v3.Service.Telemetry" do
      optional :resource_name, :string, 1
    end
    add_message "google.monitoring.v3.ServiceLevelObjective" do
      optional :name, :string, 1
      optional :display_name, :string, 11
      optional :service_level_indicator, :message, 3, "google.monitoring.v3.ServiceLevelIndicator"
      optional :goal, :double, 4
      map :user_labels, :string, :string, 12
      oneof :period do
        optional :rolling_period, :message, 5, "google.protobuf.Duration"
        optional :calendar_period, :enum, 6, "google.type.CalendarPeriod"
      end
    end
    add_enum "google.monitoring.v3.ServiceLevelObjective.View" do
      value :VIEW_UNSPECIFIED, 0
      value :FULL, 2
      value :EXPLICIT, 1
    end
    add_message "google.monitoring.v3.ServiceLevelIndicator" do
      oneof :type do
        optional :basic_sli, :message, 4, "google.monitoring.v3.BasicSli"
        optional :request_based, :message, 1, "google.monitoring.v3.RequestBasedSli"
        optional :windows_based, :message, 2, "google.monitoring.v3.WindowsBasedSli"
      end
    end
    add_message "google.monitoring.v3.BasicSli" do
      repeated :method, :string, 7
      repeated :location, :string, 8
      repeated :version, :string, 9
      oneof :sli_criteria do
        optional :availability, :message, 2, "google.monitoring.v3.BasicSli.AvailabilityCriteria"
        optional :latency, :message, 3, "google.monitoring.v3.BasicSli.LatencyCriteria"
      end
    end
    add_message "google.monitoring.v3.BasicSli.AvailabilityCriteria" do
    end
    add_message "google.monitoring.v3.BasicSli.LatencyCriteria" do
      optional :threshold, :message, 3, "google.protobuf.Duration"
    end
    add_message "google.monitoring.v3.Range" do
      optional :min, :double, 1
      optional :max, :double, 2
    end
    add_message "google.monitoring.v3.RequestBasedSli" do
      oneof :method do
        optional :good_total_ratio, :message, 1, "google.monitoring.v3.TimeSeriesRatio"
        optional :distribution_cut, :message, 3, "google.monitoring.v3.DistributionCut"
      end
    end
    add_message "google.monitoring.v3.TimeSeriesRatio" do
      optional :good_service_filter, :string, 4
      optional :bad_service_filter, :string, 5
      optional :total_service_filter, :string, 6
    end
    add_message "google.monitoring.v3.DistributionCut" do
      optional :distribution_filter, :string, 4
      optional :range, :message, 5, "google.monitoring.v3.Range"
    end
    add_message "google.monitoring.v3.WindowsBasedSli" do
      optional :window_period, :message, 4, "google.protobuf.Duration"
      oneof :window_criterion do
        optional :good_bad_metric_filter, :string, 5
        optional :good_total_ratio_threshold, :message, 2, "google.monitoring.v3.WindowsBasedSli.PerformanceThreshold"
        optional :metric_mean_in_range, :message, 6, "google.monitoring.v3.WindowsBasedSli.MetricRange"
        optional :metric_sum_in_range, :message, 7, "google.monitoring.v3.WindowsBasedSli.MetricRange"
      end
    end
    add_message "google.monitoring.v3.WindowsBasedSli.PerformanceThreshold" do
      optional :threshold, :double, 2
      oneof :type do
        optional :performance, :message, 1, "google.monitoring.v3.RequestBasedSli"
        optional :basic_sli_performance, :message, 3, "google.monitoring.v3.BasicSli"
      end
    end
    add_message "google.monitoring.v3.WindowsBasedSli.MetricRange" do
      optional :time_series, :string, 1
      optional :range, :message, 4, "google.monitoring.v3.Range"
    end
  end
end

module Google
  module Cloud
    module Monitoring
      module V3
        Service = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service").msgclass
        Service::Custom = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.Custom").msgclass
        Service::AppEngine = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.AppEngine").msgclass
        Service::CloudEndpoints = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.CloudEndpoints").msgclass
        Service::ClusterIstio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.ClusterIstio").msgclass
        Service::MeshIstio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.MeshIstio").msgclass
        Service::IstioCanonicalService = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.IstioCanonicalService").msgclass
        Service::Telemetry = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Service.Telemetry").msgclass
        ServiceLevelObjective = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ServiceLevelObjective").msgclass
        ServiceLevelObjective::View = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ServiceLevelObjective.View").enummodule
        ServiceLevelIndicator = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.ServiceLevelIndicator").msgclass
        BasicSli = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.BasicSli").msgclass
        BasicSli::AvailabilityCriteria = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.BasicSli.AvailabilityCriteria").msgclass
        BasicSli::LatencyCriteria = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.BasicSli.LatencyCriteria").msgclass
        Range = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.Range").msgclass
        RequestBasedSli = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.RequestBasedSli").msgclass
        TimeSeriesRatio = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.TimeSeriesRatio").msgclass
        DistributionCut = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.DistributionCut").msgclass
        WindowsBasedSli = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.WindowsBasedSli").msgclass
        WindowsBasedSli::PerformanceThreshold = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.WindowsBasedSli.PerformanceThreshold").msgclass
        WindowsBasedSli::MetricRange = ::Google::Protobuf::DescriptorPool.generated_pool.lookup("google.monitoring.v3.WindowsBasedSli.MetricRange").msgclass
      end
    end
  end
end
