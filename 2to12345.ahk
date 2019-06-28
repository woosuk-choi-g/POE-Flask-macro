#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


msgbox, 
(LTrim
	!!!POE 플라스크 매크로 작동중!!!

	2를 누르면 12345 다 눌림
	끄려면 윈도우 시계옆에 오토핫키 종료
	채팅에서 2을 입력할땐 clt+2
)

InputWithRandDelay(key) {
	Random, rand, 5, 15
	SendInput %key%
	Sleep rand
}

$2::
	poeActive := false
	IfWinActive Path of Exile ahk_class POEWindowClass
	{
		poeActive := true
	}
	if poeActive {
		InputWithRandDelay(1)
		InputWithRandDelay(2)
		InputWithRandDelay(3)
		InputWithRandDelay(4)
		InputWithRandDelay(5)
	}
	else {
		SendInput 2
	}
return

$^2::
	poeActive := false
	IfWinActive Path of Exile ahk_class POEWindowClass
	{
		poeActive := true
	}
	if poeActive {
		SendInput 2
	}
	else {
		SendInput ^2
	}
return
