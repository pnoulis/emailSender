# Behavior
The email's library behavior is fixed.

An email instant is itself a form.
One should not invoke any of its methods other than send(), displaySettings() or displayComposer().
It should only be freed either at a point in time where it makes sense or by setting a handler for 
its onClose, onSuccessfullDelivery or onFailedDelivery.

the send() method has 2 variants.
In the 1st variant the email composer is displayed prior to sending the email. If it fails then
the behavior enters the loop discussed below.
In the 2nd variant the email instant attempts to deliver the email without displaying the composer.
If it fails to deliver a loop is initiated by displaying the email settings followed by the email composer.
The loop only terminates after a successfull delivery or the user selects to terminate it by
closing or cancelling the procedure through the use of buttons.
In both variants the frames are displayed in the Email self hosted form.

the displaySettings() method.
The settings are displayed in a host form as provided by the user.
That method is not created for sending an email but rather for system configuration
of the email settings.

the displayComposer() method.
The composer is displayed in a host form as provided by the user.
The user then can choose to send the email. In case of failure the email instant
shall enter into a loop where the email settings shall be displayed followed by
the email composer until the email is send or the user selects to terminate the 
loop by closing or cancelling the procedure through the use of buttons.


# flow charts
## Send email without user composer
- CASE 1
Email.create -> Email.send(askUserToComposeEmail = FALSE) -> failure to read settings ->
**ERROR**

- CASE 2
Email.create -> Email.send(askUserToComposeEmail = FALSE) -> success in reading settings -> failure to send email ->
LOOP(displaySettings -> commit -> displayComposer) -> send email -> failure | success ->
**LOOP until success**

- CASE 3
Email.create -> Email.send(askUserToComposeEmail = FALSE) -> success in reading settings -> success  in sending email ->
**DONE**

- CASE 4
Email.craete -> ... -> close or cancel on Settings -> displayComposer -> close or cancel on Composer -> 
**DONE**

## Send email with user composer
- CASE 1
Email.create -> Email.send(askUserToComposeEmail = TRUE) -> failure to read settings ->
**ERROR**

- CASE 2
Email.create -> Email.send(askUserToComposeEmail = TRUE)  -> success in reading settings ->
displayComposer -> send email -> failure -> LOOP(displaySettings -> commit -> displayComposer) -> failure | success ->
**LOOP until success**

- CASE 3
Email.create -> Email.send(askUserToComposeEmail = TRUE) -> success in reading settings ->
displayComposer -> send email -> success ->
**DONE**

- CASE 4
Email.create -> ... -> close or cancel on Settings -> displayComposer -> close or cancel on Composer ->
**DONE**

## display email composer
- CASE 1
Email.create -> Email.displayComposer(parent = aWinControl) -> failure in reading settings ->
**ERROR**

- CASE 2
Email.create -> Email.displayComposer(parent = aWinControl) -> success in reading settings ->
send email -> failure -> LOOP(displaySettings -> commit -> displayComposer) -> failure | success -> 
**LOOP until success**

- CASE 3
Email.create -> Email.displayComposer(parent = aWinControl) -> success in reading settings ->
send email -> success ->
**DONE**

- CASE 4
Email.create -> ... -> close or cancel on settings -> displayComposer -> close or cancel on Composer ->
**DONE**

## display email settings
- CASE 1
Email.Create -> failure in reading settings ->
**ERROR**

- CASE 2
Email.Create -> success in reading settings -> Email.displaySettings(parent = aWinControl) -> commit ->
**DONE**

- CASE 3
Email.create -> close or cancel on Settings ->
**DONE**