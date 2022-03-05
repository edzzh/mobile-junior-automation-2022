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