# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
inherit eutils distutils

DESCRIPTION="templating engine for separation of code and HTML"
HOMEPAGE="http://htmltmpl.sourceforge.net"
SRC_URI="mirror://sourceforge/htmltmpl/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"

DEPEND="dev-python/setuptools"
RDEPEND=""
