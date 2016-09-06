init()

install(DIRECTORY ${CMAKE_SOURCE_DIR}/bin/hello
        DESTINATION ${CMAKE_BINARY_DIR}/bin
        COMPONENT Hello
        )
