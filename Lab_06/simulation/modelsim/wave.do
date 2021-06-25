view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_06/data_in 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_06/address 
wave create -pattern none -portmode in -language vhdl /lab_06/wr 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab_06/data_out 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/wr 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/address 
wave edit invert -start 65767ps -end 81625ps Edit:/lab_06/wr 
wave edit invert -start 154855ps -end 204762ps Edit:/lab_06/wr 
wave edit invert -start 154855ps -end 204762ps Edit:/lab_06/wr 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/wr 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 50ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 20ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/address 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Exponential -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Normal -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Uniform -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave modify -driver freeze -pattern random -initialvalue 00000000 -period 10ns -random_type Poisson -seed 5 -range 7 0 -starttime 0ns -endtime 1000ns Edit:/lab_06/data_in 
wave edit invert -start 7696ps -end 12360ps Edit:/lab_06/wr 
wave edit invert -start 27986ps -end 33350ps Edit:/lab_06/wr 
wave edit invert -start 48042ps -end 53873ps Edit:/lab_06/wr 
wave edit invert -start 67516ps -end 74046ps Edit:/lab_06/wr 
WaveCollapseAll -1
wave clipboard restore
