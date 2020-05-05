#An array that will contain student names
st_names = [ ]
#An array that will store student ID numbers
st_ids = [ ]
#An array that will contain student email addresses
st_emails = [ ]

#Write a times loop that asks the user to enter in 5 student names (first and last name) and store those values in the first array in all uppercase even if the information is not entered by the user in uppercase.
i = 0 
5.times do |i| 
puts "Please enter Student's First and Last Name:"
name = gets.chomp.to_s.upcase 
st_names << name 
i += 1 
end 

p st_names 

#Write a times loop to generate random student ID numbers from 111111 to 999999 and put these values to the student ID number array.
n = 0 
5.times do |n| 

new_id = rand(111111..999999)
st_ids << new_id 
n +=1
end 
p st_ids
#Write a times loop to generate student email addresses in the format: (first inital)+(last name)+(last 3 digits of student ID number)@adadevelopersacademy.org


#all calculations are correct(lname,lthree) however, 
#loop will not run: 

#st_email_count = st_emails.length 
b = 0 
5.times do |b|
l_name = st_names[b].split(' ')
 
l_three = st_ids[b].digits[0..2].join.to_i


st_email = "#{st_names[b].chr + l_name.last + l_three.to_s}" + "@adadevelopersacademy.org"

st_emails << st_email 
b += 1 
end 

puts st_emails
#so the first issue was: 
#I needed to write the specific amount of times, because the count.times didnt work? 
#2nd: l name didnt need to be 
#converted into a string- it already was one

#3rd: l_three wasnt converted into a string in the original. 
#4th: 

#2nd issue: 
#st_email_count.times do |b| 

 #l_name.to_s = st_names[b].split(' ')
 
 #l_three = st_ids[b].digits[0..2].join.to_i


 #st_email = "#{st_names[b].chr + l_name.last + l_three} + @adadevelopersacademy.org"

 #st_emails << st_email 
 #b += 1 
#end 


