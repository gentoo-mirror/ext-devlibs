# Copyright 1999-2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8
inherit autotools

DESCRIPTION="datapack"
HOMEPAGE="https://github.com/ext/datapack"
SRC_URI="https://github.com/ext/datapack/archive/v${PV}.tar.gz -> datapack-${PV}.tar.gz"

LICENSE="BSD"
SLOT="0"
KEYWORDS="~amd64 ~x86"

src_prepare() {
	default
	eautoreconf
}

src_install() {
	default
	find "${D}" -name '*.la' -exec rm -f {} +
}
