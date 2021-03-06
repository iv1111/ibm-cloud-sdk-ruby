=begin
#IBM Cloud Resource Controller API

#Manage lifecycle of your Cloud resources using Resource Controller APIs. Resources are provisioned globally in an account scope. Supports asynchronous provisioning of resources. Enables consumption of a global resource through a Cloud Foundry space in any region.

The version of the OpenAPI document: 2.0

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'date'

module IbmCloudResourceController
  # A resource binding.
  class ResourceBinding
    # The ID associated with the binding.
    attr_accessor :id

    # When you create a new binding, a globally unique identifier (GUID) is assigned. This GUID is a unique internal identifier managed by the resource controller that corresponds to the binding.
    attr_accessor :guid

    # The full Cloud Resource Name (CRN) associated with the binding. For more information about this format, see [Cloud Resource Names](https://cloud.ibm.com/docs/overview?topic=overview-crn).
    attr_accessor :crn

    # When you provision a new binding, a relative URL path is created identifying the location of the binding.
    attr_accessor :url

    # The human-readable name of the binding.
    attr_accessor :name

    # An alpha-numeric value identifying the account ID.
    attr_accessor :account_id

    # The short ID of the resource group.
    attr_accessor :resource_group_id

    # The CRN of resource alias associated to the binding.
    attr_accessor :source_crn

    # The CRN of target resource, e.g. application, in a specific environment.
    attr_accessor :target_crn

    # The role CRN.
    attr_accessor :role

    # The short ID of the binding in specific targeted environment, e.g. `service_binding_id` in a given IBM Cloud environment.
    attr_accessor :region_binding_id

    # The state of the binding.
    attr_accessor :state

    # The credentials for the binding. Additional key-value pairs are passed through from the resource brokers.  For additional details, see the service’s documentation.
    attr_accessor :credentials

    # Specifies whether the binding’s credentials support IAM.
    attr_accessor :iam_compatible

    # The relative path to the resource alias that this binding is associated with.
    attr_accessor :resource_alias_url

    # The date when the binding was created.
    attr_accessor :created_at

    # The date when the binding was last updated.
    attr_accessor :updated_at

    # The date when the binding was deleted.
    attr_accessor :deleted_at

    # The subject who created the binding.
    attr_accessor :created_by

    # The subject who updated the binding.
    attr_accessor :updated_by

    # The subject who deleted the binding.
    attr_accessor :deleted_by

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
        :'source_crn' => :'source_crn',
        :'target_crn' => :'target_crn',
        :'role' => :'role',
        :'region_binding_id' => :'region_binding_id',
        :'state' => :'state',
        :'credentials' => :'credentials',
        :'iam_compatible' => :'iam_compatible',
        :'resource_alias_url' => :'resource_alias_url',
        :'created_at' => :'created_at',
        :'updated_at' => :'updated_at',
        :'deleted_at' => :'deleted_at',
        :'created_by' => :'created_by',
        :'updated_by' => :'updated_by',
        :'deleted_by' => :'deleted_by'
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
        :'source_crn' => :'String',
        :'target_crn' => :'String',
        :'role' => :'String',
        :'region_binding_id' => :'String',
        :'state' => :'String',
        :'credentials' => :'Credentials',
        :'iam_compatible' => :'Boolean',
        :'resource_alias_url' => :'String',
        :'created_at' => :'DateTime',
        :'updated_at' => :'DateTime',
        :'deleted_at' => :'DateTime',
        :'created_by' => :'String',
        :'updated_by' => :'String',
        :'deleted_by' => :'String'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `IbmCloudResourceController::ResourceBinding` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `IbmCloudResourceController::ResourceBinding`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
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

      if attributes.key?(:'source_crn')
        self.source_crn = attributes[:'source_crn']
      end

      if attributes.key?(:'target_crn')
        self.target_crn = attributes[:'target_crn']
      end

      if attributes.key?(:'role')
        self.role = attributes[:'role']
      end

      if attributes.key?(:'region_binding_id')
        self.region_binding_id = attributes[:'region_binding_id']
      end

      if attributes.key?(:'state')
        self.state = attributes[:'state']
      end

      if attributes.key?(:'credentials')
        self.credentials = attributes[:'credentials']
      end

      if attributes.key?(:'iam_compatible')
        self.iam_compatible = attributes[:'iam_compatible']
      end

      if attributes.key?(:'resource_alias_url')
        self.resource_alias_url = attributes[:'resource_alias_url']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'deleted_at')
        self.deleted_at = attributes[:'deleted_at']
      end

      if attributes.key?(:'created_by')
        self.created_by = attributes[:'created_by']
      end

      if attributes.key?(:'updated_by')
        self.updated_by = attributes[:'updated_by']
      end

      if attributes.key?(:'deleted_by')
        self.deleted_by = attributes[:'deleted_by']
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
          source_crn == o.source_crn &&
          target_crn == o.target_crn &&
          role == o.role &&
          region_binding_id == o.region_binding_id &&
          state == o.state &&
          credentials == o.credentials &&
          iam_compatible == o.iam_compatible &&
          resource_alias_url == o.resource_alias_url &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          deleted_at == o.deleted_at &&
          created_by == o.created_by &&
          updated_by == o.updated_by &&
          deleted_by == o.deleted_by
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, guid, crn, url, name, account_id, resource_group_id, source_crn, target_crn, role, region_binding_id, state, credentials, iam_compatible, resource_alias_url, created_at, updated_at, deleted_at, created_by, updated_by, deleted_by].hash
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
