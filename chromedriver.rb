# require selenium-webdriver
require 'selenium-webdriver'

# launch firefox browser
driver = Selenium::Webdriver.for :chrome

# maximize window
driver.manage.window.maximize

# navigate to the website
driver.get 'http://www.newtours.demoaut.com/'

# find element for username
username = driver.find_element(:name, 'userName')

# type selenium in username text box
username.send_keys('selenium')

# find password textbox
password = driver.find_element(:name, 'password')

# type selenium into password textbox
password.send_keys('selenium')

sign_in_button = driver.find_element(:name, 'login')
sign_in_button.click
sleep(*duration 3)

# validate/assert if title of next page is correct
puts driver.title
sleep(*duration 3)
if driver.title == 'Find a Flight: Mercury Tours:'
  puts 'Test passed'
else
  raise 'Test failed'
end



