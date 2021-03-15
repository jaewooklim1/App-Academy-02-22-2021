require "PolyTreeNode"

class KnightPathFinder

    attr_reader :pos

    def initialize(pos=[0, 0])    
        @pos = pos        
    end

    def find_path(newPos)
        [pos] << newPos
    end

    def root_node(pos)
        
    end

    def build_move_tree

    end














end