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
        debugger
        queue = [self]
        # visited = Set.new
        # return nil if queue.empty?
        current = queue.pop # a 
        if current.value == target_value
            return current
        else
            children.each do |child|
            queue.push(child.dfs(target_value))

            end       
    
        end    
        nil

    end


        # 1. {:value=>"a", :children=>["b", "c"]}
        # 2. {:value=>"b", :children=>["d", "e"]}
        # 3. {:value=>"d", :children=>[]}
        # 4. {:value=>"b", :children=>["d", "e"]}
        # 5. 
        # 6. 
        # target_value = "e"

        # 1. 



    def bfs(target_value)
        queue = [self]
        return nil if queue.empty?
        visited = Set.new
        
        until queue.empty?
            node = queue.shift
            if !visited.include?(node)
                case node.value <=> target_value 
                when 0
                    return node
                else
                    queue += node.children
                    visited << node
                end
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

# need_to_be_checked = [self.value]
# ones_that_has_been_checked = Set.new

