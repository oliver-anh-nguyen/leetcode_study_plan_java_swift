//https://leetcode.com/problems/reorder-list/
// Time: O(n)
// Space: O(1)
class Solution {
    func reorderList(_ head: ListNode?) {
        var slow: ListNode? = head
        var fast: ListNode? = head?.next

        // find mid
        while fast != nil && fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }

        var second:ListNode? = slow?.next
        slow?.next = nil
        var prev: ListNode? = nil
        while second != nil {
            var tmp: ListNode? = second?.next
            second?.next = prev
            prev = second
            second = tmp
        }

        var first: ListNode? = head
        second = prev
        while second != nil {
            var tmp1: ListNode? = first?.next
            var tmp2: ListNode? = second?.next
            first?.next = second
            second?.next = tmp1
            first = tmp1
            second = tmp2
        }
    }
}
