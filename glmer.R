model <- glmer(polypharm$polypharmacy ~ df$gender + df$race + df$age + df$mhv1 + df$mhv2 + df$mhv3 + df$inptmhv
               + (1 | ui$V1), data = df, family = binomial)

predicted_prob <- predict(model, df, type = "response")
predicted_class <- ifelse(predicted_prob > 0.5, 1, 0)
confusion_matrix <- confusionMatrix(factor(predicted_class), factor(df$polypharmacy))
accuracy <- confusion_matrix$overall['Accuracy']
recall <- confusion_matrix$byClass['Sensitivity']
precision <- confusion_matrix$byClass['Precision']

accuracy
recall
precision


# ROC
roc_obj <- roc(df$polypharmacy, predicted_prob)
auc_value <- auc(roc_obj)
print(paste("AUC:", auc_value))
plot(roc_obj, main = "ROC Curve", col = "red", lwd = 2)


