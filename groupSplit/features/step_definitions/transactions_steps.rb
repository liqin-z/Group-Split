
Given /the following transactions exist/ do |transactions_table|
  transactions_table.hashes.each do |transaction|
    Transaction.create movie
  end
end

Then /I should see "(.*)" before "(.*)"/ do |e1, e2|
  #  ensure that that e1 occurs before e2.
  #  page.body is the entire content of the page as a string.
  expect(page.body.index(e1) < page.body.index(e2))
end

When /I (un)?check the following ratings: (.*)/ do |uncheck, rating_list|
  rating_list.split(', ').each do |rating|
    step %{I #{uncheck.nil? ? '' : 'un'}check "ratings_#{rating}"}
  end
end

Then /I should see all the transactions/ do
  # Make sure that all the movies in the app are visible in the table
  Transaction.all.each do |transaction|
    step %{I should see "#{transaction.id}"}
  end
end