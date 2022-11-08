//https://leetcode.com/problems/trapping-rain-water/
// Time: O(n)
// Space: O(1) 

class Solution {
    func trap(_ height: [Int]) -> Int {
        if height.isEmpty {
            return 0
        }
        var ans = 0
        var l = 0
        var r = height.count - 1
        var leftMax = height[l]
        var rightMax = height[r]
        while l < r {
            if leftMax < rightMax {
                l += 1
                leftMax = max(leftMax, height[l])
                ans += leftMax - height[l]
            } else {
                r -= 1
                rightMax = max(rightMax, height[r])
                ans += rightMax - height[r]
            }
        }
        return ans
    }
}