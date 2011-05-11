# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit subversion autotools

DESCRIPTION="libcaputils deals with capture streams for MArC. Developed by <david.sveningsson@bth.se> for the Network \
Performance Lab at <http://www.bth.se/>."
HOMEPAGE="http://www.bth.se/"

LICENSE="GPLv2"
SLOT="0.7"
KEYWORDS=""
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"


ESVN_REPO_URI="svn://sidvind.com/project/BTH/NPLDP/libcap_utils/trunk/"
ESVN_USER="npl"
ESVN_PASSWORD="npl00"

src_unpack() {
	subversion_src_unpack
	cd "${S}"
	eautoreconf
}

src_configure() {
	econf --enable-silent-rules
	emake || die "emake failed"
}
