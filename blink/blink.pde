


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
  
  
  boolean alphabet[217][COLUMNS] =
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
//[
{1,1,1,0,0},
{1,0,1,0,0},
{1,0,1,0,0},
{1,0,1,0,0},
{1,0,1,0,0},
{1,0,1,0,0},
{1,1,1,0,0},
// backslash
{0,0,0,0,0},
{0,0,0,0,0},
{1,0,0,0,0},
{0,1,0,0,0},
{0,0,1,0,0},
{0,0,0,1,0},
{0,0,0,0,1},
//]
{0,0,1,1,1},
{0,0,1,0,1},
{0,0,1,0,1},
{0,0,1,0,1},
{0,0,1,0,1},
{0,0,1,0,1},
{0,0,1,1,1},

{0,0,1,0,0},
{0,1,0,1,0},
{1,0,0,0,1},
{0,1,0,1,0},
{0,0,1,0,0},
{0,0,0,0,0},
{0,0,0,0,0},

{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{0,0,0,0,0},
{1,1,1,1,1},

  };
  

#define LETTER_MILLIS 300

#define GREETINGS 6

String greetings[] = {
 "JEG HAR BRUG FOR ET KRAM   ",
 "JAI BESOIN DUN CALIN  ",
 "I NEED A HUG   ",
 "IK HEB EEN KNUFFEL   ",
 "TARVITSEN HALAUKSEN   ",
 "I GA LE BARROG  "
 };

int charRotation = 0;

String message = "HELLO WORLD  ";  

unsigned long messageStartTime;

#define SPEAKER 1

#define POT0 0 
#define POT1 1
//got this by experimentation
#define POTMAX 912 

#define POT_BUFFER_SIZE 100

int lastpot0avg, lastpot1avg;
int pot0tot,pot1tot;
int potCounter = 0;

#define FOAM 2


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
  //Serial.begin(9600);
}


/* 0 = display message
   10 = pot0
   11 = pot1
*/
int mode= 0;


unsigned long returnTime;

void loop()
{
  //depict(wug);
  //depictchar('X');
  //getSerial();
  //drawMessage();
  int toneval = (10 *(analogRead(POT0))  ); // analogRead(FOAM) - 900 * 800;
  //Serial.println(toneval);
  tone(SPEAKER, toneval  );

  int pot0tmp = analogRead(POT0);
  int pot1tmp = analogRead(POT1);
  message = greetings[(pot0tmp * GREETINGS  / POTMAX) % GREETINGS ];
  charRotation = lastpot1avg * 20 / POTMAX;
  pot0tot += pot0tmp;
  pot1tot += pot1tmp;
  potCounter++;
    if(potCounter >= POT_BUFFER_SIZE){
      int pot0avg = pot0tot / POT_BUFFER_SIZE;
      int pot1avg = pot1tot / POT_BUFFER_SIZE;
      if(abs(pot0avg - lastpot0avg) > 5) {
        mode = 10;
        returnTime = millis() + 1000;
      } else if(abs(pot1avg - lastpot1avg) > 5) {
        mode = 11;
        returnTime = millis() + 1000;
      } 
      lastpot0avg = pot0avg;
      lastpot1avg = pot1avg;
      pot0tot = 0;
      pot1tot = 0;
      potCounter = 0;
    }  

  if(mode == 0){
    drawMessage();
    
  } else if (mode == 10){
     bar0(analogRead(POT0),POTMAX);
     if(millis() > returnTime) {
        mode = 0; 
     }
  } else if (mode == 11){
     bar1(analogRead(POT1),POTMAX);
     if(millis() > returnTime) {
        mode = 0; 
     }
  }

}


unsigned long messageMillis() {
   return millis() - messageStartTime; 
}

void drawMessage(){
  
 int i = (messageMillis() / LETTER_MILLIS) % message.length();
 if(messageMillis() % LETTER_MILLIS   < LETTER_MILLIS * 3 / 4){
   depictchar(   rotatechar(message.charAt(i), charRotation)  );
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
  
void clearLed() {
  for(int i=0; i< ROWS; i++) {
    for(int j = 0; j < COLUMNS; j++) {
      int rowpin = row[i];
      int columnpin = column[j];
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

void bar1(int myval, int maxval) {
  //Serial.println(myval);  
  int s =  myval * ROWS * COLUMNS / maxval;
  //Serial.println(s);
  for(int i=0; i< ROWS; i++) {
    for(int j = 0; j < COLUMNS; j++) {
       if (s > i + j * ROWS) {
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
  if(thischar == ' ' )
  {
    clearLed();
    return 0;
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


char rotatechar( char thischar, int thismany) {
 int res= (((thischar - 'A' ) + (thismany % 26)) % 26)  + 'A';
 if(res >= 'A' && res <= 'Z') {
   return res;
 } else{
   return thischar;
 }

}



