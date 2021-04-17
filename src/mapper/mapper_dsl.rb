class MapperDSL
  attr_reader :attributes

  def initialize
    @attributes = []
  end

  def attribute(attribute)
    @attributes << attribute
  end
end
