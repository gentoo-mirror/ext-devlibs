# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3})
inherit distutils-r1

DESCRIPTION="Query xorg for information about displays, screens, resolutions etc."
HOMEPAGE="https://github.com/ext/xorg_query"
SRC_URI="https://github.com/ext/xorg_query/tarball/v${PV} -> ${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="BSD"
IUSE=""

DEPEND=""
RDEPEND="x11-libs/libXrandr"

src_unpack() {
	unpack ${A}
	mv -v *-${PN}-* "${S}" || die
}