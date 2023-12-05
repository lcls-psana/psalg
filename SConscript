#------------------------------------------------------------------------
# File and Version Information:
#  $Id: SConscript 7669 2014-02-14 18:05:32Z salnikov@SLAC.STANFORD.EDU $
#
# Description:
#  SConscript file for package psalg
#------------------------------------------------------------------------

# Do not delete following line, it must be present in  
# SConscript file for any SIT project
Import('*')
from os.path import join as pjoin
from SConsTools.standardExternalPackage import standardExternalPackage
from os import environ

#
# For the standard external packages which contain includes, libraries, 
# and applications it is usually sufficient to call standardExternalPackage()
# giving few keyword arguments. Here is a complete list of arguments:
#
#    PREFIX   - top directory of the external package
#    INCDIR   - include directory, absolute or relative to PREFIX
#    INCLUDES - include files to copy (space-separated list of patterns)
#    PYDIR    - Python src directory, absolute or relative to PREFIX
#    LINKPY   - Python files to link (patterns), or all files if not present
#    PYDIRSEP - if present and evaluates to True installs python code to a 
#               separate directory arch/$SIT_ARCH/python/<package>
#    LIBDIR   - libraries directory, absolute or relative to PREFIX
#    COPYLIBS - library names to copy
#    LINKLIBS - library names to link, or all libs if LINKLIBS and COPYLIBS are empty
#    BINDIR   - binaries directory, absolute or relative to PREFIX
#    LINKBINS - binary names to link, or all binaries if not present
#    PKGLIBS  - names of libraries that have to be linked for this package
#    DEPS     - names of other packages that we depend upon
#    PKGINFO  - package information, such as RPM package name


# here is an example setting up a fictional package

pkg = "psalg"
pkg_ver = "1.0.1"

INCDIR = environ['PWD']+'/psalg'
LIBDIR = environ['PWD']+'/build/psalg/lib'
LINKLIBS = "libpsalg.so*"
PKGLIBS = "libpsalg.so"

standardExternalPackage ( pkg, **locals() )
