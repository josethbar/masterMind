require 'colorize'

class Game
    attr_reader :name, :colors , :num_intentos

    def initialize
        @colors = colors 
        @num_intentos = num_intentos
    end

# p "ingrese un nombre:"
# name = gets.chomp
# puts "Hola #{name}, bienvenido a masterMind"

def secret_colors
    colors = ["red", "blue" , "white" ,"black", "yellow", "green", "brown"]
    codigo = []

    4.times do 
        codigo << colors.sample
    end

# p "colores #{colors}"

puts "el codigo #{codigo}" 
    end
    
    
end

Game1 = Game.new 

