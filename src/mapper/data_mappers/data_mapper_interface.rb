module DataMapperInterface
  def map_from_entity(entity)
    raise NotImplementedError
  end

  def map_to_entity(virtual_model)
    raise NotImplementedError
  end
end
