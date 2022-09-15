require_relative 'inicializacao'
require_relative 'sortear_numero'

class AdivinharNumero
    attr_accessor :numero
    attr_accessor :venceu
  
    def initialize
      Inicializacao.inicializando
      @numero = SortearNumero.sortear
      @venceu = false
    end
  
    def tentar_adivinhar(numero = 0)
      if numero == @numero
        @venceu = true
        return "voce GANHOU!"
      elsif numero > @numero
        return "O numero informado e muito alto..."
      else
        return "O numero informado e muito baixo...!"
      end
    end
  end