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
 * @author Szymon Acedanski
 * 
 * Implements support for standard interrupt: no hardware auto-clear,
 * clear flag before running the handler.
 */

generic module HplSimpleInterruptEventPrv() {
    provides interface ExternalEvent;
    uses interface InterruptSource;
}
implementation{
    async command void ExternalEvent.asyncNotifications(bool enable) {
        if (enable)
            call InterruptSource.enable();
        else
            call InterruptSource.disable();
    }

    async command void ExternalEvent.clearPending() {
        call InterruptSource.clearPending();
    }

    async event void InterruptSource.interruptFired() {
        signal ExternalEvent.triggered();
    }

    default async event void ExternalEvent.triggered() {}
}
