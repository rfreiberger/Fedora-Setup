# My Vim setup

## Vim Package Mananagers

I recently switched from using [Vim Plug](https://github.com/junegunn/vim-plug) to [Vundle](https://github.com/VundleVim/Vundle.vim). There's no real benefit, but I'm finding more packages under Vundle than Vim Plug. 

## Finding Packages

The best location is [Vim Awesome](https://vimawesome.com) for finding packages. 

## My favorites 

These are all found from Vim Awesome, and work great for my basic setup. 


Plugin 'VundleVim/Vundle.vim'   
Plugin 'bling/vim-airline'  
Plugin 'tpope/vim-fugitive'  
Plugin 'vim-airline/vim-airline-themes'  
Plugin 'scrooloose/nerdtree'  
Plugin 'dracula/vim'  

## Copy the .vimrc file

This vimrc file is pretty simple to use, it's using the Vundle package mananger plus a few things like hotkey to open the Nerdtree. 

## Install Vundle

You need to have Git installed first. 

Then run the following command. 

`$ git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim`

Vundle requires some details added to the vimrc file but if you copy the file shared here, it's already added. 

## Create the subfolders

To keep your home directory clean, we need three subfolders created (swap, backup, undo). You can use the script or create these yourself. 

## Install the Powerline fonts

It's not required but if you want the full Powerline look (it's those chevrons at the bottom of the screen) then you need to add the Powerline fonts on the host which you run the terminal (not the remote host). So if you are working on a local terminal, then install Powerline locally, if you are working from a remote SSH session, only install the fonts on your local laptop. 

The fonts are located at [Powerline Repo](https://github.com/powerline/fonts) and the instructions are fairly simple. 

Just a note - on Ubuntu the package is on the Appitude but the version on Yum for Fedora is not the correct font package. 

Once you have this installed, you can switch your terminal font to the new Powerline fonts. I'm using "Meslo LG L for Powerline Regular" font on the Fedora terminal. 

## Open Vim and install the packages

The most important part last. Open vim and from bottom command enter the following. 

`:PluginInstall`

You should see a window pop up and scrolling bars of each package get installed. 




