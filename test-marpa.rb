
require 'ffi'

module MarpaLib extend FFI::Library
  ffi_lib './libmarpa.so'

  MarpaErrorCode = enum(
    :MARPA_ERR_NONE,
    :MARPA_ERR_AHFA_IX_NEGATIVE,
    :MARPA_ERR_AHFA_IX_OOB,
    :MARPA_ERR_ANDID_NEGATIVE,
    :MARPA_ERR_ANDID_NOT_IN_OR,
    :MARPA_ERR_ANDIX_NEGATIVE,
    :MARPA_ERR_BAD_SEPARATOR,
    :MARPA_ERR_BOCAGE_ITERATION_EXHAUSTED,
    :MARPA_ERR_COUNTED_NULLABLE,
    :MARPA_ERR_DEVELOPMENT,
    :MARPA_ERR_DUPLICATE_AND_NODE,
    :MARPA_ERR_DUPLICATE_RULE,
    :MARPA_ERR_DUPLICATE_TOKEN,
    :MARPA_ERR_YIM_COUNT,
    :MARPA_ERR_YIM_ID_INVALID,
    :MARPA_ERR_EVENT_IX_NEGATIVE,
    :MARPA_ERR_EVENT_IX_OOB,
    :MARPA_ERR_GRAMMAR_HAS_CYCLE,
    :MARPA_ERR_INACCESSIBLE_TOKEN,
    :MARPA_ERR_INTERNAL,
    :MARPA_ERR_INVALID_AHFA_ID,
    :MARPA_ERR_INVALID_AIMID,
    :MARPA_ERR_INVALID_BOOLEAN,
    :MARPA_ERR_INVALID_IRLID,
    :MARPA_ERR_INVALID_NSYID,
    :MARPA_ERR_INVALID_LOCATION,
    :MARPA_ERR_INVALID_RULE_ID,
    :MARPA_ERR_INVALID_START_SYMBOL,
    :MARPA_ERR_INVALID_SYMBOL_ID,
    :MARPA_ERR_I_AM_NOT_OK,
    :MARPA_ERR_MAJOR_VERSION_MISMATCH,
    :MARPA_ERR_MICRO_VERSION_MISMATCH,
    :MARPA_ERR_MINOR_VERSION_MISMATCH,
    :MARPA_ERR_NOOKID_NEGATIVE,
    :MARPA_ERR_NOT_PRECOMPUTED,
    :MARPA_ERR_NOT_TRACING_COMPLETION_LINKS,
    :MARPA_ERR_NOT_TRACING_LEO_LINKS,
    :MARPA_ERR_NOT_TRACING_TOKEN_LINKS,
    :MARPA_ERR_NO_AND_NODES,
    :MARPA_ERR_NO_EARLEY_SET_AT_LOCATION,
    :MARPA_ERR_NO_OR_NODES,
    :MARPA_ERR_NO_PARSE,
    :MARPA_ERR_NO_RULES,
    :MARPA_ERR_NO_START_SYMBOL,
    :MARPA_ERR_NO_TOKEN_EXPECTED_HERE,
    :MARPA_ERR_NO_TRACE_YIM,
    :MARPA_ERR_NO_TRACE_YS,
    :MARPA_ERR_NO_TRACE_PIM,
    :MARPA_ERR_NO_TRACE_SRCL,
    :MARPA_ERR_NULLING_TERMINAL,
    :MARPA_ERR_ORDER_FROZEN,
    :MARPA_ERR_ORID_NEGATIVE,
    :MARPA_ERR_OR_ALREADY_ORDERED,
    :MARPA_ERR_PARSE_EXHAUSTED,
    :MARPA_ERR_PARSE_TOO_LONG,
    :MARPA_ERR_PIM_IS_NOT_LIM,
    :MARPA_ERR_POINTER_ARG_NULL,
    :MARPA_ERR_PRECOMPUTED,
    :MARPA_ERR_PROGRESS_REPORT_EXHAUSTED,
    :MARPA_ERR_PROGRESS_REPORT_NOT_STARTED,
    :MARPA_ERR_RECCE_NOT_ACCEPTING_INPUT,
    :MARPA_ERR_RECCE_NOT_STARTED,
    :MARPA_ERR_RECCE_STARTED,
    :MARPA_ERR_RHS_IX_NEGATIVE,
    :MARPA_ERR_RHS_IX_OOB,
    :MARPA_ERR_RHS_TOO_LONG,
    :MARPA_ERR_SEQUENCE_LHS_NOT_UNIQUE,
    :MARPA_ERR_SOURCE_TYPE_IS_AMBIGUOUS,
    :MARPA_ERR_SOURCE_TYPE_IS_COMPLETION,
    :MARPA_ERR_SOURCE_TYPE_IS_LEO,
    :MARPA_ERR_SOURCE_TYPE_IS_NONE,
    :MARPA_ERR_SOURCE_TYPE_IS_TOKEN,
    :MARPA_ERR_SOURCE_TYPE_IS_UNKNOWN,
    :MARPA_ERR_START_NOT_LHS,
    :MARPA_ERR_SYMBOL_VALUED_CONFLICT,
    :MARPA_ERR_TERMINAL_IS_LOCKED,
    :MARPA_ERR_TOKEN_IS_NOT_TERMINAL,
    :MARPA_ERR_TOKEN_LENGTH_LE_ZERO,
    :MARPA_ERR_TOKEN_TOO_LONG,
    :MARPA_ERR_TREE_EXHAUSTED,
    :MARPA_ERR_TREE_PAUSED,
    :MARPA_ERR_UNEXPECTED_TOKEN_ID,
    :MARPA_ERR_UNPRODUCTIVE_START,
    :MARPA_ERR_VALUATOR_INACTIVE,
    :MARPA_ERR_VALUED_IS_LOCKED,
    :MARPA_ERR_RANK_TOO_LOW,
    :MARPA_ERR_RANK_TOO_HIGH,
    :MARPA_ERR_SYMBOL_IS_NULLING,
    :MARPA_ERR_SYMBOL_IS_UNUSED,
    :MARPA_ERR_NO_SUCH_RULE_ID,
    :MARPA_ERR_NO_SUCH_SYMBOL_ID,
    :MARPA_ERR_BEFORE_FIRST_TREE,
    :MARPA_ERR_SYMBOL_IS_NOT_COMPLETION_EVENT,
    :MARPA_ERR_SYMBOL_IS_NOT_NULLED_EVENT,
    :MARPA_ERR_SYMBOL_IS_NOT_PREDICTION_EVENT,
    :MARPA_ERR_RECCE_IS_INCONSISTENT,
    :MARPA_ERR_INVALID_ASSERTION_ID,
    :MARPA_ERR_NO_SUCH_ASSERTION_ID,
    :MARPA_ERR_HEADERS_DO_NOT_MATCH,
    :MARPA_ERR_NOT_A_SEQUENCE,
  )

  # Marpa_Error_Code marpa_check_version (int required_major, int required_minor, int required_micro );
  attach_function :marpa_check_version, [:int, :int, :int], MarpaErrorCode

  # Marpa_Error_Code marpa_version (int* version)
  attach_function :marpa_version, [ :pointer ], MarpaErrorCode

#TODO implement the following....  
# int marpa_c_init ( Marpa_Config* config);
# Marpa_Error_Code marpa_c_error ( Marpa_Config* config, const char** p_error_string );
# Marpa_Grammar marpa_g_new ( Marpa_Config* configuration );
# int marpa_g_force_valued ( Marpa_Grammar g );
# Marpa_Grammar marpa_g_ref (Marpa_Grammar g);
# void marpa_g_unref (Marpa_Grammar g);
# Marpa_Symbol_ID marpa_g_start_symbol (Marpa_Grammar g);
# Marpa_Symbol_ID marpa_g_start_symbol_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_highest_symbol_id (Marpa_Grammar g);
# int marpa_g_symbol_is_accessible (Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_nullable ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_nulling (Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_productive (Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_start ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_terminal_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int value);
# int marpa_g_symbol_is_terminal ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# Marpa_Symbol_ID marpa_g_symbol_new (Marpa_Grammar g);
# int marpa_g_highest_rule_id (Marpa_Grammar g);
# int marpa_g_rule_is_accessible (Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_rule_is_nullable ( Marpa_Grammar g, Marpa_Rule_ID ruleid);
# int marpa_g_rule_is_nulling (Marpa_Grammar g, Marpa_Rule_ID ruleid);
# int marpa_g_rule_is_loop (Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_rule_is_productive (Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_rule_length ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# Marpa_Symbol_ID marpa_g_rule_lhs ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# Marpa_Rule_ID marpa_g_rule_new (Marpa_Grammar g, Marpa_Symbol_ID lhs_id, Marpa_Symbol_ID *rhs_ids, int length);
# Marpa_Symbol_ID marpa_g_rule_rhs ( Marpa_Grammar g, Marpa_Rule_ID rule_id, int ix);
# int marpa_g_rule_is_proper_separation ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_sequence_min ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# Marpa_Rule_ID marpa_g_sequence_new (Marpa_Grammar g, Marpa_Symbol_ID lhs_id, Marpa_Symbol_ID rhs_id, Marpa_Symbol_ID separator_id, int min, int flags );
# int marpa_g_sequence_separator ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_symbol_is_counted (Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# Marpa_Rank marpa_g_rule_rank_set ( Marpa_Grammar g, Marpa_Rule_ID rule_id, Marpa_Rank rank);
# Marpa_Rank marpa_g_rule_rank ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_rule_null_high_set ( Marpa_Grammar g, Marpa_Rule_ID rule_id, int flag);
# int marpa_g_rule_null_high ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int marpa_g_completion_symbol_activate ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int reactivate );
# int marpa_g_nulled_symbol_activate ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int reactivate );
# int marpa_g_prediction_symbol_activate ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int reactivate );
# int marpa_g_symbol_is_completion_event ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_completion_event_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int value);
# int marpa_g_symbol_is_nulled_event ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_nulled_event_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int value);
# int marpa_g_symbol_is_prediction_event ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# int marpa_g_symbol_is_prediction_event_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, int value);
# int marpa_g_precompute (Marpa_Grammar g);
# int marpa_g_is_precomputed (Marpa_Grammar g);
# int marpa_g_has_cycle (Marpa_Grammar g);
# Marpa_Recognizer marpa_r_new ( Marpa_Grammar g );
# Marpa_Recognizer marpa_r_ref (Marpa_Recognizer r);
# void marpa_r_unref (Marpa_Recognizer r);
# int marpa_r_start_input (Marpa_Recognizer r);
# int marpa_r_alternative (Marpa_Recognizer r, Marpa_Symbol_ID token_id, int value, int length);
# int marpa_r_earleme_complete (Marpa_Recognizer r);
# Marpa_Earleme marpa_r_current_earleme (Marpa_Recognizer r);
# Marpa_Earleme marpa_r_earleme ( Marpa_Recognizer r, Marpa_Earley_Set_ID set_id);
# int marpa_r_earley_set_value ( Marpa_Recognizer r, Marpa_Earley_Set_ID earley_set);
# int marpa_r_earley_set_values ( Marpa_Recognizer r, Marpa_Earley_Set_ID earley_set, int* p_value, void** p_pvalue );
# unsigned int marpa_r_furthest_earleme (Marpa_Recognizer r);
# Marpa_Earley_Set_ID marpa_r_latest_earley_set (Marpa_Recognizer r);
# int marpa_r_latest_earley_set_value_set ( Marpa_Recognizer r, int value);
# int marpa_r_latest_earley_set_values_set ( Marpa_Recognizer r, int value, void* pvalue);
# int marpa_r_completion_symbol_activate ( Marpa_Recognizer r, Marpa_Symbol_ID sym_id, int reactivate );
# int marpa_r_earley_item_warning_threshold_set (Marpa_Recognizer r, int threshold);
# int marpa_r_earley_item_warning_threshold (Marpa_Recognizer r);
# int marpa_r_expected_symbol_event_set ( Marpa_Recognizer r, Marpa_Symbol_ID symbol_id, int value);
# int marpa_r_is_exhausted (Marpa_Recognizer r);
# int marpa_r_nulled_symbol_activate ( Marpa_Recognizer r, Marpa_Symbol_ID sym_id, int boolean );
# int marpa_r_prediction_symbol_activate ( Marpa_Recognizer r, Marpa_Symbol_ID sym_id, int boolean );
# int marpa_r_terminals_expected ( Marpa_Recognizer r, Marpa_Symbol_ID* buffer);
# int marpa_r_terminal_is_expected ( Marpa_Recognizer r, Marpa_Symbol_ID symbol_id);
# int marpa_r_progress_report_reset ( Marpa_Recognizer r);
# int marpa_r_progress_report_start ( Marpa_Recognizer r, Marpa_Earley_Set_ID set_id);
# int marpa_r_progress_report_finish ( Marpa_Recognizer r );
# Marpa_Rule_ID marpa_r_progress_item ( Marpa_Recognizer r, int* position, Marpa_Earley_Set_ID* origin );
# Marpa_Bocage marpa_b_new (Marpa_Recognizer r, Marpa_Earley_Set_ID earley_set_ID);
# Marpa_Bocage marpa_b_ref (Marpa_Bocage b);
# void marpa_b_unref (Marpa_Bocage b);
# int marpa_b_ambiguity_metric (Marpa_Bocage b);
# int marpa_b_is_null (Marpa_Bocage b);
# Marpa_Order marpa_o_new ( Marpa_Bocage b);
# Marpa_Order marpa_o_ref ( Marpa_Order o);
# void marpa_o_unref ( Marpa_Order o);
# int marpa_o_ambiguity_metric (Marpa_Order o);
# int marpa_o_is_null (Marpa_Order o);
# int marpa_o_high_rank_only_set ( Marpa_Order o, int flag);
# int marpa_o_high_rank_only ( Marpa_Order o);
# int marpa_o_rank ( Marpa_Order o );
# Marpa_Tree marpa_t_new (Marpa_Order o);
# Marpa_Tree marpa_t_ref (Marpa_Tree t);
# void marpa_t_unref (Marpa_Tree t);
# int marpa_t_next ( Marpa_Tree t);
# int marpa_t_parse_count ( Marpa_Tree t);
# Marpa_Value marpa_v_new ( Marpa_Tree t );
# Marpa_Value marpa_v_ref (Marpa_Value v);
# void marpa_v_unref ( Marpa_Value v);
# Marpa_Step_Type marpa_v_step ( Marpa_Value v);
# Marpa_Event_Type marpa_g_event (Marpa_Grammar g, Marpa_Event* event, int ix);
# int marpa_g_event_count ( Marpa_Grammar g );
# Marpa_Error_Code marpa_g_error ( Marpa_Grammar g, const char** p_error_string);
# Marpa_Error_Code marpa_g_error_clear ( Marpa_Grammar g );
# Marpa_Rank marpa_g_default_rank_set ( Marpa_Grammar g, Marpa_Rank rank);
# Marpa_Rank marpa_g_default_rank ( Marpa_Grammar g);
# Marpa_Rank marpa_g_symbol_rank_set ( Marpa_Grammar g, Marpa_Symbol_ID sym_id, Marpa_Rank rank);
# Marpa_Rank marpa_g_symbol_rank ( Marpa_Grammar g, Marpa_Symbol_ID sym_id);
# Marpa_Assertion_ID marpa_g_zwa_new ( Marpa_Grammar g, int default_value);
# int marpa_g_zwa_place ( Marpa_Grammar g, Marpa_Assertion_ID zwaid, Marpa_Rule_ID xrl_id, int rhs_ix);
# int marpa_r_zwa_default ( Marpa_Recognizer r, Marpa_Assertion_ID zwaid);
# int marpa_r_zwa_default_set ( Marpa_Recognizer r, Marpa_Assertion_ID zwaid, int default_value);
# Marpa_Assertion_ID marpa_g_highest_zwa_id ( Marpa_Grammar g );
# Marpa_Earleme marpa_r_clean ( Marpa_Recognizer r);
# int marpa_g_symbol_is_valued_set ( Marpa_Grammar g, Marpa_Symbol_ID symbol_id, int value);
# int marpa_g_symbol_is_valued ( Marpa_Grammar g, Marpa_Symbol_ID symbol_id);
# int marpa_v_symbol_is_valued_set ( Marpa_Value v, Marpa_Symbol_ID sym_id, int status );
# int marpa_v_symbol_is_valued ( Marpa_Value v, Marpa_Symbol_ID sym_id );
# int marpa_v_rule_is_valued_set ( Marpa_Value v, Marpa_Rule_ID rule_id, int status );
# int marpa_v_rule_is_valued ( Marpa_Value v, Marpa_Rule_ID rule_id );
# int marpa_v_valued_force ( Marpa_Value v);
# int _marpa_g_nsy_is_start ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# int _marpa_g_nsy_is_nulling ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# int _marpa_g_nsy_is_lhs ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# Marpa_NSY_ID _marpa_g_xsy_nulling_nsy ( Marpa_Grammar g, Marpa_Symbol_ID symid);
# Marpa_NSY_ID _marpa_g_xsy_nsy ( Marpa_Grammar g, Marpa_Symbol_ID symid);
# int _marpa_g_nsy_is_semantic ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# Marpa_Rule_ID _marpa_g_source_xsy ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# Marpa_Rule_ID _marpa_g_nsy_lhs_xrl ( Marpa_Grammar g, Marpa_NSY_ID nsy_id);
# int _marpa_g_nsy_xrl_offset ( Marpa_Grammar g, Marpa_NSY_ID nsy_id );
# int _marpa_g_rule_is_keep_separation ( Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int _marpa_g_nsy_count ( Marpa_Grammar g);
# int _marpa_g_irl_count ( Marpa_Grammar g);
# Marpa_Symbol_ID _marpa_g_irl_lhs ( Marpa_Grammar g, Marpa_IRL_ID irl_id);
# int _marpa_g_irl_length ( Marpa_Grammar g, Marpa_IRL_ID irl_id);
# Marpa_Symbol_ID _marpa_g_irl_rhs ( Marpa_Grammar g, Marpa_IRL_ID irl_id, int ix);
# int _marpa_g_rule_is_used (Marpa_Grammar g, Marpa_Rule_ID rule_id);
# int _marpa_g_irl_is_virtual_lhs (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# int _marpa_g_irl_is_virtual_rhs (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# int _marpa_g_virtual_start (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# int _marpa_g_virtual_end (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# Marpa_Rule_ID _marpa_g_source_xrl (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# int _marpa_g_real_symbol_count (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# Marpa_Rule_ID _marpa_g_irl_semantic_equivalent (Marpa_Grammar g, Marpa_IRL_ID irl_id);
# Marpa_Rank _marpa_g_irl_rank ( Marpa_Grammar g, Marpa_IRL_ID irl_id);
# Marpa_Rank _marpa_g_nsy_rank ( Marpa_Grammar g, Marpa_IRL_ID nsy_id);
# int _marpa_g_ahm_count (Marpa_Grammar g);
# Marpa_Rule_ID _marpa_g_ahm_irl (Marpa_Grammar g, Marpa_AHM_ID item_id);
# int _marpa_g_ahm_position (Marpa_Grammar g, Marpa_AHM_ID item_id);
# Marpa_Symbol_ID _marpa_g_ahm_postdot (Marpa_Grammar g, Marpa_AHM_ID item_id);
# int _marpa_r_is_use_leo (Marpa_Recognizer r);
# int _marpa_r_is_use_leo_set ( Marpa_Recognizer r, int value);
# Marpa_Earley_Set_ID _marpa_r_trace_earley_set (Marpa_Recognizer r);
# int _marpa_r_earley_set_size (Marpa_Recognizer r, Marpa_Earley_Set_ID set_id);
# Marpa_Earleme _marpa_r_earley_set_trace (Marpa_Recognizer r, Marpa_Earley_Set_ID set_id);
# Marpa_AHM_ID _marpa_r_earley_item_trace (Marpa_Recognizer r, Marpa_Earley_Item_ID item_id);
# Marpa_Earley_Set_ID _marpa_r_earley_item_origin (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_leo_predecessor_symbol (Marpa_Recognizer r);
# Marpa_Earley_Set_ID _marpa_r_leo_base_origin (Marpa_Recognizer r);
# Marpa_AHM_ID _marpa_r_leo_base_state (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_postdot_symbol_trace (Marpa_Recognizer r, Marpa_Symbol_ID symid);
# Marpa_Symbol_ID _marpa_r_first_postdot_item_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_next_postdot_item_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_postdot_item_symbol (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_first_token_link_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_next_token_link_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_first_completion_link_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_next_completion_link_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_first_leo_link_trace (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_next_leo_link_trace (Marpa_Recognizer r);
# Marpa_AHM_ID _marpa_r_source_predecessor_state (Marpa_Recognizer r);
# Marpa_Symbol_ID _marpa_r_source_token (Marpa_Recognizer r, int *value_p);
# Marpa_Symbol_ID _marpa_r_source_leo_transition_symbol (Marpa_Recognizer r);
# Marpa_Earley_Set_ID _marpa_r_source_middle (Marpa_Recognizer r);
# int _marpa_b_and_node_count ( Marpa_Bocage b);
# Marpa_Earley_Set_ID _marpa_b_and_node_middle ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id);
# int _marpa_b_and_node_parent ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id);
# int _marpa_b_and_node_predecessor ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id);
# int _marpa_b_and_node_cause ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id);
# int _marpa_b_and_node_symbol ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id);
# Marpa_Symbol_ID _marpa_b_and_node_token ( Marpa_Bocage b, Marpa_And_Node_ID and_node_id, int* value_p);
# Marpa_Or_Node_ID _marpa_b_top_or_node ( Marpa_Bocage b);
# int _marpa_b_or_node_set ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_origin ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# Marpa_IRL_ID _marpa_b_or_node_irl ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_position ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_is_whole ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_is_semantic ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_first_and ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_last_and ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# int _marpa_b_or_node_and_count ( Marpa_Bocage b, Marpa_Or_Node_ID or_node_id);
# Marpa_And_Node_ID _marpa_o_and_order_get ( Marpa_Order o, Marpa_Or_Node_ID or_node_id, int ix);
# int _marpa_o_or_node_and_node_count ( Marpa_Order o, Marpa_Or_Node_ID or_node_id);
# int _marpa_o_or_node_and_node_id_by_ix ( Marpa_Order o, Marpa_Or_Node_ID or_node_id, int ix);
# int _marpa_t_size ( Marpa_Tree t);
# Marpa_Or_Node_ID _marpa_t_nook_or_node ( Marpa_Tree t, Marpa_Nook_ID nook_id);
# int _marpa_t_nook_choice ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_t_nook_parent ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_t_nook_cause_is_ready ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_t_nook_predecessor_is_ready ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_t_nook_is_cause ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_t_nook_is_predecessor ( Marpa_Tree t, Marpa_Nook_ID nook_id );
# int _marpa_v_trace ( Marpa_Value v, int flag);
# Marpa_Nook_ID _marpa_v_nook ( Marpa_Value v);
# const char* _marpa_tag(void);
# int marpa_debug_level_set ( int level );
# void marpa_debug_handler_set ( int (*debug_handler)(const char*, ...) );

end

version = FFI::MemoryPointer.new(:int, 3)
result  = MarpaLib.marpa_version(version)

(major, minor, patch) = version.read_array_of_type(:int, :read_int, 3)
puts "result  = #{result}"
puts "version = #{major}.#{minor}.#{patch}"

#TODO ok MarpaLib.marpa_check_version( major, minor, patch ) == MarpaLib.MARPA_ERR_NONE
puts "marpa_check_version result = #{ MarpaLib.marpa_check_version( 8, 4, 1 ) }"
