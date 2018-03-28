Given(/^The user is on Google Search page$/) do
  visit GoogleSearchAnita
end

When(/^the user searches forasd (.*) in the textbox$/) do |sometestdata|
  p "what have you enetered???  #{sometestdata}"
  on(GoogleSearchAnita).setSearchText sometestdata

  sleep 5
#  on(GoogleSearchAnita).butsearchsubmit_element.click
end

Then(/^search relelated tado the data will be displayed$/) do
  x= on(GoogleSearchResultAnita).divnoresults_element.text
  p x
  p x.include?("About")
  p x.include?("Abouts")

  expect(x).should include"Abouts"
  #sleep 4
end

Then(/^verify the user is able to accesseses data from yml file$/) do
  on(GoogleSearchAnita).get_data_from_yml
end