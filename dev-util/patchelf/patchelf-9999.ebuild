# Copyright 1999-2013 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: /var/cvsroot/gentoo-x86/dev-util/patchelf/patchelf-0.6-r1.ebuild,v 1.1 2013/02/04 15:59:31 jlec Exp $

EAPI=5
inherit git-2 autotools

NUMBER="1524660"

DESCRIPTION="Small utility to modify the dynamic linker and RPATH of ELF executables."
HOMEPAGE="http://nixos.org/patchelf.html"

SLOT="0"
KEYWORDS=""
LICENSE="GPL-3"
IUSE=""

EGIT_REPO_URI="https://github.com/NixOS/patchelf.git"

src_unpack() {
	git-2_src_unpack
	cd "${S}"
}

src_prepare() {
	rm src/elf.h || die
	eautoreconf
}

src_test() {
	emake check || die "test failed"
}
