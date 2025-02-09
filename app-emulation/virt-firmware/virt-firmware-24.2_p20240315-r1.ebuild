# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

PYTHON_COMPAT=( python3_{10..12} )
DISTUTILS_USE_PEP517=setuptools

inherit distutils-r1 optfeature systemd

COMMIT="f278ef19b0bc94ae93881ee4ab45fcbb03926e5f"

DESCRIPTION="Tools for ovmf/armvirt firmware volumes"
HOMEPAGE="
	https://gitlab.com/kraxel/virt-firmware
	https://pypi.org/project/virt-firmware/
"
SRC_URI="https://gitlab.com/kraxel/virt-firmware/-/archive/${COMMIT}.tar.gz -> ${P}.tar.gz"
S="${WORKDIR}/${PN}-${COMMIT}"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS="~amd64"

RDEPEND="
	dev-python/cryptography[${PYTHON_USEDEP}]
	dev-python/pefile[${PYTHON_USEDEP}]
"

PATCHES=(
	"${FILESDIR}/${PN}-24.2-dont-force-shim.patch"
)

distutils_enable_tests unittest

python_test() {
	eunittest tests
}

python_install_all() {
	distutils-r1_python_install_all

	doman man/*.1

	doinitd "${FILESDIR}/kernel-bootcfg-boot-successful"
	systemd_dounit systemd/kernel-bootcfg-boot-successful.service

	exeinto /usr/lib/kernel/install.d
	doexe systemd/99-uki-uefi-setup.install
}

pkg_postinst() {
	optfeature "managing UEFI entries on Unified Kernel Image installation and removal" \
		"sys-kernel/installkernel[systemd,uki]"
}
