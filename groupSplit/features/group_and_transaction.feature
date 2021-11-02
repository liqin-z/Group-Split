Feature: new transactions to existing group

  As a user
  So that I can create a new transaction
  I want to specify my name; group I want to add;
     transations to, the transaction type, amount and date;
     and group member to do the split with

Background: transactions in current group

  Given the following transactions exist:
  | user_name | group_name | trans_type   | trans_number |   trans_date  | group_member |
  |  jane doe |    curr    |         Food       |         122        | 2021-10-30 01:00:00 |       all       |
  |  jane oe |    curr     |       Grocery      |         76.5       | 2021-10-30 01:10:00 |       all       |
  |  jane e |    curr      |   Transportation   |        2.75        | 2021-11-30 01:00:00 |       all       |
  |  jane  |     curr      |   Entertainment    |          67        | 2021-12-30 01:00:00 |       all       |

Scenario: add transactions to existing group
    When I go to the new transaction page
    And I fill in "user_name" with "scenario1"
    And I fill in "group_name" with "group1"
    And I fill in "transaction_amount" with "90"
    And I select "others" as the "transaction_trans_type"
    And I select datetime "2024 December 2" as the "transaction_trans_date"
    And I fill in "member_involved" with "all"
    And I press "Save Changes"
    Then  I should be on the home page
    And I should see "scenario1"
    
Scenario: cancel add transaction 
    When I go to the new transaction page
    And I fill in "user_name" with "scenario2"
    And I follow "Cancel"
    Then  I should be on the home page
    And I should not see "scenario2"
    
