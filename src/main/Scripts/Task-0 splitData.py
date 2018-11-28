import pandas as pd

df = pd.read_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug2.csv")

df1 = df.sample(int(len(df)/5))
df2 = df.sample(int(len(df)/5))
df3 = df.sample(int(len(df)/5))
df4 = df.sample(int(len(df)/5))
df5 = df.sample(int(len(df)/5))

df1.to_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug21.csv")
df2.to_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug22.csv")
df3.to_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug23.csv")
df4.to_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug24.csv")
df5.to_csv("C:\\Users\\acer\\Documents\\Advance ML Lab\\Lab1\\drug25.csv")