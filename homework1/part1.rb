#Part 1: fun with strings

#(a) Write a method that determines whether a given word or phrase is a palindrome,
#that is, it reads the same backwards as forwards, ignoring case, punctuation, and
#nonword characters. (a "nonword character" is defined for our purposes as "a
#character that Ruby regexps would treat as a nonword character".) Your solution
#shouldn't use loops or iteration of any kind. You will find regular-expression syntax
#very useful; it's reviewed briefly in the book, and the website rubular.com lets you try
#out Ruby regular expressions "live". Methods you might find useful (which you'll
#have to look up in Ruby documentation, ruby-doc.org) include: String#downcase,
#String#gsub, String#reverse
#Suggestion: once you have your code working, consider making it more beautiful by
#using techniques like method chaining, as described in ELLS 3.2.
#Examples:
#palindrome?("A man, a plan, a canal -- Panama") #=> true
#palindrome?("Madam, I'm Adam!") # => true
#palindrome?("Abracadabra") # => false (nil is also ok)

def palindrome?(string)
  unite_string = string.gsub(/\W/, '').downcase
  unite_string.reverse == unite_string
end

#(b) Given a string of input, return a hash whose keys are words in the string and
#whose values are the number of times each word appears. Don't use for-
#loops. Nonwords should be ignored. Case shouldn't matter. A word is defined as a
#string of characters between word boundaries. (Hint: the sequence \b in a Ruby
#regexp means "word boundary".)
#Example:
#count_words("A man, a plan, a canal -- Panama")
## => {'a' => 3, 'man' => 1, 'canal' => 1, 'panama' => 1,
#'plan' => 1}
#count_words "Doo bee doo bee doo" # => {'doo' => 3, 'bee' =>
#2}

def count_words(string)
  arr = string.downcase.split(/\W/)
  arr.inject(Hash.new(0)) { |h, x| h[x] += 1; h}
end
