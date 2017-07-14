## If you want to use Colemak through RDP sessions without hassle, this file will 
## modify the registry to remap keys at the scancode level. 

$KeyMap = "00,00,00,00,00,00,00,00,1d,00,00,00,0e,00,3a,00,1e,00,1e,00,
  27,00,19,00,15,00,18,00,16,00,17,00,26,00,16,00,24,00,15,00,22,00,14,00,19,\
  00,13,00,21,00,12,00,11,00,11,00,10,00,10,00,2d,00,2d,00,2c,00,2c,00,18,00,\
  27,00,17,00,26,00,12,00,25,00,31,00,24,00,23,00,23,00,20,00,22,00,14,00,21,\
  00,1f,00,20,00,13,00,1f,00,32,00,32,00,25,00,31,00,30,00,30,00,2f,00,2f,00,\
  2e,00,2e,00,00,00,00,00"
$RegPath   = 'HKLM:\SYSTEM\CurrentControlSet\Control\Keyboard Layout'
$AttrName  = "Scancode Map"
$hexified = $KeyMap.Split(',') | % { "0x$_"}
New-ItemProperty -Path $RegPath -Name $AttrName -PropertyType Binary -Value ([byte[]]$hexified)
