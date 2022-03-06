Feature: Buying, adding to wishlist feature

  @WIP
  Scenario: Adding an item to the wishlist
    Given A new user is registered and logged in
    And User goes to categories page
    And User opens Hair Combs category
    And User adds the first item to the wishlist
    And User goes back to main page and then to wishlist
    And User refresh wishlist
    Then The added item is shown in the wishlist
    And User deletes the item
    Then Empty wishlist image and text is shown