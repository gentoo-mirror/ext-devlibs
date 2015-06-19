# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
PYTHON_COMPAT=( python{2_6,2_7,3_2,3_3})
inherit distutils-r1 git-2

DESCRIPTION="Query xorg for information about displays, screens, resolutions etc."
HOMEPAGE="https://github.com/ext/xorg_query"
EGIT_REPO_URI="http://github.com/ext/xorg_query.git"

SLOT="0"
KEYWORDS=""
LICENSE="BSD"
IUSE=""

DEPEND=""
RDEPEND="x11-libs/libXrandr"

src_unpack() {
	git-2_src_unpack
	cd "${S}"
}
