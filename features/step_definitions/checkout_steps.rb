Given(/^A new user is registered and logged in$/) do
  steps %{
    Given User has open login page
    And User goes to Sign Up page
    And User inputs new user credentials
    And User click Sign Up
    And User skips the refer code screen
    And User skips the phone verification screen
  }
end

And(/^User goes to categories page$/) do
  @screens.main_screen.open_category_page
end

And(/^User opens (.*) category$/) do |category|
  @screens.products_screen.open_chosen_category(category)
end

And(/^User adds the first item to the wishlist$/) do
  @screens.products_screen.add_first_item_to_wishlist
end

And(/^User goes back to main page and then to wishlist$/) do
  @screens.products_screen.click_back_button
  @screens.main_screen.open_wishlist
end

Then(/^The added item is shown in the wishlist$/) do
  @screens.products_screen.verify_added_item
end

And(/^User deletes the item$/) do
  @screens.products_screen.delete_wishlist_item
end

Then(/^Empty wishlist image and text is shown$/) do
  @screens.products_screen.verify_empty_wishlist
end

And(/^User refresh wishlist$/) do
  @screens.products_screen.refresh_wishlist
end