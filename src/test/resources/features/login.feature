Feature: Login Functionality

  @db
  Scenario: Login with valid credentials
    Given the user logged in  "librarian56@library" and "pBQnq0NN"
    When user gets username  from user fields
    Then the username should be same with database

  @db
  Scenario Outline: Login with valid credentials <email>
    Given the user logged in  "<email>" and "<password>"
    When user gets username  from user fields
    Then the username should be same with database
    Examples:
      | email               | password |
      | librarian55@library | 67UQi3Ol |
      | librarian56@library | pBQnq0NN |
      | student5@library    | i1oDgf2d |
      | student6@library    | NXhpXJdC |

