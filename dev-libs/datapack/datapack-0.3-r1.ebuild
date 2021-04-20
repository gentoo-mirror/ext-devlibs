# Copyright 1999-2021 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit eutils autotools

DESCRIPTION="datapack"
HOMEPAGE="https://github.com/ext/datapack"
SRC_URI="https://github.com/ext/datapack/archive/v${PV}.tar.gz -> datapack-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_prepare() {
	eautoreconf
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	find "${D}" -name '*.la' -exec rm -f {} +
}
