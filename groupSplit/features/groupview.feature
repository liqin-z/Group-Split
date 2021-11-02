Feature: see the full record of my group transctions

  As a user
  So that I can manage my group activaty record
  I want to see history of transactions

Background: transactions in current group

  Given the following transactions exist:
  | user_name | group_name | trans_type   | trans_number |   trans_date  | group_member |
  |  jane doe |    curr    |         Food       |         122        | 2021-10-30 01:00:00 |       all       |
  |  jane oe |    curr     |       Grocery      |         76.5       | 2021-10-30 01:10:00 |       all       |
  |  jane e |    curr      |   Transportation   |        2.75        | 2021-11-30 01:00:00 |       all       |
  |  jane  |     curr      |   Entertainment    |          67        | 2021-12-30 01:00:00 |       all       |

Scenario: see all my history of transactions
    Given I am on the home page
    Then I should see all the transactions