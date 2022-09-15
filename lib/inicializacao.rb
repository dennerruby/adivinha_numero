require "tty-cursor"
require "tty-spinner"

class Inicializacao
  def self.inicializando
    system("clear")

    cursor = TTY::Cursor
    print cursor.move_to(80, 15)

    print "Carrengando o Jogo."
    4.times do |i|
      sleep 1
      print "."
    end
    puts

    File.open(File.expand_path("../../ascii/text_intro.txt", __FILE__), "r") do |file|
      while line = file.gets
        puts line
      end
    end

    sleep 3
    system("clear")
  end
end
