data()
data(EuStockMarkets)
# save file 
 # in csv
write.csv(EuStockMarkets, "C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/EuStockMarkets.csv")
# now excel
library(writexl)
EuStockMarkets_df <- as.data.frame(EuStockMarkets)
write_xlsx(EuStockMarkets_df, "C:/Users/Pcw/OneDrive/Desktop/R/toturials/data/EuStockMarkets.xlsx")
View(EuStockMarkets)
print()