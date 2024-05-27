function download_and_delete()
  for i,lcon in ipairs(mc.cams) do
    con=lcon
    cli:print_status(cli:execute('mdl A/DCIM /some/path -fmatch=%.JPG$ -fmatch=%.CRW$'))
    cli:print_status(cli:execute('rm A/DCIM '))
  end
end