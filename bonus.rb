module HelperMethods
  def titleize(sentence)
    exclusion = [ "in", "the", "of", "and", "or", "from"]
    array = sentence.split(" ")
    temp = []
    array.each do |element|
       exclusion.include?(element) ? temp << element.capitalize : temp << element
    end
    puts temp.join(" ")
    puts "I am the original array: #{array}"
    puts "I am the original sentence: #{sentence}"
  end
end
include HelperMethods
titleize("the lord of the rings")
