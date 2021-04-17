require_relative 'mapper_dsl'

class Mapper
  attr_reader :entity

  def self.[](entity_class)
    mapper_class = Class.new(Mapper)
    mapper_class.entity_class = entity_class
    mapper_class.mapper_dsl = MapperDSL.new
    mapper_class
  end

  def self.inherited(child_class)
    child_class.entity_class = @entity_class
    child_class.mapper_dsl = @mapper_dsl
  end

  def self.mapping(table, &block)
    @mapper_dsl.instance_eval(&block)
  end

  def self.entity_class=(entity_class)
    @entity_class = entity_class
  end

  def self.mapper_dsl=(mapper_dsl)
    @mapper_dsl = mapper_dsl
  end
end


class Pessoa
  attr_reader :nome

  def initialize(nome)
    @nome = nome
  end
end

class PessoaMapper < Mapper[Pessoa]
  mapping :pessoa do
    attribute :nome
  end
end
