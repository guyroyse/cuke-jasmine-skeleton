Feature:
  As a developer
  I want to see true and false
  So that I can prove that this skeleton works

  Scenario: returns true
    Given I am on the sample page
    When I select true
    Then I see truth

  Scenario: returns false
    Given I am on the sample page
    When I select false
    Then I see falsehood
