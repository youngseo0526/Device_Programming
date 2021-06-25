view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_04/clk 
wave create -pattern none -portmode in -language vhdl /lab_04/A 
wave create -pattern none -portmode in -language vhdl /lab_04/B 
wave create -pattern none -portmode in -language vhdl /lab_04/C 
wave create -pattern none -portmode out -language vhdl /lab_04/F 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_04/clk 
wave modify -driver freeze -pattern counter -startvalue 0 -endvalue 1 -type Range -direction Up -period 50ps -step 1 -repeat forever -starttime 0ns -endtime 1000ns Edit:/lab_04/A 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_04/A 
wave modify -driver freeze -pattern random -initialvalue 0 -period 50ps -random_type Uniform -seed 5 -starttime 0ns -endtime 1000ns Edit:/lab_04/A 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_04/A 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_04/B 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_04/C 
wave edit invert -start 399316ps -end 748308ps Edit:/lab_04/A 
wave edit invert -start 198017ps -end 398222ps Edit:/lab_04/B 
wave edit invert -start 599521ps -end 800821ps Edit:/lab_04/B 
wave edit invert -start 740650ps -end 800821ps Edit:/lab_04/A 
wave edit mirror -start 734085ps -end 755966ps Edit:/lab_04/A 
wave edit change_value -start 697983ps -end 776752ps -value 1 Edit:/lab_04/A 
wave edit invert -start 98462ps -end 199111ps Edit:/lab_04/C 
wave edit invert -start 298667ps -end 399316ps Edit:/lab_04/C 
wave edit invert -start 502154ps -end 600615ps Edit:/lab_04/C 
wave edit invert -start 701265ps -end 799726ps Edit:/lab_04/C 
WaveCollapseAll -1
wave clipboard restore
