#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <pthread.h>
#include <signal.h>
#include <time.h>
#include <errno.h>
#include <mqueue.h>

#include "logger.h"
#include "alarm.h"
#include "sensors.h"
#include "periodic.h"

/* Thread function prototype */
void *tPeriodicThreadFunc(void *);
/* Thread counter */
int i = 0;


/**
 * Function starts periodic thread
 */
int init_periodic() {

    int status;

    /* Thread attributes variable */
    pthread_attr_t aPeriodicThreadAttr;
    /* Structure with time values */
    struct	itimerspec timerSpecStruct;
    /* Timer variable */
    timer_t	timerVar;
    /* Signal variable */
    struct	sigevent timerEvent;

    /* Initialize thread attributes structure */
    pthread_attr_init(&aPeriodicThreadAttr);

    /* Initialize event to create thread */
    timerEvent.sigev_notify = SIGEV_THREAD;
    timerEvent.sigev_notify_function = tPeriodicThreadFunc;
    timerEvent.sigev_notify_attributes = &aPeriodicThreadAttr;

    /* Create timer */
    if ((status = timer_create(CLOCK_REALTIME, &timerEvent, &timerVar))) {
        fprintf(stderr, "Error creating timer : %d\n", status);
        return 0;
    }

    /* Set up timer structure with time parameters */
    timerSpecStruct.it_value.tv_sec = 1;
    timerSpecStruct.it_value.tv_nsec = 0;
    timerSpecStruct.it_interval.tv_sec = 2;
    timerSpecStruct.it_interval.tv_nsec = 0;

    /* Initialize alarm */
    initialize_alarm();

    /* Change timer parameters and run */
    timer_settime( timerVar, 0, &timerSpecStruct, NULL);

    return 0;
}

/*
 *  Periodic thread function
 */
void *tPeriodicThreadFunc(void *cookie) {

    /* Scheduling policy: FIFO or RR */
    int policy = SCHED_FIFO;
    /* Structure of other thread parameters */
    struct sched_param param;

    /* Read modify and set new thread priority */
    param.sched_priority = sched_get_priority_max(policy);
    pthread_setschedparam(pthread_self(), policy, &param);

    /* Simulate sensor */
    simulate_sensors();

    /* Set arming */
    set_arming();

    /* Set alarm */
    set_alarm();

    char send_buffer[7];

    pthread_mutex_lock(&parameters_mutex);
    for(int j = 0; j < 7; j++) {
        sprintf(&send_buffer[j],"%d",parameters[j]);
    }
    pthread_mutex_unlock(&parameters_mutex);

    /* Send the alarm states to the logger */
    mq_send(outputMQueue, send_buffer, 7, 0);

    return 0;
}
