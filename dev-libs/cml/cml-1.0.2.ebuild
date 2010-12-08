# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils versionator
DESCRIPTION="The CML (Configurable Math Library) is a free, open-source C++ vector, matrix, and quaternion math library designed for use in games, graphics, computational geometry, and related applications."
HOMEPAGE="http://www.cmldev.net/"

MY_PV=$(replace_all_version_separators '_')
MY_P="cml-${MY_PV}"
SRC_URI="mirror://sourceforge/cmldev/Configurable%20Math%20Library/CML%201.0/${MY_P}.zip"

EAPI=3
LICENSE="boost"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_install() {
	      dodir /usr/include/
	      cp -R "${WORKDIR}/${MY_P}/cml" "${D}/usr/include" || die "install failed"
}