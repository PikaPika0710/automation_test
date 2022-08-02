from selenium.webdriver.common.by import By
from selenium.webdriver.common.keys import Keys


class DuckDuckGoSearchPage:
    SEARCH_INPUT = (By.ID, 'search_form_input_homepage')
    URL = 'https://duckduckgo.com/'

    def __init__(self, browser):
        self.browser = browser

    def load(self):
        self.browser.get(self.URL)

    def search(self, phase):
        # * get value from a tuple
        search_input = self.browser.find_element(*self.SEARCH_INPUT)
        search_input.send_keys(phase + Keys.ENTER)
