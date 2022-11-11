//https://leetcode.com/problems/search-in-rotated-sorted-array/
// Time: O(logn)
// Space: O(1)
class Solution {
    func search(_ nums: [Int], _ target: Int) -> Int {
        var pivot = minValueSorted(nums) 
        if nums[pivot] == target {
            return pivot
        }
        var ans = binarySearch(nums, 0, pivot-1, target)
        if ans != -1 {
            return ans
        }
        return binarySearch(nums, pivot, nums.count-1, target)
    }

    func minValueSorted(_ nums:[Int]) -> Int{
        var l = 0
        var r = nums.count - 1

        while l <= r {
            var m = l + (r-l)/2
            if m > 0 && nums[m-1] > nums[m] {
                return m
            }
            if nums[m] > nums[r] {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return 0
    }

    func binarySearch(_ nums:[Int], _ start: Int, _ end: Int, _ target: Int) -> Int {
        var l = start
        var r = end
        while l <= r {
            var m = l + (r - l)/2 
            if nums[m] == target {
                return m
            }
            if nums[m] < target {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return -1
    }
}
