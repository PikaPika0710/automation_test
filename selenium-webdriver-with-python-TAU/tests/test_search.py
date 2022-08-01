# Conventional: folder under root name tests for containing test cases
# Test case python files was named test_*.py
# Every function must be prefix with test keyword
from pages.result import DuckDuckGoResultPage
from pages.search import DuckDuckGoSearchPage


def test_basic_duckduckgo_search(browser):
    search_page = DuckDuckGoSearchPage(browser)
    result_page = DuckDuckGoResultPage(browser)
    PHRASE = 'panda'

    # Given the duckduckgo home page is displayed
    search_page.load()

    # When the user searches for "panda"
    search_page.search(PHRASE)

    # Then the search result query is "panda"
    assert PHRASE == result_page.search_input_value()

    # And the search result links pertain to "panda"

    titles = result_page.result_link_titles()
    print(titles)
    matches = [t for t in titles if PHRASE.lower() in t.lower()]
    assert len(matches) > 0

    # Then the search result title contains "panda"
    assert PHRASE in result_page.title()
