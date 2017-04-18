/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */

/**
 * @author Szymon Acedanski <accek@mimuw.edu.pl>
 */

#include "Assert.h"

generic module DummyBufferedReaderPub() {
    provides interface BufferedRead;
}
implementation {
    command void BufferedRead.setActive(bool active) {
    }

    command error_t BufferedRead.startRead(uint8_t_xdata *buf, uint16_t cap) {
        if (buf == NULL || cap == 0)
            return EINVAL;
        return SUCCESS;
    }

    command void BufferedRead.flush() {
    }
}
