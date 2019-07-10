#
# cmake/_Dependencies.cmake is generated by `mulle-sde`. Edits will be lost.
# Disable generation of this file with:
#   mulle-sde environment  --global set MULLE_SOURCETREE_TO_CMAKE_DEPENDENCIES_FILE DISABLE
if( MULLE_TRACE_INCLUDE)
   message( STATUS "# Include \"${CMAKE_CURRENT_LIST_FILE}\"" )
endif()

#
# Generated from sourcetree: libdill;no-all-load,no-import;dill
# Disable with: `mulle-sourcetree mark libdill no-link`
#
if( NOT DILL_LIBRARY)
   find_library( DILL_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}dill${CMAKE_STATIC_LIBRARY_SUFFIX} dill NO_CMAKE_SYSTEM_PATH)
   message( STATUS "DILL_LIBRARY is ${DILL_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( DILL_LIBRARY)
      #
      # Add to DILL_LIBRARY list.
      # Disable with: `mulle-sourcetree mark libdill no-cmakeadd`
      #
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${DILL_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark libdill no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_DILL_ROOT "${DILL_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_DILL_ROOT "${_TMP_DILL_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark libdill no-cmakedependency`
      #
      foreach( _TMP_DILL_NAME "dill")
         set( _TMP_DILL_DIR "${_TMP_DILL_ROOT}/include/${_TMP_DILL_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_DILL_DIR}/DependenciesAndLibraries.cmake")
            unset( DILL_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_DILL_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_DILL_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_DILL_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${DILL_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_DILL_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "DILL_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: glfw;no-all-load,no-import;glfw3
# Disable with: `mulle-sourcetree mark glfw no-link`
#
if( NOT GLFW3_LIBRARY)
   find_library( GLFW3_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}glfw3${CMAKE_STATIC_LIBRARY_SUFFIX} glfw3 NO_CMAKE_SYSTEM_PATH)
   message( STATUS "GLFW3_LIBRARY is ${GLFW3_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( GLFW3_LIBRARY)
      #
      # Add to GLFW3_LIBRARY list.
      # Disable with: `mulle-sourcetree mark glfw no-cmakeadd`
      #
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${GLFW3_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark glfw no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_GLFW3_ROOT "${GLFW3_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_GLFW3_ROOT "${_TMP_GLFW3_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark glfw no-cmakedependency`
      #
      foreach( _TMP_GLFW3_NAME "glfw3")
         set( _TMP_GLFW3_DIR "${_TMP_GLFW3_ROOT}/include/${_TMP_GLFW3_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_GLFW3_DIR}/DependenciesAndLibraries.cmake")
            unset( GLFW3_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_GLFW3_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_GLFW3_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_GLFW3_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${GLFW3_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_GLFW3_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "GLFW3_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: MulleObjC;;
# Disable with: `mulle-sourcetree mark MulleObjC no-link`
#
if( NOT MULLE_OBJC_LIBRARY)
   find_library( MULLE_OBJC_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjC${CMAKE_STATIC_LIBRARY_SUFFIX} MulleObjC NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_OBJC_LIBRARY is ${MULLE_OBJC_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_LIBRARY)
      #
      # Add to MULLE_OBJC_LIBRARY list.
      # Disable with: `mulle-sourcetree mark MulleObjC no-cmakeadd`
      #
      set( ALL_LOAD_DEPENDENCY_LIBRARIES
         ${ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark MulleObjC no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_ROOT "${MULLE_OBJC_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_ROOT "${_TMP_MULLE_OBJC_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark MulleObjC no-cmakedependency`
      #
      foreach( _TMP_MULLE_OBJC_NAME "MulleObjC")
         set( _TMP_MULLE_OBJC_DIR "${_TMP_MULLE_OBJC_ROOT}/include/${_TMP_MULLE_OBJC_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
      #
      # Search for "objc-loader.inc" in include directory.
      # Disable with: `mulle-sourcetree mark MulleObjC no-cmakeloader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_OBJC_NAME "MulleObjC")
            set( _TMP_MULLE_OBJC_FILE "${_TMP_MULLE_OBJC_ROOT}/include/${_TMP_MULLE_OBJC_NAME}/MulleObjCLoader+${_TMP_MULLE_OBJC_NAME}.h")
            if( EXISTS "${_TMP_MULLE_OBJC_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_OBJC_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      message( FATAL_ERROR "MULLE_OBJC_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: mulle-objc-compat;no-all-load;
# Disable with: `mulle-sourcetree mark mulle-objc-compat no-link`
#
if( NOT MULLE_OBJC_COMPAT_LIBRARY)
   find_library( MULLE_OBJC_COMPAT_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}mulle-objc-compat${CMAKE_STATIC_LIBRARY_SUFFIX} mulle-objc-compat NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_OBJC_COMPAT_LIBRARY is ${MULLE_OBJC_COMPAT_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_COMPAT_LIBRARY)
      #
      # Add to MULLE_OBJC_COMPAT_LIBRARY list.
      # Disable with: `mulle-sourcetree mark mulle-objc-compat no-cmakeadd`
      #
      set( DEPENDENCY_LIBRARIES
         ${DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_COMPAT_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark mulle-objc-compat no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_COMPAT_ROOT "${MULLE_OBJC_COMPAT_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_COMPAT_ROOT "${_TMP_MULLE_OBJC_COMPAT_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark mulle-objc-compat no-cmakedependency`
      #
      foreach( _TMP_MULLE_OBJC_COMPAT_NAME "mulle-objc-compat")
         set( _TMP_MULLE_OBJC_COMPAT_DIR "${_TMP_MULLE_OBJC_COMPAT_ROOT}/include/${_TMP_MULLE_OBJC_COMPAT_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_COMPAT_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_COMPAT_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_COMPAT_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_COMPAT_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_COMPAT_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
   else()
      message( FATAL_ERROR "MULLE_OBJC_COMPAT_LIBRARY was not found")
   endif()
endif()


#
# Generated from sourcetree: MulleObjC-startup;no-dynamic-link,no-header,no-intermediate-link;
# Disable with: `mulle-sourcetree mark MulleObjC-startup no-link`
#
if( NOT MULLE_OBJC_STARTUP_LIBRARY)
   find_library( MULLE_OBJC_STARTUP_LIBRARY NAMES ${CMAKE_STATIC_LIBRARY_PREFIX}MulleObjC-startup${CMAKE_STATIC_LIBRARY_SUFFIX} MulleObjC-startup NO_CMAKE_SYSTEM_PATH)
   message( STATUS "MULLE_OBJC_STARTUP_LIBRARY is ${MULLE_OBJC_STARTUP_LIBRARY}")
   #
   # The order looks ascending, but due to the way this file is read
   # it ends up being descending, which is what we need.
   #
   if( MULLE_OBJC_STARTUP_LIBRARY)
      #
      # Add to MULLE_OBJC_STARTUP_LIBRARY list.
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmakeadd`
      #
      set( STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES
         ${STARTUP_ALL_LOAD_DEPENDENCY_LIBRARIES}
         ${MULLE_OBJC_STARTUP_LIBRARY}
         CACHE INTERNAL "need to cache this"
      )
      #
      # Inherit ObjC loader and link dependency info.
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmakeinherit`
      #
      # // temporarily expand CMAKE_MODULE_PATH
      get_filename_component( _TMP_MULLE_OBJC_STARTUP_ROOT "${MULLE_OBJC_STARTUP_LIBRARY}" DIRECTORY)
      get_filename_component( _TMP_MULLE_OBJC_STARTUP_ROOT "${_TMP_MULLE_OBJC_STARTUP_ROOT}" DIRECTORY)
      #
      #
      # Search for "DependenciesAndLibraries.cmake" to include.
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmakedependency`
      #
      foreach( _TMP_MULLE_OBJC_STARTUP_NAME "MulleObjC-startup")
         set( _TMP_MULLE_OBJC_STARTUP_DIR "${_TMP_MULLE_OBJC_STARTUP_ROOT}/include/${_TMP_MULLE_OBJC_STARTUP_NAME}/cmake")
         # use explicit path to avoid "surprises"
         if( EXISTS "${_TMP_MULLE_OBJC_STARTUP_DIR}/DependenciesAndLibraries.cmake")
            unset( MULLE_OBJC_STARTUP_DEFINITIONS)
            list( INSERT CMAKE_MODULE_PATH 0 "${_TMP_MULLE_OBJC_STARTUP_DIR}")
            # we only want top level INHERIT_OBJC_LOADERS, so disable them
            if( NOT NO_INHERIT_OBJC_LOADERS)
               set( NO_INHERIT_OBJC_LOADERS OFF)
            endif()
            list( APPEND _TMP_INHERIT_OBJC_LOADERS ${NO_INHERIT_OBJC_LOADERS})
            set( NO_INHERIT_OBJC_LOADERS ON)
            #
            include( "${_TMP_MULLE_OBJC_STARTUP_DIR}/DependenciesAndLibraries.cmake")
            #
            list( GET _TMP_INHERIT_OBJC_LOADERS -1 NO_INHERIT_OBJC_LOADERS)
            list( REMOVE_AT _TMP_INHERIT_OBJC_LOADERS -1)
            #
            list( REMOVE_ITEM CMAKE_MODULE_PATH "${_TMP_MULLE_OBJC_STARTUP_DIR}")
            set( INHERITED_DEFINITIONS
               ${INHERITED_DEFINITIONS}
               ${MULLE_OBJC_STARTUP_DEFINITIONS}
               CACHE INTERNAL "need to cache this"
            )
            break()
         else()
            message( STATUS "${_TMP_MULLE_OBJC_STARTUP_DIR}/DependenciesAndLibraries.cmake not found")
         endif()
      endforeach()
      #
      # Search for "objc-loader.inc" in include directory.
      # Disable with: `mulle-sourcetree mark MulleObjC-startup no-cmakeloader`
      #
      if( NOT NO_INHERIT_OBJC_LOADERS)
         foreach( _TMP_MULLE_OBJC_STARTUP_NAME "MulleObjC-startup")
            set( _TMP_MULLE_OBJC_STARTUP_FILE "${_TMP_MULLE_OBJC_STARTUP_ROOT}/include/${_TMP_MULLE_OBJC_STARTUP_NAME}/MulleObjCLoader+${_TMP_MULLE_OBJC_STARTUP_NAME}.h")
            if( EXISTS "${_TMP_MULLE_OBJC_STARTUP_FILE}")
               set( INHERITED_OBJC_LOADERS
                  ${INHERITED_OBJC_LOADERS}
                  ${_TMP_MULLE_OBJC_STARTUP_FILE}
                  CACHE INTERNAL "need to cache this"
               )
               break()
            endif()
         endforeach()
      endif()
   else()
      message( FATAL_ERROR "MULLE_OBJC_STARTUP_LIBRARY was not found")
   endif()
endif()
