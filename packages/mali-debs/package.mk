PKG_NAME="mali-debs"
PKG_VERSION="d1d23c2e62274ca1eb5629f8700df3d6b02f81af"
PKG_SHA256="2006afe569d390ead9cc7442c06012b6f2ef904fa57a72f3dd5431df135b654b"
PKG_SOURCE_DIR="${PKG_NAME}-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/${PKG_NAME}"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Mali Libraries"
PKG_SOURCE_NAME="${PKG_NAME}-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="NO"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali-debs
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali-debs/*
	[ -d ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD} ] && cp -r ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD}/* $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/mali-debs || true
}
