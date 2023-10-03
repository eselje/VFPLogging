* Event logging example
#define APP_GLOBAL goApp
APP_GLOBAL.oLogger = newobject('Log4VFP', 'Log4VFP.prg')
* Specify configuration file. Default is Log4VFP.Config
APP_GLOBAL.oLogger.cConfigurationFile = "EventLogging.config"
APP_GLOBAL.oLogger.Open("EventLogAppender")
APP_GLOBAL.oLogger.LogInfo("Created the event logger object!")

FOR X = 1 TO 10
	APP_GLOBAL.oLogger.LogInfo("I can count to " + TRANSFORM(x))
NEXT

 
