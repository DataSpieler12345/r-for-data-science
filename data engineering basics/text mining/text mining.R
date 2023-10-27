# BASICS ###############
library(janeaustenr)
library(dplyr)
library(stringr)
library(ggplot2)

#get_books, and add two columns, line number and chapter
#Jane Austen's all books
original_books <- austen_books() %>% 
  group_by(book) %>% 
  mutate(linenumber = row_number(),
         chapter = cumsum(str_detect(text, regex("^chapter [\\divxlc]",
                                                 ignore_case = TRUE)))) %>%
  ungroup()

#convert to tidytext format => one word per line
library(tidytext)
tidy_books <- original_books %>%
  unnest_tokens(word, text)


#remove stop words
data(stop_words)

tidy_books <- tidy_books %>%
  anti_join(stop_words)

#most common words
tidy_books %>%
  count(word, sort = TRUE) 

#create a plot

tidy_books %>%
  count(word, sort = TRUE) %>%
  filter(n > 600) %>%
  mutate(word = reorder(word, n)) %>%
  ggplot(aes(word, n)) +
  geom_col() +
  xlab(NULL) +
  coord_flip()


# SENTIMENT ANALYSIS ##########
# Download sentiments datasets ####
library(tidytext)
# bing from Bing Liu and collaborators
# categorizes words into positive and negative categories
get_sentiments("bing")

# nrc from Saif Mohammad and Peter Turney.
# categorizes words into categories of 
# positive, negative, anger, etc
install.packages("textdata")
get_sentiments("nrc")

# AFINN from Finn ?rup Nielsen
# assigns words with a score between -5 and 5
get_sentiments("afinn")




# get joyful words from nrc sentiments dataset
nrc_joy <- get_sentiments("nrc") %>% 
  filter(sentiment == "joy")

#Count in words Emma
tidy_books %>%
  filter(book == "Emma") %>%
  inner_join(nrc_joy) %>%
  count(word, sort = TRUE)

# get all sentiments with max 80 lines
library(tidyr)

jane_austen_sentiment <- tidy_books %>%
  inner_join(get_sentiments("bing")) %>%
  count(book, index = linenumber %/% 80, sentiment) %>%
  spread(sentiment, n, fill = 0) %>%
  mutate(sentiment = positive - negative)

#PLOT it

ggplot(jane_austen_sentiment, aes(index, sentiment, fill = book)) +
  geom_col(show.legend = FALSE) +
  facet_wrap(~book, ncol = 2, scales = "free_x")

#Word Cloud
library(wordcloud)

tidy_books %>%
  anti_join(stop_words) %>%
  count(word) %>%
  with(wordcloud(word, n, max.words = 100)) 

