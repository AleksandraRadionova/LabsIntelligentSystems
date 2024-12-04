lexer grammar SpaceBattleLexer;

OBJECT       : 'object';
CREATE       : 'create';
START        : 'start';
END          : 'end';
FORWARD      : 'forward';
FIRE         : 'fire';
STOP_FIRE    : 'stop_fire';
REFUEL       : 'refuel';
ROTATE       : 'rotate';
SCORE        : 'score';
MAX_SCORE    : 'max_score';

INT          : [0-9]+;
ID           : [a-zA-Z_][a-zA-Z_0-9]*;

IF           : 'if';
SEMI         : ';';

EQ           : '==';
NOT_EQ       : '!=';
LESS_THAN    : '<';
GREATER_THAN : '>';
OPEN_PAR     : '(';
CLOSE_PAR    : ')';

AND          : 'and';
OR           : 'or';

PLUS         : '+';
MINUS        : '-';
MUL          : '*';
DIV          : '/';

WS           : [ \t\r\n]+ -> skip;