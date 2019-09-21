#include <iostream>
#include <stdlib.h>
using namespace std;
struct node
{
    int data;
    node *next;
    node *prev;
};
void create(node *&head, node *&tail, int &n)
{
   cout<<"Please specify how many nodes will your list have: ";
   cin>>n;
   node *temp=NULL;
   if(n==1)
   {
      head=new node;
      head->data=1;
      head->next=NULL;
      head->prev=NULL;
      tail=head;
   }
   else if (head!=NULL) cout<<"The given pointer is not NULL.\nPlease provide a proper head.";
   else
   {
      head=new node;
      head->data=1;
      head->next=NULL;
      head->prev=NULL;
      temp=head;
      tail=head;
      for(int i=0;i<n-1;i++)
      {
         node *newNode=new node;
         newNode->data=i+2;
         newNode->next=NULL;
         newNode->prev=temp;
         temp->next=newNode;
         temp=newNode;
         tail=newNode;
      }
   }}
void print_forward(node *&head, int &n, bool &a)
{
   node *start=head;
   if (n==0){cout<<"The list does not exist.\nPlease create a new one.\n"; a=true;}
   else for(int i=0;i<n;i++)
   {
      cout<<start->data<<"\t";
      start=start->next;
   }
   cout<<"\t"<<"N: "<<n<<"\n\n";
}
void print_backwards(node *&tail, int &n, bool &a)
{
   node *start=tail;
   if (n==0){cout<<"The list does not exist.\nPlease create a new one.\n"; a=true;}
   else for(int i=0;i<n;i++)
   {
      cout<<start->data<<"\t";
      start=start->prev;
   }
   cout<<"\t"<<"N: "<<n<<"\n\n";
}
void ins_first(node *&head, int &n)
{
   node *newNode=new node;
   newNode->data=111;
   newNode->next=head;
   newNode->prev=NULL;
   head->prev=newNode;
   head=newNode;
   n++;
}
void ins_last(node *&tail, int &n)
{
   node *newNode=new node;
   newNode->data=333;
   newNode->next=NULL;
   newNode->prev=tail;
   tail->next=newNode;
   tail=newNode;
   n++;
}
void ins_pos (node *&head, node *&tail, int &n)
{
   cout<<"\nPlease select a slot you want to put a new node in: ";
   int pos;
   cin>>pos;
   if (pos==0 || pos==1) ins_first(head, n);
   else if (pos==n+1) ins_last(tail,n);
   else if(pos>1 && pos<=n)
   {
   node *newNode=new node;
   node *tmp=head;
   node *tmp1=head;
   for (int i=0;i<n;i++)
   {
      tmp1=tmp->next;
      tmp1->prev=tmp;
      if (i==pos-2)
      {
         tmp->next=newNode;
         newNode->next=tmp1;
         newNode->prev=tmp;
         newNode->data=123;
      }
      tmp=tmp->next;
   }
   n++;
	}
	else cout<<"The position is non-existent\n";
}
void ins_before (node *&head, node *&tail, int &n)
{
   cout<<"\nPlease select element before which you want to insert a new node: ";
   int ele, flag=0;
   cin>>ele;
   if (ele==head->data) {ins_first(head, n); flag=1;}
   else if (ele==tail->data) {ins_last(tail,n); flag=1;}
   else
   {
   node *newNode=new node;
   node *tmp=head;
   node *tmp1=head;
   for (int i=0;i<n-1;i++)
   {
      tmp1=tmp->next;
      tmp1->prev=tmp;
      if (tmp1->data==ele)
      {
         newNode->data=321;
         newNode->next=tmp1;
         newNode->prev=tmp;
         tmp->next=newNode;
         tmp1->prev=newNode;
         flag=1;
         break;
      }
      tmp=tmp->next;
   }
   n+=flag;
   }
   if(flag==0) cout<<"There is no such element.\n";
}
void del_first (node *&head, int &n)
{
   node *tmp=head;
   head=head->next;
   delete tmp;
   n--;
}
void del_last (node *&tail, int &n)
{
   node *tmp=tail;
   tail=tail->prev;
   tail->next=NULL;
   delete tmp;
   n--;
}
void deletion(node *&head, int &n, bool a){while (n) del_first(head,n); if (head==NULL) a=true;}
void del_element (node *&head, node *&tail, int &n, bool &a)
{
   cout<<"Please select element you would like to see deleted: ";
   int ele, c=0, flag=0;
   cin>>ele;
   node *tmpp=head;
   node *tmp=NULL;
   node *tmpn=NULL;
   if (n==0) {cout<<"The List does not exist.\nPlease create a new list"; a=true;}
   else if (n==1) {deletion(head,n,a); flag=1;}
   else if (n>1)
   {
      for (int i=0;i<n-2;i++)
      {
         tmp=tmpp->next;
         tmp->prev=tmpp;
         tmpn=tmp->next;
         tmpn->prev=tmp;
         if (head->data==ele && head->next!=NULL) {del_first(head,n); flag=1; break;}
         else if (head->data==ele && head->next==NULL) {deletion(head,n,a); flag=1; break;}
         else if (tmp->data==ele && tmp->next!=NULL) {tmpp->next=tmpn; tmpn->prev=tmpp; delete tmp; c=1; flag=1; break;}
         else if (tail->data==ele && tail->prev==NULL) {deletion(head,n,a); flag=1; break;}
         else if (tail->data==ele && tail->prev!=NULL) {del_last(tail,n); flag=1; break;}
         tmpp=tmpp->next;
      }}
   n-=c;
   if (flag==0) cout<<"There is no such element.\n";
   else if (flag==1) cout<<"Select element was successfully deleted.\n";
}
void message_yes(){cout<<"The position was successfully deleted.\n";}
void message_no(){cout<<"There is no such position.\n";}
void del_pos (node *&head, node *&tail, int &n, bool &a)
{
   int flag=0;
   if (n==0) {cout<<"The List does not exist.\nPlease create a new list"; a=true;}
   else if (n==1) {deletion(head,n,a); flag=1;}
   else if (n>1)
   {
      cout<<"Please select position you would like to see deleted: ";
      int pos, c=0;
      cin>>pos;
      if (pos==0 || pos==1) {del_first(head,n); flag=1;}
      else if (pos==n) {del_last(tail,n); flag=1;}
      else if (pos>1 && pos<n)
      {
         node *tmpp=head;
         node *tmpn=NULL;
         node *tmp=NULL;
         for(int i=0;i<n;i++)
         {
            tmp=tmpp->next;
            tmpn=tmpp->next->next;
            if (i==pos-2)
            {
               tmpp->next=tmpn;
               tmpn->prev=tmpp;
               delete tmp;
               flag=1;
               c=1;
               break;
            }
            tmpp=tmpp->next;
         }}
      n-=c;
   }
   if (flag==1) cout<<"Select position was successfully deleted.\n";
   else if (flag==0) cout<<"There is no such position.\n";
}
void seek(node *head, int n)
{
   int ele, flag=0, j=0, elem;
   int pos[n];
   cout<<"Please specify the element you wish to find: "; cin>>ele;
   for (int i=0;i<n;i++)
   {
      if (ele==head->data) {/*<<i+1<<"\n"*/elem=head->data;flag=1;pos[j]=i+1;j++;}
      head=head->next;
   }
   if (flag==0) cout<<"There is no such element.\n";
   else if(flag==1)
   {
      cout<<"Your element: "<<elem<<" was found in position(-s): ";
      for (int i=0;i<j;i++) cout<<pos[i]<<" ";
      }//cout<<"found it!\n";
   cout<<"\n";
}
void print_main_menu(){cout<<"Please select one of the following menu items:\n1. Create a Doubly Linked List.\n2. Print your Doubly Linked List beginning-end.\n3. Print your Doubly Linked List end-beginning.\n4. Insert a new element in a desired position.\n5. Insert a new element before an already existing element.\n6. Delete a chosen element from your Doubly Linked List.\n7. Delete an element from the position of choice in your Doubly Linked List.\n8. Delete the entire Doubly Linked List.\n9. Search for an element in your Doubly Linked List.\n0. Exit the main menu.\nYour decision: ";}
void print_choice_menu(){cout<<"Please select one of the following menu items:\n1. Print your Doubly Linked List beginning-end.\n2. Print your Doubly Linked List end-beginning.\n3. Insert a new element in a desired position.\n4. Insert a new element before an already existing element.\n5. Delete a chosen element from your Doubly Linked List.\n6. Delete an element from the position of choice in your Doubly Linked List.\n7. Delete the entire Doubly Linked List.\n8. Search for an element in your Doubly Linked List.\n0. Go back to the main menu.\nYour decision: ";}
int main()
{
   node *DLLHead=NULL, *DLLTail=NULL;
   int n=0;
   bool main_menu_exit=false, choice_menu_exit=false;
   do
   {
      print_main_menu();
      int choice1;
      cin>>choice1; cout<<"\n";
      system("CLS");
      switch (choice1)
      {
      case 0: {main_menu_exit=true; break;}
      case 1: {
         create(DLLHead,DLLTail,n);
         do
         {
            print_choice_menu();
            int choice2;
            cin>>choice2; cout<<"\n";
            system("CLS");
            switch(choice2)
            {
            case 0: {choice_menu_exit=true; main_menu_exit=false; break;}
            case 1: {print_forward(DLLHead,n,choice_menu_exit); break;}
            case 2: {print_backwards(DLLTail,n,choice_menu_exit); break;}
            case 3: {ins_pos(DLLHead,DLLTail,n); break;}
            case 4: {ins_before(DLLHead,DLLTail,n); break;}
            case 5: {del_element(DLLHead,DLLTail,n,choice_menu_exit); break;}
            case 6: {del_pos(DLLHead,DLLTail,n,choice_menu_exit); break;}
            case 7: {deletion(DLLHead,n,choice_menu_exit);break;}
            case 8: {seek(DLLHead,n);break;}
            default: cout<<"There is no such choice. Try again.\n";
         }} while(choice_menu_exit!=true);
         break;}
      case 2: {if (DLLHead==NULL){cout<<"You must first create a Linked List.\n"; break;}
               else {print_forward(DLLHead,n,choice_menu_exit); break;}}
      case 3: {if (DLLHead==NULL){cout<<"You must first create a Linked List.\n"; break;}
               else {print_backwards(DLLTail,n,choice_menu_exit); break;}}
      case 4: {if (DLLHead==NULL){cout<<"You must first create a Linked List.\n"; break;}
               else {ins_pos(DLLHead,DLLTail,n); break;}}
      case 5: {if (DLLHead==NULL){cout<<"There is nothing to delete.\n"; break;}
               else {ins_before(DLLHead,DLLTail,n); break;}}
      case 6: {if (DLLHead==NULL){cout<<"There is nothing to delete.\nYou must first create a Linked List.\n"; break;}
               else {del_element(DLLHead,DLLTail,n,choice_menu_exit); break;}}
      case 7: {if (DLLHead==NULL){cout<<"There is nothing to delete.\nYou must first create a Linked List.\n"; break;}
               else {del_pos(DLLHead,DLLTail,n,choice_menu_exit); break;}}
      case 8: {if (DLLHead==NULL){cout<<"There is nothing to delete.\nYou must first create a Linked List.\n"; break;}
               else {deletion(DLLHead,n,choice_menu_exit); break;}}
      case 9: {if (DLLHead==NULL){cout<<"There is no pool to search in.\nYou must first create a Linked List.\n"; break;}
               else {seek(DLLHead,n); break;}}
      default: cout<<"There is no such choice. Try again.\n";
   }} while(main_menu_exit!=true);
   /*create(DLLHead,DLLTail,n);
   print_forward(DLLHead,n,main_menu_exit);
   deletion(DLLHead,n,main_menu_exit);
   print_forward(DLLHead,n,main_menu_exit);
   cout<<"\n"<<DLLHead->data;*/
   cout << "Hello world!\n";
   return 0;
}
