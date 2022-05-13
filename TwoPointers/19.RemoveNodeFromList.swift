// https://leetcode.com/problems/remove-nth-node-from-end-of-list/
/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init() { self.val = 0; self.next = nil; }
 *     public init(_ val: Int) { self.val = val; self.next = nil; }
 *     public init(_ val: Int, _ next: ListNode?) { self.val = val; self.next = next; }
 * }
 */
class Solution {
    func removeNthFromEnd(_ head: ListNode?, _ n: Int) -> ListNode? {
        var fast: ListNode? = head
        var slow: ListNode? = head
        
        for i in 0..<n {
            if fast?.next == nil {
                return head?.next
            }
            fast = fast?.next
        }
        
        while fast?.next != nil {
            fast = fast?.next
            slow = slow?.next
        }
        
        if (slow?.next != nil) {
            slow?.next = slow?.next?.next
        }
        
        return head
    }
}
