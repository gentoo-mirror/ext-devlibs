# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils
DESCRIPTION="Pedro is a subscription/notification communications system that also provides support for peer-to-peer communication."
HOMEPAGE="http://www.itee.uq.edu.au/~pjr/HomePages/PedroHome.html"
SRC_URI="http://www.itee.uq.edu.au/~pjr/HomePages/PedroFiles/${P}.tgz"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

DEPEND="dev-libs/glib"
RDEPEND="${DEPEND}"

src_compile() {
	econf || die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
	newinitd "${FILESDIR}"/pedro.initd pedro
	newconfd "${FILESDIR}"/pedro.confd pedro
}
