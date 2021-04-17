require 'rspec'
require_relative '../../src/mapper/mapper_dsl'

describe MapperDSL do
  context 'when using the mapper to map attributes' do
    it 'appends attribute to mapper dsl attribute list' do
      my_attribute = :my_attribute
      mapper_dsl = MapperDSL.new

      mapper_dsl.attribute(my_attribute)

      expect(mapper_dsl.attributes).to include(my_attribute)
    end
  end
end
