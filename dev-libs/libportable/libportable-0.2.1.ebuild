# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3

DESCRIPTION="Portable code"
HOMEPAGE="http://projects.sidvind.com/libportable/"
SRC_URI="http://projects.sidvind.com/libportable/${P}.tar.gz"

LICENSE="LGPL-3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

src_install() {
	emake DESTDIR="${D}" install || die "make install failed"
}
