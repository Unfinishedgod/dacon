library(tidyverse)
library(tidytext)
# library(tidymodels)

# install.packages("infer")
# install.packages("tidymodels")
# library(KoNLP)
# remotes::install_github('haven-jeon/KoNLP', upgrade = "never", INSTALL_opts=c("--no-multiarch"))


topic_dic <- read_csv("dacon_news_r/topic_dict.csv")
train_df <- read_csv("dacon_news_r/train_data.csv")
test_df <- read_csv("dacon_news_r/test_data.csv")

train_df <- train_df %>% 
  left_join(topic_dic)

train_df

test_df %>% 
  unnest_tokens( word, title, "words") %>% 
  filter(str_detect(word, "[가-힣]")) %>%
  count(word, sort = TRUE) %>% 
  filter(nchar(word) != 1)

dfdf %>% 
  count(topic)

df_1 <- dfdf %>% 
  unnest_tokens( word, title, "words") # output, input, token


dfdf %>% 
  filter(index == "712")
  

df_1 %>% 
  filter(topic == "IT과학") %>% 
  filter(word == "첫")

df_1 %>% 
  filter(topic == "IT과학") %>% 
  filter(str_detect(word, "[가-힣]")) %>%
  count(word, sort = TRUE) %>% 
  select(word) %>% 
  t() %>% 
  as.character()



