

#----------------no esta implementado--------------------------
class Board
    attr_accessor :board
# , secret_code, colores
    def initialize(max_turns)
        # bindin.pry
        @board = Array.new(max_turns){Array.new(5) { [] } }
        # @colores = colores
        # @secret_code = secret_code
    end
    
    def display_board
    puts "tablero:"
    @board.each_with_index do |row, index|
        row_display = row[0..3].map do |color|
            if color.is_a?(Array) && color.empty?
                " "
            else
                color.to_s.colorize(color: color.to_sym)
            end
    end.join(' ')
    feedback_display = (row[4] || []).join(' ')
    puts "#{index +1 }.#{row_display}"
    puts "#{feedback_display}"
        end
    puts "------------------------------"
    end
end


board = Board.new(12)
board.display_board        
