# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit python-distutils-ng git-2

DESCRIPTION="Query xorg for information about displays, screens, resolutions etc."
HOMEPAGE="https://github.com/ext/xorg_query"
#EGIT_REPO_URI="http://github.com/ext/xorg_query.git"
EGIT_NONBARE=1
EGIT_REPO_URI="/home/ext/workspace/xorg_query"

SLOT="0"
KEYWORDS="~amd64"
LICENSE="BSD"
IUSE=""

DEPEND=""
RDEPEND="x11-libs/libXrandr"

src_unpack() {
	git-2_src_unpack
	cd "${S}"
}
