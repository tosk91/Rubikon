Node = Struct.new(:data, :prev, :next)

class LinkedList
  def initialize(value)
    @head = Node.new(value,nil,nil)
    @tail = @head
    puts "Please specify how many nodes your list will have: "
    n = gets.chomp.to_i
    node = @head
    for i in 1..n-1
      #self.add_to_list(i)
      newNode = Node.new(i,nil,nil)
      node.next = newNode
      newNode.prev = node
      node = @tail = newNode
    end
  end

  def add_to_list(value)
    node = @head
    while node.next != nil
      node = node.next
    end
    newNode = Node.new(value,nil,nil)
    node.next = newNode
    newNode.prev = node
    @tail = newNode
  end
  
  def print_forward(node = @head)
    if node == nil
        puts "The list does not exist. Please create a new one."
    else
      puts "The list forward:"
        while node != nil
          print "#{node.data} "
          node = node.next
        end
        puts ""
    end
  end

  def print_backwards(node = @tail)
    if node != nil
      puts "The list backwards:"
        while node != nil
          print "#{node.data} "
          node = node.prev
        end
        puts ""
    end
  end
end

theList = LinkedList.new(0)
theList.print_forward()
theList.print_backwards()
n = 17
theList.add_to_list(n)
puts "Added #{n} to the end of the list."
theList.print_forward()
theList.print_backwards()