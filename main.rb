# frozen_string_literal: true

require_relative 'lib/node'
require_relative 'lib/linked_list'

new_list = LinkedList.new

new_list.append('Dog')
new_list.append('Cat')
new_list.append('Fish')
new_list.prepend('Cow')
new_list.prepend('Hamster')

p new_list

# p new_list.head.value
# p new_list.head.next_node.value
# p new_list.head.next_node.next_node.value
# p new_list.head.next_node.next_node.next_node.value
# p new_list.tail.value
p new_list.size
# p new_list.at(2)
p new_list.pop
p new_list.size
p new_list.pop
p new_list.size

p new_list.contains?('Fish')
p new_list.contains?('Hamster')
