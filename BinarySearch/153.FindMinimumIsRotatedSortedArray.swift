//https://leetcode.com/problems/find-minimum-in-rotated-sorted-array/
// Time: O(logn)
class Solution {
    func findMin(_ nums: [Int]) -> Int {
        if nums.count == 1 || nums[0] < nums[nums.count - 1] {
            return nums[0]
        }
        var l = 0
        var r = nums.count - 1
        while l <= r {
            var m = l + (r-l)/2
            if m > 0 && nums[m-1] > nums[m] {
                return nums[m]
            }
            if nums[m] > nums[r] {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return -1
    }
}