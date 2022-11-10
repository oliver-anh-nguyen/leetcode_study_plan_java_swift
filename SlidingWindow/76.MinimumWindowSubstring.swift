//https://leetcode.com/problems/minimum-window-substring/
// Time: O(n)
// Space: O(26)
class Solution {
    func minWindow(_ s: String, _ t: String) -> String {
        if t.isEmpty {
            return ""
        }
        if t == s {
            return t
        }
        var s = Array(s)
        var countT = [Character: Int]()
        var window = [Character: Int]()

        for c in t {
            countT[c, default: 0] += 1
        }

        var have = 0
        var need = countT.count
        var l = 0
        var res = (0, 0)
        var resLen = Int.max

        for r in 0..<s.count {
            var c:Character = s[r]
            window[c, default: 0] += 1
            if countT.keys.contains(c) && window[c, default: 0] == countT[c, default: 0] {
                have += 1
            }
            while have == need {
                if (r - l + 1) < resLen {
                    res = (l, r)
                    resLen = (r - l + 1)
                }
                window[s[l], default: 0] -= 1
                if countT.keys.contains(s[l]) && (window[s[l], default: 0] < countT[s[l], default: 0]) {
                    have -= 1
                }
                l += 1
            }
        }
        var str = String(s)
        let index1 = str.index(str.startIndex, offsetBy: res.0)
        let index2 = str.index(str.startIndex, offsetBy: res.1 + 1)
        return resLen != Int.max ? str.substring(with: index1..<index2) : ""
    }
}

