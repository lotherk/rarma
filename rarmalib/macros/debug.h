#define LOGGER_WITH_LEVEL(level, message) [message, __LINE__, __FILE__, level] call Rarma_Logger_fnc_log;
#define LOGGER(message) LOGGER_WITH_LEVEL("INFO", message)
#define LOGGER_INFO(message) LOGGER(message)
#define LOGGER_DEBUG(message) LOGGER_WITH_LEVEL("DEBUG", message)
#define LOGGER_WARN(message) LOGGER_WITH_LEVEL("WARN", message)
#define LOGGER_ERROR(message) LOGGER_WITH_LEVEL("ERROR", message)
#define LOGGER_FATAL(message) LOGGER_WITH_LEVEL("FATAL", message)
