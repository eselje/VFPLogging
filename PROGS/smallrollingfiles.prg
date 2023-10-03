* Rolling file example
#define APP_GLOBAL goApp

APP_GLOBAL.oLogger = .null.
APP_GLOBAL.oLogger = newobject('Log4VFP', 'Log4VFP.prg')
* Specify configuration file. Default is Log4VFP.Config
APP_GLOBAL.oLogger.cConfigurationFile = "SmallRollingFiles.config"
APP_GLOBAL.oLogger.Open(lower(fullpath('Log4VFPLog.txt')))
APP_GLOBAL.oLogger.LogInfo("Created the logger object!")
 
FOR X = 1 TO 10000
	APP_GLOBAL.oLogger.LogInfo("Logging some text to a file. This is line " + TRANSFORM(x))
NEXT
