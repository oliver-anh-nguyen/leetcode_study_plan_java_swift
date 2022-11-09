//https://leetcode.com/problems/longest-repeating-character-replacement/
// Time: O(n)
// Space: O(26)

class Solution {
    func characterReplacement(_ s: String, _ k: Int) -> Int {
        var count = [Character: Int]()
        var res = 0
        var l = 0
        var s = Array(s)
        var maxf = 0
        for r in 0..<s.count {
            count[s[r], default:0] += 1
            maxf = max(maxf, count[s[r], default:0])
            while r - l + 1 - maxf > k {
                count[s[l], default:0] -= 1
                l += 1
            }
            res = max(res, r - l + 1)
        }
        return res
    }
}