* Default config file
#define APP_GLOBAL goApp

APP_GLOBAL.oLogger = .null.
APP_GLOBAL.oLogger = newobject('Log4VFP', 'Log4VFP.prg')
* Specify configuration file. Default is Log4VFP.Config
*APP_GLOBAL.oLogger.cConfigurationFile = "Log4Net.config"
APP_GLOBAL.oLogger.Open(lower(fullpath('DefaultLog4VFPLog.txt')))
APP_GLOBAL.oLogger.LogInfo("Created the logger object with default configuration.")
FOR X = 1 TO 10000
	APP_GLOBAL.oLogger.LogInfo("Logging some text to a file. This is line " + TRANSFORM(x))
	WAIT WINDOW TRANSFORM(x) NOWAIT 
NEXT
