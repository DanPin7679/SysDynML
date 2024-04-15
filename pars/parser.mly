%{
open Ast
%}

%token <int> INT
%token <float> FLOAT
%token <string> STRING
%token <string> ID
%token TRUE
%token FALSE
%token NULL
%token LEFT_BRACE
%token RIGHT_BRACE
%token LEFT_BRACK
%token RIGHT_BRACK
%token COLON
%token COMMA
%token EQUAL
%token FLOW

%token SYS
%token END
%token SUBSYS
%token STATE
%token FLOWS

%token EOF 

%start <expr> prog

%%

prog:
	| e = sys; EOF { e }
	;
	
sys:
	| SYS; n =ID; d = STRING; LEFT_BRACK; ss = varnames; RIGHT_BRACK; LEFT_BRACK; cs = comps; RIGHT_BRACK { Sys(Info(n,d), ss, cs) }
	;
comps:
	| SUBSYS; obj = list(sub) { obj } 
    | STATE; LEFT_BRACK; obj = list(state); RIGHT_BRACK { obj } 
	| FLOWS; obj = list(flow) { obj } 
	 ;
sub:
	| n =ID; d = STRING; LEFT_BRACK; ss=comps; RIGHT_BRACK { Subsys(Info(n, d), ss)} 
	;
state:
	| n =ID; d = STRING { State(Info(n, d))} 
flow:
	| n =ID; d = STRING  { Flow(Info(n, d))}

varnames:
    | obj = list(ID)    { obj }
	;


	

