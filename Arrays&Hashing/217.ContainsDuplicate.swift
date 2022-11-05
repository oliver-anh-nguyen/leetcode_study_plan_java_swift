//https://leetcode.com/problems/contains-duplicate/
// Two loops: O(n^2), Space: O(1)
// Sorted: O(nlogn), Space: O(1)
// HashSet: O(n), Space: O(n)
class Solution {
    func containsDuplicate(_ nums: [Int]) -> Bool {
        var dict = [Int: Int]()
        for i in nums {
            if dict[i] != nil {
                return true
            } else {
                dict[i] = 1
            }
        } 
        return false
    }
}
