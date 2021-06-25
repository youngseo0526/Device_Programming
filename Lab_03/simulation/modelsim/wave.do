view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_03/Clock 
wave create -pattern none -portmode in -language vhdl /lab_03/reset 
wave create -pattern none -portmode in -language vhdl /lab_03/Load_A 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_03/A 
wave create -pattern none -portmode in -language vhdl /lab_03/S 
wave create -pattern none -portmode buffer -language vhdl -range 1 0 /lab_03/state_out 
wave create -pattern none -portmode buffer -language vhdl /lab_03/Done 
wave create -pattern none -portmode buffer -language vhdl -range 3 0 /lab_03/B 
wave modify -driver freeze -pattern clock -initialvalue - -period 100ns -dutycycle 50 -starttime 0ns -endtime 2000ns Edit:/lab_03/Clock 
wave modify -driver freeze -pattern constant -value 1 -starttime 0ns -endtime 2000ns Edit:/lab_03/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns Edit:/lab_03/Load_A 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns Edit:/lab_03/S 
wave modify -driver freeze -pattern constant -value 00000000 -range 7 0 -starttime 0ns -endtime 2000ns Edit:/lab_03/A 
wave edit invert -start 0ps -end 37197ps Edit:/lab_03/reset 
wave edit invert -start 161915ps -end 344615ps Edit:/lab_03/Load_A 
wave edit invert -start 573265ps -end 835829ps Edit:/lab_03/S 
wave edit invert -start 161915ps -end 344615ps Edit:/lab_03/Load_A 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 2000ns Edit:/lab_03/Clock 
wave edit invert -start 317265ps -end 588581ps Edit:/lab_03/Load_A 
wave edit invert -start 161915ps -end 344615ps Edit:/lab_03/S 
wave edit invert -start 573265ps -end 835829ps Edit:/lab_03/S 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 2000ns Edit:/lab_03/S 
wave edit invert -start 916786ps -end 1183726ps Edit:/lab_03/S 
wave edit change_value -start 334769ps -end 562325ps -value 10010111 Edit:/lab_03/A 
WaveCollapseAll -1
wave clipboard restore
