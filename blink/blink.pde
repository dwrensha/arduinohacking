
#include <avr/pgmspace.h>

//int row[] = {0,1,11,3,10,9,7,6};
//int column[] = {0,4,5,2,8,12};


#define ROWS 7
#define COLUMNS 5
#define DELAY 100


int row[] = {1,12,4,11,10,8,7};
//int row[] = {12,12,4,11,10,8,7};
int column[] = {5,6,3,9,13};


// progmem means store in flash
 boolean alphabet[][COLUMNS] PROGMEM  =
  {
//
{0,1,1,1,0},
{1,0,1,0,1},
{1,0,1,0,1},
{1,1,1,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//
{1,1,1,1,1},
{1,0,0,0,1},
{0,0,0,0,0},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{1,1,1,1,1},
//
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,1,0,1},
{0,1,1,1,0},
{1,0,1,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//
{1,1,1,1,1},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,0,1,0,0},
{0,1,1,1,0},
//
{1,0,0,0,1},
{1,0,1,0,1},
{1,1,0,1,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//
{1,0,1,0,1},
{1,0,1,0,1},
{0,1,1,1,0},
{0,1,1,1,0},
{0,1,1,1,0},
{0,0,1,0,0},
{0,0,1,0,0},
//
{1,1,0,1,1},
{1,0,1,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,1,0,1},
{0,1,0,1,0},
{0,1,0,1,0},
//
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,0,1,0},
{1,1,1,1,1},
{0,1,0,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
//
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,0,1,0},
{0,0,1,0,0},
{1,1,1,1,1},
{1,0,1,0,1},
{1,0,1,0,1},
//
{1,1,1,1,1},
{1,0,0,0,1},
{0,1,0,1,0},
{0,0,1,0,0},
{0,1,0,1,0},
{1,0,0,0,1},
{1,1,1,1,1},
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
{0,1,1,0,0},
{0,0,1,0,0},
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
//
{0,1,1,1,0},
{1,0,1,0,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,1,1,1,1},
{1,0,1,0,1},
{1,0,0,0,1},
//
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{0,1,1,1,0},
//
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,1,0},
{1,0,0,1,0},
{1,0,0,1,0},
{1,0,0,0,1},
{0,1,1,1,0},
//
{1,1,1,1,0},
{1,1,0,0,1},
{1,0,1,0,1},
{1,0,0,1,1},
{1,0,1,0,1},
{1,1,0,0,1},
{1,1,1,1,0},
//
{1,1,1,1,1},
{1,0,1,0,0},
{1,0,1,0,0},
{1,1,1,1,0},
{1,0,1,0,0},
{1,0,1,0,0},
{1,1,1,1,1},
//
{1,1,1,1,1},
{1,0,0,0,1},
{1,0,0,1,0},
{1,1,1,1,0},
{1,0,0,1,0},
{1,0,0,1,0},
{1,1,1,0,0},
//
{0,1,1,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{1,1,1,1,1},
//
{1,0,1,0,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,1,1,1,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,1,1,1,1},
//
{1,1,1,1,1},
{0,0,1,0,0},
{0,0,1,0,0},
{1,1,1,1,1},
{0,0,1,0,0},
{0,0,1,0,0},
{1,1,1,1,1},
//
{1,1,1,1,1},
{1,0,0,1,0},
{0,0,0,1,0},
{0,1,0,1,0},
{0,1,0,1,0},
{1,0,0,1,0},
{0,1,1,0,0},
//
{1,0,0,0,1},
{1,0,0,1,1},
{1,0,1,0,1},
{1,1,0,0,1},
{1,0,1,0,1},
{1,0,0,1,1},
{1,0,0,0,1},
//
{1,0,0,0,0},
{1,1,0,0,0},
{1,0,1,0,0},
{1,0,0,1,0},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,1},
//
{1,0,0,0,1},
{1,1,0,1,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,0,1,0,1},
{1,1,1,1,1},
{1,0,1,0,1},
//
{1,1,1,1,1},
{1,1,0,0,1},
{1,0,1,0,1},
{1,0,0,1,1},
{1,0,0,0,1},
{1,0,0,0,1},
{1,1,1,1,1},
//
{0,1,1,1,0},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,0,0,1},
{0,1,1,1,0},
//
{1,1,1,1,0},
{1,0,0,0,1},
{1,1,1,1,1},
{1,0,1,0,1},
{1,0,1,1,0},
{1,0,0,1,0},
{1,0,0,1,0},
// wug = 'p'
  {0,1,1,0,0},
  {1,0,0,1,0},
  {0,1,0,1,0},
  {0,1,0,1,0},
  {0,1,0,0,1},
  {0,0,1,1,0},
  {0,1,1,0,0},
  // arrow = 'q'
  {0,0,1,0,0},
  {0,0,1,0,0},
  {0,0,1,0,0},
  {0,0,1,0,0},
  {1,0,1,0,1},
  {0,1,1,1,0},
  {0,0,1,0,0},
  };
  

#define LETTER_MILLIS 400

#define GREETINGS 5

String greetings[] = {
 "KATSO KAPTEENIN LOKI q  ",
 "VOIR LE JOURNAL DU CAPITAINE q ",
 "SEE CAPTAINS LOG q   ",
 "VEA EL RESGISTRO DEL CAPITAN q  ",
 "IKUSI KAPITAIN EN SAIOA q  "
 };

int charRotation = 0;

String message = "";  

unsigned long messageStartTime;

#define SPEAKER 2

#define BIGBUTT A2
#define SMALLBUTT A3

#define BUTT_BUFFER_SIZE 25

boolean lastbigbutt[BUTT_BUFFER_SIZE], lastsmallbutt[BUTT_BUFFER_SIZE];
long bigbutt_tot, smallbutt_tot;
int bigbutt_avg, smallbutt_avg;
int buttCounter = 0;

#define POT0 0 
#define POT1 1
//got this by experimentation
#define POTMAX 911 

#define POT_BUFFER_SIZE 100

int lastpot0[POT_BUFFER_SIZE], lastpot1[POT_BUFFER_SIZE];
long pot0tot, pot1tot;
int pot0avg, pot1avg;
int potCounter = 0;

int toneval = 0;

#define FOAM 2


void setup()
{
  
  for(int i = 0; i < BUTT_BUFFER_SIZE; i++){
   lastbigbutt[i] = 1;
   lastsmallbutt[i] = 1; 
  }
  bigbutt_tot = BUTT_BUFFER_SIZE;
  smallbutt_tot = BUTT_BUFFER_SIZE;
  
  for(int i = 0; i < POT_BUFFER_SIZE; i++){
   lastpot0[i] = 0;
   lastpot1[i] = 0; 
  }
  
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

int puzzle = 1;

unsigned long returnTime;

void loop()
{
  switch (puzzle) {
  case 1 : 
    puzzle1(); 
    break;
  case 2 :
    puzzle2();
    break;
  case 100 :
    victory();
    break;
  default:
    break;
  }
  
}
 
 String entry = ""; 
unsigned long availTime;
char lastinp = 'A'; 
 
void victory() {
 drawMessage(); 
 updatebuttsensors();
 if(smallbutt_avg == 0 ) {
   puzzle = 1;
   entry = "";
 }
 
}
 

 
void puzzle2() {

   if(entry.equals("WUGS")){
     puzzle = 100;
     charRotation = 10;
     messageStartTime = millis();
     message = "BE EXCELLENT TO EACH OTHER  ";
     return; 
   }
  
   updatebuttsensors();
  
 

  int pot0tmp = analogRead(POT0);
  int pot1tmp = analogRead(POT1);
  toneval = map(pot1avg,0,POTMAX, 200,900);
  pot0tot += pot0tmp;
  pot0tot -= lastpot0[potCounter];
  lastpot0[potCounter] = pot0tmp; 
  pot1tot += pot1tmp;
  pot1tot -= lastpot1[potCounter];
  lastpot1[potCounter] = pot1tmp; 
  potCounter++;
  if (potCounter >= POT_BUFFER_SIZE) potCounter = 0;
  int pot0avgtmp = pot0tot / POT_BUFFER_SIZE;
  int pot1avgtmp = pot1tot / POT_BUFFER_SIZE;
  
  

   pot0avg = pot0avgtmp;


  int inp = map(pot0avg, 0, POTMAX, (int) 'A' , (int) 'Z' + 1);
  
  
  if(abs(inp - lastinp) > 0) {
        if(mode == 0) mode = 10;
        if(mode != 11) returnTime = millis() + 3000;
   } else if(abs(pot1avg - pot1avgtmp) > 1) {
        mode = 12;
        returnTime = millis() + 700;
   }
   
  lastinp = inp;
   pot1avg = pot1avgtmp;

/*  if(bigbutt_avg == 0 && millis() > availTime) { // button pressed
        String inps(inp);
        entry += inps;
        mode = 0; 
        availTime = millis() + 600;
   }else  */
   if (mode != 11 && bigbutt_avg == 0){ // reset
     message = entry + "   WHAT ARE ppppp";
     returnTime = millis() + LETTER_MILLIS * message.length();
     messageStartTime = millis();
     mode = 11;

   }
   
   
  if(mode == 0){
    noTone(SPEAKER);
    // blinking cursor
    //drawMessage();
    
    if ( (millis() % 1000) < 500){
       bar0(entry.length(), 35);
    } else {
       bar0(entry.length()+1, 35);
    } 
    
  } else if (mode == 10){
     noTone(SPEAKER);
     depictchar((char) inp);

     if(millis() > returnTime) {
       String inps((char) inp);
       //Serial.println("--");
       //Serial.println((char) inp);
       //Serial.println(inps);
       entry += inps;
       //Serial.println(message + " " + entry);
       //Serial.println(charRotation);
       mode = 0; 
     }
  } else if (mode == 11){
    noTone(SPEAKER);
     drawMessage();
     if(millis() > returnTime) {
        entry = "";
        mode = 0; 
     }
  } else if (mode == 12){
    depictchar('X');
    tone(SPEAKER, 300);
    
    if(millis() > returnTime) {
        mode = 0; 
     }
  }
  
  
  
}
 

 boolean holding_small_butt = false;
 unsigned long small_butt_start = 0;
 
void puzzle1(){ 
  updatebuttsensors();
  
  //Serial.println(toneval);
  if(bigbutt_avg == 0 ) {
    holding_small_butt = false;
    if(charRotation == 10) { // the alphabet is correct.
      happynoise();
    } else {
      sadnoise(); 
    }
  } else  if(smallbutt_avg == 0) {
    if(holding_small_butt == false) {
     small_butt_start = millis();
     holding_small_butt = true ;
    }
    if(millis() - small_butt_start > 4000 ) {
      mode = 0;
      charRotation = 10;
      message = "";
      puzzle = 2;
      holding_small_butt = false;
      return;
    }
  } else {
   holding_small_butt = false;
   noTone(SPEAKER); 
  } 

  int pot0tmp = analogRead(POT0);
  int pot1tmp = analogRead(POT1);
  message = greetings[(pot1tmp * GREETINGS  / POTMAX) % GREETINGS ];
  charRotation = map(pot1avg, 0, POTMAX, 0, 31);
  toneval = map(pot1avg,0,POTMAX, 200,900);
  pot0tot += pot0tmp;
  pot0tot -= lastpot0[potCounter];
  lastpot0[potCounter] = pot0tmp; 
  pot1tot += pot1tmp;
  pot1tot -= lastpot1[potCounter];
  lastpot1[potCounter] = pot1tmp; 
  potCounter++;
  if (potCounter >= POT_BUFFER_SIZE) potCounter = 0;
  int pot0avgtmp = pot0tot / POT_BUFFER_SIZE;
  int pot1avgtmp = pot1tot / POT_BUFFER_SIZE;
   
  
  if(abs(pot0avg - pot0avgtmp) > 1) {
        mode = 10;
        returnTime = millis() + 1000;
   } else if(abs(pot1avg - pot1avgtmp) > 1) {
        mode = 11;
        returnTime = millis() + 1000;
   } 
   pot0avg = pot0avgtmp;
   pot1avg = pot1avgtmp;


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



void updatebuttsensors() {
  int bigbutt_tmp = digitalRead(BIGBUTT);
  int smallbutt_tmp = digitalRead(SMALLBUTT);
  if(bigbutt_tmp == HIGH) bigbutt_tot += bigbutt_tmp;
  bigbutt_tot -= lastbigbutt[buttCounter];
  lastbigbutt[buttCounter] = bigbutt_tmp; 
  if(smallbutt_tmp == HIGH) smallbutt_tot += smallbutt_tmp;
  smallbutt_tot -= lastsmallbutt[buttCounter];
  lastsmallbutt[buttCounter] = smallbutt_tmp;
  
  buttCounter++;
  if (buttCounter >= BUTT_BUFFER_SIZE) buttCounter = 0;
  bigbutt_avg = bigbutt_tot / BUTT_BUFFER_SIZE;
  smallbutt_avg = smallbutt_tot / BUTT_BUFFER_SIZE; 
  
}
 
 

unsigned long messageMillis() {
   return millis() - messageStartTime; 
}

void happynoise() {
  int t = millis() % 1000;
  if (t < 250){
   tone(SPEAKER, 420 );
  } else if (t < 500){
    tone(SPEAKER,560);
  } else{
   noTone(SPEAKER);
  }   
}


void sadnoise() {
  int t = millis() % 1000;
  if (t < 100){
   tone(SPEAKER, 560);
  } else if (t < 200){
    tone(SPEAKER,540);
  } else if (t < 300) {
    tone(SPEAKER, 480);
  } else if ( t < 400) {
    tone(SPEAKER, 409);
  } else {
   noTone(SPEAKER);
  }    
}


void drawMessage(){
  
 int i = (messageMillis() / LETTER_MILLIS) % message.length();
 if(messageMillis() % LETTER_MILLIS   < LETTER_MILLIS * 3 / 4){
   depictchar( message.charAt(i) );
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
  int charnum = (int )thischar;
  if(thischar == ' ' || charnum > (int) 'q' )
  {
    clearLed();
    return 0;
  }
  

  offset = 7*(charnum -  (int) 'A'  + charRotation)  ;
    for(int i=0;i<ROWS;i++) {
      for(int j=0;j<COLUMNS;j++) {
        rowpin = row[i];
        columnpin = column[j];
        if(pgm_read_byte_near(((boolean *)  alphabet) + (offset+i) * COLUMNS + j) != 0)
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
 int res = (((thischar - 'A' ) + (thismany % 26)) % 26)  + 'A';
 if(res >= 'A' && res <= 'Z') {
   return res;
 } else{
   return thischar;
 }

}



