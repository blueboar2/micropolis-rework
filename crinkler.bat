crinkler.exe ^
  /OVERRIDEALIGNMENTS:17 ^
  /TRANSFORM:CALLS ^
  /COMPMODE:VERYSLOW ^
  /ORDERTRIES:100000 ^
  /HASHTRIES:100000 ^
  /HASHSIZE:1000 ^
  /OUT:x.exe ^
  /SUBSYSTEM:WINDOWS ^
  /ENTRY:entry_point ^
  /REPORT:micropolis_report.html ^
  micropolis.obj ^
  kernel32.lib ^
  user32.lib ^
  gdi32.lib ^
  opengl32.lib ^
  glu32.lib ^
  winmm.lib