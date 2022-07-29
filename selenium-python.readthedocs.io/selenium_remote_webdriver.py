from selenium import webdriver
from selenium.webdriver.common.desired_capabilities import DesiredCapabilities


driver = webdriver.Remote(
    command_executor='http://172.17.0.1:4444',
    desired_capabilities=DesiredCapabilities.CHROME
)

# driver = webdriver.Remote(
#     command_executor='http://127.0.0.1:4444',
#     desired_capabilities={'browserName': 'htmlunit',
#                           'version': '2',
#                           'javascriptEnabled': True})
driver.get('https://www.google.com')
