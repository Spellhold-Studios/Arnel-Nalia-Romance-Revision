APPEND ~ISAEA~

IF ~~ THEN BEGIN 32
  SAY @0
  IF ~~ THEN EXIT
END

IF ~Global("NaliaQuest","GLOBAL",1)~ THEN BEGIN N35
  SAY @1
  IF ~~ THEN EXTERN ~NALIAJ~ N392
END

IF ~~ THEN BEGIN N36
  SAY @2
  IF ~~ THEN EXTERN ~NALIAJ~ N393
END

IF ~~ THEN BEGIN N37
  SAY @3
  IF ~~ THEN EXTERN ~HABREGA~ ISAEA36
END

IF ~~ THEN BEGIN N38
  SAY @4 
  IF ~~ THEN DO ~SetGlobal("NaliaQuest","GLOBAL",2)
ClearAllActions()
StartCutSceneMode()
StartCutScene("ISAEAXXX")
EraseJournalEntry(75241)
EraseJournalEntry(75242)
EraseJournalEntry(75243)
EraseJournalEntry(75244)
AddJournalEntry(75245,QUEST_DONE)~ EXIT
END

END

APPEND ~NALIAJ~

IF ~~ THEN BEGIN N392
  SAY @5
  IF ~~ THEN DO ~IncrementGlobal("NaliaBranch2","LOCALS",1)~ EXTERN ~ISAEA~ N36
END

IF ~~ THEN BEGIN N393
  SAY @6
  IF ~~ THEN EXTERN ~HABREGA~ ISAEA35
END

END

APPEND ~HABREGA~

IF ~~ THEN BEGIN ISAEA35
  SAY @7
  IF ~~ THEN EXTERN ~ISAEA~ N37
END

IF ~~ THEN BEGIN ISAEA36
  SAY @8
  IF ~~ THEN GOTO ISEA37
END

IF ~~ THEN BEGIN ISEA37
  SAY @9
  IF ~~ THEN EXTERN ~ISAEA~ N38
END

END
