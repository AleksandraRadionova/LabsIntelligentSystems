parser grammar SpaceBattleParser;

options { tokenVocab=SpaceBattleLexer; }

commands     : command+ ;

command      : createObject
             | startGame
             | endGame
             | moveForward
             | turnCommand
             | fireCommand
             | stopFireCommand
             | refuelCommand
             | scoreCommand
             | logicalCommand
             | ifCommand
             ;

createObject : CREATE OBJECT ID SEMI ;

startGame    : START SEMI ;

endGame      : END SEMI ;

moveForward  : ID FORWARD INT SEMI ;

turnCommand  : ID ROTATE INT SEMI ;

fireCommand  : ID FIRE ID SEMI ;

stopFireCommand : ID STOP_FIRE SEMI ;

refuelCommand: ID REFUEL SEMI ;

scoreCommand : SCORE (ID | INT) SEMI
             | MAX_SCORE INT SEMI ;

ifCommand : IF OPEN_PAR logicalExpression CLOSE_PAR command ;

commandBlock : command
             | OPEN_PAR commands CLOSE_PAR ;

expression      : logicalExpression ;

logicalExpression
    : relationalExpression ((AND | OR) relationalExpression)* ;

relationalExpression
                : arithmeticExpression ((LESS_THAN | GREATER_THAN | EQ | NOT_EQ) arithmeticExpression)?            
                ;

arithmeticExpression
                : term ((PLUS | MINUS) term)* ;

term            : factor ((MUL | DIV) factor)* ;

factor          : INT
                | ID
                | OPEN_PAR expression CLOSE_PAR;

logicalCommand : logicalExpression (AND command)* ;
