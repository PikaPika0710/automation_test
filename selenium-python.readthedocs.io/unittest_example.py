from lib2to3.pgen2 import driver
import unittest
from selenium.webdriver.common.keys import Keys
from selenium.webdriver.common.by import By
from selenium import webdriver


class PythonOrgSearch(unittest.TestCase):
    def setUp(self):
        self.driver = webdriver.Chrome()

    def test_search_in_python_org(self):
        driver = self.driver
        driver.get("http://www.python.org")
        self.assertIn("Python", driver.title)
        element = driver.find_element(By.NAME, "q")
        element.send_keys("pycom")
        element.send_keys(Keys.RETURN)
        self.assertIn("No results found.", driver.page_source)

    def tearDown(self):
        # close 1 current tab
        self.driver.close()


        # close chrome
        # self.driver.quit()
if __name__ == "__main__":
    unittest.main()
