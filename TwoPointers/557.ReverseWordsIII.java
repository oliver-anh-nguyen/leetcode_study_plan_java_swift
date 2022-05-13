// https://leetcode.com/problems/reverse-words-in-a-string-iii/
class Solution {
    public String reverseWords(String s) {
        String words[] = s.split(" ");
        StringBuilder res = new StringBuilder();
        for (String word : words) {
            char[] arr = word.toCharArray();
            int l = 0;
            int r = arr.length - 1;
            while (l < r) {
                char tmp = arr[l];
                arr[l] = arr[r];
                arr[r] = tmp;
                l++;
                r--;
            }
            String str = new String(arr);
            res.append(str + " ");
        }
        return res.toString().trim();
    }
}
