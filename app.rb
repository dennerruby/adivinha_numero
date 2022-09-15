require_relative 'lib/adivinhar_numero'

jogo = AdivinharNumero.new

until jogo.venceu
  puts "Digite um numero"
  numero = gets.to_i
  puts jogo.tentar_adivinhar(numero)
end
