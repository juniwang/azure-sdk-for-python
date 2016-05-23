# encoding: utf-8
# Code generated by Microsoft (R) AutoRest Code Generator 0.17.0.0
# Changes may cause incorrect behavior and will be lost if the code is
# regenerated.

module Azure::ARM::Compute
  module Models
    #
    # The instance view of a resource.
    #
    class AvailabilitySetProperties

      include MsRestAzure

      # @return [Integer] Gets or sets Update Domain count.
      attr_accessor :platform_update_domain_count

      # @return [Integer] Gets or sets Fault Domain count.
      attr_accessor :platform_fault_domain_count

      # @return [Array<SubResource>] Gets or sets a list containing reference
      # to all Virtual Machines created under this Availability Set.
      attr_accessor :virtual_machines

      # @return [Array<InstanceViewStatus>] Gets or sets the resource status
      # information.
      attr_accessor :statuses

      #
      # Validate the object. Throws ValidationError if validation fails.
      #
      def validate
        @virtual_machines.each{ |e| e.validate if e.respond_to?(:validate) } unless @virtual_machines.nil?
        @statuses.each{ |e| e.validate if e.respond_to?(:validate) } unless @statuses.nil?
      end

      #
      # Serializes given Model object into Ruby Hash.
      # @param object Model object to serialize.
      # @return [Hash] Serialized object in form of Ruby Hash.
      #
      def self.serialize_object(object)
        object.validate
        output_object = {}

        serialized_property = object.platform_update_domain_count
        output_object['platformUpdateDomainCount'] = serialized_property unless serialized_property.nil?

        serialized_property = object.platform_fault_domain_count
        output_object['platformFaultDomainCount'] = serialized_property unless serialized_property.nil?

        serialized_property = object.virtual_machines
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element|
            unless element.nil?
              element = MsRestAzure::SubResource.serialize_object(element)
            end
            serializedArray.push(element)
          end
          serialized_property = serializedArray
        end
        output_object['virtualMachines'] = serialized_property unless serialized_property.nil?

        serialized_property = object.statuses
        unless serialized_property.nil?
          serializedArray = []
          serialized_property.each do |element1|
            unless element1.nil?
              element1 = InstanceViewStatus.serialize_object(element1)
            end
            serializedArray.push(element1)
          end
          serialized_property = serializedArray
        end
        output_object['statuses'] = serialized_property unless serialized_property.nil?

        output_object
      end

      #
      # Deserializes given Ruby Hash into Model object.
      # @param object [Hash] Ruby Hash object to deserialize.
      # @return [AvailabilitySetProperties] Deserialized object.
      #
      def self.deserialize_object(object)
        return if object.nil?
        output_object = AvailabilitySetProperties.new

        deserialized_property = object['platformUpdateDomainCount']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.platform_update_domain_count = deserialized_property

        deserialized_property = object['platformFaultDomainCount']
        deserialized_property = Integer(deserialized_property) unless deserialized_property.to_s.empty?
        output_object.platform_fault_domain_count = deserialized_property

        deserialized_property = object['virtualMachines']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element2|
            unless element2.nil?
              element2 = MsRestAzure::SubResource.deserialize_object(element2)
            end
            deserialized_array.push(element2)
          end
          deserialized_property = deserialized_array
        end
        output_object.virtual_machines = deserialized_property

        deserialized_property = object['statuses']
        unless deserialized_property.nil?
          deserialized_array = []
          deserialized_property.each do |element3|
            unless element3.nil?
              element3 = InstanceViewStatus.deserialize_object(element3)
            end
            deserialized_array.push(element3)
          end
          deserialized_property = deserialized_array
        end
        output_object.statuses = deserialized_property

        output_object
      end
    end
  end
end