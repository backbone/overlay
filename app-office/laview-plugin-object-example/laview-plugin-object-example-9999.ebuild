# Copyright 1999-2011 Gentoo Foundation
# Distributed under the terms of the GNU General Public License v2
# $Header: $

EAPI=5

inherit cmake-utils

if [[ ${PV} == "9999" ]] ; then
	EGIT_REPO_URI=${EGIT_REPO_URI:-"git@git.backbone.ws:kolan/laview-object-example.git"}
	inherit git-r3
	KEYWORDS=""
else
	#SRC_URI="ftp://ftp.backbone.ws/projects/laview-plugin-object-example/${P}.tar.bz2"
	SRC_URI="https://git.backbone.ws/kolan/laview-object-example/archive/v${PVR}.tar.gz -> laview-plugin-protocol-example-${PVR}.tar.gz"
	KEYWORDS="-* ~x86 ~amd64"
fi

DESCRIPTION="LAview Object protocol plugin sample."

HOMEPAGE="https://git.backbone.ws/kolan/laview-object-example"

SLOT="0"

LICENSE="LGPL-3"

IUSE=""

DEPEND="app-office/laview-core
	x11-libs/gtk+:3
	app-office/laview-plugin-data-example"

RDEPEND="${DEPEND}"
