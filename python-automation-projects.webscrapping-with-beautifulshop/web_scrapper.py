from bs4 import BeautifulSoup
import requests
import webbrowser


def get_html_result_from_webpage(URL, tag_name, class_name):
    page = requests.get(URL)
    soup = BeautifulSoup(page.content, 'html.parser')
    return soup.find_all(tag_name, class_=class_name)


def get_blog_from_webpage(html_result):
    blog = {}
    num = 0
    for result in html_result:
        blog[result.getText().replace('\xa0', ' ')] = result.find("a")["href"]
        num += 1
        print(num, ":", result.getText())
    return blog


def get_comments(html_result):
    comments = []
    num = 0
    for result in html_result:
        comments.append(result.getText().strip())
    if len(comments) == 0:
        print("There are no comments from blog")
    else:
        print("Comments from blog:")
        for comment in comments:
            num += 1
            print(num, ": ", comment)


def get_url_by_blog_name(blog):
    title = input("Enter title of blog post: ")
    return blog[title]


def __main__():
    url = "https://curiouspumpkincom.wordpress.com/blog/"
    blogs_html_result = get_html_result_from_webpage(url, 'h2', 'entry-title')
    blog = get_blog_from_webpage(blogs_html_result)

    blog_url = get_url_by_blog_name(blog)
    blog_html_result = get_html_result_from_webpage(
        blog_url, 'div', 'wp-block-latest-comments__comment-excerpt')
    get_comments(blog_html_result)


__main__()
