Feature:
  As a calculator user
  I want to be able to add numbers
  So that I don't bounce my checkbook

  @calc
  Scenario: adds numbers
    Given I have a calculator
    When I enter 2
      And I press plus
      And I enter 4
      And I press equals
    Then it displays 6
