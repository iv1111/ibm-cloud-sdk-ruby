=begin
#IBM Cloud Resource Controller API

#Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are provisioned globally in an account scope. Supports asynchronous provisioning of resources. Enables consumption of a global resource through a Cloud Foundry space in any region.

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudResourceController
  # A resource instance.
  class ResourceInstance
    # The ID associated with the instance.
    attr_accessor :id

    # When you create a new resource, a globally unique identifier (GUID) is assigned. This GUID is a unique internal identifier managed by the resource controller that corresponds to the instance.
    attr_accessor :guid

    # The full Cloud Resource Name (CRN) associated with the instance. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic=overview-crn).
    attr_accessor :crn

    # When you provision a new resource, a relative URL path is created identifying the location of the instance.
    attr_accessor :url

    # The human-readable name of the instance.
    attr_accessor :name

    # An alpha-numeric value identifying the account ID.
    attr_accessor :account_id

    # The short ID of the resource group.
    attr_accessor :resource_group_id

    # The long ID (full CRN) of the resource group.
    attr_accessor :resource_group_crn

    # The unique ID of the offering. This value is provided by and stored in the global catalog.
    attr_accessor :resource_id

    # The unique ID of the plan associated with the offering. This value is provided by and stored in the global catalog.
    attr_accessor :resource_plan_id

    # The full deployment CRN as defined in the global catalog. The Cloud Resource Name (CRN) of the deployment location where the instance is provisioned.
    attr_accessor :target_crn

    # The current configuration parameters of the instance.
    attr_accessor :parameters

    # The current state of the instance. For example, if the instance is deleted, it will return removed.
    attr_accessor :state

    # The type of the instance, e.g. `service_instance`.
    attr_accessor :type

    # The sub-type of instance, e.g. `cfaas`.
    attr_accessor :sub_type

    # A boolean that dictates if the resource instance should be deleted (cleaned up) during the processing of a region instance delete call.
    attr_accessor :allow_cleanup

    # A boolean that dictates if the resource instance is locked or not.
    attr_accessor :locked

    # The status of the last operation requested on the instance.
    attr_accessor :last_operation

    # The resource-broker-provided URL to access administrative features of the instance.
    attr_accessor :dashboard_url

    # The plan history of the instance.
    attr_accessor :plan_history

    # The relative path to the resource aliases for the instance.
    attr_accessor :resource_aliases_url

    # The relative path to the resource bindings for the instance.
    attr_accessor :resource_bindings_url

    # The relative path to the resource keys for the instance.
    attr_accessor :resource_keys_url

    # The date when the instance was created.
    attr_accessor :created_at

    # The subject who created the instance.
    attr_accessor :created_by

    # The date when the instance was last updated.
    attr_accessor :updated_at

    # The subject who updated the instance.
    attr_accessor :updated_by

    # The date when the instance was deleted.
    attr_accessor :deleted_at

    # The subject who deleted the instance.
    attr_accessor :deleted_by

    # The date when the instance was scheduled for reclamation.
    attr_accessor :scheduled_reclaim_at

    # The subject who initiated the instance reclamation.
    attr_accessor :scheduled_reclaim_by

    # The date when the instance under reclamation was restored.
    attr_accessor :restored_at

    # The subject who restored the instance back from reclamation.
    attr_accessor :restored_by

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'guid' => :'guid',
        :'crn' => :'crn',
        :'url' => :'url',
        :'name' => :'name',
        :'account_id' => :'account_id',
        :'resource_group_id' => :'resource_group_id',
        :'resource_group_crn' => :'resource_group_crn',
        :'resource_id' => :'resource_id',
        :'resource_plan_id' => :'resource_plan_id',
        :'target_crn' => :'target_crn',
        :'parameters' => :'parameters',
        :'state' => :'state',
        :'type' => :'type',
        :'sub_type' => :'sub_type',
        :'allow_cleanup' => :'allow_cleanup',
        :'locked' => :'locked',
        :'last_operation' => :'last_operation',
        :'dashboard_url' => :'dashboard_url',
        :'plan_history' => :'plan_history',
        :'resource_aliases_url' => :'resource_aliases_url',
        :'resource_bindings_url' => :'resource_bindings_url',
        :'resource_keys_url' => :'resource_keys_url',
        :'created_at' => :'created_at',
        :'created_by' => :'created_by',
        :'updated_at' => :'updated_at',
        :'updated_by' => :'updated_by',
        :'deleted_at' => :'deleted_at',
        :'deleted_by' => :'deleted_by',
        :'scheduled_reclaim_at' => :'scheduled_reclaim_at',
        :'scheduled_reclaim_by' => :'scheduled_reclaim_by',
        :'restored_at' => :'restored_at',
        :'restored_by' => :'restored_by'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'String',
        :'guid' => :'String',
        :'crn' => :'String',
        :'url' => :'String',
        :'name' => :'String',
        :'account_id' => :'String',
        :'resource_group_id' => :'String',
        :'resource_group_crn' => :'String',
        :'resource_id' => :'String',
        :'resource_plan_id' => :'String',
        :'target_crn' => :'String',
        :'parameters' => :'Hash<String, Object>',
        :'state' => :'String',
        :'type' => :'String',
        :'sub_type' => :'String',
        :'allow_cleanup' => :'Boolean',
        :'locked' => :'Boolean',
        :'last_operation' => :'Hash<String, Object>',
        :'dashboard_url' => :'String',
        :'plan_history' => :'Array<PlanHistoryItem>',
        :'resource_aliases_url' => :'String',
        :'resource_bindings_url' => :'String',
        :'resource_keys_url' => :'String',
        :'created_at' => :'DateTime',
        :'created_by' => :'String',
        :'updated_at' => :'DateTime',
        :'updated_by' => :'String',
        :'deleted_at' => :'DateTime',
        :'deleted_by' => :'String',
        :'scheduled_reclaim_at' => :'DateTime',
        :'scheduled_reclaim_by' => :'String',
        :'restored_at' => :'DateTime',
        :'restored_by' => :'String'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end

    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudResourceController::ResourceInstance` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudResourceController::ResourceInstance`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'guid')
        self.guid = attributes[:'guid']
      end

      if attributes.key?(:'crn')
        self.crn = attributes[:'crn']
      end

      if attributes.key?(:'url')
        self.url = attributes[:'url']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'account_id')
        self.account_id = attributes[:'account_id']
      end

      if attributes.key?(:'resource_group_id')
        self.resource_group_id = attributes[:'resource_group_id']
      end

      if attributes.key?(:'resource_group_crn')
        self.resource_group_crn = attributes[:'resource_group_crn']
      end

      if attributes.key?(:'resource_id')
        self.resource_id = attributes[:'resource_id']
      end

      if attributes.key?(:'resource_plan_id')
        self.resource_plan_id = attributes[:'resource_plan_id']
      end

      if attributes.key?(:'target_crn')
        self.target_crn = attributes[:'target_crn']
      end

      if attributes.key?(:'parameters')
        if (value = attributes[:'parameters']).is_a?(Hash)
          self.parameters = value
        end
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end

      if attributes.key?(:'sub_type')
        self.sub_type = attributes[:'sub_type']
      end

      if attributes.key?(:'allow_cleanup')
        self.allow_cleanup = attributes[:'allow_cleanup']
      end

      if attributes.key?(:'locked')
        self.locked = attributes[:'locked']
      end

      if attributes.key?(:'last_operation')
        if (value = attributes[:'last_operation']).is_a?(Hash)
          self.last_operation = value
        end
      end

      if attributes.key?(:'dashboard_url')
        self.dashboard_url = attributes[:'dashboard_url']
      end

      if attributes.key?(:'plan_history')
        if (value = attributes[:'plan_history']).is_a?(Array)
          self.plan_history = value
        end
      end

      if attributes.key?(:'resource_aliases_url')
        self.resource_aliases_url = attributes[:'resource_aliases_url']
      end

      if attributes.key?(:'resource_bindings_url')
        self.resource_bindings_url = attributes[:'resource_bindings_url']
      end

      if attributes.key?(:'resource_keys_url')
        self.resource_keys_url = attributes[:'resource_keys_url']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'deleted_by')
        self.deleted_by = attributes[:'deleted_by']
      end

      if attributes.key?(:'scheduled_reclaim_at')
        self.scheduled_reclaim_at = attributes[:'scheduled_reclaim_at']
      end

      if attributes.key?(:'scheduled_reclaim_by')
        self.scheduled_reclaim_by = attributes[:'scheduled_reclaim_by']
      end

      if attributes.key?(:'restored_at')
        self.restored_at = attributes[:'restored_at']
      end

      if attributes.key?(:'restored_by')
        self.restored_by = attributes[:'restored_by']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          guid == o.guid &&
          crn == o.crn &&
          url == o.url &&
          name == o.name &&
          account_id == o.account_id &&
          resource_group_id == o.resource_group_id &&
          resource_group_crn == o.resource_group_crn &&
          resource_id == o.resource_id &&
          resource_plan_id == o.resource_plan_id &&
          target_crn == o.target_crn &&
          parameters == o.parameters &&
          state == o.state &&
          type == o.type &&
          sub_type == o.sub_type &&
          allow_cleanup == o.allow_cleanup &&
          locked == o.locked &&
          last_operation == o.last_operation &&
          dashboard_url == o.dashboard_url &&
          plan_history == o.plan_history &&
          resource_aliases_url == o.resource_aliases_url &&
          resource_bindings_url == o.resource_bindings_url &&
          resource_keys_url == o.resource_keys_url &&
          created_at == o.created_at &&
          created_by == o.created_by &&
          updated_at == o.updated_at &&
          updated_by == o.updated_by &&
          deleted_at == o.deleted_at &&
          deleted_by == o.deleted_by &&
          scheduled_reclaim_at == o.scheduled_reclaim_at &&
          scheduled_reclaim_by == o.scheduled_reclaim_by &&
          restored_at == o.restored_at &&
          restored_by == o.restored_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, guid, crn, url, name, account_id, resource_group_id, resource_group_crn, resource_id, resource_plan_id, target_crn, parameters, state, type, sub_type, allow_cleanup, locked, last_operation, dashboard_url, plan_history, resource_aliases_url, resource_bindings_url, resource_keys_url, created_at, created_by, updated_at, updated_by, deleted_at, deleted_by, scheduled_reclaim_at, scheduled_reclaim_by, restored_at, restored_by].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        IbmCloudResourceController.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end
        
        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end
  end
end
