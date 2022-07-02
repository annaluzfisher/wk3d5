require_relative "00_tree_node.rb"
class KnightPathFinder
    attr_reader :root_node , :considered_positions

    def initialize(pos)
        @position = pos
        @root_node =  PolyTreeNode.new(pos)
        @considered_positions = [pos]
    end
     
    def self.valid_move?(pos)
        unless pos[0].match /(0-7)/ && pos[0].match /(0-7)/
            raise "not a valid pos"
        end
       r , c = pos
        moves = [[2,-1],[2,1],[1,2],[1,-2],[-1,-2],[-1,2],[-2,1],[-2,-1]]
      options =  []
      moves.each do |move|
           row = move.first + r
           col = move.last + c
           if (row < 8 && col < 8) && (row >= 0 && col >= 0)
            options << [row,col]
           end 
      end
      options
    end

    
    def new_move_position(pos)
       @considered_positions = [self.valid_move?(pos) - @considered_positions]
      
    end


        




    def find_path(pos)
    end

end