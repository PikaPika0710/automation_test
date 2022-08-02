from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from prettytable import PrettyTable

VIETSHOP = 'https://vietdevshop.herokuapp.com/'


def open_browser():
    driver = webdriver.Chrome()
    driver.get(VIETSHOP)
    driver.implicitly_wait(5)
    return driver


def get_all_elements(by, value, driver):
    element_texts = []
    elements = driver.find_elements(by, value)
    for element in elements:
        element_texts.append(element.text)
    return element_texts


def log(item_list):
    for item in item_list:
        print(item)


def create_table(products, prices):
    myTable = PrettyTable(["Order", "Product", "Price"])
    for i in range(len(products)):
        myTable.add_row([(i+1), products[i], prices[i]])
    print(myTable)


if __name__ == "__main__":
    driver = open_browser()
    products = get_all_elements(By.CLASS_NAME, 'box_name', driver)
    prices = get_all_elements(By.CLASS_NAME, 'id-size-6-has-text-grey', driver)
    create_table(products, prices)
    driver.quit()
