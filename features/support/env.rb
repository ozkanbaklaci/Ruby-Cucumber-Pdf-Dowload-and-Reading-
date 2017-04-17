#encoding:UTF-8

require 'cucumber'
require 'rspec'
require 'selenium-webdriver'
require 'capybara'
require 'capybara/dsl'
require 'rubygems'
require 'pdf-reader'






Capybara.run_server = false
Capybara.default_driver = :selenium
Capybara.javascript_driver = :selenium
Capybara.default_selector = :css
Capybara.default_max_wait_time = 5
Capybara.ignore_hidden_elements = false
Capybara.exact = true
Capybara.app_host = 'https://www.google.com.tr/'
World(Capybara::DSL)







Capybara.register_driver :selenium do |app|
  Capybara::Selenium::Driver.new(app, :browser => :chrome,
                                 desired_capabilities: {
                                     'chromeOptions' => {
                                         'args' => [ "--window-size=1920,1080" ],
                                         'prefs' => {
                                             'download.default_directory' => DownloadHelper::PATH.to_s,
                                             'download.prompt_for_download' => false,
                                             'plugins.plugins_disabled' => ["Chrome PDF Viewer"]



                                         }
                                     }

                                 }
  )

end

