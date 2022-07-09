// https://leetcode.com/problems/sqrtx/

class Solution {
    //Look for the critical point: i * i <= x && (i+1)(i+1) > x
    public int mySqrt(int x) {
        if (x == 0) {
            return 0;
        }
        int l = 1;
        int r = x;
        while (l <= r) {
            int m = l + (r-l)/2;
            if (m <= x/m && (m+1) > x/(m+1)) {
                return m;
            }
            if (m > x/m) {
                r = m - 1;
            } else {
                l = m + 1;
            }
        }
        return -1;
    }
}