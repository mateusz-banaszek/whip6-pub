/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


#include <BLEFrame.h>

interface RawBLEScanner
{
  /* This is a rudimentary interface for now, not taking into account things
   * like active/passive scanning and various others.
   *
   * It allows to start and stop a passive, undirected scan. It simply reports
   * all advertisements seen in the air.
   *
   * The scan is performed on one (implementation-dependent) of the
   * advertisement channels.
   */
  command error_t startScan();
  command error_t stopScan();
  event void advertisementReceived(ble_frame_t* frame);
}
