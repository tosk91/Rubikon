#include <iostream>
#include <cmath>
using namespace std;

int main()
{
    float a,a1,e = 0.00001,n,n1;
    n=1;
    n1=n+1;
    do
    {
        a=(n+1)/(sqrt((n+1)*(n+1)+1)*(sqrt((n+1)*(n+1)-1)));
        a1=(n1+1)/(sqrt((n1+1)*(n1+1)+1)*(sqrt((n1+1)*(n1+1)-1)));
        n++;
        n1++;
    }   while (abs(a1-a)>=e);
    cout<<"a["<<n<<"]: "<<a<<endl;
    cout<<"a["<<n1<<"]: "<<a1<< endl;
    cout<<"riba yra tarp "<<n<<" ir "<<n1<<" nariu."<<endl;
    //c = abs(a - a1);
    //cout << c << endl << endl;
    //cout<<fixed<<setprecision(5)<<e<<endl<<endl;
    /*int n;
    cout<<"iveskite n"<<endl;
    cin>>n;
    float c[n];
    c[1] = (n+1)/((sqrt(pow((n+1),2)+1))(sqrt(pow((n+1),2)-1)));
    float b = c[n+1];
    cout << "a[n+1] yra: " << b << endl;
    */
return 0;
}
