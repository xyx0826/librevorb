#ifndef EXPORTS_H
#define EXPORTS_H

#ifdef _WIN32
    #ifdef REVORB_MODE_EXPORT
		#warning Revorb is compiling in EXPORT mode
        #define REVORBAPI __declspec(dllexport)
    #else
        #define REVORBAPI __declspec(dllimport)
    #endif
#else
    #define REVORBAPI
#endif

#endif