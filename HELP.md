### VIM ###

__Basic Commands__  
`:retab` - converts tabs to spaces

__Diff__  
Open files in vsplit the `:diffthis` on each file  

`do` - Get changes from other window into the current window.  
`dp` - Put the changes from current window into the other window.  
`]c` - Jump to the next change.  
`[c` - Jump to the previous change.  


__Surround__  
highlight then `<S>` then type...

__ZenCoding__  
type stuff them `<cntr Y ,>`

__T-Comment__  
hightlight the `<cmd __>`

__Buffer Explorer__  
`<leader b e>`

__Indent Guides__
<leader i g>

__Easy Motion__
<leader leader e>

========================
__Install GVIM on Redhat 5__

yum install rpm-build redhat-rpm-config
yum install make gcc

wget "http://download.fedora.redhat.com/pub/fedora/linux/releases/15/Everything/source/SRPMS/vim-7.3.138-1.fc15.src.rpm"
mkdir -p /usr/src/redhat/
rpm --nomd5 -ivh vim-7.3.138-1.fc15.src.rpm

grep -i 'BuildRequires:' /usr/src/redhat/SPECS/vim.spec

yum install hunspell-devel python-devel ncurses-devel gettext perl-devel \
perl-ExtUtils-Embed libacl-devel gpm-devel autoconf libselinux-devel ruby-devel ruby \
desktop-file-utils gtk2-devel libSM-devel libXt-devel libXpm-devel

wget "ftp://rpmfind.net/linux/sourceforge/h/project/hp/hphp/CentOS%205%2064bit/RPM/autoconf-2.63-3.noarch.rpm"
wget "ftp://rpmfind.net/linux/sourceforge/h/project/hp/hphp/CentOS%205%2064bit/RPM/m4-1.4.13-4.x86_64.rpm"
rpm -Uvh autoconf-2.63-3.noarch.rpm m4-1.4.13-4.x86_64.rpm

sed -i 's/ perl-devel//' /usr/src/redhat/SPECS/vim.spec

rpmbuild -ba /usr/src/redhat/SPECS/vim.spec

installed usin yum because it resolved some dependency issues i was having.
to do this we need to allow unsigned packages to be installed

Edit /etc/yum.conf and change the value of gpgcheck from 1 to 0.

now yum install all packages

ref: http://rahul.amaram.name/blog/2011/11/07/buliding-vim-73-rpm-packages-64-bit-centos-5-6

--Install Ctags--
download latest rpm source from sourceforge

rpm --nomd5 -ivh ctags-5.8-1.src.rpm
rpmbuild -ba /usr/src/redhat/SPECS/ctags-5.8.spec
yum install ctags-5.8-1.x86_64.rpm ctags-debuginfo-5.8-1.x86_64.rpm



======================
__ GIT Hub__
In redhat you need to install the certs for github http acess
curl http://curl.haxx.se/ca/cacert.pem -o /etc/pki/tls/certs/ca-bundle.crt

probably could use ssh... ehh...
