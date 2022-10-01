class LinkedList
  def initialize(head = nil)
    @head = head
  end

  attr_accessor :head

  def input
    previous = nil
    elements = gets.chomp.split(' ')
    @head = Node.new(elements[0])
    elements[1..].each do |element|
      current = Node.new(element)
      @head.next = current unless @head.next
      previous.next = current if previous
      previous = current
    end
  end

  def to_s
    result = []
    current_node = head
    until current_node.nil?
      result << current_node.data
      current_node = current_node.next
    end

    result.join(' -> ')
  end
end

class Node
  def initialize(value)
    self.data = value
  end

  attr_accessor :data, :next
end

first = Node.new(1)
second = Node.new(2)
third = Node.new(3)
first.next = second
second.next = third

linked_list = LinkedList.new(first)
# puts linked_list.to_s
