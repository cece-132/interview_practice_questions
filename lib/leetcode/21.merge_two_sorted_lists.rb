require 'pry'
# Definition for singly-linked list.
class ListNode
    attr_accessor :val, :next
    def initialize(val = 0, _next = nil)
        @val = val
        @next = _next
    end
end
# @param {ListNode} list1
# @param {ListNode} list2
# @return {ListNode}

# Constraints:

# - The number of nodes in both lists is in the range [0, 50].
# -100 <= Node.val <= 100
# Both list1 and list2 are sorted in non-decreasing order.
def merge_two_lists(list1, list2)
  return list2 if list1.nil? 
  return list1 if list2.nil?
  
  if list1.val < list2.val
    list1.next = merge_two_lists(list1.next, list2)
      return list1
  else
    list2.next = merge_two_lists(list1, list2.next)
      return list2
  end
end

list1 = [1,2,4]
list2 = [1,3,4]
merge_two_lists(list1, list2)
# Output: [1,1,2,3,4,4]

# list1 = [], list2 = []
# p merge_two_lists(list1, list2)
# Output: []

# list1 = [], list2 = [0]
# p merge_two_lists(list1, list2)
# Output: [0]