# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
inherit eutils autotools

DESCRIPTION="An open source C library for efficient image processing and image analysis operations"
HOMEPAGE="http://code.google.com/p/leptonica/"
SRC_URI="http://leptonica.googlecode.com/files/${P}.tar.gz"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_unpack() {
	unpack ${A}
	cd "${S}"
	eautoreconf || die "eautoreconf failed"
}

#src_compile() {
#	econf || die "econf failed"
#	emake || die "emake failed"
#}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
