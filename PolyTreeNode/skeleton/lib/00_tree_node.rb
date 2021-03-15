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


    # def dfs(target_value)
    #     # debugger
    #     return nil if self.length < 0

    #     mid = self.length / 2
    #     case self[mid] <=> target_value
    #     when 0
    #         return mid
    #     when 1
    #         return self.take(mid).dfs(target_value)
    #     else
    #         search_res = self.drop(mid + 1).dfs(target_value)
    #         search_res.nil? ? nil : search_res + mid + 1
    #     end
    # end

    def bfs(target_value)
        # debugger
        queue = [self]
        visited = Set.new
        
        until queue.empty?
            node = queue.shift
            node.each do |one_node|
                return one_node if one_node.value == target_value
            end
            queue << one_node.children
        end
        false
        
        
        # return nil if queue.length == 0
        # while !queue.empty?

        #     # debugger
        #     node = queue.first.value
        #     # if !visited.include?(node)
        #         # return node if node == target_value
        #         #     shifted = queue.shift
        #         #     childs = shifted.children
        #         #     childs.map {|child| child.value}
        #         #     queue << childs
        #         #     visited << node
        #     # end       

        # end

    end

    # def inspect
    #     {
    #         value: @value,
    #         parent: @parent.value,
    #         children: @children.map {|ele| ele.value}
    #     }.to_s
    # end

end

# need_to_be_checked = [self.value]
# ones_that_has_been_checked = Set.new

