-module('ex_7.23_flow_content').

-include_lib("eunit/include/eunit.hrl").

-define(FILENAME, "test/parsing/" ?MODULE_STRING ".yaml").

single_test_() ->
    ?_assertMatch(
      {yamerl_parser,
        {file,?FILENAME},
        [],
        <<>>,
        38,
        true,
        [],
        0,
        39,
        6,
        1,
        false,
        5,
        4,
        utf8,
        false,
        undefined,
        _,
        _,
        [],
        {bcoll,root,0,-1,1,1,-1,1,1},
        false,
        false,
        false,
        [{impl_key,false,false,undefined,undefined,1,1}],
        false,
        false,
        _,
        [],
        0,
        27,
        26,
        undefined,
        undefined,
        _,
        false,
        [],
        [
          {yamerl_stream_end,5,4},
          {yamerl_doc_end,5,4},
          {yamerl_collection_end,5,4,block,sequence},
          {yamerl_scalar,5,3,
            {yamerl_tag,5,3,{non_specific,"?"}},
            flow,plain,"c"},
          {yamerl_sequence_entry,5,1},
          {yamerl_scalar,4,3,
            {yamerl_tag,4,3,{non_specific,"!"}},
            flow,single_quoted,"b"},
          {yamerl_sequence_entry,4,1},
          {yamerl_scalar,3,3,
            {yamerl_tag,3,3,{non_specific,"!"}},
            flow,double_quoted,"a"},
          {yamerl_sequence_entry,3,1},
          {yamerl_collection_end,2,10,flow,mapping},
          {yamerl_scalar,2,8,
            {yamerl_tag,2,8,{non_specific,"?"}},
            flow,plain,"b"},
          {yamerl_mapping_value,2,6},
          {yamerl_scalar,2,5,
            {yamerl_tag,2,5,{non_specific,"?"}},
            flow,plain,"a"},
          {yamerl_mapping_key,2,5},
          {yamerl_collection_start,2,3,
            {yamerl_tag,2,3,{non_specific,"?"}},
            flow,mapping},
          {yamerl_sequence_entry,2,1},
          {yamerl_collection_end,1,10,flow,sequence},
          {yamerl_scalar,1,8,
            {yamerl_tag,1,8,{non_specific,"?"}},
            flow,plain,"b"},
          {yamerl_sequence_entry,1,8},
          {yamerl_scalar,1,5,
            {yamerl_tag,1,5,{non_specific,"?"}},
            flow,plain,"a"},
          {yamerl_sequence_entry,1,5},
          {yamerl_collection_start,1,3,
            {yamerl_tag,1,3,{non_specific,"?"}},
            flow,sequence},
          {yamerl_sequence_entry,1,1},
          {yamerl_collection_start,1,1,
            {yamerl_tag,1,1,{non_specific,"?"}},
            block,sequence},
          {yamerl_doc_start,1,1,{1,2},_},
          {yamerl_stream_start,1,1,utf8}
        ]
      },
      yamerl_parser:file(?FILENAME)
    ).
