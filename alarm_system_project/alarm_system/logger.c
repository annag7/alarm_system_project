#include <stdio.h>
#include <pthread.h>
#include <mqueue.h>
#include <time.h>

#include "alarm.h"
#include "logger.h"

/* Logger thread prototype */
void *tLoggerThreadFunc(void *);

/* Mqueue variable */
mqd_t outputMQueue;
/* Mqueue attributes structure */
struct	mq_attr outputMQueueAttr;
/* Thread variable */
pthread_t tLoggerThread;
/* Thread attributes structure */
pthread_attr_t aLoggerThreadAttr;


/**
 * Function crates logger thread
 */
int init_logger() {

    int status;

    /* Initialize attributes structure */
    pthread_attr_init(&aLoggerThreadAttr);

    /* Set Message Queue size */
    outputMQueueAttr.mq_maxmsg = 2048;
    outputMQueueAttr.mq_msgsize = 20;

    /* Create Message Queue */
    if ((outputMQueue = mq_open("/outputMQ", O_CREAT | O_RDWR, 777, &outputMQueueAttr)) == -1) {
        fprintf(stderr, "Creation of the mqueue failed.\n");
        return 0;
    }

    /* Create logger thread */
    if ((status = pthread_create( &tLoggerThread, NULL, tLoggerThreadFunc, &aLoggerThreadAttr))) {
        fprintf(stderr, "Cannot create thread.\n");
        return 0;
    }

    return 0;
}

/**
 * Finalize logger
 */
int finalize_logger() {

    /* Close Message Queue */
    mq_close(outputMQueue);

    return 0;
}

/**
 * Logger thread function
 */
void *tLoggerThreadFunc(void *cookie) {

    /* Output file descriptor */
    FILE * output_file;
    char i[7];

    /* Scheduling policy: FIFO or RR */
    int policy = SCHED_FIFO;
    /* Structure of other thread parameters */
    struct sched_param param;

    /* Read modify and set new thread priority */
    param.sched_priority = sched_get_priority_min(policy);
    pthread_setschedparam( pthread_self(), policy, &param);

    /* Set the file header */
    output_file = fopen("alarm_system.txt", "w");
    fprintf(output_file, "Alarm system states: \n\n");
    fclose(output_file);

    time_t ltime;

    for (;;) {
        /* Wait until something will appear in queue */
        mq_receive(outputMQueue, (char *)&i, 8, 0) ;

        ltime = time(NULL);
        /* Append file with new data */
        output_file = fopen("alarm_system.txt", "a");
        fprintf(output_file, "%s Alarm: %c. Arming: %c. Code flag: %c. Sensors: door - %c, windows - %c, move - %c, flood - %c.\n\n",
                asctime(localtime(&ltime)), i[6], i[5], i[4], i[0], i[1], i[2], i[3]);
        fclose(output_file);

    }

    return 0;
}