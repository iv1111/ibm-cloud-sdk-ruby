=begin
#Power Cloud API

#IBM Power Cloud API for Power Hardware / Infrastructure

The version of the OpenAPI document: 1.0.0
Contact: kylej@us.ibm.com
Generated by: https://openapi-generator.tech
OpenAPI Generator version: 5.0.0-beta2

=end

require 'spec_helper'
require 'json'

# Unit tests for IbmCloudPower::PCloudTasksApi
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe 'PCloudTasksApi' do
  before do
    # run before each test
    @api_instance = IbmCloudPower::PCloudTasksApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of PCloudTasksApi' do
    it 'should create an instance of PCloudTasksApi' do
      expect(@api_instance).to be_instance_of(IbmCloudPower::PCloudTasksApi)
    end
  end

  # unit tests for pcloud_tasks_delete
  # Delete a task
  # @param task_id PCloud Task ID
  # @param [Hash] opts the optional parameters
  # @return [Object]
  describe 'pcloud_tasks_delete test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for pcloud_tasks_get
  # Get a task
  # @param task_id PCloud Task ID
  # @param [Hash] opts the optional parameters
  # @return [Task]
  describe 'pcloud_tasks_get test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
