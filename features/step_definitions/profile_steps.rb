
Given(/^I have filled in my profile details$/) do
  pending # express the regexp above with the code you wish you had
end

Then(/^I should see the first step in the profile form$/) do
  find_field("Your name")
  # find_field("Your Email").should have_content("john@doe.com")
  find_field("Location")
  # find_field("Which Postcodes can you work in?")
end

Then(/^I should be able to see my profile page$/) do
  pending # express the regexp above with the code you wish you had
end

