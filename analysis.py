import pandas as pd

df = pd.read_csv("billing_data.csv")

print("Total Revenue:", df["charge_amount"].sum())

print("\nClaims by Status:")
print(df["claim_status"].value_counts())

print("\nError Rate:")
print(df["error_flag"].value_counts())
