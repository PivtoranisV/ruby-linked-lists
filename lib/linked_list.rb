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
    else
      tail.next_node = new_node
    end
    self.tail = new_node
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

  def contains?(value)
    current_node = head

    while current_node
      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    current_node = head
    index = 0

    while current_node
      return index if current_node.value == value

      current_node = current_node.next_node
      index += 1
    end
    nil
  end

  def to_s
    current_node = head
    result = []
    while current_node
      result << "(#{current_node.value})"
      current_node = current_node.next_node
    end
    "#{result.join(' -> ')} -> nil"
  end

  def insert_at(value, index)
    new_node = Node.new(value)

    if index.zero?
      new_node.next_node = head
      self.head = new_node
      return
    end

    current_node = head
    prev_node = nil
    idx = 0

    while current_node && idx < index
      prev_node = current_node
      current_node = current_node.next_node
      idx += 1
    end

    return puts 'Index out of list size' if prev_node.next_node.nil?

    prev_node.next_node = new_node
    new_node.next_node = current_node
  end

  def remove_at(index)
    current_node = head
    prev_node = nil
    idx = 0

    if index.zero?
      self.head = head.next_node
      self.tail = nil if head.nil?
      return
    end

    while current_node && idx < index
      prev_node = current_node
      current_node = current_node.next_node
      idx += 1
    end

    return puts 'Index out of list size' if current_node.nil?

    prev_node.next_node = current_node.next_node
    self.tail = prev_node if current_node.next_node.nil?
  end
end
