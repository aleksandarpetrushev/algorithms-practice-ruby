# Write code to remove duplicates from an unsorted linked list.
require_relative 'sll'
require 'set'

linked_list = LinkedList.new
linked_list.input

def remove_duplicates(linked_list)
  unique_elements = Set.new
  previous = linked_list.head
  current = previous.next
  while previous.data == current.data
    previous.next = current.next
    current = previous.next
  end

  until current.nil?
    if unique_elements.include?(current.data)
      previous.next = current.next
      current = current.next
    else
      unique_elements.add(current.data)
      previous = current
      current = current.next
    end
  end

  linked_list.to_s
end

pp remove_duplicates(linked_list)
