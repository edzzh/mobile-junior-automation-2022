class MainScreen
  def initialize
    @my_profile_button = Elements.new(:id, "social_nav")
  end

  def my_profile_button_exists
    @my_profile_button.get_element
  end
end
