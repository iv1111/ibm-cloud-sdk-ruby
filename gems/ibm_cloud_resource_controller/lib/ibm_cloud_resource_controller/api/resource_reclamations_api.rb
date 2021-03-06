=begin
#IBM Cloud Resource Controller API

#Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are provisioned globally in an account scope. Supports asynchronous provisioning of resources. Enables consumption of a global resource through a Cloud Foundry space in any region.

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'cgi'

module IbmCloudResourceController
  class ResourceReclamationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get a list of all reclamations
    # Get a list of all reclamations.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id An alpha-numeric value identifying the account ID.
    # @option opts [String] :resource_instance_id The short ID of the resource instance.
    # @return [ReclamationsList]
    def list_reclamations(opts = {})
      data, _status_code, _headers = list_reclamations_with_http_info(opts)
      data
    end

    # Get a list of all reclamations
    # Get a list of all reclamations.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account_id An alpha-numeric value identifying the account ID.
    # @option opts [String] :resource_instance_id The short ID of the resource instance.
    # @return [Array<(ReclamationsList, Integer, Hash)>] ReclamationsList data, response status code and response headers
    def list_reclamations_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceReclamationsApi.list_reclamations ...'
      end
      # resource path
      local_var_path = '/v1/reclamations'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'account_id'] = opts[:'account_id'] if !opts[:'account_id'].nil?
      query_params[:'resource_instance_id'] = opts[:'resource_instance_id'] if !opts[:'resource_instance_id'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ReclamationsList' 

      # auth_names
      auth_names = opts[:auth_names] || ['IAM']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:GET, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceReclamationsApi#list_reclamations\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Perform a reclamation action
    # Reclaim (provisionally delete) a resource so that it can no longer be used, or restore a resource so that it's usable again.
    # @param id [String] The ID associated with the reclamation.
    # @param action_name [String] The reclamation action name. Specify &#x60;reclaim&#x60; to delete a resource, or &#x60;restore&#x60; to restore a resource.
    # @param [Hash] opts the optional parameters
    # @option opts [ReclamationActionsPost] :reclamation_actions_post 
    # @return [Reclamation]
    def run_reclamation_action(id, action_name, opts = {})
      data, _status_code, _headers = run_reclamation_action_with_http_info(id, action_name, opts)
      data
    end

    # Perform a reclamation action
    # Reclaim (provisionally delete) a resource so that it can no longer be used, or restore a resource so that it&#39;s usable again.
    # @param id [String] The ID associated with the reclamation.
    # @param action_name [String] The reclamation action name. Specify &#x60;reclaim&#x60; to delete a resource, or &#x60;restore&#x60; to restore a resource.
    # @param [Hash] opts the optional parameters
    # @option opts [ReclamationActionsPost] :reclamation_actions_post 
    # @return [Array<(Reclamation, Integer, Hash)>] Reclamation data, response status code and response headers
    def run_reclamation_action_with_http_info(id, action_name, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceReclamationsApi.run_reclamation_action ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceReclamationsApi.run_reclamation_action"
      end
      # verify the required parameter 'action_name' is set
      if @api_client.config.client_side_validation && action_name.nil?
        fail ArgumentError, "Missing the required parameter 'action_name' when calling ResourceReclamationsApi.run_reclamation_action"
      end
      # resource path
      local_var_path = '/v1/reclamations/{id}/actions/{action_name}'.sub('{' + 'id' + '}', CGI.escape(id.to_s)).sub('{' + 'action_name' + '}', CGI.escape(action_name.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(opts[:'reclamation_actions_post']) 

      # return_type
      return_type = opts[:return_type] || 'Reclamation' 

      # auth_names
      auth_names = opts[:auth_names] || ['IAM']

      new_options = opts.merge(
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type
      )

      data, status_code, headers = @api_client.call_api(:POST, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceReclamationsApi#run_reclamation_action\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
