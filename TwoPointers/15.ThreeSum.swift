// https://leetcode.com/problems/3sum/
// Time: O(n^2)
// Space: O(1) depend on sorting
class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        let n = nums.sorted()
        var ans = [[Int]]()

        for (i, v) in n.enumerated() {
            if i > 0 && v == n[i - 1] {
                continue
            }
            var l = i + 1
            var r = n.count - 1
            
            while l < r {
                var sum = v + n[l] + n[r]
                if sum > 0 {
                    r -= 1
                } else if sum < 0 {
                    l += 1
                } else {
                    ans.append([v, n[l], n[r]])
                    l += 1
                    while n[l] == n[l-1] && l < r {
                        l += 1
                    }
                }
            }
        }
        return ans
    }
}