# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=6
inherit cmake-utils

DESCRIPTION="EditorConfig core library for use by plugins supporting EditorConfig parsing"
HOMEPAGE="https://github.com/editorconfig/editorconfig-core-c"
SRC_URI="https://github.com/editorconfig/editorconfig-core-c/archive/v${PV}.tar.gz"
LICENSE="BSD-2"

SLOT="0"
KEYWORDS="~x86 ~amd64"
IUSE=""

src_unpack() {
	unpack ${A}
	mv editorconfig-core-c-* "${S}"
}
