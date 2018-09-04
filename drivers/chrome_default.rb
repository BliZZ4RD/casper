Capybara.register_driver :chrome_default_driver do |app|
  Capybara::Selenium::Driver.new(app, browser: :chrome)
end

Capybara::Screenshot.register_driver(:chrome_default_driver) do |driver, path|
  driver.browser.save_screenshot(path)
end
