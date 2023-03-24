#!/usr/bin/env bash


################################################################################
### Head: theme
##

numix_asset_install () {

	numix_asset_install_download_and_extract


}

numix_asset_install_download_and_extract () {

	##
	## https://github.com/samwhelp/note-about-manjaro/blob/gh-pages/_demo/project/style-xfce/style-theme/theme-numix-blue/asset-install.sh
	##


	## create dir
	mkdir -p 'tmp/icon-theme-numix'


	cd 'tmp/icon-theme-numix'


	## download
	#wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-icon-theme/numix-icon-theme_0~20211031-1_all.deb'
	wget -c 'http://tw.archive.ubuntu.com/ubuntu/pool/universe/n/numix-icon-theme/numix-icon-theme_0~20230213-1_all.deb'

	## extract
	## https://github.com/samwhelp/note-about-deb/tree/gh-pages/_demo/deb/concept/start
	#ar x 'numix-icon-theme_0~20211031-1_all.deb'
	ar x 'numix-icon-theme_0~20230213-1_all.deb'


	mkdir -p 'Numix'

	tar -p -C 'Numix' -xf 'data.tar.zst'



	cd "${OLDPWD}"


	mkdir -p icons

	cp -rf tmp/icon-theme-numix/Numix/usr/share/icons/. icons

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
