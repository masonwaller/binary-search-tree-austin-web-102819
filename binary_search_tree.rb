require 'ostruct'

class BST 
    attr_accessor :data, :left, :right

    def initialize(data)
        self.data = data
    end

    def insert(data)
        if(data <= self.data)
            if(self.left == nil)
                self.left = BST.new(data)
            else 
                self.left.insert(data)
            end
        else 
            if(self.right == nil)
                self.right = BST.new(data)
            else 
                self.right.insert(data)
            end
        end
    end

    def each(&we)
        left.each(&we) if left
        we.call(data)
        right.each(&we) if right
    end

end