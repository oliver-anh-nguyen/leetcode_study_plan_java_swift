//https://leetcode.com/problems/two-sum/
// Two loop: O(n^2), Space: O(1)
// Hash: O(n), Space: O(n)
class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var ans = [Int]()
        var dict = [Int: Int]()
        
        for (index, num) in nums.enumerated() {
            let complement = target - num
            if dict.keys.contains(complement) {
                ans.append(index)
                ans.append(dict[complement]!)
            }
            dict[num] = index
        }
        return ans
    }
}