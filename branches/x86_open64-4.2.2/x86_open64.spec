%define open64_name    x86_open64
%define open64_release 1
%define open64_prefix  /opt/x86_open64-%{open64_version}
%define open64_bin_dir %{open64_prefix}/bin
%define open64_include_dir %{open64_prefix}/include
%define open64_arch x86_64
%define open64_lib_dir %{open64_prefix}/lib/gcc-lib/%{open64_arch}-open64-linux
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
Requires: gcc >= 4.0
Prefix: %{open64_prefix}

%description
x86 Open64 is an open source, optimizing compiler for 32-bit (x86) and
64-bit (x86-64) achitectures. x86 Open64 supports Fortran 77/95/2003 and
C/C++, as well as the shared memory programming model OpenMP.


%files
%defattr(-,root,root)
%dir %{open64_prefix}
%dir %{open64_bin_dir}
%dir %{open64_include_dir}
%dir %{open64_include_dir}/%{open64_version}
%dir %{open64_include_dir}/%{open64_version}/libelf
%dir %{open64_prefix}/lib
%dir %{open64_prefix}/lib/gcc-lib
%dir %{open64_prefix}/lib/gcc-lib/%{open64_arch}-open64-linux
%dir %{open64_prefix}/lib/gcc-lib/%{open64_arch}-open64-linux/%{open64_version}

%{open64_prefix}/ReleaseNotes.txt

%{open64_bin_dir}/opencc
%{open64_bin_dir}/openCC
%{open64_bin_dir}/openf90
%{open64_bin_dir}/openf95
%{open64_bin_dir}/opencc-%{open64_version}
%{open64_bin_dir}/openCC-%{open64_version}
%{open64_bin_dir}/openf90-%{open64_version}
%{open64_bin_dir}/openf95-%{open64_version}
%{open64_bin_dir}/ir_b2a
%{open64_bin_dir}/gspin
%{open64_bin_dir}/gspin42

%{open64_include_dir}/%{open64_version}/dwarf.h
%{open64_include_dir}/%{open64_version}/libdwarf.h
%{open64_include_dir}/%{open64_version}/omp.h
%{open64_include_dir}/%{open64_version}/omp_lib.f
%{open64_include_dir}/%{open64_version}/omp_lib.h
%{open64_include_dir}/%{open64_version}/whirl2c.h
%{open64_include_dir}/%{open64_version}/whirl2f.h
%{open64_include_dir}/%{open64_version}/libelf/libelf.h
%{open64_include_dir}/%{open64_version}/libelf/sys_elf.h

%{open64_lib_dir}/%{open64_version}/whirl2f.so
%{open64_lib_dir}/%{open64_version}/mfef95
%{open64_lib_dir}/%{open64_version}/ipl.so
%{open64_lib_dir}/%{open64_version}/gfecc
%{open64_lib_dir}/%{open64_version}/wgen
%{open64_lib_dir}/%{open64_version}/wgen42
%{open64_lib_dir}/%{open64_version}/ipa_link
%{open64_lib_dir}/%{open64_version}/cf95.cat
%{open64_lib_dir}/%{open64_version}/lno.so
%{open64_lib_dir}/%{open64_version}/whirl2f
%{open64_lib_dir}/%{open64_version}/wopt.so
%{open64_lib_dir}/%{open64_version}/cc1
%{open64_lib_dir}/%{open64_version}/cc142
%{open64_lib_dir}/%{open64_version}/cg.so
%{open64_lib_dir}/%{open64_version}/be
%{open64_lib_dir}/%{open64_version}/cc1plus
%{open64_lib_dir}/%{open64_version}/cc1plus42
%{open64_lib_dir}/%{open64_version}/ipa.so
%{open64_lib_dir}/%{open64_version}/gfec
%{open64_lib_dir}/%{open64_version}/whirl2c.so
%{open64_lib_dir}/%{open64_version}/be.so
%{open64_lib_dir}/%{open64_version}/whirl2c
%{open64_lib_dir}/%{open64_version}/inline
%{open64_lib_dir}/%{open64_version}/driver
%{open64_lib_dir}/%{open64_version}/ipl
%{open64_lib_dir}/%{open64_version}/whirl2c_be
%{open64_lib_dir}/%{open64_version}/whirl2f_be

%ifnarch %{ix86}
%{open64_lib_dir}/%{open64_version}/elf_1G.xBDT
%{open64_lib_dir}/%{open64_version}/elf.xB
%{open64_lib_dir}/%{open64_version}/elf.xBDT
%{open64_lib_dir}/%{open64_version}/libacml_mv.a
%{open64_lib_dir}/%{open64_version}/LICENSE-LIBACML_MV
%{open64_lib_dir}/%{open64_version}/libhugetlbfs_open64.a
%{open64_lib_dir}/%{open64_version}/libhugetlbfs_open64.so.1
%{open64_lib_dir}/%{open64_version}/libhugetlbfs_open64.so
%{open64_lib_dir}/%{open64_version}/libffio.a
%{open64_lib_dir}/%{open64_version}/libfortran.a
%{open64_lib_dir}/%{open64_version}/libinstr.a
%{open64_lib_dir}/%{open64_version}/libmv.a
%{open64_lib_dir}/%{open64_version}/libmv.so.1
%{open64_lib_dir}/%{open64_version}/libmv.so
%{open64_lib_dir}/%{open64_version}/libopen64rt.a
%{open64_lib_dir}/%{open64_version}/libopen64rt_shared.a
%{open64_lib_dir}/%{open64_version}/libopenmp.a
%{open64_lib_dir}/%{open64_version}/libopenmp.so.1
%{open64_lib_dir}/%{open64_version}/libopenmp.so
%endif

# ia32/x8664 specified files
%ifarch %{ix86} x86_64
%dir %{open64_lib_dir}/%{open64_version}/32
%{open64_lib_dir}/%{open64_version}/opteron.so
%{open64_lib_dir}/%{open64_version}/em64t.so
%{open64_lib_dir}/%{open64_version}/barcelona.so
%{open64_lib_dir}/%{open64_version}/core.so
%{open64_lib_dir}/%{open64_version}/wolfdale.so
%{open64_lib_dir}/%{open64_version}/32/elf_1G.xBDT
%{open64_lib_dir}/%{open64_version}/32/elf.xB
%{open64_lib_dir}/%{open64_version}/32/elf.xBDT
%{open64_lib_dir}/%{open64_version}/32/libacml_mv.a
%{open64_lib_dir}/%{open64_version}/32/libhugetlbfs_open64.a
%{open64_lib_dir}/%{open64_version}/32/libhugetlbfs_open64.so.1
%{open64_lib_dir}/%{open64_version}/32/libhugetlbfs_open64.so
%{open64_lib_dir}/%{open64_version}/32/libffio.a
%{open64_lib_dir}/%{open64_version}/32/libfortran.a
%{open64_lib_dir}/%{open64_version}/32/libinstr.a
%{open64_lib_dir}/%{open64_version}/32/libmv.a
%{open64_lib_dir}/%{open64_version}/32/libmv.so.1
%{open64_lib_dir}/%{open64_version}/32/libmv.so
%{open64_lib_dir}/%{open64_version}/32/libopen64rt.a
%{open64_lib_dir}/%{open64_version}/32/libopen64rt_shared.a
%{open64_lib_dir}/%{open64_version}/32/libopenmp.a
%{open64_lib_dir}/%{open64_version}/32/libopenmp.so.1
%{open64_lib_dir}/%{open64_version}/32/libopenmp.so
%{open64_lib_dir}/%{open64_version}/32/README_ACML
%endif

%prep

%build


%install
cp -r -P %{_topdir}/../opt %{_topdir}/root



%clean


%pre

%post

echo "Installed x86 Open64 Compiler Suite v%{open64_version} to ${RPM_INSTALL_PREFIX} successfully."

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
