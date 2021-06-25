view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /mp/Clock 
wave create -pattern none -portmode in -language vhdl /mp/Reset 
wave create -pattern none -portmode in -language vhdl -range 7 0 /mp/Input 
wave create -pattern none -portmode out -language vhdl -range 7 0 /mp/Output 
wave create -pattern none -portmode out -language vhdl /mp/Halt 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 3000ns Edit:/mp/Clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 5000ns Edit:/mp/Clock 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/mp/Clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns Edit:/mp/Reset 
wave edit invert -start 0ps -end 103478ps Edit:/mp/Reset 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/mp/Input 
wave modify -driver freeze -pattern constant -value 00000100 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/mp/Input 
wave modify -driver freeze -pattern constant -value 00000100 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/mp/Input 
WaveCollapseAll -1
wave clipboard restore
