module Human
  class Person
    attr_accessor :tummy

    def initialize( tummy = 'hungry')
      @tummy = tummy
    end
  end
end