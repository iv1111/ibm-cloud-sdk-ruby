=begin
#IBM Cloud Resource Controller API

#Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are provisioned globally in an account scope. Supports asynchronous provisioning of resources. Enables consumption of a global resource through a Cloud Foundry space in any region.

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

# Common files
require 'ibm_cloud_resource_controller/api_client'
require 'ibm_cloud_resource_controller/api_error'
require 'ibm_cloud_resource_controller/version'
require 'ibm_cloud_resource_controller/configuration'

# Models
require 'ibm_cloud_resource_controller/models/credentials'
require 'ibm_cloud_resource_controller/models/error_report'
require 'ibm_cloud_resource_controller/models/plan_history_item'
require 'ibm_cloud_resource_controller/models/reclamation'
require 'ibm_cloud_resource_controller/models/reclamation_actions_post'
require 'ibm_cloud_resource_controller/models/reclamations_list'
require 'ibm_cloud_resource_controller/models/resource_alias'
require 'ibm_cloud_resource_controller/models/resource_alias_patch'
require 'ibm_cloud_resource_controller/models/resource_alias_post'
require 'ibm_cloud_resource_controller/models/resource_aliases_list'
require 'ibm_cloud_resource_controller/models/resource_binding'
require 'ibm_cloud_resource_controller/models/resource_binding_patch'
require 'ibm_cloud_resource_controller/models/resource_binding_post'
require 'ibm_cloud_resource_controller/models/resource_binding_post_parameters'
require 'ibm_cloud_resource_controller/models/resource_bindings_list'
require 'ibm_cloud_resource_controller/models/resource_instance'
require 'ibm_cloud_resource_controller/models/resource_instance_patch'
require 'ibm_cloud_resource_controller/models/resource_instance_post'
require 'ibm_cloud_resource_controller/models/resource_instances_list'
require 'ibm_cloud_resource_controller/models/resource_key'
require 'ibm_cloud_resource_controller/models/resource_key_patch'
require 'ibm_cloud_resource_controller/models/resource_key_post'
require 'ibm_cloud_resource_controller/models/resource_keys_list'

# APIs
require 'ibm_cloud_resource_controller/api/resource_aliases_api'
require 'ibm_cloud_resource_controller/api/resource_bindings_api'
require 'ibm_cloud_resource_controller/api/resource_instances_api'
require 'ibm_cloud_resource_controller/api/resource_keys_api'
require 'ibm_cloud_resource_controller/api/resource_reclamations_api'

module IbmCloudResourceController
  class << self
    # Customize default settings for the SDK using block.
    #   IbmCloudResourceController.configure do |config|
    #     config.username = "xxx"
    #     config.password = "xxx"
    #   end
    # If no block given, return the default Configuration object.
    def configure
      if block_given?
        yield(Configuration.default)
      else
        Configuration.default
      end
    end
  end
end
