#include <stdlib.h>
#include <pthread.h>

#include "sensors.h"
#include "alarm.h"

int init_sensors() {
    return 0;
}

int simulate_sensors() {

    time_t t;

    srand((unsigned) time(&t));
    pthread_mutex_lock(&parameters_mutex);
    for (int i = 0; i < 5; i++) {
        parameters[i] = gen_random();
    }
    pthread_mutex_unlock(&parameters_mutex);

    return 0;
}

int gen_random() {

    int random;
    double val = (double)rand()/RAND_MAX;

    if (val < 0.65) {
        random = 0;
    }
    else {
        random = 1;
    }

    return random;
}