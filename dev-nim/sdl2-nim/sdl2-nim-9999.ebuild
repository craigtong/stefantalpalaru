# Copyright 1999-2017 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2

EAPI=6

inherit git-r3

DESCRIPTION="Nim bindings for SDL 2"
HOMEPAGE="https://github.com/nim-lang/sdl2"
EGIT_REPO_URI="https://github.com/nim-lang/sdl2"

LICENSE="MIT"
SLOT="0"
KEYWORDS=""
IUSE=""

DEPEND="
	>dev-lang/nim-0.11.2
	media-libs/libsdl2
"
RDEPEND=""

src_install() {
	dodir /usr/share/nim/lib/packages/sdl2
	insinto /usr/share/nim/lib/packages/sdl2
	doins -r src/*
}
