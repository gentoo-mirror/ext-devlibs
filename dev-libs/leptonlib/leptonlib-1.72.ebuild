# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5
inherit eutils autotools

DESCRIPTION="An open source C library for efficient image processing and image analysis operations"
HOMEPAGE="http://code.google.com/p/leptonica/"
SRC_URI="http://www.leptonica.org/source/leptonica-${PV}.tar.gz"
S="${WORKDIR}/leptonica-${PV}"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_prepare() {
	eautoreconf
}
