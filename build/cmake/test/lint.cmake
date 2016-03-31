add_custom_target(
  lint-target
  env LUA_PATH=${TEST_VENDOR_LUA_SHARE_DIR}/?.lua$<SEMICOLON>${TEST_VENDOR_LUA_SHARE_DIR}/?/init.lua$<SEMICOLON>$<SEMICOLON> LUA_CPATH=${TEST_VENDOR_LUA_LIB_DIR}/?.so$<SEMICOLON>$<SEMICOLON> ${TEST_VENDOR_DIR}/bin/luacheck ${CMAKE_SOURCE_DIR}/src
  VERBATIM
)

add_custom_target(
  lint
  COMMAND ${CMAKE_BUILD_TOOL} all
  COMMAND ${CMAKE_BUILD_TOOL} lint-target
)
