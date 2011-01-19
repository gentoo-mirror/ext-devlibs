# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

WANT_AUTOMAKE="1.11"
EAPI="3"

inherit subversion autotools

DESCRIPTION="Portable code"
HOMEPAGE="http://projects.sidvind.com/libportable/"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/code/trunk/Projects/libportable/trunk"
ESVN_PROJECT="libportable"

src_unpack() {
	subversion_src_unpack
	cd "${S}"
	rm -f configure
	eautoreconf || die "eautoreconf failed"
}

src_configure() {
	econf \
		  --enable-silent-rules \
	  || die "econf failed"
}

src_install() {
	einstall  || die "emake install failed"
}
