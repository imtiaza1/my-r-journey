data()
data(EuStockMarkets)
# save file 
 # in csv
write.csv(EuStockMarkets, "C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/EuStockMarkets.csv")
# now excel
library(writexl)
EuStockMarkets_df <- as.data.frame(EuStockMarkets)
write_xlsx(EuStockMarkets_df, 
  "C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/EuStockMarkets.xlsx")
View(EuStockMarkets)
library(dplyr)
df<-starwars
write_xlsx(df, 
           "C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/starwars.xlsx")
sales_df<-read.csv("C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/retail_sales_dataset.CSV")
print(sales_df)
View(sales_df)
str(sales_df)
summary(sales_df)
age_greater_than_34<-sales_df%>%
  filter(Age>34)%>%
  arrange(Age)
View(summary(sales_df))
fashion_boutique_data<-read.csv("C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/fashion_boutique_dataset.CSV")
View(fashion_boutique_data)
print(fashion_boutique_data)
