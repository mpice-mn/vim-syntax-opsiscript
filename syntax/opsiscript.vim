" Vim syntax file
" Language:  OpsiScript

if !exists('b:current_syntax')
  " Looks a lot like dosini files.
  "runtime! syntax/dosini.vim

  syn case ignore

  syn match   opsiOperator ">=" 
  syn match   opsiOperator "<=" 
  syn match   opsiOperator "=" 
  syn match   opsiOperator "+" 
  syn match   opsiOperator "," 
  syn match   opsiOperator "INT[<>]" 
  syn match   opsiOperator "INT[<>]=" 
  syn keyword opsiConditional if else endif switch case and not
  syn keyword opsiRepeat for to do in
  syn keyword opsiInclude include_append include_insert
  syn keyword opsiDef DefVar DefStringList Set DefFunc EndFunc

  syn match opsiComment  "^\s*;.*$" contains=opsiTodo
  syn match opsiTodo "TODO" "FIXME"
  syn match opsiVariable "\$[^ ]*\$"
  "syn match opsiConstant "%\h\w*%"
  syn match opsiConstant "%\h\w*%"
  syn match opsiString   "\"[^"]*\"" contains=opsiConstant,opsiVariable
  syn match opsiString   "\'[^']*\'" contains=opsiConstant,opsiVariable
  syn match opsiNumber   "\<\d\+\>"
  syn region opsiSection   start="^\s*\[" end="\]"
  syn match opsiSubCall "^\s*Sub_.*"

  "syn keyword opsiFunctions setloglevel emptylist

  hi def link opsiVariable Identifier
  "hi def link opsiConstant Constant
  hi def link opsiConstant Identifier
  hi def link opsiComment  Comment
  hi def link opsiString  String
  hi def link opsiNumber  Number
  hi def link opsiConditional  Conditional
  hi def link opsiRepeat  Repeat
  hi def link opsiInclude  Include
  hi def link opsiDef  Type
  hi def link opsiOperator  Operator
  hi def link opsiSection   Special
  hi def link opsiTodo   Todo
  hi def link opsiSubCall Function
  hi def link opsiFunctions Function

  let b:current_syntax = 'opsiscript'
endif
