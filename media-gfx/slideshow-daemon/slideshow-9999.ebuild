# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit subversion autotools

DESCRIPTION="Slideshow is a kiosk-style application for showing text, image and video in a loop on monitors and projectors."
HOMEPAGE="http://sidvind.com:8000/slideshow"

LICENSE="AGPLv3"
SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE="debug +sdl +sqlite3 +dbus mysql"

DEPEND="dev-libs/libportable
virtual/opengl
media-libs/glew
media-libs/devil
x11-base/xorg-x11
x11-proto/xf86vidmodeproto
sdl? ( media-libs/libsdl )
mysql? ( dev-db/mysql )
sqlite3? ( dev-db/sqlite:3 )
dbus? ( sys-apps/dbus dev-libs/dbus-glib )"
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/slideshow/trunk"
ESVN_PROJECT="slideshow"

src_unpack() {
	subversion_src_unpack
	cd "${S}"
	eautoreconf
}

src_configure() {
	econf \
		$(use_with dbus) \
		$(use_with sdl) \
		$(use_with sqlite3)
		$(use_with mysql)
	emake || die "emake failed"
}
