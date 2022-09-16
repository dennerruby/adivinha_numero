require_relative 'lib/guess_number'

game = GuessNumber.new

until game.win
  puts "\n Ｅｎｔｅｒ ｏｆ ｎｕｍｂｅｒ （っ＾▿＾）"
  number = gets.to_i
  puts game.try_guess(number)
end
