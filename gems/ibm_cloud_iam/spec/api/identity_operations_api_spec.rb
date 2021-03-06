=begin
#IAM Identity Services API

#The IAM Identity Service API allows for the management of Identities (Service IDs, ApiKeys).

The version of the OpenAPI document: 1.0.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudIam::IdentityOperationsApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'IdentityOperationsApi' do
  before do
    # run before each test
    @api_instance = IbmCloudIam::IdentityOperationsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of IdentityOperationsApi' do
    it 'should create an instance of IdentityOperationsApi' do
      expect(@api_instance).to be_instance_of(IbmCloudIam::IdentityOperationsApi)
    end
  end

  # unit tests for create_api_key
  # Create an API key
  # Creates an API key for a UserID or service ID. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to.   
  # @param create_api_key_request Request to create an API key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @option opts [String] :entity_lock Indicates if the API key is locked for further write operations. False by default.
  # @return [ApiKey]
  describe 'create_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for create_service_id
  # Create a service ID
  # Creates a service ID for an IBM Cloud account. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param create_service_id_request Request to create a service ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @option opts [String] :entity_lock Indicates if the service ID is locked for further write operations. False by default.
  # @return [ServiceId]
  describe 'create_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_api_key
  # Deletes an API key
  # Deletes an API key. Existing tokens will remain valid until expired. Refresh tokens  will not work any more for this API key. Users can manage user API keys for themself, or service ID API  keys for service IDs that are bound to an entity they have access  to.   
  # @param id Unique ID of the API key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [nil]
  describe 'delete_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for delete_service_id
  # Deletes a service ID and associated API keys
  # Deletes a service ID and all API keys associated to it. Before deleting the service ID, all associated API keys are deleted. In case a Delete Conflict (status code 409) a retry of the request may help as the service ID is only deleted if the associated API keys were successfully deleted before. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param id Unique ID of the service ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [nil]
  describe 'delete_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_key
  # Get details of an API key
  # Returns the details of an API key. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to. In case of  service IDs and their API keys, a user must be either an account owner,  a IBM Cloud org manager or IBM Cloud space developer in order to manage  service IDs of the entity.
  # @param id Unique ID of the API key.
  # @param [Hash] opts the optional parameters
  # @option opts [Boolean] :include_history Defines if the entity history is included in the response.
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ApiKey]
  describe 'get_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_api_keys_details
  # Get details of an API key by its value
  # Returns the details of an API key by its value. Users can manage user API keys for themself, or service ID API keys  for service IDs that are bound to an entity they have access to.   
  # @param [Hash] opts the optional parameters
  # @option opts [String] :iam_api_key API key value.
  # @option opts [Boolean] :include_history Defines if the entity history is included in the response
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ApiKey]
  describe 'get_api_keys_details test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for get_service_id
  # Get details of a service ID
  # Returns the details of a service ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param id Unique ID of the service ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @option opts [Boolean] :include_history Defines if the entity history is included in the response.
  # @return [ServiceId]
  describe 'get_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_api_keys
  # Get API keys for a given service or user IAM ID and account ID.
  # Returns the list of API key details for a given service or user IAM ID and account ID. Users can manage user API keys for themself, or service ID API keys for  service IDs that are bound to an entity they have access to. In case of  service IDs and their API keys, a user must be either an account owner,  a IBM Cloud org manager or IBM Cloud space developer in order to manage  service IDs of the entity.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_id Account ID of the API keys(s) to query. If a service IAM ID is specified in iam_id then account_id must match the account of the IAM ID. If a user IAM ID is specified in iam_id then then account_id must match the account of the Authorization token.
  # @option opts [String] :iam_id IAM ID of the API key(s) to be queried. The IAM ID may be that of a user or a service. For a user IAM ID iam_id must match the Authorization token.
  # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  # @option opts [String] :scope Optional parameter to define the scope of the queried API Keys. Can be &#39;entity&#39; (default) or &#39;account&#39;.
  # @option opts [String] :type Optional parameter to filter the type of the queried API Keys. Can be &#39;user&#39; or &#39;serviceid&#39;.
  # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and created_by. If specified, the items are sorted by the value of this property.
  # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc.
  # @option opts [Boolean] :include_history Defines if the entity history is included in the response.
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ApiKeyList]
  describe 'list_api_keys test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for list_service_ids
  # List service IDs
  # Returns a list of service IDs. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param [Hash] opts the optional parameters
  # @option opts [String] :account_id Account ID of the service ID(s) to query. This parameter is required (unless using a pagetoken).
  # @option opts [String] :name Name of the service ID(s) to query. Optional.20 items per page. Valid range is 1 to 100.
  # @option opts [Integer] :pagesize Optional size of a single page. Default is 20 items per page. Valid range is 1 to 100.
  # @option opts [String] :pagetoken Optional Prev or Next page token returned from a previous query execution. Default is start with first page.
  # @option opts [String] :sort Optional sort property, valid values are name, description, created_at and modified_at. If specified, the items are sorted by the value of this property.
  # @option opts [String] :order Optional sort order, valid values are asc and desc. Default: asc.
  # @option opts [Boolean] :include_history Defines if the entity history is included in the response
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ServiceIdList]
  describe 'list_service_ids test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lock_api_key
  # Lock the API key
  # Locks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.
  # @param id Unique ID of the API key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [nil]
  describe 'lock_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for lock_service_id
  # Lock the service ID
  # Locks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.
  # @param id Unique ID of the service ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ServiceId]
  describe 'lock_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unlock_api_key
  # Unlock the API key
  # Unlocks an API key by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.
  # @param id Unique ID of the API key.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [nil]
  describe 'unlock_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unlock_service_id
  # Unlock the service ID
  # Unlocks a service ID by ID. Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to. In case of service IDs and their API keys, a user must be either an account owner, a IBM Cloud org manager or IBM Cloud space developer in order to manage service IDs of the entity.
  # @param id Unique ID of the service ID.
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ServiceId]
  describe 'unlock_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_api_key
  # Updates an API key
  # Updates properties of an API key. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update an API key, pass the property to be modified. To delete one property&#39;s value, pass the property with an empty value \&quot;\&quot;.Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param id Unique ID of the API key to be updated.
  # @param if_match Version of the API key to be updated. Specify the version that you retrieved when reading the API key. This value  helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates. 
  # @param update_api_key_request Request to update an API key
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ApiKey]
  describe 'update_api_key test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for update_service_id
  # Update service ID
  # Updates properties of a service ID. This does NOT affect existing access tokens. Their token content will stay unchanged until the access token is refreshed. To update a service ID, pass the property to be modified. To delete one property&#39;s value, pass the property with an empty value \&quot;\&quot;.Users can manage user API keys for themself, or service ID API keys for service IDs that are bound to an entity they have access to.   
  # @param id Unique ID of the service ID to be updated.
  # @param if_match Version of the service ID to be updated. Specify the version that you retrieved as entity_tag (ETag header) when reading the service ID. This value helps identifying parallel usage of this API. Pass * to indicate to update any version available. This might result in stale updates.
  # @param update_service_id_request Request to update a service ID
  # @param [Hash] opts the optional parameters
  # @option opts [String] :authorization Authorization Token used for the request. The supported token type is a Cloud IAM Access Token. If the token is omitted the request will fail with BXNIM0308E: &#39;No authorization header found&#39;. Please make sure that the provided token has the required authority for the request.
  # @return [ServiceId]
  describe 'update_service_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
