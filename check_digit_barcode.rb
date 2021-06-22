puts "Please enter the number to check digit of an ISBN13 barcode"
# get input from the user
number = gets()
sum = 0
# converting the digits into an array
arr = number.to_s.split('')
# looping through the array to multiply them alternatively by 1 and 3
arr.each_with_index do |number, index|
  if (index % 2) != 0
    sum = sum + (number.to_i * 3)
  else
    sum = sum + number.to_i
  end
end
# take mod 10 of the summed figure and Subtract 10
subtract_10 = 10 - (sum % 10)
# end number is 10, make it 0
digit = (subtract_10 == 10) ? 0 : subtract_10
# pushing the last digits
arr << digit
# remove new lines if any
arr.delete("\n")
# get the digits from the array
puts "The complete ISBN is: #{arr.join}"

# Examples
# number = 9780143007234 will give end number 10
