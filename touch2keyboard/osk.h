#ifndef OSK_H_
#define OSK_H_

#define KEY_STATE_BREAK 	0
#define KEY_STATE_MAKE 		1
#define KEY_STATE_REPEAT	2

#define OSKD_SOCKET 						"/data/osk/socket/oskd"
#define	FIX_OSKD_PERMISSION_COMMAND			"chmod 660 /data/osk/socket/oskd"
#define OK_MESSAGE 							"Receive OK"
#define OSK_SETTING_FILE					"/data/osk/osksettings"
#define OSK_VERSION							"oskd v0.8.11"

typedef struct _Datagram {
	int intData;
	long longData;
} Datagram;

#define SOCKET_BUFFER_SIZE 		1024
#define LOCALIZATION_INCLUDED 	1
#define LOG_ENABLE				0
#define LOG_DEBUG				0

static int socketFd;

int sendKeyEvent(int keyCode, int state);

#endif /* OSK_H_ */
