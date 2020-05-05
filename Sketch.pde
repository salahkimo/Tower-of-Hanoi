

int number=5;
int BarWidth=300/number;

  Mstack stack1= new Mstack();
  Mstack stack2= new Mstack();
  Mstack stack3= new Mstack();
  Mstack RS= new Mstack();
  Mstack RD= new Mstack();
  Mstack RV= new Mstack();
  int Tour[][]=new int[3][];
  int a[]=new int[3];

void setup() {
  Tour[0]=new int[number];
  Tour[1]=new int[number];
  Tour[2]=new int[number];
  stack1.indice=0;
  stack2.indice=1;
  stack3.indice=2;
  
  a[0]=number;
  a[1]=0;
  a[2]=0;
  fullScreen();
  for(int i=0;i<number;i++){Tour[0][i]=i;stack1.push(i);}
  hanoi2(stack1,stack2,stack3,RS,RD,RV,number);
 
 println(RD.size);
  }

  
void draw() {
  background(255);
  frameRate(3);
 
fill (0);
float bx=width/6-BarWidth/2;
float by=height/(number+3);

rect(bx, by ,BarWidth,height,BarWidth/2);   
bx=3*(width/6)-BarWidth/2;

rect(bx,by,BarWidth,height,BarWidth/2);

bx=5*(width/6)-BarWidth/2;
rect(bx,by,BarWidth,height,BarWidth/2 );

for (int i=0;i<a[0];i++)
{
  DrawTour(Tour[0][i],0,i);
  
}

for (int i=0;i<a[1];i++)
{
  DrawTour(Tour[1][i],1,i);
  
}

for (int i=0;i<a[2];i++)
{
  DrawTour(Tour[2][i],2,i);
  
}

if(!RD.IsEmpty())
{
  int d=RD.pop();
  int s=RS.pop();
  int v=RV.pop();
  Tour[d][a[d]]=v;a[d]++;
  a[s]--;
}

}



