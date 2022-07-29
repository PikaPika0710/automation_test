from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.support.ui import WebDriverWait
from selenium.webdriver.support import expected_conditions as EC


# IMPLICIT_WAIT
webdriver = webdriver.Chrome()
webdriver.get('https://vietdevshop.herokuapp.com')

# webdriver.implicitly_wait(10)

# element = webdriver.find_element(
#     By.XPATH, '//*[@id="navbar-menu"]/div[2]/div[4]/div/a[2]')
# # if element was found, webdriver doesnt need to wait,
# # else it will wait 10 seconds before throws NoSuchElementException
# element.click()


# EXPLICIT_WAIT
# wait for expected conditions or maximum time exceeded
elm = WebDriverWait(webdriver, 10).until(EC.visibility_of_element_located(
    (By.XPATH, '//*[@id="navbar-menu"]/div[2]/div[4]/div/a[2]')))
elm.click()
