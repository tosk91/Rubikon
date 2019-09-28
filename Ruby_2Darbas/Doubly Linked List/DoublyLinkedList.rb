Node = Struct.new(:data, :prev, :next)

class LinkedList
  def initialize(value)
    @head = Node.new(value,nil,nil)
    @tail = @head
    puts "Please specify how many nodes your list will have:"
    n = gets.chomp.to_i
    node = @head
    for i in 1..n - 1 do
      #self.add_to_list(i)
      k = value + i
      newNode = Node.new(k,nil,nil)
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
    puts "Added #{value} to the list."
  end

  def del_first(node = @head)
    if node != nil && node.next != nil
      node = node.next
      node.prev = nil
      @head = node
      puts "Removed first element from the list."
    end
  end

  def del_last(node = @tail)
    if node != nil && node.prev != nil
      node = node.prev
      node.next = nil
      @tail = node
      puts "Removed last element from the list."
    end
  end

  def del_all(node1 = @head, node2 = @tail)
    @head = nil
    @tail = nil
    puts "The whole list deleted."
  end

  def del_value(value, node = @head)
    value_deleted = false
    if node == nil
      puts "The list is not created."
    elsif node == @tail && node.data == value
      del_all()
      value_deleted = true
    else
      while node != nil
        if node.data == value
          node.prev.next = node.next
          node.next = node.prev
          puts "Removed #{value} element from the list."
          value_deleted = true
          break
        end
        node = node.next
      end
    end
    if !value_deleted
      puts "There is no such element in this list."
    end
  end

  def del_pos(pos, node = @head)
    pos_deleted = false
    if node == nil
      puts "The list is not created."
    elsif node == @tail
      del_all()
    elsif pos == 0
      self.del_first()
    else
      for i in 0..pos do
        if node == nil
          puts "There is no such position in this list."
          break
        elsif i == pos
          if node.next == nil
            del_last()
          else
            node.prev.next = node.next
            node.next.prev = node.prev
            pos_deleted = true
            puts "Removed element in #{pos} position from the list."
            break
          end
        end
        node = node.next
      end
    end
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
    if node == nil
      puts "The list does not exist. Please create a new one."
    else
      puts "The list backwards:"
        while node != nil
          print "#{node.data} "
          node = node.prev
        end
        puts ""
    end
  end
end

theList = LinkedList.new(6)
theList.print_forward()
theList.print_backwards()

v = 17; theList.add_to_list(v)
theList.print_forward()

theList.del_last()
theList.print_forward()

theList.del_first()
theList.print_forward()

v = 6; theList.del_value(v)
theList.print_forward()

v = 0; theList.del_pos(v)
theList.print_forward()
# theList.del_all()
# theList.print_forward()