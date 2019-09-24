#include <iostream>

using namespace std;

int main()
{
    int sk1=0,sk2=0,a=0,sk3=0,b;
    int i = 0;
    cout<<"Iveskite skaiciu"<<endl;
    cin>>a;
    sk1=a;
    do //apvercia skaiciu
    {
        sk3=10*sk3+sk1%10;
        sk1=sk1/10;
        i++;
    }   while (sk1!=0);

    cout<<"skaicius su padvigubintais skaitmenimis:"<<endl;
    while (i > 0) //spausdina dviguba atvirksciai
    {
        sk2=sk2*100+(sk3%10)*10+(sk3%10);
        sk3=sk3/10;
        i--;
    }
        cout<<sk2<<endl;
return 0;
}
