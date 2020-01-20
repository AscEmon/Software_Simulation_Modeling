Given /^I am a zoo keeper$/ do
  #pending
end
When /I create a (\D+)/ do |animal|
    @animal=animal
    @ret_animal=create_an_animal(animal)
    @animal.should==@ret_animal
end
Then /I should have a zoo/ do
  #pending
end

def create_an_animal(animal)
  return animal+"jjj"
end
