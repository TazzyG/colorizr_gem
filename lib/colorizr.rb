class String
	attr_reader  :colors_list

  # Color mode values ref http://misc.flogisoft.com/bash/tip_colors_and_formatting
 
  @@colors_list = {
          red: 31,
          green: 32,
          yellow: 33,
          blue: 34,
          pink: 95,
          light_blue: 94,
          white: 97,
          light_grey: 37,
          black: 30
  }
  def self.create_colors
    @@colors_list.each do |key, value|
      self.send(:define_method, "#{key}") do
        "\e[#{value}m#{self}\e[0m"
      end
    end
  end
  
  def self.colors
  	@@colors_list.keys
  end

  def self.sample_colors
  	@@colors_list.each do |color, el|
  		puts "This is #{color}".send(color)
  	end
  end
end

String.create_colors
# More ways to call code

# list = String.new

# samples = String.sample_colors



# puts list.sample_colors


# puts "John".red
# puts "Paul".green
# puts "George".blue
# puts "Ringo".yellow

# p String.colors

# p String.sample_colors

# String.create_colors





