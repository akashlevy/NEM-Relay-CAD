`celldefine
module nem_ohmux_invd2_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

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

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
