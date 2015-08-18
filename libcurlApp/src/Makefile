TOP=../..

include $(TOP)/configure/CONFIG
#----------------------------------------
#  ADD MACRO DEFINITIONS AFTER THIS LINE
#=============================

#==================================================
# build a support library

LIBRARY_IOC += libcurl

# xxxRecord.h will be created from xxxRecord.dbd
#DBDINC += xxxRecord
# install libcurl.dbd into <top>/dbd
#DBD += libcurl.dbd

CURLSRC=$(TOP)/curl-7.40.0

SRC_DIRS += $(CURLSRC)/lib
SRC_DIRS += $(CURLSRC)/lib/vtls

USR_CPPFLAGS += -DBUILDING_LIBCURL
USR_CPPFLAGS_WIN32 += -DWIN32 -D_BIND_TO_CURRENT_VCLIBS_VERSION=1
USR_INCLUDES += -I$(CURLSRC)/include

ifeq ($(STATIC_BUILD),YES)
USR_CPPFLAGS += -DCURL_STATICLIB
endif

# specify all source files to be compiled and added to the library
libcurl_SRCS += \
	amigaos.c \
	asyn-ares.c \
	asyn-thread.c \
	axtls.c \
	base64.c \
	bundles.c \
	conncache.c \
	connect.c \
	content_encoding.c \
	cookie.c \
	curl_addrinfo.c \
	curl_darwinssl.c \
	curl_endian.c \
	curl_fnmatch.c \
	curl_gethostname.c \
	curl_gssapi.c \
	curl_memrchr.c \
	curl_multibyte.c \
	curl_ntlm.c \
	curl_ntlm_core.c \
	curl_ntlm_msgs.c \
	curl_ntlm_wb.c \
	curl_rtmp.c \
	curl_sasl.c \
	curl_sasl_gssapi.c \
	curl_sasl_sspi.c \
	curl_schannel.c \
	curl_sspi.c \
	curl_threads.c \
	cyassl.c \
	dict.c \
	dotdot.c \
	easy.c \
	escape.c \
	file.c \
	fileinfo.c \
	formdata.c \
	ftp.c \
	ftplistparser.c \
	getenv.c \
	getinfo.c \
	gopher.c \
	gtls.c \
	hash.c \
	hmac.c \
	hostasyn.c \
	hostcheck.c \
	hostip.c \
	hostip4.c \
	hostip6.c \
	hostsyn.c \
	http.c \
	http_chunks.c \
	http_digest.c \
	http_negotiate.c \
	http_negotiate_sspi.c \
	http_proxy.c \
	idn_win32.c \
	if2ip.c \
	imap.c \
	inet_ntop.c \
	inet_pton.c \
	krb5.c \
	ldap.c \
	llist.c \
	md4.c \
	md5.c \
	memdebug.c \
	mprintf.c \
	multi.c \
	netrc.c \
	non-ascii.c \
	nonblock.c \
	nss.c \
	openldap.c \
	parsedate.c \
	pingpong.c \
	pipeline.c \
	polarssl.c \
	polarssl_threadlock.c \
	pop3.c \
	progress.c \
	rawstr.c \
	rtsp.c \
	security.c \
	select.c \
	sendf.c \
	share.c \
	slist.c \
	smb.c \
	smtp.c \
	socks.c \
	socks_gssapi.c \
	socks_sspi.c \
	speedcheck.c \
	splay.c \
	ssh.c \
	vtls.c \
	openssl.c \
	strdup.c \
	strequal.c \
	strerror.c \
	strtok.c \
	strtoofft.c \
	telnet.c \
	tftp.c \
	timeval.c \
	transfer.c \
	url.c \
	version.c \
	warnless.c \
	wildcard.c 

libcurl_RCS +=	libcurl.res

#libcurl_LIBS += $(EPICS_BASE_IOC_LIBS)
libcurl_SYS_LIBS_WIN32 += ws2_32 wldap32 advapi32

PROD_IOC += curl
SRC_DIRS += $(CURLSRC)/src

curl_SRCS += \
	nonblock.c \
	rawstr.c \
	strtoofft.c \
	warnless.c \
	tool_binmode.c \
	tool_bname.c \
	tool_cb_dbg.c \
	tool_cb_hdr.c \
	tool_cb_prg.c \
	tool_cb_rea.c \
	tool_cb_see.c \
	tool_cb_wrt.c \
	tool_cfgable.c \
	tool_convert.c \
	tool_dirhie.c \
	tool_doswin.c \
	tool_easysrc.c \
	tool_formparse.c \
	tool_getparam.c \
	tool_getpass.c \
	tool_help.c \
	tool_helpers.c \
	tool_homedir.c \
	tool_hugehelp.c \
	tool_libinfo.c \
	tool_main.c \
	tool_metalink.c \
	tool_mfiles.c \
	tool_msgs.c \
	tool_operate.c \
	tool_operhlp.c \
	tool_panykey.c \
	tool_paramhlp.c \
	tool_parsecfg.c \
	tool_setopt.c \
	tool_sleep.c \
	tool_urlglob.c \
	tool_util.c \
	tool_vms.c \
	tool_writeenv.c \
	tool_writeout.c \
	tool_xattr.c 
	
curl_RCS += curl.res

curl_LIBS += libcurl
#curl_LIBS += $(EPICS_BASE_IOC_LIBS)
curl_SYS_LIBS_WIN32 += ws2_32 wldap32 advapi32

#===========================

include $(TOP)/configure/RULES
#----------------------------------------
#  ADD RULES AFTER THIS LINE
install :
	-$(MKDIR) $(INSTALL_LOCATION)/include/curl
	$(CP) $(CURLSRC)/include/curl/*.h $(INSTALL_LOCATION)/include/curl

