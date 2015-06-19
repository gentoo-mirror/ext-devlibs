# Copyright 1999-2008 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
inherit subversion distutils

DESCRIPTION="Slideshow is a kiosk-style application for showing text, image and video in a loop on monitors and projectors."
HOMEPAGE="http://sidvind.com:8000/slideshow"

LICENSE="AGPLv3"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="dev-python/cherrypy
dev-python/genshi
dev-python/xorg_query
dev-python/htmlcolor"
RDEPEND="${DEPEND}"

ESVN_REPO_URI="svn://sidvind.com/slideshow/trunk"
ESVN_PROJECT="slideshow"

src_unpack() {
	subversion_src_unpack
}
