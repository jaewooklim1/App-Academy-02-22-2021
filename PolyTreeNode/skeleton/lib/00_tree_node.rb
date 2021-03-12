require "byebug"

class PolyTreeNode

    attr_reader :parent, :value, :children

    def initialize(value)
        @value = value
        @children = []
        @parent = nil
    end

    def parent=(node)
        debugger
        if !node.children.include?(self)
            node.children << self
            node.children.each do |child|
                child.parent = node
            end
            @parent = node
        end
        # @parent = node
        
    end

    # def inspect
    #     self.parent
    # end




end                 