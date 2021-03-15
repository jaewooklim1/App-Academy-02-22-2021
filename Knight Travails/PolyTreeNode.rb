require "byebug"
require "set"

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


    def dfs(target_value)
        
        if self.value == target_value
            return self
        else
            children.each do |child|
                search = child.dfs(target_value)
                return search if search
            end       
    
        end    
        nil

    end



    def bfs(target_value)
        queue = [self]
        return nil if queue.empty?
        
        until queue.empty?
            node = queue.shift
            
            if node.value == target_value 
                return node
            else
                queue += node.children
            end
            
        end

    end

    def inspect
        {   
            value: @value,
            # parent: @parent.value,
            children: @children.map {|ele| ele.value}
        }.to_s
    end

end

