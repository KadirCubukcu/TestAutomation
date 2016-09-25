Given (/^I visit "([^"]*)"$/) do |site_name|
  visit(site_name)
  sleep 5
end

