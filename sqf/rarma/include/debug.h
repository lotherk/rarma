#define LOGGER(message) ["log", message, __LINE__, __FILE__, "info"] call Rarma_Logger;
#define LOGGER_WITH_LEVEL(level, message) ["log", message, __LINE__, __FILE__, level] call Rarma_Logger;
#define LOGGER_INFO(message) LOGGER(message)
#define LOGGER_DEBUG(message) LOGGER_WITH_LEVEL("debug", message)
#define LOGGER_WARN(message) LOGGER_WITH_LEVEL("warn", message)
#define LOGGER_ERROR(message) LOGGER_WITH_LEVEL("error", message)
#define LOGGER_FATAL(message) LOGGER_WITH_LEVEL("fatal", message)

