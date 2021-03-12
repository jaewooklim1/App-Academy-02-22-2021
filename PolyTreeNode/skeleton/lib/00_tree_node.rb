require "byebug"

class PolyTreeNode

    attr_reader :parent, :value, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    def parent=(node)
        
        return @parent = nil if node == nil

        if @parent == nil 
            @parent = node
            node.children << self
        end

        if @parent != nil
            @parent.children.delete(self)
            @parent = node
            node.children << self
        end
        
    end

    def add_child(node3)
        node3.parent = self
    end

    def remove_child(node)
        if !self.children.include?(node)
            raise "error"
        end
            node.parent = nil
    end




end                 