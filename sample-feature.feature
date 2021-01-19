Feature: Get Customer Queue Position and Estimated Wait Time
  Scenario: Customer can see a tab for queue position and estimated time after they dismissed the success popup
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    And the customer taps on OK on the confirmation popup
    And the customer tap on dismiss on the success popup
    Then the mobile application prompts a tab with message that displays the customer's position in the queue, message that display the estimated waiting time, and a "MORE" button

  Scenario: Customer taps on the more on queue tab
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    And the customer taps on OK on the confirmation popup
    And the customer tap on dismiss on the success popup
    And the customer taps on "MORE" on the queue tab
    Then the mobile application prompts a native bottom action menu with three options for "SCHEDULE NEW TIME", "LEAVE QUEUE", and "CANCEL"

  Scenario: Customer wants to leave queue if they no longer need help - confirm confirmation
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    And the customer taps on OK on the confirmation popup
    And the customer tap on dismiss on the success popup
    And the customer taps on "MORE" on the queue tab
    And the customer taps on "LEAVE QUEUE"
    And the customer taps on "YES" confirmation tab yes
    Then the mobile application returns to the previous page and the queue tab disappears

  Scenario: Customer wants to leave queue if they no longer need help - cancel confirmation
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    And the customer taps on OK on the confirmation popup
    And the customer taps on dismiss on the success popup
    And the customer taps on "MORE" on the queue tab
    And the customer taps on "LEAVE QUEUE" on tab
    And the customer taps on "CANCEL" confirmation tab cancel
    Then the mobile application returns to the previous page and the queue tab remains

  Scenario: Customer can see a tab for queue position and estimated time, then navigates to another page
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    And the customer taps on OK on the confirmation popup
    And the customer taps on dismiss on the success popup
    And the customer click on a button that navigates to another page
    Then the queue tab remains

  Scenario: Customer is requesting on top of an active request
    Given a customer is on a product application page in the mobile application
    And there is a help button presented on the top right of the screen
    And customer has an active request for Virtual Support and is in a queue
    When the customer taps on the help button
    And the customer taps on "Virtual Support" button on the help panel
    Then the mobile application prompts a pop-up with title "There is an Active Request", and message "You are currently in a queue for customer support. Please leave your current queue before creating a new request"




  ##############################################
#  Scenario: Customer wants to reschedule the call to another preferred time (TBC)
#    Given a customer is on a product application page in the mobile application
#    And there is a "help" button presented on the top right of the screen
#    When  the customer taps on the help "?" button
#    And the customer taps on "Virtual Support" button on the help panel
#    And the customer taps on OK on the confirmation popup
#    And the customer taps on dismiss on the success popup
#    And the customer taps on More on the queue tab
#    And the customer taps on "Reschedule"
#    Then  the mobile application navigates to the session booking re-scheduling screen
#
#  Scenario: Customer wants to leave queue if they no longer need help - confirmation
#    Given a customer is on a product application page in the mobile application
#    And there is a "help" button presented on the top right of the screen
#    When  the customer taps on the help "?" button
#    And the customer taps on "Virtual Support" button on the help panel
#    And the customer taps on OK on the confirmation popup
#    And the customer taps on dismiss on the success popup
#    And the customer taps on More on the queue tab
#    And the customer taps on "Leave Queue"
#    Then  the mobile application prompts a confirmation pop-up with title "Leave Queue", message "Are you sure you want to cancel your request and leave the queue?", and button for "Yes" and "Cancel"
#
#  Scenario: Customer click More on the queue tab then goes back
#    Given a customer is on a product application page in the mobile application
#    And there is a "help" button presented on the top right of the screen
#    When  the customer taps on the help "?" button
#    And the customer taps on "Virtual Support" button on the help panel
#    And the customer taps on OK on the confirmation popup
#    And the customer taps on dismiss on the success popup
#    And the customer taps on More on the queue tab
#    And the customer taps on "Cancel"
#    Then  the mobile application returns to the previous page and the queue tab remains
#
#  Scenario: Queue reached position number 1 (TBC)
#    Given a customer is on a product application page in the mobile application
#    And there is a "help" button presented on the top right of the screen
#    When  the customer taps on the help "?" button
#    And the customer taps on "Virtual Support" button on the help panel
#    And the customer taps on OK on the confirmation popup
#    And the customer tap on dismiss on the success popup
#    And the customer click on a button that navigates to another page
#    Then  the queue tab changes to the "You're up next" tab displaying with a new message as "You’re up next! An agent will be with you shortly!"
#
#  Scenario: Agent contacts back to the customer in the queue
#    Given a customer has the queue tab on display
#    When  an agent initiated a session invitation to the customer
#    Then  the mobile application prompts a popup with title "Virtual Support" and two buttons for "OK" and "Cancel"
#    And the queue tab disappears
