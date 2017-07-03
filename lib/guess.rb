# This class is in charge of getting guess from the user and verifying
# that they are valid
class Guess
  # NOTE what other objects would have a relation to guess?
  def initialize
    #none
  end

  def self.get_guess
    puts "Please guess a letter:"
    STDIN.gets.chomp.downcase
  end

  def self.valid_letter?(guess)
    # probably do not pass through the guess as an argument
    ("a".."z").to_a.include?(guess)
  end

  def self.check_guess(guess)
    while !self.valid_letter?(guess)
      puts "That is not a letter!"
      guess = self.get_guess
    end
  end

end
