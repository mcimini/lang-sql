
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHERE
    | VAR
    | UNION
    | TYPEOFOUT
    | TYPEOFEXP
    | TEST
    | SUBTYPERIGHT
    | SUBTYPELEFT
    | STEPTARGET
    | STEPSOURCE
    | STAR
    | SKELETON
    | SEMICOLON
    | SELECT
    | RULE
    | RSQUARE
    | RPAREN
    | ROWSTAR
    | ROWS
    | RNAME
    | PREMS
    | PREM
    | POSITION
    | PNAME
    | OR
    | OPNAME
    | NTH
    | NOT
    | LSTEPTARGET
    | LSTEPSOURCE
    | LSTEPLABEL
    | LSQUARE
    | LPAREN
    | LAST
    | IS
    | INTO
    | INTERSECT
    | INT of (
# 7 "parser.mly"
       (int)
# 48 "parser.ml"
  )
    | INSERT
    | ID of (
# 5 "parser.mly"
       (string)
# 54 "parser.ml"
  )
    | HAVING
    | GROUP
    | GREATER
    | GRAMMARINFO
    | GRAMMAR
    | GETVARS
    | GETSKELETON
    | GETOPNAME
    | GETBOUNDVAR
    | GETBOUNDTERM
    | GETARGS
    | FROM
    | EXCEPT
    | EQUAL
    | EOF
    | EMPTY
    | DISTINCT
    | DISJOINT
    | DERIVED
    | DEFINE
    | DECLARATIONP
    | COUNT
    | CONTAINS
    | CONSTRUCTED
    | CONSTANT
    | CONCLS
    | CONCL
    | COMMA
    | CNAME
    | CAT of (
# 6 "parser.mly"
       (string)
# 88 "parser.ml"
  )
    | BY
    | BOUND
    | AS
    | AND
    | ALL
    | ADDPRIMEAT
    | ADDPRIME
    | ADDINDEX
  
end

include MenhirBasics

let _eRR =
  MenhirBasics.Error

type _menhir_env = {
  _menhir_lexer: Lexing.lexbuf -> token;
  _menhir_lexbuf: Lexing.lexbuf;
  _menhir_token: token;
  mutable _menhir_error: bool
}

and _menhir_state = 
  | MenhirState231
  | MenhirState229
  | MenhirState224
  | MenhirState219
  | MenhirState218
  | MenhirState217
  | MenhirState216
  | MenhirState215
  | MenhirState212
  | MenhirState211
  | MenhirState208
  | MenhirState206
  | MenhirState204
  | MenhirState201
  | MenhirState200
  | MenhirState197
  | MenhirState180
  | MenhirState174
  | MenhirState172
  | MenhirState164
  | MenhirState162
  | MenhirState149
  | MenhirState147
  | MenhirState144
  | MenhirState143
  | MenhirState141
  | MenhirState138
  | MenhirState137
  | MenhirState134
  | MenhirState133
  | MenhirState132
  | MenhirState131
  | MenhirState130
  | MenhirState129
  | MenhirState128
  | MenhirState127
  | MenhirState126
  | MenhirState125
  | MenhirState120
  | MenhirState115
  | MenhirState113
  | MenhirState106
  | MenhirState102
  | MenhirState96
  | MenhirState93
  | MenhirState86
  | MenhirState68
  | MenhirState62
  | MenhirState60
  | MenhirState57
  | MenhirState55
  | MenhirState46
  | MenhirState44
  | MenhirState37
  | MenhirState35
  | MenhirState33
  | MenhirState31
  | MenhirState29
  | MenhirState27
  | MenhirState23
  | MenhirState21
  | MenhirState17
  | MenhirState4
  | MenhirState1
  | MenhirState0

# 1 "parser.mly"
  
  open Query

# 184 "parser.ml"

let rec _menhir_goto_option_ALL_ : _menhir_env -> 'ttv_tail -> 'tv_option_ALL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv889) * 'tv_option_ALL_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LPAREN ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | NOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180) : 'freshtv890)

and _menhir_goto_separated_nonempty_list_COMMA_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv883 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 267 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv881 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 275 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "parser.mly"
       (string)
# 282 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 288 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv882)) : 'freshtv884)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv887) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv885) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 303 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv886)) : 'freshtv888)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_group_ : _menhir_env -> 'ttv_tail -> 'tv_option_group_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv879 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_group_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv877 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    let ((groupOpt : 'tv_option_group_) : 'tv_option_group_) = _v in
    ((let (((((_menhir_stack, _menhir_s), (distinctOpt : 'tv_option_DISTINCT_)), _, (columns : 'tv_eStar)), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_query__)), (whereOpt : 'tv_option_where_)) = _menhir_stack in
    let _4 = () in
    let _1 = () in
    let _v : 'tv_query = let fromQueries =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 325 "parser.ml"
      
    in
    
# 129 "parser.mly"
   ( SELECT(distinctOpt, columns, fromQueries, whereOpt, groupOpt) )
# 331 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv878)) : 'freshtv880)

and _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ID__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv875)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | HAVING ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv869) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv863) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv861) = Obj.magic _menhir_stack in
            ((let x = () in
            let _v : 'tv_option_ALL_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 359 "parser.ml"
             in
            _menhir_goto_option_ALL_ _menhir_env _menhir_stack _v) : 'freshtv862)) : 'freshtv864)
        | ADDINDEX | ADDPRIME | ADDPRIMEAT | CAT _ | CONCL | COUNT | GETARGS | GETBOUNDTERM | GETBOUNDVAR | GETOPNAME | GETSKELETON | GETVARS | ID _ | INT _ | LAST | LPAREN | LSQUARE | LSTEPLABEL | LSTEPSOURCE | LSTEPTARGET | NOT | NTH | POSITION | PREM | STEPSOURCE | STEPTARGET | SUBTYPELEFT | SUBTYPERIGHT | TYPEOFEXP | TYPEOFOUT ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv865) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_ALL_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 368 "parser.ml"
             in
            _menhir_goto_option_ALL_ _menhir_env _menhir_stack _v) : 'freshtv866)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv867) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv868)) : 'freshtv870)
    | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv871) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_having_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 383 "parser.ml"
         in
        _menhir_goto_option_having_ _menhir_env _menhir_stack _v) : 'freshtv872)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv873)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv874)) : 'freshtv876)

and _menhir_run173 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 397 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv855 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 409 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState174 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState174) : 'freshtv856)
    | AND | CAT _ | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | HAVING | INSERT | INTERSECT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv857 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 425 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "parser.mly"
       (string)
# 430 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 435 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv858)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv859 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 445 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv860)

and _menhir_goto_separated_nonempty_list_COMMA_column_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_column_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv849) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv847) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_column_) : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_column__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 465 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_column__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv848)) : 'freshtv850)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv853 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv851 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_column_) : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_column)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_column_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 482 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_column_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv852)) : 'freshtv854)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_having_ : _menhir_env -> 'ttv_tail -> 'tv_option_having_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv845)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_having_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv843)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    let ((havingOpt : 'tv_option_having_) : 'tv_option_having_) = _v in
    ((let (_menhir_stack, _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_ID__)) = _menhir_stack in
    let _2 = () in
    let _1 = () in
    let _v : 'tv_group = let ids =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 504 "parser.ml"
      
    in
    
# 149 "parser.mly"
 ( (ids, havingOpt) )
# 510 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv841) = _menhir_stack in
    let (_v : 'tv_group) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv839) = Obj.magic _menhir_stack in
    let (_v : 'tv_group) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv837) = Obj.magic _menhir_stack in
    let ((x : 'tv_group) : 'tv_group) = _v in
    ((let _v : 'tv_option_group_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 524 "parser.ml"
     in
    _menhir_goto_option_group_ _menhir_env _menhir_stack _v) : 'freshtv838)) : 'freshtv840)) : 'freshtv842)) : 'freshtv844)) : 'freshtv846)

and _menhir_run147 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState147 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LPAREN ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | NOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState147
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState147

and _menhir_run149 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState149 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | LPAREN ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | NOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState149
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState149

and _menhir_goto_option_where_ : _menhir_env -> 'ttv_tail -> 'tv_option_where_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv835 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GROUP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv829) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv825) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run173 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
            | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | HAVING | INSERT | INTERSECT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv823) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState172 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 697 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv824)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv826)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv827) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv828)) : 'freshtv830)
    | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | INSERT | INTERSECT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv831) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_group_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 716 "parser.ml"
         in
        _menhir_goto_option_group_ _menhir_env _menhir_stack _v) : 'freshtv832)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv833 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv834)) : 'freshtv836)

and _menhir_run142 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv819 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LPAREN ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | NOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState143
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv820)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv821 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv822)

and _menhir_run144 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState144 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LPAREN ->
        _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NOT ->
        _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState144
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState144

and _menhir_goto_option___anonymous_1_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_1_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv817 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
    let (_v : 'tv_option___anonymous_1_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv815 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
    let ((newnameOpt : 'tv_option___anonymous_1_) : 'tv_option___anonymous_1_) = _v in
    ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
    let _v : 'tv_column = 
# 175 "parser.mly"
    ( (e1, newnameOpt) )
# 894 "parser.ml"
     in
    _menhir_goto_column _menhir_env _menhir_stack _menhir_s _v) : 'freshtv816)) : 'freshtv818)

and _menhir_goto_option___anonymous_0_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_0_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv813) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv809) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parser.mly"
       (string)
# 912 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv807) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        let ((id0 : (
# 5 "parser.mly"
       (string)
# 920 "parser.ml"
        )) : (
# 5 "parser.mly"
       (string)
# 924 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, (rowOpt0 : 'tv_option___anonymous_0_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_option___anonymous_1_ = let x =
          let id = id0 in
          let rowOpt = rowOpt0 in
          let _1 = _10 in
          
# 174 "parser.mly"
                                                                              (id, rowOpt)
# 935 "parser.ml"
          
        in
        
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 941 "parser.ml"
         in
        _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv808)) : 'freshtv810)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv811) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv812)) : 'freshtv814)

and _menhir_goto_column : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_column -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv805 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv799 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState197 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState197
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState197) : 'freshtv800)
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv801 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_column)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_column_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 1032 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_column_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv802)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv803 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv804)) : 'freshtv806)

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv753 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv749 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv747 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (f : 'tv_formula)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 273 "parser.mly"
   ( f )
# 1069 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv748)) : 'freshtv750)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv751 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv752)) : 'freshtv754)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv759 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv755 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f1 : 'tv_formula)), _, (f2 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 269 "parser.mly"
 ( OR(f1,f2) )
# 1097 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv756)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv757 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv758)) : 'freshtv760)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv765 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv761 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f1 : 'tv_formula)), _, (f2 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 267 "parser.mly"
 ( AND(f1,f2) )
# 1125 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv762)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv763 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv764)) : 'freshtv766)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv773 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv769 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv767 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (f : 'tv_formula)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 271 "parser.mly"
 ( NOT f)
# 1158 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv768)) : 'freshtv770)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv771 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv772)) : 'freshtv774)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv785) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv781) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (f : 'tv_formula)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_where = 
# 145 "parser.mly"
 ( f )
# 1186 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv779) = _menhir_stack in
            let (_v : 'tv_where) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv777) = Obj.magic _menhir_stack in
            let (_v : 'tv_where) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv775) = Obj.magic _menhir_stack in
            let ((x : 'tv_where) : 'tv_where) = _v in
            ((let _v : 'tv_option_where_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1200 "parser.ml"
             in
            _menhir_goto_option_where_ _menhir_env _menhir_stack _v) : 'freshtv776)) : 'freshtv778)) : 'freshtv780)) : 'freshtv782)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv783) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv784)) : 'freshtv786)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv797) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run149 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run147 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv793) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (allOpt : 'tv_option_ALL_)), _, (f : 'tv_formula)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_having = 
# 153 "parser.mly"
 ( (f, allOpt) )
# 1228 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv791) = _menhir_stack in
            let (_v : 'tv_having) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv789) = Obj.magic _menhir_stack in
            let (_v : 'tv_having) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv787) = Obj.magic _menhir_stack in
            let ((x : 'tv_having) : 'tv_having) = _v in
            ((let _v : 'tv_option_having_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1242 "parser.ml"
             in
            _menhir_goto_option_having_ _menhir_env _menhir_stack _v) : 'freshtv788)) : 'freshtv790)) : 'freshtv792)) : 'freshtv794)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv795) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv796)) : 'freshtv798)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_e_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_e_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv741) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv739) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_e_) : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_e__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 1270 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv740)) : 'freshtv742)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv745 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv743 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_e_) : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_e_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 1287 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_e_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv744)) : 'freshtv746)
    | _ ->
        _menhir_fail ()

and _menhir_run204 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_test -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState204 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | LPAREN ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | NOT ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState204
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState204

and _menhir_run206 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_test -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState206 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | LPAREN ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | NOT ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState206
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState206

and _menhir_goto_loption_separated_nonempty_list_COMMA_query__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_query__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv737 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv731) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LPAREN ->
            _menhir_run144 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | NOT ->
            _menhir_run142 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv732)
    | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv733) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_where_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 1453 "parser.ml"
         in
        _menhir_goto_option_where_ _menhir_env _menhir_stack _v) : 'freshtv734)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv735 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv736)) : 'freshtv738)

and _menhir_goto_loption_separated_nonempty_list_COMMA_column__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_column__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv729) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_column__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv727) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_COMMA_column__) : 'tv_loption_separated_nonempty_list_COMMA_column__) = _v in
    ((let _v : 'tv_eStar = let columns =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 1479 "parser.ml"
      
    in
    
# 171 "parser.mly"
 ( COLUMNS columns )
# 1485 "parser.ml"
     in
    _menhir_goto_eStar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv728)) : 'freshtv730)

and _menhir_goto_eStar : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_eStar -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv725 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv721 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState102 _v
        | CONCLS ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | DECLARATIONP ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | DEFINE ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | GRAMMAR ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | GRAMMARINFO ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | INSERT ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | LPAREN ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | PREMS ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | ROWS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | RULE ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | SELECT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | TEST ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState102
        | AND | COMMA | CONTAINS | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GROUP | INTERSECT | IS | OR | RPAREN | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv719) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState102 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_query__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 1536 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_query__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv720)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState102) : 'freshtv722)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv723 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv724)) : 'freshtv726)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_e__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv717 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv713 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv711 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_e__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_e = let l =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 1573 "parser.ml"
          
        in
        
# 191 "parser.mly"
   ( LIST l )
# 1579 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv712)) : 'freshtv714)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv715 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv716)) : 'freshtv718)

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_e -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv477 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv473 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState57 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState57
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState57) : 'freshtv474)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv475 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv476)) : 'freshtv478)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv485 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv481 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv479 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (tag : 'tv_tag)), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 209 "parser.mly"
 ( ADDINDEXTAG(tag,e1,e2) )
# 1695 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv480)) : 'freshtv482)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv483 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv484)) : 'freshtv486)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv491 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv487 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState62 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState62
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState62) : 'freshtv488)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv489 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv490)) : 'freshtv492)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv499 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv495 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv493 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 207 "parser.mly"
 ( ADDINDEX(e1,e2) )
# 1804 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv497 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv498)) : 'freshtv500)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv507 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv503 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv501 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 211 "parser.mly"
 ( ADDPRIME e1 )
# 1833 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv505 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv513 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv509 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState68 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState68
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState68) : 'freshtv510)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv511 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv512)) : 'freshtv514)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv521 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv517 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv515 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 213 "parser.mly"
 ( ADDPRIMEAT(e1,e2) )
# 1942 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv516)) : 'freshtv518)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv519 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv520)) : 'freshtv522)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv529 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv525 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv523 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 199 "parser.mly"
 ( GETARGS e1 )
# 1971 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv524)) : 'freshtv526)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv527 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv528)) : 'freshtv530)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv533 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv531 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 201 "parser.mly"
 ( GETBOUNDTERM e1 )
# 2000 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv532)) : 'freshtv534)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv535 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv536)) : 'freshtv538)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv545 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv541 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv539 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 203 "parser.mly"
 ( GETBOUNDVAR e1 )
# 2029 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv540)) : 'freshtv542)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv543 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv544)) : 'freshtv546)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv553 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv549 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv547 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 197 "parser.mly"
 ( GETOPNAME e1 )
# 2058 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv548)) : 'freshtv550)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv551 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv552)) : 'freshtv554)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv569 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv565 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv561 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                let (_v : (
# 6 "parser.mly"
       (string)
# 2086 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv557 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2097 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv555 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2104 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 2109 "parser.ml"
                    ))) = _menhir_stack in
                    let _6 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_e = 
# 215 "parser.mly"
 ( GETSKELETON(e1,cname) )
# 2118 "parser.ml"
                     in
                    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv556)) : 'freshtv558)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv559 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2128 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv560)) : 'freshtv562)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv563 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv564)) : 'freshtv566)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv567 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv568)) : 'freshtv570)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv577 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv573 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv571 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 205 "parser.mly"
 ( GETVARS e1 )
# 2165 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv572)) : 'freshtv574)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv575 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv576)) : 'freshtv578)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv583 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv579 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv580)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv581 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv582)) : 'freshtv584)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv591 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv587 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv585 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 195 "parser.mly"
 ( LAST(e1, e2) )
# 2274 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv586)) : 'freshtv588)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv589 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv590)) : 'freshtv592)
    | MenhirState93 | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv599 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv593 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState93 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState93
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState93) : 'freshtv594)
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv595 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_e)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_e_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 2363 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_e_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv597 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv605 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv601 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState96
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv602)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv603 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv604)) : 'freshtv606)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv613 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv609 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv607 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 193 "parser.mly"
 ( NTH(e1, e2) )
# 2472 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv608)) : 'freshtv610)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv611 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv612)) : 'freshtv614)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv617 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 2487 "parser.ml"
        ))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv615 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 2493 "parser.ml"
        ))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (((_menhir_stack, _menhir_s), (id : (
# 5 "parser.mly"
       (string)
# 2498 "parser.ml"
        ))), _, (e1 : 'tv_e)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_query = 
# 125 "parser.mly"
    (SELECT(None, COLUMNS([(e1, Some(id, None))]), [TABLE(CAT "Type")], None, None))
# 2505 "parser.ml"
         in
        _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv616)) : 'freshtv618)
    | MenhirState180 | MenhirState141 | MenhirState143 | MenhirState144 | MenhirState147 | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv619 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState164 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState164
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState164) : 'freshtv620)
        | GREATER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState162 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState162
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState162) : 'freshtv622)
        | IS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv661 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOUND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv625 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv623 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 251 "parser.mly"
 ( ISBOUND e1)
# 2664 "parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv624)) : 'freshtv626)
            | CAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv637 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                let (_v : (
# 6 "parser.mly"
       (string)
# 2673 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | SKELETON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv629 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2684 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv627 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2691 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 2696 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_formula = 
# 265 "parser.mly"
 ( ISSKELETON(e1,cname))
# 2703 "parser.ml"
                     in
                    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv628)) : 'freshtv630)
                | VAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv633 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2711 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv631 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2718 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 2723 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_formula = 
# 261 "parser.mly"
 ( ISCATVAR(e1,cname) )
# 2730 "parser.ml"
                     in
                    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv632)) : 'freshtv634)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv635 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2740 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv636)) : 'freshtv638)
            | CONSTANT ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv641 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv639 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 253 "parser.mly"
 ( ISCONSTANT e1)
# 2756 "parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv640)) : 'freshtv642)
            | CONSTRUCTED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv645 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv643 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 263 "parser.mly"
 ( ISCONSTRUCTED e1)
# 2771 "parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)) : 'freshtv646)
            | DERIVED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv657 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BY ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv653 * _menhir_state * 'tv_e))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CAT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv649 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        let (_v : (
# 6 "parser.mly"
       (string)
# 2792 "parser.ml"
                        )) = _v in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv647 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        let ((cname : (
# 6 "parser.mly"
       (string)
# 2800 "parser.ml"
                        )) : (
# 6 "parser.mly"
       (string)
# 2804 "parser.ml"
                        )) = _v in
                        ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                        let _4 = () in
                        let _3 = () in
                        let _2 = () in
                        let _v : 'tv_formula = 
# 259 "parser.mly"
 ( ISDERIVEDBY(e1,cname))
# 2813 "parser.ml"
                         in
                        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv648)) : 'freshtv650)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv651 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv652)) : 'freshtv654)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv655 * _menhir_state * 'tv_e))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv656)) : 'freshtv658)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv659 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv660)) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv663 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv664)) : 'freshtv666)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv669 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv667 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 257 "parser.mly"
 ( GREATER(e1,e2) )
# 2854 "parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv668)) : 'freshtv670)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv673 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv671 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 255 "parser.mly"
 ( EQUAL(e1,e2) )
# 2867 "parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv672)) : 'freshtv674)
    | MenhirState197 | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv709 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv703) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ROWS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv693) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv691) = Obj.magic _menhir_stack in
                ((let _10 = () in
                let _v : 'tv_option___anonymous_2_ = let x =
                  let _1 = _10 in
                  
# 176 "parser.mly"
                                                      ( false )
# 2894 "parser.ml"
                  
                in
                
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 2900 "parser.ml"
                 in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv689) = _menhir_stack in
                let (_v : 'tv_option___anonymous_2_) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv687) * 'tv_option___anonymous_2_) = Obj.magic _menhir_stack in
                ((assert (not _menhir_env._menhir_error);
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv683) * 'tv_option___anonymous_2_) = Obj.magic _menhir_stack in
                    let (_v : (
# 5 "parser.mly"
       (string)
# 2917 "parser.ml"
                    )) = _v in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv681) * 'tv_option___anonymous_2_) = Obj.magic _menhir_stack in
                    let ((id0 : (
# 5 "parser.mly"
       (string)
# 2925 "parser.ml"
                    )) : (
# 5 "parser.mly"
       (string)
# 2929 "parser.ml"
                    )) = _v in
                    ((let (_menhir_stack, (rowOpt0 : 'tv_option___anonymous_2_)) = _menhir_stack in
                    let _10 = () in
                    let _v : 'tv_option___anonymous_3_ = let x =
                      let id = id0 in
                      let rowOpt = rowOpt0 in
                      let _1 = _10 in
                      
# 176 "parser.mly"
                                                                         (id, rowOpt)
# 2940 "parser.ml"
                      
                    in
                    
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 2946 "parser.ml"
                     in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv679) = _menhir_stack in
                    let (_v : 'tv_option___anonymous_3_) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv677 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
                    let (_v : 'tv_option___anonymous_3_) = _v in
                    ((let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : 'freshtv675 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
                    let ((newnameOpt : 'tv_option___anonymous_3_) : 'tv_option___anonymous_3_) = _v in
                    ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                    let _v : 'tv_column = 
# 177 "parser.mly"
 ( (e1, newnameOpt) )
# 2961 "parser.ml"
                     in
                    _menhir_goto_column _menhir_env _menhir_stack _menhir_s _v) : 'freshtv676)) : 'freshtv678)) : 'freshtv680)) : 'freshtv682)) : 'freshtv684)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ('freshtv685) * 'tv_option___anonymous_2_) = Obj.magic _menhir_stack in
                    (raise _eRR : 'freshtv686)) : 'freshtv688)) : 'freshtv690)) : 'freshtv692)) : 'freshtv694)
            | ROWSTAR ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv697) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv695) = Obj.magic _menhir_stack in
                ((let _10 = () in
                let _v : 'tv_option___anonymous_0_ = let x =
                  let _1 = _10 in
                  
# 174 "parser.mly"
                                                            ( true )
# 2982 "parser.ml"
                  
                in
                
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 2988 "parser.ml"
                 in
                _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv696)) : 'freshtv698)
            | ID _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv699) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option___anonymous_0_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 2997 "parser.ml"
                 in
                _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv700)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv701) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv702)) : 'freshtv704)
        | COMMA | FROM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv705) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option___anonymous_1_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 3012 "parser.ml"
             in
            _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv706)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv707 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv708)) : 'freshtv710)
    | _ ->
        _menhir_fail ()

and _menhir_goto_tag : _menhir_env -> 'ttv_tail -> 'tv_tag -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv471 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv467 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv463 * _menhir_state)) * 'tv_tag)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState55 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState55
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState55) : 'freshtv464)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv465 * _menhir_state)) * 'tv_tag)) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv466)) : 'freshtv468)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv469 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv470)) : 'freshtv472)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_query_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_query_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv453 * _menhir_state * 'tv_query) * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv451 * _menhir_state * 'tv_query) * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_query)), _, (xs : 'tv_list_query_)) = _menhir_stack in
        let _v : 'tv_list_query_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 3138 "parser.ml"
         in
        _menhir_goto_list_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv452)) : 'freshtv454)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv461 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv457 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv455 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (queries : 'tv_list_query_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 93 "parser.mly"
      ((Query.query) list)
# 3157 "parser.ml"
            ) = 
# 105 "parser.mly"
    ( queries )
# 3161 "parser.ml"
             in
            _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v) : 'freshtv456)) : 'freshtv458)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv459 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv460)) : 'freshtv462)
    | _ ->
        _menhir_fail ()

and _menhir_goto_test : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_test -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv423 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv419 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv417 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_test)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_test = 
# 294 "parser.mly"
   ( t )
# 3200 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv418)) : 'freshtv420)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv421 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv422)) : 'freshtv424)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv429 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv425 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_test)), _, (t2 : 'tv_test)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_test = 
# 290 "parser.mly"
 ( TOR(t1,t2) )
# 3228 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv426)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv427 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv428)) : 'freshtv430)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv435 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv431 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (t1 : 'tv_test)), _, (t2 : 'tv_test)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_test = 
# 288 "parser.mly"
 ( TAND(t1,t2) )
# 3256 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv432)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv433 * _menhir_state * 'tv_test)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv437 * _menhir_state)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_test)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_test = 
# 292 "parser.mly"
    ( TNOT(t) )
# 3289 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv438)) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state)) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv449 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run206 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run204 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | IS | LPAREN | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv445 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (t : 'tv_test)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_query = 
# 141 "parser.mly"
    ( TEST(t) )
# 3317 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv447 * _menhir_state) * _menhir_state * 'tv_test) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv448)) : 'freshtv450)
    | _ ->
        _menhir_fail ()

and _menhir_run209 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | EMPTY ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv413 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv411 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_test = 
# 286 "parser.mly"
    ( EMPTY(q1) )
# 3348 "parser.ml"
         in
        _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv412)) : 'freshtv414)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv415 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv416)

and _menhir_run211 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState211 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState211
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState211

and _menhir_run213 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ROWS ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv407 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv405 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _) = _menhir_stack in
        let _3 = () in
        let _2 = () in
        let _v : 'tv_test = 
# 284 "parser.mly"
    ( DISTINCTROWS(q1) )
# 3414 "parser.ml"
         in
        _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv409 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)

and _menhir_run215 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState215 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState215
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState215

and _menhir_run217 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState217 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState217
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState217

and _menhir_goto_separated_nonempty_list_COMMA_query_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_query_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv399) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv397) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_query_) : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_query__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 3514 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_query__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv403 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv401 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_query_) : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_query)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_query_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 3531 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv402)) : 'freshtv404)
    | _ ->
        _menhir_fail ()

and _menhir_run135 : _menhir_env -> ('ttv_tail * _menhir_state) * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv395 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
    let (_ : _menhir_state) = _menhir_s in
    ((let ((_menhir_stack, _menhir_s), _, (q : 'tv_query)) = _menhir_stack in
    let _3 = () in
    let _1 = () in
    let _v : 'tv_query = 
# 119 "parser.mly"
 ( q )
# 3549 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv396)

and _menhir_run126 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState126 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState126
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState126

and _menhir_run128 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState128 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState128
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState128

and _menhir_run130 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState130 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState130
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState130

and _menhir_run199 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv391 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState200 _v
        | CONCLS ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | DECLARATIONP ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | DEFINE ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | GRAMMAR ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | GRAMMARINFO ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | INSERT ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | LPAREN ->
            _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | NOT ->
            _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | PREMS ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | ROWS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | RULE ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | SELECT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | TEST ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState200
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState200) : 'freshtv392)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv393 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)

and _menhir_run201 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState201 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | LPAREN ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | NOT ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState201
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState201

and _menhir_goto_option_DISTINCT_ : _menhir_env -> 'ttv_tail -> 'tv_option_DISTINCT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv389 * _menhir_state) * 'tv_option_DISTINCT_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState4 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv385) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState4 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv383) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : 'tv_eStar = 
# 169 "parser.mly"
 ( STAR )
# 3819 "parser.ml"
         in
        _menhir_goto_eStar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv384)) : 'freshtv386)
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState4
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv387) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState4 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_column__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 3841 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_column__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv388)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState4) : 'freshtv390)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv381) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 223 "parser.mly"
   ( LAST(ID "args", INT 0) )
# 3859 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv382)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv379) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 221 "parser.mly"
   ( LAST(ID "args", INT 1) )
# 3873 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv380)

and _menhir_run7 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv377) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 237 "parser.mly"
   ( NTH(ID "args", INT 1) )
# 3887 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv378)

and _menhir_run8 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv375) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 235 "parser.mly"
   ( NTH(ID "args", INT 0) )
# 3901 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv373) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 231 "parser.mly"
   ( NTH(ID "args", INT 1) )
# 3915 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv374)

and _menhir_run10 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv371) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 225 "parser.mly"
   ( NTH(ID "args", INT 0) )
# 3929 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv372)

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv369) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 189 "parser.mly"
   ( PREM )
# 3943 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv370)

and _menhir_run13 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv365 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv361 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv359 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 219 "parser.mly"
   ( POSITION )
# 3972 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv360)) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv363 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv367 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv368)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv355 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv356)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv357 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv353) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 233 "parser.mly"
   ( NTH(ID "args", INT 2) )
# 4080 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)

and _menhir_run19 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv351) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 227 "parser.mly"
   ( NTH(ID "args", INT 0) )
# 4094 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv352)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv349) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 229 "parser.mly"
   ( NTH(ID "args", INT 1) )
# 4108 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv350)

and _menhir_run21 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ADDPRIME ->
        _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ADDPRIMEAT ->
        _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | CAT _v ->
        _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | CONCL ->
        _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | COUNT ->
        _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETARGS ->
        _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETBOUNDTERM ->
        _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETBOUNDVAR ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETOPNAME ->
        _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETSKELETON ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | GETVARS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | ID _v ->
        _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | INT _v ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
    | LAST ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LSQUARE ->
        _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LSTEPLABEL ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LSTEPSOURCE ->
        _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | LSTEPTARGET ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | NTH ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | POSITION ->
        _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | PREM ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | STEPSOURCE ->
        _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | STEPTARGET ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SUBTYPELEFT ->
        _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | SUBTYPERIGHT ->
        _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TYPEOFEXP ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | TYPEOFOUT ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv347) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState21 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_e__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 4181 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv348)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv343 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv344)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv345 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv346)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (int)
# 4272 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv341) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 7 "parser.mly"
       (int)
# 4282 "parser.ml"
    )) : (
# 7 "parser.mly"
       (int)
# 4286 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 185 "parser.mly"
   ( INT n )
# 4291 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv342)

and _menhir_run25 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 4298 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv339) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 5 "parser.mly"
       (string)
# 4308 "parser.ml"
    )) : (
# 5 "parser.mly"
       (string)
# 4312 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 181 "parser.mly"
 ( ID id )
# 4317 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv340)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv336)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv337 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv338)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv331 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState29 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState29
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState29) : 'freshtv332)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv333 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)

and _menhir_run30 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv327 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState31 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState31
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState31) : 'freshtv328)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv329 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv330)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv323 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState33 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState33
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState33) : 'freshtv324)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv325 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv326)

and _menhir_run34 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState35 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState35
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState35) : 'freshtv320)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv321 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv322)

and _menhir_run36 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv315 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState37 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState37
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState37) : 'freshtv316)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv318)

and _menhir_run38 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv311 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv307 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv305 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 217 "parser.mly"
   ( COUNT )
# 4826 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)) : 'freshtv308)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv309 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv313 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv314)

and _menhir_run41 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 187 "parser.mly"
   ( CONCL )
# 4854 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)

and _menhir_run42 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 4861 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv301) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((cname : (
# 6 "parser.mly"
       (string)
# 4871 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 4875 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 183 "parser.mly"
   ( NAME cname )
# 4880 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv302)

and _menhir_run43 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv297 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState44 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState44
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState44) : 'freshtv298)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv300)

and _menhir_run45 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv293 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState46 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState46
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState46) : 'freshtv294)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv295 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv296)

and _menhir_run47 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | ADDPRIME ->
            _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | ADDPRIMEAT ->
            _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | CAT _v ->
            _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | CONCL ->
            _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | COUNT ->
            _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETARGS ->
            _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETBOUNDTERM ->
            _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETBOUNDVAR ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETOPNAME ->
            _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETSKELETON ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | GETVARS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | ID _v ->
            _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | INT _v ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState60 _v
        | LAST ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSQUARE ->
            _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSTEPLABEL ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSTEPSOURCE ->
            _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | LSTEPTARGET ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | NTH ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | POSITION ->
            _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | PREM ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | STEPSOURCE ->
            _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | STEPTARGET ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | SUBTYPELEFT ->
            _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | SUBTYPERIGHT ->
            _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | TYPEOFEXP ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | TYPEOFOUT ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState60
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState60) : 'freshtv270)
    | LSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv273) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv271) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 243 "parser.mly"
 ( CNAME )
# 5132 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv272)) : 'freshtv274)
        | OPNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv277) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv275) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 241 "parser.mly"
 ( OPNAME )
# 5145 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv276)) : 'freshtv278)
        | PNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 247 "parser.mly"
 ( PNAME )
# 5158 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv280)) : 'freshtv282)
        | RNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv285) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv283) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 245 "parser.mly"
 ( RNAME )
# 5171 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv284)) : 'freshtv286)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv287 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv288)) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)

and _menhir_goto_query : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_query -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv215 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 5198 "parser.ml"
        ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState125
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv213 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 5214 "parser.ml"
            ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (name : (
# 6 "parser.mly"
       (string)
# 5219 "parser.ml"
            ))), _, (q : 'tv_query)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_query = 
# 137 "parser.mly"
    ( DEFINE(name,q) )
# 5226 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv214)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState125) : 'freshtv216)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv219 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState127
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv217 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 131 "parser.mly"
    ( UNION(q1,q2) )
# 5253 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv218)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127) : 'freshtv220)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv223 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState129
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv221 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 135 "parser.mly"
    ( INTERSECT(q1,q2) )
# 5280 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv222)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129) : 'freshtv224)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv227 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState131
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv225 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 133 "parser.mly"
    ( EXCEPT(q1,q2) )
# 5307 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState131) : 'freshtv228)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv229 * _menhir_state)) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState132 _v
        | CONCLS ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | DECLARATIONP ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | DEFINE ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GRAMMAR ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | GRAMMARINFO ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | INSERT ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | LPAREN ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | PREMS ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | ROWS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | RULE ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | SELECT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | TEST ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState132
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState132) : 'freshtv230)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv233 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState133
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv231 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (q1 : 'tv_query)), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_query = 
# 139 "parser.mly"
    ( INSERT(q1,q2) )
# 5377 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv232)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState133) : 'freshtv234)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv235 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | RPAREN ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState134
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState134) : 'freshtv236)
    | MenhirState138 | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv241 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv237 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState137 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState138 _v
            | CONCLS ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | DECLARATIONP ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | DEFINE ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | GRAMMAR ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | GRAMMARINFO ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | INSERT ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | LPAREN ->
                _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | PREMS ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | ROWS ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | RULE ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | SELECT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | TEST ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState138
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState138) : 'freshtv238)
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState137
        | AND | CAT _ | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv239 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_query)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_query_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 5459 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv240)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState137) : 'freshtv242)
    | MenhirState1 | MenhirState200 | MenhirState204 | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv243 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONTAINS ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | DISJOINT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | DISTINCT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | EQUAL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | IS ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState208
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState208) : 'freshtv244)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv247 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState212
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv245 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_test = 
# 278 "parser.mly"
    ( TEQUAL(q1,q2) )
# 5512 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState212) : 'freshtv248)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv251 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState216
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv249 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_test = 
# 282 "parser.mly"
    ( DISJOINT(q1,q2) )
# 5539 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv250)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState216) : 'freshtv252)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv255 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState218
        | AND | CAT _ | COMMA | CONCLS | CONTAINS | DECLARATIONP | DEFINE | DISJOINT | DISTINCT | EOF | EQUAL | GRAMMAR | GRAMMARINFO | GROUP | INSERT | IS | LPAREN | OR | PREMS | ROWS | RPAREN | RULE | SELECT | TEST | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv253 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_test = 
# 280 "parser.mly"
    ( CONTAINS(q1,q2) )
# 5566 "parser.ml"
             in
            _menhir_goto_test _menhir_env _menhir_stack _menhir_s _v) : 'freshtv254)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState218) : 'freshtv256)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv257 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CONTAINS ->
            _menhir_run217 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | DISJOINT ->
            _menhir_run215 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | DISTINCT ->
            _menhir_run213 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | EQUAL ->
            _menhir_run211 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | IS ->
            _menhir_run209 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | RPAREN ->
            _menhir_run135 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState219
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState219) : 'freshtv258)
    | MenhirState224 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState224 _v
        | CONCLS ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | DECLARATIONP ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | DEFINE ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | GRAMMAR ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | GRAMMARINFO ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | INSERT ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | LPAREN ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | PREMS ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | ROWS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | RULE ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | SELECT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | TEST ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState224
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv259) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState224 in
            ((let _v : 'tv_list_query_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 5646 "parser.ml"
             in
            _menhir_goto_list_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv260)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState224) : 'freshtv262)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv265 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState231 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv263 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (q : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 96 "parser.mly"
      (Query.query)
# 5671 "parser.ml"
            ) = 
# 113 "parser.mly"
   ( q )
# 5675 "parser.ml"
             in
            _menhir_goto_mystring _menhir_env _menhir_stack _menhir_s _v) : 'freshtv264)) : 'freshtv266)
        | EXCEPT ->
            _menhir_run130 _menhir_env (Obj.magic _menhir_stack) MenhirState231
        | INTERSECT ->
            _menhir_run128 _menhir_env (Obj.magic _menhir_stack) MenhirState231
        | UNION ->
            _menhir_run126 _menhir_env (Obj.magic _menhir_stack) MenhirState231
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState231) : 'freshtv268)
    | _ ->
        _menhir_fail ()

and _menhir_goto_table : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_table -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_table) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv209) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((tbl : 'tv_table) : 'tv_table) = _v in
    ((let _v : 'tv_query = 
# 117 "parser.mly"
 ( TABLE tbl )
# 5704 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv210)) : 'freshtv212)

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 93 "parser.mly"
      ((Query.query) list)
# 5711 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv207) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 93 "parser.mly"
      ((Query.query) list)
# 5720 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv205) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 93 "parser.mly"
      ((Query.query) list)
# 5728 "parser.ml"
    )) : (
# 93 "parser.mly"
      ((Query.query) list)
# 5732 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv206)) : 'freshtv208)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState231 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv75 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState229 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv78)
    | MenhirState224 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv79 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState219 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv81 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState218 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState217 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv85 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState216 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv87 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState215 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv89 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState212 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv91 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState211 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv93 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState208 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv95 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState206 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv97 * _menhir_state * 'tv_test)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState204 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv99 * _menhir_state * 'tv_test)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState201 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv101 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState200 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv103 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState197 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv105 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv107) * 'tv_option_ALL_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv108)
    | MenhirState174 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 5827 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv111)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv112)
    | MenhirState164 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv113 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState162 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv115 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState149 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState147 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv119 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState144 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv121 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv125) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv126)
    | MenhirState138 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState137 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv129 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState134 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState133 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv133 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState132 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv135 * _menhir_state)) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState131 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv137 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState130 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv141 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState128 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv145 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState126 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv147 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv148)
    | MenhirState125 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv149 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 5929 "parser.ml"
        ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv150)
    | MenhirState120 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv151 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 5938 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv152)
    | MenhirState115 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv153 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv154)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv155 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv156)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv157 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 5957 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv158)
    | MenhirState102 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv159 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv160)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv161 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv162)
    | MenhirState93 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv163 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv164)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv165 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv166)
    | MenhirState68 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv167 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv168)
    | MenhirState62 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv169 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv170)
    | MenhirState60 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv171 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv172)
    | MenhirState57 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv173 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv174)
    | MenhirState55 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv175 * _menhir_state)) * 'tv_tag))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv176)
    | MenhirState46 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv177 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv178)
    | MenhirState44 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv179 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv180)
    | MenhirState37 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv181 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv182)
    | MenhirState35 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv183 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv184)
    | MenhirState33 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv185 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv186)
    | MenhirState31 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv187 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv188)
    | MenhirState29 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv189 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv190)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv192)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv193 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv194)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv195 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv196)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv197 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv198)
    | MenhirState4 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv199 * _menhir_state) * 'tv_option_DISTINCT_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv200)
    | MenhirState1 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv202)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv203) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv204)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState1 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | LPAREN ->
        _menhir_run201 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | NOT ->
        _menhir_run199 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState1
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState1

and _menhir_run2 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DISTINCT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv67) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_DISTINCT_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 6131 "parser.ml"
         in
        _menhir_goto_option_DISTINCT_ _menhir_env _menhir_stack _v) : 'freshtv68)) : 'freshtv70)
    | ADDINDEX | ADDPRIME | ADDPRIMEAT | CAT _ | CONCL | COUNT | FROM | GETARGS | GETBOUNDTERM | GETBOUNDVAR | GETOPNAME | GETSKELETON | GETVARS | ID _ | INT _ | LAST | LSQUARE | LSTEPLABEL | LSTEPSOURCE | LSTEPTARGET | NTH | POSITION | PREM | STAR | STEPSOURCE | STEPTARGET | SUBTYPELEFT | SUBTYPERIGHT | TYPEOFEXP | TYPEOFOUT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv71) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_DISTINCT_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 6140 "parser.ml"
         in
        _menhir_goto_option_DISTINCT_ _menhir_env _menhir_stack _v) : 'freshtv72)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv74)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv65) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 163 "parser.mly"
  (RULE)
# 6161 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv66)

and _menhir_run104 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv61 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parser.mly"
       (string)
# 6177 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv57 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6188 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run47 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ADDPRIME ->
                _menhir_run45 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ADDPRIMEAT ->
                _menhir_run43 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | CAT _v ->
                _menhir_run42 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | CONCL ->
                _menhir_run41 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | COUNT ->
                _menhir_run38 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETARGS ->
                _menhir_run36 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETBOUNDTERM ->
                _menhir_run34 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETBOUNDVAR ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETOPNAME ->
                _menhir_run30 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETSKELETON ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | GETVARS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | ID _v ->
                _menhir_run25 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | INT _v ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
            | LAST ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LPAREN ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : (('freshtv55 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6228 "parser.ml"
                ))) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState106 in
                ((let _menhir_stack = (_menhir_stack, _menhir_s) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | ID _v ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv51 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6240 "parser.ml"
                    ))) * _menhir_state) = Obj.magic _menhir_stack in
                    let (_v : (
# 5 "parser.mly"
       (string)
# 6245 "parser.ml"
                    )) = _v in
                    ((let _menhir_stack = (_menhir_stack, _v) in
                    let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CAT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv47 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6256 "parser.ml"
                        ))) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6260 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        let (_v : (
# 6 "parser.mly"
       (string)
# 6265 "parser.ml"
                        )) = _v in
                        ((let _menhir_stack = (_menhir_stack, _v) in
                        let _menhir_env = _menhir_discard _menhir_env in
                        let _tok = _menhir_env._menhir_token in
                        match _tok with
                        | RPAREN ->
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv43 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6276 "parser.ml"
                            ))) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6280 "parser.ml"
                            )) * (
# 6 "parser.mly"
       (string)
# 6284 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let _menhir_env = _menhir_discard _menhir_env in
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv41 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6291 "parser.ml"
                            ))) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6295 "parser.ml"
                            )) * (
# 6 "parser.mly"
       (string)
# 6299 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((((_menhir_stack, _menhir_s), (id : (
# 5 "parser.mly"
       (string)
# 6304 "parser.ml"
                            ))), _), (opname : (
# 5 "parser.mly"
       (string)
# 6308 "parser.ml"
                            ))), (var : (
# 6 "parser.mly"
       (string)
# 6312 "parser.ml"
                            ))) = _menhir_stack in
                            let _7 = () in
                            let _4 = () in
                            let _3 = () in
                            let _1 = () in
                            let _v : 'tv_query = 
# 127 "parser.mly"
 (SELECT(None, COLUMNS([(TERM(ConstrDB(opname,[VarDB var])), Some(id, None))]), [TABLE(CAT "Type")], None, None))
# 6321 "parser.ml"
                             in
                            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv42)) : 'freshtv44)
                        | _ ->
                            assert (not _menhir_env._menhir_error);
                            _menhir_env._menhir_error <- true;
                            let (_menhir_env : _menhir_env) = _menhir_env in
                            let (_menhir_stack : ((((('freshtv45 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6331 "parser.ml"
                            ))) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6335 "parser.ml"
                            )) * (
# 6 "parser.mly"
       (string)
# 6339 "parser.ml"
                            )) = Obj.magic _menhir_stack in
                            ((let (((_menhir_stack, _menhir_s), _), _) = _menhir_stack in
                            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)) : 'freshtv48)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : (((('freshtv49 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6350 "parser.ml"
                        ))) * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6354 "parser.ml"
                        )) = Obj.magic _menhir_stack in
                        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv50)) : 'freshtv52)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : ((('freshtv53 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6365 "parser.ml"
                    ))) * _menhir_state) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)) : 'freshtv56)
            | LSQUARE ->
                _menhir_run21 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LSTEPLABEL ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LSTEPSOURCE ->
                _menhir_run19 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | LSTEPTARGET ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | NTH ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | POSITION ->
                _menhir_run13 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | PREM ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | STEPSOURCE ->
                _menhir_run10 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | STEPTARGET ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | SUBTYPELEFT ->
                _menhir_run8 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | SUBTYPERIGHT ->
                _menhir_run7 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | TYPEOFEXP ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | TYPEOFOUT ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState106
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106) : 'freshtv58)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv59 * _menhir_state) * (
# 5 "parser.mly"
       (string)
# 6406 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv60)) : 'freshtv62)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv63 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)

and _menhir_run112 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_query = 
# 123 "parser.mly"
   (SELECT(None, STAR, [TABLE RULE], Some(EQUAL(ID "role", PREM)), None))
# 6428 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv40)

and _menhir_run113 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState113 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState113
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113

and _menhir_run114 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INTO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState115 _v
        | CONCLS ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | DECLARATIONP ->
            _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | DEFINE ->
            _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GRAMMAR ->
            _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | GRAMMARINFO ->
            _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | INSERT ->
            _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | LPAREN ->
            _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | PREMS ->
            _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | ROWS ->
            _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | RULE ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | SELECT ->
            _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | TEST ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState115
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState115) : 'freshtv36)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv37 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv38)

and _menhir_run116 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv33) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 159 "parser.mly"
  (GRAMMARINFO)
# 6529 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv34)

and _menhir_run117 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 157 "parser.mly"
  (GRAMMAR)
# 6543 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_goto_mystring : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 96 "parser.mly"
      (Query.query)
# 6550 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 96 "parser.mly"
      (Query.query)
# 6559 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 96 "parser.mly"
      (Query.query)
# 6567 "parser.ml"
    )) : (
# 96 "parser.mly"
      (Query.query)
# 6571 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv28)) : 'freshtv30)

and _menhir_run118 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 6587 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 6598 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState120 _v
            | CONCLS ->
                _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | DECLARATIONP ->
                _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | DEFINE ->
                _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | GRAMMAR ->
                _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | GRAMMARINFO ->
                _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | INSERT ->
                _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | LPAREN ->
                _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | PREMS ->
                _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | ROWS ->
                _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | RULE ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | SELECT ->
                _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | TEST ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState120
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState120) : 'freshtv20)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv21 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 6640 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv22)) : 'freshtv24)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv25 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv26)

and _menhir_run121 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv17) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 161 "parser.mly"
  (DECLARATIONP)
# 6662 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv18)

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_query = 
# 121 "parser.mly"
 (SELECT(None, STAR, [TABLE RULE], Some(EQUAL(ID "role", CONCL)), None))
# 6676 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run123 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 6683 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((cname : (
# 6 "parser.mly"
       (string)
# 6693 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 6697 "parser.ml"
    )) = _v in
    ((let _v : 'tv_table = 
# 165 "parser.mly"
  ( CAT cname )
# 6702 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv14)

and _menhir_discard : _menhir_env -> _menhir_env =
  fun _menhir_env ->
    let lexer = _menhir_env._menhir_lexer in
    let lexbuf = _menhir_env._menhir_lexbuf in
    let _tok = lexer lexbuf in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and _menhir_init : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> _menhir_env =
  fun lexer lexbuf ->
    let _tok = Obj.magic () in
    {
      _menhir_lexer = lexer;
      _menhir_lexbuf = lexbuf;
      _menhir_token = _tok;
      _menhir_error = false;
    }

and file : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 93 "parser.mly"
      ((Query.query) list)
# 6731 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 93 "parser.mly"
      ((Query.query) list)
# 6759 "parser.ml"
        ) = 
# 102 "parser.mly"
    ( [TABLE DECLARATIONP] )
# 6763 "parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)) : 'freshtv10)
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv12))

and mystring : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 96 "parser.mly"
      (Query.query)
# 6792 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run123 _menhir_env (Obj.magic _menhir_stack) MenhirState229 _v
    | CONCLS ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | DECLARATIONP ->
        _menhir_run121 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | DEFINE ->
        _menhir_run118 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState229 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 96 "parser.mly"
      (Query.query)
# 6820 "parser.ml"
        ) = 
# 111 "parser.mly"
    ( TABLE DECLARATIONP )
# 6824 "parser.ml"
         in
        _menhir_goto_mystring _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | GRAMMAR ->
        _menhir_run117 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | GRAMMARINFO ->
        _menhir_run116 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | INSERT ->
        _menhir_run114 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | LPAREN ->
        _menhir_run113 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | PREMS ->
        _menhir_run112 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | ROWS ->
        _menhir_run104 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | RULE ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | SELECT ->
        _menhir_run2 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | TEST ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState229
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState229) : 'freshtv6))

# 219 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
  


# 6854 "parser.ml"
