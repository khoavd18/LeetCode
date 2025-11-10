class Solution {
public:
    int maximum69Number (int num) {
        if(num == 9999) return num;
        string s = to_string(num);
        string res = "";
        int ok = 0;
        for(int i=0;i<s.size();i++){
            if(s[i] == '6' && ok == 0){
                res += "9";
                ok = 1;
            }
            else res += s[i];
        }
        int n = stoi(res);
        return n;
    }
};