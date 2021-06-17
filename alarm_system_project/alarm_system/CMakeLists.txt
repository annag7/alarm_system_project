add_executable(alarm_system alarm_system.c
                            alarm.c
                            sensors.c
                            periodic.c
                            logger.c)

target_link_libraries(alarm_system pthread rt)

