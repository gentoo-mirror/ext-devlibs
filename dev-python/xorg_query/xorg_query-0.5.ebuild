# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="*"
SUPPORT_PYTHON_ABIS="1"

inherit distutils

DESCRIPTION="Query xorg for information about displays, screens, resolutions etc."
HOMEPAGE="https://github.com/ext/xorg_query"
SRC_URI="https://github.com/ext/xorg_query/tarball/v${PV} -> ${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="BSD"
IUSE=""

DEPEND=""
RDEPEND=""

src_unpack() {
	unpack ${A}
	mv -v *-${PN}-* "${S}" || die
}

src_install() {
		distutils_src_install
}
