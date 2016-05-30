module HelperMethods
  def titleize(sentence)
    exclusion = [ "in", "the", "of", "and", "or", "from"]
    array = sentence.split(" ")
    array.each do |element|
      element.capitalize! unless exclusion.include?(element)
    end
    return array.join(" ")
  end
end
include HelperMethods
p titleize("the lord of the rings")
