require_relative 'screen_initialization'
require_relative 'draw_number'

class GuessNumber
    attr_accessor :number
    attr_accessor :win

    def initialize
      ScreenInitialization.initializing
      @number = DrawNumber.draw
      @win = false
    end

    def try_guess(number = 0)
      if number == @number
        @win = true
        return "🅨 🅞 🅤 🅦 🅘 🅝 (ง︡'-'︠)ง"
      elsif number > @number
        return "\n The number given is too high... (─‿‿─)"
      else
        return "\n The number given is too low.... (͠◉_◉᷅ )"
      end
    end
  end
