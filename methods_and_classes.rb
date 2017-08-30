# # Create a method for converting pounds to kilos  1lb = 0.45kg

# def pou#nds_to_kilos(pounds)
# 	pounds * 0.45
# end	

# puts pounds_to_kilos(50)


# # Create a method that takes a String argument and outputs the String in reverse.
# # (But you can't use .reverse!)

# def rev_string(string)
# 	length = string.length
	
# 		while length != 0
# 			print string[length-1]
# 			length -=1
# 	 	end
# end	


# puts rev_string("masterful")




# #Create a method that converts an Array into a Hash
# #(indexes become keys)



# def to_hash(array)
# 	hash = {}

# 	array.each_with_index do |a, i|
# 		hash[i] = a
# 	end

# 	return hash
# end		


# my_array =["pizza", "burger", "taco", "pita"]


# my_hash = to_hash(my_array)

# my_hash.each do |k, v|
# 	puts "#{k} => #{v}"
# end	


# In Ruby 6 / 4 == 1.
 
# But what if we want the remainder also?
# Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.
 
# If either of the numbers is not an Integer, then don't accept the number and ask again.
 
# Do not accept zero (0) as a number.

# method to get the quotient and the remainder based on the largest number
def remainder(array)

	if array[0] > array[1]
		puts "The quotient of these two number is #{array[0]/array[1]}.  The remainder is #{array[0]%array[1]}."

	else
	puts "The quotient of these two number is #{array[1]/array[0]}.  The remainder is #{array[1]%array[0]}."

	end

end

#method to check that we are using numbers
def int_check(num1)

	check = true

	if num1.include? "." or num1.include? "," or num1.include? " "
		check = false	
	elsif num1.to_i == 0
		check	= false
	end
	
	return check
end		

#--------------------------------------""
#main program below	

num_array = Array.new

2.times do
number_check = false

	while number_check == false
		puts "Give me a whole number:"
		user_num = gets.chomp 
		number_check = int_check(user_num)
			if number_check == true
				num_array.push(user_num.to_i)
			else
				print "Not a valid entry!  "	
			end	
	end	
end

remainder(num_array)


