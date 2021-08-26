set shell = createobject ("wscript.shell")

strtext = inputbox ("Write down your message you like to spam")
strtimes = inputbox ("How many times do you like to spam?")
strspeed = inputbox ("How fast do you like to spam? (1000 = one per sec, 100 = 10 per sec etc)")
strtimeneed = inputbox ("How many SECONDS do you need to get to your victims input box?")

If not isnumeric (strtimes & strspeed & strtimeneed) then
msgbox "You entered something not numerical. Please Try Again"
wscript.quit
End If
strtimeneed2 = strtimeneed * 1000
do
msgbox "You have " & strtimeneed & " seconds to get to your input area where you are going to spam."
wscript.sleep strtimeneed2
for i=0 to strtimes
shell.sendkeys (strtext & "{enter}")
wscript.sleep strspeed
Next
wscript.sleep strspeed * strtimes / 10
returnvalue=MsgBox ("Want to spam again with the same info?",36)
If returnvalue=6 Then
Msgbox "Ok Spambot Will Start Again"
End If
If returnvalue=7 Then
msgbox "Spambot Going To Sleep"
wscript.quit
End IF
loop
