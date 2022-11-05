//https://leetcode.com/problems/product-of-array-except-self/
// Time: O(n)
// Space: O(1) (The output array does not count as extra space for space complexity analysis.)
class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        var ans = Array(repeating: 1, count: nums.count) 
        var prefix = 1
        for i in 0..<nums.count {
            ans[i] = prefix
            prefix *= nums[i]
        }
        var postfix = 1
        for i in stride(from: nums.count-1, to: -1, by:-1) {
            ans[i] *= postfix
            postfix *= nums[i]
        }
        return ans
    }
}
