function(version_from_git)
   find_package(Git)
   if(GIT_EXECUTABLE)
     #get_filename_component(SRC_DIR ${SRC} DIRECTORY)
     # Generate a git-describe version string from Git repository tags
     execute_process(
      COMMAND ${GIT_EXECUTABLE} describe --tags --abbrev=0 #--dirty --match "*"
      #WORKING_DIRECTORY ${SRC_DIR}
      WORKING_DIRECTORY ${CMAKE_SOURCE_DIR}
      OUTPUT_VARIABLE GIT_DESCRIBE_VERSION
      RESULT_VARIABLE GIT_DESCRIBE_ERROR_CODE
      OUTPUT_STRIP_TRAILING_WHITESPACE
      )
    if(NOT GIT_DESCRIBE_ERROR_CODE)
      set(MOREH_VERSION ${GIT_DESCRIBE_VERSION} PARENT_SCOPE)
    endif()
   endif()
endfunction(version_from_git)

# Final fallback: Just use a bogus version string that is semantically older
# than anything else and spit out a warning to the developer.
