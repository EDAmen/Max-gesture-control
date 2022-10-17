#include <RevEng_PAJ7620.h>

//#include <stdint.h>
#include <LCD.h>
#include <XPT2046.h>
#include <SPI.h>
#define __AVR_ATmega32U4__


RevEng_PAJ7620 sensor = RevEng_PAJ7620();

uint8_t ifsensor;

int rangeMinXY =384;
int rangeMaxXY = 3455;
int rangeMinZ = 0; 
int rangeMaxZ = 253;

/*char first[3];
uint8_t prev_z;
uint16_t prev_x,prev_y;
*/

void setup()
{

  SPI.setDataMode(SPI_MODE3);
  SPI.setBitOrder(MSBFIRST);
  SPI.setClockDivider(SPI_CLOCK_DIV4);
  SPI.begin();

  Tft.lcd_init();
  Xpt.xpt2046_init();
  
  Tft.setRotation(Rotation_90_D);
  Tft.lcd_clear_screen(BLACK);
  
  pinMode(35,OUTPUT);
  Serial.begin(9600);
  SerialUSB.begin(115200);

  if (!sensor.begin())
  {
    while(true) {}
  }
  sensor.setGameSpeed();
  sensor.setCursorMode();  
}


void loop()
{
  //digitalWrite(35, HIGH); // punto 4
  
  ifsensor=sensor.isCursorInView();    
  
  //digitalWrite(35, LOW); // punto 5
  
  if (ifsensor!=0)
  {
  //  digitalWrite(35, HIGH); // punto 1
       
    int cursor_x = sensor.getCursorX();
    int cursor_y = sensor.getCursorY();
    int cursor_z = sensor.getObjectBrightness();
      
//    digitalWrite(35, HIGH); // punto 2
    
    cursor_x = constrain(cursor_x, rangeMinXY, rangeMaxXY);
    uint8_t norm_x = map(cursor_x, rangeMinXY, rangeMaxXY, 0, 252);
    cursor_y = constrain(cursor_y, rangeMinXY, rangeMaxXY);
    uint8_t norm_y = map(cursor_y, rangeMinXY, rangeMaxXY, 0, 252);    
    cursor_z = constrain(cursor_z,0,255);
    uint8_t norm_z = map(cursor_z, 0, 255, 0, 252);

//    digitalWrite(35, HIGH); // punto 3            
/*
    sensor.setProximityMode();

    uint8_t cursor_z = sensor.getBrightness();
    cursor_z = constrain(cursor_z, rangeMinZ, rangeMaxZ);
    uint8_t norm_z = map(cursor_z, rangeMinZ, rangeMaxZ, 0, 252);

    sensor.setCursorMode();
*/    
//    digitalWrite(35, LOW); // punto 7
    while(SerialUSB.available()){     //per evitare la sporcizia sulla uart
    SerialUSB.read();
  }
    SerialUSB.write(1);
    SerialUSB.write(1);

    SerialUSB.write(1);
    SerialUSB.write(1);

    SerialUSB.write(1); 
    SerialUSB.write(5);    
    digitalWrite(35, HIGH);
     while(!SerialUSB.available()){
    }
    digitalWrite(35, LOW);             //calcolo del tempo di ritorno da putty
    uint16_t x=(((double)norm_x)/255)*(319);
    uint16_t y=(((double)norm_y)/255)*(239);
    

    Tft.lcd_draw_point(x, y, WHITE);
        
   //digitalWrite(35, LOW); // punto 0
  }

  if (!(__XPT2046_IRQ_READ())) Tft.lcd_clear_screen(BLACK);
    
//  digitalWrite(35, LOW); // punto 6  
    delayMicroseconds(500);//non scendere sotto i 500micros
    // aumentato il clock del i2c a 400khz

 // digitalWrite(35, LOW); // punto 8

}
