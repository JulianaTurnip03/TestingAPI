@Api
Feature: Open Dummy Site
  @GetApi
  Scenario:
    Given Access URI
    Then Compare

  @GetSingleApi
  Scenario:
    Given Access URI
    Then  Compare 

  @PostApi
  Scenario:
    Given Access post URI
    Then  Compare result

  @PutApi
  Scenario:
    Given Access put URI
    Then  Compare result

  @DeleteApi
  Scenario:
    Given Access delete URI
    Then  Compare result

