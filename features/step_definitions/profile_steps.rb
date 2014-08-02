
Given(/^I have filled in my profile details$/) do
  fill_in "profile[your_name]", :with => "John Doe"
  fill_in "profile[location]", :with => "London, England"
  click_button "Next"
end

Then(/^I should see the first step in the profile form$/) do
  find_field("Your name")
  # find_field("Your Email").should have_content("john@doe.com")
  find_field("Location")
  # find_field("Which Postcodes can you work in?")
end

Then(/^I should be able to see my profile page$/) do
  page.should have_content("John Doe")
  page.should have_content("London, England")
end

