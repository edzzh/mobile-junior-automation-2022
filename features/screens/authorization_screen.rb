class AuthorizationScreen
  def initialize
    @go_to_login_button = Elements.new(:id, "go_to_login_btn")
    @email_field = Elements.new(:id, "login_email")
    @password_field = Elements.new(:id, "login_password")
    @login_button = Elements.new(:id, "login_btn")
    # Signup Button
    @go_to_signup_btn = Elements.new(:id, "sign_up_login")
    # FullName Field
    @full_name_field = Elements.new(:id, "signup_name")
    # Phone Number Field
    @phone_number_field = Elements.new(:id, "signup_phone")
    # Email Field
    @signup_email_field = Elements.new(:id, "signup_email")
    # Password Field
    @signup_password_field = Elements.new(:id, "signup_password")
    # Confirm Password Field
    @confirm_password_field = Elements.new(:id, "signup_confirm_password")
    # Finish Signup Button
    @signup_btn = Elements.new(:id, "sign_up_btn")
    @skip_refer_btn = Elements.new(:id, "skip_btn")
    @skip_verification_btn = Elements.new(:id, "skip_verification")
  end

  def go_to_login_page
    @go_to_login_button.click
  end

  def input_email(email)
    @email_field.type(email)
  end

  def input_password(password)
    @password_field.type(password)
  end

  def click_login_button
    @login_button.click
  end

  def got_to_signup_page
    @go_to_signup_btn.click
  end

  def input_random_new_user_credentials
    @email = "eddd#{rand(1...999999)}@gmail.com"
    password = "Password"

    @full_name_field.type("BobSaget")
    @signup_email_field.type(@email)
    @phone_number_field.type("977#{rand(1000000...9999999)}")
    @signup_password_field.type(password)
    @confirm_password_field.type(password)
  end

  def get_random_email
    @email
  end

  def click_sign_up_button
    @signup_btn.click
  end

  def skip_refer_code
    @skip_refer_btn.click
  end

  def skip_phone_verification
    @skip_verification_btn.click
  end
end
