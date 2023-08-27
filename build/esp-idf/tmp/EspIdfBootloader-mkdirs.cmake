# Distributed under the OSI-approved BSD 3-Clause License.  See accompanying
# file Copyright.txt or https://cmake.org/licensing for details.

cmake_minimum_required(VERSION 3.5)

file(MAKE_DIRECTORY
  "/home/shahab/zephyrproject/modules/hal/espressif/components/bootloader/subproject"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/build/bootloader"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/tmp"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/src/EspIdfBootloader-stamp"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/src"
  "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/src/EspIdfBootloader-stamp"
)

set(configSubDirs )
foreach(subDir IN LISTS configSubDirs)
    file(MAKE_DIRECTORY "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/src/EspIdfBootloader-stamp/${subDir}")
endforeach()
if(cfgdir)
  file(MAKE_DIRECTORY "/home/shahab/zephyrproject/our_tutorials/tut_1/build/esp-idf/src/EspIdfBootloader-stamp${cfgdir}") # cfgdir has leading slash
endif()
