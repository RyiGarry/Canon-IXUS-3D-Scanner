!mc=require('multicam')
!mc:connect()
!mc:start()
!sys.sleep(5000)
!mc:cmdwait('rec')
!sys.sleep(250)
!mc:init_sync()

#!sys.sleep(1000)
#!mc:cmdwait('preshoot')
#!sys.sleep(250)
#!mc:cmdwait('shoot_hook_sync',{syncat=500})
#!mc:shoot({cont=true, shots=3})
#///!!!!!!mc:cmdwait('shoot_hook_sync')///!!!!!

#set_config_value(cnf_core.bracket_type,3) sets the bracket type to +/-
#set_config_value(cnf_core.tv_bracket_value,3) sets the bracket value to 1 stop.
!mc:cmdwait('call local cnf_core=require"gen/cnf_core" set_config_value(cnf_core.bracket_type,3) set_config_value(cnf_core.tv_bracket_value,3)')
!mc:shoot({cont=true, shots=3})

#!mc:cmdwait('play')
#!sys.sleep(2000)
!mc:cmd('exit')
!sys.sleep(1000)
!for i,lcon in ipairs(mc.cams) do cli:print_status(lcon:mdownload({'A/DCIM'},'/Users/ryiga/Desktop/A/',{fmatch='%.JPG$'})) end
!for i,lcon in ipairs(mc.cams) do con=lcon cli:print_status(cli:execute('rm A/DCIM ')) end