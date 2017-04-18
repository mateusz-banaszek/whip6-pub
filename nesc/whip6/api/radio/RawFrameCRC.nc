/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


#include <PlatformFrame.h>

/**
 * Interface providing access to CRC information in platform_frame_t.
 */
interface RawFrameCRC
{
  /**
   * Returns if the frame CRC is correct.
   */
  command bool hasGoodCRC(platform_frame_t * framePtr);

  /**
   * Returns the frame CRC.
   *
   * The CRC itself may not always be available. In this case the driver
   * should return zero. The callers should not attempt to use the
   * returned value to check CRC correctness, but use hasGoodCRC instead.
   */
  command uint16_t getCRC(platform_frame_t * framePtr);
}
