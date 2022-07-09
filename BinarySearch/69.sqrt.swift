// https://leetcode.com/problems/sqrtx/

class Solution {
    //Look for the critical point: i * i <= x && (i+1)(i+1) > x
    func mySqrt(_ x: Int) -> Int {
        if x == 0 {
            return 0
        }
        var l = 1
        var r = x
        while l <= r {
            var m = l + (r-l)/2
            if m <= x/m && (m+1) > x/(m+1) {
                return m
            }
            if m > x/m {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return -1
    }
}
