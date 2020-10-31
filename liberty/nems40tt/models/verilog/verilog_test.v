//****************************************************************************//
// Verilog models generated by SiliconSmart M-2017.03-2 build date: Apr 12, 2017 14:36:58. (SMSC-2) //
// Siliconsmart Path: /cad/synopsys/SiliconSmart/M-2017.03-2/linux64/bin/siliconsmart //
// Host Name: r6cad-tsmc40r.stanford.edu, User Name: akashl, PID: 30852       //
// Directory: /home/akashl/NEM-Relay-CAD/liberty                              //
//                                                                            //
// File generated on Sat Oct 31 04:46:23 PDT 2020. (SMSC-3)                   //
//****************************************************************************//


`timescale 1ns/1ps

module nem_ohmux_invd0_2i_1b_test_ZN_0;

  nem_ohmux_invd0_2i_1b instance0(.I0_0(I0_0), .I1_0(I1_0), .S0(S0), .S1(S1), .ZN_0(ZN_0));

  nem_ohmux_invd0_2i_1b_stim_ZN_0 instance1(.I0_0(I0_0), .I1_0(I1_0), .S0(S0), .S1(S1), .ZN_0(ZN_0));

endmodule

module nem_ohmux_invd0_2i_1b_stim_ZN_0(I0_0, I1_0, S0, S1, ZN_0);

  output I0_0;
  reg I0_0;
  output I1_0;
  reg I1_0;
  output S0;
  reg S0;
  output S1;
  reg S1;
  input ZN_0;

  parameter NUM_INPUT_BITS = 4;
  parameter NUM_OUTPUT_BITS = 1;
  parameter NUM_TOTAL_BITS = NUM_INPUT_BITS + NUM_OUTPUT_BITS;

  parameter OUTPUT_ZN_0_LOCATION = 4;

  parameter NUM_VECTORS = 56;
  reg [0:NUM_TOTAL_BITS-1] vectors [0:NUM_VECTORS-1];
  reg [0:NUM_TOTAL_BITS-1] ivector;
  integer ctr;

  initial begin

    vectors[0] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[1] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[2] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[3] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[4] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[5] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[6] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[7] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[8] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[9] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[10] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[11] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[12] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[13] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[14] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[15] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[16] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[17] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[18] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[19] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[20] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[21] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[22] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[23] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[24] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[25] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[26] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[27] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[28] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[29] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[30] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[31] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[32] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[33] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[34] = {1'b0, 1'b1, 1'b0, 1'b1, 1'b0};
    vectors[35] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[36] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[37] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[38] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[39] = {1'b1, 1'b0, 1'b1, 1'b0, 1'b0};
    vectors[40] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[41] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[42] = {1'b1, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[43] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[44] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[45] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[46] = {1'b0, 1'b1, 1'b1, 1'b0, 1'b1};
    vectors[47] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[48] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[49] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[50] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[51] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[52] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[53] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};
    vectors[54] = {1'b0, 1'b0, 1'b0, 1'b1, 1'b1};
    vectors[55] = {1'b0, 1'b0, 1'b1, 1'b0, 1'b1};

    for (ctr=0; ctr < NUM_VECTORS; ctr=ctr+1)
    begin
      ivector = vectors[ctr];
      {I0_0, I1_0, S0, S1} = ivector[0:NUM_INPUT_BITS-1];
      #20;  
      if(ivector[OUTPUT_ZN_0_LOCATION] !== ZN_0 && ivector[OUTPUT_ZN_0_LOCATION] !== 1'bx)
        $display("testbench ERROR : nem_ohmux_invd0_2i_1b:ZN_0 output mismatch at vector no. %d, %b != %b",
                 ctr, ivector[OUTPUT_ZN_0_LOCATION], ZN_0);
    end

  end

endmodule