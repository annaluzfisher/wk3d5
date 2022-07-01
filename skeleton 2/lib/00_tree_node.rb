class PolyTreeNode
attr_reader :value , :parent ,:children

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
    def parent=(newNode)
   

       if @parent == nil
        @parent = newNode
        newNode.children << self
       end
      
    end
    
    
end