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


    def dfs(target_value)
        # debugger
        return nil if self.length < 0

        mid = self.length / 2
        case self[mid] <=> target_value
        when 0
            return mid
        when 1
            return self.take(mid).dfs(target_value)
        else
            search_res = self.drop(mid + 1).dfs(target_value)
            search_res.nil? ? nil : search_res + mid + 1
        end
    end

    def inspect
        {
            value: @value,
            parent: @parent.value,
            children: @children.map {|ele| ele.value}
        }.to_s
    end

end

need_to_be_checked = [self.value]
ones_that_has_been_checked = Set.new

