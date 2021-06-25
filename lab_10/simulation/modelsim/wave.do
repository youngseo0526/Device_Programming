view wave 
wave clipboard store
wave create -pattern none -portmode in -language vhdl /lab_10_mp_ec2/clock 
wave create -pattern none -portmode in -language vhdl /lab_10_mp_ec2/reset 
wave create -pattern none -portmode in -language vhdl /lab_10_mp_ec2/enter 
wave create -pattern none -portmode in -language vhdl -range 7 0 /lab_10_mp_ec2/input 
wave create -pattern none -portmode out -language vhdl -range 7 0 /lab_10_mp_ec2/output 
wave create -pattern none -portmode out -language vhdl /lab_10_mp_ec2/halt 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 10000ns Edit:/lab_10_mp_ec2/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns Edit:/lab_10_mp_ec2/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 10000ns Edit:/lab_10_mp_ec2/enter 
wave modify -driver freeze -pattern constant -value 00000100 -range 7 0 -starttime 0ns -endtime 10000ns Edit:/lab_10_mp_ec2/input 
wave edit invert -start 0ps -end 83516ps Edit:/lab_10_mp_ec2/reset 
wave edit invert -start 491819ps -end 992918ps Edit:/lab_10_mp_ec2/enter 
wave edit invert -start 1503297ps -end 1985837ps Edit:/lab_10_mp_ec2/enter 
wave modify -driver freeze -pattern constant -value 00000010 -range 7 0 -starttime 1500ns -endtime 10000ns Edit:/lab_10_mp_ec2/input 
wave modify -driver freeze -pattern clock -initialvalue 0 -period 100ns -dutycycle 50 -starttime 0ns -endtime 100000ns Edit:/lab_10_mp_ec2/clock 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100000ns Edit:/lab_10_mp_ec2/reset 
wave modify -driver freeze -pattern constant -value 0 -starttime 0ns -endtime 100000ns Edit:/lab_10_mp_ec2/enter 
wave edit invert -start 0ps -end 111355ps Edit:/lab_10_mp_ec2/reset 
wave modify -driver freeze -pattern constant -value 00000100 -range 7 0 -starttime 0ns -endtime 100000ns Edit:/lab_10_mp_ec2/input 
wave edit invert -start 1020757ps -end 1948718ps Edit:/lab_10_mp_ec2/enter 
WaveCollapseAll -1
wave clipboard restore
