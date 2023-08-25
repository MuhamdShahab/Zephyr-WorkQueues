# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/shahab/zephyrproject/modules/hal/espressif/components/partition_table"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/esp-idf/build"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/tmp"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src"
  "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/shahab/zephyrproject/tutorials/tut_1/build/zephyr/soc/xtensa/espressif_esp32/esp32/EspPartitionTable-prefix/src/EspPartitionTable-stamp${cfgdir}") # cfgdir has leading slash
endif()
