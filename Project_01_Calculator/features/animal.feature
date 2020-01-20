Feature: Animal
Scenario: Create some animals
  Given I am a zoo keeper
  When I create a giraffe
  And I create a lion
  And I create a pony
  And I create a unicorn
  Then I should have a zoo
