# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit eutils
DESCRIPTION="json for c"
HOMEPAGE="http://oss.metaparadigm.com/json-c/"
SRC_URI="http://oss.metaparadigm.com/json-c/${P}.tar.gz"

EAPI=2
LICENSE="MIT"
SLOT="0"
KEYWORDS="~x86 ~amd64"
#IUSE=""

#DEPEND=""
#RDEPEND="${DEPEND}"

#
#src_compile() {
#	econf || die "econf failed"
#	emake || die "emake failed"
#}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
