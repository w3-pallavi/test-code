puts "Please enter the number to check digit of an ISBN13 barcode"
number = gets()
sum = 0
arr = number.to_s.split('')
arr.each_with_index do |number, index|
  if (index % 2) != 0
    sum = sum + (number.to_i * 3)
  else
    sum = sum + number.to_i
  end
end
subtract_10 = 10 - (sum % 10)
digit = (subtract_10 == 10) ? 0 : subtract_10
arr << digit
arr.delete("\n")
puts "The complete ISBN is: #{arr.join}"

# Examples
# number = 9780143007234 will give end number 10
