`celldefine
module nem_ohmux_invd0_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd0_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd16_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd16_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd1_10i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, I4_0, I4_1, I4_2, I4_3, I4_4, I4_5, I4_6, I4_7, I5_0, I5_1, I5_2, I5_3, I5_4, I5_5, I5_6, I5_7, I6_0, I6_1, I6_2, I6_3, I6_4, I6_5, I6_6, I6_7, I7_0, I7_1, I7_2, I7_3, I7_4, I7_5, I7_6, I7_7, I8_0, I8_1, I8_2, I8_3, I8_4, I8_5, I8_6, I8_7, I9_0, I9_1, I9_2, I9_3, I9_4, I9_5, I9_6, I9_7, S0, S1, S2, S3, S4, S5, S6, S7, S8, S9, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, I4_0, I4_1, I4_2, I4_3, I4_4, I4_5, I4_6, I4_7, I5_0, I5_1, I5_2, I5_3, I5_4, I5_5, I5_6, I5_7, I6_0, I6_1, I6_2, I6_3, I6_4, I6_5, I6_6, I6_7, I7_0, I7_1, I7_2, I7_3, I7_4, I7_5, I7_6, I7_7, I8_0, I8_1, I8_2, I8_3, I8_4, I8_5, I8_6, I8_7, I9_0, I9_1, I9_2, I9_3, I9_4, I9_5, I9_6, I9_7, S0, S1, S2, S3, S4, S5, S6, S7, S8, S9;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 | S4&I4_0 | S5&I5_0 | S6&I6_0 | S7&I7_0 | S8&I8_0 | S9&I9_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 | S4&I4_1 | S5&I5_1 | S6&I6_1 | S7&I7_1 | S8&I8_1 | S9&I9_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 | S4&I4_2 | S5&I5_2 | S6&I6_2 | S7&I7_2 | S8&I8_2 | S9&I9_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 | S4&I4_3 | S5&I5_3 | S6&I6_3 | S7&I7_3 | S8&I8_3 | S9&I9_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 | S4&I4_4 | S5&I5_4 | S6&I6_4 | S7&I7_4 | S8&I8_4 | S9&I9_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 | S4&I4_5 | S5&I5_5 | S6&I6_5 | S7&I7_5 | S8&I8_5 | S9&I9_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 | S4&I4_6 | S5&I5_6 | S6&I6_6 | S7&I7_6 | S8&I8_6 | S9&I9_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 | S4&I4_7 | S5&I5_7 | S6&I6_7 | S7&I7_7 | S8&I8_7 | S9&I9_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I4_0 --> ZN_0
        (I4_0 => ZN_0) = (0.0,0.0);

        // comb arc I5_0 --> ZN_0
        (I5_0 => ZN_0) = (0.0,0.0);

        // comb arc I6_0 --> ZN_0
        (I6_0 => ZN_0) = (0.0,0.0);

        // comb arc I7_0 --> ZN_0
        (I7_0 => ZN_0) = (0.0,0.0);

        // comb arc I8_0 --> ZN_0
        (I8_0 => ZN_0) = (0.0,0.0);

        // comb arc I9_0 --> ZN_0
        (I9_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I4_1 --> ZN_1
        (I4_1 => ZN_1) = (0.0,0.0);

        // comb arc I5_1 --> ZN_1
        (I5_1 => ZN_1) = (0.0,0.0);

        // comb arc I6_1 --> ZN_1
        (I6_1 => ZN_1) = (0.0,0.0);

        // comb arc I7_1 --> ZN_1
        (I7_1 => ZN_1) = (0.0,0.0);

        // comb arc I8_1 --> ZN_1
        (I8_1 => ZN_1) = (0.0,0.0);

        // comb arc I9_1 --> ZN_1
        (I9_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I4_2 --> ZN_2
        (I4_2 => ZN_2) = (0.0,0.0);

        // comb arc I5_2 --> ZN_2
        (I5_2 => ZN_2) = (0.0,0.0);

        // comb arc I6_2 --> ZN_2
        (I6_2 => ZN_2) = (0.0,0.0);

        // comb arc I7_2 --> ZN_2
        (I7_2 => ZN_2) = (0.0,0.0);

        // comb arc I8_2 --> ZN_2
        (I8_2 => ZN_2) = (0.0,0.0);

        // comb arc I9_2 --> ZN_2
        (I9_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I4_3 --> ZN_3
        (I4_3 => ZN_3) = (0.0,0.0);

        // comb arc I5_3 --> ZN_3
        (I5_3 => ZN_3) = (0.0,0.0);

        // comb arc I6_3 --> ZN_3
        (I6_3 => ZN_3) = (0.0,0.0);

        // comb arc I7_3 --> ZN_3
        (I7_3 => ZN_3) = (0.0,0.0);

        // comb arc I8_3 --> ZN_3
        (I8_3 => ZN_3) = (0.0,0.0);

        // comb arc I9_3 --> ZN_3
        (I9_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I4_4 --> ZN_4
        (I4_4 => ZN_4) = (0.0,0.0);

        // comb arc I5_4 --> ZN_4
        (I5_4 => ZN_4) = (0.0,0.0);

        // comb arc I6_4 --> ZN_4
        (I6_4 => ZN_4) = (0.0,0.0);

        // comb arc I7_4 --> ZN_4
        (I7_4 => ZN_4) = (0.0,0.0);

        // comb arc I8_4 --> ZN_4
        (I8_4 => ZN_4) = (0.0,0.0);

        // comb arc I9_4 --> ZN_4
        (I9_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I4_5 --> ZN_5
        (I4_5 => ZN_5) = (0.0,0.0);

        // comb arc I5_5 --> ZN_5
        (I5_5 => ZN_5) = (0.0,0.0);

        // comb arc I6_5 --> ZN_5
        (I6_5 => ZN_5) = (0.0,0.0);

        // comb arc I7_5 --> ZN_5
        (I7_5 => ZN_5) = (0.0,0.0);

        // comb arc I8_5 --> ZN_5
        (I8_5 => ZN_5) = (0.0,0.0);

        // comb arc I9_5 --> ZN_5
        (I9_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I4_6 --> ZN_6
        (I4_6 => ZN_6) = (0.0,0.0);

        // comb arc I5_6 --> ZN_6
        (I5_6 => ZN_6) = (0.0,0.0);

        // comb arc I6_6 --> ZN_6
        (I6_6 => ZN_6) = (0.0,0.0);

        // comb arc I7_6 --> ZN_6
        (I7_6 => ZN_6) = (0.0,0.0);

        // comb arc I8_6 --> ZN_6
        (I8_6 => ZN_6) = (0.0,0.0);

        // comb arc I9_6 --> ZN_6
        (I9_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        // comb arc I4_7 --> ZN_7
        (I4_7 => ZN_7) = (0.0,0.0);

        // comb arc I5_7 --> ZN_7
        (I5_7 => ZN_7) = (0.0,0.0);

        // comb arc I6_7 --> ZN_7
        (I6_7 => ZN_7) = (0.0,0.0);

        // comb arc I7_7 --> ZN_7
        (I7_7 => ZN_7) = (0.0,0.0);

        // comb arc I8_7 --> ZN_7
        (I8_7 => ZN_7) = (0.0,0.0);

        // comb arc I9_7 --> ZN_7
        (I9_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_0:S4)
        (negedge S4 => (ZN_0:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_0:S5)
        (negedge S5 => (ZN_0:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_0:S6)
        (negedge S6 => (ZN_0:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_0:S7)
        (negedge S7 => (ZN_0:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_0:S8)
        (negedge S8 => (ZN_0:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_0:S9)
        (negedge S9 => (ZN_0:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_0:S4)
        (posedge S4 => (ZN_0:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_0:S5)
        (posedge S5 => (ZN_0:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_0:S6)
        (posedge S6 => (ZN_0:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_0:S7)
        (posedge S7 => (ZN_0:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_0:S8)
        (posedge S8 => (ZN_0:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_0:S9)
        (posedge S9 => (ZN_0:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_1:S4)
        (negedge S4 => (ZN_1:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_1:S5)
        (negedge S5 => (ZN_1:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_1:S6)
        (negedge S6 => (ZN_1:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_1:S7)
        (negedge S7 => (ZN_1:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_1:S8)
        (negedge S8 => (ZN_1:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_1:S9)
        (negedge S9 => (ZN_1:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_1:S4)
        (posedge S4 => (ZN_1:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_1:S5)
        (posedge S5 => (ZN_1:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_1:S6)
        (posedge S6 => (ZN_1:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_1:S7)
        (posedge S7 => (ZN_1:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_1:S8)
        (posedge S8 => (ZN_1:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_1:S9)
        (posedge S9 => (ZN_1:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_2:S4)
        (negedge S4 => (ZN_2:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_2:S5)
        (negedge S5 => (ZN_2:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_2:S6)
        (negedge S6 => (ZN_2:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_2:S7)
        (negedge S7 => (ZN_2:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_2:S8)
        (negedge S8 => (ZN_2:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_2:S9)
        (negedge S9 => (ZN_2:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_2:S4)
        (posedge S4 => (ZN_2:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_2:S5)
        (posedge S5 => (ZN_2:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_2:S6)
        (posedge S6 => (ZN_2:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_2:S7)
        (posedge S7 => (ZN_2:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_2:S8)
        (posedge S8 => (ZN_2:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_2:S9)
        (posedge S9 => (ZN_2:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_3:S4)
        (negedge S4 => (ZN_3:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_3:S5)
        (negedge S5 => (ZN_3:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_3:S6)
        (negedge S6 => (ZN_3:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_3:S7)
        (negedge S7 => (ZN_3:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_3:S8)
        (negedge S8 => (ZN_3:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_3:S9)
        (negedge S9 => (ZN_3:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_3:S4)
        (posedge S4 => (ZN_3:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_3:S5)
        (posedge S5 => (ZN_3:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_3:S6)
        (posedge S6 => (ZN_3:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_3:S7)
        (posedge S7 => (ZN_3:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_3:S8)
        (posedge S8 => (ZN_3:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_3:S9)
        (posedge S9 => (ZN_3:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_4:S4)
        (negedge S4 => (ZN_4:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_4:S5)
        (negedge S5 => (ZN_4:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_4:S6)
        (negedge S6 => (ZN_4:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_4:S7)
        (negedge S7 => (ZN_4:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_4:S8)
        (negedge S8 => (ZN_4:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_4:S9)
        (negedge S9 => (ZN_4:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_4:S4)
        (posedge S4 => (ZN_4:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_4:S5)
        (posedge S5 => (ZN_4:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_4:S6)
        (posedge S6 => (ZN_4:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_4:S7)
        (posedge S7 => (ZN_4:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_4:S8)
        (posedge S8 => (ZN_4:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_4:S9)
        (posedge S9 => (ZN_4:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_5:S4)
        (negedge S4 => (ZN_5:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_5:S5)
        (negedge S5 => (ZN_5:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_5:S6)
        (negedge S6 => (ZN_5:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_5:S7)
        (negedge S7 => (ZN_5:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_5:S8)
        (negedge S8 => (ZN_5:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_5:S9)
        (negedge S9 => (ZN_5:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_5:S4)
        (posedge S4 => (ZN_5:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_5:S5)
        (posedge S5 => (ZN_5:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_5:S6)
        (posedge S6 => (ZN_5:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_5:S7)
        (posedge S7 => (ZN_5:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_5:S8)
        (posedge S8 => (ZN_5:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_5:S9)
        (posedge S9 => (ZN_5:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_6:S4)
        (negedge S4 => (ZN_6:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_6:S5)
        (negedge S5 => (ZN_6:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_6:S6)
        (negedge S6 => (ZN_6:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_6:S7)
        (negedge S7 => (ZN_6:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_6:S8)
        (negedge S8 => (ZN_6:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_6:S9)
        (negedge S9 => (ZN_6:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_6:S4)
        (posedge S4 => (ZN_6:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_6:S5)
        (posedge S5 => (ZN_6:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_6:S6)
        (posedge S6 => (ZN_6:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_6:S7)
        (posedge S7 => (ZN_6:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_6:S8)
        (posedge S8 => (ZN_6:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_6:S9)
        (posedge S9 => (ZN_6:S9)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S4 --> (ZN_7:S4)
        (negedge S4 => (ZN_7:S4)) = (0.0,0.0);

        ifnone
        // comb arc negedge S5 --> (ZN_7:S5)
        (negedge S5 => (ZN_7:S5)) = (0.0,0.0);

        ifnone
        // comb arc negedge S6 --> (ZN_7:S6)
        (negedge S6 => (ZN_7:S6)) = (0.0,0.0);

        ifnone
        // comb arc negedge S7 --> (ZN_7:S7)
        (negedge S7 => (ZN_7:S7)) = (0.0,0.0);

        ifnone
        // comb arc negedge S8 --> (ZN_7:S8)
        (negedge S8 => (ZN_7:S8)) = (0.0,0.0);

        ifnone
        // comb arc negedge S9 --> (ZN_7:S9)
        (negedge S9 => (ZN_7:S9)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S4 --> (ZN_7:S4)
        (posedge S4 => (ZN_7:S4)) = (0.0,0.0);

        ifnone
        // comb arc posedge S5 --> (ZN_7:S5)
        (posedge S5 => (ZN_7:S5)) = (0.0,0.0);

        ifnone
        // comb arc posedge S6 --> (ZN_7:S6)
        (posedge S6 => (ZN_7:S6)) = (0.0,0.0);

        ifnone
        // comb arc posedge S7 --> (ZN_7:S7)
        (posedge S7 => (ZN_7:S7)) = (0.0,0.0);

        ifnone
        // comb arc posedge S8 --> (ZN_7:S8)
        (posedge S8 => (ZN_7:S8)) = (0.0,0.0);

        ifnone
        // comb arc posedge S9 --> (ZN_7:S9)
        (posedge S9 => (ZN_7:S9)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd1_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd1_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
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
`celldefine
module nem_ohmux_invd2_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd3_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd3_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd4_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd4_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd5_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd5_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd6_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd6_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
`celldefine
module nem_ohmux_invd8_2i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, S0, S1, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
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
`celldefine
module nem_ohmux_invd8_4i_8b (I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3, ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7);
    input I0_0, I0_1, I0_2, I0_3, I0_4, I0_5, I0_6, I0_7, I1_0, I1_1, I1_2, I1_3, I1_4, I1_5, I1_6, I1_7, I2_0, I2_1, I2_2, I2_3, I2_4, I2_5, I2_6, I2_7, I3_0, I3_1, I3_2, I3_3, I3_4, I3_5, I3_6, I3_7, S0, S1, S2, S3;
    output ZN_0, ZN_1, ZN_2, ZN_3, ZN_4, ZN_5, ZN_6, ZN_7;

    assign ZN_0 = !( S0&I0_0 | S1&I1_0 | S2&I2_0 | S3&I3_0 );
    assign ZN_1 = !( S0&I0_1 | S1&I1_1 | S2&I2_1 | S3&I3_1 );
    assign ZN_2 = !( S0&I0_2 | S1&I1_2 | S2&I2_2 | S3&I3_2 );
    assign ZN_3 = !( S0&I0_3 | S1&I1_3 | S2&I2_3 | S3&I3_3 );
    assign ZN_4 = !( S0&I0_4 | S1&I1_4 | S2&I2_4 | S3&I3_4 );
    assign ZN_5 = !( S0&I0_5 | S1&I1_5 | S2&I2_5 | S3&I3_5 );
    assign ZN_6 = !( S0&I0_6 | S1&I1_6 | S2&I2_6 | S3&I3_6 );
    assign ZN_7 = !( S0&I0_7 | S1&I1_7 | S2&I2_7 | S3&I3_7 );

    specify
        // specify_block_begin

        // comb arc I0_0 --> ZN_0
        (I0_0 => ZN_0) = (0.0,0.0);

        // comb arc I1_0 --> ZN_0
        (I1_0 => ZN_0) = (0.0,0.0);

        // comb arc I2_0 --> ZN_0
        (I2_0 => ZN_0) = (0.0,0.0);

        // comb arc I3_0 --> ZN_0
        (I3_0 => ZN_0) = (0.0,0.0);

        // comb arc I0_1 --> ZN_1
        (I0_1 => ZN_1) = (0.0,0.0);

        // comb arc I1_1 --> ZN_1
        (I1_1 => ZN_1) = (0.0,0.0);

        // comb arc I2_1 --> ZN_1
        (I2_1 => ZN_1) = (0.0,0.0);

        // comb arc I3_1 --> ZN_1
        (I3_1 => ZN_1) = (0.0,0.0);

        // comb arc I0_2 --> ZN_2
        (I0_2 => ZN_2) = (0.0,0.0);

        // comb arc I1_2 --> ZN_2
        (I1_2 => ZN_2) = (0.0,0.0);

        // comb arc I2_2 --> ZN_2
        (I2_2 => ZN_2) = (0.0,0.0);

        // comb arc I3_2 --> ZN_2
        (I3_2 => ZN_2) = (0.0,0.0);

        // comb arc I0_3 --> ZN_3
        (I0_3 => ZN_3) = (0.0,0.0);

        // comb arc I1_3 --> ZN_3
        (I1_3 => ZN_3) = (0.0,0.0);

        // comb arc I2_3 --> ZN_3
        (I2_3 => ZN_3) = (0.0,0.0);

        // comb arc I3_3 --> ZN_3
        (I3_3 => ZN_3) = (0.0,0.0);

        // comb arc I0_4 --> ZN_4
        (I0_4 => ZN_4) = (0.0,0.0);

        // comb arc I1_4 --> ZN_4
        (I1_4 => ZN_4) = (0.0,0.0);

        // comb arc I2_4 --> ZN_4
        (I2_4 => ZN_4) = (0.0,0.0);

        // comb arc I3_4 --> ZN_4
        (I3_4 => ZN_4) = (0.0,0.0);

        // comb arc I0_5 --> ZN_5
        (I0_5 => ZN_5) = (0.0,0.0);

        // comb arc I1_5 --> ZN_5
        (I1_5 => ZN_5) = (0.0,0.0);

        // comb arc I2_5 --> ZN_5
        (I2_5 => ZN_5) = (0.0,0.0);

        // comb arc I3_5 --> ZN_5
        (I3_5 => ZN_5) = (0.0,0.0);

        // comb arc I0_6 --> ZN_6
        (I0_6 => ZN_6) = (0.0,0.0);

        // comb arc I1_6 --> ZN_6
        (I1_6 => ZN_6) = (0.0,0.0);

        // comb arc I2_6 --> ZN_6
        (I2_6 => ZN_6) = (0.0,0.0);

        // comb arc I3_6 --> ZN_6
        (I3_6 => ZN_6) = (0.0,0.0);

        // comb arc I0_7 --> ZN_7
        (I0_7 => ZN_7) = (0.0,0.0);

        // comb arc I1_7 --> ZN_7
        (I1_7 => ZN_7) = (0.0,0.0);

        // comb arc I2_7 --> ZN_7
        (I2_7 => ZN_7) = (0.0,0.0);

        // comb arc I3_7 --> ZN_7
        (I3_7 => ZN_7) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_0:S0)
        (negedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_0:S1)
        (negedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_0:S2)
        (negedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_0:S3)
        (negedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_0:S0)
        (posedge S0 => (ZN_0:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_0:S1)
        (posedge S1 => (ZN_0:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_0:S2)
        (posedge S2 => (ZN_0:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_0:S3)
        (posedge S3 => (ZN_0:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_1:S0)
        (negedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_1:S1)
        (negedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_1:S2)
        (negedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_1:S3)
        (negedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_1:S0)
        (posedge S0 => (ZN_1:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_1:S1)
        (posedge S1 => (ZN_1:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_1:S2)
        (posedge S2 => (ZN_1:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_1:S3)
        (posedge S3 => (ZN_1:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_2:S0)
        (negedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_2:S1)
        (negedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_2:S2)
        (negedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_2:S3)
        (negedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_2:S0)
        (posedge S0 => (ZN_2:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_2:S1)
        (posedge S1 => (ZN_2:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_2:S2)
        (posedge S2 => (ZN_2:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_2:S3)
        (posedge S3 => (ZN_2:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_3:S0)
        (negedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_3:S1)
        (negedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_3:S2)
        (negedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_3:S3)
        (negedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_3:S0)
        (posedge S0 => (ZN_3:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_3:S1)
        (posedge S1 => (ZN_3:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_3:S2)
        (posedge S2 => (ZN_3:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_3:S3)
        (posedge S3 => (ZN_3:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_4:S0)
        (negedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_4:S1)
        (negedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_4:S2)
        (negedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_4:S3)
        (negedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_4:S0)
        (posedge S0 => (ZN_4:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_4:S1)
        (posedge S1 => (ZN_4:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_4:S2)
        (posedge S2 => (ZN_4:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_4:S3)
        (posedge S3 => (ZN_4:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_5:S0)
        (negedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_5:S1)
        (negedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_5:S2)
        (negedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_5:S3)
        (negedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_5:S0)
        (posedge S0 => (ZN_5:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_5:S1)
        (posedge S1 => (ZN_5:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_5:S2)
        (posedge S2 => (ZN_5:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_5:S3)
        (posedge S3 => (ZN_5:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_6:S0)
        (negedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_6:S1)
        (negedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_6:S2)
        (negedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_6:S3)
        (negedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_6:S0)
        (posedge S0 => (ZN_6:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_6:S1)
        (posedge S1 => (ZN_6:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_6:S2)
        (posedge S2 => (ZN_6:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_6:S3)
        (posedge S3 => (ZN_6:S3)) = (0.0,0.0);

        ifnone
        // comb arc negedge S0 --> (ZN_7:S0)
        (negedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc negedge S1 --> (ZN_7:S1)
        (negedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc negedge S2 --> (ZN_7:S2)
        (negedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc negedge S3 --> (ZN_7:S3)
        (negedge S3 => (ZN_7:S3)) = (0.0,0.0);

        ifnone
        // comb arc posedge S0 --> (ZN_7:S0)
        (posedge S0 => (ZN_7:S0)) = (0.0,0.0);

        ifnone
        // comb arc posedge S1 --> (ZN_7:S1)
        (posedge S1 => (ZN_7:S1)) = (0.0,0.0);

        ifnone
        // comb arc posedge S2 --> (ZN_7:S2)
        (posedge S2 => (ZN_7:S2)) = (0.0,0.0);

        ifnone
        // comb arc posedge S3 --> (ZN_7:S3)
        (posedge S3 => (ZN_7:S3)) = (0.0,0.0);

        // specify_block_end
    endspecify
endmodule
`endcelldefine
