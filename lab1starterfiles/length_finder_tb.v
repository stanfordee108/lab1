module length_finder_tb ();

   reg [63:0] in;
   wire [3:0] len;
   
   length_finder dut (
      .string (in),
      .length (len)
   );
   
   initial begin
      in = 64'hAABBCCDDEEFFAA00;
      #5
      in = 64'hAABBCCDDEEFFAA99;
      #5
      in = 64'hAABBCCDDEEFF00AA;
      #5
      in = 64'hAABBCCDDEE00FFAA;
      #5
      in = 64'hAABBCC00EE00FFAA;
      #5
      in = 64'h00BBCCDDEE44FFAA;
      #5
      in = 64'h00BBCC00EE44FFAA;
      #5
      in = 64'h44BBC00DEE44FFAA;
      #5
      in = 0;
   end
   
endmodule
