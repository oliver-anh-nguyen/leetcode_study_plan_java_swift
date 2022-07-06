// https://leetcode.com/problems/search-insert-position/
class Solution {
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        while l <= r {
            var m = l + (r-l)/2
            if nums[m] == target {
                return m
            }
            if nums[m] > target {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return r + 1
    }
}

class Solution {
    // lower bound: the first index has value >= target
    func searchInsert(_ nums: [Int], _ target: Int) -> Int {
        var l = 0
        var r = nums.count - 1
        var res = nums.count
        while l <= r {
            var m = l + (r-l)/2
            if nums[m] >= target {
                res = m
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return res
    }
}
