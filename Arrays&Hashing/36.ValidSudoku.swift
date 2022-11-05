//https://leetcode.com/problems/valid-sudoku/
// Time: O(r.c)
// Space: O(r.c)
var rows = Array(repeating: [Character](), count: 9)
var cols = Array(repeating: [Character](), count: 9)
var squares = Array(repeating: Array(repeating: [Character](), count: 3), count: 3)

for r in 0...8 {
    for c in 0...8 {
        let val = board[r][c]
        if val == "." {
            continue
        }
        if rows[r].contains(val)
        || cols[c].contains(val)
        || squares[r/3][c/3].contains(val) {
            return false
        }
        rows[r].append(val)
        cols[c].append(val)
        squares[r/3][c/3].append(val)
    }
}
return true
