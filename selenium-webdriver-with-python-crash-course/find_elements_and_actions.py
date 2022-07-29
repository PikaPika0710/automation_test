from selenium import webdriver
from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys
import time
import pdb
webdriver = webdriver.Chrome()
webdriver.get('https://vietdevshop.herokuapp.com')


element = webdriver.find_element(
    By.XPATH, '//*[@id="wrapper"]/section/div/section/div/p[1]')

print(element)
print(type(element))
print(element.text)


search_box = webdriver.find_element(
    By.XPATH, '//*[@id="navbar-menu"]/div[1]/div/form/div/div[1]/input'
)

search_box.send_keys('Skirt')
# search_box.send_keys(Keys.ENTER)

time.sleep(5)
# webdriver.close()


# stop and test results in terminal
pdb.set_trace()
