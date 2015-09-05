# Copyright 1999-2015 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

PYTHON_COMPAT=( python2_7 )
inherit git-r3 python-single-r1

DESCRIPTION="The Google repo tool"
HOMEPAGE="http://code.google.com/p/git-repo/"
EGIT_REPO_URI="https://gerrit.googlesource.com/git-repo"

LICENSE="Apache-2.0"
SLOT="0"
KEYWORDS=""

RDEPEND="dev-vcs/git
		 ${PYTHON_DEPS}"
DEPEND="${RDEPEND}
		net-misc/curl"
REQUIRED_USE="${PYTHON_REQUIRED_USE}"

src_prepare() {
	python_fix_shebang ${PN}
}

src_install() {
	exeinto "/usr/bin"
	doexe ${PN}
}
