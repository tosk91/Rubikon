#include <iostream>

using namespace std;

int main()
{
    int x = 1;
    for (int i=10;i<=20;i++)
    {
        if (i%2==0) x=x*i;
    }
    cout << "intervalo [10;20] lyginiu skaiciu sandauga: " << x << endl;
    return 0;
}
