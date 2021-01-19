=begin
#IAM Identity Services API

#The IAM Identity Service API allows for the management of Identities (Service IDs, ApiKeys).

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'cgi'

module IbmCloudIam
  class TokenOperationsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Create an IAM access token for a user or service ID using an API key
    # Creates a non-opaque access token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the api key
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def get_token_api_key(grant_type, apikey, opts = {})
      data, _status_code, _headers = get_token_api_key_with_http_info(grant_type, apikey, opts)
      data
    end

    # Create an IAM access token for a user or service ID using an API key
    # Creates a non-opaque access token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the api key
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_api_key_with_http_info(grant_type, apikey, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenOperationsApi.get_token_api_key ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenOperationsApi.get_token_api_key"
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TokenOperationsApi.get_token_api_key"
      end
      # resource path
      local_var_path = '/identity/token#apikey'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['apikey'] = apikey

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TokenResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: TokenOperationsApi#get_token_api_key\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token and delegated refresh token for a user or service ID
    # Creates a non-opaque access token and a delegated refresh token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the API key.
    # @param response_type [String] Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call.
    # @param receiver_client_ids [String] A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delegated_refresh_token_expiry Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
    # @return [TokenResponse]
    def get_token_api_key_delegated_refresh_token(grant_type, apikey, response_type, receiver_client_ids, opts = {})
      data, _status_code, _headers = get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts)
      data
    end

    # Create an IAM access token and delegated refresh token for a user or service ID
    # Creates a non-opaque access token and a delegated refresh token for an API key.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:apikey&#x60;.
    # @param apikey [String] The value of the API key.
    # @param response_type [String] Either &#39;delegated_refresh_token&#39; to receive a delegated refresh token only, or &#39;cloud_iam delegated_refresh_token&#39; to receive both an IAM access token and a delegated refresh token in one API call.
    # @param receiver_client_ids [String] A comma separated list of one or more client IDs that will be able to consume the delegated refresh token. The service that accepts a delegated refresh token as API parameter must expose its client ID to allow this API call. The receiver of the delegated refresh token will be able to use the refresh token until it expires.
    # @param [Hash] opts the optional parameters
    # @option opts [Integer] :delegated_refresh_token_expiry Expiration in seconds until the delegated refresh token must be consumed by the receiver client IDs. After the expiration, no client ID can consume the delegated refresh token, even if the life time of the refresh token inside is still not expired. The default, if not specified, is 518,400 seconds which corresponds to 6 days.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_api_key_delegated_refresh_token_with_http_info(grant_type, apikey, response_type, receiver_client_ids, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenOperationsApi.get_token_api_key_delegated_refresh_token ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenOperationsApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'apikey' is set
      if @api_client.config.client_side_validation && apikey.nil?
        fail ArgumentError, "Missing the required parameter 'apikey' when calling TokenOperationsApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'response_type' is set
      if @api_client.config.client_side_validation && response_type.nil?
        fail ArgumentError, "Missing the required parameter 'response_type' when calling TokenOperationsApi.get_token_api_key_delegated_refresh_token"
      end
      # verify the required parameter 'receiver_client_ids' is set
      if @api_client.config.client_side_validation && receiver_client_ids.nil?
        fail ArgumentError, "Missing the required parameter 'receiver_client_ids' when calling TokenOperationsApi.get_token_api_key_delegated_refresh_token"
      end
      # resource path
      local_var_path = '/identity/token#apikey-delegated-refresh-token'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['apikey'] = apikey
      form_params['response_type'] = response_type
      form_params['receiver_client_ids'] = receiver_client_ids
      form_params['delegated_refresh_token_expiry'] = opts[:'delegated_refresh_token_expiry'] if !opts[:'delegated_refresh_token_expiry'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TokenResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: TokenOperationsApi#get_token_api_key_delegated_refresh_token\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token based on an authorization policy
    # Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;.
    # @param access_token [String] The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
    # @param desired_iam_id [String] The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.
    # @param [Hash] opts the optional parameters
    # @return [TokenResponse]
    def get_token_iam_authz(grant_type, access_token, desired_iam_id, opts = {})
      data, _status_code, _headers = get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id, opts)
      data
    end

    # Create an IAM access token based on an authorization policy
    # Creates a non-opaque access token, if an appropriate authorization policy is in place. This kind of IAM access token is typically used for access between services.
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;urn:ibm:params:oauth:grant-type:iam-authz&#x60;.
    # @param access_token [String] The IAM access token of the identity that has the appropriate authorization to create an IAM access token for a given resource.
    # @param desired_iam_id [String] The IAM ID of the IAM access token identity that should be created. The desired_iam_id identifies a resource identity. The IAM ID consists of the prefix crn- and the CRN of the target identity, e.g. crn-crn:v1:bluemix:public:cloud-object-storage:global:a/59bcbfa6ea2f006b4ed7094c1a08dcdd:1a0ec336-f391-4091-a6fb-5e084a4c56f4::.
    # @param [Hash] opts the optional parameters
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_iam_authz_with_http_info(grant_type, access_token, desired_iam_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenOperationsApi.get_token_iam_authz ...'
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenOperationsApi.get_token_iam_authz"
      end
      # verify the required parameter 'access_token' is set
      if @api_client.config.client_side_validation && access_token.nil?
        fail ArgumentError, "Missing the required parameter 'access_token' when calling TokenOperationsApi.get_token_iam_authz"
      end
      # verify the required parameter 'desired_iam_id' is set
      if @api_client.config.client_side_validation && desired_iam_id.nil?
        fail ArgumentError, "Missing the required parameter 'desired_iam_id' when calling TokenOperationsApi.get_token_iam_authz"
      end
      # resource path
      local_var_path = '/identity/token#iam-authz'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['access_token'] = access_token
      form_params['desired_iam_id'] = desired_iam_id

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TokenResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: TokenOperationsApi#get_token_iam_authz\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end

    # Create an IAM access token for a user using username / password credentials and an optional account identifier
    # Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.
    # @param authorization [String] Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60;
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;password&#x60;.
    # @param username [String] The value of the username
    # @param password [String] The value of the password
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
    # @return [TokenResponse]
    def get_token_password(authorization, grant_type, username, password, opts = {})
      data, _status_code, _headers = get_token_password_with_http_info(authorization, grant_type, username, password, opts)
      data
    end

    # Create an IAM access token for a user using username / password credentials and an optional account identifier
    # Creates a non-opaque access token for a username and password. To be able to call IBM Cloud APIs, the token must be made account-specific. For this purpose, also pass the 32 character long identifier for your account in the API call. This API call is possible only for non-federated IBMid users.
    # @param authorization [String] Basic Authorization Header containing a valid client ID and secret. If this header is omitted the request fails with BXNIM0308E: &#39;No authorization header found&#39;. You can use the client ID and secret that is used by the IBM Cloud CLI: &#x60;bx / bx&#x60;
    # @param grant_type [String] Grant type for this API call. You must set the grant type to &#x60;password&#x60;.
    # @param username [String] The value of the username
    # @param password [String] The value of the password
    # @param [Hash] opts the optional parameters
    # @option opts [String] :account The 32 character identifier of the account. Specify this parameter to get an account-specific IAM token. IBM Cloud APIs require that IAM tokens are account-specific.
    # @return [Array<(TokenResponse, Integer, Hash)>] TokenResponse data, response status code and response headers
    def get_token_password_with_http_info(authorization, grant_type, username, password, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TokenOperationsApi.get_token_password ...'
      end
      # verify the required parameter 'authorization' is set
      if @api_client.config.client_side_validation && authorization.nil?
        fail ArgumentError, "Missing the required parameter 'authorization' when calling TokenOperationsApi.get_token_password"
      end
      # verify the required parameter 'grant_type' is set
      if @api_client.config.client_side_validation && grant_type.nil?
        fail ArgumentError, "Missing the required parameter 'grant_type' when calling TokenOperationsApi.get_token_password"
      end
      # verify the required parameter 'username' is set
      if @api_client.config.client_side_validation && username.nil?
        fail ArgumentError, "Missing the required parameter 'username' when calling TokenOperationsApi.get_token_password"
      end
      # verify the required parameter 'password' is set
      if @api_client.config.client_side_validation && password.nil?
        fail ArgumentError, "Missing the required parameter 'password' when calling TokenOperationsApi.get_token_password"
      end
      # resource path
      local_var_path = '/identity/token#password'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['application/json'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['application/x-www-form-urlencoded'])
      header_params[:'Authorization'] = authorization

      # form parameters
      form_params = opts[:form_params] || {}
      form_params['grant_type'] = grant_type
      form_params['username'] = username
      form_params['password'] = password
      form_params['account'] = opts[:'account'] if !opts[:'account'].nil?

      # http body (model)
      post_body = opts[:body] 

      # return_type
      return_type = opts[:return_type] || 'TokenResponse' 

      # auth_names
      auth_names = opts[:auth_names] || []

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
        @api_client.config.logger.debug "API called: TokenOperationsApi#get_token_password\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end