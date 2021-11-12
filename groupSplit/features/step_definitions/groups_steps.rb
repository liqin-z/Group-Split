
Given /the following groups exist/ do |groups_table|
  groups_table.hashes.each do |group|
    Group.create group
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(page.body.index(e1) < page.body.index(e2))
end

Then /I should see all the groups/ do
  # Make sure that all the movies in the app are visible in the table
  Group.all.each do |group|
    step %{I should see "#{group.id}"}
  end
end

# When /^(?:|I )select datetime "([^ ]*) ([^ ]*) ([^ ]*)" as the "([^"]*)"$/ do |year, month, day, field|
#   select(year,   :from => "#{field}_1i")
#   select(month,  :from => "#{field}_2i")
#   select(day,    :from => "#{field}_3i")
# end
