Capybara.register_driver :chrome_default_driver do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end
