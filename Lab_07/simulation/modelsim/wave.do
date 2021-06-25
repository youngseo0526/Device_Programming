view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_07_dataprocessor/clk 
wave create -pattern none -portmode in -language vhdl /lab_07_dataprocessor/input_sel 
wave create -pattern none -portmode in -language vhdl /lab_07_dataprocessor/ac_load 
wave create -pattern none -portmode in -language vhdl /lab_07_dataprocessor/mar_load 
wave create -pattern none -portmode in -language vhdl -range 2 0 /lab_07_dataprocessor/alu_sel 
wave create -pattern none -portmode in -language vhdl /lab_07_dataprocessor/ram_load 
wave create -pattern none -portmode in -language vhdl -range 3 0 /lab_07_dataprocessor/input 
wave create -pattern none -portmode in -language vhdl -range 2 0 /lab_07_dataprocessor/mar_in 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_07_dataprocessor/mux_out 
wave create -pattern none -portmode out -language vhdl -range 2 0 /lab_07_dataprocessor/mar_out 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_07_dataprocessor/data_chk 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_07_dataprocessor/output 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_07_dataprocessor/m1_out 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_07_dataprocessor/m2_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_07_dataprocessor/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_07_dataprocessor/input_sel 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_07_dataprocessor/ac_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_07_dataprocessor/mar_load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_07_dataprocessor/ram_load 
wave modify -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 0ns -endtime 120ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 120ns -endtime 240ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 120ns -endtime 230ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 230ns -endtime 340ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0100 -range 3 0 -starttime 340ns -endtime 450ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0011 -range 3 0 -starttime 120ns -endtime 220ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0010 -range 3 0 -starttime 220ns -endtime 330ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0100 -range 3 0 -starttime 330ns -endtime 440ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 0000 -range 3 0 -starttime 430ns -endtime 1000ns Edit:/lab_07_dataprocessor/input 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 330ns Edit:/lab_07_dataprocessor/alu_sel 
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 330ns -endtime 520ns Edit:/lab_07_dataprocessor/alu_sel 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 520ns -endtime 1000ns Edit:/lab_07_dataprocessor/alu_sel 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 0ns -endtime 120ns Edit:/lab_07_dataprocessor/mar_in 
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 120ns -endtime 220ns Edit:/lab_07_dataprocessor/mar_in 
wave modify -driver freeze -pattern constant -value 001 -range 2 0 -starttime 220ns -endtime 430ns Edit:/lab_07_dataprocessor/mar_in 
wave modify -driver freeze -pattern constant -value 010 -range 2 0 -starttime 430ns -endtime 520ns Edit:/lab_07_dataprocessor/mar_in 
wave modify -driver freeze -pattern constant -value 000 -range 2 0 -starttime 520ns -endtime 1000ns Edit:/lab_07_dataprocessor/mar_in 
wave edit invert -start 76686ps -end 401472ps Edit:/lab_07_dataprocessor/input_sel 
wave edit invert -start 76686ps -end 468008ps Edit:/lab_07_dataprocessor/ac_load 
wave edit invert -start 86835ps -end 168032ps Edit:/lab_07_dataprocessor/mar_load 
wave edit invert -start 171415ps -end 199608ps Edit:/lab_07_dataprocessor/ram_load 
wave edit invert -start 217652ps -end 269527ps Edit:/lab_07_dataprocessor/mar_load 
wave edit invert -start 276294ps -end 312381ps Edit:/lab_07_dataprocessor/ram_load 
wave edit invert -start 427410ps -end 519883ps Edit:/lab_07_dataprocessor/mar_load 
WaveCollapseAll -1
wave clipboard restore
