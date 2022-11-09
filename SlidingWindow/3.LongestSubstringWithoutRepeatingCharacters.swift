//https://leetcode.com/problems/longest-substring-without-repeating-characters/
// Time: O(n)
// Space: O(n)
class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
        if s.isEmpty {
            return 0
        }
        var arr = Array(s)
        var ans = 0
        var set: Set<Character> = []
        var l = 0
        for r in 0..<arr.count {
            while set.contains(arr[r]) {
                set.remove(arr[l])
                l += 1
            }
            set.insert(arr[r])
            ans = max(ans, r - l + 1)
        }
        return ans
    }
}

