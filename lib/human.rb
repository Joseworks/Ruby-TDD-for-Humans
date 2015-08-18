module Human
  class Person
    attr_accessor :tummy, :state

    def initialize( tummy = 'hungry', state = 'sleepy')
      @tummy = tummy
      @state = state
    end

    def goes_and_get_coffee
      print "Person drinks coffee!\n"
      @state = 'awake'
    end

    def goes_and_eat_breakfast
      print "Person eats breakfast!\n"
      @tummy = 'full'
    end
  end
end


@new_human = Human::Person.new

print "Person is #{@new_human.state} in the morning\n"
print "Person is #{@new_human.tummy} in the morning\n"
@new_human.goes_and_get_coffee
print "Person is #{@new_human.state} in the morning\n"
@new_human.goes_and_eat_breakfast
print "Person is #{@new_human.tummy} in the morning\n"