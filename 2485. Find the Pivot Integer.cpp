class Solution {
public:
    int pivotInteger(int n) {
        if(n==1) return 1;
        for(int i=n/2;i<n;i++){
            if(((i*(i+1))/2) == ((n*n - i*i) + (n+i))/2) return i;
        }
        return -1;
    }
};