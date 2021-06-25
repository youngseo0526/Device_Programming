view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_11/clock 
wave create -pattern none -portmode in -language vhdl /lab_11/reset 
wave create -pattern none -portmode in -language vhdl /lab_11/enter 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_11/input 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab_11/output 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/reset 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 10000ns Edit:/lab_11/enter 
wave modify -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/input 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/lab_11/clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 50ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/lab_11/clock 
wave edit invert -start 0ps -end 46440ps Edit:/lab_11/reset 
wave edit invert -start 0ps -end 37152ps Edit:/lab_11/enter 
wave modify -driver freeze -pattern constant -value 00000101 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/input 
wave modify -driver freeze -pattern constant -value 00000001 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/input 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/input 
wave modify -driver freeze -pattern constant -value 00000011 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_11/input 
WaveCollapseAll -1
wave clipboard restore
