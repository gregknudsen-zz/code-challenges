class LinkedListNode
    attr_accessor :value, :next_node

    def initialize(value, next_node=nil)
        @value = value
        @next_node = next_node
    end
end

def print_values(list_node)
    if list_node #gives node3
        print "#{list_node.value} --> " #if theres a list node, it will give its value (here its node 3 and gives 12)
        print_values(list_node.next_node) #directs it towards next node which is node 2 here
    else
        print "nil\n"
        return
    end
end

# from here starts reverse process

class Stack
    attr_reader :data

    def initialize
        @data = nil
    end

    def push(value) #idk what is def push doing
        @data = LinkedListNode.new(value, @data) #here @data is nil
    end

    def pop
        return print "nil\n" if @data.nil?
      print "#{@data.value}\n" #if data isnt nil, print its value
      @data = @data.next_node #changing @data to be the next node? maybe?
    end
end

def reverse_list(list)
    stack=Stack.new

    while list
        stack.push(list.value) #putting node3 in stack
        list = list.next_node #going ahead to add next node in stack
    end

    return stack.data # does this returns 37, 99, 12 or the node like node1, node2, node3?
end

node1 = LinkedListNode.new(37)
node2 = LinkedListNode.new(99, node1)
node3 = LinkedListNode.new(12, node2)

print_values(node3)

puts "----------"

revlist = reverse_list(node3)

print_values(revlist)