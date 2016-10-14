# Copyright 1999-2016 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Id$

EAPI=5

inherit autotools-utils git-r3

DESCRIPTION="Scan for DVB-C/DVB-T/DVB-S channels without prior knowledge of frequencies and modulations (w_scan fork)"
HOMEPAGE="https://github.com/stefantalpalaru/w_scan2"
EGIT_REPO_URI="https://github.com/stefantalpalaru/w_scan2"
EGIT_CLONE_TYPE="shallow"

LICENSE="GPL-2"
SLOT="0"
KEYWORDS=""
IUSE="doc examples"

DEPEND=">=virtual/linuxtv-dvb-headers-5.8"
RDEPEND=""

src_prepare() {
	eautoreconf
}

src_install() {
	autotools-utils_src_install

	dodoc ChangeLog README.md

	if use doc; then
		dodoc doc/README.file_formats doc/README_VLC_DVB
	fi

	if use examples; then
		docinto examples
		dodoc doc/rotor.conf
	fi
}
