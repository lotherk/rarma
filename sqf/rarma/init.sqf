/**
 * Rarma Init
 *
 */

// Load "Kernel"
call compile preProcessFileLineNumbers "kernel.rb.sqf";

// Load core framework
call compile preProcessFileLineNumbers "core\__init__.sqf";

// Initialize Rarma Kernel
call Rarma_Kernel_fnc_init;
