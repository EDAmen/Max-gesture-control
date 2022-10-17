#include <RevEng_PAJ7620_mod.h>
#include <DueTimer.h>
#include <stdint.h>
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

void readSensor(){
  ifsensor=sensor.isCursorInView();
}
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
  Timer3.attachInterrupt(readSensor).setPeriod(4500).start();  
}


void loop()
{
  //digitalWrite(35, HIGH); // 1    total time measurement 1-7
  

  
  if (ifsensor!=0)
  {
    //digitalWrite(35, HIGH); // 2   acquisition measurement 2-3
    ifsensor=0;   
    int cursor_x = sensor.getCursorX();
    int cursor_y = sensor.getCursorY();
    int cursor_z = sensor.getObjectBrightness();
      
    //digitalWrite(35, LOW); // 3   elaboration measurement 3-4
    
    cursor_x = constrain(cursor_x, rangeMinXY, rangeMaxXY);
    uint8_t norm_x = map(cursor_x, rangeMinXY, rangeMaxXY, 0, 252);
    cursor_y = constrain(cursor_y, rangeMinXY, rangeMaxXY);
    uint8_t norm_y = map(cursor_y, rangeMinXY, rangeMaxXY, 0, 252);    
    cursor_z = constrain(cursor_z,0,255);
    uint8_t norm_z = map(cursor_z, 0, 255, 0, 252);

    //digitalWrite(35, HIGH); // 4  write measurement 4-5        

    
    SerialUSB.write(norm_x);
    SerialUSB.write(253);

    SerialUSB.write(norm_y);
    SerialUSB.write(254);

    SerialUSB.write(norm_z); 
    SerialUSB.write(255);    

    //digitalWrite(35,HIGH); // 5  draw measurement 5-6

    uint16_t x=(((double)norm_x)/255)*(319);
    uint16_t y=(((double)norm_y)/255)*(239);
    
    //Tft.lcd_display_string(x, y,(uint8_t*) first, FONT_1608, WHITE);
    Tft.lcd_draw_point(x, y, WHITE);



   //digitalWrite(35, LOW); // 6
  }

  if (!(__XPT2046_IRQ_READ())) Tft.lcd_clear_screen(BLACK);
    
  //digitalWrite(35, LOW); // 7  
  // aumentato il clock del i2c a 400khz


}
