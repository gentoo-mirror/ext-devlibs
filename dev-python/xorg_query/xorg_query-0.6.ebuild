# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit python-distutils-ng

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
