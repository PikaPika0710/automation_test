from re import A
from selenium import webdriver
import pytest
import json


@pytest.fixture
def config(scope='session'):
    with open('config.json') as config_file:
        config = json.load(config_file)
    assert config['browser'] in ['Chrome', 'Firefox', 'Headless Chrome']
    assert isinstance(config['implicitly_wait'], int)
    assert config['implicitly_wait'] > 0
    return config


@pytest.fixture
def browser(config):
    # Initialize the Chrome Driver instance
    if config['browser'] == 'Chrome':
        driver = webdriver.Chrome()
    elif config['browser'] == 'Firefox':
        driver = webdriver.Firefox()
    elif config['browser'] == 'Headless Chrome':
        opts = webdriver.ChromeOptions()
        opts.add_argument('headless')
        driver = webdriver.Chrome(options=opts)
    else:
        raise Exception(f'Browser "{config["browser"]}" is not supported.')

    # Make its calls wait up to 10 seconds for elements to appear
    driver.implicitly_wait(10)

    # Return the webdriver instance for the setup
    yield driver

    # Quit the webdriver instance for the cleanup
    driver.quit()
