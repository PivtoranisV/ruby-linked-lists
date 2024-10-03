# frozen_string_literal: true

require_relative 'node'

#  class, which will represent the full list
class LinkedList
  attr_accessor :head, :tail

  def initialize
    @head = nil
    @tail = nil
  end

  def append(value)
    new_node = Node.new(value)

    if head.nil?
      self.head = new_node
      self.tail = new_node
    else
      tail.next_node = new_node
      self.tail = new_node
    end
  end

  def prepend(value)
    new_node = Node.new(value)

    if head.nil?
      self.head = new_node
      self.tail = new_node
    else
      new_node.next_node = head
      self.head = new_node
    end
  end

  def size
    count = 0
    current_node = head

    while current_node
      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def at(index)
    count = 0
    current_node = head
    until count == index
      count += 1
      return nil if current_node.nil?

      current_node = current_node.next_node
    end
    current_node
  end

  def pop
    return puts 'Can\'t delete from empty list' if head.nil?

    if head == tail
      popped_value = head.value
      self.head = nil
      self.tail = nil
      return popped_value
    end

    current_node = head
    prev_node = nil

    while current_node.next_node
      prev_node = current_node
      current_node = current_node.next_node
    end

    prev_node.next_node = nil
    self.tail = prev_node

    current_node.value
  end
end
