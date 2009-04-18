inherit subversion cmake-utils

EAPI="2"

LICENSE="LGPL-2"
KEYWORDS="~amd64 ~x86"
SLOT="0"

ESVN_REPO_URI="svn://anonsvn.kde.org/home/kde/trunk/kdesupport/taglib-extras"
ESVN_STORE_DIR="${PORTAGE_ACTUAL_DISTDIR-${DISTDIR}}/svn-src/"

DEPEND="media-libs/taglib"

src_unpack() {
        subversion_src_unpack
}

#src_compile() {
#        econf || die "econf failed"
#        emake || die "emake failed"
#}

#src_install() {
#        emake DESTDIR="${D}" install || die "emake install failed"
#}
