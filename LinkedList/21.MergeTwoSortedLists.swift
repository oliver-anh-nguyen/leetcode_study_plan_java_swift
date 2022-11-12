//https://leetcode.com/problems/merge-two-sorted-lists/
// Time: O(n)
// Space: O(1)
class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        var dummy: ListNode? = ListNode(0)
        var tail: ListNode? = dummy
        var l1 = list1
        var l2 = list2
        while l1 != nil && l2 != nil {
            if l1?.val ?? 0 < l2?.val ?? 0 {
                tail?.next = l1 
                l1 = l1?.next
            } else {
                tail?.next = l2 
                l2 = l2?.next
            }
            tail = tail?.next
        }
        if l1 != nil {
            tail?.next = l1
        }
        if l2 != nil {
            tail?.next = l2
        }
        return dummy?.next
    }
}

class Solution {
    func mergeTwoLists(_ list1: ListNode?, _ list2: ListNode?) -> ListNode? {
        if list1 == nil {
            return list2
        }
        if list2 == nil {
            return list1
        }

        var list1 = list1
        var list2 = list2

        if list1?.val ?? 0 < list2?.val ?? 0 {
            list1?.next = mergeTwoLists(list1?.next, list2)
            return list1
        } else {
            list2?.next = mergeTwoLists(list2?.next, list1)
            return list2
        }
    }
}