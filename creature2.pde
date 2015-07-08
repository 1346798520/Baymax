int dx=5,x=50,y=0,dy=5,t=5,k=100;
float a=random(0,500);
float b=random(0,500);

void setup() {
    size(825,825);
}

void draw() {
    if(x>=500||x<=-75)dx=-dx;
    if(y>=200||y<=-50)dy=-dy;
    if(t<0) t=5;
    if(k<0) k=100;
    if(k==100) b=random(0,500);
    background(0);
    
    fill(255,255,255);
    ellipseMode(CENTER); 
    ellipse(x+200,y+290,250,200);
    ellipse(x+200,y+300,200,250);
    ellipse(x+200,y+150,160,120);
    
    fill(0,0,0);
    if(t==5) a=random(0,500);
    if(a>=100) {
        ellipse(x+170,y+150,20,20);
        ellipse(x+230,y+150,20,20);
        line(x+180,y+150,x+220,y+150);
    }
    else
        line(x+180,y+150,x+220,y+150);
    if(b>=250)x+=dx;
    else y+=dy;
    t--;
}



