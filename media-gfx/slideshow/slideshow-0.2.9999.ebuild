# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

inherit subversion autotools

DESCRIPTION="Slideshow"
HOMEPAGE="http://sidvind.com:8000/slideshow"

LICENSE="AGPLv3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="+debug +mysql"

DEPEND="sys-apps/dbus
dev-libs/dbus-glib
dev-libs/libportable
virtual/opengl
media-libs/freeimage
x11-base/xorg-x11
x11-proto/xf86vidmodeproto
mysql? ( dev-db/mysql )"
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/slideshow/trunk"
ESVN_PROJECT="slideshow"

src_unpack() {
	subversion_src_unpack
	eautoreconf || die "eautoreconfg failed"
}

src_compile() {
	econf \
	$(use_with mysql) \
	|| die "econf failed"
	emake || die "emake failed"
}

src_install() {
	emake DESTDIR="${D}" install || die "emake install failed"
}
