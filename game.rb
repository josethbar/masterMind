require 'colorize'
require "./adivinador"
require "./board"

class Game

    def initialize
        @num_intentos = 12
        @colores = ["red", "blue", "yellow", "green"]
        @secret_code = []
        secret_colors
        @adivinador = Adivinador.new(@secret_code, @colores)
    end

    # Marca el inicio de la partida, pidiendo la información del jugador
    def jugador
    puts "Ingrese un nombre:"
    name = gets.chomp
    puts "Hola #{name}, bienvenido a MasterMind"
    puts ""
    end

    # Este método se encargará de generar los cuatro colores al azar de la lista de colores
    def secret_colors
    codigo = []
    4.times do
        codigo << @colores.sample
    end
    @secret_code = codigo
    p codigo
    end

    def turno
        @adivinador.turno
    end
end

game = Game.new
game.jugador
game.turno
