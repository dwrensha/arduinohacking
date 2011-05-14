


//int row[] = {0,1,11,3,10,9,7,6};
//int column[] = {0,4,5,2,8,12};


#define ROWS 7
#define COLUMNS 5
#define DELAY 100


int row[] = {2,12,4,11,10,8,7};
int column[] = {5,6,3,9,13};




boolean wug[ROWS][COLUMNS] = {
  {0,1,1,0,0},
  {1,0,0,1,0},
  {0,1,0,1,0},
  {0,1,0,1,0},
  {0,1,0,0,1},
  {0,0,1,1,0},
  {0,1,1,0,0}
  };
  
  
  boolean alphabet[189][5] =
  {
//a
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{1,0,0,0,1},
//b
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
//c
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,1},
{0,1,1,1,0},
//d
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
//e
{1,1,1,1,1},
{1,0,0,0,0},
{1,0,0,0,0},
{1,1,1,1,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,1,1,1,1},
//f
{1,1,1,1,1},
{1,0,0,0,0},
{1,0,0,0,0},
{1,1,1,1,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
//g
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,1,1},
{1,0,0,0,1},
{0,1,1,1,0},
//h
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
//i
{1,1,1,1,1},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{1,1,1,1,1},
//j
{1,1,1,1,1},
{0,0,0,1,0},
{0,0,0,1,0},
{0,0,0,1,0},
{0,0,0,1,0},
{1,0,0,1,0},
{0,1,1,0,0},
//k
{1,0,0,0,1},
{1,0,0,1,0},
{1,0,1,0,0},
{1,1,0,0,0},
{1,0,1,0,0},
{1,0,0,1,0},
{1,0,0,0,1},
//l
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,0,0,0,0},
{1,1,1,1,1},
//m
{1,0,0,0,1},
{1,1,0,1,1},
{1,0,1,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
//n
{1,0,0,0,1},
{1,1,0,0,1},
{1,0,1,0,1},
{1,0,0,1,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
//o
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//p
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
{1,0,0,0,0},
{1,0,0,0,0},
//q
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,1,0,1},
{1,0,0,1,0},
{0,1,1,0,1},
//r
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
//s
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,0},
{0,1,1,1,0},
{0,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//t
{1,1,1,1,1},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
//u
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//v
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,0,1,0},
{0,1,0,1,0},
{0,1,0,1,0},
{0,0,1,0,0},
{0,0,1,0,0},
//w
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,0,1,0,1},
{0,1,0,1,0},
{0,1,0,1,0},
//x
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,0,1,0},
{0,0,1,0,0},
{0,1,0,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
//y
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,0,1,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
//z
{1,1,1,1,1},
{0,0,0,0,1},
{0,0,0,1,0},
{0,0,1,0,0},
{0,1,0,0,0},
{1,0,0,0,0},
{1,1,1,1,1},
//space
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
};

#define LETTER_MILLIS 500


String message = "HELLO WORLD  ";  

unsigned long messageStartTime;

#define SPEAKER 1
#define POT0 0 
#define POT1 1
//got this by experimentation
#define POTMAX 912 

void setup()
{
  message = "I NEED A HUG  ";
  messageStartTime = millis();
 
  pinMode(0, OUTPUT);
  pinMode(SPEAKER, OUTPUT); 
  
  digitalWrite(SPEAKER,LOW);
  
 // the LED array
  for(int i=0; i<ROWS; i++)
  {
    pinMode(row[i],OUTPUT);
  }
  for(int i=0; i<COLUMNS; i++)
  {
    pinMode(column[i],OUTPUT);
  }
  Serial.begin(9600);
}

void loop()
{
  //depict(wug);
  //depictchar('X');
  //getSerial();
  //drawMessage();
  //tone(SPEAKER, 3830);
  int i = analogRead(POT0);
  bar0(i, POTMAX);
}


unsigned long messageMillis() {
   return millis() - messageStartTime; 
}

void drawMessage(){
  
 int i = (messageMillis() / LETTER_MILLIS) % message.length();
 if(messageMillis() % LETTER_MILLIS   < LETTER_MILLIS * 3 / 4){
   depictchar(message.charAt(i));
 }
}

void getSerial()
{
  if (Serial.available() > 0) 
  {
    
    int light = (Serial.read());
    int rownumber = light%8;
    int columnnumber = light/8;
    lightLed(rownumber,columnnumber);
  }  
}




void lightLed (int rownumber, int columnnumber)
{
  int rowpin, columnpin;
  for(int i=0; i< ROWS;i++) {
    for(int j = 0; j < COLUMNS; j++) {
      rowpin = row[i];
      columnpin = column[j];
      if(i == rownumber && j == columnnumber)
        {
          digitalWrite(columnpin, HIGH);
          digitalWrite(rowpin, LOW);
          delayMicroseconds(DELAY);
        }
        digitalWrite(columnpin, LOW);
        digitalWrite(rowpin,HIGH);
    }
  }    
}
  
 
 void bar0(int myval, int maxval) {
  //Serial.println(myval);  
  int s =  myval * ROWS * COLUMNS / maxval;
  //Serial.println(s);
  for(int i=0; i< ROWS; i++) {
    for(int j = 0; j < COLUMNS; j++) {
       if (s > j + i * COLUMNS) {
        lightLed(i,j);
       }
     }
  }   
}
 
  
  void depict(boolean image[ROWS][COLUMNS])
  {
    int rowpin, columnpin;
    for(int i=0;i<ROWS;i++) {
      for(int j=0;j<COLUMNS; j++) {
        rowpin = row[i];
        columnpin = column[j];
        if(image[i][j] != 0)
        {
          digitalWrite(columnpin, HIGH);
          digitalWrite(rowpin, LOW);
          delayMicroseconds(DELAY);
        }
        digitalWrite(columnpin, LOW);
        digitalWrite(rowpin,HIGH);
      }
    }
  }
  
  

int depictchar(char thischar)
{
  int rowpin, columnpin;
  int offset = 0;
  if(thischar == ' ')
  {
    offset = 7*int(26);
  }
  else offset = 7*int(thischar-65);
    for(int i=0;i<ROWS;i++) {
      for(int j=0;j<COLUMNS;j++) {
        rowpin = row[i];
        columnpin = column[j];
        if(alphabet[(offset+i)][j] != 0)
        {
          digitalWrite(columnpin, HIGH);
          digitalWrite(rowpin, LOW);
          delayMicroseconds(DELAY);
        }
        digitalWrite(columnpin,LOW);
        digitalWrite(rowpin,HIGH);

      }
    }
}
