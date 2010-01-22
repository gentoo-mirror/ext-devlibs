# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

WANT_AUTOMAKE="1.11"

inherit subversion autotools

EAPI="2"
DESCRIPTION="Portable code"
HOMEPAGE="http://projects.sidvind.com/libportable/"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/code/trunk/Projects/libportable/trunk"
ESVN_PROJECT="libportable"

src_unpack() {
	subversion_src_unpack
	eautoreconf || die "eautoreconf failed"
}

src_configure() {
    econf \
    	  --enable-silent-rules \
	  || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
