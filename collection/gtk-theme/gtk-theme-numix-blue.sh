#!/usr/bin/env bash


################################################################################
### Head: theme
##

numix_blue_asset_install () {

	numix_blue_asset_install_download_and_extract


}

numix_blue_asset_install_download_and_extract () {

	##
	## https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/project/style-xfce/style-theme/theme-numix/asset-install.sh
	##


	## create dir
	mkdir -p 'tmp/gtk-theme-numix-blue'


	cd 'tmp/gtk-theme-numix-blue'


	## download
	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/u/ubuntustudio-look/numix-blue-gtk-theme_20.04.1_all.deb'


	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-blue-gtk-theme_20.04.1_all.deb'

	mkdir -p 'NumixBlue'

	tar -p -C 'NumixBlue' -xf 'data.tar.xz'



	cd "${OLDPWD}"


	mkdir -p themes/NumixBlue

	cp -rf tmp/gtk-theme-numix-blue/NumixBlue/usr/share/themes/NumixBlue/. themes/NumixBlue

}





##
### Tail: theme
##############################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	numix_blue_asset_install

}

##
### Tail: asset_install
################################################################################


################################################################################
### Head: Main
##

__main__ () {

	main_asset_install

}

##
## Start
##
__main__

##
### Tail: Main
################################################################################
