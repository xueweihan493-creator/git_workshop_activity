module top_level (
	/* Add your inputs here */
	
	// Clock
		input  CLOCK_50,
	// Keys
		input  [1:0] KEY,
	// Leds
	   output [9:0] LEDR,
	// Switches
	   input  [9:0] SW
);

    nios_system u0 (
        .clk_clk       (CLOCK_50/* Connect the clock */),       
        .reset_reset_n (KEY[0]/* Connect a Key for reset */), 
        .ledr_export   (LEDR/* Connect all LEDs */),   
        .sw_export     (SW/* Connect all Switches */)      
    );

	 
endmodule