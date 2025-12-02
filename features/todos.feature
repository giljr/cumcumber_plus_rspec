Feature: Displaying Completed Tasks
  The apps homepage must correctly display completed tasks
  and ensure that incomplete tasks do not appear in the completed section.

Background:
  Given I am on the apps homepage

Scenario: Display a completed task in the "completed-tasks" section
  Given there is a completed task called "Clean Car"
  When I submit this completed task
  Then I should see "Clean Car" in the "completed-tasks" section

Scenario: Ensure an incomplete task does not appear in the "completed-tasks" section
  Given there is an incomplete task called "Study Ruby"
  When I submit this incomplete task
  Then I should see "Study Ruby" in the "not-completed-tasks" section

Scenario: Display only completed tasks in the "completed-tasks" section
  Given there is a completed task called "Clean Car"
  And there is an incomplete task called "Study Ruby"
  When I submit both tasks
  Then I should see "Clean Car" in the "completed-tasks" section
  And I should not see "Study Ruby" in the "completed-tasks" section