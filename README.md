# LinkedList in Ruby

## Description

This project implements a **LinkedList** data structure in Ruby. A linked list is a linear data structure in which elements (nodes) are connected by pointers. Each node contains two parts: a value and a reference to the next node. The linked list supports several operations.

## Features

- **Append**: Add a new element to the end of the list.
- **Prepend**: Add a new element to the beginning of the list.
- **Pop**: Remove and return the last element from the list.
- **at**: Returns the node at the given index
- **Contains?**: Check whether the list contains a specific value.
- **Find**: Return the index of a node containing a specific value.
- **Size**: Return the size (number of elements) in the list.
- **Insert_at**: Insert a new element at a specific index.
- **Remove_at**: Remove an element from a specific index.
- **to_s**: Return a string representation of the list in the format: `( value ) -> ( value ) -> nil`.

## Installation

Clone the repository to your local machine

Make sure you have Ruby installed on your system. To verify, you can run:

```bash
ruby -v
```

## Usage

You can interact with the LinkedList class in IRB or a Ruby script. Here's a simple usage example:

```ruby
require_relative 'linked_list'
require_relative 'node'

list = LinkedList.new

# Appending nodes
list.append(10)
list.append(20)

# Prepending a node
list.prepend(5)

# Finding and checking contents
puts list.contains?(10) # true
puts list.find(20) # 2

# Inserting at index
list.insert_at(15, 2)

# Removing from index
list.remove_at(1)

# Printing the list
puts list.to_s # (5) -> (15) -> (20) -> nil
```

## Class Structure

### `Node`

Represents each element (node) in the linked list. Each node contains:

- `value`: The value of the node.
- `next_node`: A reference to the next node in the list.

### `LinkedList`

Handles all the operations on the list. It maintains two properties:

- `head`: The first node in the list.
- `tail`: The last node in the list.
