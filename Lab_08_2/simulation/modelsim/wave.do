view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_08_2/clk 
wave create -pattern none -portmode in -language vhdl /lab_08_2/load 
wave create -pattern none -portmode in -language vhdl /lab_08_2/clear 
wave create -pattern none -portmode in -language vhdl /lab_08_2/out_sel 
wave create -pattern none -portmode out -language vhdl /lab_08_2/iNOT10 
wave create -pattern none -portmode out -language vhdl -range 3 0 /lab_08_2/dp_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 50ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_08_2/clk 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_08_2/load 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_08_2/out_sel 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_08_2/out_sel 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_08_2/clear 
wave edit invert -start 0ps -end 67560ps Edit:/lab_08_2/load 
wave edit invert -start 0ps -end 38002ps Edit:/lab_08_2/clear 
wave edit invert -start 0ps -end 117174ps Edit:/lab_08_2/out_sel 
WaveCollapseAll -1
wave clipboard restore
