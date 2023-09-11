#--------------------no esta implementado------------------------

class ClassName

    attr_writer :available_colors

    def initialize(colores)
        @available_colors = colors
        @all_possible_combinations = colores.repeated_permutation(4).to_a.shuffle
    end

    def guess
        case rand(2)
        when 0 then computer_guess_brute_force
        when 1 then computer_guess_random
        end
    end

    def computer_guess_random
        @available_colors.sample(4)
    end

    def computer_guess_brute_force
        @all_possible_combinations.pop
    end
end
p "protegeme señooooooooooor con tu espitiru"
