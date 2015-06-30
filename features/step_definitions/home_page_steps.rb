Given(/^there's a comment titled "(.*?)" with "(.*?)" content$/) do |title, content|
@comment = FactoryGirl.create(:comment, title: title, description: description)
end

When(/^I am on the homepage$/) do
  visit root_path
end

Then(/^I should see the "(.*?)" comment$/) do |title|
  @comment = Post.find_by_title(title)

  page.should have_content(@comment.title)
  page.should have_content(@comment.description)
end
