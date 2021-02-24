`celldefine
module nem_ohmux_invd0_2i_1b (I0_0, I1_0, S0, S1, ZN_0);
    input I0_0, I1_0, S0, S1;
    output ZN_0;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
