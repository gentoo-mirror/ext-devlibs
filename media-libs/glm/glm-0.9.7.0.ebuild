# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/media-libs/glm/glm-0.9.3.2.ebuild,v 1.1 2012/04/28 18:07:18 tupone Exp $

EAPI=5

DESCRIPTION="OpenGL Mathematics"
HOMEPAGE="http://glm.g-truc.net/"
SRC_URI="https://github.com/g-truc/glm/releases/download/${PV}/${P}.zip"

S="${WORKDIR}/${PN}"

LICENSE="MIT"
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

RDEPEND=""
DEPEND="app-arch/unzip"

src_install() {
	dodoc readme.md doc/${PN}.pdf
	cd ${PN} || die
	insinto /usr/include/${PN}
	doins -r *.hpp detail gtc gtx
	rm "${ED}"/usr/include/${PN}/detail/*cpp
}
