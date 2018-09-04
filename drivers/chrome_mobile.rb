Capybara.register_driver :chrome_mobile_driver do |app|
  preferences = {
      "profile.managed_default_content_settings.notifications" => 2,
      "profile.managed_default_content_settings.popups" => 2
  }
  caps = Selenium::WebDriver::Remote::Capabilities.chrome(
      'chromeOptions' => {
          prefs: preferences,
          args: [
            "--disable-notifications",
            "--user-agent='Mozilla/5.0 (Linux; Android 5.0; SM-G900P Build/LRX21T) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/68.0.3440.106 Mobile Safari/537.36'"
          ]
      }
  )
  Capybara::Selenium::Driver.new(app, browser: :chrome, desired_capabilities: caps)
end
