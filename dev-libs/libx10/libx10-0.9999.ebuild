# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI="2"
inherit subversion autotools

DESCRIPTION="Control x10 equipment"
HOMEPAGE=""

LICENSE="BSD"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="erlang"

DEPEND="=dev-libs/libusb-0.1*
	erlang? ( dev-lang/erlang )"
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://194.47.147.12/soclab/Libraries/libx10/trunk"
ESVN_STORE_DIR="${PORTAGE_ACTUAL_DISTDIR-${DISTDIR}}/svn-src/"

src_unpack() {
	subversion_src_unpack
	eautoreconf
}

src_configure() {
	econf \
		  $(use_enable erlang) \
		  || die "econf failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
