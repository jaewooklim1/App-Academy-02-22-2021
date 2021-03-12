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
        # if node.parent.include?(self)
        #     node.parent = nil
        # end

        # if @parent.nil? 
        # node.parent = nil
        

        if @parent == nil #&& @parent == nil
            @parent = node
            # @parent.each do |oneParent|
            #     if oneParent != node
            #         oneParent.children.delete(self)
            #     end
            # @parent = node
            
        end

        # if node.parent == nil

        # end
        # @parent = node
        
    end

    def add_child(node3)
        node3.parent = self
    end

    # def inspect
    #     self.parent
    # end




end                 