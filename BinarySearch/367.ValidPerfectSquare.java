// https://leetcode.com/problems/valid-perfect-square/
class Solution {
    public boolean isPerfectSquare(int num) {
        int l = 1;
        int r = num;
        while (l <= r) {
            int m = l + (r-l)/2;
            int res = num/m;
            int remain = num%m;
            if (res == m && remain == 0) {
                return true;
            }
            if (res < m) {
                r = m - 1;
            } else {
                l = m + 1;
            }
        }
        return false;
    }
}


