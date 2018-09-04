Capybara.register_driver :chrome_desktop_driver do |app|
  preferences = {
      "profile.managed_default_content_settings.notifications" => 2,
      "profile.managed_default_content_settings.popups" => 2
  }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
          prefs: preferences,
          args: [
            "--start-maximized",
            "--disable-notifications"
          ]
      }
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end
