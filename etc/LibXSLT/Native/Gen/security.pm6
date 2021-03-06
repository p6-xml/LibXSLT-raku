use v6;
#  -- DO NOT EDIT --
# generated by: ../LibXML-p6/etc/generator.p6 --mod=LibXSLT --lib=XSLT etc/libxslt-api.xml

unit module LibXSLT::Native::Gen::security;
# interface for the libxslt security framework:
#    the libxslt security framework allow to restrict the access to new resources (file or URL) from the stylesheet at runtime. 
use LibXML::Native::Defs :xmlCharP;
use LibXSLT::Native::Defs :$lib;

enum xsltSecurityOption is export (
    XSLT_SECPREF_CREATE_DIRECTORY => 3,
    XSLT_SECPREF_READ_FILE => 1,
    XSLT_SECPREF_READ_NETWORK => 4,
    XSLT_SECPREF_WRITE_FILE => 2,
    XSLT_SECPREF_WRITE_NETWORK => 5,
);

class xsltSecurityPrefs is repr('CPointer') {
    our sub GetDefault( --> xsltSecurityPrefs) is native(XSLT) is symbol('xsltGetDefaultSecurityPrefs') {*}
    our sub New( --> xsltSecurityPrefs) is native(XSLT) is symbol('xsltNewSecurityPrefs') {*}

    method CheckRead(xsltTransformContext $ctxt, xmlCharP $URL --> int32) is native(XSLT) is symbol('xsltCheckRead') {*}
    method CheckWrite(xsltTransformContext $ctxt, xmlCharP $URL --> int32) is native(XSLT) is symbol('xsltCheckWrite') {*}
    method Free() is native(XSLT) is symbol('xsltFreeSecurityPrefs') {*}
    method Get(xsltSecurityOption $option --> xsltSecurityCheck) is native(XSLT) is symbol('xsltGetSecurityPrefs') {*}
    method Allow(xsltTransformContext $ctxt, Str $value --> int32) is native(XSLT) is symbol('xsltSecurityAllow') {*}
    method Forbid(xsltTransformContext $ctxt, Str $value --> int32) is native(XSLT) is symbol('xsltSecurityForbid') {*}
    method SetCtxt(xsltTransformContext $ctxt --> int32) is native(XSLT) is symbol('xsltSetCtxtSecurityPrefs') {*}
    method SetDefault() is native(XSLT) is symbol('xsltSetDefaultSecurityPrefs') {*}
    method Set(xsltSecurityOption $option, xsltSecurityCheck $func --> int32) is native(XSLT) is symbol('xsltSetSecurityPrefs') {*}
}
