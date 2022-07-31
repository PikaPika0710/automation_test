from selenium.webdriver.common.by import By


class DuckDuckGoResultPage:
    SEARCH_INPUT = (By.ID, 'search_form_input')
    RESULT_LINKS = (By.CLASS, 'eVNpHGjtxRBq_gLOfGDr')
    def __init__(self, browser):
        self.browser = browser

    def result_link_titles(self):
        return []

    def search_input_value(self):
        return ""
    def title(self):
        return ""
