#!/usr/bin/env bash


################################################################################
### Head: theme
##

numix_asset_install () {

	numix_asset_install_download_and_extract


}

numix_asset_install_download_and_extract () {

	##
	## https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/project/style-xfce/style-theme/theme-numix/asset-install.sh
	##


	## create dir
	mkdir -p 'tmp/gtk-theme-numix'


	cd 'tmp/gtk-theme-numix'


	## download
	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-gtk-theme/numix-gtk-theme_2.6.7-6_all.deb'


	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	ar x 'numix-gtk-theme_2.6.7-6_all.deb'

	mkdir -p 'Numix'

	tar -p -C 'Numix' -xf 'data.tar.xz'



	cd "${OLDPWD}"


	mkdir -p themes/Numix

	cp -rf tmp/gtk-theme-numix/Numix/usr/share/themes/Numix/. themes/Numix

}





##
### Tail: theme
##############################################################################


################################################################################
### Head: asset_install
##

main_asset_install () {

	numix_asset_install

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
