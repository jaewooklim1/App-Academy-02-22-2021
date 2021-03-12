require "byebug"

class PolyTreeNode

    attr_reader :parent, :value, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    def parent=(node)
        # debugger
        if node.parent.include?(self)
            node.parent = nil
        end

        if !node.children.include?(self)
            node.children << self
        end

        # if node.parent == nil

        # end
        @parent = node
        
    end

    def add_child(node3)
        node3.parent = self
    end

    # def inspect
    #     self.parent
    # end




end                 