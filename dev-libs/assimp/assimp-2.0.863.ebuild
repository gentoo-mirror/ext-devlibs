# Copyright 1999-2012 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit cmake-utils

MV_P="${PN}--${PV}-sdk"

DESCRIPTION="Open Asset Import Library (short name: Assimp)."
HOMEPAGE="http://assimp.sourceforge.net"
SRC_URI="mirror://sourceforge/assimp/${MV_P}.zip"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

src_unpack(){
	unpack ${A}
	mv "${MV_P}" "${S}"
	cd "${S}"
}

src_configure() {
	cmake-utils_src_configure -DENABLE_BOOST_WORKAROUND=ON
}
