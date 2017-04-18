/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


#include <EddystoneUID.h>

interface EddystoneUIDProvider {
    command void read(eddystone_uid_t* uid);
}
