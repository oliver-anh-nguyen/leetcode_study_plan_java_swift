// https://leetcode.com/problems/peak-index-in-a-mountain-array/
class Solution {
    func peakIndexInMountainArray(_ arr: [Int]) -> Int {
        var l = 1
        var r = arr.count - 2
        while l <= r {
            var m = l + (r-l)/2
            if arr[m] > arr[m+1] && arr[m] > arr[m-1] {
                return m
            }
            if arr[m-1] > arr[m] {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return -1
    }
}
