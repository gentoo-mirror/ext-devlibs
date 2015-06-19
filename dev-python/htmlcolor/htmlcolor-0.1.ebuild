# Copyright 1999-2009 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=3
PYTHON_DEPEND="2"
SUPPORT_PYTHON_ABIS="1"
RESTRICT_PYTHON_ABIS="3.*"

inherit distutils

DESCRIPTION="Parsing HTML and CSS color values"
HOMEPAGE="http://github.com/ext/pyhtmlcolor http://pypi.python.org/pypi/htmlcolor"
SRC_URI="http://pypi.python.org/packages/source/${PN:0:1}/${PN}/${P}.tar.gz"

SLOT="0"
KEYWORDS="~amd64 ~x86"
LICENSE="BSD"
IUSE=""

DEPEND=""
RDEPEND=""

src_install() {
        distutils_src_install
}
