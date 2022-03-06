Given(/^User has open login page$/) do
  @screens.auth_screen.go_to_login_page
end

And(/^User has input the email and password$/) do
  @screens.auth_screen.input_email_and_password
end

When(/^User clicks on the login button$/) do
  @screens.auth_screen.click_login_button
end

Then(/^User sees the my profile button$/) do
  @screens.main_screen.my_profile_button_exists
end

Then(/^User opens my profile page$/) do
  @screens.main_screen.open_my_profile_page
end

And(/^The logged in users name is "([^"]*)"$/) do |name|
  @screens.my_profile_screen.check_if_name_visible(name)
end

And(/^The logged in users email is "([^"]*)"$/) do |email|
  @screens.my_profile_screen.check_if_email_visible(email)
end

And(/^User inputs (.*) into the email field$/) do |email|
  @screens.auth_screen.input_email(email)
end

And(/^User inputs (.*) into the password field$/) do |password|
  @screens.auth_screen.input_password(password)
end

And(/^User goes to Sign Up page$/) do
  @screens.auth_screen.got_to_signup_page
end

And(/^User inputs new user credentials$/) do
  @screens.auth_screen.input_random_new_user_credentials
end

And(/^User click Sign Up$/) do
  @screens.auth_screen.click_sign_up_button
end

And(/^User skips the refer code screen$/) do
  @screens.auth_screen.skip_refer_code
end

And(/^User skips the phone verification screen$/) do
  @screens.auth_screen.skip_phone_verification
end

Then(/^The random email used for signup is visible$/) do
  email_used = @screens.auth_screen.get_random_email
  @screens.my_profile_screen.check_if_email_visible(email_used)
end