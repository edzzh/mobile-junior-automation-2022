require "appium_lib"

opts = {
  caps: {
  "platformName": "Android",
  "deviceName": "OnePlus Pro 7",
  "automationName": "UiAutomator2",
  "app": "/Users/edgarshartmanis/Downloads/Foreveryng.apk",
  "udid": "f413a92d"
  },
  appium_lib: {
    server_url: "http://localhost:4723/wd/hub"
  }
}

$driver = Appium::Driver.new(opts, true)

$driver.start_driver
p $driver.methods