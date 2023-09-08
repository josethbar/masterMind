require 'colorize'
require 'pry'

class Adivinador

    def initialize(secret_code, colores)
        @secret_code = secret_code
        @colores = colores
        @intentos_maximos = 0
    end

    def comprobar_juego(user_list)
        secret_code = @secret_code
        lista_asertados = []

        user_list.each_with_index do |color, indice|
        if secret_code.include?(color)
        lista_asertados << "O".colorize(:green)
        elsif !secret_code.include?(color)
        lista_asertados << "X".colorize(:red)
        end
    end

    puts lista_asertados.join(" ")
    turno
    end

    def turno
        lista_colores = ["red", "blue", "yellow", "green"]
        user_list = []

        @colores.each do |color|
            print color.colorize(color.to_sym) + " "
        end

        puts ""

        3.times do
        puts "Ingrese 4 colores válidos de la lista anterior separados por un espacio: ejemplo 'red blue green red'"

            user_input = gets.chomp.downcase.split(" ")
            puts " "

            invalid_colors = user_input.select { |color| !lista_colores.include?(color) }
            
            if !invalid_colors.empty?
            puts "Los siguientes colores no son permitidos: #{invalid_colors.join(', ')}"
            elsif
            user_list = user_input
            end

            @intentos_maximos += 1
            p @intentos_maximos

            comprobar_juego(user_list)

            if @intentos_maximos == 3
            puts "Has alcanzado el límite de intentos (12)."
            abort("pa tu casa")
        # Salimos del bucle si se alcanza el límite de intentos
            end

        end

            
    end
end