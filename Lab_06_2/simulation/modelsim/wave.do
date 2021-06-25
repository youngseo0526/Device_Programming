view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_06_2/clock1 
wave create -pattern none -portmode in -language vhdl /lab_06_2/clock2 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_06_2/data_in 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_06_2/write_address 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_06_2/read_address 
wave create -pattern none -portmode in -language vhdl /lab_06_2/wr 
wave create -pattern none -portmode buffer -language vhdl -range 7 0 /lab_06_2/data_out 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/clock1 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 150ns -dutycycle 50 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/clock2 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 100ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 100ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/write_address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 100ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/write_address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 120ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/write_address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 150ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/read_address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 120ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/read_address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 150ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/read_address 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/wr 
wave edit invert -start 131225ps -end 219070ps Edit:/lab_06_2/wr 
wave edit invert -start 340534ps -end 408858ps Edit:/lab_06_2/wr 
wave edit invert -start 538998ps -end 614914ps Edit:/lab_06_2/wr 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/wr 
wave edit invert -start 40127ps -end 81338ps Edit:/lab_06_2/wr 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_06_2/wr 
wave edit invert -start 131225ps -end 219070ps Edit:/lab_06_2/wr 
wave edit invert -start 340534ps -end 408858ps Edit:/lab_06_2/wr 
wave edit invert -start 538998ps -end 614914ps Edit:/lab_06_2/wr 
WaveCollapseAll -1
wave clipboard restore
