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
        # if !node.children.include?(self)
            p node.children 
            p "-------------"
            node.children << self
            p "!!!!!!!!!!!!!"
            p node.children
            p "+++++++++++++"
            
            # @parent = node
        end
        # @parent = node
        
    end

    # def inspect
    #     self.parent
    # end




end                 