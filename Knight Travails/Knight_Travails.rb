require "PolyTreeNode"

class KnightPathFinder

    attr_reader :pos

    def initialize(pos=[0, 0])    
        @pos = pos        
    end

    def find_path(newPos)
        [pos] << newPos
    end

    # def root_node(pos)
        
    # end

    # def build_move_tree
    #     self.root_nod = PolyTreeNode.new(pos)
    # end

    def self.valid_moves(pos)
        possible_moves = [[-2, -1], [-1, -2], [-2, 1], [-1, 2], [2, 1], [1, 2], [1, -2], [2, -1]]
        x, y = pos
        valid_moves = [] 

        possible_moves.each do |subarr| # -2, -1
            new_x = x + subarr[0] # -2 1
            new_y = y + subarr[1] # -1 2
            num_arr = (0..7).to_a
            if num_arr.include?(new_x) && num_arr.include?(new_y)
                valid_moves << [new_x, new_y]
            end
        end
        valid_moves
    end

    # used_pos = []
    # pos_mov = []

    # 0 K
    # 1     K
    # 2   K   
    # 3       K
    # 4
    # 5     K
    # 6
    # 7
    #   0 1 2 3 4 5 6 7

    #   [0, 0] => [0 + 2, 0 + 1] => [2 + 1, 1 + 2] => [3 - 2, 3 - 1]
    #   [x +- 2, y +- 1] || [x +- 1, x +- 2] if x.positive? && y.positive?

    #   [1, 2], [2, 1]

    #   [x + 2, y + 1] [x + 2, y - 1] [x - 2, y + 1] [x - 2, y - 1]

    # kpf = KnightPathFinder.new([3, 3])
    # kpf.find_path([2, 1]) # => [[0, 0], [2, 1]]
    # p kpf.valid_moves([3, 3]) #[[0, 0], [2, 1], [3, 3]]


        
        













end