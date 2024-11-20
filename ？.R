beta_df1 <- as.data.frame(results$beta[, , 1])
beta_df2 <- as.data.frame(results$beta[, , 2])
beta_df3 <- as.data.frame(results$beta[, , 3])
beta_df4 <- as.data.frame(results$beta[, , 4])

# 检查dataframe的维度
dim(beta_df)
# 输出结果应该是 [1] 1000    8

# 将dataframe输出为CSV文件
write.csv(beta_df1, "beta_data1.csv", row.names = FALSE)
write.csv(beta_df2, "beta_data2.csv", row.names = FALSE)
write.csv(beta_df3, "beta_data3.csv", row.names = FALSE)
write.csv(beta_df4, "beta_data4.csv", row.names = FALSE)


ui <- as.data.frame(results$u[,,2])
write.csv(ui, "u_i.csv", row.names = FALSE)
