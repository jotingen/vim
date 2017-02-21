" Stream PreProcessor syntax file
" Language:		 Stream PreProcessor
" Maintainer:  James Tingen <jtingen@us.ibm.com>

" PreProc  {{{1
"  Parentheses {{{2
syn region  PreProc_Par_1 matchgroup=PreProc_Par_1 start=/(/ end=/)/ contained contains=PreProc_Par_2,PreProc_Operator,PreProc_String,PreProc_Number,PreProc_Macro 
syn region  PreProc_Par_2 matchgroup=PreProc_Par_2 start=/(/ end=/)/ contained contains=PreProc_Par_3,PreProc_Operator,PreProc_String,PreProc_Number,PreProc_Macro 
syn region  PreProc_Par_3 matchgroup=PreProc_Par_3 start=/(/ end=/)/ contained contains=PreProc_Par_1,PreProc_Operator,PreProc_String,PreProc_Number,PreProc_Macro 

"  Keywords {{{2
syn keyword PreProc_Keyword PreProc contained

"  Macros {{{2
syn match   PreProc_Macro    "\w\+" containedin=PreProc_Exp_Expression contained 
                                                                                                          
"  Operators {{{2
syn match   PreProc_Operator "++"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "--"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "+"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "-"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "!"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "\~"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "defined" containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "*"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "/"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "%"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "+"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "-"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "\."      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "<<"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ">>"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "<"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "<="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ">"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ">="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "=="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "!="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "eq"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "ne"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "&"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "\^"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "|"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "&&"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "||"      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "="       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "+="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "-="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "*="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "/="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "%="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "&="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "|="      containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "\^="     containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "<<="     containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ">>="     containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "\.="     containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator "?"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ":"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Operator ","       containedin=PreProc_Exp_Expression contained 
                                                                                                          
"  Strings {{{2
syn match   PreProc_String   "\".\{-}\"" containedin=PreProc_Exp_Expression contained contains=NONE keepend
syn match   PreProc_String   "\'.\{-}\'" containedin=PreProc_Exp_Expression contained contains=NONE keepend
                                                                                                          
"  Numbers {{{2
syn match   PreProc_Number   "\-\{0,1}[0-9]\+"           containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Number   "-\{0,1}0[bB][0-1]\+"       containedin=PreProc_Exp_Expression contained 
syn match   PreProc_Number   "-\{0,1}0[xX][0-9a-fA-F]\+" containedin=PreProc_Exp_Expression contained 
                                                                                    
"  Expressions {{{2
syn match   PreProc_Exp_Format "\\[0-9bdnqxBX]*\\\{0,1}"                                                   containedin=PreProc_Exp    contained
syn match   PreProc_Exp_Prefix "%"                                                 nextgroup=PreProc_Par_1 containedin=PreProc_Exp 
syn region  PreProc_Exp        start="%(" end=")\(\\[0-9bdnqxBX]*\\\{0,1}\)\{0,1}" oneline transparent

"  Variables {{{2
syn match   PreProc_Variable_Name "\w\+"  containedin=PreProc_Variable contained 
syn match   PreProc_Variable      "%\w\+"          

"  Function Variables {{{2
syn match   PreProc_Function_Variable_Name "\w\+"      nextgroup=PreProc_Par_1 containedin=PreProc_Function_Variable contained
syn match   PreProc_Function_Variable      "%\w\+(.*)"                                      

"  Messages {{{2
syn match   PreProc_Message_Keyword "message"         skipwhite nextgroup=PreProc_Par_1           containedin=PreProc_Message contained
syn match   PreProc_Message_Prefix  "%"               skipwhite nextgroup=PreProc_Message_Keyword containedin=PreProc_Message contained
syn match   PreProc_Message         "%message\s*(.*)"                                                

"  Ifndef {{{2
syn match   PreProc_Ifndef_Name    "\w\+"           skipwhite                                    containedin=PreProc_Ifndef contained
syn match   PreProc_Ifndef_Keyword "ifndef"         skipwhite nextgroup=PreProc_Ifndef_Name    containedin=PreProc_Ifndef contained
syn match   PreProc_Ifndef_Prefix  "%"              skipwhite nextgroup=PreProc_Ifndef_Keyword containedin=PreProc_Ifndef contained
syn match   PreProc_Ifndef         "%ifndef\s*\w\+"                                              

"  Ifdef {{{2
syn match   PreProc_Ifdef_Name    "\w\+"          skipwhite                                   containedin=PreProc_Ifdef  contained
syn match   PreProc_Ifdef_Keyword "ifdef"         skipwhite nextgroup=PreProc_Ifdef_Name    containedin=PreProc_Ifdef  contained
syn match   PreProc_Ifdef_Prefix  "%"             skipwhite nextgroup=PreProc_Ifdef_Keyword containedin=PreProc_Ifdef  contained
syn match   PreProc_Ifdef         "%ifdef\s*\w\+"                                             

"  If {{{2
syn match   PreProc_If_Keyword "if"         skipwhite nextgroup=PreProc_Par_1      containedin=PreProc_If     contained
syn match   PreProc_If_Prefix  "%"          skipwhite nextgroup=PreProc_If_Keyword containedin=PreProc_If     contained
syn match   PreProc_If         "%if\s*(.*)"                                          

"  Include {{{2
syn match   PreProc_Include_Constant "\w\+"               skipwhite nextgroup=PreProc_Comment          containedin=PreProc_Include contained
syn match   PreProc_Include_Keyword  "include"            skipwhite nextgroup=PreProc_Include_Constant containedin=PreProc_Include contained
syn match   PreProc_Include_Prefix   "%"                  skipwhite nextgroup=PreProc_Include_Keyword  containedin=PreProc_Include contained
syn match   PreProc_Include          "%include\s\+\w\+.*"                                                 
                                                                     
"  Function {{{2
syn match   PreProc_Function_Name    "\w\+"                  skipwhite nextgroup=PreProc_Par_1            containedin=PreProc_Function contained
syn match   PreProc_Function_Keyword "function"              skipwhite nextgroup=PreProc_Function_Name    containedin=PreProc_Function contained
syn match   PreProc_Function_Prefix  "%"                     skipwhite nextgroup=PreProc_Function_Keyword containedin=PreProc_Function contained
syn match   PreProc_Function         "%function\s\+\w\+(.*)"                                                  

"  While {{{2
syn match   PreProc_While_Keyword "while"         skipwhite nextgroup=PreProc_Par_1         containedin=PreProc_While  contained
syn match   PreProc_While_Prefix  "%"             skipwhite nextgroup=PreProc_While_Keyword containedin=PreProc_While  contained
syn match   PreProc_While         "%while\s*(.*)"                                             

"  Foreach {{{2
syn match   PreProc_Foreach_Name    "\w\+"                    skipwhite nextgroup=PreProc_Par_1           containedin=PreProc_Foreach contained
syn match   PreProc_Foreach_Keyword "foreach"                 skipwhite nextgroup=PreProc_Foreach_Name    containedin=PreProc_Foreach contained
syn match   PreProc_Foreach_Prefix  "%"                       skipwhite nextgroup=PreProc_Foreach_Keyword containedin=PreProc_Foreach contained
syn match   PreProc_Foreach         "%foreach\s\+\w\+\s*(.*)"                                                

"  For {{{2
syn match   PreProc_For_Keyword "for"         skipwhite nextgroup=PreProc_Par_1       containedin=PreProc_For    contained
syn match   PreProc_For_Prefix  "%"           skipwhite nextgroup=PreProc_For_Keyword containedin=PreProc_For    contained
syn match   PreProc_For         "%for\s*(.*)"                                           

"  Undef {{{2
syn match   PreProc_Undef_Name    "\w\+"          skipwhite                                   containedin=PreProc_Undef  contained
syn match   PreProc_Undef_Keyword "undef"         skipwhite nextgroup=PreProc_Undef_Name    containedin=PreProc_Undef  contained
syn match   PreProc_Undef_Prefix  "%"             skipwhite nextgroup=PreProc_Undef_Keyword containedin=PreProc_Undef  contained
syn match   PreProc_Undef         "%undef\s*\w\+"                                             

"  Define {{{2
syn match   PreProc_Define_Newline_Prefix "--"                                                       skipwhite nextgroup=PreProc_Define_Constant,PreProc_Exp                 containedin=PreProc_Define contained
syn match   PreProc_Define_Newline        "\\"                                                       skipwhite nextgroup=PreProc_Define_Newline_Prefix                         containedin=PreProc_Define contained
syn match   PreProc_Define_Constant       ".\+\n"                                                     skipwhite nextgroup=PreProc_Define_Newline                 containedin=PreProc_Define contained 
syn match   PreProc_Define_Name           "\w\+"                                                     skipwhite nextgroup=PreProc_Define_Constant               containedin=PreProc_Define contained
syn match   PreProc_Define_Keyword        "define"                                                   skipwhite nextgroup=PreProc_Define_Name                                   containedin=PreProc_Define contained
syn match   PreProc_Define_Prefix         "%"                                                        skipwhite nextgroup=PreProc_Define_Keyword                                containedin=PreProc_Define contained
syn match   PreProc_Define                "%define\s\+\w\+\s\+.*"                                                                                                                
syn match   PreProc_Define                "%define\s\+\w\+\s\+.*\(\\\s*\n--.*\)\{0,}\(\\\s*\n--.*\)"                                                                             
                                                                     
"  Else {{{2
syn match   PreProc_Else_Name "else"  containedin=PreProc_Else   contained
syn match   PreProc_Else      "%else" 
                                                                     
"  End {{{2
syn match   PreProc_End_Name "end"  containedin=PreProc_End    contained
syn match   PreProc_End      "%end" 

"  Errors {{{2
syn match   PreProc_Error "%function\s\+\w\+\s\+(.*)"  

"  %% Gotcha {{{2
syn match   PreProc_Variable "%%\+" 

" Highlighting Settings {{{1
hi def link  PreProc_Macro                   Identifier 
hi def link  PreProc_Operator                Type       
hi def link  PreProc_String                  String     
hi def link  PreProc_Number                  Number     

hi def link  PreProc_Variable_Name           Identifier 
hi def link  PreProc_Variable                PreProc    

hi def link  PreProc_Exp_Format              Preproc    
hi def link  PreProc_Exp_Prefix              Preproc    

hi def link  PreProc_Function_Variable_Name  Identifier 
hi def link  PreProc_Function_Variable       PreProc    

hi def link  PreProc_Message_Keyword         Keyword    
hi def link  PreProc_Message_Prefix          PreProc    

hi def link  PreProc_Ifndef_Name             Identifier 
hi def link  PreProc_Ifndef_Keyword          Keyword    
hi def link  PreProc_Ifndef_Prefix           PreProc    

hi def link  PreProc_Ifdef_Name              Identifier 
hi def link  PreProc_Ifdef_Keyword           Keyword    
hi def link  PreProc_Ifdef_Prefix            PreProc    

hi def link  PreProc_If_Keyword              Keyword    
hi def link  PreProc_If_Prefix               PreProc    

hi def link  PreProc_Include_Constant        Constant   
hi def link  PreProc_Include_Keyword         Keyword    
hi def link  PreProc_Include_Prefix          PreProc    

hi def link  PreProc_Function_Name           Identifier 
hi def link  PreProc_Function_Keyword        Keyword    
hi def link  PreProc_Function_Prefix         PreProc    

hi def link  PreProc_While_Keyword           Keyword    
hi def link  PreProc_While_Prefix            PreProc    

hi def link  PreProc_Foreach_Name            Identifier 
hi def link  PreProc_Foreach_Keyword         Keyword    
hi def link  PreProc_Foreach_Prefix          PreProc    

hi def link  PreProc_For_Keyword             Keyword    
hi def link  PreProc_For_Prefix              PreProc    

hi def link  PreProc_Undef_Name              Identifier 
hi def link  PreProc_Undef_Keyword           Keyword    
hi def link  PreProc_Undef_Prefix            PreProc    

hi def link  PreProc_Define_Newline_Prefix   PreProc    
hi def link  PreProc_Define_Newline          PreProc    
hi def link  PreProc_Define_Constant         Constant   
hi def link  PreProc_Define_Name             Identifier 
hi def link  PreProc_Define_Keyword          Keyword    
hi def link  PreProc_Define_Prefix           PreProc    

hi def link  PreProc_Else_Name               Keyword    
hi def link  PreProc_Else                    PreProc    

hi def link  PreProc_End_Name                Keyword    
hi def link  PreProc_End                     PreProc    

hi def link  PreProc_Error                   Error      

hi def link  PreProc_Keyword                 Keyword    
hi def link  PreProc_Comment                 Comment    

