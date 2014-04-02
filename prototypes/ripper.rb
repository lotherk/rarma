require 'pp'
require 'ripper'
class Foo < Ripper
  def on_BEGIN *input
    puts "-" * 80
    puts "name: on_BEGIN"
    pp input
  end

  def on_END *input
    puts "-" * 80
    puts "name: on_END"
    pp input
  end

  def on_alias *input
    puts "-" * 80
    puts "name: on_alias"
    pp input
  end

  def on_alias_error *input
    puts "-" * 80
    puts "name: on_alias_error"
    pp input
  end

  def on_aref *input
    puts "-" * 80
    puts "name: on_aref"
    pp input
  end

  def on_aref_field *input
    puts "-" * 80
    puts "name: on_aref_field"
    pp input
  end

  def on_arg_ambiguous *input
    puts "-" * 80
    puts "name: on_arg_ambiguous"
    pp input
  end

  def on_arg_paren *input
    puts "-" * 80
    puts "name: on_arg_paren"
    pp input
  end

  def on_args_add *input
    puts "-" * 80
    puts "name: on_args_add"
    pp input
  end

  def on_args_add_block *input
    puts "-" * 80
    puts "name: on_args_add_block"
    pp input
  end

  def on_args_add_star *input
    puts "-" * 80
    puts "name: on_args_add_star"
    pp input
  end

  def on_args_new *input
    puts "-" * 80
    puts "name: on_args_new"
    pp input
  end

  def on_array *input
    puts "-" * 80
    puts "name: on_array"
    pp input
  end

  def on_assign *input
    puts "-" * 80
    puts "name: on_assign"
    pp input
  end

  def on_assign_error *input
    puts "-" * 80
    puts "name: on_assign_error"
    pp input
  end

  def on_assoc_new *input
    puts "-" * 80
    puts "name: on_assoc_new"
    pp input
  end

  def on_assoc_splat *input
    puts "-" * 80
    puts "name: on_assoc_splat"
    pp input
  end

  def on_assoclist_from_args *input
    puts "-" * 80
    puts "name: on_assoclist_from_args"
    pp input
  end

  def on_bare_assoc_hash *input
    puts "-" * 80
    puts "name: on_bare_assoc_hash"
    pp input
  end

  def on_begin *input
    puts "-" * 80
    puts "name: on_begin"
    pp input
  end

  def on_binary *input
    puts "-" * 80
    puts "name: on_binary"
    pp input
  end

  def on_block_var *input
    puts "-" * 80
    puts "name: on_block_var"
    pp input
  end

  def on_block_var_add_block *input
    puts "-" * 80
    puts "name: on_block_var_add_block"
    pp input
  end

  def on_block_var_add_star *input
    puts "-" * 80
    puts "name: on_block_var_add_star"
    pp input
  end

  def on_blockarg *input
    puts "-" * 80
    puts "name: on_blockarg"
    pp input
  end

  def on_bodystmt *input
    puts "-" * 80
    puts "name: on_bodystmt"
    pp input
  end

  def on_brace_block *input
    puts "-" * 80
    puts "name: on_brace_block"
    pp input
  end

  def on_break *input
    puts "-" * 80
    puts "name: on_break"
    pp input
  end

  def on_call *input
    puts "-" * 80
    puts "name: on_call"
    pp input
  end

  def on_case *input
    puts "-" * 80
    puts "name: on_case"
    pp input
  end

  def on_class *input
    puts "-" * 80
    puts "name: on_class"
    pp input
  end

  def on_class_name_error *input
    puts "-" * 80
    puts "name: on_class_name_error"
    pp input
  end

  def on_command *input
    puts "-" * 80
    puts "name: on_command"
    pp input
  end

  def on_command_call *input
    puts "-" * 80
    puts "name: on_command_call"
    pp input
  end

  def on_const_path_field *input
    puts "-" * 80
    puts "name: on_const_path_field"
    pp input
  end

  def on_const_path_ref *input
    puts "-" * 80
    puts "name: on_const_path_ref"
    pp input
  end

  def on_const_ref *input
    puts "-" * 80
    puts "name: on_const_ref"
    pp input
  end

  def on_def *input
    puts "-" * 80
    puts "name: on_def"
    pp input
  end

  def on_defined *input
    puts "-" * 80
    puts "name: on_defined"
    pp input
  end

  def on_defs *input
    puts "-" * 80
    puts "name: on_defs"
    pp input
  end

  def on_do_block *input
    puts "-" * 80
    puts "name: on_do_block"
    pp input
  end

  def on_dot2 *input
    puts "-" * 80
    puts "name: on_dot2"
    pp input
  end

  def on_dot3 *input
    puts "-" * 80
    puts "name: on_dot3"
    pp input
  end

  def on_dyna_symbol *input
    puts "-" * 80
    puts "name: on_dyna_symbol"
    pp input
  end

  def on_else *input
    puts "-" * 80
    puts "name: on_else"
    pp input
  end

  def on_elsif *input
    puts "-" * 80
    puts "name: on_elsif"
    pp input
  end

  def on_ensure *input
    puts "-" * 80
    puts "name: on_ensure"
    pp input
  end

  def on_excessed_comma *input
    puts "-" * 80
    puts "name: on_excessed_comma"
    pp input
  end

  def on_fcall *input
    puts "-" * 80
    puts "name: on_fcall"
    pp input
  end

  def on_field *input
    puts "-" * 80
    puts "name: on_field"
    pp input
  end

  def on_for *input
    puts "-" * 80
    puts "name: on_for"
    pp input
  end

  def on_hash *input
    puts "-" * 80
    puts "name: on_hash"
    pp input
  end

  def on_if *input
    puts "-" * 80
    puts "name: on_if"
    pp input
  end

  def on_if_mod *input
    puts "-" * 80
    puts "name: on_if_mod"
    pp input
  end

  def on_ifop *input
    puts "-" * 80
    puts "name: on_ifop"
    pp input
  end

  def on_lambda *input
    puts "-" * 80
    puts "name: on_lambda"
    pp input
  end

  def on_magic_comment *input
    puts "-" * 80
    puts "name: on_magic_comment"
    pp input
  end

  def on_massign *input
    puts "-" * 80
    puts "name: on_massign"
    pp input
  end

  def on_method_add_arg *input
    puts "-" * 80
    puts "name: on_method_add_arg"
    pp input
  end

  def on_method_add_block *input
    puts "-" * 80
    puts "name: on_method_add_block"
    pp input
  end

  def on_mlhs_add *input
    puts "-" * 80
    puts "name: on_mlhs_add"
    pp input
  end

  def on_mlhs_add_star *input
    puts "-" * 80
    puts "name: on_mlhs_add_star"
    pp input
  end

  def on_mlhs_new *input
    puts "-" * 80
    puts "name: on_mlhs_new"
    pp input
  end

  def on_mlhs_paren *input
    puts "-" * 80
    puts "name: on_mlhs_paren"
    pp input
  end

  def on_module *input
    puts "-" * 80
    puts "name: on_module"
    pp input
  end

  def on_mrhs_add *input
    puts "-" * 80
    puts "name: on_mrhs_add"
    pp input
  end

  def on_mrhs_add_star *input
    puts "-" * 80
    puts "name: on_mrhs_add_star"
    pp input
  end

  def on_mrhs_new *input
    puts "-" * 80
    puts "name: on_mrhs_new"
    pp input
  end

  def on_mrhs_new_from_args *input
    puts "-" * 80
    puts "name: on_mrhs_new_from_args"
    pp input
  end

  def on_next *input
    puts "-" * 80
    puts "name: on_next"
    pp input
  end

  def on_opassign *input
    puts "-" * 80
    puts "name: on_opassign"
    pp input
  end

  def on_operator_ambiguous *input
    puts "-" * 80
    puts "name: on_operator_ambiguous"
    pp input
  end

  def on_param_error *input
    puts "-" * 80
    puts "name: on_param_error"
    pp input
  end

  def on_params *input
    puts "-" * 80
    puts "name: on_params"
    pp input
  end

  def on_paren *input
    puts "-" * 80
    puts "name: on_paren"
    pp input
  end

  def on_parse_error *input
    puts "-" * 80
    puts "name: on_parse_error"
    pp input
  end

  def on_program *input
    puts "-" * 80
    puts "name: on_program"
    pp input
  end

  def on_qsymbols_add *input
    puts "-" * 80
    puts "name: on_qsymbols_add"
    pp input
  end

  def on_qsymbols_new *input
    puts "-" * 80
    puts "name: on_qsymbols_new"
    pp input
  end

  def on_qwords_add *input
    puts "-" * 80
    puts "name: on_qwords_add"
    pp input
  end

  def on_qwords_new *input
    puts "-" * 80
    puts "name: on_qwords_new"
    pp input
  end

  def on_redo *input
    puts "-" * 80
    puts "name: on_redo"
    pp input
  end

  def on_regexp_add *input
    puts "-" * 80
    puts "name: on_regexp_add"
    pp input
  end

  def on_regexp_literal *input
    puts "-" * 80
    puts "name: on_regexp_literal"
    pp input
  end

  def on_regexp_new *input
    puts "-" * 80
    puts "name: on_regexp_new"
    pp input
  end

  def on_rescue *input
    puts "-" * 80
    puts "name: on_rescue"
    pp input
  end

  def on_rescue_mod *input
    puts "-" * 80
    puts "name: on_rescue_mod"
    pp input
  end

  def on_rest_param *input
    puts "-" * 80
    puts "name: on_rest_param"
    pp input
  end

  def on_retry *input
    puts "-" * 80
    puts "name: on_retry"
    pp input
  end

  def on_return *input
    puts "-" * 80
    puts "name: on_return"
    pp input
  end

  def on_return0 *input
    puts "-" * 80
    puts "name: on_return0"
    pp input
  end

  def on_sclass *input
    puts "-" * 80
    puts "name: on_sclass"
    pp input
  end

  def on_stmts_add *input
    puts "-" * 80
    puts "name: on_stmts_add"
    pp input
  end

  def on_stmts_new *input
    puts "-" * 80
    puts "name: on_stmts_new"
    pp input
  end

  def on_string_add *input
    puts "-" * 80
    puts "name: on_string_add"
    pp input
  end

  def on_string_concat *input
    puts "-" * 80
    puts "name: on_string_concat"
    pp input
  end

  def on_string_content *input
    puts "-" * 80
    puts "name: on_string_content"
    pp input
  end

  def on_string_dvar *input
    puts "-" * 80
    puts "name: on_string_dvar"
    pp input
  end

  def on_string_embexpr *input
    puts "-" * 80
    puts "name: on_string_embexpr"
    pp input
  end

  def on_string_literal *input
    puts "-" * 80
    puts "name: on_string_literal"
    pp input
  end

  def on_super *input
    puts "-" * 80
    puts "name: on_super"
    pp input
  end

  def on_symbol *input
    puts "-" * 80
    puts "name: on_symbol"
    pp input
  end

  def on_symbol_literal *input
    puts "-" * 80
    puts "name: on_symbol_literal"
    pp input
  end

  def on_symbols_add *input
    puts "-" * 80
    puts "name: on_symbols_add"
    pp input
  end

  def on_symbols_new *input
    puts "-" * 80
    puts "name: on_symbols_new"
    pp input
  end

  def on_top_const_field *input
    puts "-" * 80
    puts "name: on_top_const_field"
    pp input
  end

  def on_top_const_ref *input
    puts "-" * 80
    puts "name: on_top_const_ref"
    pp input
  end

  def on_unary *input
    puts "-" * 80
    puts "name: on_unary"
    pp input
  end

  def on_undef *input
    puts "-" * 80
    puts "name: on_undef"
    pp input
  end

  def on_unless *input
    puts "-" * 80
    puts "name: on_unless"
    pp input
  end

  def on_unless_mod *input
    puts "-" * 80
    puts "name: on_unless_mod"
    pp input
  end

  def on_until *input
    puts "-" * 80
    puts "name: on_until"
    pp input
  end

  def on_until_mod *input
    puts "-" * 80
    puts "name: on_until_mod"
    pp input
  end

  def on_var_alias *input
    puts "-" * 80
    puts "name: on_var_alias"
    pp input
  end

  def on_var_field *input
    puts "-" * 80
    puts "name: on_var_field"
    pp input
  end

  def on_var_ref *input
    puts "-" * 80
    puts "name: on_var_ref"
    pp input
  end

  def on_vcall *input
    puts "-" * 80
    puts "name: on_vcall"
    pp input
  end

  def on_void_stmt *input
    puts "-" * 80
    puts "name: on_void_stmt"
    pp input
  end

  def on_when *input
    puts "-" * 80
    puts "name: on_when"
    pp input
  end

  def on_while *input
    puts "-" * 80
    puts "name: on_while"
    pp input
  end

  def on_while_mod *input
    puts "-" * 80
    puts "name: on_while_mod"
    pp input
  end

  def on_word_add *input
    puts "-" * 80
    puts "name: on_word_add"
    pp input
  end

  def on_word_new *input
    puts "-" * 80
    puts "name: on_word_new"
    pp input
  end

  def on_words_add *input
    puts "-" * 80
    puts "name: on_words_add"
    pp input
  end

  def on_words_new *input
    puts "-" * 80
    puts "name: on_words_new"
    pp input
  end

  def on_xstring_add *input
    puts "-" * 80
    puts "name: on_xstring_add"
    pp input
  end

  def on_xstring_literal *input
    puts "-" * 80
    puts "name: on_xstring_literal"
    pp input
  end

  def on_xstring_new *input
    puts "-" * 80
    puts "name: on_xstring_new"
    pp input
  end

  def on_yield *input
    puts "-" * 80
    puts "name: on_yield"
    pp input
  end

  def on_yield0 *input
    puts "-" * 80
    puts "name: on_yield0"
    pp input
  end

  def on_zsuper *input
    puts "-" * 80
    puts "name: on_zsuper"
    pp input
  end

  def on_CHAR *input
    puts "-" * 80
    puts "name: on_CHAR"
    pp input
  end

  def on___end__ *input
    puts "-" * 80
    puts "name: on___end__"
    pp input
  end

  def on_backref *input
    puts "-" * 80
    puts "name: on_backref"
    pp input
  end

  def on_backtick *input
    puts "-" * 80
    puts "name: on_backtick"
    pp input
  end

  def on_comma *input
    puts "-" * 80
    puts "name: on_comma"
    pp input
  end

  def on_comment *input
    puts "-" * 80
    puts "name: on_comment"
    pp input
  end

  def on_const *input
    puts "-" * 80
    puts "name: on_const"
    pp input
  end

  def on_cvar *input
    puts "-" * 80
    puts "name: on_cvar"
    pp input
  end

  def on_embdoc *input
    puts "-" * 80
    puts "name: on_embdoc"
    pp input
  end

  def on_embdoc_beg *input
    puts "-" * 80
    puts "name: on_embdoc_beg"
    pp input
  end

  def on_embdoc_end *input
    puts "-" * 80
    puts "name: on_embdoc_end"
    pp input
  end

  def on_embexpr_beg *input
    puts "-" * 80
    puts "name: on_embexpr_beg"
    pp input
  end

  def on_embexpr_end *input
    puts "-" * 80
    puts "name: on_embexpr_end"
    pp input
  end

  def on_embvar *input
    puts "-" * 80
    puts "name: on_embvar"
    pp input
  end

  def on_float *input
    puts "-" * 80
    puts "name: on_float"
    pp input
  end

  def on_gvar *input
    puts "-" * 80
    puts "name: on_gvar"
    pp input
  end

  def on_heredoc_beg *input
    puts "-" * 80
    puts "name: on_heredoc_beg"
    pp input
  end

  def on_heredoc_end *input
    puts "-" * 80
    puts "name: on_heredoc_end"
    pp input
  end

  def on_ident *input
    puts "-" * 80
    puts "name: on_ident"
    pp input
  end

  def on_ignored_nl *input
    puts "-" * 80
    puts "name: on_ignored_nl"
    pp input
  end

  def on_int *input
    puts "-" * 80
    puts "name: on_int"
    pp input
  end

  def on_ivar *input
    puts "-" * 80
    puts "name: on_ivar"
    pp input
  end

  def on_kw *input
    puts "-" * 80
    puts "name: on_kw"
    pp input
  end

  def on_label *input
    puts "-" * 80
    puts "name: on_label"
    pp input
  end

  def on_lbrace *input
    puts "-" * 80
    puts "name: on_lbrace"
    pp input
  end

  def on_lbracket *input
    puts "-" * 80
    puts "name: on_lbracket"
    pp input
  end

  def on_lparen *input
    puts "-" * 80
    puts "name: on_lparen"
    pp input
  end

  def on_nl *input
    puts "-" * 80
    puts "name: on_nl"
    pp input
  end

  def on_op *input
    puts "-" * 80
    puts "name: on_op"
    pp input
  end

  def on_period *input
    puts "-" * 80
    puts "name: on_period"
    pp input
  end

  def on_qsymbols_beg *input
    puts "-" * 80
    puts "name: on_qsymbols_beg"
    pp input
  end

  def on_qwords_beg *input
    puts "-" * 80
    puts "name: on_qwords_beg"
    pp input
  end

  def on_rbrace *input
    puts "-" * 80
    puts "name: on_rbrace"
    pp input
  end

  def on_rbracket *input
    puts "-" * 80
    puts "name: on_rbracket"
    pp input
  end

  def on_regexp_beg *input
    puts "-" * 80
    puts "name: on_regexp_beg"
    pp input
  end

  def on_regexp_end *input
    puts "-" * 80
    puts "name: on_regexp_end"
    pp input
  end

  def on_rparen *input
    puts "-" * 80
    puts "name: on_rparen"
    pp input
  end

  def on_semicolon *input
    puts "-" * 80
    puts "name: on_semicolon"
    pp input
  end

  def on_sp *input
    puts "-" * 80
    puts "name: on_sp"
    pp input
  end

  def on_symbeg *input
    puts "-" * 80
    puts "name: on_symbeg"
    pp input
  end

  def on_symbols_beg *input
    puts "-" * 80
    puts "name: on_symbols_beg"
    pp input
  end

  def on_tlambda *input
    puts "-" * 80
    puts "name: on_tlambda"
    pp input
  end

  def on_tlambeg *input
    puts "-" * 80
    puts "name: on_tlambeg"
    pp input
  end

  def on_tstring_beg *input
    puts "-" * 80
    puts "name: on_tstring_beg"
    pp input
  end

  def on_tstring_content *input
    puts "-" * 80
    puts "name: on_tstring_content"
    pp input
  end

  def on_tstring_end *input
    puts "-" * 80
    puts "name: on_tstring_end"
    pp input
  end

  def on_words_beg *input
    puts "-" * 80
    puts "name: on_words_beg"
    pp input
  end

  def on_words_sep *input
    puts "-" * 80
    puts "name: on_words_sep"
    pp input
  end

end
ARGV.each do |a|
  puts "#" * 80
  f = Foo.new(File.read(a))
  f.parse
end
