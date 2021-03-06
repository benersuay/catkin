function(assert VAR)
  if (NOT ${VAR})
    message(FATAL_ERROR "\nAssertion failed: ${VAR} (value is ${${VAR}})\n")
  endif()
  log(3 "assert(${VAR}) okay (== ${${VAR}})")
endfunction()

function(assert_unset VAR)
  if (${VAR})
    message(FATAL_ERROR "\nAssertion failed: ${VAR} is set but should not be (value is ${${VAR}})\n")
  endif()
  log(3 "assert_unset(${VAR}) okay")
endfunction()

function(assert_file_exists FILENAME MESSAGE)
  if (NOT FILENAME)
    message(FATAL_ERROR
      "\nAssertion failed:  check for file existence, but filename (${FILENAME}) unset. Message: ${MESSAGE}\n")
  endif()
  if (NOT EXISTS ${FILENAME})
    message(FATAL_ERROR "\nAssertion failed:  file '${FILENAME}' does not exist.  Message: ${MESSAGE}\n")
  endif()
endfunction()

