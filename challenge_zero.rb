# Savanna Bergen WEBD-3011
# Write a Ruby program to calculate the after tax value of a specific dollar amount.

# Define a method to determine a short message
def short_message(grand_total)
    case
    when (grand_total <= 5)
     return "Pocket Change"
    when (grand_total > 5 && grand_total < 20)
     return "Wallet Time"
    when (grand_total >= 20)
     return "Charge It!"
    end
end

# Define a method to calculate after-tax value
def calculate_after_tax_value(amount, tax_rate)
  # Calculate after-tax value
  grand_total = amount * (1 + tax_rate)
  return grand_total.round(2) # Round to 2 decimal places
end

# Define a method to calculate PST
def calculate_pst(amount)
  # Calculate pst_value
  pst_value = amount * PST_RATE
  return pst_value.round(2)
end

# Define a method to calculate GST
def calculate_gst(amount)
  # Calculate gst_value
  gst_value = amount * GST_RATE
  return gst_value.round(2)
end

# Get user input
puts "Enter the subtotal: "
amount = gets.to_f

# Tax Rates
PST_RATE = 7 / 100.0
GST_RATE = 5 / 100.0
tax_rate = PST_RATE + GST_RATE

# Calculate and display tax values
grand_total = calculate_after_tax_value(amount, tax_rate)
short_message = short_message(grand_total)
pst_amount = calculate_pst(amount)
gst_amount = calculate_gst(amount)
puts "Subtotal: $#{amount}"
puts "PST: $#{pst_amount}"
puts "GST: $#{gst_amount}"
puts "Grand Total: $#{grand_total} #{short_message}"
