require "byebug"

class PolyTreeNode

    attr_reader :parent, :value, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    def parent=(node)
        node.children << self
        # debugger
        @parent = node
        
    end

    # def inspect
    #     self.parent
    # end




end                 