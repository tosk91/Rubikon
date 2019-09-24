#include <iostream>

using namespace std;

int main()
{
for (long long int i=1,x=1;i<=40;x++)
{
    long long int x1,x2=0;
    //cin >> x; cout << endl;
    x1=x;
    do
    {
        x2=x2*10+x1%10;
        x1=x1/10;
    } while(x1!=0);

    long long int xkv=x*x;
    long long int a=xkv,b=0;
    do
    {
        b=b*10+a%10;
        a=a/10;
    }   while(a!=0);
    //cout << "x kv.: " << xkv << endl;
    //cout << "kv. atv.: " << b << endl;

    if (x2==x && b==xkv)
    {
        cout << i << "-asis palindromas: " << x2 << endl;
        //cout << "x atvirksciai: " << x2 << endl;
        cout << "jo kv. irgi palindromas: " << xkv << endl;
        i++;
    }

        //else cout << "kvadratas nera palindromas" << endl;
}
    return 0;
}
