# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=2
NEED_PYTHON=2.4
inherit eutils distutils

DESCRIPTION="pybonjour provides a pure-Python interface to Apple Bonjour and compatible DNS-SD libraries such as Avahi"
HOMEPAGE="http://groups.csail.mit.edu/o2s/public-wiki/moin.cgi/pybonjour"
SRC_URI="http://groups.csail.mit.edu/o2s/download/pybonjour/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"

DEPEND="dev-python/setuptools"
RDEPEND=""
