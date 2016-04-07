EAPI="2"

inherit eutils

DESCRIPTION="admin scripts provided with RescueCD Area31 Hackerspace"
HOMEPAGE="https://www.area31.net.br/wiki/RescueCD_oficial"

LICENSE="BSD"
SLOT="0"
KEYWORDS="alpha amd64 hppa mips ppc ppc64 sparc x86"
IUSE=""

DEPEND=">=dev-lang/python-2.4.0
        >=app-shells/bash-3.1"
RDEPEND="${DEPEND}"

src_compile() {
	einfo "Nothing to compile"
}

src_install()
{
	insinto /usr/share/"${PN}"
	doins "${FILESDIR}"/sysresccd-area31-umount
	doins "${FILESDIR}"/sysresccd-area31-mount
	doins "${FILESDIR}"/sysresccd-area31-swap
	doins "${FILESDIR}"/sysresccd-area31-partition
	doins "${FILESDIR}"/sysresccd-area31-targets
	doins "${FILESDIR}"/sysresccd-area31-help
	doins "${FILESDIR}"/sysresccd-area31-help.txt
	doins "${FILESDIR}"/sysresccd-area31-keymap
	doins "${FILESDIR}"/sysresccd-area31-fixdate
	doins "${FILESDIR}"/sysresccd-area31-showmount
	doins "${FILESDIR}"/examples.tar
	dosbin "${FILESDIR}"/sysresccd-area31 || die
}
