# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=4
inherit git-2 autotools

DESCRIPTION="Slideshow is a kiosk-style application for showing text, image and video in a loop."
HOMEPAGE="https://github.com/ext/slideshow/"

LICENSE="AGPL-3"
SLOT="0"
KEYWORDS=""
IUSE="debug +sdl +sqlite3 dbus +mysql"

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

EGIT_REPO_URI="https://github.com/ext/slideshow.git"

src_unpack() {
	git-2_src_unpack
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
