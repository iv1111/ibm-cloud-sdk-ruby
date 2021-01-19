=begin
#IBM Cloud Resource Controller API

#Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are provisioned globally in an account scope. Supports asynchronous provisioning of resources. Enables consumption of a global resource through a Cloud Foundry space in any region.

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'cgi'

module IbmCloudResourceController
  class ResourceInstancesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create (provision) a new resource instance
    # Provision a new resource in the specified location for the selected plan.
    # @param resource_instance_post [ResourceInstancePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_lock Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like aliases, bindings or keys. False by default. (default to 'false')
    # @return [ResourceInstance]
    def create_resource_instance(resource_instance_post, opts = {})
      data, _status_code, _headers = create_resource_instance_with_http_info(resource_instance_post, opts)
      data
    end

    # Create (provision) a new resource instance
    # Provision a new resource in the specified location for the selected plan.
    # @param resource_instance_post [ResourceInstancePost] 
    # @param [Hash] opts the optional parameters
    # @option opts [String] :entity_lock Indicates if the resource instance is locked for further update or delete operations. It does not affect actions performed on child resources like aliases, bindings or keys. False by default.
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def create_resource_instance_with_http_info(resource_instance_post, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.create_resource_instance ...'
      end
      # verify the required parameter 'resource_instance_post' is set
      if @api_client.config.client_side_validation && resource_instance_post.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_post' when calling ResourceInstancesApi.create_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/json'])
      header_params[:'Entity-Lock'] = opts[:'entity_lock'] if !opts[:'entity_lock'].nil?

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(resource_instance_post) 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstance' 

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
        @api_client.config.logger.debug "API called: ResourceInstancesApi#create_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Delete a resource instance
    # Delete a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [nil]
    def delete_resource_instance(id, opts = {})
      delete_resource_instance_with_http_info(id, opts)
      nil
    end

    # Delete a resource instance
    # Delete a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(nil, Integer, Hash)>] nil, response status code and response headers
    def delete_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.delete_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.delete_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#delete_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a resource instance
    # Retrieve a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def get_resource_instance(id, opts = {})
      data, _status_code, _headers = get_resource_instance_with_http_info(id, opts)
      data
    end

    # Get a resource instance
    # Retrieve a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def get_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.get_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.get_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstance' 

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
        @api_client.config.logger.debug "API called: ResourceInstancesApi#get_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Get a list of all resource instances
    # Get a list of all resource instances.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :guid When you provision a new resource in the specified location for the selected plan, a GUID (globally unique identifier) is created. This is a unique internal GUID managed by Resource controller that corresponds to the instance.
    # @option opts [String] :name The human-readable name of the instance.
    # @option opts [String] :resource_group_id Short ID of a resource group.
    # @option opts [String] :resource_id The unique ID of the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :resource_plan_id The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :type The type of the instance. For example, &#x60;service_instance&#x60;.
    # @option opts [String] :sub_type The sub-type of instance, e.g. &#x60;cfaas&#x60;.
    # @option opts [String] :limit Limit on how many items should be returned.
    # @option opts [String] :updated_from Start date inclusive filter.
    # @option opts [String] :updated_to End date inclusive filter.
    # @return [ResourceInstancesList]
    def list_resource_instances(opts = {})
      data, _status_code, _headers = list_resource_instances_with_http_info(opts)
      data
    end

    # Get a list of all resource instances
    # Get a list of all resource instances.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :guid When you provision a new resource in the specified location for the selected plan, a GUID (globally unique identifier) is created. This is a unique internal GUID managed by Resource controller that corresponds to the instance.
    # @option opts [String] :name The human-readable name of the instance.
    # @option opts [String] :resource_group_id Short ID of a resource group.
    # @option opts [String] :resource_id The unique ID of the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :resource_plan_id The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    # @option opts [String] :type The type of the instance. For example, &#x60;service_instance&#x60;.
    # @option opts [String] :sub_type The sub-type of instance, e.g. &#x60;cfaas&#x60;.
    # @option opts [String] :limit Limit on how many items should be returned.
    # @option opts [String] :updated_from Start date inclusive filter.
    # @option opts [String] :updated_to End date inclusive filter.
    # @return [Array<(ResourceInstancesList, Integer, Hash)>] ResourceInstancesList data, response status code and response headers
    def list_resource_instances_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.list_resource_instances ...'
      end
      # resource path
      local_var_path = '/v2/resource_instances'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'guid'] = opts[:'guid'] if !opts[:'guid'].nil?
      query_params[:'name'] = opts[:'name'] if !opts[:'name'].nil?
      query_params[:'resource_group_id'] = opts[:'resource_group_id'] if !opts[:'resource_group_id'].nil?
      query_params[:'resource_id'] = opts[:'resource_id'] if !opts[:'resource_id'].nil?
      query_params[:'resource_plan_id'] = opts[:'resource_plan_id'] if !opts[:'resource_plan_id'].nil?
      query_params[:'type'] = opts[:'type'] if !opts[:'type'].nil?
      query_params[:'sub_type'] = opts[:'sub_type'] if !opts[:'sub_type'].nil?
      query_params[:'limit'] = opts[:'limit'] if !opts[:'limit'].nil?
      query_params[:'updated_from'] = opts[:'updated_from'] if !opts[:'updated_from'].nil?
      query_params[:'updated_to'] = opts[:'updated_to'] if !opts[:'updated_to'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstancesList' 

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
        @api_client.config.logger.debug "API called: ResourceInstancesApi#list_resource_instances\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Lock a resource instance
    # Locks a resource instance by ID. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like aliases, bindings or keys.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def lock_resource_instance(id, opts = {})
      data, _status_code, _headers = lock_resource_instance_with_http_info(id, opts)
      data
    end

    # Lock a resource instance
    # Locks a resource instance by ID. A locked instance can not be updated or deleted. It does not affect actions performed on child resources like aliases, bindings or keys.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def lock_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.lock_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.lock_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/lock'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstance' 

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
        @api_client.config.logger.debug "API called: ResourceInstancesApi#lock_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Unlock a resource instance
    # Unlocks a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def unlock_resource_instance(id, opts = {})
      data, _status_code, _headers = unlock_resource_instance_with_http_info(id, opts)
      data
    end

    # Unlock a resource instance
    # Unlocks a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def unlock_resource_instance_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.unlock_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.unlock_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}/lock'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstance' 

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

      data, status_code, headers = @api_client.call_api(:DELETE, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#unlock_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Update a resource instance
    # Update a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param resource_instance_patch [ResourceInstancePatch] 
    # @param [Hash] opts the optional parameters
    # @return [ResourceInstance]
    def update_resource_instance(id, resource_instance_patch, opts = {})
      data, _status_code, _headers = update_resource_instance_with_http_info(id, resource_instance_patch, opts)
      data
    end

    # Update a resource instance
    # Update a resource instance by ID.
    # @param id [String] The short or long ID of the instance.
    # @param resource_instance_patch [ResourceInstancePatch] 
    # @param [Hash] opts the optional parameters
    # @return [Array<(ResourceInstance, Integer, Hash)>] ResourceInstance data, response status code and response headers
    def update_resource_instance_with_http_info(id, resource_instance_patch, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ResourceInstancesApi.update_resource_instance ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling ResourceInstancesApi.update_resource_instance"
      end
      # verify the required parameter 'resource_instance_patch' is set
      if @api_client.config.client_side_validation && resource_instance_patch.nil?
        fail ArgumentError, "Missing the required parameter 'resource_instance_patch' when calling ResourceInstancesApi.update_resource_instance"
      end
      # resource path
      local_var_path = '/v2/resource_instances/{id}'.sub('{' + 'id' + '}', CGI.escape(id.to_s))

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
      post_body = opts[:body] || @api_client.object_to_http_body(resource_instance_patch) 

      # return_type
      return_type = opts[:return_type] || 'ResourceInstance' 

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

      data, status_code, headers = @api_client.call_api(:PATCH, local_var_path, new_options)
      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ResourceInstancesApi#update_resource_instance\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end