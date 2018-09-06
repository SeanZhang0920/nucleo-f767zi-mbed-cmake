#include <mbed.h>
#include "Serial.h"
#include "DigitalOut.h"
#include "iothub_client_sample_mqtt.h"
#include "iothub.h"

Serial pc(USBTX, USBRX, 115200);
DigitalOut led3(LED3);

int main(void)
{
    iothub_client_sample_mqtt_run();
    IoTHub_Deinit();
    while (true)
    {
            led3 = !led3;
            wait(10);
            
    }

    
    return 0;
}


