pkg_name="libsass"
pkg_origin="cnunciato"
pkg_version="3.4.8"
pkg_maintainer="Christian Nunciato <chris@nunciato.org>"
pkg_license=("MIT")
pkg_deps=(core/glibc)
pkg_build_deps=(core/make core/gcc core/git)
pkg_lib_dirs=(lib)
pkg_include_dirs=(include)
pkg_source="https://github.com/sass/libsass/releases/download/${pkg_version}/libsass-${pkg_version}.tar.gz"
pkg_shasum="5afd2381d57f93ec641af8888e8ec7dc32e16b0201a30a61be444a89f79f2c16"

do_build() {
  make -C . -j5
}

do_install() {
  return 0
}
