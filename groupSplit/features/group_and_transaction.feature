Feature: manage transactions

  As a user
  So that I can create a new transaction
  I want to specify my name; group I want to add to;
     transations type, amount and date;
     and group member to do the split with

Background: transactions and members in current group

  Given the following transactions exist:
  | user_name | group_name    | trans_type   | trans_number |   trans_date  | group_member |
  |  jane doe |    pending    |         Food       |         122        | 2021-10-30 01:00:00 |      member1       |
  |  jane oe |    pending     |       Grocery      |         76.5       | 2021-10-30 01:10:00 |       all       |
  |  jane e |    pending      |   Transportation   |        2.75        | 2021-11-30 01:00:00 |       all       |
  |  jane  |     pending      |   Entertainment    |          67        | 2021-12-30 01:00:00 |       all       |
  And the following members exist:
  | group_id | member_name |
  |  pending |   member1   |
  |  pending |   member2   |
  |  pending |   jane doe   |
  |  pending |   jane oe   |
  |  pending |   jane e   |
  |  pending |   jane   |


Scenario: add transactions to existing group
    When I go to the new transaction page
    And I select "member1" as the "User name:"  
    And I fill in "Transaction amount:" with "90"
    And I select "others" as the "transaction_trans_type"
    And I select datetime "2024 December 2" as the "transaction_trans_date"
    And I select "member1" as the "Members involved:"
    And I press "Save Changes"
    Then  I should be on the home page
    And I should see "member1"
    
Scenario: cancel add transaction 
    When I go to the new transaction page
    And I select "member2" as the "User name:"
    And I follow "Cancel"
    Then  I should be on the home page
    And I should not see "scenario2"
    
    
Scenario: update existing transaction
    Given I am on the home page
    And I follow "Detail about Transaction 1"
    And I follow "Edit Transaction"
    And I fill in "transaction_amount" with "11111"
    And I press "Update Transaction Detail"
    Then I should see "11111"


