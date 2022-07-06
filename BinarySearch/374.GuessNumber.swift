// https://leetcode.com/problems/guess-number-higher-or-lower/
/**
 * Forward declaration of guess API.
 * @param  num -> your guess number
 * @return          -1 if num is higher than the picked number
 *                  1 if num is lower than the picked number
 *               otherwise return 0
 * func guess(_ num: Int) -> Int
 */

class Solution : GuessGame {
    func guessNumber(_ n: Int) -> Int {
        var l = 1
        var r = n
        while l <= r {
            var m = l + (r-l)/2
            var value = guess(m)
            if value == 0 {
                return m
            }
            if value == -1 {
                r = m - 1
            } else {
                l = m + 1
            }
        }
        return -1
    }
}
