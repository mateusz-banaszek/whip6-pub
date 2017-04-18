/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */

configuration ProcessSchedulerPub {
    provides interface ProcessScheduler;
}
implementation {
    components GenericProcessSchedulerPub as Impl;
    ProcessScheduler = Impl;
}
