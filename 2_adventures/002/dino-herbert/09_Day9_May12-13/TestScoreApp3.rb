scoreCount = 0
scoreTotal = 0

puts "\nTest Score Average Calculator\n"
puts "\nPlease input test scores that range between 0 and 100."
puts "Input the number 999 to end."

score = gets.to_f #removed chomp method

while (score != 999)
  if (score < 0)
    puts "Number is too SMALL.  Score not counted - Try again."
    score = gets.to_f #removed chomp method
  elsif (score > 100)
    puts "Number is too LARGE.  Score not counted - Try again."
    score = gets.to_f #removed chomp method
  elsif (score <= 100 && score >= 0)
    scoreCount += 1
    scoreTotal += score
    puts "Input score:  "
    score = gets.to_f #removed chomp method
  end
end
 
avgScore = scoreTotal / scoreCount
puts "\nScores counted:\t#{scoreCount} \nScore Total:\t#{scoreTotal} \nAverage Score:\t#{avgScore.round(3)}" 
