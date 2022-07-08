// https://leetcode.com/problems/valid-perfect-square/
class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        var l = 1
        var r = num
        while l <= r {
            var m = l + (r-l)/2
            var res = num/m
            var remain = num%m
            if res == m && remain == 0 {
                return true
            }
            if res > m {
                l = m + 1
            } else {
                r = m - 1
            }
        }
        return false
    }
}
