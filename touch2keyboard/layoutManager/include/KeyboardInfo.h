/*
 * KeyboardInfo.h
 *
 *  Created on: Jul 14, 2015
 *      Author: gtan2
 */

#ifndef KEYBOARDINFO_H_
#define KEYBOARDINFO_H_

#include <android/log.h>
#include "osk.h"

#define  TAG  "LM"
#if LOG_ENABLE
#if LOG_DEBUG
#define  LOG_D(...)  __android_log_print(ANDROID_LOG_DEBUG,TAG,__VA_ARGS__)
#else
#define LOG_D(...)
#endif
#define  LOG_I(...)  __android_log_print(ANDROID_LOG_INFO,TAG,__VA_ARGS__)
#else
#define LOG_D(...)
#define LOG_I(...)
#endif
#define  LOG_E(...)  __android_log_print(ANDROID_LOG_ERROR,TAG,__VA_ARGS__)
#define US_MAX_KEY	86

//Maximum Possible keys
#define MAX_KEY		JP_MAX_KEY
//Border Dummy keys
#define DUMMY_KEY	5

enum COUNTRY_CODE {
	US,
	UK,
	JP
};

typedef struct KeyInfo {
		//Basic info: All VLs
		int KeyID;			//This key's ID: unique by every RVL/FVL/MVL key.
		int LKC;			//This key's LKC(Linux Key Code).
		char Label[16]; 	//char* Label;	//For unit test n display e.g "A", "B", "Backspace".
		int Type_X;			//This key's Center in x
		int Type_Y;			//This key's Center in y.
		int Width;			//This key's width.
		int Height;			//This key's Height.

		//FingerM info: G-MVL, MVL
		int F_Anchor;		//1: This Key is Anchor | 0: Not
		int AnchorID; 		//This key's Anchor's KeyID (e.g. F for A)
		int Rest_X; 		//This key's Center of finger rest in x 
		int Rest_Y; 		//This key's Center of finger rest in y  
		int Relative_X;		//from Anchor's Rest_X to this key's Type_X
		int Relative_Y;	//from Anchor's Rest_Y to this key's Type_Y

		//Border info: RVL, FVL
		int TopKeyID;		//KeyID of key located top (e.g. E for D)
		int BottomKeyID;	//KeyID of key located bottom (e.g. C for D)
		int RightKeyID;		//KeyID of key located right (e.g. F for D)
		int LeftKeyID; 		//KeyID of key located left (e.g. S for D)
		int Top_B; 			//This key's top border 
		int Bottom_B;		//This key's bottom border
		int Right_B;		//This key's right border
		int Left_B;			//This key's left border

		//Corner info: RVL, FVL, H-MVL
		int Corner;			//This Key's corner diameter

		//info for LKC judge: FVL, H-MVL
		int x1;
		int x2;
		int x3;
		int x4;
		int y1;
		int y2;
		int y3;
		int y4;

		//info for keytop displaying: All VLs
		int FillColor;
		int LabelColor;
		int Label_X;
		int Label_Y;
		int FontSize;
}KEYINFO, *PKEYINFO;

//Loaded Key tables
extern KEYINFO DKL[MAX_KEY];
extern KEYINFO RVL[MAX_KEY];
extern KEYINFO GMVL[MAX_KEY];

//Dynamic key tables
extern KEYINFO FVL[MAX_KEY];
extern KEYINFO MVL[MAX_KEY];
extern KEYINFO HMVL[MAX_KEY];

//Global Variables
extern COUNTRY_CODE _COUNTRY_CODE;
extern int mMaxKey;
extern int mMaxVisibleKey;

//Global Functions
extern void updateLocalKeyInformation(COUNTRY_CODE code);

//Local Functions
void setTable(PKEYINFO dest, PKEYINFO source);

#endif /* KEYBOARDINFO_H_ */
