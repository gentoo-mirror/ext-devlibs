# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit eutils autotools

DESCRIPTION="datapack"
HOMEPAGE="https://github.com/ext/datapack"
SRC_URI="https://github.com/ext/datapack/archive/v${PV}.tar.gz -> datapack-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"

src_unpack() {
	unpack "${A}"
	cd "${S}"
	eautoreconf || die "eautoreconf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
