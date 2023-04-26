currencyValueContainer = {
  "USD" => 0.0122,
  "IQR" => 0.0037,
  "GBP" => 0.0098,
  "JPY" => 1.634,
  "EUR" => 0.0111
}

puts "iterating hash  --------->"

currencyValueContainer.each do |key,value|
puts "#{key} -->  #{value}"
end
