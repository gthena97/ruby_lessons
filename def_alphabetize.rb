def alphabetize (arr, rev = false) #creates a new method for sorting
    
    if rev == true #if condition is true the array is reversed in order
        arr.reverse!
    else #if condition is false the array is sorted in a ascending order
        arr.sort!
    end
end
numbers = [3,2,5,1]
puts alphabetize(numbers) #calling the new method with just one parameter
puts alphabetize(numbers, rev = true) # calling the new method with two parameters