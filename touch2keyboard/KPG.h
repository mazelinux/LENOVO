#ifndef KPG_H_
#define KPG_H_

#include "oskCore/oskcore.h"

// OSK Common define
#define BUFFER_SIZE 50
#define TEN_MSEC 10*1000
#define MAX_X 1343
#define MAX_Y 2239
#define STATE_INITIAL 0
#define STATE_BREAK 1
#define STATE_SYN 2
#define STATE_MT_SLOT 3

#define INPUT_ABS_MT_SLOT 0
#define INPUT_ABS_MT_POS_X 1
#define INPUT_ABS_MT_POS_Y 2
#define INPUT_ABS_MT_PRESSURE 3
#define INPUT_ABS_MT_TRACKING_MAKE 4
#define INPUT_ABS_MT_TRACKING_BREAK 5
#define INPUT_SYN 6

void convert_touch_common_packet(input_event event);
void touch_common_data_init();
void touch_common_data_reset();
void touch_common_data_destory();
int touch_common_data_read(TOUCH_COMMON_PACKET*);

int startKPG();
int stopKPG();

#endif /* KPG_H_ */
