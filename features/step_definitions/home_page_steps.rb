
# Given(/^there's a comment titled "(.*?)" with "(.*?)" as content$/) do |arg1, arg2|
# @comment = FactoryGirl.create(:comment, title: title, description: description)
# end
Given(/^there's a comment titled "(.*?)" with "(.*?)" content$/) do |title, description|
@comment = FactoryGirl.create(:comment, title: title, description: description)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the "(.*?)" comment$/) do |title|
  @comment = Comment.find_by_title(title)

  page.should have_content(@comment.title)
  page.should have_content(@comment.description)
end
