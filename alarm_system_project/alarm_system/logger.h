#ifndef ALARM_SYSTEM_PROJECT_LOGGER_H
#define ALARM_SYSTEM_PROJECT_LOGGER_H

#define MAX_MSG 20

/* Make mqueue of the logger public */
extern mqd_t outputMQueue;

/* Function starts logger thread */
int init_logger();

/* Function close logger */
int finalize_logger();


#endif //ALARM_SYSTEM_PROJECT_LOGGER_H