#include <stdio.h>
#include <stdlib.h>
#include <mqueue.h>
#include <pthread.h>
#include <string.h>

#include "logger.h"
#include "periodic.h"
#include "sensors.h"
#include "alarm.h"

/*
 * Main project function
 */
int main(int argc, char *argv[]) {

    /* Init logger thread */
    init_logger();
    /* Start periodic task */
    init_periodic();

    while(getc(stdin)=='q') {};

    finalize_logger();

    return EXIT_SUCCESS;
}