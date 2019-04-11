# Computes factorial of the input number and returns it
# Time complexity: O(n), where n is the value of number. The loop will run number - 2 times, so the
# amount of time the loop runs varies linearly based on the value of the input number.
# Space complexity: O(1), because the method will store the same amount of data no matter
# the value of the input number. Question - initially I wrote this method creating a new variable on line 19,
# above lesser_number. The variable was called total, and the value was set to the value of the number. Instead of the loop
# multiplying number by lesser_number and constantly changing the value of number to store the factorial value, total stored
# this value. Would this be a better solution, so as not to change the value of number? Or is eliminating the use of another
# variable more space-efficient?

def factorial(number)
  if number == nil
    raise ArgumentError, "Please enter an integer, you've entered nil."
  elsif number == 0
    return 1
  elsif number < 0
    raise ArgumentError, "Please enter a positive number."
  end

  lesser_number = number - 1
  (number - 2).times do
    number *= lesser_number
    lesser_number -= 1
  end

  return number
end
