#encoding: UTF-8

Before('@fast') do
  binding.pry
  Capybara.default_wait_time = 1
end

Before('@slow') do
  Capybara.default_wait_time = 60
  binding.pry
end