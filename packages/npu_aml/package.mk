PKG_NAME="npu_aml"
PKG_VERSION="16c47f2896de66d1df27975bfe7a525b8881217d"
PKG_SHA256="768c551fe81251fc6f77caf4c9a71eecb3fcc54daa9e731b47efef21f5aeab38"
PKG_SOURCE_DIR="npu_aml-${PKG_VERSION}*"
PKG_SITE="$GITHUB_URL/numbqq/npu_aml"
PKG_URL="$PKG_SITE/archive/$PKG_VERSION.tar.gz"
PKG_ARCH="arm aarch64"
PKG_LICENSE="GPL"
PKG_SHORTDESC="Amlogic NPU libraries"
PKG_SOURCE_NAME="npu_aml-${PKG_VERSION}.tar.gz"
PKG_NEED_BUILD="YES"


make_target() {
	:
}

makeinstall_target() {
	mkdir -p $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml
	# Remove old debs
	rm -rf $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml/*
	cp ${DISTRIB_RELEASE}/${DISTRIB_ARCH}/${KHADAS_BOARD/}/*.deb $BUILD_DEBS/$VERSION/$KHADAS_BOARD/${DISTRIBUTION}-${DISTRIB_RELEASE}/npu_aml
}
