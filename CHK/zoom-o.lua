!mc=require('multicam')
!mc:connect()
!mc:start()
!mc:cmdwait('rec')
!mc:cmdwait('call set_zoom(30)')
!mc:cmdwait('call set_zoom(90)')
!mc:cmdwait('call set_zoom(120)')
!mc:cmd('exit')