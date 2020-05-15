#!/bin/ruby

require 'json'
require 'stringio'

# Complete the equalizeArray function below.
def equalizeArray(arr)
    
    # Make a hash value 
    h = Hash.new(0)
    # Go through hash and find duplicates in hash
    duplicates = arr.each{ |e| h[e] += 1 }
    # find the highest key-pair value (duplicates) in the hash
    max_value = h.values.max

    new = h.select {|k,v| v == max_value }
    # find the value of the hash with maximum duplicates
    value = new.values[0]
    # subtract number from array length
    final_answer = arr.length - value
    return final_answer

end

fptr = File.open(ENV['OUTPUT_PATH'], 'w')

n = gets.to_i

arr = gets.rstrip.split(' ').map(&:to_i)

result = equalizeArray arr

fptr.write result
fptr.write "\n"

fptr.close()
