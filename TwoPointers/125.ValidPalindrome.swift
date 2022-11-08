//https://leetcode.com/problems/valid-palindrome/

Time: O(n)
Space: O(1)
class Solution {
    func isPalindrome(_ s: String) -> Bool {
        if s.isEmpty {
            return true
        }
        var arr = Array(s)
        var l = 0
        var r = arr.count - 1
        while l < r {
            if !arr[l].isLetter && !arr[l].isNumber {
                l += 1
                continue
            }
            if !arr[r].isLetter && !arr[r].isNumber {
                r -= 1
                continue
            }
            guard arr[l].lowercased() == arr[r].lowercased() else {
                return false
            }
            l += 1
            r -= 1
        }
        return true
    }
}

