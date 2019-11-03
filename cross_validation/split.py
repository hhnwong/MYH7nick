from sklearn.model_selection import train_test_split
#X contains the dependent columns from the CSV file, and Y is the predicted variable
X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.33, random_state=42)