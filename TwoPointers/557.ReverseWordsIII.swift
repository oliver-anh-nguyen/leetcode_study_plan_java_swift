// https://leetcode.com/problems/reverse-words-in-a-string-iii/
class Solution {
    func reverseWords(_ s: String) -> String {
        let words = s.split(separator: " ")
        var result = ""
        for word in words {
            var arrWord = Array(word)
            var l = 0
            var r = arrWord.count - 1
            while (l < r) {
                var tmp = arrWord[l]
                arrWord[l] = arrWord[r]
                arrWord[r] = tmp
                l = l + 1
                r = r - 1
            }
            result = result + String(arrWord) + " "
        }
        return String(result.dropLast())
    }
}
