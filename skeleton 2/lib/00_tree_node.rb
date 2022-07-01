class PolyTreeNode
attr_reader :value , :parent , :children

    def initialize(value)
        @value = value 
        @parent = nil
        @children = []
    end
    #"should set a node's parent to the passed node"
    #"should add the child node to the passed node's children"
    # should set the node's parent to the new parent
    # should add the node to the new parent's children
    # should remove the node from its old parent's children  
    def parent=(newnode)

       if @parent.nil?
        @parent = newnode
        newnode.children << self
       elsif newnode.nil?
        @parent.children.delete(self)
        @parent = nil
       elsif @parent != newnode
        @parent.children.delete(self)
        @parent = newnode
        newnode.children << self
       else
        self
       end
       self
    end

    def add_child(newchild)
        if  !self.children.include?(newchild)
            newchild.parent = self
        end
        self
    end

    def remove_child(oldchild)
        oldchild.parent = nil
    end

    def dfs(target)
         return self if self.value == target
         return nil if self.children.length == 0
        
         self.children.each do |child|
            res = child.dfs(target)
         return res unless res.nil?
        end
        return nil
    end

    def bfs(target)
        q = Queue.new
         
        q.enq(self)
        while !q.empty?
            current_node = q.deq
            if current_node.value == target
                return current_node
            end
                current_node.children.each {|child| q.enq(child)}

        end
        nil
    end

   
end

# a = PolyTreeNode.new("a")
# b = PolyTreeNode.new("b")
# c = PolyTreeNode.new("c")

# p a.add_child(c)