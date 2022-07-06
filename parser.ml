
module MenhirBasics = struct
  
  exception Error
  
  type token = 
    | WHERE
    | VAR
    | UNION
    | STAR
    | SKELETON
    | SEMICOLON
    | SELECT
    | RULE
    | RSQUARE
    | RPAREN
    | ROWS
    | RNAME
    | PREM
    | POSITION
    | PNAME
    | OR
    | OPNAME
    | NTH
    | NOT
    | LSQUARE
    | LPAREN
    | LAST
    | IS
    | INTO
    | INTERSECT
    | INT of (
# 7 "parser.mly"
       (int)
# 36 "parser.ml"
  )
    | INSERT
    | ID of (
# 5 "parser.mly"
       (string)
# 42 "parser.ml"
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
    | DISTINCT
    | DERIVED
    | DEFINE
    | DECLARATIONP
    | COUNT
    | CONSTRUCTED
    | CONCL
    | COMMA
    | CNAME
    | CAT of (
# 6 "parser.mly"
       (string)
# 71 "parser.ml"
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
  | MenhirState182
  | MenhirState180
  | MenhirState175
  | MenhirState172
  | MenhirState159
  | MenhirState153
  | MenhirState151
  | MenhirState143
  | MenhirState141
  | MenhirState129
  | MenhirState127
  | MenhirState124
  | MenhirState123
  | MenhirState121
  | MenhirState118
  | MenhirState117
  | MenhirState114
  | MenhirState113
  | MenhirState112
  | MenhirState111
  | MenhirState110
  | MenhirState109
  | MenhirState108
  | MenhirState107
  | MenhirState106
  | MenhirState105
  | MenhirState101
  | MenhirState96
  | MenhirState94
  | MenhirState92
  | MenhirState86
  | MenhirState83
  | MenhirState76
  | MenhirState58
  | MenhirState52
  | MenhirState50
  | MenhirState47
  | MenhirState45
  | MenhirState36
  | MenhirState34
  | MenhirState27
  | MenhirState25
  | MenhirState23
  | MenhirState21
  | MenhirState19
  | MenhirState17
  | MenhirState13
  | MenhirState11
  | MenhirState10
  | MenhirState3
  | MenhirState0

# 1 "parser.mly"
  
  open Query

# 153 "parser.ml"

let rec _menhir_goto_option_ALL_ : _menhir_env -> 'ttv_tail -> 'tv_option_ALL_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv725) * 'tv_option_ALL_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState159 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LPAREN ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NOT ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState159
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState159) : 'freshtv726)

and _menhir_goto_separated_nonempty_list_COMMA_ID_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_ID_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv719 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 218 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv717 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 226 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "parser.mly"
       (string)
# 233 "parser.ml"
        ))) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 239 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv718)) : 'freshtv720)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv723) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv721) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_ID_) : 'tv_separated_nonempty_list_COMMA_ID_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 254 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv722)) : 'freshtv724)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_group_ : _menhir_env -> 'ttv_tail -> 'tv_option_group_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv715 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_group_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv713 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    let ((groupOpt : 'tv_option_group_) : 'tv_option_group_) = _v in
    ((let (((((_menhir_stack, _menhir_s), (distinctOpt : 'tv_option_DISTINCT_)), _, (columns : 'tv_eStar)), _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_query__)), (whereOpt : 'tv_option_where_)) = _menhir_stack in
    let _4 = () in
    let _1 = () in
    let _v : 'tv_query = let fromQueries =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 276 "parser.ml"
      
    in
    
# 102 "parser.mly"
   ( SELECT(distinctOpt, columns, fromQueries, whereOpt, groupOpt) )
# 282 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv714)) : 'freshtv716)

and _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_ID__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv711)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | HAVING ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv705) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ALL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv699) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv697) = Obj.magic _menhir_stack in
            ((let x = () in
            let _v : 'tv_option_ALL_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 310 "parser.ml"
             in
            _menhir_goto_option_ALL_ _menhir_env _menhir_stack _v) : 'freshtv698)) : 'freshtv700)
        | ADDINDEX | ADDPRIME | ADDPRIMEAT | CAT _ | CONCL | COUNT | GETARGS | GETBOUNDTERM | GETBOUNDVAR | GETOPNAME | GETSKELETON | GETVARS | ID _ | INT _ | LAST | LPAREN | LSQUARE | NOT | NTH | POSITION | PREM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv701) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option_ALL_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 319 "parser.ml"
             in
            _menhir_goto_option_ALL_ _menhir_env _menhir_stack _v) : 'freshtv702)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv703) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv704)) : 'freshtv706)
    | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv707) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_having_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 334 "parser.ml"
         in
        _menhir_goto_option_having_ _menhir_env _menhir_stack _v) : 'freshtv708)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv709)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv710)) : 'freshtv712)

and _menhir_run152 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 348 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv691 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 360 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ID _v ->
            _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState153 _v
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState153) : 'freshtv692)
    | CAT _ | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | HAVING | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv693 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 376 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : (
# 5 "parser.mly"
       (string)
# 381 "parser.ml"
        ))) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_ID_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 386 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_ID_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv694)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv695 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 396 "parser.ml"
        )) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv696)

and _menhir_goto_separated_nonempty_list_COMMA_column_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_column_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv685) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv683) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_column_) : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_column__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 416 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_column__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv684)) : 'freshtv686)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv689 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv687 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_column_) : 'tv_separated_nonempty_list_COMMA_column_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_column)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_column_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 433 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_column_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv688)) : 'freshtv690)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_having_ : _menhir_env -> 'ttv_tail -> 'tv_option_having_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv681)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    let (_v : 'tv_option_having_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv679)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_ID__) = Obj.magic _menhir_stack in
    let ((havingOpt : 'tv_option_having_) : 'tv_option_having_) = _v in
    ((let (_menhir_stack, _, (xs0 : 'tv_loption_separated_nonempty_list_COMMA_ID__)) = _menhir_stack in
    let _2 = () in
    let _1 = () in
    let _v : 'tv_group = let ids =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 455 "parser.ml"
      
    in
    
# 120 "parser.mly"
 ( (ids, havingOpt) )
# 461 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv677) = _menhir_stack in
    let (_v : 'tv_group) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv675) = Obj.magic _menhir_stack in
    let (_v : 'tv_group) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv673) = Obj.magic _menhir_stack in
    let ((x : 'tv_group) : 'tv_group) = _v in
    ((let _v : 'tv_option_group_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 475 "parser.ml"
     in
    _menhir_goto_option_group_ _menhir_env _menhir_stack _v) : 'freshtv674)) : 'freshtv676)) : 'freshtv678)) : 'freshtv680)) : 'freshtv682)

and _menhir_run127 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState127 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | LPAREN ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | NOT ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState127
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState127

and _menhir_run129 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack ->
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState129 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | LPAREN ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | NOT ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState129
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState129

and _menhir_goto_option_where_ : _menhir_env -> 'ttv_tail -> 'tv_option_where_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ((((('freshtv671 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | GROUP ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv665) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | BY ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv661) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ID _v ->
                _menhir_run152 _menhir_env (Obj.magic _menhir_stack) MenhirState151 _v
            | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | HAVING | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv659) = Obj.magic _menhir_stack in
                let (_menhir_s : _menhir_state) = MenhirState151 in
                ((let _v : 'tv_loption_separated_nonempty_list_COMMA_ID__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 612 "parser.ml"
                 in
                _menhir_goto_loption_separated_nonempty_list_COMMA_ID__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv660)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState151) : 'freshtv662)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv663) = Obj.magic _menhir_stack in
            (raise _eRR : 'freshtv664)) : 'freshtv666)
    | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv667) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_group_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 631 "parser.ml"
         in
        _menhir_goto_option_group_ _menhir_env _menhir_stack _v) : 'freshtv668)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv669 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) * 'tv_option_where_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv670)) : 'freshtv672)

and _menhir_run122 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv655 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState123 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LPAREN ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NOT ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState123
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState123) : 'freshtv656)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv657 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv658)

and _menhir_run124 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState124 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | LPAREN ->
        _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | NOT ->
        _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState124
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState124

and _menhir_goto_option___anonymous_1_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_1_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv653 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
    let (_v : 'tv_option___anonymous_1_) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv651 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
    let ((newnameOpt : 'tv_option___anonymous_1_) : 'tv_option___anonymous_1_) = _v in
    ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
    let _v : 'tv_column = 
# 146 "parser.mly"
 ( (e1, newnameOpt) )
# 773 "parser.ml"
     in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv649) = _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_column) = _v in
    ((let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv647 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | COMMA ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv641 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState172 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState172
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState172) : 'freshtv642)
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv643 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_column)) = _menhir_stack in
        let _v : 'tv_separated_nonempty_list_COMMA_column_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 840 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_column_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv644)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv645 * _menhir_state * 'tv_column) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv646)) : 'freshtv648)) : 'freshtv650)) : 'freshtv652)) : 'freshtv654)

and _menhir_goto_option___anonymous_0_ : _menhir_env -> 'ttv_tail -> 'tv_option___anonymous_0_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv639) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ID _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv635) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        let (_v : (
# 5 "parser.mly"
       (string)
# 865 "parser.ml"
        )) = _v in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv633) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        let ((id0 : (
# 5 "parser.mly"
       (string)
# 873 "parser.ml"
        )) : (
# 5 "parser.mly"
       (string)
# 877 "parser.ml"
        )) = _v in
        ((let (_menhir_stack, (rowOpt0 : 'tv_option___anonymous_0_)) = _menhir_stack in
        let _10 = () in
        let _v : 'tv_option___anonymous_1_ = let x =
          let id = id0 in
          let rowOpt = rowOpt0 in
          let _1 = _10 in
          
# 145 "parser.mly"
                                                                      (id, rowOpt)
# 888 "parser.ml"
          
        in
        
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 894 "parser.ml"
         in
        _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv634)) : 'freshtv636)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv637) * 'tv_option___anonymous_0_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv638)) : 'freshtv640)

and _menhir_goto_formula : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_formula -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv587 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv583 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv581 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (f : 'tv_formula)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 222 "parser.mly"
   ( f )
# 930 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv582)) : 'freshtv584)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv585 * _menhir_state) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv586)) : 'freshtv588)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv593 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv589 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f1 : 'tv_formula)), _, (f2 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 218 "parser.mly"
 ( OR(f1,f2) )
# 958 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv590)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv591 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv592)) : 'freshtv594)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv599 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv595 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s, (f1 : 'tv_formula)), _, (f2 : 'tv_formula)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_formula = 
# 216 "parser.mly"
 ( AND(f1,f2) )
# 986 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv596)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv597 * _menhir_state * 'tv_formula)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv598)) : 'freshtv600)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv607 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv603 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv601 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (f : 'tv_formula)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_formula = 
# 220 "parser.mly"
 ( NOT f)
# 1019 "parser.ml"
             in
            _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv602)) : 'freshtv604)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv605 * _menhir_state)) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv606)) : 'freshtv608)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv619) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv615) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _, (f : 'tv_formula)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_where = 
# 116 "parser.mly"
 ( f )
# 1047 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv613) = _menhir_stack in
            let (_v : 'tv_where) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv611) = Obj.magic _menhir_stack in
            let (_v : 'tv_where) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv609) = Obj.magic _menhir_stack in
            let ((x : 'tv_where) : 'tv_where) = _v in
            ((let _v : 'tv_option_where_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1061 "parser.ml"
             in
            _menhir_goto_option_where_ _menhir_env _menhir_stack _v) : 'freshtv610)) : 'freshtv612)) : 'freshtv614)) : 'freshtv616)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv617) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv618)) : 'freshtv620)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv631) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AND ->
            _menhir_run129 _menhir_env (Obj.magic _menhir_stack)
        | OR ->
            _menhir_run127 _menhir_env (Obj.magic _menhir_stack)
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv627) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, (allOpt : 'tv_option_ALL_)), _, (f : 'tv_formula)) = _menhir_stack in
            let _1 = () in
            let _v : 'tv_having = 
# 124 "parser.mly"
 ( (f, allOpt) )
# 1089 "parser.ml"
             in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv625) = _menhir_stack in
            let (_v : 'tv_having) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv623) = Obj.magic _menhir_stack in
            let (_v : 'tv_having) = _v in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv621) = Obj.magic _menhir_stack in
            let ((x : 'tv_having) : 'tv_having) = _v in
            ((let _v : 'tv_option_having_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 1103 "parser.ml"
             in
            _menhir_goto_option_having_ _menhir_env _menhir_stack _v) : 'freshtv622)) : 'freshtv624)) : 'freshtv626)) : 'freshtv628)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv629) * 'tv_option_ALL_) * _menhir_state * 'tv_formula) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv630)) : 'freshtv632)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_SEMICOLON_e_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_SEMICOLON_e_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv575) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv573) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_SEMICOLON_e_) : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_e__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 1131 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv574)) : 'freshtv576)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv579 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv577 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_SEMICOLON_e_) : 'tv_separated_nonempty_list_SEMICOLON_e_) = _v in
        ((let (_menhir_stack, _menhir_s, (x : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_SEMICOLON_e_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 1148 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_SEMICOLON_e_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv578)) : 'freshtv580)
    | _ ->
        _menhir_fail ()

and _menhir_goto_loption_separated_nonempty_list_COMMA_query__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_query__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (((('freshtv571 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | WHERE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv565) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState121 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LPAREN ->
            _menhir_run124 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NOT ->
            _menhir_run122 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState121
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState121) : 'freshtv566)
    | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | EXCEPT | GRAMMAR | GRAMMARINFO | GROUP | INSERT | INTERSECT | LPAREN | RPAREN | RULE | SELECT | UNION ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv567) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_where_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 1220 "parser.ml"
         in
        _menhir_goto_option_where_ _menhir_env _menhir_stack _v) : 'freshtv568)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv569 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) * _menhir_state * 'tv_loption_separated_nonempty_list_COMMA_query__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv570)) : 'freshtv572)

and _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_SEMICOLON_e__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv563 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv559 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv557 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _, (xs0 : 'tv_loption_separated_nonempty_list_SEMICOLON_e__)) = _menhir_stack in
        let _3 = () in
        let _1 = () in
        let _v : 'tv_e = let l =
          let xs = xs0 in
          
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 1253 "parser.ml"
          
        in
        
# 160 "parser.mly"
   ( LIST l )
# 1259 "parser.ml"
         in
        _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv558)) : 'freshtv560)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv561 * _menhir_state) * _menhir_state * 'tv_loption_separated_nonempty_list_SEMICOLON_e__) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv562)) : 'freshtv564)

and _menhir_goto_e : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_e -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((('freshtv351 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv347 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState47 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState47
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState47) : 'freshtv348)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((('freshtv349 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv350)) : 'freshtv352)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((((((('freshtv359 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv355 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv353 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((((_menhir_stack, _menhir_s), (tag : 'tv_tag)), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _9 = () in
            let _7 = () in
            let _5 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 178 "parser.mly"
 ( ADDINDEXTAG(tag,e1,e2) )
# 1357 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv354)) : 'freshtv356)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((((((('freshtv357 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv358)) : 'freshtv360)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv365 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv361 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState52 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState52
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState52) : 'freshtv362)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv363 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv364)) : 'freshtv366)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv373 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv369 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv367 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 176 "parser.mly"
 ( ADDINDEX(e1,e2) )
# 1448 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv368)) : 'freshtv370)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv371 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv372)) : 'freshtv374)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv381 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv377 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv375 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 180 "parser.mly"
 ( ADDPRIME e1 )
# 1477 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv376)) : 'freshtv378)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv379 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv380)) : 'freshtv382)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv387 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv383 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState58 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState58
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState58) : 'freshtv384)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv385 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv386)) : 'freshtv388)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv395 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv391 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv389 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 182 "parser.mly"
 ( ADDPRIMEAT(e1,e2) )
# 1568 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv390)) : 'freshtv392)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv393 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv394)) : 'freshtv396)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv403 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv399 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv397 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 168 "parser.mly"
 ( GETARGS e1 )
# 1597 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv398)) : 'freshtv400)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv401 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv402)) : 'freshtv404)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv411 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv407 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv405 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 170 "parser.mly"
 ( GETBOUNDTERM e1 )
# 1626 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv406)) : 'freshtv408)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv409 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv410)) : 'freshtv412)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv419 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv415 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv413 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 172 "parser.mly"
 ( GETBOUNDVAR e1 )
# 1655 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv414)) : 'freshtv416)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv417 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv418)) : 'freshtv420)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv427 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv423 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv421 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 166 "parser.mly"
 ( GETOPNAME e1 )
# 1684 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv422)) : 'freshtv424)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv425 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv426)) : 'freshtv428)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv443 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv439 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv435 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                let (_v : (
# 6 "parser.mly"
       (string)
# 1712 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | RPAREN ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv431 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 1723 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv429 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 1730 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 1735 "parser.ml"
                    ))) = _menhir_stack in
                    let _6 = () in
                    let _4 = () in
                    let _2 = () in
                    let _1 = () in
                    let _v : 'tv_e = 
# 184 "parser.mly"
 ( GETSKELETON(e1,cname) )
# 1744 "parser.ml"
                     in
                    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv430)) : 'freshtv432)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (((('freshtv433 * _menhir_state)) * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 1754 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv434)) : 'freshtv436)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ((('freshtv437 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv438)) : 'freshtv440)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv441 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv442)) : 'freshtv444)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv451 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv447 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv445 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)) = _menhir_stack in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 174 "parser.mly"
 ( GETVARS e1 )
# 1791 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv446)) : 'freshtv448)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv449 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv450)) : 'freshtv452)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv457 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv453 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState76 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState76
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState76) : 'freshtv454)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv455 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv456)) : 'freshtv458)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv465 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv461 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv459 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 164 "parser.mly"
 ( LAST(e1, e2) )
# 1882 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv460)) : 'freshtv462)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv463 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv464)) : 'freshtv466)
    | MenhirState83 | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv473 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | SEMICOLON ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv467 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState83 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState83
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState83) : 'freshtv468)
        | RSQUARE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv469 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_e)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_SEMICOLON_e_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 1953 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_SEMICOLON_e_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv470)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv471 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv472)) : 'freshtv474)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv479 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv475 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState86 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState86
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState86) : 'freshtv476)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv477 * _menhir_state)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv478)) : 'freshtv480)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv487 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv483 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv481 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
            let _6 = () in
            let _4 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 162 "parser.mly"
 ( NTH(e1, e2) )
# 2044 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv482)) : 'freshtv484)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (((('freshtv485 * _menhir_state)) * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv486)) : 'freshtv488)
    | MenhirState159 | MenhirState121 | MenhirState123 | MenhirState124 | MenhirState127 | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv531 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv489 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState143 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState143
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState143) : 'freshtv490)
        | GREATER ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv491 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState141 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState141
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState141) : 'freshtv492)
        | IS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv527 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | BOUND ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv495 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv493 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 202 "parser.mly"
 ( ISBOUND e1)
# 2174 "parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv494)) : 'freshtv496)
            | CAT _v ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv507 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                let (_v : (
# 6 "parser.mly"
       (string)
# 2183 "parser.ml"
                )) = _v in
                ((let _menhir_stack = (_menhir_stack, _v) in
                let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | SKELETON ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv499 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2194 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv497 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2201 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 2206 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_formula = 
# 214 "parser.mly"
 ( ISSKELETON(e1,cname))
# 2213 "parser.ml"
                     in
                    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv498)) : 'freshtv500)
                | VAR ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv503 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2221 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv501 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2228 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), (cname : (
# 6 "parser.mly"
       (string)
# 2233 "parser.ml"
                    ))) = _menhir_stack in
                    let _4 = () in
                    let _2 = () in
                    let _v : 'tv_formula = 
# 210 "parser.mly"
 ( ISCATVAR(e1,cname) )
# 2240 "parser.ml"
                     in
                    _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv502)) : 'freshtv504)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv505 * _menhir_state * 'tv_e)) * (
# 6 "parser.mly"
       (string)
# 2250 "parser.ml"
                    )) = Obj.magic _menhir_stack in
                    ((let ((_menhir_stack, _menhir_s, _), _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv506)) : 'freshtv508)
            | CONSTRUCTED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv511 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv509 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                let _3 = () in
                let _2 = () in
                let _v : 'tv_formula = 
# 212 "parser.mly"
 ( ISCONSTRUCTED e1)
# 2266 "parser.ml"
                 in
                _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv510)) : 'freshtv512)
            | DERIVED ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv523 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let _tok = _menhir_env._menhir_token in
                match _tok with
                | BY ->
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv519 * _menhir_state * 'tv_e))) = Obj.magic _menhir_stack in
                    ((let _menhir_env = _menhir_discard _menhir_env in
                    let _tok = _menhir_env._menhir_token in
                    match _tok with
                    | CAT _v ->
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv515 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        let (_v : (
# 6 "parser.mly"
       (string)
# 2287 "parser.ml"
                        )) = _v in
                        ((let _menhir_env = _menhir_discard _menhir_env in
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv513 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        let ((cname : (
# 6 "parser.mly"
       (string)
# 2295 "parser.ml"
                        )) : (
# 6 "parser.mly"
       (string)
# 2299 "parser.ml"
                        )) = _v in
                        ((let (_menhir_stack, _menhir_s, (e1 : 'tv_e)) = _menhir_stack in
                        let _4 = () in
                        let _3 = () in
                        let _2 = () in
                        let _v : 'tv_formula = 
# 208 "parser.mly"
 ( ISDERIVEDBY(e1,cname))
# 2308 "parser.ml"
                         in
                        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv514)) : 'freshtv516)
                    | _ ->
                        assert (not _menhir_env._menhir_error);
                        _menhir_env._menhir_error <- true;
                        let (_menhir_env : _menhir_env) = _menhir_env in
                        let (_menhir_stack : ((('freshtv517 * _menhir_state * 'tv_e)))) = Obj.magic _menhir_stack in
                        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv518)) : 'freshtv520)
                | _ ->
                    assert (not _menhir_env._menhir_error);
                    _menhir_env._menhir_error <- true;
                    let (_menhir_env : _menhir_env) = _menhir_env in
                    let (_menhir_stack : (('freshtv521 * _menhir_state * 'tv_e))) = Obj.magic _menhir_stack in
                    ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                    _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv522)) : 'freshtv524)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : ('freshtv525 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
                ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv526)) : 'freshtv528)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv529 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv530)) : 'freshtv532)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv535 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv533 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 206 "parser.mly"
 ( GREATER(e1,e2) )
# 2349 "parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv534)) : 'freshtv536)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv539 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv537 * _menhir_state * 'tv_e)) * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (e1 : 'tv_e)), _, (e2 : 'tv_e)) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_formula = 
# 204 "parser.mly"
 ( EQUAL(e1,e2) )
# 2362 "parser.ml"
         in
        _menhir_goto_formula _menhir_env _menhir_stack _menhir_s _v) : 'freshtv538)) : 'freshtv540)
    | MenhirState172 | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv555 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | AS ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv549) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ROWS ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv543) = Obj.magic _menhir_stack in
                ((let _menhir_env = _menhir_discard _menhir_env in
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv541) = Obj.magic _menhir_stack in
                ((let _10 = () in
                let _v : 'tv_option___anonymous_0_ = let x =
                  let _1 = _10 in
                  
# 145 "parser.mly"
                                                      ( () )
# 2389 "parser.ml"
                  
                in
                
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 2395 "parser.ml"
                 in
                _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv542)) : 'freshtv544)
            | ID _ ->
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv545) = Obj.magic _menhir_stack in
                ((let _v : 'tv_option___anonymous_0_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 2404 "parser.ml"
                 in
                _menhir_goto_option___anonymous_0_ _menhir_env _menhir_stack _v) : 'freshtv546)
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                let (_menhir_env : _menhir_env) = _menhir_env in
                let (_menhir_stack : 'freshtv547) = Obj.magic _menhir_stack in
                (raise _eRR : 'freshtv548)) : 'freshtv550)
        | COMMA | FROM ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv551) = Obj.magic _menhir_stack in
            ((let _v : 'tv_option___anonymous_1_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 2419 "parser.ml"
             in
            _menhir_goto_option___anonymous_1_ _menhir_env _menhir_stack _v) : 'freshtv552)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv553 * _menhir_state * 'tv_e) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv554)) : 'freshtv556)
    | _ ->
        _menhir_fail ()

and _menhir_goto_tag : _menhir_env -> 'ttv_tail -> 'tv_tag -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv345 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv341 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | LPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv337 * _menhir_state)) * 'tv_tag)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | ADDINDEX ->
                _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | ADDPRIME ->
                _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | ADDPRIMEAT ->
                _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | CAT _v ->
                _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | CONCL ->
                _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | COUNT ->
                _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETARGS ->
                _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETBOUNDTERM ->
                _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETBOUNDVAR ->
                _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETOPNAME ->
                _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETSKELETON ->
                _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | GETVARS ->
                _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | ID _v ->
                _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | INT _v ->
                _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState45 _v
            | LAST ->
                _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | LSQUARE ->
                _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | NTH ->
                _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | POSITION ->
                _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | PREM ->
                _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState45
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState45) : 'freshtv338)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv339 * _menhir_state)) * 'tv_tag)) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv340)) : 'freshtv342)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv343 * _menhir_state)) * 'tv_tag) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv344)) : 'freshtv346)

and _menhir_fail : unit -> 'a =
  fun () ->
    Printf.fprintf Pervasives.stderr "Internal failure -- please contact the parser generator's developers.\n%!";
    assert false

and _menhir_goto_list_query_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_list_query_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv327 * _menhir_state * 'tv_query) * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv325 * _menhir_state * 'tv_query) * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_query)), _, (xs : 'tv_list_query_)) = _menhir_stack in
        let _v : 'tv_list_query_ = 
# 187 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 2527 "parser.ml"
         in
        _menhir_goto_list_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv326)) : 'freshtv328)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv335 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv331 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv329 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (queries : 'tv_list_query_)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 74 "parser.mly"
      ((Query.query) list)
# 2546 "parser.ml"
            ) = 
# 86 "parser.mly"
    ( queries )
# 2550 "parser.ml"
             in
            _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v) : 'freshtv330)) : 'freshtv332)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv333 * _menhir_state * 'tv_list_query_) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv334)) : 'freshtv336)
    | _ ->
        _menhir_fail ()

and _menhir_goto_separated_nonempty_list_COMMA_query_ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_separated_nonempty_list_COMMA_query_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    match _menhir_s with
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv319) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv317) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let ((x : 'tv_separated_nonempty_list_COMMA_query_) : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_query__ = 
# 130 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x )
# 2578 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_query__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv318)) : 'freshtv320)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv323 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        let (_v : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv321 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        let (_ : _menhir_state) = _menhir_s in
        let ((xs : 'tv_separated_nonempty_list_COMMA_query_) : 'tv_separated_nonempty_list_COMMA_query_) = _v in
        ((let ((_menhir_stack, _menhir_s, (x : 'tv_query)), _) = _menhir_stack in
        let _2 = () in
        let _v : 'tv_separated_nonempty_list_COMMA_query_ = 
# 217 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( x :: xs )
# 2595 "parser.ml"
         in
        _menhir_goto_separated_nonempty_list_COMMA_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv322)) : 'freshtv324)
    | _ ->
        _menhir_fail ()

and _menhir_run106 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState106 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState106
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState106

and _menhir_run108 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState108 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState108
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState108

and _menhir_run110 : _menhir_env -> 'ttv_tail * _menhir_state * 'tv_query -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState110 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState110
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState110

and _menhir_goto_loption_separated_nonempty_list_COMMA_column__ : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_loption_separated_nonempty_list_COMMA_column__ -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv315) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_loption_separated_nonempty_list_COMMA_column__) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv313) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((xs0 : 'tv_loption_separated_nonempty_list_COMMA_column__) : 'tv_loption_separated_nonempty_list_COMMA_column__) = _v in
    ((let _v : 'tv_eStar = let columns =
      let xs = xs0 in
      
# 206 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( xs )
# 2703 "parser.ml"
      
    in
    
# 142 "parser.mly"
 ( COLUMNS columns )
# 2709 "parser.ml"
     in
    _menhir_goto_eStar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv314)) : 'freshtv316)

and _menhir_goto_eStar : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_eStar -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : (('freshtv311 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv307 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState92 _v
        | DECLARATIONP ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | DEFINE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | GRAMMAR ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | GRAMMARINFO ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | INSERT ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | LPAREN ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | RULE ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | SELECT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState92
        | COMMA | EOF | EXCEPT | GROUP | INTERSECT | RPAREN | UNION | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv305) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState92 in
            ((let _v : 'tv_loption_separated_nonempty_list_COMMA_query__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 2752 "parser.ml"
             in
            _menhir_goto_loption_separated_nonempty_list_COMMA_query__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv306)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState92) : 'freshtv308)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv309 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv310)) : 'freshtv312)

and _menhir_run5 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv303) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 158 "parser.mly"
   ( PREM )
# 2777 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv304)

and _menhir_run6 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv299 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv295 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv293 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 188 "parser.mly"
   ( POSITION )
# 2806 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv294)) : 'freshtv296)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv297 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv298)) : 'freshtv300)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv301 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv302)

and _menhir_run9 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv289 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState10 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState10
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState10) : 'freshtv290)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv291 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv292)

and _menhir_run11 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState11 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState11
    | RSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv287) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState11 in
        ((let _v : 'tv_loption_separated_nonempty_list_SEMICOLON_e__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 2937 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_SEMICOLON_e__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv288)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState11

and _menhir_run12 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv283 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState13 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState13
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState13) : 'freshtv284)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv285 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv286)

and _menhir_run14 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 7 "parser.mly"
       (int)
# 3010 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv281) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((n : (
# 7 "parser.mly"
       (int)
# 3020 "parser.ml"
    )) : (
# 7 "parser.mly"
       (int)
# 3024 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 154 "parser.mly"
   ( INT n )
# 3029 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv282)

and _menhir_run15 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 5 "parser.mly"
       (string)
# 3036 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv279) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((id : (
# 5 "parser.mly"
       (string)
# 3046 "parser.ml"
    )) : (
# 5 "parser.mly"
       (string)
# 3050 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 150 "parser.mly"
 ( ID id )
# 3055 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv280)

and _menhir_run16 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv275 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState17 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState17
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState17) : 'freshtv276)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv277 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv278)

and _menhir_run18 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv271 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState19 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState19
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState19) : 'freshtv272)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv273 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv274)

and _menhir_run20 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv267 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState21 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState21
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState21) : 'freshtv268)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv269 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv270)

and _menhir_run22 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv263 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState23 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState23
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState23) : 'freshtv264)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv265 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv266)

and _menhir_run24 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv259 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState25 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState25
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState25) : 'freshtv260)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv261 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv262)

and _menhir_run26 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv255 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState27 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState27
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState27) : 'freshtv256)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv257 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv258)

and _menhir_run28 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv251 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv247 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv245 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            let _3 = () in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_e = 
# 186 "parser.mly"
   ( COUNT )
# 3456 "parser.ml"
             in
            _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv246)) : 'freshtv248)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv249 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv250)) : 'freshtv252)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv253 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv254)

and _menhir_run31 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv243) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_e = 
# 156 "parser.mly"
   ( CONCL )
# 3484 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv244)

and _menhir_run32 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 3491 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv241) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((cname : (
# 6 "parser.mly"
       (string)
# 3501 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 3505 "parser.ml"
    )) = _v in
    ((let _v : 'tv_e = 
# 152 "parser.mly"
   ( NAME cname )
# 3510 "parser.ml"
     in
    _menhir_goto_e _menhir_env _menhir_stack _menhir_s _v) : 'freshtv242)

and _menhir_run33 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv237 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState34 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState34
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState34) : 'freshtv238)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv239 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv240)

and _menhir_run35 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv233 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState36 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState36
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState36) : 'freshtv234)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv235 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv236)

and _menhir_run37 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | LPAREN ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv209 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | ADDINDEX ->
            _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ADDPRIME ->
            _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ADDPRIMEAT ->
            _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | CAT _v ->
            _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | CONCL ->
            _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | COUNT ->
            _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETARGS ->
            _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETBOUNDTERM ->
            _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETBOUNDVAR ->
            _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETOPNAME ->
            _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETSKELETON ->
            _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | GETVARS ->
            _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | ID _v ->
            _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | INT _v ->
            _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState50 _v
        | LAST ->
            _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | LSQUARE ->
            _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | NTH ->
            _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | POSITION ->
            _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | PREM ->
            _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState50
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState50) : 'freshtv210)
    | LSQUARE ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv229 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv213) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv211) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 194 "parser.mly"
 ( CNAME )
# 3708 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv212)) : 'freshtv214)
        | OPNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv217) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv215) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 192 "parser.mly"
 ( OPNAME )
# 3721 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv216)) : 'freshtv218)
        | PNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv221) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv219) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 198 "parser.mly"
 ( PNAME )
# 3734 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv220)) : 'freshtv222)
        | RNAME ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv225) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv223) = Obj.magic _menhir_stack in
            ((let _1 = () in
            let _v : 'tv_tag = 
# 196 "parser.mly"
 ( RNAME )
# 3747 "parser.ml"
             in
            _menhir_goto_tag _menhir_env _menhir_stack _v) : 'freshtv224)) : 'freshtv226)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv227 * _menhir_state)) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv228)) : 'freshtv230)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv231 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv232)

and _menhir_goto_query : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_query -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_stack = (_menhir_stack, _menhir_s, _v) in
    match _menhir_s with
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv167 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 3774 "parser.ml"
        ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState105
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv165 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 3790 "parser.ml"
            ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), (name : (
# 6 "parser.mly"
       (string)
# 3795 "parser.ml"
            ))), _, (q : 'tv_query)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_query = 
# 110 "parser.mly"
    ( DEFINE(name,q) )
# 3802 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv166)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState105) : 'freshtv168)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv171 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState107
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv169 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 104 "parser.mly"
    ( UNION(q1,q2) )
# 3829 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv170)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState107) : 'freshtv172)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv175 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState109
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv173 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 108 "parser.mly"
    ( INTERSECT(q1,q2) )
# 3856 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv174)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState109) : 'freshtv176)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv179 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState111
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : (('freshtv177 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s, (q1 : 'tv_query)), _), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : 'tv_query = 
# 106 "parser.mly"
    ( EXCEPT(q1,q2) )
# 3883 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv178)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState111) : 'freshtv180)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv181 * _menhir_state)) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState112 _v
        | DECLARATIONP ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | DEFINE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | GRAMMAR ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | GRAMMARINFO ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | INSERT ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | LPAREN ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | RULE ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | SELECT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState112
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState112) : 'freshtv182)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv185 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState113
        | CAT _ | COMMA | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ((('freshtv183 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (((_menhir_stack, _menhir_s), _, (q1 : 'tv_query)), _, (q2 : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _1 = () in
            let _v : 'tv_query = 
# 112 "parser.mly"
    ( INSERT(q1,q2) )
# 3945 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv184)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState113) : 'freshtv186)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv191 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | RPAREN ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv189 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState114 in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv187 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let ((_menhir_stack, _menhir_s), _, (q : 'tv_query)) = _menhir_stack in
            let _3 = () in
            let _1 = () in
            let _v : 'tv_query = 
# 100 "parser.mly"
 ( q )
# 3976 "parser.ml"
             in
            _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv188)) : 'freshtv190)
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState114
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState114) : 'freshtv192)
    | MenhirState118 | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv197 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | COMMA ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv193 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState117 in
            ((let _menhir_stack = (_menhir_stack, _menhir_s) in
            let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState118 _v
            | DECLARATIONP ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | DEFINE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | GRAMMAR ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | GRAMMARINFO ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | INSERT ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | LPAREN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | RULE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | SELECT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState118
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState118) : 'freshtv194)
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState117
        | CAT _ | DECLARATIONP | DEFINE | EOF | GRAMMAR | GRAMMARINFO | GROUP | INSERT | LPAREN | RPAREN | RULE | SELECT | WHERE ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv195 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            ((let (_menhir_stack, _menhir_s, (x : 'tv_query)) = _menhir_stack in
            let _v : 'tv_separated_nonempty_list_COMMA_query_ = 
# 215 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [ x ] )
# 4034 "parser.ml"
             in
            _menhir_goto_separated_nonempty_list_COMMA_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv196)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState117) : 'freshtv198)
    | MenhirState175 | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv201 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState175 _v
        | DECLARATIONP ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | DEFINE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | GRAMMAR ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | GRAMMARINFO ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | INSERT ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | LPAREN ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | RULE ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | SELECT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState175
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv199) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState175 in
            ((let _v : 'tv_list_query_ = 
# 185 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 4078 "parser.ml"
             in
            _menhir_goto_list_query_ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv200)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState175) : 'freshtv202)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv207 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((assert (not _menhir_env._menhir_error);
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EOF ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv205 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_menhir_s : _menhir_state) = MenhirState182 in
            ((let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : 'freshtv203 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
            let (_ : _menhir_state) = _menhir_s in
            ((let (_menhir_stack, _menhir_s, (q : 'tv_query)) = _menhir_stack in
            let _2 = () in
            let _v : (
# 77 "parser.mly"
      (Query.query)
# 4103 "parser.ml"
            ) = 
# 94 "parser.mly"
   ( q )
# 4107 "parser.ml"
             in
            _menhir_goto_mystring _menhir_env _menhir_stack _menhir_s _v) : 'freshtv204)) : 'freshtv206)
        | EXCEPT ->
            _menhir_run110 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | INTERSECT ->
            _menhir_run108 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | UNION ->
            _menhir_run106 _menhir_env (Obj.magic _menhir_stack) MenhirState182
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState182) : 'freshtv208)
    | _ ->
        _menhir_fail ()

and _menhir_goto_option_DISTINCT_ : _menhir_env -> 'ttv_tail -> 'tv_option_DISTINCT_ -> 'ttv_return =
  fun _menhir_env _menhir_stack _v ->
    let _menhir_stack = (_menhir_stack, _v) in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : ('freshtv163 * _menhir_state) * 'tv_option_DISTINCT_) = Obj.magic _menhir_stack in
    ((assert (not _menhir_env._menhir_error);
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | ADDINDEX ->
        _menhir_run37 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ADDPRIME ->
        _menhir_run35 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ADDPRIMEAT ->
        _menhir_run33 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | CAT _v ->
        _menhir_run32 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | CONCL ->
        _menhir_run31 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | COUNT ->
        _menhir_run28 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETARGS ->
        _menhir_run26 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETBOUNDTERM ->
        _menhir_run24 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETBOUNDVAR ->
        _menhir_run22 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETOPNAME ->
        _menhir_run20 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETSKELETON ->
        _menhir_run18 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | GETVARS ->
        _menhir_run16 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | ID _v ->
        _menhir_run15 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | INT _v ->
        _menhir_run14 _menhir_env (Obj.magic _menhir_stack) MenhirState3 _v
    | LAST ->
        _menhir_run12 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | LSQUARE ->
        _menhir_run11 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | NTH ->
        _menhir_run9 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | POSITION ->
        _menhir_run6 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | PREM ->
        _menhir_run5 _menhir_env (Obj.magic _menhir_stack) MenhirState3
    | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv159) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState3 in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv157) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : 'tv_eStar = 
# 140 "parser.mly"
 ( STAR )
# 4181 "parser.ml"
         in
        _menhir_goto_eStar _menhir_env _menhir_stack _menhir_s _v) : 'freshtv158)) : 'freshtv160)
    | FROM ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv161) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState3 in
        ((let _v : 'tv_loption_separated_nonempty_list_COMMA_column__ = 
# 128 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( [] )
# 4191 "parser.ml"
         in
        _menhir_goto_loption_separated_nonempty_list_COMMA_column__ _menhir_env _menhir_stack _menhir_s _v) : 'freshtv162)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState3) : 'freshtv164)

and _menhir_goto_table : _menhir_env -> 'ttv_tail -> _menhir_state -> 'tv_table -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv155) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : 'tv_table) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv153) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((tbl : 'tv_table) : 'tv_table) = _v in
    ((let _v : 'tv_query = 
# 98 "parser.mly"
 ( TABLE tbl )
# 4212 "parser.ml"
     in
    _menhir_goto_query _menhir_env _menhir_stack _menhir_s _v) : 'freshtv154)) : 'freshtv156)

and _menhir_goto_file : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 74 "parser.mly"
      ((Query.query) list)
# 4219 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv151) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 74 "parser.mly"
      ((Query.query) list)
# 4228 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv149) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 74 "parser.mly"
      ((Query.query) list)
# 4236 "parser.ml"
    )) : (
# 74 "parser.mly"
      ((Query.query) list)
# 4240 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv150)) : 'freshtv152)

and _menhir_errorcase : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    match _menhir_s with
    | MenhirState182 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv47 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv48)
    | MenhirState180 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv49) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv50)
    | MenhirState175 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv51 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv52)
    | MenhirState172 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv53 * _menhir_state * 'tv_column)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv54)
    | MenhirState159 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv55) * 'tv_option_ALL_) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv56)
    | MenhirState153 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv57 * _menhir_state * (
# 5 "parser.mly"
       (string)
# 4275 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv58)
    | MenhirState151 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv59)) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv60)
    | MenhirState143 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv61 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv62)
    | MenhirState141 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv63 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv64)
    | MenhirState129 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv65 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv66)
    | MenhirState127 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv67 * _menhir_state * 'tv_formula)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv68)
    | MenhirState124 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv69 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv70)
    | MenhirState123 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv71 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv72)
    | MenhirState121 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv73) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv74)
    | MenhirState118 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv75 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv76)
    | MenhirState117 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv77 * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv78)
    | MenhirState114 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv79 * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv80)
    | MenhirState113 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv81 * _menhir_state)) * _menhir_state * 'tv_query) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv82)
    | MenhirState112 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv83 * _menhir_state)) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv84)
    | MenhirState111 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv85 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv86)
    | MenhirState110 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv87 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv88)
    | MenhirState109 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv89 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv90)
    | MenhirState108 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv91 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv92)
    | MenhirState107 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv93 * _menhir_state * 'tv_query) * _menhir_state) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv94)
    | MenhirState106 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv95 * _menhir_state * 'tv_query) * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv96)
    | MenhirState105 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv97 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 4377 "parser.ml"
        ))) * _menhir_state * 'tv_query) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv98)
    | MenhirState101 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (('freshtv99 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 4386 "parser.ml"
        ))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv100)
    | MenhirState96 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv101 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv102)
    | MenhirState94 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv103 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv104)
    | MenhirState92 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv105 * _menhir_state) * 'tv_option_DISTINCT_) * _menhir_state * 'tv_eStar)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv106)
    | MenhirState86 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv107 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv108)
    | MenhirState83 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv109 * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv110)
    | MenhirState76 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv111 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv112)
    | MenhirState58 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv113 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv114)
    | MenhirState52 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ((('freshtv115 * _menhir_state)) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv116)
    | MenhirState50 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv117 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv118)
    | MenhirState47 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((((('freshtv119 * _menhir_state)) * 'tv_tag))) * _menhir_state * 'tv_e)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s, _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv120)
    | MenhirState45 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : (((('freshtv121 * _menhir_state)) * 'tv_tag))) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv122)
    | MenhirState36 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv123 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv124)
    | MenhirState34 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv125 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv126)
    | MenhirState27 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv127 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv128)
    | MenhirState25 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv129 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv130)
    | MenhirState23 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv131 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv132)
    | MenhirState21 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv133 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv134)
    | MenhirState19 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv135 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv136)
    | MenhirState17 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv137 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv138)
    | MenhirState13 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv139 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv140)
    | MenhirState11 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv141 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv142)
    | MenhirState10 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv143 * _menhir_state)) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv144)
    | MenhirState3 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : ('freshtv145 * _menhir_state) * 'tv_option_DISTINCT_) = Obj.magic _menhir_stack in
        ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv146)
    | MenhirState0 ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv147) = Obj.magic _menhir_stack in
        (raise _eRR : 'freshtv148)

and _menhir_run1 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | DISTINCT ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv41) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv39) = Obj.magic _menhir_stack in
        ((let x = () in
        let _v : 'tv_option_DISTINCT_ = 
# 102 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( Some x )
# 4526 "parser.ml"
         in
        _menhir_goto_option_DISTINCT_ _menhir_env _menhir_stack _v) : 'freshtv40)) : 'freshtv42)
    | ADDINDEX | ADDPRIME | ADDPRIMEAT | CAT _ | CONCL | COUNT | FROM | GETARGS | GETBOUNDTERM | GETBOUNDVAR | GETOPNAME | GETSKELETON | GETVARS | ID _ | INT _ | LAST | LSQUARE | NTH | POSITION | PREM | STAR ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv43) = Obj.magic _menhir_stack in
        ((let _v : 'tv_option_DISTINCT_ = 
# 100 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
    ( None )
# 4535 "parser.ml"
         in
        _menhir_goto_option_DISTINCT_ _menhir_env _menhir_stack _v) : 'freshtv44)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv45 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv46)

and _menhir_run93 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv37) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 134 "parser.mly"
  (RULE)
# 4556 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv38)

and _menhir_run94 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState94 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState94
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState94

and _menhir_run95 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | INTO ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv33 * _menhir_state) = Obj.magic _menhir_stack in
        ((let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | CAT _v ->
            _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState96 _v
        | DECLARATIONP ->
            _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | DEFINE ->
            _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | GRAMMAR ->
            _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | GRAMMARINFO ->
            _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | INSERT ->
            _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | LPAREN ->
            _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | RULE ->
            _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | SELECT ->
            _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState96
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState96) : 'freshtv34)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv35 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv36)

and _menhir_run97 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv31) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 130 "parser.mly"
  (GRAMMARINFO)
# 4641 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv32)

and _menhir_run98 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv29) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 128 "parser.mly"
  (GRAMMAR)
# 4655 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv30)

and _menhir_goto_mystring : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 77 "parser.mly"
      (Query.query)
# 4662 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv27) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let (_v : (
# 77 "parser.mly"
      (Query.query)
# 4671 "parser.ml"
    )) = _v in
    ((let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv25) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((_1 : (
# 77 "parser.mly"
      (Query.query)
# 4679 "parser.ml"
    )) : (
# 77 "parser.mly"
      (Query.query)
# 4683 "parser.ml"
    )) = _v in
    (Obj.magic _1 : 'freshtv26)) : 'freshtv28)

and _menhir_run99 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_stack = (_menhir_stack, _menhir_s) in
    let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv21 * _menhir_state) = Obj.magic _menhir_stack in
        let (_v : (
# 6 "parser.mly"
       (string)
# 4699 "parser.ml"
        )) = _v in
        ((let _menhir_stack = (_menhir_stack, _v) in
        let _menhir_env = _menhir_discard _menhir_env in
        let _tok = _menhir_env._menhir_token in
        match _tok with
        | EQUAL ->
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv17 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 4710 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let _menhir_env = _menhir_discard _menhir_env in
            let _tok = _menhir_env._menhir_token in
            match _tok with
            | CAT _v ->
                _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState101 _v
            | DECLARATIONP ->
                _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | DEFINE ->
                _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | GRAMMAR ->
                _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | GRAMMARINFO ->
                _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | INSERT ->
                _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | LPAREN ->
                _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | RULE ->
                _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | SELECT ->
                _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState101
            | _ ->
                assert (not _menhir_env._menhir_error);
                _menhir_env._menhir_error <- true;
                _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState101) : 'freshtv18)
        | _ ->
            assert (not _menhir_env._menhir_error);
            _menhir_env._menhir_error <- true;
            let (_menhir_env : _menhir_env) = _menhir_env in
            let (_menhir_stack : ('freshtv19 * _menhir_state) * (
# 6 "parser.mly"
       (string)
# 4744 "parser.ml"
            )) = Obj.magic _menhir_stack in
            ((let ((_menhir_stack, _menhir_s), _) = _menhir_stack in
            _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv20)) : 'freshtv22)
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv23 * _menhir_state) = Obj.magic _menhir_stack in
        ((let (_menhir_stack, _menhir_s) = _menhir_stack in
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) _menhir_s) : 'freshtv24)

and _menhir_run102 : _menhir_env -> 'ttv_tail -> _menhir_state -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv15) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    ((let _1 = () in
    let _v : 'tv_table = 
# 132 "parser.mly"
  (DECLARATIONP)
# 4766 "parser.ml"
     in
    _menhir_goto_table _menhir_env _menhir_stack _menhir_s _v) : 'freshtv16)

and _menhir_run103 : _menhir_env -> 'ttv_tail -> _menhir_state -> (
# 6 "parser.mly"
       (string)
# 4773 "parser.ml"
) -> 'ttv_return =
  fun _menhir_env _menhir_stack _menhir_s _v ->
    let _menhir_env = _menhir_discard _menhir_env in
    let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv13) = Obj.magic _menhir_stack in
    let (_menhir_s : _menhir_state) = _menhir_s in
    let ((cname : (
# 6 "parser.mly"
       (string)
# 4783 "parser.ml"
    )) : (
# 6 "parser.mly"
       (string)
# 4787 "parser.ml"
    )) = _v in
    ((let _v : 'tv_table = 
# 136 "parser.mly"
  ( CAT cname )
# 4792 "parser.ml"
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
# 74 "parser.mly"
      ((Query.query) list)
# 4821 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv11) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState0 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv9) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState0 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv7) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 74 "parser.mly"
      ((Query.query) list)
# 4847 "parser.ml"
        ) = 
# 83 "parser.mly"
    ( [TABLE DECLARATIONP] )
# 4851 "parser.ml"
         in
        _menhir_goto_file _menhir_env _menhir_stack _menhir_s _v) : 'freshtv8)) : 'freshtv10)
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState0
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState0) : 'freshtv12))

and mystring : (Lexing.lexbuf -> token) -> Lexing.lexbuf -> (
# 77 "parser.mly"
      (Query.query)
# 4874 "parser.ml"
) =
  fun lexer lexbuf ->
    let _menhir_env = _menhir_init lexer lexbuf in
    Obj.magic (let (_menhir_env : _menhir_env) = _menhir_env in
    let (_menhir_stack : 'freshtv5) = ((), _menhir_env._menhir_lexbuf.Lexing.lex_curr_p) in
    ((let _menhir_env = _menhir_discard _menhir_env in
    let _tok = _menhir_env._menhir_token in
    match _tok with
    | CAT _v ->
        _menhir_run103 _menhir_env (Obj.magic _menhir_stack) MenhirState180 _v
    | DECLARATIONP ->
        _menhir_run102 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | DEFINE ->
        _menhir_run99 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | EOF ->
        let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv3) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = MenhirState180 in
        ((let (_menhir_env : _menhir_env) = _menhir_env in
        let (_menhir_stack : 'freshtv1) = Obj.magic _menhir_stack in
        let (_menhir_s : _menhir_state) = _menhir_s in
        ((let _1 = () in
        let _v : (
# 77 "parser.mly"
      (Query.query)
# 4900 "parser.ml"
        ) = 
# 92 "parser.mly"
    ( TABLE DECLARATIONP )
# 4904 "parser.ml"
         in
        _menhir_goto_mystring _menhir_env _menhir_stack _menhir_s _v) : 'freshtv2)) : 'freshtv4)
    | GRAMMAR ->
        _menhir_run98 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | GRAMMARINFO ->
        _menhir_run97 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | INSERT ->
        _menhir_run95 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | LPAREN ->
        _menhir_run94 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | RULE ->
        _menhir_run93 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | SELECT ->
        _menhir_run1 _menhir_env (Obj.magic _menhir_stack) MenhirState180
    | _ ->
        assert (not _menhir_env._menhir_error);
        _menhir_env._menhir_error <- true;
        _menhir_errorcase _menhir_env (Obj.magic _menhir_stack) MenhirState180) : 'freshtv6))

# 219 "/Users/matteocimini/.opam/4.02.3/lib/menhir/standard.mly"
  


# 4928 "parser.ml"
