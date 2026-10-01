format MS COFF
public entry_point
include 'INCLUDE/win32a.inc'

extrn '__imp__wglSwapBuffers@4'              as wglSwapBuffers:dword
extrn '__imp__wglUseFontBitmapsA@16'         as wglUseFontBitmapsA:dword
extrn '__imp__glBegin@4'                     as glBegin:dword
extrn '__imp__glBlendFunc@8'                 as glBlendFunc:dword
extrn '__imp__glClear@4'                     as glClear:dword
extrn '__imp__glClearColor@16'               as glClearColor:dword
extrn '__imp__glColor4ubv@4'                 as glColor4ubv:dword
extrn '__imp__glEnable@4'                    as glEnable:dword
extrn '__imp__glDisable@4'                   as glDisable:dword
extrn '__imp__glCallLists@12'                as glCallLists:dword
extrn '__imp__glEnd@0'                       as glEnd:dword
extrn '__imp__glFogf@8'                      as glFogf:dword
extrn '__imp__glFogfv@8'                     as glFogfv:dword
extrn '__imp__glGetFloatv@8'                 as glGetFloatv:dword
extrn '__imp__glLightfv@12'                  as glLightfv:dword
extrn '__imp__glLoadIdentity@0'              as glLoadIdentity:dword
extrn '__imp__glMatrixMode@4'                as glMatrixMode:dword
extrn '__imp__glNormal3fv@4'                 as glNormal3fv:dword
extrn '__imp__glVertex3fv@4'                 as glVertex3fv:dword
extrn '__imp__glPushMatrix@0'                as glPushMatrix:dword
extrn '__imp__glPopMatrix@0'                 as glPopMatrix:dword
extrn '__imp__glRasterPos2i@8'               as glRasterPos2i:dword
extrn '__imp__glViewport@16'                 as glViewport:dword
extrn '__imp__glRotatef@16'                  as glRotatef:dword
extrn '__imp__glScalef@12'                   as glScalef:dword
extrn '__imp__glTranslatef@12'               as glTranslatef:dword
extrn '__imp__wglChoosePixelFormat@8'        as wglChoosePixelFormat:dword
extrn '__imp__wglCreateContext@4'            as wglCreateContext:dword
extrn '__imp__wglMakeCurrent@8'              as wglMakeCurrent:dword

extrn '__imp__ExitProcess@4'                  as ExitProcess:dword
extrn '__imp__LoadLibraryA@4'                 as LoadLibraryA:dword
extrn '__imp__GetProcAddress@8'               as GetProcAddress:dword

extrn '__imp__SetPixelFormat@12'              as SetPixelFormat:dword
extrn '__imp__SelectObject@8'                 as SelectObject:dword
extrn '__imp__CreateFontIndirectA@4'          as CreateFontIndirectA:dword

extrn '__imp__ChangeDisplaySettingsA@8'       as ChangeDisplaySettingsA:dword
extrn '__imp__CreateWindowExA@48'             as CreateWindowExA:dword
extrn '__imp__GetAsyncKeyState@4'             as GetAsyncKeyState:dword
extrn '__imp__GetDC@4'                        as GetDC:dword
extrn '__imp__ShowCursor@4'                   as ShowCursor:dword
extrn '__imp__PeekMessageA@20'                as PeekMessageA:dword
extrn '__imp__TranslateMessage@4'             as TranslateMessage:dword
extrn '__imp__DispatchMessageA@4'             as DispatchMessageA:dword
extrn '__imp__SetWindowPos@28'                as SetWindowPos:dword
extrn '__imp__SetProcessDpiAwarenessContext@4' as SetProcessDpiAwarenessContext:dword

extrn '__imp__gluCylinder@36'                 as gluCylinder:dword
extrn '__imp__gluDisk@28'                     as gluDisk:dword
extrn '__imp__gluNewQuadric@0'                as gluNewQuadric:dword
extrn '__imp__gluPerspective@32'              as gluPerspective:dword

extrn '__imp__timeGetTime@0'                  as timeGetTime:dword
extrn '__imp__waveOutOpen@24'                 as waveOutOpen:dword
extrn '__imp__waveOutPrepareHeader@12'        as waveOutPrepareHeader:dword
extrn '__imp__waveOutWrite@12'                as waveOutWrite:dword

section '.geom' data readable writeable executable align 1

robot_lower_torso_geometry:
	DD 0.010498046875	; SCALE
	DB 5			; BOXES COUNT
	DB 1			; CYLINDERS COUNT

				; BOX #1
	DB 17, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 14, 69, 149		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB -36, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 14, 69, 149		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 19, -31, 32		; DX, DY, DZ
	DB 22, 0, 0		; ROTX, ROTY, ROTZ
	DB 89, 89, 89		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 0, 31, -32		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 90, 39, 138		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 0, 40, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 154, 25, 145		; SIZEX, SIZEY, SIZEZ

				; CYLINDER #1
	DB -113, -40, 0		; DX, DY, DZ
	DB 0, 45, 0		; ROTX, ROTY, ROTZ
	DB 223, 18, 0		; HEIGHT, RADIUS, 0

robot_arm_geometry:
				; REUSED 18, 0 BEFORE SEGMENT
	DB 80h, 3Ch		; SCALE: 3C800000 = 0.015625
	DB 13			; BOXES COUNT
	DB 7			; CYLINDERS COUNT

				; BOX #1
	DB 55, -83, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 26, 14, 47		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB -39, 56, 25		; DX, DY, DZ
	DB 22, 0, 0		; ROTX, ROTY, ROTZ
	DB 31, 89, 89		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB -36, 10, -45		; DX, DY, DZ
	DB 0, 0, 22		; ROTX, ROTY, ROTZ
	DB 49, 49, 128		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 8, 8, -66		; DX, DY, DZ
	DB 0, 0, 22		; ROTX, ROTY, ROTZ
	DB 32, 32, 32		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 14, 28, 57		; DX, DY, DZ
	DB 0, 0, 22		; ROTX, ROTY, ROTZ
	DB 10, 10, 121		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 14, -14, 0		; DX, DY, DZ
	DB 0, 0, 22		; ROTX, ROTY, ROTZ
	DB 10, 10, 121		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB 39, -89, -40		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 26, 14, 47		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB 0, 14, 45		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 41, 51, 113		; SIZEX, SIZEY, SIZEZ

				; BOX #9
	DB 0, 3, 199		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 28, 40, 12		; SIZEX, SIZEY, SIZEZ

				; BOX #10
	DB 14, 4, 65		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 28, 11, 107		; SIZEX, SIZEY, SIZEZ

				; BOX #11
	DB 0, 16, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 28, 11, 107		; SIZEX, SIZEY, SIZEZ

				; BOX #12
	DB -43, 26, 31		; DX, DY, DZ
	DB 22, 0, 0		; ROTX, ROTY, ROTZ
	DB 51, 51, 51		; SIZEX, SIZEY, SIZEZ

				; BOX #13
	DB 34, -21, 0		; DX, DY, DZ
	DB 22, 0, 0		; ROTX, ROTY, ROTZ
	DB 73, 51, 51		; SIZEX, SIZEY, SIZEZ


				; CYLINDER #1
	DB -1, -36, -3		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 180, 4, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #2
	DB -9, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 180, 4, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #3
	DB -50, 79, -70		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 91, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #4
	DB 55, -41, -14		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 31, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #5
	DB 0, -16, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 31, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #6
	DB -7, -22, -40		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 31, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #7
	DB 13, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 31, 6, 0		; HEIGHT, RADIUS, 0

robot_foot_geometry:
				; REUSED 6, 0 BEFORE SEGMENT
	DB 0EFh, 3Bh		; SCALE: 3BEF0006 = 0.007293703966
	DB 8			; BOXES COUNT
	DB 3			; CYLINDERS COUNT

				; BOX #1
	DB -45, -24, 33		; DX, DY, DZ
	DB 0, 13, 0		; ROTX, ROTY, ROTZ
	DB 64, 49, 98		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 90, 0, 0		; DX, DY, DZ
	DB 0, 166, 0		; ROTX, ROTY, ROTZ
	DB 64, 49, 98		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB -76, 0, -89		; DX, DY, DZ
	DB 0, 173, 0		; ROTX, ROTY, ROTZ
	DB 28, 51, 111		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 65, 0, 0		; DX, DY, DZ
	DB 0, 6, 0		; ROTX, ROTY, ROTZ
	DB 28, 51, 111		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB -65, 27, 199		; DX, DY, DZ
	DB 158, 85, 40		; ROTX, ROTY, ROTZ
	DB 34, 26, 32		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 89, 0, 6		; DX, DY, DZ
	DB 68, 175, 139		; ROTX, ROTY, ROTZ
	DB 34, 26, 32		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB -101, -27, 0		; DX, DY, DZ
	DB 0, 173, 0		; ROTX, ROTY, ROTZ
	DB 28, 26, 52		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB 88, 0, 0		; DX, DY, DZ
	DB 0, 6, 0		; ROTX, ROTY, ROTZ
	DB 28, 26, 52		; SIZEX, SIZEY, SIZEZ

				; CYLINDER #1
	DB 5, 21, 17		; DX, DY, DZ
	DB 0, 135, 0		; ROTX, ROTY, ROTZ
	DB 90, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #2
	DB -5, 21, 25		; DX, DY, DZ
	DB 0, 135, 0		; ROTX, ROTY, ROTZ
	DB 90, 6, 0		; HEIGHT, RADIUS, 0

				; CYLINDER #3
	DB -24, 8, 68		; DX, DY, DZ
	DB 0, 135, 0		; ROTX, ROTY, ROTZ
	DB 62, 25, 0		; HEIGHT, RADIUS, 0

robot_upper_torso_geometry:
				; REUSED 0 BEFORE SEGMENT
	DB 0, 94h, 3Ch		; SCALE: 3C940000 = 0.01806640625
	DB 14			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB -14, -10, -114	; DX, DY, DZ
	DB 28, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 8, 54		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 29, 0, 0		; DX, DY, DZ
	DB 28, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 8, 54		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 0, 30, 71		; DX, DY, DZ
	DB 5, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 8, 126		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB -29, 0, 0		; DX, DY, DZ
	DB 5, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 8, 126		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 47, -37, 10		; DX, DY, DZ
	DB 5, 0, 170		; ROTX, ROTY, ROTZ
	DB 31, 38, 132		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB -66, 0, 0		; DX, DY, DZ
	DB 5, 0, 10		; ROTX, ROTY, ROTZ
	DB 31, 38, 132		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB 33, 0, 0		; DX, DY, DZ
	DB 5, 0, 0		; ROTX, ROTY, ROTZ
	DB 69, 43, 133		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB 0, -49, -67		; DX, DY, DZ
	DB 28, 0, 0		; ROTX, ROTY, ROTZ
	DB 45, 51, 23		; SIZEX, SIZEY, SIZEZ

				; BOX #9
	DB 0, 3, -9		; DX, DY, DZ
	DB 28, 0, 0		; ROTX, ROTY, ROTZ
	DB 34, 34, 34		; SIZEX, SIZEY, SIZEZ

				; BOX #10
	DB 0, 37, 12		; DX, DY, DZ
	DB 28, 0, 0		; ROTX, ROTY, ROTZ
	DB 34, 34, 34		; SIZEX, SIZEY, SIZEZ

				; BOX #11
	DB 0, 26, 9		; DX, DY, DZ
	DB 73, 0, 0		; ROTX, ROTY, ROTZ
	DB 65, 54, 44		; SIZEX, SIZEY, SIZEZ

				; BOX #12
	DB 0, -62, 50		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 80, 52, 79		; SIZEX, SIZEY, SIZEZ

				; BOX #13
	DB 0, 22, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 92, 5, 91		; SIZEX, SIZEY, SIZEZ

				; BOX #14
	DB 0, -16, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 92, 5, 91		; SIZEX, SIZEY, SIZEZ

robot_upper_leg_geometry:
	DD 0.0164794922		; SCALE
	DB 8			; BOXES COUNT
	DB 1			; CYLINDERS COUNT

				; BOX #1
	DB 15, -114, 1		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 17, 72, 27		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB -30, 1, -1		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 17, 72, 27		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 15, 12, -6		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 10, 73, 18		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 0, 23, -18		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 30, 78, 19		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 0, 14, 37		; DX, DY, DZ
	DB 11, 0, 0		; ROTX, ROTY, ROTZ
	DB 21, 58, 23		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 0, 14, -48		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 48, 48, 8		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB -35, 0, 0		; DX, DY, DZ
	DB 0, 0, 22		; ROTX, ROTY, ROTZ
	DB 40, 40, 8		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB 70, 0, 0		; DX, DY, DZ
	DB 0, 0, 157		; ROTX, ROTY, ROTZ
	DB 40, 40, 8		; SIZEX, SIZEY, SIZEZ

				; CYLINDER #1
	DB -61, 50, 36		; DX, DY, DZ
	DB 0, 45, 0		; ROTX, ROTY, ROTZ
	DB 52, 20, 0		; HEIGHT, RADIUS, 0

robot_lower_leg_geometry:
	DD 0.018066406		; SCALE
	DB 10			; BOXES COUNT
	DB 1			; CYLINDERS COUNT

				; BOX #1
	DB -14, -47, 6		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 13, 39, 37		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 30, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 13, 39, 37		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB -18, -52, -20	; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 4, 90, 12		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 8, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 4, 90, 12		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB -5, -14, 13		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 13, 110, 13		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 0, 17, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 24, 83, 30		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB 0, 25, 16		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 18, 55, 15		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB 16, 10, -20		; DX, DY, DZ
	DB 31, 0, 135		; ROTX, ROTY, ROTZ
	DB 26, 32, 4		; SIZEX, SIZEY, SIZEZ

				; BOX #9
	DB 0, -11, 0		; DX, DY, DZ
	DB 31, 0, 135		; ROTX, ROTY, ROTZ
	DB 26, 32, 4		; SIZEX, SIZEY, SIZEZ

				; BOX #10
	DB 0, -11, 0		; DX, DY, DZ
	DB 31, 0, 135		; ROTX, ROTY, ROTZ
	DB 26, 32, 4		; SIZEX, SIZEY, SIZEZ

				; CYLINDER #1
	DB -29, 83, 4		; DX, DY, DZ
	DB 0, 45, 0		; ROTX, ROTY, ROTZ
	DB 24, 11, 0		; HEIGHT, RADIUS, 0

city_ground_geometry:
				; REUSED 0 BEFORE SEGMENT
	DB 0, 0, 40h		; 40000000h = 2.0 = SCALE
	DB 1			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 0, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 136, 1, 96		; SIZEX, SIZEY, SIZEZ

city_ground_beam_geometry:
				; BLUE-GRAY BEAM AT THE BOTTOM OF THE CITY
				; NEAR THE WATER
	DD 2.0			; SCALE
	DB 1			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 0, 0, 0		; DX, DY, DZ
	DB 22, 0, 0		; ROTX, ROTY, ROTZ
	DB 136, 1, 3		; SIZEX, SIZEY, SIZEZ

bridge_geometry:
	DD 0.2314453125		; SCALE
	DB 9			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 1, -22, 53		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 37, 6, 11		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB -8, 5, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 17, 9		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 17, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 17, 9		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB -9, -5, 153		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 37, 6, 11		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB -8, 5, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 17, 9		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 17, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 17, 9		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB 11, 18, 49		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 2, 2, 228		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB -40, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 2, 2, 228		; SIZEX, SIZEY, SIZEZ

				; BOX #9
	DB 20, 255, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 40, 2, 228		; SIZEX, SIZEY, SIZEZ

building_connections_geometry:
	DD 0.248046875		; SCALE
	DB 4			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 8, 17, -44		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 215, 4, 1		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 107, 0, 13		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 1, 4, 28		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 41, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 1, 4, 28		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 107, -1, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 221, 1, 33		; SIZEX, SIZEY, SIZEZ

geometry_for_train:
	DD 0.248046875		; SCALE
	DB 5			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 0, 3, -3		; DX, DY, DZ
	DB 196, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 7, 7		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 0, -2, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 6, 14		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 0, 0, 24		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 10, 50		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB 0, 0, 54		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 10, 50		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 0, 0, 53		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 10, 50		; SIZEX, SIZEY, SIZEZ

building_cross_river_connections_geometry:
	DD 1.0
	DB 1			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB -80, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 228, 1, 1		; SIZEX, SIZEY, SIZEZ

buildings_geometry:
	DD 0.375
	DB 11			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 2, 0, 189		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 64, 1, 38		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 64, 1, 38		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 64, 1, 38		; SIZEX, SIZEY, SIZEZ

				; BOX #4
	DB -1, 0, 123		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 48, 114, 26		; SIZEX, SIZEY, SIZEZ

				; BOX #5
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 48, 114, 26		; SIZEX, SIZEY, SIZEZ

				; BOX #6
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 48, 114, 26		; SIZEX, SIZEY, SIZEZ

				; BOX #7
	DB 16, 44, 189		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 6, 108		; SIZEX, SIZEY, SIZEZ

				; BOX #8
	DB -24, 28, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 8, 6, 108		; SIZEX, SIZEY, SIZEZ

				; BOX #9
	DB 7, 41, 190		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 40, 10, 20		; SIZEX, SIZEY, SIZEZ

				; BOX #10
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 40, 10, 20		; SIZEX, SIZEY, SIZEZ

				; BOX #11
	DB 0, 0, 66		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 40, 10		; SIZEX, SIZEY
				; SIZEZ = 20 - FROM NEXT GEOMETRY
large_building_geometry:
	DD 0.750001192
	DB 3			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 0, 0, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 21, 99, 27		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 0, 97, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 18, 20, 12		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 0, 16, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 2, 19		; SIZEX, SIZEY
				; SIZEZ = 2 - FROM NEXT GEOMETRY

copy_bridges_geometry:
	DD 1.00000023
	DB 5			; COMMANDS COUNT (5 - 1 = 4)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, -3, 0		; DX, DY, DZ
	DB 0, 0			; OPCODE, ROTY

				; COMMAND #2
	DB 51, 0, 0		; DX, DY, DZ
	DB 0, 0			; OPCODE, ROTY

				; COMMAND #3
	DB 51, 0, 0		; DX, DY, DZ
	DB 0, 0			; OPCODE, ROTY
	
				; COMMAND #4
	DB 51, 0, 0		; DX, DY, DZ
	DB 0, 0			; OPCODE, ROTY

town_side_geometry:
	DD 1.0
	DB 13			; COMMANDS COUNT (13 - 1 = 12)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, -7, 27		; DX, DY, DZ
	DB 4, 0			; OPCODE, ROTY (GROUND BEAM)

				; COMMAND #2
	DB 0, 2, 96		; DX, DY, DZ
	DB 3, 0			; OPCODE, ROTY (GROUND)

				; COMMAND #3
	DB 0, 2, 184		; DX, DY, DZ
	DB 2, 45		; OPCODE, ROTY (BUILDINGS)

				; COMMAND #4
	DB 48, 0, 0		; DX, DY, DZ
	DB 8, 45		; OPCODE, ROTY (LARGE BUILDING)

				; COMMAND #5
	DB 35, 17, 20		; DX, DY, DZ
	DB 1, 45		; OPCODE, ROTY (BUILDING CONNECTIONS)

				; COMMAND #6
	DB 2, 3, 0		; DX, DY, DZ
	DB 7, 45		; OPCODE, ROTY (BUILDING CROSS RIVER CONNECTIONS)

				; COMMAND #7
	DB 13, -20, -19		; DX, DY, DZ
	DB 2, 45		; OPCODE, ROTY (BUILDINGS)

				; COMMAND #8
	DB -24, 0, 32		; DX, DY, DZ
	DB 2, 45		; OPCODE, ROTY (BUILDINGS)

				; COMMAND #9
	DB 68, 0, -8		; DX, DY, DZ
	DB 2, 0			; OPCODE, ROTY (BUILDINGS)

				; COMMAND #10
	DB 40, 0, -16		; DX, DY, DZ
	DB 2, 34		; OPCODE, ROTY (BUILDINGS)

				; COMMAND #11
	DB 0, 0, 24		; DX, DY, DZ
	DB 8, 45		; OPCODE, ROTY (LARGE BUILDING)

				; COMMAND #12
	DB 64, 0, 8		; DX, DY, DZ
				; OPCODE, ROTY TAKEN FROM NEXT GEOMETRY
				; [02 - 22] - 80 - 3F
full_town_geometry:
	DD 1.001037836
	DB 4			; COMMANDS COUNT (4 - 1 = 3)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, 0, 0		; DX, DY, DZ
	DB 5, 0			; OPCODE, ROTY (COPY BRIDGES)

				; COMMAND #2
	DB 0, 0, 0		; DX, DY, DZ
	DB 6, 0			; OPCODE, ROTY (TOWN SIDE)

				; COMMAND #3
	DB 0, 0, 0		; DX, DY, DZ
	DB 6, 90		; OPCODE, ROTY (TOWN SIDE)

geometry_for_air_vehicles:
	DD 0.125		; SCALE
	DB 3			; BOXES COUNT
	DB 0			; CYLINDERS COUNT

				; BOX #1
	DB 0, 3, -3		; DX, DY, DZ
	DB 196, 0, 0		; ROTX, ROTY, ROTZ
	DB 11, 7, 7		; SIZEX, SIZEY, SIZEZ

				; BOX #2
	DB 0, -2, 0		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 6, 14		; SIZEX, SIZEY, SIZEZ

				; BOX #3
	DB 0, 0, 24		; DX, DY, DZ
	DB 0, 0, 0		; ROTX, ROTY, ROTZ
	DB 12, 10, 50		; SIZEX, SIZEY, SIZEZ

section '.geomoff' data readable writeable executable align 1

geometry_offsets:
	DD bridge_geometry + 2
	DD building_connections_geometry + 2
	DD buildings_geometry + 2
	DD city_ground_geometry + 1
	DD city_ground_beam_geometry + 2
	DD copy_bridges_geometry + 2
	DD town_side_geometry + 2
	DD building_cross_river_connections_geometry + 2
	DD large_building_geometry + 2

section '.geomcmd' data readable writeable executable align 1

robot_activating:
	DD 1.0			; SCALE
	DB 2			; COMMANDS COUNT (2 - 1 = 1)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, 0, 32		; DX, DY, DZ
	DB 0FFh, 0, 1		; OPCODE, ROTY (ROBOT), 1 (STAND STILL)
	DB 1			; ANIMATION SPEED

standing_still_robot:
	DB 00, 80h, 3Fh		; 01h FROM PREVIOUS TABLE
				; 3F800001 = 1.000000119
	DB 2			; COMMANDS COUNT (2 - 1 = 1)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, 0, 32		; DX, DY, DZ
	DB 0FFh, 0, 1		; OPCODE, ROTY (ROBOT), 1 (STAND STILL)
	DB 0			; ANIMATION SPEED (NO ANIMATION)

moving_robot_and_train:
	DB 80h, 3Fh		; 1 0 FROM PREVIOUS TABLE
				; 3F80001 ~ 1
	DB 3			; COMMANDS COUNT (3 - 1 = 2)
	DB -1			; SPECIAL

				; COMMAND #1
	DB 0, 0, 32		; DX, DY, DZ
	DB 0FFh, 0, 0		; OPCODE, ROTY (ROBOT), 0 (MOVE SLOWLY)
	DB 4			; ANIMATION SPEED

				; COMMAND #2
	DB 85, 17, 48		; DX, DY, DZ
	DB 0FDh, 0, 0		; OPCODE, ROTY (TRAIN), 0 (MOVE SLOWLY)
	DB 0			; UNUSED

section '.cnt' data readable writeable executable align 1

content_to_include:
	DD empty_geometry + 1
	DD moving_robot_and_train
	DD robot_activating + 2
	DD standing_still_robot + 1

section '.tree' data readable writeable executable align 1

robots_parts_tree:

	DB 1			; 1
	DB 2			; 1 -> 2
	DB 3, 0			; 1 -> 2 -> 3
	DB 4, 0			; 1 -> 2 -> 3
				;        -> 4
	DB 0

	DB 5			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5
	DB 6			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5 -> 6
	DB 7			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5 -> 6 -> 7
	DB 0, 0, 0

	DB 8			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5 -> 6 -> 7
				;   -> 8
	DB 9			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5 -> 6 -> 7
				;   -> 8 -> 9
	DB 10			; 1 -> 2 -> 3
				;        -> 4
				;   -> 5 -> 6 -> 7
				;   -> 8 -> 9 -> 10
	DB 0, 0, 0, 0

section '.rbtanim' data readable writeable executable align 1

robot_animation_tables:

; Walking robot animation
; Each entry is 4 bytes in form of A, FM, P, O
; Calculated using formula O + A * sin(t * FM + P * PI/128)

	DB 0, 0, 0, 0		; robot_lower_torso_animation translate Z
	DB 4, 2, 63, 0		; robot_lower_torso_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_torso_animation translate X

	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate Z

	DB 0, 0, 0, -5		; robot_upper_torso_animation translate Z
	DB 0, 0, 0, 15		; robot_upper_torso_animation translate Y
	DB 0, 0, 0, 0		; robot_upper_torso_animation translate X

	DB 0, 0, 0, 0		; robot_upper_torso_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_torso_animation rotate Y
	DB 10, 1, 0, 0		; robot_upper_torso_animation rotate Z

	DB 0, 0, 0, 0		; robot_arm_1_animation translate Z
	DB 0, 0, 0, 0		; robot_arm_1_animation translate Y
	DB 0, 0, 0, 10		; robot_arm_1_animation translate X

	DB 5, 2, 0, 0		; robot_arm_1_animation rotate X
	DB 0, 0, 0, 0		; robot_arm_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_arm_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_arm_2_animation translate Z
	DB 0, 0, 0, 0		; robot_arm_2_animation translate Y
	DB 0, 0, 0, -10		; robot_arm_2_animation translate X

	DB 5, 2, 0, 0		; robot_arm_2_animation rotate X
	DB 0, 0, 0, 0		; robot_arm_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_arm_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_upper_leg_1_animation translate Z
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation translate Y
	DB 0, 0, 0, 10		; robot_upper_leg_1_animation translate X

	DB 20, 1, 0, 50		; robot_upper_leg_1_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_lower_leg_1_animation translate Z
	DB 0, 0, 0, -20		; robot_lower_leg_1_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation translate X

	DB 30, 1, 63, -100	; robot_lower_leg_1_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_foot_1_animation translate Z
	DB 0, 0, 0, -20		; robot_foot_1_animation translate Y
	DB 0, 0, 0, 0		; robot_foot_1_animation translate X

	DB 20, 1, 96, 35	; robot_foot_1_animation rotate X
	DB 0, 0, 0, 0		; robot_foot_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_foot_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_upper_leg_2_animation translate Z
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation translate Y
	DB 0, 0, 0, -10		; robot_upper_leg_2_animation translate X

	DB 20, 1, 127, 50	; robot_upper_leg_2_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_lower_leg_2_animation translate Z
	DB 0, 0, 0, -20		; robot_lower_leg_2_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation translate X

	DB 30, 1, -65, -100	; robot_lower_leg_2_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_foot_2_animation translate Z
	DB 0, 0, 0, -20		; robot_foot_2_animation translate Y
	DB 0, 0, 0, 0		; robot_foot_2_animation translate X

	DB 20, 1, -33, 35	; robot_foot_2_animation rotate X
	DB 0, 0, 0, 0		; robot_foot_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_foot_2_animation rotate Z

; Robot stand up animation
; Each entry is 4 bytes in form of A, FM, P, O
; Calculated using formula O + A * sin(t * FM + P * PI/128)

	DB 0, 0, 0, 0		; robot_lower_torso_animation translate Z
	DB 7, 1, -65, -8	; robot_lower_torso_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_torso_animation translate X

	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_torso_animation rotate Z

	DB 0, 0, 0, -5		; robot_upper_torso_animation translate Z
	DB 0, 0, 0, 15		; robot_upper_torso_animation translate Y
	DB 0, 0, 0, 0		; robot_upper_torso_animation translate X

	DB 16, 1, 63, 16	; robot_upper_torso_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_torso_animation rotate Y
	DB 0, 0, 0, 0		; robot_upper_torso_animation rotate Z

	DB 0, 0, 0, 0		; robot_arm_1_animation translate Z
	DB 0, 0, 0, 0		; robot_arm_1_animation translate Y
	DB 0, 0, 0, 10		; robot_arm_1_animation translate X

	DB 6, 2, -65, 0		; robot_arm_1_animation rotate X
	DB 0, 0, 0, 0		; robot_arm_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_arm_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_arm_2_animation translate Z
	DB 0, 0, 0, 0		; robot_arm_2_animation translate Y
	DB 0, 0, 0, -10		; robot_arm_2_animation translate X

	DB 6, 2, -65, 0		; robot_arm_2_animation rotate X
	DB 0, 0, 0, 0		; robot_arm_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_arm_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_upper_leg_1_animation translate Z
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation translate Y
	DB 0, 0, 0, 10		; robot_upper_leg_1_animation translate X

	DB 20, 1, 63, 70	; robot_upper_leg_1_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_upper_leg_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_lower_leg_1_animation translate Z
	DB 0, 0, 0, -20		; robot_lower_leg_1_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation translate X

	DB 25, 1, -65, -80	; robot_lower_leg_1_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_leg_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_foot_1_animation translate Z
	DB 0, 0, 0, -20		; robot_foot_1_animation translate Y
	DB 0, 0, 0, 0		; robot_foot_1_animation translate X

	DB 6, 1, 63, 8		; robot_foot_1_animation rotate X
	DB 0, 0, 0, 0		; robot_foot_1_animation rotate Y
	DB 0, 0, 0, 0		; robot_foot_1_animation rotate Z

	DB 0, 0, 0, 0		; robot_upper_leg_2_animation translate Z
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation translate Y
	DB 0, 0, 0, -10		; robot_upper_leg_2_animation translate X

	DB 20, 1, 63, 70	; robot_upper_leg_2_animation rotate X
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_upper_leg_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_lower_leg_2_animation translate Z
	DB 0, 0, 0, -20		; robot_lower_leg_2_animation translate Y
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation translate X

	DB 25, 1, -65, -80	; robot_lower_leg_2_animation rotate X
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_lower_leg_2_animation rotate Z

	DB 0, 0, 0, 0		; robot_foot_2_animation translate Z
	DB 0, 0, 0, -20		; robot_foot_2_animation translate Y
	DB 0, 0, 0, 0		; robot_foot_2_animation translate X

	DB 6, 1, 63, 8		; robot_foot_2_animation rotate X
	DB 0, 0, 0, 0		; robot_foot_2_animation rotate Y
	DB 0, 0, 0, 0		; robot_foot_2_animation rotate Z

section '.rbtpart' data readable writeable executable align 1

robot_parts_geometry:

	DD 0			; PART 0 IS NOT USED (USED IN PARTS TREE AS A DELIMITER)
	DD robot_lower_torso_geometry + 2
	DD robot_upper_torso_geometry + 1
	DD robot_arm_geometry
	DD robot_arm_geometry	; WILL BE MIRRORED
	DD robot_upper_leg_geometry + 2
	DD robot_lower_leg_geometry + 2
	DD robot_foot_geometry
	DD robot_upper_leg_geometry + 2
	DD robot_lower_leg_geometry + 2
	DD robot_foot_geometry

	DD 0			; SEEMS NOT USED

section '.camera' data readable writeable executable align 1

camera_presets:
				; CAMERA PRESET #0
	DB -127, -127, 0	; Z/Y/X TRANSLATION
	DB -2, 24		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 0, 0			; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 1, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -25		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #1
	DB -20, -5, 0		; Z/Y/X TRANSLATION
	DB 0, 40		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 8, 50		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 1, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -20		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #2
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB 0, -10		; X ANGULAR SPEED + X INITIAL ANGLE
	DB -15, 90		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -15		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 1			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 15		; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #3
	DB -4, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 10		; X ANGULAR SPEED + X INITIAL ANGLE
	DB -20, 127		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 1			; REFERENCE OBJECT (ROBOT)
	DB 1			; FOG DENSITY

				; CAMERA PRESET #4
	DB -16, -4, 0		; Z/Y/X TRANSLATION
	DB 2, 0			; X ANGULAR SPEED + X INITIAL ANGLE
	DB 10, 30		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 2			; REFERENCE OBJECT (TRAIN)
	DB 1			; FOG DENSITY

				; CAMERA PRESET #5
	DB -40, -127, 0		; Z/Y/X TRANSLATION
	DB -2, 30		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 5, 30		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 50		; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #6
	DB -4, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 20		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 0, 0			; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 2, 10		; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 1			; REFERENCE OBJECT (ROBOT)
	DB 40			; FOG DENSITY

				; CAMERA PRESET #7
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 0			; X ANGULAR SPEED + X INITIAL ANGLE
	DB -30, 0		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -60		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 19		; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 93		; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #8
	DB 0, 3, 0		; Z/Y/X TRANSLATION
	DB 0, -25		; X ANGULAR SPEED + X INITIAL ANGLE
	DB -10, -80		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -1		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 1, 3			; X LINEAR SPEED + X INITIAL POSITION
	DB 1			; REFERENCE OBJECT (ROBOT)
	DB 1			; FOG DENSITY

				; CAMERA PRESET #9
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB -23, -15		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 0, 0			; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 2			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, -3		; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 1			; REFERENCE OBJECT (ROBOT)
	DB 1			; FOG DENSITY

				; CAMERA PRESET #10
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 20		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 12, 0		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 1, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, -5		; Y LINEAR SPEED + Y INITIAL POSITION
	DB -10, -128		; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 1			; FOG DENSITY

				; CAMERA PRESET #11
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 35		; X ANGULAR SPEED + X INITIAL ANGLE
	DB 0, 0			; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, -15		; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, -3		; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, -1		; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT
	DB 40			; FOG DENSITY

				; CAMERA PRESET #12
	DB -4, 0, 0		; Z/Y/X TRANSLATION
	DB 0, 10		; X ANGULAR SPEED + X INITIAL ANGLE
	DB -20, 0		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 0, 0			; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 0			; X LINEAR SPEED + X INITIAL POSITION
	DB 1			; REFERENCE OBJECT (ROBOT)
	DB 1			; FOG DENSITY

				; CAMERA PRESET #13
	DB 0, 0, 0		; Z/Y/X TRANSLATION
	DB 3, 2			; X ANGULAR SPEED + X INITIAL ANGLE
	DB 4, -40		; Y ANGULAR SPEED + Y INITIAL ANGLE
	DB 0, 0			; Z ANGULAR SPEED + Z INITIAL ANGLE
	DB 0, 0			; Z LINEAR SPEED + Z INITIAL POSITION
	DB 3, 127		; Y LINEAR SPEED + Y INITIAL POSITION
	DB 0, 30		; X LINEAR SPEED + X INITIAL POSITION
	DB 0			; REFERENCE OBJECT (ROBOT)
	DB 3			; FOG DENSITY

section '.scenes' data readable writeable executable align 1

scenes_data:

; structure:
; byte 0: length in chunks of 435 ms
; byte 1: additional content to include except city (see content_to_include label)
;  0: nothing
;  1: moving train + moving robot
;  2: robot turns on and stands up
;  3: robot turned off
; byte 2: camera positon and path preset (see camera_presets label)
;  0: camera points up showing air traffic from bottom, moving down
;  1: camera points up showing air traffic, moving left, flying under bridge
;  2: camera stands still, but rotates, showing bridge side-to-side
;  3: camera flies in half-circle showing object from sides
;  4: camera flies back following the small train from side
;  5: camera slightly below air traffic, pointing up, slightly rotating
;  6: camera exactly in front of the robot following him
;  7: camera stands still, but rotates, showing small train side-to-side
;  8: camera flying backwards, showing robot legs
;  9: camera stands still, but rotates vertically, showing robot from bottom to top
;  10: camera flies and rotates, located slightly under the bridge
;  11: camera is in front of the robot, stands still
;  12: camera follows robot showing from one side
;  13: camera is inside air traffic rotating slightly down
; byte 3: local time of scene in chunks of 435 ms

	DB 32, 0, 5, 0		; 000.000 - 013.920 - CAMERA POINTING TO AIR TRAFFIC FROM SIDE
	DB 32, 0, 0, 0		; 013.920 - 027.840 - CAMERA POINTING TO AIR TRAFFIC FROM BOTTOM
	DB 16, 0, 1, 0		; 027.840 - 034.800 - CAMERA POINTING TO AIR TRAFFIC FROM BOTTOM SHOWING BRIDGE
	DB 16, 0, 2, 0		; 034.800 - 041.760 - CAMERA POINTING TO BRIDGE
	DB 16, 0, 10, 0		; 041.760 - 048.720 - CAMERA POINTING TO BUILDINGS MOVING UNDER BRIDGE
	DB 16, 1, 7, 0		; 048.720 - 055.680 - CAMERA POINTING TO SMALL TRAIN
	DB 16, 1, 4, 16		; 055.680 - 062.640 - CAMERA POINTING SLIGHTLY ABOVE SMALL TRAIN
	DB 16, 1, 10, 64	; 062.640 - 069.600 - CAMERA POINTING BELOW SMALL TRAIN/BRIDGE
	DB 16, 3, 8, 0		; 069.600 - 076.560 - CAMERA POINTING TO ROBOTS LEGS
	DB 16, 3, 9, 0		; 076.560 - 083.520 - CAMERA SHOWS ROBOT FROM TOP TO BOTTOM
	DB 24, 3, 3, 0		; 083.520 - 093.960 - CAMERA FLIES AROUND ROBOT IN HALF-CIRCLE FRONT
	DB 8, 2, 3, 32		; 093.960 - 097.440 - ROBOT STANDS UP
	DB 16, 1, 3, 0		; 097.440 - 104.400 - ROBOT WALKS, CAMERA FOLLOWS IN HALF-CIRCLE BEHIND
	DB 16, 1, 12, 6		; 104.400 - 111.360 - ROBOT WALKS, CAMERA FOLLOWS BY SIDE
	DB 16, 1, 3, 12		; 111.360 - 118.320 - ROBOT WALKS, CAMERA FOLLOWS IN HALF-CIRCLE FROM ANOTHER SIDE
	DB 12, 1, 12, 18	; 118.320 - 123.540 - ROBOT WALKS, CAMERA FOLLOWS BEHIND
	DB 1, 1, 4, 20		; 123.540 - 123.975 - CAMERA POINTING TO SMALL TRAIN
	DB 1, 1, 4, 24		; 123.975 - 124.410 - CAMERA POINTING TO SMALL TRAIN, IT MOVES BETWEEN SCENES
	DB 1, 1, 4, 28		; 124.410 - 124.845 - CAMERA POINTING TO SMALL TRAIN, IT MOVES BETWEEN SCENES
	DB 1, 1, 4, 32		; 124.845 - 125.280 - CAMERA POINTING TO SMALL TRAIN, IT MOVES BETWEEN SCENES
	DB 48, 1, 13, 8		; 125.280 - 146.160 - CAMERA POINTING TO AIR TRAFFIC INSIDE IT
	DB 32, 1, 10, 8		; 146.160 - 160.080 - CAMERA POINTING TO THE WALKING ROBOT FROM AFAR
	DB 32, 1, 6, 0		; 160.080 - 174.000 - CAMERA IS FOLLOWING THE WALKING ROBOT
				; BUT WITH WHITE FOG - SO CITY IS NOT VISIBLE
	DB 12, 1, 11, 0		; 174.000 - 179.220 - CAMERA IS STABLE SO ROBOT WALKS INTO CAMERA
	DB 255, 0		; THE END		

section '.logfont' data readable writeable executable align 1

log_font_a_structure:
	DD -72			; GLYPH HEIGHT = 72
	DD 0			; GLYPH WIDTH: AUTOMATIC
	DD 0			; ANGLE OF TEXT: 0 DEGREES
	DD 0			; ORIENTATION: 0 DEGREES
	DD 0			; WEIGHT: DON'T CARE
	DB 0			; NO ITALIC
	DB 0			; NO UNDERLINE
	DB 0			; NO STRIKEOUT
	DB 0			; DEFAULT CHARSET
	DB 0			; PRECISION: DEFAULT
	DB 0			; CLIP PRECISION: DEFAULT
	DB 0			; QUALITY: DEFAULT
	DB 0			; PITCH AND FAMILY: DEFAULT
	DB 'VERDANA'		; FONT NAME
	DB 25 DUP(0)		; FONT NAME (CONTINUE)

section '.cube' data readable writeable executable align 1

unit_cube_structure:

; QUAD 1
	DD 0.0, 0.0, -1.0	; NORMAL
	DD -1.0, -1.0, -1.0	; VERTEX #0
	DD -1.0, 1.0, -1.0	; VERTEX #1
	DD 1.0, 1.0, -1.0	; VERTEX #2
	DD 1.0, -1.0, -1.0	; VERTEX #3

; QUAD 2
	DD 0.0, 0.0, 1.0	; NORMAL
	DD -1.0, 1.0, 1.0	; VERTEX #0
	DD -1.0, -1.0, 1.0	; VERTEX #1
	DD 1.0, -1.0, 1.0	; VERTEX #2
	DD 1.0, 1.0, 1.0	; VERTEX #3

; QUAD 3
	DD -1.0, 0.0, 0.0	; NORMAL
	DD -1.0, -1.0, -1.0	; VERTEX #0
	DD -1.0, -1.0, 1.0	; VERTEX #1
	DD -1.0, 1.0, 1.0	; VERTEX #2
	DD -1.0, 1.0, -1.0	; VERTEX #3

; QUAD 4
	DD 1.0, 0.0, 0.0	; NORMAL
	DD 1.0, -1.0, 1.0	; VERTEX #0
	DD 1.0, -1.0, -1.0	; VERTEX #1
	DD 1.0, 1.0, -1.0	; VERTEX #2
	DD 1.0, 1.0, 1.0	; VERTEX #3

; QUAD 5
	DD 0.0, -1.0, 0.0	; NORMAL
	DD -1.0, -1.0, -1.0	; VERTEX #0
	DD 1.0, -1.0, -1.0	; VERTEX #1
	DD 1.0, -1.0, 1.0	; VERTEX #2
	DD -1.0, -1.0, 1.0	; VERTEX #3

; QUAD 6
	DD 0.0, 1.0, 0.0	; NORMAL
	DD 1.0, 1.0, -1.0	; VERTEX #0
	DD -1.0, 1.0, -1.0	; VERTEX #1
	DD -1.0
fog_color_table:
	DD 1.0, 1.0		; VERTEX #2, ALSO REUSED FOR FOG COLOR (1, 1, 1, 1)
	DD 1.0, 1.0, 1.0	; VERTEX #3	

section '.light' data readable writeable executable align 1

light_position:
        DD 32.0, 128.0, 64.0, 1.0

section '.colors' data readable writeable executable align 1

colors_table:
	DB 79,  79,  79      ; DARK GRAY
	DB 96,  96,  96      ; GRAY
	DB 128, 128, 128     ; MEDIUM GRAY
	DB 175, 175, 175     ; GRAY
	DB 116, 146, 174     ; BLUE
	DB 166, 211, 251     ; LIGHT BLUE
	DB 175, 163, 116     ; SAND
	DB 251, 220, 166     ; LIGHT SAND

section '.reflect' data readable writeable executable align 1

reflection_color:
	DB 0, 0, 31, 179

section '.randomd' data readable writeable executable align 1

sub_for_random_number:	dd 1.0
mul_for_random_number:	dd 0.000061035156

section '.sound' data readable writeable executable align 1

constant_1:	DD 1.0						; CONSTANT FOR TIME (COUNTER)
								; CUTOFF FOR FILTER #02 COEFFICIENTS:
								; 1848 + 1200 * SIN(CNT * 0.0000058710575) + 420 * COS(CNT * 0.001663208)
first_wave_inside_cos_coefficient:	DD 0.001663208 
both_waves_before_cos_coefficient:	DD 420.0
first_wave_inside_sin_coefficient:	DD 0.0000058710575
first_wave_before_sin_coefficient:	DD 1200.0
first_wave_sum_coefficient:		DD 1848.0

								; CUTOFF FOR FILTER #03 COEFFICIENTS:
								; 1672 + 1000 * SIN(CNT * 0.0000041723251) + 420 * COS(CNT * 0.0001001358)
								; 420.0 IS REUSED FROM FIRST WAVE

second_wave_inside_cos_coefficient:	DD 0.0001001358 
second_wave_inside_sin_coefficient:	DD 0.0000041723251
second_wave_before_sin_coefficient:	DD 1000.0
second_wave_sum_coefficient:		DD 1672.0

type_1_note_coefficient:		DD 0.00020833334	; 1/4800
type_1_after_type_5_coefficient:	DD 130.0

coefficient_k_for_sawtooth:		DD 0.14941406
coefficient_b_for_sawtooth:		DD 3296.0

coefficient_for_noise_adding:		DD 0.20019531

coeffieient_for_state_filter:		DD 0.000071237933	; PI / 44100

echo_volume_decrease_every_step:	DD 0.8515625		; VOLUME DECREASE FOR ECHO

section '.animf87' data readable writeable executable align 1

robot_animation_tick_constant:	DD 0.00090026855
moving_by_x_axis_speed:	DD 0.0039978027
scale_for_boxes_while_rendering:	DD 0.5
scene_time_normalization_constant:	DD 0.0007019043

air_transport_z_translate_for_each_vehicle_multiply:	DD 0.010009765625
robot_moving_calculation_constant:	DD 0.10009765625
robot_moving_calculation_constant_2:	DD 0.024536133		; = PI/128

fog_density_constant:	DD 0.0078125		; = 1 / 128

air_transport_x_z_translate_multiply:	DD 200.0
air_transport_y_translate_multiply:	DD 30.0
air_transport_y_translate_addition:	DD 120.0
air_transport_y_rotate_multiply:	DD 180.0
air_transport_speed_of_each_vehicle:	DD 1.5
air_transport_x_y_translate_for_each_vehicle:	DD 15.0
air_transport_z_translate_for_each_vehicle:	DD -100.0

section '.text' data readable writeable executable align 1

text_to_output:		DB '  - Micropolis                                          ASM04 -  ', 0

section '.curscen' data readable writeable executable align 1
pointer_to_current_scene_data:
	DD scenes_data

section '.filter' data readable writeable executable align 1

filter_state_structure:

; FILTER FOR CHANNEL 00

	DB 0			; MODE
	DD 300.0		; CUTOFF
	DD 0.8984375		; COEFFICIENT
	DD 0			; STATE 1
	DD 0			; STATE 2
	DD 0			; STATE 3

; FILTER FOR CHANNEL 01

	DB 1			; MODE
	DD 1304.0		; CUTOFF
	DD 0.8984375		; COEFFICIENT
	DD 0			; STATE 1
	DD 0			; STATE 2
	DD 0			; STATE 3

; FILTER FOR CHANNEL 02

	DB 1			; MODE
cutoff_for_channel_02:	DD 0.0	; CUTOFF
	DD 0.30078125		; COEFFICIENT
	DD 0			; STATE 1
	DD 0			; STATE 2
	DD 0			; STATE 3

; FILTER FOR CHANNEL 03

	DB 0			; MODE
cutoff_for_channel_03:	DD 0.0	; CUTOFF
	DD 0.0751953125		; COEFFICIENT
	DD 0			; STATE 1
	DD 0			; STATE 2
	DD 0			; STATE 3

	DD 0			; SEEMS NOT USED

section '.wave' data readable writeable executable align 1

wave_hdr_structure_1:

	DD pointer_pcm_audio_buffer_1	; POINTER TO PCM AUDIO
	DD 19248			; SIZE OF PLAYING: 19248 BYTES (0.109 SECOND)
	DD 0				; NUMBER OF BYTES RECORDED (NOT USED)
	DD 0				; USER-DEFINED VALUE - NONE
	DD 0				; FLAGS - NONE
	DD 0				; LOOPING - NONE
	DD 0				; INTERNAL TO DRIVERS - NOT USED
	DD 0				; RESERVED

wave_hdr_structure_2:

	DD pointer_pcm_audio_buffer_2	; POINTER TO PCM AUDIO
	DD 19248			; SIZE OF PLAYING: 19248 BYTES (0.109 SECOND)
	DD 0				; NUMBER OF BYTES RECORDED (NOT USED)
	DD 0				; USER-DEFINED VALUE - NONE
	DD 0				; FLAGS - NONE
	DD 0				; LOOPING - NONE
	DD 0				; INTERNAL TO DRIVERS - NOT USED
	DD 0				; RESERVED

wave_format_ex_structure:

	DW 0001			; FORMAT: WAVE_FORMAT_PCM
	DW 2			; CHANNELS: 2 (STEREO)
	DD 44100		; SAMPLES PER SECOND: 44100
	DD 4*44100		; BYTES PER SECOND: 176400
	DW 4			; ONE SAMPLE IS 2 BYTES
	DW 16			; 16 BITS PER SAMPLE
	DW 0			; AUX INFO - NONE

section '.sndtype' data readable writeable executable align 1

sound_type_entries:

; SPECIAL GENERATOR MODES:
; 0 = SQUARE
; 1 = SAWTOOTH

; TYPE 00 (SILENCE)

	DW 0				; ATTACK LENGTH IN SAMPLES
	DW 0				; DECAY/RELEASE START SAMPLE
	DW 1				; DECAY/RELEASE PARAMETER
	DB 0				; SPECIAL GENERATOR MODE
	DD 0.0				; BASE SOUND AMPLITUDE
	DB 0				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.0				; RANDOM/NOISE COEFFICIENT

; TYPE 01

	DW 0				; ATTACK LENGTH IN SAMPLES
	DW 0				; DECAY/RELEASE START SAMPLE
	DW 1				; DECAY/RELEASE PARAMETER
	DB 0				; SPECIAL GENERATOR MODE
	DD 0.5				; BASE SOUND AMPLITUDE
	DB 0				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.0				; RANDOM/NOISE COEFFICIENT

; TYPE 02

	DW 0Ah				; ATTACK LENGTH IN SAMPLES
	DW 50h				; DECAY/RELEASE START SAMPLE
	DW 3778h			; DECAY/RELEASE PARAMETER
	DB 0				; SPECIAL GENERATOR MODE
	DD 1.0				; BASE SOUND AMPLITUDE
	DB 0				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.0				; RANDOM/NOISE COEFFICIENT

; TYPE 03

	DW 14h				; ATTACK LENGTH IN SAMPLES
	DW 0A0h				; DECAY/RELEASE START SAMPLE
	DW 0AF0h			; DECAY/RELEASE PARAMETER
	DB 1				; SPECIAL GENERATOR MODE
	DD 2.0				; BASE SOUND AMPLITUDE
	DB 6				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.6015625			; RANDOM/NOISE COEFFICIENT

; TYPE 04

	DW 012Ch			; ATTACK LENGTH IN SAMPLES
	DW 0C8h				; DECAY/RELEASE START SAMPLE
	DW 0320h			; DECAY/RELEASE PARAMETER
	DB 1				; SPECIAL GENERATOR MODE
	DD 0.69921875			; BASE SOUND AMPLITUDE
	DB 1				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.80078125			; RANDOM/NOISE COEFFICIENT

; TYPE 05

	DW 0190h			; ATTACK LENGTH IN SAMPLES
	DW 03E8h			; DECAY/RELEASE START SAMPLE
	DW 03E8h			; DECAY/RELEASE PARAMETER
	DB 1				; SPECIAL GENERATOR MODE
	DD 1.296875			; BASE SOUND AMPLITUDE
	DB 4				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.6015625			; RANDOM/NOISE COEFFICIENT

; TYPE 06

	DW 0190h			; ATTACK LENGTH IN SAMPLES
	DW 03E8h			; DECAY/RELEASE START SAMPLE
	DW 04B0h			; DECAY/RELEASE PARAMETER
	DB 1				; SPECIAL GENERATOR MODE
	DD 2.5				; BASE SOUND AMPLITUDE
	DB 0				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.0				; RANDOM/NOISE COEFFICIENT

; TYPE 07

	DW 0Ah				; ATTACK LENGTH IN SAMPLES
	DW 0708h			; DECAY/RELEASE START SAMPLE
	DW 00C8h			; DECAY/RELEASE PARAMETER
	DB 1				; SPECIAL GENERATOR MODE
	DD 1.0				; BASE SOUND AMPLITUDE
	DB 0				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	DD 0.0				; RANDOM/NOISE COEFFICIENT

section '.pattern' data readable writeable executable align 1

musical_pattern_entries:

; PATTERN 00 (SILENCE)

	DW 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000	; FREQUENCIES IN HZ
	DW 0000, 0000, 0000, 0000, 0000, 0000, 0000, 0000	; ONE FOR EACH STEP
	DB 00, 00, 00, 00, 00, 00, 00, 00			; SOUND TYPES
	DB 00, 00, 00, 00, 00, 00, 00, 00
	DD 0.0							; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.0							; SCALE OF VOLUME

; PATTERN 01

	DW 0320h, 0041h, 0020h, 0041h, 0320h, 0041h, 0020h, 0020h	; FREQUENCIES IN HZ
	DW 0320h, 0041h, 0020h, 0041h, 0320h, 0041h, 0020h, 0041h	; ONE FOR EACH STEP
	DB 02, 01, 02, 02, 02, 01, 02, 02				; SOUND TYPES
	DB 02, 01, 02, 02, 02, 01, 02, 02
	DD 0.0								; PORTION OF SOUND THAT GOES TO ECHO
	DD 1.5								; SCALE OF VOLUME

; PATTERN 02

	DW 03E8h, 03E8h, 03E8h, 0000, 0320h, 00C8h, 0000, 03E8h	; FREQUENCIES IN HZ
	DW 03E8h, 0000, 03E8h, 0258h, 0320h, 00C8h, 0000, 0578h	; ONE FOR EACH STEP
	DB 04, 04, 04, 00, 03, 01, 00, 04			; SOUND TYPES
	DB 04, 00, 04, 04, 03, 01, 00, 04
	DD 0.2001953125						; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.5							; SCALE OF VOLUME

; PATTERN 03

	DW 0000, 0000, 0190h, 0000, 0000, 0000, 0190h, 0000	; FREQUENCIES IN HZ
	DW 0000, 0000, 0190h, 0000, 0000, 0000, 0190h, 0000	; ONE FOR EACH STEP
	DB 00, 00, 05, 00, 00, 00, 05, 00			; SOUND TYPES
	DB 00, 00, 05, 00, 00, 00, 05, 00
	DD 0.30078125						; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.5							; SCALE OF VOLUME

; PATTERN 04

	DW 0105h, 020Bh, 020Bh, 020Bh, 00C4h, 0137h, 008Ah, 0105h	; FREQUENCIES IN HZ
	DW 0041h, 0082h, 01D2h, 0074h, 015Dh, 00AEh, 0115h, 0082h	; ONE FOR EACH STEP
	DB 06, 01, 06, 06, 06, 06, 06, 06			; SOUND TYPES
	DB 06, 06, 06, 06, 01, 06, 06, 06
	DD 0.6015625						; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.69921875						; SCALE OF VOLUME

; PATTERN 05

	DW 0320h, 0041h, 0020h, 0041h, 0320h, 0020h, 0020h, 0041h	; FREQUENCIES IN HZ
	DW 0320h, 0026h, 0026h, 004Dh, 0320h, 0022h, 0022h, 0045h	; ONE FOR EACH STEP
	DB 02, 01, 02, 02, 02, 01, 02, 02			; SOUND TYPES
	DB 02, 01, 02, 02, 02, 01, 02, 02
	DD 0.0							; PORTION OF SOUND THAT GOES TO ECHO
	DD 1.5							; SCALE OF VOLUME

; PATTERN 06

	DW 0105h, 020Bh, 020Bh, 020Bh, 00C4h, 0188h, 0310h, 020Bh	; FREQUENCIES IN HZ
	DW 03A4h, 0082h, 01D2h, 026Eh, 015Dh, 020Bh, 0115h, 0082h	; ONE FOR EACH STEP
	DB 07, 01, 07, 07, 06, 07, 07, 07			; SOUND TYPES
	DB 07, 07, 01, 07, 07, 07, 01, 07
	DD 0.6015625						; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.69921875						; SCALE OF VOLUME

; PATTERN 07

	DW 0620h, 0105h, 0576h, 04DCh, 00C4h, 0416h, 0310h, 020Bh	; FREQUENCIES IN HZ
	DW 0620h, 0105h, 0576h, 04DCh, 00C4h, 0416h, 0310h, 020Bh	; ONE FOR EACH STEP
	DB 07, 01, 07, 07, 06, 07, 07, 07			; SOUND TYPES
	DB 07, 07, 07, 07, 07, 07, 07, 07
	DD 0.69921875						; PORTION OF SOUND THAT GOES TO ECHO
	DD 0.30078125						; SCALE OF VOLUME

section '.music' data readable writeable executable align 1

sound_data:
; Structures, len = 4 BYTES (1 BYTE for each channel - number of pattern used)

	DB 8 DUP(00, 00, 07, 00)
	DB 4 DUP(07, 00, 07, 00)
	DB 4 DUP(07, 02, 07, 00)
	DB 8 DUP(04, 02, 03, 00)
	DB 4 DUP(00, 02, 03, 00)
	DB 4 DUP(01, 00, 03, 07)
	DB 8 DUP(01, 02, 03, 06)
	DB 4 DUP(00, 00, 00, 07)
	DB 4 DUP(04, 00, 00, 07)
	DB 4 DUP(04, 00, 03, 07)
	DB 2 DUP(04, 02, 03, 07)
	DB 2 DUP(00, 02, 07, 04)
	DB 9 DUP(05, 02, 07, 04)
	DB 2 DUP(05, 02, 00, 04)
	DB 2 DUP(05, 00, 02, 04)
	DB 05, 02, 03, 06
	DB 05, 02, 03, 04
	DB 01, 03, 00, 00
	DB 8 DUP(00, 02, 03, 07)
	DB 3 DUP(00, 02, 03, 04)
	DB 00, 00, 00, 04
	DB 2 DUP(05, 02, 03, 04)
	DB 05, 02, 03, 06
	DB 05, 02, 03, 04
	DB 01, 02, 03, 06
	DB 01, 02, 03, 04
	DB 01, 02, 03, 06
	DB 01, 02, 03, 04
	DB 05, 02, 03, 06
	DB 05, 02, 03, 07
	DB 05, 02, 03, 04
	DB 05, 02, 03, 07
	DB 05, 02, 03, 06
	DB 05, 02, 03, 07
	DB 05, 02, 03, 04
	DB 05, 02, 03, 07
	DB 34 DUP(00, 00, 00, 00)	; FADING + SILENCE AT THE END

section '.mscptr' data readable writeable executable align 1

pointer_to_sound_data:
	DD sound_data

section '.wndcls' data readable writeable executable align 1
window_class_and_name:

	DB 'EDIT', 0, 0, 0, 0

section '.pxlstr' data readable writeable executable align 1

pixel_format_descriptor_structure:

	DW 0				; SHOULD BE SIZE OF THE STRUCT
					; IT SEEMS, OPENGL32 DOESN'T REALLY CARE
	DW 0				; VERSION, SHOULD BE 1
					; IT SEEMS, OPENGL32 DOESN'T REALLY CARE
	DD 25h				; FLAGS: PFD_DRAW_TO_WINDOW | PFD_SUPPORT_OPENGL | PFD_DOUBLEBUFFER
	DB 0				; PIXEL TYPE: PFD_TYPE_RGBA
	DB 32				; COLOR BITS: 32 BIT COLOR
	DB 0				; NUMBER OF RED BITPLANES IN COLOR BUFFER
	DB 0				; SHIFT COUNT FOR RED BITPLANES
	DB 0				; NUMBER OF GREEN BITPLANES IN COLOR BUFFER
	DB 0				; SHIFT COUNT FOR GREEN BITPLANES
	DB 0				; NUMBER OF BLUE BITPLANES IN COLOR BUFFER
	DB 0				; SHIFT COUNT FOR BLUE BITPLANES
	DB 0				; NUMBER OF ALPHA BITPLANES IN COLOR BUFFER
	DB 0				; SHIFT COUNT FOR ALPHA BITPLANES
	DB 0				; TOTAL BITPLANES IN ACCUMULATION BUFFER
	DB 0				; RED BITS IN ACCUMULATION BUFFER
	DB 0				; GREEN BITS IN ACCUMULATION BUFFER
	DB 0				; BLUE BITS IN ACCUMULATION BUFFER
	DB 0				; ALPHA BITS IN ACCUMULATION BUFFER
	DB 24				; DEPTH OF THE Z-AXIS BUFFER: 24 BITS
	DB 0				; DEPTH OF STENCIL BUFFER: 0 BITS
	DB 0				; NUMBER OF AUX BUFFERS
	DB 0				; NOT USED
	DB 0				; OVERLAY/UNDERLAY PLANE COUNT
	DD 0				; NOT USED
	DD 0				; TRANSPARENT COLOR INDEX: 0
	DB 0,0,0			; NOT USED

section '.devmode' data readable writeable executable align 1

dev_mode_a_structure:			; one-byte overlap with previous

	DB 32 DUP(0)			; NAME OF DISPLAY DEVICE (DEFAULT)
	DW 00				; DEVMODE SPECIFICATION VERSION (DEFAULT)
	DW 00				; DEVICE DRIVER VERSION (DEFAULT)
	DW 0094h			; STRUCTURE SIZE = 0094
	DW 00				; EXTRA DATA, NOT NEEDED
	DD 001C0000h			; WHICH FIELDS ARE USEFUL:
                                        ; DM_BITSPERPEL, DM_PELSWIDTH, DM_PELSHEIGHT
	DD 0				; X POSITION IN VIRTUAL DESKTOP
	DD 0				; Y POSITION IN VIRTUAL DESKTOP
	DD 0				; DISPLAY ORIENTATION
	DD 0				; FIXED-OUTPUT SCALING MODE
	DW 0				; COLOR/MONOCHROME MODE
	DW 0				; DUPLEX PRINTING
	DW 0				; PRINTER Y RESOLUTION
	DW 0				; TRUETYPE PRINTING OPTION
	DW 0				; PRINTER COLLATION
	DB 32 DUP(0)			; FORM/PAPER NAME
	DW 0				; LOGICAL PIXELS PER INCH
	DD 32				; BITS PER PIXEL = 32
	DD 1920				; WIDTH: 1920
	DD 1080				; HEIGHT: 1080
	DD 0				; DISPLAY FLAGS
	DD 0				; DISPLAY FREQUENCY
	DD 0				; ICM COLOR MANAGEMENT METHOD
	DD 0				; ICM RENDERING INTENT
	DD 0				; MEDIA TYPE
	DD 0				; DITHERING TYPE
	DD 0				; RESERVED 01
	DD 0				; RESERVED 02

	DB 7 DUP(0)			; NOT USED

section '.random' code readable writeable executable align 1

get_random_number_betweeen_minus_1_and_1:

	MOV EAX, [air_traffic_random_number_seed]
	IMUL EAX, 0343FDh
	ADD EAX, 269EC3h
	MOV [air_traffic_random_number_seed], EAX
	SAR EAX, 16
	AND EAX, 7FFFh

	PUSH EAX
	FILD dword [ESP]			; 0 - 32767
	POP EAX

	FMUL dword [mul_for_random_number]		; * 1/16384 --> [0;2)
	FSUB dword [sub_for_random_number]		; [-1;1)

	RET

section '.sndclb' code readable writeable executable align 1

sound_callback_function:

	CMP word [ESP + 8], 03BDh     	; IF WINMM MESSAGE IS NOT WOM_DONE
	JNZ skip_real_callback		; THEN SKIP

	CALL real_sound_callback	; ELSE CALL 'REAL' CALLBACK FUNCTION

skip_real_callback:
	RETN 0014h

section '.render' code readable writeable executable align 1

; Parameter points to data region memory addr + 2
arg_parameter_data_region = 8		; REUSED AS SCALE
current_x_coordinate = -08h
current_y_coordinate = -0Ch
current_z_coordinate = -10h
parameter_1 = -14h
rotate_y_angle = -18h
parameter_2 = -1Ch
parameter_3 = -20h
size_y = -24h
size_z = -28h
objects_renderer:
	ENTER 007Ch, 00
	PUSHA

	MOV ESI, [EBP + arg_parameter_data_region]
	MOV EAX, [ESI - 2]				; FIRST FIELD: DWORD: SCALE
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE INSTEAD OF INPUT PARAMETER
	INC ESI
	INC ESI

	LODSB
	MOVSX EDI, AL					; SECOND FIELD: BYTE: NUMBER OF BOX OBJECTS
	LODSB
	MOVSX EBX, AL					; THIRD FIELD: BYTE: NUMBER OF CYLINDER OBJECTS
							; SPECIAL CASE: FF - FOR MOVING/RECURSIVE OBJECTS

	ADD EDI, EBX					; EDI: TOTAL NUMBER OF OBJECTS
							; EBX: NUMBER OF CYLINDER OBJECTS

	AND dword [EBP + current_z_coordinate], 0	; STARTING Z COORDINATE FOR DELTA-CODING
	AND dword [EBP + current_y_coordinate], 0	; STARTING Y COORDINATE FOR DELTA-CODING
	AND dword [EBP + current_x_coordinate], 0	; STARTING X COORDINATE FOR DELTA-CODING

next_object:

	MOV AL, BYTE [EBP + current_x_coordinate]
	ADD AL, [ESI]
	INC ESI
	MOVSX EAX, AL
	MOV [EBP + current_x_coordinate], EAX		; NEW X = OLD X + DELTA X (4TH FIELD)

	MOV AL, BYTE [EBP + current_y_coordinate]
	ADD AL, [ESI]
	INC ESI
	MOVSX EAX, AL
	MOV [EBP + current_y_coordinate], EAX		; NEW Y = OLD Y + DELTA Y (5TH FIELD)

	MOV AL, BYTE [EBP + current_z_coordinate]
	SUB AL, [ESI]
	INC ESI
	MOVSX EAX, AL
	MOV [EBP + current_z_coordinate], EAX		; NEW Z = OLD Z - DELTA Z (6TH FIELD)

	LODSB
	MOVZX EAX, AL
	SHL EAX, 1
	MOV [EBP + parameter_1], EAX			; parameter_1 = 7TH FIELD * 2

	LODSB
	MOVZX EAX, AL
	SHL EAX, 1
	MOV [EBP + rotate_y_angle], EAX			; rotate_y_angle = 8TH FIELD * 2

	LODSB
	MOVZX EAX, AL
	NEG EAX
	SHL EAX, 1
	MOV [EBP + parameter_2], EAX			; parameter_2 = - 9TH FIELD * 2

	LODSB
	MOVZX EAX, AL
	MOV [EBP + parameter_3], EAX			; parameter_3 = 10TH FIELD

	LODSB
	MOVZX EAX, AL
	MOV [EBP + size_y], EAX				; size_y = 11TH FIELD

	LODSB
	MOVZX EAX, AL
	MOV [EBP + size_z], EAX				; size_z = 12TH FIELD

	ADD EAX, [EBP + parameter_3]
	ADD EAX, [EBP + size_y]				; parameter_3 (most likely = size_x) + size_y + size_z FIELDS
	AND EAX, 7					; MAXIMUM = 8 COLORS

	CMP BYTE [EBP + arg_parameter_data_region + 3], 3Dh
	JGE color_selected				; IF SCALE >= 0.03125 - NORMAL PALETTE
	AND EAX, 3					; FOR LOW SCALING - MAXIMUM = 4 COLORS (GRAY)

color_selected:

	IMUL EAX, 3
	ADD EAX, colors_table				; POINT TO COLOR TABLE FOR SELECTED COLOR
	PUSH EAX
	CALL [glColor4ubv]				; SELECT COLOR (ALPHA IS NOT USED)

	CALL [glPushMatrix]
	PUSH dword [EBP + arg_parameter_data_region]	; SCALE
	PUSH dword [EBP + arg_parameter_data_region]	; SCALE
	PUSH dword [EBP + arg_parameter_data_region]	; SCALE
	CALL [glScalef]					; SET SCALE (uniform)

	FILD dword [EBP + current_z_coordinate]
	PUSH EAX
	FSTP dword [ESP]				; TRANSLATE Z
	FILD dword [EBP + current_y_coordinate]
	PUSH EAX
	FSTP dword [ESP]				; TRANSLATE Y
	FILD dword [EBP + current_x_coordinate]
	PUSH EAX
	FSTP dword [ESP]				; TRANSLATE X
	CALL [glTranslatef]

	CMP EBX, -1					; WORK WITH MOVING/RECURSIVE OBJECTS?
	JNZ draw_still_object				; NO, NORMAL OBJECTS
							; YES, MOVING/RECURSIVE OBJECTS
	PUSH 0
	PUSH 1.0
	PUSH 0
	FILD dword [EBP + rotate_y_angle]
	PUSH EAX
	FSTP dword [ESP]
	CALL [glRotatef]				; ROTATE ONLY BY Y AXIS FOR MOVING/RECURSIVE OBJECTS

							; parameter1 = opcodes

							; opcodes 00-F0h - render recursively with pre-defined address. (used 00-08 only)
							; used 5 bytes: delta_x/y/z + parameter1 (opcode) + rotate_y_angle

							; opcodes F1-FEh - render train.
							; used 7 bytes: delta_x/y/z + opcode + rotate_y_angle + parameter2 + parameter3
							; parameter2: 0 - means - move slowly by X-axis
							; parameter3: seems unused

							; opcode FFh - render robot
							; used 7 bytes: delta_x/y/z + opcode + rotate_y_angle + parameter2 + parameter3
							; parameter2: 0 - means - move slowly by X-axis
							; parameter3: speed of robot animation

	MOVZX EAX, BYTE [ESI - 6]			; parameter_1 FIELD
	CMP EAX, 0F0h
	JBE recursive_render				; 00-08 means - RENDER RECURSIVELY

	MOVZX EAX, BYTE [ESI - 4]			; parameter_2 FIELD
	IMUL EAX, 240
	ADD EAX, robot_animation_tables			; SELECT TABLE WITH MOVING COEFFICIENTS
	MOV [current_robot_move_data_pointer], EAX
	MOV dword [current_robot_part_pointer], robots_parts_tree

	CMP BYTE [ESI - 4], 0
	JNZ skip_movement				; ONLY parameter_2 = 0 objects are moved by X axis
							; (moving robot and moving train). parameter_2 = 1
							; means "staying still robot"
							; and have it's own table to move (robot stays up)

	FLD dword [current_scene_local_time]
	FMUL dword [moving_by_x_axis_speed]		; * 0.0039978027 (/ 250)
	PUSH EAX
	FSTP dword [ESP]
	PUSH 0
	PUSH 0
	CALL [glTranslatef]				; SMALL MOVEMENT BY X AXIS
	
skip_movement:

	PUSH dword [current_object_matrix]
	PUSH 0BA6h					; GL_MODELVIEW_MATRIX
	CALL [glGetFloatv]				; RESERVE MATRIX FOR CURRENT OBJECT
	ADD dword [current_object_matrix], 40h		; POINT TO NEXT MATRIX

	CMP BYTE [ESI-6], 0FFh				; parameter_1 = 0FFh?
	JNZ recursive_render_2				; IF NOT (F1-FE)
							; IF parameter_1 = 0FFh

	FILD dword [EBP + parameter_3]
	FMUL dword [current_scene_local_time]
	FMUL dword [robot_animation_tick_constant]	; / 1111
	PUSH EAX
	FSTP dword [ESP]
	CALL animate_robot
	JMP recursive_render_end_2

recursive_render_2:
	PUSH geometry_for_train + 2
	CALL objects_renderer				; RENDER TRAIN RECURSIVELY

recursive_render_end_2:

	INC ESI
	INC ESI						; WE USE 7 BYTES, NOT 9, SO ADJUST
	JMP recursive_render_end

recursive_render:

	PUSH dword [geometry_offsets + 4 * EAX]		; POINTS TO TABLE WITH 9 ADDRESSES
	CALL objects_renderer				; RENDER RECURSIVELY
							; WE USE 5 BYTES, NOT 9, SO ADJUST

recursive_render_end:

	SUB ESI, 4
	JMP to_next_object

draw_still_object:
							; parameter1 = rotate_x_angle
							; parameter2 = rotate_z_angle
							; used 9 bytes
	PUSH 1.0
	PUSH 0
	PUSH 0
	PUSH 0
	PUSH 1.0
	PUSH 0
	PUSH 0
	PUSH 0
	PUSH 1.0

	FILD dword [EBP + parameter_1]			; rotate_x_angle
	PUSH EAX
	FSTP dword [ESP]				; STORE ON STACK
	CALL [glRotatef]				; ROTATE AROUND X AXIS

	FILD dword [EBP + rotate_y_angle]		; rotate_y_angle
	PUSH EAX
	FSTP dword [ESP]				; STORE ON STACK
	CALL [glRotatef]				; ROTATE AROUND Y AXIS

	FILD dword [EBP + parameter_2]			; rotate_z_angle
	PUSH EAX
	FSTP dword [ESP]				; STORE ON STACK
	CALL [glRotatef]				; ROTATE AROUND Z AXIS

	CMP EDI, EBX					; DO WE STILL HAVE BOXES?
	JLE cylinder_objects				; IF NO, MOVE TO CYLINDER OBJECTS
							; FOR BOXES parameter3 = size_x

	PUSH 0						; DO NOT TRANSLATE BY X
	FILD dword [EBP + size_y]
	FMUL dword [scale_for_boxes_while_rendering]	; 0.5
	PUSH EAX
	FSTP dword [ESP]				; TRANSLATE BY Y TO size_y * 0.5
	PUSH 0						; DO NOT TRANSLATE BY Z
	CALL [glTranslatef]				; MOVE PIVOT POINT TO ZERO ON Y AXIS ONLY

	FILD dword [EBP + size_z]
	FMUL dword [scale_for_boxes_while_rendering]	; size_z * 0.5
	PUSH EAX
	FSTP dword [ESP]

	FILD dword [EBP + size_y]
	FMUL dword [scale_for_boxes_while_rendering]	; size_y * 0.5
	PUSH EAX
	FSTP dword [ESP]

	FILD dword [EBP + parameter_3]
	FMUL dword [scale_for_boxes_while_rendering]	; size_x * 0.5
	PUSH EAX
	FSTP dword [ESP]

	CALL create_3d_box
	JMP to_next_object
	
cylinder_objects:
							; FOR CYLINDERS SIZE_Y = RADIUS, PARAMETER_3 = HEIGHT

	PUSH 8						; STACKS
	PUSH 8						; SLICES
	FILD dword [EBP + parameter_3]
	PUSH EAX
	PUSH EAX
	FSTP qword [ESP]				; HEIGHT
	FILD dword [EBP + size_y]
	PUSH EAX
	PUSH EAX
	FSTP qword [ESP]				; TOP RADIUS
	FILD dword [EBP + size_y]
	PUSH EAX
	PUSH EAX
	FSTP qword [ESP]				; BASE RADIUS
	PUSH dword [data_quadric_handle]		; USED QUADRIC
	CALL [gluCylinder]

	PUSH 8						; LOOPS
	PUSH 8						; SLICES
	FILD dword [EBP + size_y]
	PUSH EAX
	PUSH EAX
	FSTP qword [ESP]				; OUTER RADIUS = size_y
	PUSH 0
	PUSH 0						; INNER RADIUS = 0
	PUSH dword [data_quadric_handle]		; USED QUADRIC
	CALL [gluDisk]					; FIRST DISK

	FILD dword [EBP + parameter_3]
	PUSH EAX
	FSTP dword [ESP]				; HEIGHT BY AXIS Z
	PUSH 0						; 0 BY AXIS Y
	PUSH 0						; 0 BY AXIS X
	CALL [glTranslatef]				; MOVE TO OTHER DISC POSITION

	PUSH 8						; LOOPS
	PUSH 8						; SLICES
	FILD dword [EBP + size_y]
	PUSH EAX
	PUSH EAX
	FSTP qword [ESP]				; OUTER RADIUS = size_y
	PUSH 0
	PUSH 0						; INNER RADIUS = 0
	PUSH dword [data_quadric_handle]		; USED QUADRIC
	CALL [gluDisk]					; SECOND DISK

to_next_object:

	CALL [glPopMatrix]
	DEC EDI						; ANY OBJECTS LEFT?
	JG next_object					; IF YES

	POPA
	LEAVE
	RETN 04h

section '.crtair' code readable writeable executable align 1

create_air_transport:

	PUSHA

	MOV dword [air_traffic_random_number_seed], 7Eh		; RANDOM NUMBER SEED
	PUSH 08
	POP EDI							; 8 GROUPS OF AIR TRAFFIC

next_group:

	CALL [glPushMatrix]
								; random_x below - is for first group
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_x_z_translate_multiply]	; random_1 * 200
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: Z DIFF
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_y_translate_multiply]		; random_2 * 30
	FADD dword [air_transport_y_translate_addition]		; random_2 * 30 + 120
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: Y DIFF
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_x_z_translate_multiply]	; random_3 * 200
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: X DIFF
	CALL [glTranslatef]					; MOVE TO REQUIRED SPACE

	PUSH 0
	PUSH 1.0
	PUSH 0							; ROTATE BY Y AXIS
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_y_rotate_multiply]		; random_4 * 180
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: ANGLE
	CALL [glRotatef]					; ROTATE TO REQUIRED ANGLE

	XOR ESI, ESI						; FOR EACH GROUP OF TRAFFIC THERE WILL BE 40 VEHICLES

next_vehicle:
								; random_x below - is for first group, first vehicle
	CALL [glPushMatrix]					; MATRIX FOR EACH VEHICLE

	CALL get_random_number_betweeen_minus_1_and_1
	FADD dword [air_transport_speed_of_each_vehicle]	; random_5 + 1.5
	FMUL dword [current_scene_local_time]			; (random_5 + 1.5) * local_time
	FMUL dword [air_transport_z_translate_for_each_vehicle_multiply]	; (random_5 + 1.5) * local_time * 0.010009766
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_x_z_translate_multiply]	; random_6 * 200 ; (random_5 + 1.5) * local_time * 0.010009766
	FADDP ST1, ST						; random_6 * 200 + (random_5 + 1.5) * local_time * 0.010009766
	FADD dword [air_transport_z_translate_for_each_vehicle]	; random_6 * 200 + (random_5 + 1.5) * local_time * 0.010009766 - 100
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: Z DIFF

	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_x_y_translate_for_each_vehicle]	; random_7 * 15.0
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: Y DIFF
	CALL get_random_number_betweeen_minus_1_and_1
	FMUL dword [air_transport_x_y_translate_for_each_vehicle]	; random_8 * 15.0
	PUSH EAX
	FSTP dword [ESP]					; move to FP87: X DIFF
	CALL [glTranslatef]

	PUSH geometry_for_air_vehicles + 2			; DATA FOR AIR VEHICLES
	CALL objects_renderer					; OBJECTS_RENDERER

	CALL [glPopMatrix]					; POP MATRIX FOR EACH VEHICLE

	CMP ESI, 20
	JNZ skip_rotating					; AFTER VEHICLE #20 - ADDITIONAL ROTATING

	PUSH 0
	PUSH 1.0
	PUSH 0							; ROTATE BY Y AXIS
	PUSH dword [air_transport_y_rotate_multiply]		; 180 DEGREES
	CALL [glRotatef]

skip_rotating:

	INC ESI							; NEXT VEHICLE
	CMP ESI, 40
	JL next_vehicle

	CALL [glPopMatrix]
	DEC EDI							; NEXT GROUP
	JNZ next_group

	POPA
	RET

section '.combscn' code readable writeable executable align 1

combine_scene:

	PUSHA

	CALL [glPushMatrix]

	MOV EAX, [pointer_to_current_scene_data]
	MOVZX EAX, BYTE [EAX + 1]				; WHAT ADDITIONAL OBJECTS TO DISPLAY
	PUSH dword [content_to_include + 4 * EAX]		; POINTER TO OBJECTS
	CALL objects_renderer					; DISPLAY OBJECTS

	PUSH 0
	PUSH -0.5
	PUSH -270.0
	CALL [glTranslatef]

	PUSH full_town_geometry + 2
	CALL objects_renderer					; DISPLAY TOWN BLOCK #1

	PUSH 0
	PUSH 0
	PUSH 270.0
	CALL [glTranslatef]

	PUSH full_town_geometry + 2
	CALL objects_renderer					; DISPLAY TOWN BLOCK #2

	PUSH 0
	PUSH 0
	PUSH 270.0
	CALL [glTranslatef]
	
	PUSH full_town_geometry + 2
	CALL objects_renderer					; DISPLAY TOWN BLOCK #3

	CALL [glPopMatrix]

	CALL [glPushMatrix]
	CALL create_air_transport				; DISPLAY AIR TRANSPORT
	CALL [glPopMatrix]

	POPA
	RET

section '.clrobot' code readable writeable executable align 1

arg_parameter_data_region = 8		; REUSED AS TO CONVERT TO FP87
arg_scene_time = 12
calculate_robot_movement:

	ENTER 007Ch, 00
	PUSHA

	MOV ESI, [EBP + arg_parameter_data_region]
	LODSB
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX
	FILD dword [EBP + arg_parameter_data_region]	; BYTE1 = amplitude = A

	LODSB
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; BYTE 2 = frequency multiplier = FM
	FILD dword [EBP + arg_parameter_data_region]	; FM, A
	FMUL dword [EBP + arg_scene_time]		; t * FM, A

	LODSB
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; BYTE 3 = phase = P
	FILD dword [EBP + arg_parameter_data_region]	; P, t * FM, A
	FMUL dword [robot_moving_calculation_constant_2]	; PI/128 * P, t * FM, A
	FADDP ST1, ST					; PI/128 * P + t * FM, A
	FSIN						; SIN(PI/128 * P + t * FM), A
	FMULP ST1, ST					; A * SIN(PI/128 * P + t * FM)

	LODSB
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; BYTE 4 = offset = O
	FIADD dword [EBP + arg_parameter_data_region]	; O + A * SIN(PI/128 * P + t * FM)

							; Only low byte of pointer is incremented.
							; Safe because the 240-byte animation table does not cross a 256-byte boundary.
	ADD dword [current_robot_move_data_pointer], 4	; TO NEXT 4 BYTES OF DATA

	POPA
	LEAVE
	RETN 08h

section '.poscam' code readable writeable executable align 1

arg_parameter_data_region = 8		; REUSED AS TO CONVERT TO FP87
arg_scene_time = 12
position_and_fog_of_camera:

	ENTER 007Ch, 00
	PUSHA

	MOV ESI, [EBP + arg_parameter_data_region]

	LODSB						; 1ST BYTE: Z TRANSLATION
	MOVSX EAX, AL					; TO DWORD
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87
	PUSH EAX					; RESERVE SPACE ON STACK
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	LODSB						; 2ND BYTE: Y TRANSLATION
	MOVSX EAX, AL					; TO DWORD
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87
	PUSH EAX					; RESERVE SPACE ON STACK
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	LODSB						; 3RD BYTE: X TRANSLATION
	MOVSX EAX, AL					; TO DWORD
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87
	PUSH EAX					; RESERVE SPACE ON STACK
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	CALL [glTranslatef]

	PUSH 1.0
	PUSH 0
	PUSH 0						; ROTATE Z AXIS

	PUSH 0
	PUSH 1.0
	PUSH 0						; ROTATE Y AXIS

	PUSH 0
	PUSH 0
	PUSH 1.0					; ROTATE X AXIS

	LODSB						; 4TH BYTE = X ANGULAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 5TH BYTE = X INITIAL ANGLE
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY

	FMUL dword [EBP + arg_scene_time]		; x_angular_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; x_angular_speed * scene_time - x_initial_angle
	PUSH EAX					; X ROTATE ANGLE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	CALL [glRotatef]

	LODSB						; 6TH BYTE = Y ANGULAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 7TH BYTE = Y INITIAL ANGLE
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY

	FMUL dword [EBP + arg_scene_time]		; y_angular_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; y_angular_speed * scene_time - y_initial_angle
	PUSH EAX					; Y ROTATE ANGLE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	CALL [glRotatef]

	LODSB						; 8TH BYTE = Z ANGULAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 9TH BYTE = Z INITIAL ANGLE
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY

	FMUL dword [EBP + arg_scene_time]		; z_angular_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; z_angular_speed * scene_time - z_initial_angle
	PUSH EAX					; Z ROTATE ANGLE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	CALL [glRotatef]
	
	LODSB						; 10TH BYTE = Z LINEAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 11TH BYTE = Z INITIAL POSITION
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FMUL dword [EBP + arg_scene_time]		; z_linear_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; z_linear_speed * scene_time - z_initial_position
	PUSH EAX					; Z TRANSLATION VALUE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	LODSB						; 12TH BYTE = Y LINEAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 13TH BYTE = Y INITIAL POSITION
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FMUL dword [EBP + arg_scene_time]		; y_linear_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; y_linear_speed * scene_time - y_initial_position
	PUSH EAX					; Y TRANSLATION VALUE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	LODSB						; 14TH BYTE = X LINEAR SPEED
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87

	LODSB						; 15TH BYTE = X INITIAL POSITION
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FMUL dword [EBP + arg_scene_time]		; x_linear_speed * scene_time
	FISUB dword [EBP + arg_parameter_data_region]	; x_linear_speed * scene_time - x_initial_position
	PUSH EAX					; X TRANSLATION VALUE
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK

	CALL [glTranslatef]

	LODSB						; 16TH BYTE = REFERENCE OBJECT INDEX
	MOVSX EAX, AL
	TEST EAX, EAX
	JZ skip_reference

	MOV EDI, objects_matrices - 8			; OBJECT POOL ADDRESS + 56
	SHL EAX, 6					; * 64 BYTES (OPENGL MATRIX 4x4 FLOATS)
	ADD EDI, EAX					; SELECT REFERENCE MATRIX

	FLD dword [EDI]					; GET 14TH REFERENCE MATRIX OBJECT (Z TRANSLATION)
	FCHS						; -Z TRANSLATION
	PUSH EAX
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	ADD EDI, -4					; TO 13TH REFERENCE MATRIX OBJECT

	FLD dword [EDI]					; GET 13TH REFERENCE MATRIX OBJECT (Y TRANSLATION)
	FCHS						; -Y TRANSLATION
	PUSH EAX
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	ADD EDI, -4					; TO 12TH REFERENCE MATRIX OBJECT

	FLD dword [EDI]					; GET 12TH REFERENCE MATRIX OBJECT (X TRANSLATION)
	FCHS						; -X TRANSLATION
	PUSH EAX
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	ADD EDI, -4					; TO 11TH REFERENCE MATRIX OBJECT
							; DO WE NEED IT? WE DON'T USE EDI ANYMORE

	CALL [glTranslatef]				; BIND OUR CAMERA WITH REFERENCE OBJECT

skip_reference:

	LODSB						; 17TH BYTE: FOG DENSITY
	MOVSX EAX, AL
	MOV [EBP + arg_parameter_data_region], EAX	; SAVE TEMPORARILY
	FILD dword [EBP + arg_parameter_data_region]	; MOVE TO FP87
	FMUL dword [fog_density_constant]		; DIVIDE TO 128 (from -1 to 1)
	PUSH EAX
	FSTP dword [ESP]				; MOVE FROM FP87 TO STACK
	PUSH dword 0B62h				; GL_FOG_DENSITY
	CALL [glFogf]

	POPA
	LEAVE
	RETN 08h

section '.crtbox' code readable writeable executable align 1

arg_scale_x = 8
arg_scale_y = 12
arg_scale_z = 16
create_3d_box:

	PUSHA

	PUSH dword [ESP + 44]			; SCALE Z
	PUSH dword [ESP + 44]			; SCALE Y
	PUSH dword [ESP + 44]			; SCALE X
	CALL [glScalef]

	MOV ESI, unit_cube_structure

	PUSH 7					; GL_QUADS
	CALL [glBegin]

	PUSH 6
	POP EDI					; 6 QUADS PER BOX

next_quad:

	PUSH ESI
	CALL [glNormal3fv]			; FIRST 3 DWORDS: NORMAL
	ADD ESI, 12

	PUSH ESI
	CALL [glVertex3fv]			; 3 DWORDS: VERTEX
	ADD ESI, 12

	PUSH ESI
	CALL [glVertex3fv]			; 3 DWORDS: VERTEX
	ADD ESI, 12

	PUSH ESI
	CALL [glVertex3fv]			; 3 DWORDS: VERTEX
	ADD ESI, 12

	PUSH ESI
	CALL [glVertex3fv]			; 3 DWORDS: VERTEX
	ADD ESI, 12

	DEC EDI
	JNZ next_quad

	CALL [glEnd]

	POPA
	RETN 0Ch

section '.animrbt' code readable writeable executable align 1

arg_scene_time = 8
animate_robot:

	ENTER 007Ch, 00
	PUSHA

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	FMUL dword [robot_moving_calculation_constant]	; TRANSLATE Z AXIS
	PUSH EAX
	FSTP dword [ESP]

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	FMUL dword [robot_moving_calculation_constant]	; TRANSLATE Y AXIS
	PUSH EAX
	FSTP dword [ESP]

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	FMUL dword [robot_moving_calculation_constant]	; TRANSLATE X AXIS
	PUSH EAX
	FSTP dword [ESP]

	CALL [glTranslatef]

	PUSH 1.0
	PUSH 0
	PUSH 0						; ROTATE THROUGH Z AXIS

	PUSH 0
	PUSH 1.0
	PUSH 0						; ROTATE THROUGH Y AXIS

	PUSH 0
	PUSH 0
	PUSH 1.0					; ROTATE THROUGH X AXIS

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	PUSH EAX
	FSTP dword [ESP]
	CALL [glRotatef]

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	PUSH EAX
	FSTP dword [ESP]
	CALL [glRotatef]

	PUSH dword [EBP + arg_scene_time]
	PUSH dword [current_robot_move_data_pointer]
	CALL calculate_robot_movement
	PUSH EAX
	FSTP dword [ESP]
	CALL [glRotatef]

	MOV EAX, [current_robot_part_pointer]
	INC dword [current_robot_part_pointer]		; NEXT PART

	MOVZX EAX, BYTE [EAX]				; GET CURRENT PART
	PUSH dword [robot_parts_geometry + 4 * EAX]	; GET DATA FOR CURRENT PART
	CMP EAX, 4
	JNZ skip_mirroring

	PUSH 1.0
	PUSH 1.0
	PUSH -1.0
	CALL [glScalef]					; MIRROR ROBOT PART #4

skip_mirroring:

	CALL objects_renderer				; DISPLAY PART

repeat_again:

	MOV EAX, [current_robot_part_pointer]
	CMP BYTE [EAX], 0				; TREE LEAF CLOSED?
	JZ after_animate				; IF YES, RETURN FROM RECURSIVE CALL

	CALL [glPushMatrix]
	PUSH dword [EBP + arg_scene_time]
	CALL animate_robot				; IF NOT, CALL RECURSIVE
	CALL [glPopMatrix]
	JMP repeat_again

after_animate:

	INC dword [current_robot_part_pointer]		; TO NEXT ROBOT PART

	POPA
	LEAVE
	RETN 4

section '.calcscn' code readable writeable executable align 1

calculate_scene:
	PUSHA

	PUSH fog_color_table
	PUSH 0B66h						; GL_FOG_COLOR
	CALL [glFogfv]						; SET FOG COLOR

	PUSH 0303h						; GL_ONE_MINUS_SRC_ALPHA
	PUSH 0302h						; GL_SRC_ALPHA
	CALL [glBlendFunc]

	CALL [glLoadIdentity]

	MOV dword [current_object_matrix], objects_matrices	; SET OBJECT_MATRICES TO FIRST ONE
	
	MOV EAX, [pointer_to_current_scene_data]
	MOVZX EAX, byte [EAX + 1]				; GET CONTENT LIST TO INCLUDE
	PUSH dword [content_to_include + 4 * EAX]		; TABLE WITH CONTENT
	CALL objects_renderer					; RENDER CONTENT

	PUSH 1080						; 1080
	PUSH 1920						; 1920
	PUSH 0							; 60
	PUSH 0							; 0
	CALL [glViewport]					; SET VIEWPORT

	PUSH 0.0
	PUSH 1.0
	PUSH 1.0
	PUSH 1.0
	CALL [glClearColor]					; WHITE IS THE DEFAULT COLOR

	PUSH 4100h
	CALL [glClear]						; CLEAR SCREEN

	CALL [glLoadIdentity]

	PUSH light_position
	PUSH 1203h						; GL_POSITION
	PUSH 4000h						; GL_LIGHT0
	CALL [glLightfv]					; SET LIGHT POSITION

	FLD dword [current_scene_local_time]
	FMUL dword [scene_time_normalization_constant]
	PUSH EAX
	FSTP dword [ESP]					; NORMALISED SCENE TIME
	MOV EAX, [pointer_to_current_scene_data]
	MOVZX EAX, byte [EAX + 2]				; CAMERA POSITION AND PATH PRESET
	IMUL EAX, 17
	ADD EAX, camera_presets					; TABLES WITH POSITION AND FOG
	PUSH EAX
	CALL position_and_fog_of_camera
	CALL [glPushMatrix]
								; WE NEED TO DISPLAY SAME TOWN WITH OBJECTS
								; UNDER WATER - TO SIMULATE REFLECTION
	PUSH 0
	PUSH -17.25
	PUSH 0
	CALL [glTranslatef]					; TRANSLATE BY Y AXIS (2 * WATER HEIGHT)

	PUSH 1.0
	PUSH -1.0
	PUSH 1.0
	CALL [glScalef]						; INVERT Y AXIS (DISPLAY OBJECTS BELOW SCENE)

	CALL combine_scene					; DISPLAY SCENE BELOW THE WATER

	PUSH reflection_color
	CALL [glColor4ubv]					; SET COLOR FOR WATER REFLECTION

	PUSH 0B71h						; GL_DEPTH_TEST
	PUSH 0BE2h						; GL_BLEND
	PUSH 0B50h						; GL_LIGHTING

	PUSH 0B71h						; GL_DEPTH_TEST
	PUSH 0BE2h						; GL_BLEND
	PUSH 0B50h						; GL_LIGHTING
	PUSH 4000h						; GL_LIGHT0
	PUSH 0B57h						; GL_COLOR_MATERIAL
	PUSH 0B60h						; GL_FOG
	PUSH 0BA1h						; GL_NORMALIZE

	CALL [glEnable]						; ENABLE GL_NORMALIZE
	CALL [glEnable]						; ENABLE GL_FOG
	CALL [glEnable]						; ENABLE GL_COLOR_MATERIAL
	CALL [glEnable]						; ENABLE GL_LIGHT0
	CALL [glDisable]					; DISABLE GL_LIGHNING
	CALL [glEnable]						; ENABLE GL_BLEND
	CALL [glDisable]					; DISABLE GL_DEPTH_TEST

	PUSH 0
	PUSH 0
	PUSH 512.0
	CALL [glTranslatef]					; BOXES STARTING POSITION

	PUSH 4
	POP ESI							; CREATE 4 BOXES FOR WATER

next_box:

	CALL [glPushMatrix]

	PUSH 48.0
	PUSH 1.0
	PUSH 128.0
	CALL create_3d_box					; CREATE FLAT BOX

	CALL [glPopMatrix]

	PUSH 0
	PUSH 0
	PUSH -256.0
	CALL [glTranslatef]					; MOVE TO NEXT BOX

	DEC ESI
	JNZ next_box

	CALL [glEnable]						; GL_LIGHTING
	CALL [glDisable]					; GL_BLEND
	CALL [glEnable]						; GL_DEPTH_TEST

	CALL [glPopMatrix]

	CALL combine_scene					; DISPLAY SCENE ABOVE THE WATER

	MOV EAX, [pointer_to_current_scene_data]
	MOVZX EAX, BYTE [EAX + 2]				; CAMERA TYPE
	CMP EAX, 6						; SCENE WITH TEXT TO OUTPUT?
	JNZ after_output_text

	CALL [glLoadIdentity]

	PUSH -1.6796875
	PUSH 0
	PUSH 0
	CALL [glTranslatef]					; MOVE TO NEEDED PLACE

	PUSH -1
	PUSH -2
	CALL [glRasterPos2i]					; SET RASTER COORDINATES

	PUSH text_to_output
	PUSH 1400h
	PUSH 66
	CALL [glCallLists]					; DISPLAY TEXT (MICROPOLIS)

after_output_text:

	MOV EAX, [pointer_to_current_scene_data]
	CMP BYTE [EAX], 0FFh					; LAST SCENE?
	JNZ exit_calculate_scene

	JMP exit_process					; IF LAST, EXIT PROGRAM

exit_calculate_scene:

	POPA
	RET


section '.rsndclb' code readable writeable executable align 1

buffer_for_mathematical_operations = -04h
sample_number_inside_current_note = -08h
channel_number = -0Ch
current_sum_of_all_channels = -10h
type_of_sound_for_current_note = -14h
current_echo_input = -18h
pointer_to_pcm_data = -1Ch
real_sound_callback:
	ENTER 007Ch, 00
	PUSHA
								; PLAY PREVIOUS BUFFER
	MOV ESI, [current_playing_sound_buffer_number]		; GET BUFFER NUMBER
	PUSH 32							; WAVEHDR SIZE
	SHL ESI, 05						; BUFFER NUMBER * 32
	ADD ESI, wave_hdr_structure_1				; WAVEHEADER STRUCTURE (TWICE)
	PUSH ESI						; PUSH ADDRESS OF WAVEHEADER STRUCTURE
	PUSH dword [data_wave_out_handle]			; WINMM DESCRIPTOR
	CALL [waveOutPrepareHeader]				; WINMM.WAVE_OUT_PREPARE_HEADER

	PUSH 32							; WAVEHDR SIZE
	PUSH ESI						; WAVEHEADER STRUCTURE ADDRESS
	PUSH dword [data_wave_out_handle]			; WINMM DESCRIPTOR
	CALL [waveOutWrite]					; WINMM.WAVE_OUT_WRITE

								; SWITCH TO NEXT BUFFER IN CYCLE (0->1->0->1->...)

	MOV EAX, [current_playing_sound_buffer_number]		; BUFFER NUMBER (0/1)
	MOV ECX, EAX
	SHL ECX, 0Fh						; 32768 BYTES PER BUFFER
	ADD ECX, pointer_pcm_audio_buffer_1			; FROM THAT ADDR
	DEC EAX
	AND EAX, 1						; 00 -> FF -> 01
								; THEN 01 -> 00 -> 00

	AND dword [EBP+sample_number_inside_current_note], 0	; SAMPLE NUMBER (0...4811)
	MOV [EBP+pointer_to_pcm_data], ECX			; POINTER TO 32768 BYTES (PCM DATA)
	MOV [current_playing_sound_buffer_number], EAX		; SAVE NEXT BUFFER NUMBER

next_sample:

	XOR EBX, EBX						; CHANNEL NUMBER (0...3) FOR WORKING WITH PHASES
	AND dword [EBP+current_echo_input], 0			; WE DON'T HAVE ECHO YET
	AND dword [EBP+current_sum_of_all_channels], 0		; CURRENT SUM OF ALL CHANNELS = 0
	AND dword [EBP+channel_number], 0			; CHANNEL NUMBER (0...3)

	MOV EDI, filter_state_structure + 17			; POINTS TO FILTER STATES
	MOV EAX, [pointer_to_current_type_of_sound_structure]

	FLD dword [current_counter_value]			; 0/1/2/3...
	FADD dword [constant_1]					; 1.0
	FSTP dword [current_counter_value]			; OLD VALUE + 1.0

	FLD dword [current_counter_value]			; CNT
	FMUL dword [first_wave_inside_cos_coefficient]		; CNT * 0.001663208
	FCOS							; COS(CNT * 0.001663208)
	FMUL dword [both_waves_before_cos_coefficient]		; 420 * COS(CNT * 0.001663208)

	FLD dword [current_counter_value]			; CNT, 420 * COS(CNT * 0.001663208)
	FMUL dword [first_wave_inside_sin_coefficient]		; CNT * 0.0000058710575, 420 * COS(CNT * 0.001663208)
	FSIN							; SIN(CNT * 0.0000058710575), 420 * COS(CNT * 0.001663208)
	FMUL dword [first_wave_before_sin_coefficient]		; 1200 * SIN(CNT * 0.0000058710575), 420 * COS(CNT * 0.001663208)
	FADDP ST1, ST						; 1200 * SIN(CNT * 0.0000058710575) + 420 * COS(CNT * 0.001663208)
	FADD dword [first_wave_sum_coefficient]			; 1848 + 1200 * SIN(CNT * 0.0000058710575) + 420 * COS(CNT * 0.001663208)
	FSTP dword [cutoff_for_channel_02]			; SAVE CUTOFF FOR CHANNEL #2

	FLD dword [current_counter_value]			; CNT
	FMUL dword [second_wave_inside_cos_coefficient]		; CNT * 0.0001001358
	FCOS							; COS(CNT * 0.0001001358)
	FMUL dword [both_waves_before_cos_coefficient]		; 420 * COS(CNT * 0.0001001358)

	FLD dword [current_counter_value]			; CNT, 420 * COS(CNT * 0.0001001358)
	FMUL dword [second_wave_inside_sin_coefficient]		; CNT * 0.0000041723251, 420 * COS(CNT * 0.0001001358)
	FSIN							; SIN(CNT * 0.0000041723251), 420 * COS(CNT * 0.0001001358)
	FMUL dword [second_wave_before_sin_coefficient]		; 1000 * SIN(CNT * 0.0000041723251), 420 * COS(CNT * 0.0001001358)
	FADDP ST1, ST						; 1000 * SIN(CNT * 0.0000041723251) + 420 * COS(CNT * 0.0001001358)
	FADD dword [second_wave_sum_coefficient]		; 1672 + 1000 * SIN(CNT * 0.0000041723251) + 420 * COS(CNT * 0.0001001358)
	FSTP dword [cutoff_for_channel_03]			; SAVE CUTOFF FOR CHANNEL #3

work_with_next_channel:

	MOV ECX, [pointer_to_sound_data]			; = 00402DC8, LIST OF 4-BYTE STRUCTS
	MOV EDX, [EBP+channel_number]				; CURRENT CHANNEL
	MOVZX ESI, BYTE [ECX+EDX]				; GET PATTERN FOR CURRENT CHANNEL
	IMUL ESI, 56						; PATTERN TABLE SIZE
	MOV ECX, [current_note_number_in_pattern]		; CURRENT NOTE NUMBER IN PATTERN
	ADD ESI, musical_pattern_entries			; POINTER TO PATTERN TABLE
	MOVZX ECX, BYTE [ECX+ESI+32] 				; GET TYPE OF SOUND FOR CURRENT NOTE

	CMP ECX, 1						; SOUND TYPE 1?
	MOV [EBP+type_of_sound_for_current_note], ECX		; TYPE OF SOUND FOR CURRENT NOTE
	JZ skip_setting_pointer					; IF SOUND TYPE = 1 --> USE OLD TYPE FOR ALL EXCEPT AMPLITUDE

	MOV EAX, ECX						; TYPE OF SOUND FOR CURRENT NOTE
	SHL EAX, 4						; * 16
	ADD EAX, sound_type_entries				; PLUS START ADDRESS OF THE TYPE ENTRIES TABLE
	MOV [pointer_to_current_type_of_sound_structure], EAX

skip_setting_pointer:

	SHL ECX, 4						; TYPE OF SOUND FOR CURRENT NOTE * 16
	FLD dword [ECX+sound_type_entries + 7]			; SOUND TYPE ENTRIES TABLE, AMPLITUDE LEVEL

	MOVSX ECX, WORD [EAX]					; ATTACK LENGTH IN SAMPLES (FOR CURRENT OR PREVIOUS TYPE)
	FMUL dword [ESI+34h]					; MULTIPLY BY SCALE OF VOLUME
	CMP [EBP+sample_number_inside_current_note], ECX	; DO WE NEED ATTACK?
	JGE skip_attack						; IF NOT

								; APPLY ATTACK
	MOV [EBP+buffer_for_mathematical_operations], ECX	; SAVE ATTACK LENGTH IN SAMPLES
	FILD dword [EBP+sample_number_inside_current_note]	; GET SAMPLE NUMBER		
	FIDIV dword [EBP+buffer_for_mathematical_operations]	; DIVIDE BY ATTACK LENGTH
	FMULP ST1, ST						; MULTIPLY BY AMPLITUDE

skip_attack:

	MOVSX EDX, word [EAX+2]					; DECAY/RELEASE START SAMPLE
	CMP [EBP+sample_number_inside_current_note], EDX	; DO WE NEED DECAY?
	JLE skip_decay

	MOVSX ECX, word [EAX+4]					; DECAY/RELEASE PARAMETER
	MOV [EBP+buffer_for_mathematical_operations], ECX	; SAVE PARAMETER
	SUB ECX, EDX						; DECAY PARAMETER - DECAY START SAMPLE
	ADD ECX, [EBP+sample_number_inside_current_note]	; DECAY PARAMETER - DECAY START SAMPLE + CURRENT SAMPLE
	FILD dword [EBP+buffer_for_mathematical_operations]	; DECAY PARAMETER
	MOV [EBP+buffer_for_mathematical_operations], ECX	; DECAY PARAMETER - DECAY START SAMPLE + CURRENT SAMPLE
	FIDIV dword [EBP+buffer_for_mathematical_operations]	; DECAY PARAMETER / (DECAY PARAMETER - DECAY START SAMPLE + CURRENT SAMPLE)
	FMULP ST1, ST						; MULTIPLY BY AMPLITUDE
								; WILL BE USED MUCH LATER - SEE #1#
skip_decay:

	MOV ECX, [current_note_number_in_pattern]		; GET CURRENT NOTE
	MOVSX EDX, word [ESI + 2*ECX]				; GET NOTE HZ VALUE
	CMP byte [ECX + ESI + 33], 1				; NOTE TYPE #1?
	MOV [EBP+buffer_for_mathematical_operations], EDX
	FILD dword [EBP+buffer_for_mathematical_operations]	; MOVE NOTE HZ VALUE TO FP87
	JNZ continue_after_note_type_1

; Only for note type #1
; Change HZ value for note (based on "NOTE+2" HZ value)

	MOVSX ECX, word [ESI + 2*ECX + 4]			; GET (NOTE+2) HZ VALUE
								; IMPORTANT: DO NOT USE TYPE #1 ON LAST TWO NOTES
								; THERE ARE NO SUCH TYPES IN OUR DATA
	CMP dword [EBP+type_of_sound_for_current_note], 5	; THIS VALUE IS DIFFERENT FROM [ESI + ECX + 33]
								; AS EXACTLY FOR TYPE #1 WE USE THIS FROM PREVIOUS NOTE
								; SEE skip_setting_pointer LABEL
	MOV dword [EBP+buffer_for_mathematical_operations], ECX
	FILD dword [EBP+buffer_for_mathematical_operations]	; LOAD HZ OF "NOTE+2"
	JLE type_1_after_type_less_than_or_equal_to_5

	FSUB ST, ST1						; HZ OF "NOTE+2" - HZ OF "NOTE"; HZ OF "NOTE"
	FMUL dword [type_1_note_coefficient]			; / 4800 (1/3 OF 14400)
	FIMUL dword [EBP+sample_number_inside_current_note]	; * SAMPLE NUMBER
	FADDP ST1, ST						; CREATE OBERTONE
	JMP continue_after_note_type_1

type_1_after_type_less_than_or_equal_to_5:
	FILD dword [EBP+sample_number_inside_current_note]      ; CURRENT_SAMPLE; HZ OF "NOTE"; HZ OF "NOTE+2"
	FADD dword [type_1_after_type_5_coefficient]		; CURRENT SAMPLE + 130; HZ OF "NOTE"; HZ OF "NOTE+2"
	FDIVR dword [type_1_after_type_5_coefficient]		; 130/(CURRENT SAMPLE + 130); HZ OF "NOTE"; HZ OF "NOTE+2"
	FMUL ST, ST2						; 130/(CURRENT SAMPLE + 130) * HZ OF "NOTE+2"; HZ OF "NOTE"; HZ OF "NOTE+2"
	FADD ST, ST1						; HZ OF "NOTE" + 130/(CURRENT SAMPLE + 130) * HZ OF "NOTE+2"; HZ OF "NOTE"; HZ OF "NOTE+2"
	FSTP ST2						; HZ OF "NOTE"; HZ OF "NOTE" + 130/(CURRENT SAMPLE + 130) * HZ OF "NOTE+2"
	FSTP ST							; HZ OF "NOTE" + 130/(CURRENT SAMPLE + 130) * HZ OF "NOTE+2"

continue_after_note_type_1:
; We have note HZ value in FP87 (probably changed for type 1)

	FILD dword [EBX+current_phase_for_channels]		; GET CURRENT PHASE FOR OUR CHANNEL
	FADD ST, ST1						; ADD CURRENT NOTE HZ

	PUSH EAX
	FISTP dword [ESP]					; SAVE IT AS 4-BYTE INTEGER
	POP ECX

	CMP ECX, 44100
	MOV [EBX+current_phase_for_channels], ECX		; SAVE NEW PHASE FOR OUR CHANNEL
	FSTP ST							; WHY NOT USE "FADDP ST, ST1" EARLIER?
	JLE make_square_form					; IF NOT OVERFLOWED
	SUB ECX, 44100
	MOV [EBX+current_phase_for_channels], ECX		; IF OVERFLOWED, START AT 0

make_square_form:

	MOV dword [EBP+buffer_for_mathematical_operations], 3300
	MOV ECX, [EBX + current_phase_for_channels]		; GET CURRENT PHASE
	CMP ECX, 22040						; FIRST HALF OF PHASE?
	JLE skip_negation					; YES, SKIP NEGATION

	NEG dword [EBP+buffer_for_mathematical_operations]	; SECOND HALF OF PHASE: 3300 --> -3300

skip_negation:

	CMP byte [EAX + 6], 1					; DO WE NEED SAWTOOTH MODE?
	JNZ skip_sawtooth

	FILD dword [EBX + current_phase_for_channels]		; GET CURRENT PHASE
	FMUL dword [coefficient_k_for_sawtooth]			; MAKE LINEAR FUNCTION (kx-b)
	FSUBR dword [coefficient_b_for_sawtooth]
	FISTP dword [EBP + buffer_for_mathematical_operations]	; SAVE SAWTOOTH FORM

skip_sawtooth:

	FILD dword [EBP+buffer_for_mathematical_operations]	; GET WAVE
	FMUL dword [EAX + 12]					; wave * noise_coefficient
	FISUBR dword [EBP+buffer_for_mathematical_operations]	; wave - wave * noise_coefficient
								; = wave * (1 - noise_coefficient): wave signal

	FILD dword [EBX + current_random_value_for_channels]	; GET RANDOM VALUE
	FMUL dword [EAX + 12]					; random * noise_coefficient
	FMUL dword [coefficient_for_noise_adding]		; = coeff * random * noise_coefficient: noise signal

	FADDP ST1, ST						; wave signal + noise signal
	FMUL ST, ST1						; MULTIPLY BY AMPLITUDE LEVEL #1#, AND KEEP AMPLITUDE LEVEL

	PUSH EAX
	FISTP dword [ESP]					; SAVE IT AS 4-BYTE INTEGER
	POP ECX

	MOV [EBP + buffer_for_mathematical_operations], ECX	; WHY NOT USE "FISTP dword [EBP + buffer_for_mathematical_operations]" EARLIER?

	MOVZX ECX, byte [EAX + 11]				; UPDATE INTERVAL FOR RANDOM NUMBER FOR NOISE
	CMP [EBX + number_of_times_random_number_for_noise_was_used], ECX	; DO WE NEED TO UPDATE RANDOM NUMBER?

	FSTP ST							; POP AMPLITUDE LEVEL VALUE FROM FP87 STACK
								; CAN'T WE JUST USE FMULP EARLIER?
	JLE use_filter

	MOV EAX, [sound_random_number_seed]
	IMUL EAX, 0343FDh
	ADD EAX, 269EC3h
	MOV [sound_random_number_seed], EAX
	AND EAX, 8000h						; GENERATE NEW RANDOM NUMBER (0 OR 8000h)

	AND dword [EBX + number_of_times_random_number_for_noise_was_used], 0	; SET NEW COUNTER FOR UPDATE
	MOV [EBX + current_random_value_for_channels], EAX	; SAVE NEW RANDOM NUMBER

	MOV EAX, [pointer_to_current_type_of_sound_structure]	; RESTORE OLD EAX VALUE
								; MAY BE BETTER WERE TO PUSH/POP EAX?
use_filter:

	FLD dword [EDI - 16]					; FILTER CUTOFF
	FMUL dword [coeffieient_for_state_filter]		; cutoff * pi / 44100

	INC dword [EBX + number_of_times_random_number_for_noise_was_used]	; WE USED RANDOM ONE MORE TIME

	FSIN							; sin(cutoff * pi / 44100)
	FADD ST, ST
								; 2 * sin(cutoff * pi / 44100) = "filter coefficient"

	FLD ST							; filter coefficient; filter coefficient
	FMUL dword [EDI]					; state3 * filter coefficient; filter coefficient
	FADD dword [EDI - 8]					; state1 + state3 * filter coefficient; filter coefficient
	FST dword [EDI - 8]					; renew STATE1 of filter

	FILD dword [EBP + buffer_for_mathematical_operations]	; our signal (sample) ; renew STATE1 of filter; filter coefficient
	FSUB dword [EDI]					; sample - state3; renew STATE1 of filter; filter coefficient
	FMUL dword [EDI - 12]					; coefficient * (sample - state3); renew STATE1 of filter; filter coefficient
	FSUBRP ST1, ST						; coefficient * (sample - state3) - renew STATE1 of filter; filter coefficient
	FST dword [EDI - 4]					; renew STATE2 of filter; filter coefficient

	FMULP ST1, ST						; renew STATE2 of filter * filter coefficient
	FADD dword [EDI]					; state3 + renew STATE2 of filter * filter coefficient
	FSTP dword [EDI]					; renew STATE3 of filter

	MOVZX ECX, BYTE [EDI - 17]				; 0 = STATE1, 1 = STATE2
	FLD dword [EDI + ECX * 4 - 8]				; STATE1 or STATE2

	FDIV dword [EDI - 12]					; STATE[1/2] / filter coefficient
	PUSH EAX
	FISTP dword [ESP]					; SAVE IT AS 4-BYTE INTEGER
	POP ECX

make_abs_output_not_more_than_9200:

	MOV EDX, 9200

	CMP ECX, EDX
	CMOVG ECX, EDX						; ECX = min(ECX, 9200)

	NEG EDX							; EDX = -9200
	CMP ECX, EDX
	CMOVL ECX, EDX						; ECX = max(ECX, -9200)

	MOV [EBP + buffer_for_mathematical_operations], ECX	; SAVE DATA [-9200;9200]

	CMP dword [EBP+channel_number], 1
	JLE check_for_silence_needed				; FOR CHANNELS 0/1 OK
								; FOR CHANNELS 2/3 NEED TO DO [-2400;2400]

	MOV EDX, 2400						; MAXIMUM VALUE

	CMP ECX, EDX
	CMOVG ECX, EDX						; ECX = min(ECX, 2400)

	NEG EDX							; EDX = -2400
	CMP ECX, EDX
	CMOVL ECX, EDX						; ECX = max(ECX, -2400)

	MOV [EBP + buffer_for_mathematical_operations], ECX	; SAVE DATA [-2400;2400]

check_for_silence_needed:

	CMP dword [EBP + type_of_sound_for_current_note], 0	; IF WE NEED SILENCE
	JNZ wrap_up
	XOR ECX, ECX
	MOV [EBP + buffer_for_mathematical_operations], ECX	; THEN VALUE IS EXACTLY ZERO

wrap_up:

	FILD dword [EBP + buffer_for_mathematical_operations]	; GET RESULTING VALUE
	ADD [EBP + current_sum_of_all_channels], ECX		; ADD RESULTING VALUE TO SUM FOR ALL CHANNELS

	ADD EBX, 4						; POINT TO NEXT CHANNEL FOR WORKING WITH PHASES ON NEXT CYCLE
	ADD EDI, 21						; POINT TO NEXT CHANNEL FOR WORKING WITH FILTERS ON NEXT CYCLE
	INC dword [EBP + channel_number]			; POINT TO NEXT CHANNEL

	FMUL dword [ESI + 48]					; resulting value * portion that goes to echo
	
	CMP dword [EBP + channel_number], 4			; HAVE WE WORKED WITH ALL CHANNELS?

	FIADD dword [EBP + current_echo_input]			; current_echo + resulting value * portion that goes to echo

	PUSH EAX
	FISTP dword [ESP]					; SAVE IT AS 4-BYTE INTEGER
	POP EDX

	MOV [EBP + current_echo_input], EDX			; MAYBE REMOVE integer_conversion_buffer AND WORK WITH current_echo_input ONLY

	JL work_with_next_channel				; IF NOT - WORK WITH NEXT CHANNEL

	MOV EAX, [current_echo_buffer_position]			; GET CURRENT ECHO POSITION
	FILD dword [echo_buffer + 4*EAX]			; GET ECHO VALUE AT CURRENT POSITION
	FMUL dword [echo_volume_decrease_every_step]		; * 0.8515625 - DECREASE VOLUME
	FISTP dword [echo_buffer + 4*EAX]			; STORE NEW ECHO VALUE AT CURRENT POSITION

	MOV ECX, [current_channel_used_for_echo]		; GET STEREO CHANNEL USED FOR ECHO
	MOV ESI, [EBP+pointer_to_pcm_data]			; GET CURRENT POINTER TO PCM DATA
	MOV EAX, [current_echo_buffer_position]			; GET CURRENT ECHO POSITION
	MOV EAX, [echo_buffer + 4*EAX]				; GET ECHO VALUE AT CURRENT POSITION
	SAR EAX, 1						; DIVIDE ECHO VALUE BY 2
	ADD EAX, [EBP+current_sum_of_all_channels]		; ADD TO CURRENT SUM OF 4 CHANNELS
	AND ECX, 1						; STEREO CHANNEL USED FOR HALF-ECHO (0/1)
	MOV [ESI + 2*ECX], AX					; SAVE RESULTING DATA IN ONE OF 16-BIT CHANNELS

	DEC ECX							; SWITCH STEREO CHANNEL
	MOV EAX, [current_echo_buffer_position]			; GET CURRENT ECHO POSITION
	MOV EAX, [echo_buffer + 4*EAX]				; GET ECHO VALUE AT CURRENT POSITION
	ADD EAX, [EBP+current_sum_of_all_channels]		; ADD TO CURRENT SUM OF 4 CHANNELS
	AND ECX, 1						; STEREO CHANNEL USED FOR FULL-ECHO (1/0)
	MOV [ESI + 2*ECX], AX					; SAVE RESULTING DATA IN OTHER 16-BIT CHANNEL

	ADD ESI, 4						; GO TO NEXT FRAME (+4 BYTES OUTPUT)
								; 16 BIT * 2 (STEREO)
	MOV EAX, [current_echo_buffer_position]			; GET CURRENT ECHO POSITION
	ADD [echo_buffer + 4*EAX], EDX				; ADD EDX (current_echo_input) TO ECHO

	INC EAX							; GO TO NEXT ECHO POSITION
	CMP EAX, 14400						; ECHO IS 14400 SAMPLE FRAMES

	MOV [EBP+pointer_to_pcm_data], ESI			; SAVE NEW POINTER TO PCM DATA

	JL skip_buffer_roundup					; IF WE NOT FILL WHOLE ECHO BUFFER
	XOR EAX, EAX						; IF YES, BEGIN FROM BEGINNING
	INC dword [current_channel_used_for_echo]		; CHANGE STEREO CHANNEL FOR ECHO

skip_buffer_roundup:

	MOV [current_echo_buffer_position], EAX			; SAVE ECHO POSITION

	MOV EAX, [EBP+sample_number_inside_current_note]	; GET CURRENT SAMPLE NUMBER
	INC EAX							; NEXT SAMPLE
	CMP EAX, 4812						; ALL SAMPLES FOR ONE NOTE READY?
	MOV [EBP+sample_number_inside_current_note], EAX	; SAVE CURRENT SAMPLE NUMBER
	JL next_sample						; IF NOT - GO TO NEXT SAMPLE

	INC dword [current_note_number_in_pattern]		; SWITCH TO NEXT NOTE
	AND dword [current_note_number_in_pattern], 0Fh		; WE HAVE 16 NOTES IN ONE PATTERN
	JNZ exit_sound_function					; IF NOT YET, FINISH

	ADD dword [pointer_to_sound_data], 4			; POINT TO NEXT PATTERN

exit_sound_function:

	POPA
	LEAVE
	RET

section '.entry' code readable writeable executable align 1

entry_point:

	PUSH -4                 	; DPI_AWARENESS_CONTEXT_PER_MONITOR_AWARE_V2
	CALL [SetProcessDpiAwarenessContext]

	PUSH 00				; LPPARAM
	PUSH 00				; HINSTANCE
	PUSH 00				; MENU DESCRIPTOR
	PUSH 00				; WINDOW PARENT
	PUSH 1080			; WINDOW HEIGHT: 1080
	PUSH 1921			; WINDOW WIDTH: 1921
					; IF SET TO 1920, WINDOWS WILL RESIZE IT AS
					; IT HAS SPECIAL RULES FOR FULL SCREEN APPS
	PUSH 00				; VERTICAL WINDOW POSITION
	PUSH 00				; HORIZONTAL WINDOW POSITION
	PUSH 90000000h			; WINDOW STYLE: WS_POPUP + WS_VISIBLE
	PUSH window_class_and_name	; --> 'EDIT': WINDOW NAME
	PUSH window_class_and_name	; --> 'EDIT': WINDOW CLASS NAME
	PUSH 00				; EXTENDED WINDOW STYLE = NONE
	CALL [CreateWindowExA]		; USER32.CREATE_WINDOW_EX_A

	PUSH EAX			; FOR GET_DC

	PUSH 43h			; SWP_NOMOVE | SWP_NOSIZE | SWP_SHOWWINDOW
	PUSH 0
	PUSH 0
	PUSH 0
	PUSH 0
	PUSH -1				; HWND_TOPMOST
	PUSH EAX			; WINDOW HANDLE
	CALL [SetWindowPos]

	CALL [GetDC]			; USER32.GET_DC
	MOV ESI, EAX

	MOV EAX, pixel_format_descriptor_structure
	PUSH EAX			; --> PIXEL FORMAT DESCRIPTOR STRUCTURE
					; FOR SUBSEQUENT SET_PIXEL_FORMAT

	PUSH EAX			; --> PIXEL FORMAT DESCRIPTOR STRUCTURE
	PUSH ESI			; DC
	CALL [wglChoosePixelFormat]	; OPENGL32.WGL_CHOOSE_PIXEL_FORMAT

	PUSH EAX			; FOUND PIXEL FORMAT
	PUSH ESI			; DC
	CALL [SetPixelFormat]		; SET PIXEL FORMAT THROUGH GDI32

	PUSH ESI			; DC
	CALL [wglCreateContext]		; OPENGL32.WGL_CREATE_CONTEXT

	PUSH EAX			; OPENGL CONTEXT
	PUSH ESI			; DC
	CALL [wglMakeCurrent]		; OPENGL32.WGL_MAKE_CURRENT


	PUSH 1701h			; GL_PROJECTION
	CALL [glMatrixMode]		; OPENGL32.GL_MATRIX_MODE

	PUSH 40D30000h
	PUSH 0				; zFar = 19456.0
	PUSH 3FB00000h
	PUSH 0				; zNear = 0.0625
	PUSH 3FFD0000h
	PUSH 0				; ASPECT = 1.8125 (29:16)
	PUSH 40510000h
	PUSH 0				; FOVY = 68.0 (angle)
	CALL [gluPerspective]		; GLU32.GLU_PERSPECTIVE

	PUSH 1700h			; GL_MODELVIEW
	CALL [glMatrixMode]		; OPENGL.GL_MATRIX_MODE

	PUSH 4				; CDS_FULLSCREEN
	PUSH dev_mode_a_structure	; DEVMODEA STRUCTURE
	CALL [ChangeDisplaySettingsA]	; USER32.CHANGE_DISPLAY_SETTINGS_A

	PUSH 0				; DISABLE CURSOR
	CALL [ShowCursor]		; USER32.SHOW_CURSOR

	CALL [gluNewQuadric]		; GLU32.GLU_NEW_QUADRIC
	MOV [data_quadric_handle], EAX

	PUSH log_font_a_structure
	CALL [CreateFontIndirectA]	; GDI32.CREATE_FONT_INDIRECT_A

	PUSH EAX			; FONT HANDLE
	PUSH ESI			; DC
	CALL [SelectObject]		; GDI32.SELECT_OBJECT

	PUSH 1				; FIRST SYMBOL WILL HAVE NUMBER: 00
	PUSH 7Eh			; GLYPH COUNT: 7F
	PUSH 1				; FIRST SYMBOL: 00
	PUSH ESI			; DC
	CALL [wglUseFontBitmapsA]	; OPENGL32.WGL_USE_FONT_BITMAPS_A

					; INIT SOUND
	PUSH 00030000h			; FLAGS: CALLBACK_FUNCTION
	PUSH 0				; CALLBACK USER DATA
	PUSH sound_callback_function	; CALLBACK ADDRESS
	PUSH wave_format_ex_structure	; POINTER TO WAVEFORMATEX STRUCTURE
	PUSH 0FFFFFFFFh			; DEVICE ID
	PUSH data_wave_out_handle	; ADDRESS TO STORE RETURNING DESCRIPTOR
	CALL [waveOutOpen]		; WINMM.WAVE_OUT_OPEN

	CALL real_sound_callback	; FIRST CALLBACK RUN
	CALL real_sound_callback	; SECOND CALLBACK RUN

	CALL [timeGetTime]		; WINMM.TIME_GET_TIME
	MOV EBX, EAX			; INITIAL SCENE TIME

demo_cycle:

	CALL [timeGetTime]		; CURRENT SCENE TIME
	SUB EAX, EBX			; GET TIME DIFFERENCE

	MOV ECX, [pointer_to_current_scene_data]	; GET POINTER TO CURRENT SCENE DATA
	MOVZX EDI, byte [ECX]		; TIME REQUIRED FOR SCENE
	IMUL EDI, 435
	CMP EAX, EDI			; TIME ELAPSED?
	JLE play_scene			; IF NO, PLAY SCENE
	ADD ECX, 4
	MOV [pointer_to_current_scene_data], ECX	; MOVE TO NEXT SCENE

	ADD EBX, EAX			; SET CURRENT TIME AS INITIAL TIME FOR NEXT SCENE
	XOR EAX, EAX			; IF NEW SCENE THEN "NO TIME DIFFERENCE" - START FROM BEGINNING

play_scene:

	MOVZX EDI, BYTE [ECX + 3]	; GET LOCAL SCENE TIME
	IMUL EDI, 435
	ADD EDI, EAX			; ADD TIME DIFFERENCE

	PUSH EDI
	FILD dword [ESP]
	FSTP dword [current_scene_local_time]		; SAVE LOCAL TIME
	POP EDI

process_messages:

	PUSH 1			; PM_REMOVE
	PUSH 0			; wMsgFilterMax
	PUSH 0			; wMsgFilterMin
	PUSH 0			; hWnd = all messages for thread
	PUSH msg
	CALL [PeekMessageA]

	TEST EAX, EAX
	JZ messages_done	; NO MESSAGES LEFT

	PUSH msg
	CALL [TranslateMessage]

	PUSH msg
	CALL [DispatchMessage]

	JMP process_messages	; PROCESS OTHER MESSAGES

messages_done:

	CALL calculate_scene		; CALCULATE SCENE

	PUSH ESI
	CALL [wglSwapBuffers]		; OPENGL32.WGL_SWAP_BUFFERS

	PUSH 27				; VK_ESCAPE
	CALL [GetAsyncKeyState]
	AAA				; CHECK FOR PRESSED KEY
					; OFICIALLY ZERO-FLAG AFTER AAA COMMAND IS UNDEFINED
					; BUT SEEMS IT IS DEFINED BUT NON-STANDARD
	JZ demo_cycle			; ESC NOT PRESSED

exit_process:

	PUSH 0
	CALL [ExitProcess]		; EXIT PROGRAM

section '.bss1' readable writeable

empty_geometry:
	db ?, ?, ?			; Very small floating-point number (~0), one byte borrowed from previous segment
	db ?				; NUMBER OF BOXES = 0
	db ?				; NUMBER OF CYLINDERS = 0

section '.bss2' readable writeable

current_playing_sound_buffer_number:
	dd ?

current_channel_used_for_echo:
	dd ?

current_note_number_in_pattern:
	dd ?

current_echo_buffer_position:
	dd ?

current_counter_value:
	dd ?

pointer_to_current_type_of_sound_structure:
	dd ?

section '.bss3' readable writeable

current_random_value_for_channels:
	dd 4 dup(?)

current_phase_for_channels:
	dd 4 dup(?)

number_of_times_random_number_for_noise_was_used:
	dd 4 dup(?)

data_wave_out_handle:
	dd ?

section '.bss4' readable writeable

echo_buffer:
	dd 132300 dup(?)

section '.bss5' readable writeable

pointer_pcm_audio_buffer_1:
	db 32768 dup(?)

pointer_pcm_audio_buffer_2:
	db 32768 dup(?)

section '.bss6' readable writeable

current_object_matrix:
	dd ?

	dd 7 dup(?)

objects_matrices:
	dd ?				; DUMMY DATA
	rept 63 { dd 16 dup(?) }	; OBJECT 1-63 DATA

	dd 15 dup(?)

section '.bss7' readable writeable

sound_random_number_seed:
	dd ?

air_traffic_random_number_seed:
	dd ?

section '.bss8' readable writeable

current_scene_local_time:
	dd ?

data_quadric_handle:
	dd ?

section '.bss9' readable writeable

current_robot_move_data_pointer:
	dd ?

current_robot_part_pointer:
	dd ?

section '.bss10' readable writeable

msg:
	db 28 dup(?)
