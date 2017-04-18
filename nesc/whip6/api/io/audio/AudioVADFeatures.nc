/*
 * whip6: Warsaw High-performance IPv6.
 *
 * Copyright (c) 2012-2017 Szymon Acedanski
 * All rights reserved.
 *
 * This file is distributed under the terms in the attached LICENSE     
 * files.
 */


// Features generation for a Voice Activity Detector
interface AudioVADFeatures<feature_t> {
    /* Signaled to provide a new set of voice features. */
    event void ready(feature_t* features);

    /* Returns the number of features reported by ready(). */
    command uint8_t getNumberOfFeatures();
}
