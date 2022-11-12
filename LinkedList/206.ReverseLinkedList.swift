//https://leetcode.com/problems/reverse-linked-list/
// Time: O(n)
// Space: O(1)
class Solution {
    func reverseList(_ head: ListNode?) -> ListNode? {
        var curr: ListNode? = head
        var prev: ListNode? = nil

        while curr != nil {
            var nxt = curr?.next
            curr?.next = prev
            prev = curr
            curr = nxt
        }
        return prev
    }
}
