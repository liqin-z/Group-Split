Feature: add new member to current group

  As a user with access
  So that I can calculate the money I need to pay
  I want to add myself as a member to this group
  
Background: transactions and members in current group

  Given the following transactions exist:
  | user_name | group_name | trans_type   | trans_number |   trans_date  | group_member |
  |  member1 |    curr    |         Food       |         122        | 2021-10-30 01:00:00 |       all       |
  |  member1 |    curr     |       Grocery      |         76.5       | 2021-10-30 01:10:00 |       all       |
  |  member2 |    curr      |   Transportation   |        2.75        | 2021-11-30 01:00:00 |       all       |
  |  member2  |     curr      |   Entertainment    |          67        | 2021-12-30 01:00:00 |       all       |
  And the following members exist:
  | group_id | member_name |
  |  pending |   member1   |
  |  pending |   member2   |

Scenario: Add new user to this group
    Given I am on the home page
    And I press "Add New Member"
    And I fill in "new member name" with "member3"
    And I press "Save Changes"
    Then  I should be on the home page
    And I should see "member3"
    
Scenario: Try add new user with exising name to this group
    Given I am on the home page
    And I press "Add New Member"
    And I fill in "new member name" with "member1"
    And I press "Save Changes"
    Then  I should be on the home page
    And I should see "Failed"