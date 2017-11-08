
class Person
  def initialize(name)
    @name = name
    @emotions = {joyfullness: 2, stress: 1, happiness: 3}


  end

  def message
    # emotions = []
    # level = []
    keys = @emotions.keys
    values = @emotions.values

    values.map! do |value|
      if value == 1
        value = "low"
      elsif value == 2
        value = "medium"
      elsif value == 3
        value = "high"
      end
    end
    puts "I am feeling a #{values[0]} amount of #{keys[0]}."
    puts "I am feeling a #{values[1]} amount of #{keys[1]}."
    puts "I am feeling a #{values[2]} amount of #{keys[2]}."

  end
end

bob = Person.new("Bob")
puts bob.inspect
puts bob.message
