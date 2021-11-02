
Given /the following transactions exist/ do |transactions_table|
  transactions_table.hashes.each do |transaction|
    Transaction.create transaction
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(page.body.index(e1) < page.body.index(e2))
end

Then /I should see all the transactions/ do
  # Make sure that all the movies in the app are visible in the table
  Transaction.all.each do |transaction|
    step %{I should see "#{transaction.id}"}
  end
end

When /^(?:|I )select datetime "([^ ]*) ([^ ]*) ([^ ]*)" as the "([^"]*)"$/ do |year, month, day, field|
  select(year,   :from => "#{field}_1i")
  select(month,  :from => "#{field}_2i")
  select(day,    :from => "#{field}_3i")
end

When /^(?:|I )select "([^ ]*)" as the "([^"]*)"$/ do |choice, field|
  select(choice,   :from => "#{field}")
end
