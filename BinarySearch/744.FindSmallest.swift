// https://leetcode.com/problems/find-smallest-letter-greater-than-target/
class Solution {
    func nextGreatestLetter(_ letters: [Character], _ target: Character) -> Character {
        var l = 0
        var r = letters.count - 1
        while l <= r {
            var m = l + (r-l)/2
            if letters[m] > target {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return letters[l%letters.count]
    }
}
