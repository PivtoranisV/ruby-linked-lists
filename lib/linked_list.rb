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
end
