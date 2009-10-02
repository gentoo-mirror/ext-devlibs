# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
NEED_PYTHON=2.4
inherit eutils distutils

DESCRIPTION="Python bindings for libshout 2"
HOMEPAGE="http://www.icecast.org"
SRC_URI="http://downloads.us.xiph.org/releases/libshout/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="LGPL-2"

DEPEND="dev-python/setuptools"
RDEPEND="media-libs/libshout"
