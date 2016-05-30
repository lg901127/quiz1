module HelperMethods
  def info(name, age)
    puts "#{name} is #{age} years old"
  end
end

class Class1
  include HelperMethods
end

class Class2
  extend HelperMethods
end

include HelperMethods

a = Class1.new
a.info("Lee", 25)

Class2.info("Lee", 25)
