#***************************  M a k e f i l e  *******************************
#
#         Author: ts
#
#    Description: Makefile definitions for the FILETYPE mcvs tool
#
#-----------------------------------------------------------------------------
#   Copyright 2019, MEN Mikro Elektronik GmbH
#*****************************************************************************
# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU General Public License as published by
# the Free Software Foundation, either version 2 of the License, or
# (at your option) any later version.
#
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU General Public License for more details.
#
# You should have received a copy of the GNU General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

MAK_NAME=hwbug
# the next line is updated during the MDIS installation
STAMPED_REVISION="1eb05a4-dirty_2019-05-27"

DEF_REVISION=MAK_REVISION=$(STAMPED_REVISION)

MAK_INP1=hwbug$(INP_SUFFIX)
MAK_INP2=display$(INP_SUFFIX)
MAK_INP3=history$(INP_SUFFIX)
MAK_INP4=change$(INP_SUFFIX)
MAK_INP5=linux$(INP_SUFFIX)
MAK_INP6=line_args$(INP_SUFFIX)
MAK_INP7=strsave$(INP_SUFFIX)

MAK_SWITCH=-DLINUX \
		$(SW_PREFIX)$(DEF_REVISION) \
         -DMAC_IO_MAPPED_EN

MAK_LD_SWITCH=-Wl -Wl,-Map -Wl,hwbug.map

MAK_INP=$(MAK_INP1) $(MAK_INP2) $(MAK_INP3) $(MAK_INP4) $(MAK_INP5) $(MAK_INP6) $(MAK_INP7)
