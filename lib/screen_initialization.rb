require "tty-cursor"
require "tty-spinner"

class ScreenInitialization
  def self.initializing
    system("clear")

    cursor = TTY::Cursor
    print cursor.move_to(95, 15)

    print "ｌｏａｄｉｎｇ ｔｈｅ ｇａｍｅ ᕙ(`▿´)ᕗ ."
    4.times do |i|
      sleep 1
      print "."
    end
    print
    File.open(File.expand_path("../../ascii/text_intro.txt", __FILE__), "r") do |file|
      while line = file.gets
        print line
      end
    end

    sleep 3
    system("clear")
  end
end
