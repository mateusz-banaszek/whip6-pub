/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Konrad Iwanicki
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */

#ifndef __WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_APP_H__
#define __WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_APP_H__

#include <NetStackCompileTimeConfig.h>


/** Interceptor: NullPacketInterceptorPrv */
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NULL 0
/** Interceptor: SingleControllerPacketInterceptorPrv */
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_CONTROLLER 1
/** Interceptor: PointToPointPacketInterceptorPrv */
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_P2P 2
/** Interceptor: NonrewritingUnicastPacketInterceptorPrv */
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NONREWRITING_UNICAST 3
/** Interceptor: NonrewritingPacketInterceptorPrv */
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NONREWRITING 4

/** The operating mode of the bridge. By default: NULL. */
#ifndef WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE
#warning No operating mode defined for the serial bridge. Assuming the default one (NULL).
#define WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NULL
#endif

#if (((WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE) != WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NULL) && \
    ((WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE) != WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_CONTROLLER) && \
    ((WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE) != WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_P2P) && \
    ((WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE) != WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NONREWRITING_UNICAST) && \
    ((WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE) != WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_MODE_NONREWRITING))
#error Unknown operating mode of the serial bridge!
#endif


enum
{
    APP_ERROR_BLINK_PERIOD_IN_MILLIS = 512UL,
};

#ifndef WHIP6_IPV6_MAX_CONCURRENT_PACKETS
#error Undefined WHIP6_IPV6_MAX_CONCURRENT_PACKETS!
#endif

enum
{
    APP_IPV6_PACKET_QUEUE_SIZE = WHIP6_IPV6_MAX_CONCURRENT_PACKETS - 2,
};

#endif /* __WHIP6_CORE_ONE_HOP_RADIO_SERIAL_IPV6_PACKET_BRIDGE_APP_H__ */
