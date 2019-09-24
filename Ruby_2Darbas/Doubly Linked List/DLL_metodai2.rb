# void print_forward(node *&head, int &n, bool &a)
# {
#    node *start=head;
#    if (n==0){cout<<"The list does not exist.\nPlease create a new one.\n"; a=true;}
#    else for(int i=0;i<n;i++)
#    {
#       cout<<start->data<<"\t";
#       start=start->next;
#    }
#    cout<<"\t"<<"N: "<<n<<"\n\n";
# }
# void print_backwards(node *&tail, int &n, bool &a)
# {
#    node *start=tail;
#    if (n==0){cout<<"The list does not exist.\nPlease create a new one.\n"; a=true;}
#    else for(int i=0;i<n;i++)
#    {
#       cout<<start->data<<"\t";
#       start=start->prev;
#    }
#    cout<<"\t"<<"N: "<<n<<"\n\n";
# }

def print_forward(head,n,a)
    *start = head
    if n == 0
        puts "The list does not exist.\nPlease create a new one.\n"
        a = true
    else
        i = 0
        for i in 0..n-1
          puts "#{start.data} \t"
          start=start.next
        end
    end
    puts "\tN: #{n}\n\n"
end

def print_backwards(*&tail,&n,&a)
    *start = tail
    if n == 0
        puts "The list does not exist.\nPlease create a new one.\n"
        a = true
    else
        for i in 0..n-1
          puts "#{start.data} \t"
          start=start.prev
        end
    end
    puts "\tN: #{n}\n\n"
end