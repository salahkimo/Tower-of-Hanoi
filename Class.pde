
class Mstack 
{
private class Node{
 int value;
 Node next; 
}
int size;
int indice;
Node top;
Node last;
Mstack()
{
  this.top=null;
  this.last=null;
  this.size=0;
}
boolean IsEmpty(){
  return(this.top==null);
} 

int peek(){
  if(top!=null)return this.top.value;
  else{println("cant give peek stack is empty");
  return -1;}
  
}

void push(int val){
  Node temp= new Node();
  temp.value=val;
  temp.next=this.top;
  if(this.top==null){this.last=temp;}
  this.top=temp;
  this.size++;
}

void pushF(int val){
  Node temp= new Node();
  temp.value=val;
  if(this.top==null){this.top=temp;this.last=temp;}
  else{
  this.last.next=temp;
  this.last=temp;}
  this.size++;
}

int pop(){
  if(this.top==null){println("stack is empty");return -1;}
  Node xx=this.top;
  int x= xx.value;
  this.top=this.top.next;
  this.size--;
  return x;
}


  }


void DrawTour(int TourNumber,int BarNumber,int TourPosition)
{
fill(255,0,0);
float h=height/(number+3);
//let w=width/((TourNumber+1)*3);
float w=width/3.1 - TourNumber*width/(3.1*(number+1));
float x=BarNumber*width/3 + width/6 -w/2;
float y=height-(TourPosition+1)*h;


rect(x,y,w,h,h/5);
}

void hanoi2(Mstack source,Mstack destination,Mstack middle,Mstack RS,Mstack RD,Mstack RV,int n){
  if(n==1){
    int a=source.pop();
    RV.pushF(a);
    destination.push(a);
    RD.pushF(destination.indice);
    RS.pushF(source.indice);
    
  }
  else{
    hanoi2(source,middle,destination,RS,RD,RV,n-1);
    hanoi2(source,destination,middle,RS,RD,RV,1);
    hanoi2(middle,destination,source,RS,RD,RV,n-1);
  
  
  }
}

