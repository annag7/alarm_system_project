#ifndef ALARM_SYSTEM_PROJECT_ALARM_H
#define ALARM_SYSTEM_PROJECT_ALARM_H

/* Make public var for parameters */
extern int parameters[7]; //[door_sensor, window_sensor, move_sensor, flood_sensor, code_flag, arming_status, alarm_status]
                            // code_flag --- 0 - correct code, 1 - incorrect code
                            //arming, alarm --- 0 - OFF, 1 - ON

/* Make semaphore for var */
extern pthread_mutex_t parameters_mutex;

/* Initialization function */
int initialize_alarm(void);

/* Setting arming function */
int set_arming(void);

/* Setting alarm function */
int set_alarm(void);

#endif //ALARM_SYSTEM_PROJECT_ALARM_H
