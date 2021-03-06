use v6;
#  -- DO NOT EDIT --
# generated by: ../LibXML-p6/etc/generator.p6 --mod=LibXSLT --lib=XSLT etc/libxslt-api.xml

unit module LibXSLT::Native::Gen::documents;
# interface for the document handling:
#    implements document loading and cache (multiple document() reference for the same resources must be equal. 
use LibXML::Native::Defs :xmlCharP;
use LibXSLT::Native::Defs :$lib;

enum xsltLoadType is export (
    XSLT_LOAD_DOCUMENT => 2,
    XSLT_LOAD_START => 0,
    XSLT_LOAD_STYLESHEET => 1,
);

our sub xsltSetLoaderFunc(xsltDocLoaderFunc $f) is native(XSLT) is export {*}
