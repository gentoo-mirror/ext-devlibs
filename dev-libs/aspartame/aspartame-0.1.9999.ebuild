# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit subversion autotools

DESCRIPTION="Aspartame"
HOMEPAGE="http://projects.sidvind.com/aspartame/"

LICENSE="WTFPL-2"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="python +json debug"

DEPEND="python? ( dev-lang/python )"
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/GameEngine/vendor/Aspartame"
ESVN_STORE_DIR="${PORTAGE_ACTUAL_DISTDIR-${DISTDIR}}/svn-src/"

src_unpack() {
	subversion_src_unpack
	eautoreconf || die "eautoreconfg failed"
}

src_compile() {
	econf \
	$(use_with python) \
	$(use_with json) \
	$(use_with debug memorydebug) \
	|| die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
