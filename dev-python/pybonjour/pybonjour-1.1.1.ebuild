# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
inherit eutils distutils

DESCRIPTION="pybonjour provides a pure-Python interface to Apple Bonjour and compatible DNS-SD libraries such as Avahi"
HOMEPAGE="http://code.google.com/p/pybonjour/"
SRC_URI="http://pybonjour.googlecode.com/files/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="MIT"

DEPEND="dev-python/setuptools net-dns/avahi"
RDEPEND=""
