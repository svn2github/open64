%define open64_name    open64
%define open64_version 5.0
%define open64_release 0
%define open64_gcc_version 4.2.0
%define open64_prefix  /opt/open64
%define open64_bin_dir %{open64_prefix}/bin
%define open64_include_dir %{open64_prefix}/include
%define open64_gcc_dir %{open64_prefix}/open64-gcc-%{open64_gcc_version}
%define open64_lib_dir %{open64_prefix}/lib
%define __spec_install_post /usr/lib/rpm/brp-compress /usr/lib/rpm/brp-strip-comment-note %{nil}

Summary: The Open64 Compiler Suite v%{open64_version}
Name: %{open64_name}
Version: %{open64_version}
Release: %{open64_release}
License: GPL
Group: Development/Languages
Source: %{open64_name}-%{open64_version}-%{open64_release}.src.tar.bz2
URL: http://www.open64.net
Prereq: /sbin/install-info
Requires: gcc >= 4.0
Prefix: %{open64_prefix}

%description
Open64 is the final result of research contributions from a number of compiler 
groups around the world. Formerly known as Pro64, Open64 was initially created 
by SGI and licensed under the GNU Public License (GPL). It was derived from 
SGI's MIPSPro compiler. 

Open64 also derives from work done by Intel Corp, in conjunction with the 
Chinese Academy of Sciences. They created the Open Research Compiler (ORC), 
a specially modified version of Open64 with custom modifications for 
researchers. These changes were later folded back into the main Open64 source 
tree in 2005. 

Open64 has been retargetted to a number of architectures. Pathscale modified 
Open64 to create EkoPath, a compiler for the AMD64 architecture. The University 
of Delaware's Computer Architecture and Parallel Systems Laboratory (CAPSL) 
modified Open64 to create the Kylin Compiler, a compiler for Intel's X-Scale 
architecture. SimpLight Nanoelectronics ported Open64 to their own DSP architecture 
named 'SL'. The Institute of Computing Technology of Chinese Academy of Sciences 
retargetted Open64 to MIPS and Loongson CPUs. There is also a PowerPC port
of Open64 created by Tsinghua University.

The Open64 compiler suite currently includes compilers for C, C++, and 
Fortran90/95 compilers for the IA-32, x86_64, IA-64 Linux. This project 
is led by Shinming Liu at HP Inc. It is the result of partnership between 
Tsinghua University, Institute of Computing Technology at the Chinese Academy 
of Science, CAPSL research laboratory at the University of Delaware, Advanced 
Micro Devices, Inc. Google Inc. Hewlett-Packard, Inc. NVIDIA Inc. and SimpLight
Nanoelectronics Inc. We'd also like to acknowledge the contributions of PathScale 
Inc. and Sun Chan at Intel Inc..


%files
%defattr(-,root,root)
%dir %{open64_prefix}

%{open64_bin_dir}/
%{open64_include_dir}/
%{open64_lib_dir}/
%{open64_gcc_dir}/
#%{open64_prefix}/README
#%{open64_prefix}/RELEASE-%{open64_version}


%prep

%build

%install
rm -rf %{_topdir}/root/opt
mkdir %{_topdir}/root/opt
cd %{_topdir}/root/opt
tar jxf ../../../open64-%{open64_version}-%{open64_release}.%{_arch}.tar.bz2
mv open64-%{open64_version} open64
#rm %{_topdir}/root/opt/open64/lib/gcc-lib/x86_64-open64-linux/%{open64_version}/lib*
#rm -rf %{_topdir}/root/opt/open64/open64-gcc-%{open64_gcc_version}/lib64

%clean

%pre

%post

%preun

%postun

%changelog
* Wed Nov 9 2011 laijx jianxin.lai@hp.com
-Open64 5.0 release
* Wed Apr 1 2011 laijx jianxin.lai@hp.com
-Open64 4.2.4 release
* Wed Apr 7 2010 laijx jianxin.lai@hp.com
-Open64 4.2.3 release
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
