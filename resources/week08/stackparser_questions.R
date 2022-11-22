library(tidyverse)

parse_div_summary <- function(current_div_summary){
  one_summary_dict <- 
    data.frame(unit=current_div_summary %>% 
                 html_element("span.s-post-summary--stats-item-unit") %>% 
                 html_text(),
               number=current_div_summary %>% 
                 html_element("span.s-post-summary--stats-item-number") %>% 
                 html_text()    
    )
  one_summary_dict
}

parse_all_summaries <- function(current_post){
  
  all_div_summaries <- current_post %>% html_elements("div.s-post-summary--stats-item")
  
  all_summaries <- lapply(all_div_summaries, parse_div_summary)
  all_summaries <- bind_rows(all_summaries) # R's equivalent to python's pd.concat
  all_summaries 
}

parse_post_div <- function(current_post){
  
  post_title <- 
    current_post %>% 
    html_element("h3.s-post-summary--content-title") %>%  
    html_text() %>% 
    str_trim()
  post_time  <- 
    current_post %>% 
    html_element("time span") %>%  
    html_attr("title")
  
  df_summary <- parse_all_summaries(current_post)
  
  # We can reuse the dataframe that returned from `parse_all_summaries`
  df_summary$post_title <- post_title
  df_summary$post_time <- post_time
  
  df_summary 
  
}

parse_all_posts <- function(response_html){
  
  all_posts <-  
    html_element(response_html, css="div#questions") %>% 
    html_elements(css="div.s-post-summary")
  
  df_results <- bind_rows(lapply(all_posts, parse_post_div))
  
  # Optional: If you are also annoyed at the zero indices
  # df_results.reset_index(drop=True, inplace=True)
  df_results 
  
}