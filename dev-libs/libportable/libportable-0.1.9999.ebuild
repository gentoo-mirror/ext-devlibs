# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit subversion

DESCRIPTION="Portable code"
HOMEPAGE="http://projects.sidvind.com/libportable/"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/code/trunk/Projects/libportable/"
ESVN_PROJECT="libportable"

src_unpack() {
	subversion_src_unpack
	eautoreconf
}

src_compile() {
	econf || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
