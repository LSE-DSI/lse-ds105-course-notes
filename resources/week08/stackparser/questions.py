import pandas as pd
from bs4 import BeautifulSoup

def parse_div_summary(current_div_summary):
    """
    # Let's write documentation together
    """
    
    one_summary_dict = pd.DataFrame({"unit"   : current_div_summary.find("span",class_="s-post-summary--stats-item-unit").get_text(),
                                     "number" : current_div_summary.find("span", class_="s-post-summary--stats-item-number").get_text()}, index=[0])
    return one_summary_dict

def parse_all_summaries(current_post):
    all_summaries = pd.concat([parse_div_summary(div_summary) for div_summary in current_post.find_all("div", class_="s-post-summary--stats-item")])
    return all_summaries

def parse_post_div(current_post):
    post_title = current_post.find("h3", class_="s-post-summary--content-title").get_text().strip()
    post_time  = current_post.find("time").span["title"]
    
    df_summary = parse_all_summaries(current_post)
    # We can reuse the dataframe that returned from `parse_all_summaries`
    df_summary["post_title"] = post_title
    df_summary["post_time"]  = post_time
    return df_summary

def parse_all_posts(soup):
    all_posts = soup.find("div", id="questions").find_all("div", class_="s-post-summary")
    df_results = pd.concat([parse_post_div(current_post) for current_post in all_posts])
    
    # Optional: If you are also annoyed at the zero indices
    # df_results.reset_index(drop=True, inplace=True)
    return df_results