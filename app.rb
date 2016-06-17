require 'colorizr'

puts "John".red
puts "Paul".green
puts "George".blue
puts "Ringo".yellow

# The gem should also have two String class methods:
# String.colors - should return an Array of all the color options

p String.colors

# String.sample_colors - should run "This is (sample color)" in the color chosen.

String.sample_colors




# No more manually writing lines of code instead... because we are becoming a rubyist :)
# Make use of Ruby’s metaprogramming capabilities to DRY up your code. 
# Write a single method called create_colors that will define all the color methods for you.

# String.create_colors runs with 

