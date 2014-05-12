require 'rspec/expectations'
require 'selenium-webdriver'

APP_PATH = '/../../PlainNote/build/Release-iphonesimulator/PlainNote.app'
USERNAME = 'ShashikantJ'
API_KEY = ''
def capabilities
  {
    'browserName' => 'iOS',
    'platform' => 'Mac',
    'version' => '6.0',
    'app' => absolute_app_path
  }
end

def sauce_capabilities
  {

    'app' => 'sauce-storage:PlainNote.zip',
    'device' => 'iPhone Simulator',
    'username' => USERNAME,
    'access-key' => API_KEY,
    #'os' => 'iOS'
    #'browserName' => 'iPhone',
    'platform' => 'OS X 10.8',
    'version' => '6.0',
    'name' => 'Running PlainNote wit Cucumber and Appium',
    'passed' => 'true'

  }
end

def absolute_app_path
  File.join(File.dirname(__FILE__), APP_PATH)
end

def server_url
  "http://127.0.0.1:4723/wd/hub"
end

def sauce_url
  "http://#{USERNAME}:#{API_KEY}@ondemand.saucelabs.com:80/wd/hub"
end

def selenium
  @driver ||= Selenium::WebDriver.for(:remote, :desired_capabilities => capabilities, :url => server_url)
end

def sauce
  @sauce ||= Selenium::WebDriver.for(:remote, :desired_capabilities => sauce_capabilities, :url => sauce_url)
end

#After { @sauce.quit }
