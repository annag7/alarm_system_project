#include <stdlib.h>
#include <pthread.h>

#include "alarm.h"

/* Parameters values */
int parameters[7] = {0, 0, 0, 0, 0, 0, 0};

/* Semaphore for parameters */
pthread_mutex_t parameters_mutex = PTHREAD_MUTEX_INITIALIZER;

int initialize_alarm() {

    return 0;
}

int set_arming(){

    pthread_mutex_lock(&parameters_mutex);
    if (parameters[0] == 1 && parameters[4] == 0) {
        parameters[5] = 1 - parameters[5];
    }
    pthread_mutex_unlock(&parameters_mutex);
    return 0;
}

int set_alarm(){

    pthread_mutex_lock(&parameters_mutex);
    if ((parameters[5] == 1 && (parameters[4] == 1 || parameters[2] == 1 || parameters[1])) || parameters[3] == 1) {
        parameters[6] = 1;
    }

    else if (parameters[4] == 0) {
        parameters[6] = 0;
    }
    pthread_mutex_unlock(&parameters_mutex);

    return 0;
}