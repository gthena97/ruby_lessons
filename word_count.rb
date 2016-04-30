puts "give me a sentence and i will tell you how many times you have used a particular word.."
text = gets.chomp.downcase
=begin
line 1 is asking for user input
line 2 is storing the user input in a variable at the same time changing the user input into lowercase
=end
words = text.split(" ") 
# line5 breaks the user input into individual values and stores it into array
frequencies = Hash.new(0)
# line 7 creates a new hash with a default value of 0
words.each {|wordFound| frequencies [wordFound] +=1}
=begin
# line9 iterates over words array, and then each word itself is a key
# line 9 cont..  each subsequent iteration is adding wordFound as a key
# line9 cont.. each subsequent iteration is adding the time the word is found as a value
=end
frequencies = frequencies.sort_by {|wordFound, count| count}
frequencies.reverse!
=begin
line 13 is sorting the frequencies array and then arranging the array by count of the word (which is the value in the array)
line 13 also created a new array inside of array
line 14 then reverse sorted the array with high value coming first
=end
frequencies.each {|wordFound, count| puts wordFound + " " + count.to_s}
=begin
line 20 iterates over the hash array and puts out each key with the count of the word. the count has to be converted to a string since we are to 
concatenate the word and the value
=end
