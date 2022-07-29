from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By

webdriver = webdriver.Chrome()
# webdriver.get('https://vietdevshop.herokuapp.com/')
webdriver.get("https://www.google.com")

current_title = webdriver.title
expected_title = 'Home | VietShop'
assert current_title == expected_title, f"Unexpected title found: {current_title}"


login_css_selector = '#navbar-menu > div.navbar-end > div.navbar-item > div > a.button.is-rounded.is-light'

login_element = webdriver.find_element(By.CSS_SELECTOR, login_css_selector)
login_element.click()


current_url = webdriver.current_url
expected_url = 'https://vietdevshop.herokuapp.com/login'

assert current_url == expected_url, f"Unexpected url found: {current_url}"


print("PASS")
