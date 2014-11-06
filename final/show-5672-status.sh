#!/bin/sh
echo "\trt5672 runtime_enabled: \c"
cat /sys/bus/i2c/devices/i2c-10EC5670:00/power/runtime_enabled
echo "\trt5672 control: \c"
cat /sys/bus/i2c/devices/i2c-10EC5670:00/power/control
echo "\trt5672 runtime_usage: \c"
cat /sys/bus/i2c/devices/i2c-10EC5670:00/power/runtime_usage
echo "\trt5672 runtime_status: \c"
cat /sys/bus/i2c/devices/i2c-10EC5670:00/power/runtime_status
echo "\trt5672 acpi power_state: \c"
cat /sys/bus/i2c/devices/i2c-10EC5670:00/firmware_node/power_state
echo "\tController 808622C1:01 power_state:\c"
cat /sys/bus/platform/devices/808622C1:01/power/runtime_status
