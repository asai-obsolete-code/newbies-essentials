
# Newbie-Essentials - Install the essential programs for lisp newbies

## Usage

This is an assortment of system-provided packages that
are usually needed for productive lisp development.

Loading this asdf system automatically installs the packages through
trivial-package-manager, with the system-provided package manager such as apt,
dnf, yum, brew, pacman, yaourt, macports, homebrew, fink.


           (uiop/package:symbol-call :trivial-package-manager :ensure-program
                                     "make" :apt "make" :dnf "make" :yum "make"
                                     :pacman "make" :yaourt "make" :brew
                                     "make" :macports "make" :fink "gmake" :choco "make")
           (uiop/package:symbol-call :trivial-package-manager :ensure-program
                                     "automake" :apt "automake" :dnf "automake" :yum "automake"
                                     :pacman "automake" :yaourt "automake" :brew
                                     "automake" :macports "automake" :fink "automake1.15")
           (uiop/package:symbol-call :trivial-package-manager :ensure-program
                                     "curl" :apt "curl" :dnf "curl" :yum "curl"
                                     :pacman "curl" :yaourt "curl" :brew
                                     "curl" :macports "curl" :fink "curl")
           (uiop/package:symbol-call :trivial-package-manager :ensure-library
                                     "libffi" :apt "libffi6" :dnf "libffi" :yum
                                     "libffi" :pacman "libffi" :yaourt
                                     "libffi" :brew "libffi" :macports "libffi"
                                     :fink "libffi6")
           (uiop/package:symbol-call :trivial-package-manager :ensure-library
                                     "libfixposix" :apt "libfixposix-dev" :dnf "libfixposix" :yum
                                     "libfixposix" :brew "libfixposix")

## Installation

## Author

* Masataro Asai (guicho2.71828@gmail.com)

## Copyright

Copyright (c) 2017 Masataro Asai (guicho2.71828@gmail.com)

# License

Licensed under the LLGPL License.

