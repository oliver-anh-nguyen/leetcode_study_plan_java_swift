//https://leetcode.com/problems/container-with-most-water/
// Time: O(n)
// Space: O(1) 
class Solution {
    func maxArea(_ height: [Int]) -> Int {
        var ans = 0
        var l = 0
        var r = height.count - 1

        while l < r {
            var area = (r-l) * min(height[r], height[l])
            ans = max(ans, area)

            if height[l] > height[r] {
                r -= 1
            } else {
                l += 1
            }
        }
        return ans
    }
}