# # # 1. Create a program that will take two numbers and then gives the user a choice of what kind of arthimetic they'd like done to the two numbers. Include at least: add, subtract, multiply and divide. This time you really gotta use methods!


# def add(num1, num2)
# 	sum = num1 + num2
# end	

# def sub(num1, num2)
# 	diff = (num1 - num2).abs
# end

# def multiply(num1, num2)
# 	prod = num1 * num2
# end

# def divide(num1, num2)
# 	quot =  num1 > num2 ? num1.to_f/num2.to_f : num2.to_f/num1.to_f
	
# end		


# #-------- MAIN PROGRAM -------------
# num =[]

# puts "Give me 2 number seperated by a comma (no spaces):"

# num = gets.chomp.split(",") # I split input into an array

# #set variables to equal the elements of the array
# num1 = num[0].to_i
# num2 = num[1].to_i

# puts "Choose an option from 1 to 4:"
# puts "----------------------------"
# puts "1. add "
# puts "2. subtract"
# puts "3. multiply"
# puts "4. divide"


# option = gets.chomp.to_i

# puts option == 1 ? "Your numbers added are #{add(num1, num2)}" : (option == 2 ? "Your numbers subtracted are #{sub(num1, num2)}" : (option == 3 ? "Your numbers multiplied are #{multiply(num1, num2)}" : (option == 4 ? "Your numbers divided are #{divide(num1, num2)}" : "Sorry that's not an option")))


# # #-----------------------------------------------------------------------------------#


# # # 2. The Remainder Challenge!

# # # In Ruby 6 / 4 == 1.

# # # But what if we want the remainder also?

# # # Write a program that asks for two (2) Integers, divides the first by the second and returns the result including the remainder.

# # # If either of the numbers is not an Integer, then don't accept the number and ask again.

# # # Do not accept zero (0) as a number.




# def get_numbers

# 	puts "Please enter any integer (except 0): "
# 	num = gets.chomp

# 	if integer_check(num) == false
# 		puts "This is not an integer. Please enter an integer."
# 		get_numbers
# 	else
# 		return integer_check(num)
# 	end
# end		

# def integer_check(num)

# 	if num.to_i == 0 
# 		return false
# 	elsif
# 		num.include? "."
# 		return false
# 	else
# 		new_num = num.to_i
# 		return new_num	
# 	end	

# end	

# def get_remainder(num1,num2)
# 	quotient = num1/num2
# 	remainder = num1%num2

# 	if remainder !=0
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient} with a remainder of #{remainder}."
# 	else
# 		puts "Dividing #{num1} by #{num2} gives you #{quotient}"
# 	end		

# end	

# #This is my main program
# num1 = get_numbers
# num2 = get_numbers

# puts get_remainder(num1, num2)

#-----------------------------------------------------------------------------------#

# 3.Build-a-Quiz
# Build a quiz program that gets a few inputs from the user including:
# number of questions
# questions
# answers
# Then clear the screen and begin the quiz. Keep score!
# Back



question_hash = {}

def quiz_builder
	new_hash = {}
	puts "How many questions would you like to have in your quiz?"

	num = gets.chomp.to_i

	num.times do 
		puts "What is your question?"
		question = gets.chomp
		puts "What is the answer?"
		answer = gets.chomp.downcase


		new_hash[question] = answer
	end	
	return new_hash
end	

question_hash = quiz_builder
length = question_hash.length


system("clear")

puts "Time for the test! There are #{length} questions."

score = 0 
question_hash.each do |q, a|

	puts "#{q}"
	user = gets.chomp.downcase
	if user == a
			puts "Correct!"
			score += 1
	else
			puts "Sorry, the answer is #{a}"
	end			


	# puts user == a ? ("Correct!"; score +=1) : "Sorry, the answer is #{a}"	
end	

 puts "Your final score is #{score} out of #{length} questions correct."

