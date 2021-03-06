#
# Find the native Xerces includes and library
#
# XSD_INCLUDE_DIR - where to find dom/dom.hpp, etc.
# XSD_FOUND       - Do not attempt to use Xerces if "no" or undefined.


FIND_PATH(XSD_INCLUDE_DIR xsd/cxx/config.hxx
    PATHS "/opt/xsd/xsd-4.0.0-x86_64-linux-gnu/libxsd"
    )

message (STATUS "XSD root directory is: ${XSD_INCLUDE_DIR}")

IF (EXISTS ${XSD_INCLUDE_DIR})
    SET (XSD_FOUND TRUE )
ENDIF (EXISTS ${XSD_INCLUDE_DIR})
