module Human
  class Person
    attr_accessor :tummy, :state

    def initialize( tummy = 'hungry', state = 'sleepy')
      @tummy = tummy
      @state = state
    end
  end
end