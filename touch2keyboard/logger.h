#ifndef LOGGER_H_
#define LOGGER_H_

#include <android/log.h>

#include "osk.h"

#define  LOG_TAG  "keyboard"

#if LOG_ENABLE
#if LOG_DEBUG
#define	LOGD(...)  __android_log_print(ANDROID_LOG_DEBUG,LOG_TAG,__VA_ARGS__)
#else
#define LOGD(...)
#endif
#define  LOGI(...)  __android_log_print(ANDROID_LOG_INFO,LOG_TAG,__VA_ARGS__)
#else
#define LOGD(...)
#define LOGI(...)
#endif
#define  LOGE(...)  __android_log_print(ANDROID_LOG_ERROR,LOG_TAG,__VA_ARGS__)

#define  ARR_LENGTH(X) sizeof(X)/sizeof(*X)


#endif /* LOGGER_H_ */
