//https://leetcode.com/problems/longest-consecutive-sequence/
// Time: O(nlogn)
// Space: O(1)

class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var n = nums.sorted()
        // 1, 2, 3, 4, 100, 200
        // 0, 0, 1, 2, 3, 4, 5, 6, 7, 8
        var ans = 0
        var len = 1
        for i in 0..<n.count-1 {
            if n[i] != n[i+1] {
                if n[i + 1] == n[i] + 1 {
                    len += 1
                } else {
                    ans = max(ans, len)
                    len = 1
                }
            } 
        }
        return max(ans, len)
    }
}

// Time: O(n)
// Space: O(n)
class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        if nums.count == 0 {
            return 0
        }
        var set:Set<Int> = []
        for i in nums {
            set.insert(i)
        }
        var ans = 0
        
        for i in set {
            if !set.contains(i-1) {
                var len = 1
                var curNum = i
                while set.contains(curNum+1) {
                    curNum += 1
                    len += 1
                }
                ans = max(ans, len)
            }
        }
        return ans
    }
}