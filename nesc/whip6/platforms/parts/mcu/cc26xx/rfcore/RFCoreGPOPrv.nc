/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


generic module RFCoreGPOPrv(uint8_t GPOId, uint32_t PortId) {
    provides interface RFCoreGPO @atmostonce();
}

implementation {
    async command uint32_t RFCoreGPO.GPOId() {
        return GPOId;
    }
    async command uint32_t RFCoreGPO.PortId() {
        return PortId;
    }
}
