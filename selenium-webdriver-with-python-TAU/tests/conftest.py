from this import d
from selenium import webdriver
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
import pytest


@pytest.fixture
def browser():
    # Initialize the Chrome Driver instance
    driver = webdriver.Chrome()
    # Make its calls wait up to 10 seconds for elements to appear
    driver.implicitly_wait(10)
    # Return the webdriver instance for the setup
    yield driver
    # Quit the webdriver instance for the cleanup
    driver.quit()
