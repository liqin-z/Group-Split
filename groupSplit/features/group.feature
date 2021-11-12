Feature: new group

  As a user
  So that I can create a new group
  I want to specify my name; group I want to add;
      people I want to add

Background: groups

  Given the following groups exist:
  | user_name | group_name |
  |  jane doe |    curr    |
  |  jane oe |    curr     |
  |  jane e |    curr      |
  |  jane  |     curr      |

Scenario: add people to a group
    When I go to the new group page
    And I fill in "user_name" with "scenario1"
    And I fill in "group_name" with "group1"
    
    # And I fill in "transaction_amount" with "90"
    # And I select "others" as the "transaction_trans_type"
    # And I select datetime "2024 December 2" as the "transaction_trans_date"
    # And I fill in "member_involved" with "all"
    
    And I press "Save Changes"
    Then  I should be on the home page
    And I should see "scenario1"
    
