view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_05/clk 
wave create -pattern none -portmode in -language vhdl /lab_05/reset 
wave create -pattern none -portmode in -language vhdl /lab_05/w 
wave create -pattern none -portmode in -language vhdl /lab_05/x 
wave create -pattern none -portmode in -language vhdl /lab_05/y 
wave create -pattern none -portmode in -language vhdl /lab_05/z 
wave create -pattern none -portmode out -language vhdl /lab_05/ld_inc_out 
wave create -pattern none -portmode out -language vhdl -range 1 0 /lab_05/condition_sel_out 
wave create -pattern none -portmode out -language vhdl -range 1 0 /lab_05/next_address_out 
wave create -pattern none -portmode out -language vhdl -range 2 0 /lab_05/control_data 
wave create -pattern none -portmode out -language vhdl -range 6 0 /lab_05/q_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_05/clk 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_05/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/w 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/X 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/Y 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/Z 
wave edit invert -start 0ps -end 63369ps Edit:/lab_05/reset 
wave edit invert -start 115813ps -end 227255ps Edit:/lab_05/w 
wave edit invert -start 333234ps -end 421733ps Edit:/lab_05/w 
wave edit invert -start 410807ps -end 533175ps Edit:/lab_05/x 
wave edit invert -start 628526ps -end 677692ps Edit:/lab_05/x 
wave edit invert -start 726858ps -end 821911ps Edit:/lab_05/y 
wave edit invert -start 833930ps -end 925706ps Edit:/lab_05/z 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/w 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/x 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/y 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 1000ns Edit:/lab_05/z 
wave edit invert -start 221792ps -end 328864ps Edit:/lab_05/w 
wave edit invert -start 294994ps -end 425010ps Edit:/lab_05/x 
wave edit invert -start 522249ps -end 629321ps Edit:/lab_05/x 
wave edit invert -start 592174ps -end 706894ps Edit:/lab_05/y 
WaveCollapseAll -1
wave clipboard restore
