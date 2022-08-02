from selenium.webdriver.common.by import By


class DuckDuckGoResultPage:
    SEARCH_INPUT = (By.ID, 'search_form_input')
    RESULT_LINKS = (By.CLASS_NAME, 'eVNpHGjtxRBq_gLOfGDr')

    def __init__(self, browser):
        self.browser = browser

    def result_link_titles(self):
        result_links = self.browser.find_elements(*self.RESULT_LINKS)
        return [link.text for link in result_links]

    def search_input_value(self):
        return self.browser.find_element(*self.SEARCH_INPUT).get_attribute('value')

    def title(self):
        return self.browser.title
