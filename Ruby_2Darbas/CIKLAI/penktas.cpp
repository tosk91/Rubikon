#include <iostream>

using namespace std;

int main()
{
for(int k=0,x=1;k<20;x++)
{
    //int x=444;
    int xtemp=x;
    int i=0;
    while(xtemp) //kiek skaitmenu turi skaicius
    {
        i++;
        xtemp=xtemp/10;
    }
//cout << "skaicius turi "<< i << " skaitmenis"<< endl;

    int x1,x1temp,x2,j=0; //tikrina, spausdina
    x1=x;
    x2=x;
    while(x1)
    {
            x1temp=x1%10;
            if (x1temp == 0) break;
            if (x2%x1temp==0)
            {
                j++;//cout<<"dalinasi"<<endl;
            }   //else cout << "nesidalina" << endl;

        x1=x1/10;
    }
    if (j==i) {cout << x /*<< "dalinasi" */<< endl;k++;}
}
return 0;
}
