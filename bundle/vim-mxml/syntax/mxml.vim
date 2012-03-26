" Vim syntax file
" Language:	MXML
" Maintainer:	Abdul Qabiz <mail@abdulqabiz.com>
" URL:		http://www.abdulqabiz.com/files/vim/mxml.vim
"		Author and previous maintainer:
"		Johannes Zellner <johannes@zellner.org>
"		Paul Siegmann <pauls@euronet.nl>
" Last Change:	Mi, 20 Jun 2006 14:40:09 IST
" Filenames:	*.mxml
" $Id: mxml.vim,v 1.0 2006/06/20 14:51:26 aqabiz Exp $

" CONFIGURATION:
"   syntax folding can be turned on by
"
"      let g:mxml_syntax_folding = 1
"
"   before the syntax file gets loaded (e.g. in ~/.vimrc).
"   This might slow down syntax highlighting significantly,
"   especially for large files.
"
" CREDITS:
"   The original version was derived by Johannes Zellner from
"   Paul Siegmann's xml.vim.
"
" REFERENCES:
"   [1] http://www.w3.org/TR/2000/REC-xml-20001006
"   [2] http://www.w3.org/XML/1998/06/xmlspec-report-19980910.htm
"
"
"   2.3 Common Syntactic Constructs
"   [4]    NameChar    ::=    Letter | Digit | '.' | '-' | '_' | ':' | CombiningChar | Extender
"   [5]    Name        ::=    (Letter | '_' | ':') (NameChar)*
"
" NOTE:
"   1) empty tag delimiters "/>" inside attribute values (strings)
"      confuse syntax highlighting.
"   2) for large files, folding can be pretty slow, especially when
"      loading a file the first time and viewoptions contains 'folds'
"      so that folds of previous sessions are applied.
"      Don't use 'foldmethod=syntax' in this case.


" Quit when a syntax file was already loaded

if !exists("main_syntax")
  if version < 600
    syntax clear
  elseif exists("b:current_syntax")
    finish
  endif
  let main_syntax = 'mxml'
endif

" don't use standard HiLink, it will not work with included syntax files
if version < 508
  command! -nargs=+ MXMLHiLink hi link <args>
else
  command! -nargs=+ MXMLHiLink hi def link <args>
endif

let s:mxml_cpo_save = &cpo
set cpo&vim

syn case match

" mark illegal characters
syn match xmlError "[<&]"

" strings (inside tags) aka VALUES
"
" EXAMPLE:
"
" <tag foo.attribute = "value">
"                      ^^^^^^^
syn region  xmlString contained start=+"+ end=+"+ contains=xmlEntity display
syn region  xmlString contained start=+'+ end=+'+ contains=xmlEntity display


" punctuation (within attributes) e.g. <tag xml:foo.attribute ...>
"                                              ^   ^
" syn match   xmlAttribPunct +[-:._]+ contained display
syn match   xmlAttribPunct +[:.]+ contained display

" no highlighting for xmlEqual (xmlEqual has no highlighting group)
syn match   xmlEqual +=+ display


" attribute, everything before the '='
"
" PROVIDES: @xmlAttribHook
"
" EXAMPLE:
"
" <tag foo.attribute = "value">
"      ^^^^^^^^^^^^^
"
syn match   xmlAttrib
    \ +[-'"<]\@<!\<[a-zA-Z:_][-.0-9a-zA-Z0-9:_]*\>\(['">]\@!\|$\)+
    \ contained
    \ contains=xmlAttribPunct,@xmlAttribHook
    \ display


" namespace spec
"
" PROVIDES: @xmlNamespaceHook
"
" EXAMPLE:
"
" <xsl:for-each select = "lola">
"  ^^^
"
if exists("g:mxml_namespace_transparent")
syn match   xmlNamespace
    \ +\(<\|</\)\@<=[^ /!?<>"':]\+[:]\@=+
    \ contained
    \ contains=@xmlNamespaceHook
    \ transparent
    \ display
else
syn match   xmlNamespace
    \ +\(<\|</\)\@<=[^ /!?<>"':]\+[:]\@=+
    \ contained
    \ contains=@xmlNamespaceHook
    \ display
endif


" tag name
"
" PROVIDES: @xmlTagHook
"
" EXAMPLE:
"
" <tag foo.attribute = "value">
"  ^^^
"
syn match   xmlTagName
    \ +[<]\@<=[^ /!?<>"']\++
    \ contained
    \ contains=xmlNamespace,xmlAttribPunct,@xmlTagHook
    \ display


if exists('g:mxml_syntax_folding')

    " start tag
    " use matchgroup=xmlTag to skip over the leading '<'
    "
    " PROVIDES: @xmlStartTagHook
    "
    " EXAMPLE:
    "
    " <tag id="whoops">
    " s^^^^^^^^^^^^^^^e
    "
    syn region   xmlTag
	\ matchgroup=xmlTag start=+<[^ /!?<>"']\@=+
	\ matchgroup=xmlTag end=+>+
	\ contained
	\ contains=xmlError,xmlTagName,xmlAttrib,xmlEqual,xmlString,@xmlStartTagHook


    " highlight the end tag
    "
    " PROVIDES: @xmlTagHook
    " (should we provide a separate @xmlEndTagHook ?)
    "
    " EXAMPLE:
    "
    " </tag>
    " ^^^^^^
    "
    syn match   xmlEndTag
	\ +</[^ /!?<>"']\+>+
	\ contained
	\ contains=xmlNamespace,xmlAttribPunct,@xmlTagHook


    " tag elements with syntax-folding.
    " NOTE: NO HIGHLIGHTING -- highlighting is done by contained elements
    "
    " PROVIDES: @xmlRegionHook
    "
    " EXAMPLE:
    "
    " <tag id="whoops">
    "   <!-- comment -->
    "   <another.tag></another.tag>
    "   <empty.tag/>
    "   some data
    " </tag>
    "
    syn region   xmlRegion
	\ start=+<\z([^ /!?<>"']\+\)+
	\ skip=+<!--\_.\{-}-->+
	\ end=+</\z1\_\s\{-}>+
	\ matchgroup=xmlEndTag end=+/>+
	\ fold
	\ contains=xmlTag,xmlEndTag,xmlCdata,xmlRegion,xmlComment,xmlEntity,xmlProcessing,@xmlRegionHook
	\ keepend
	\ extend

else

    " no syntax folding:
    " - contained attribute removed
    " - xmlRegion not defined
    "
    syn region   xmlTag
	\ matchgroup=xmlTag start=+<[^ /!?<>"']\@=+
	\ matchgroup=xmlTag end=+>+
	\ contains=xmlError,xmlTagName,xmlAttrib,xmlEqual,xmlString,@xmlStartTagHook

    syn match   xmlEndTag
	\ +</[^ /!?<>"']\+>+
	\ contains=xmlNamespace,xmlAttribPunct,@xmlTagHook

endif


" &entities; compare with dtd
syn match   xmlEntity                 "&[^; \t]*;" contains=xmlEntityPunct
syn match   xmlEntityPunct  contained "[&.;]"

if exists('g:mxml_syntax_folding')

    " The real comments (this implements the comments as defined by xml,
    " but not all xml pages actually conform to it. Errors are flagged.
    syn region  xmlComment
	\ start=+<!+
	\ end=+>+
	\ contains=xmlCommentPart,xmlCommentError
	\ extend
	\ fold

else

    " no syntax folding:
    " - fold attribute removed
    "
    syn region  xmlComment
	\ start=+<!+
	\ end=+>+
	\ contains=xmlCommentPart,xmlCommentError
	\ extend

endif

syn keyword xmlTodo         contained TODO FIXME XXX
syn match   xmlCommentError contained "[^><!]"
syn region  xmlCommentPart
    \ start=+--+
    \ end=+--+
    \ contained
    \ contains=xmlTodo,@xmlCommentHook


" CData sections
"
" PROVIDES: @xmlCdataHook
"
syn region    xmlCdata
    \ start=+<!\[CDATA\[+
    \ end=+]]>+
    \ contains=xmlCdataStart,xmlCdataEnd,@xmlCdataHook
    \ keepend
    \ extend

" using the following line instead leads to corrupt folding at CDATA regions
" syn match    xmlCdata      +<!\[CDATA\[\_.\{-}]]>+  contains=xmlCdataStart,xmlCdataEnd,@xmlCdataHook
syn match    xmlCdataStart +<!\[CDATA\[+  contained contains=xmlCdataCdata
syn keyword  xmlCdataCdata CDATA          contained
syn match    xmlCdataEnd   +]]>+          contained


" Processing instructions
" This allows "?>" inside strings -- good idea?
syn region  xmlProcessing matchgroup=xmlProcessingDelim start="<?" end="?>" contains=xmlAttrib,xmlEqual,xmlString


if exists('g:mxml_syntax_folding')

    " DTD -- we use dtd.vim here
    syn region  xmlDocType matchgroup=xmlDocTypeDecl
	\ start="<!DOCTYPE"he=s+2,rs=s+2 end=">"
	\ fold
	\ contains=xmlDocTypeKeyword,xmlInlineDTD,xmlString
else

    " no syntax folding:
    " - fold attribute removed
    "
    syn region  xmlDocType matchgroup=xmlDocTypeDecl
	\ start="<!DOCTYPE"he=s+2,rs=s+2 end=">"
	\ contains=xmlDocTypeKeyword,xmlInlineDTD,xmlString

endif

syn keyword xmlDocTypeKeyword contained DOCTYPE PUBLIC SYSTEM
syn region  xmlInlineDTD contained matchgroup=xmlDocTypeDecl start="\[" end="]" contains=@xmlDTD
syn include @xmlDTD <sfile>:p:h/dtd.vim
unlet b:current_syntax


" synchronizing
" TODO !!! to be improved !!!

syn sync match xmlSyncDT grouphere  xmlDocType +\_.\(<!DOCTYPE\)\@=+
" syn sync match xmlSyncDT groupthere  NONE       +]>+

if exists('g:mxml_syntax_folding')
    syn sync match xmlSync grouphere   xmlRegion  +\_.\(<[^ /!?<>"']\+\)\@=+
    " syn sync match xmlSync grouphere  xmlRegion "<[^ /!?<>"']*>"
    syn sync match xmlSync groupthere  xmlRegion  +</[^ /!?<>"']\+>+
endif

syn keyword mxmlSpecialTagName  contained mx:Script mx:Style
if main_syntax != 'actionscript' || exists("actionscript")
  " JAVA SCRIPT
  syn include @mxmlScript syntax/actionscript.vim
  unlet b:current_syntax
  syn region  Script start=+<mx:Script[^>]*>+ keepend end=+</mx:Script>+me=s-1 contains=@mxmlScript,mxmlCssStyleComment,mxmlScriptTag,@htmlPreproc
  syn region  mxmlScriptTag     contained start=+<mx:Script+ end=+>+       contains=htmlTagN,htmlString,htmlArg,htmlValue,htmlTagError,htmlEvent
  MXMLHiLink mxmlScriptTag xmlTag

  syn region mxmlEvent        contained start=+\<on\a\+\s*=[\t ]*'+ end=+'+ keepend contains=mxmlEventSQ
  syn region mxmlEvent        contained start=+\<on\a\+\s*=[\t ]*"+ end=+"+ keepend contains=mxmlEventDQ
  syn region mxmlEventSQ        contained start=+'+ms=s+1 end=+'+me=s-1 contains=@mxmlScript
  syn region mxmlEventDQ        contained start=+"+ms=s+1 end=+"+me=s-1 contains=@mxmlScript
  MXMLHiLink mxmlEventSQ mxmlEvent
  MXMLHiLink mxmlEventDQ mxmlEvent

  " a javascript expression is used as an arg value
  syn region  actionScriptExpression contained start=+&{+ keepend end=+};+ contains=@mxmlScript,@htmlPreproc
endif
syn sync minlines=100

syn cluster mxmlScript      add=@htmlPreproc

if main_syntax == "mxml"
  syn sync match mxmlHighlight groupthere NONE "<[/a-zA-Z]"
  syn sync match mxmlHighlight groupthere Script "<mx:Script"
  syn sync match mxmlHighlightSkip "^.*['\"].*$"
  syn sync minlines=10
endif

" The default highlighting.
MXMLHiLink xmlTodo		Todo
MXMLHiLink xmlTag		Function
MXMLHiLink xmlTagName		Function
MXMLHiLink xmlEndTag		Identifier
if !exists("g:mxml_namespace_transparent")
    MXMLHiLink xmlNamespace	Tag
endif
MXMLHiLink xmlEntity		Statement
MXMLHiLink xmlEntityPunct	Type

MXMLHiLink xmlAttribPunct	Comment
MXMLHiLink xmlAttrib		Type

MXMLHiLink xmlString		String
MXMLHiLink xmlComment		Comment
MXMLHiLink xmlCommentPart	Comment
MXMLHiLink xmlCommentError	Error
MXMLHiLink xmlError		Error

MXMLHiLink xmlProcessingDelim	Comment
MXMLHiLink xmlProcessing	Type

MXMLHiLink xmlCdata		String
MXMLHiLink xmlCdataCdata	Statement
MXMLHiLink xmlCdataStart	Type
MXMLHiLink xmlCdataEnd		Type

MXMLHiLink xmlDocTypeDecl	Function
MXMLHiLink xmlDocTypeKeyword	Statement
MXMLHiLink xmlInlineDTD	Function
MXMLHiLink Script		Special
MXMLHiLink actionScriptExpression Script 		
MXMLHiLink xmlCssStyleComment    Comment
MXMLHiLink xmlCssDefinition      Special
MXMLHiLink mxmlEvent             Script
MXMLHiLink mxmlSpecialTagName    Exception 


let b:current_syntax = "mxml"
if main_syntax == 'mxml'
  unlet main_syntax
endif

let &cpo = s:mxml_cpo_save
unlet s:mxml_cpo_save

" vim: ts=8
