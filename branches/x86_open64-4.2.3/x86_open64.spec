%define open64_name    x86_open64
%define open64_release 1
%define open64_prefix  /opt/x86_open64-%{open64_version}
%define open64_bin_dir %{open64_prefix}/bin
%define open64_include_dir %{open64_prefix}/include
%define open64_lib_dir %{open64_prefix}/lib
%define open64_gcc_dir %{open64_prefix}/open64-gcc-4.2.0
%define __spec_install_post /usr/lib/rpm/brp-compress /usr/lib/rpm/brp-strip-comment-note %{nil}

Summary: The x86 Open64 Compiler Suite v%{open64_version}
Name: %{open64_name}
Version: %{open64_version}
Release: %{open64_release}
Vendor: Advanced Micro Devices, Inc.
License: GPL
Group: Development/Languages
Source: %{open64_name}-%{open64_version}-%{open64_release}.tar.gz
URL: http://www.open64.net
Prereq: /sbin/install-info
Requires: binutils
Prefix: %{open64_prefix}

%description
x86 Open64 is an open source, optimizing compiler for 32-bit (x86) and
64-bit (x86-64) achitectures. x86 Open64 supports Fortran 77/95/2003 and
C/C++, as well as the shared memory programming model OpenMP.


%files
%defattr(-,root,root)
%dir %{open64_prefix}

%{open64_bin_dir}/
%{open64_include_dir}/
%{open64_lib_dir}/
%{open64_gcc_dir}/
%{open64_prefix}/ReleaseNotes.txt


%prep

%build


%install
cp -r -P %{_topdir}/../opt %{_topdir}/root



%clean


%pre

%post

true

%preun

%postun

%changelog
* Fri Mar 13 2009 dcoakley david.coakley@amd.com
-Add libhugetlbfs_open64, libacml_mv for x86 Open64
* Wed Apr 16 2008 laijx jianxin.lai@hp.com
-Add barcelona.so, core.so for IA32/x86_64
* Thu Mar 20 2008 laijx jianxin.lai@hp.com
-Open64 4.2 release 
-Add libgcc_s.so, GNU 4.2 FE stuffs: cc142, cc1plus42, wgen42, gspin42
* Fri Nov 30 2007 laijx jianxin.lai@hp.com
-Add ftz.o for IA64 
* Wed Nov 28 2007 laijx jianxin.lai@hp.com
-Remove libF77.a, libm.a, libmsgi.a, Append libopenmp.a
* Tue Nov 27 2007 laijx jianxin.lai@hp.com
-Update installation for gcc libraries
* Tue Jun 5 2007 laijx jianxin.lai@hp.com
-initial version
