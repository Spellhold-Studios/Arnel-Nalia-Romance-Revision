REPLACE_STATE_TRIGGER HABREGA 0 ~!Global("Isduel","GLOBAL",9)~ 

EXTEND_BOTTOM ~HABREGA~ 0
IF ~Global("NaliaQuest","GLOBAL",1) PartyHasItem("ISEAPROF")~ THEN REPLY @0 GOTO ISEA27
END

APPEND ~HABREGA~
IF ~~ THEN BEGIN ISEA27
  SAY @1
  IF ~~ THEN REPLY @2 + ISEA28
  IF ~~ THEN REPLY @3 + ISEA32
END

IF ~~ THEN BEGIN ISEA28
  SAY @4
  IF ~~ THEN REPLY @5 + ISEA29
END

IF ~~ THEN BEGIN ISEA29
  SAY @6
  IF ~~ THEN DO ~TakePartyItem("RUNENOTE")
TakePartyItem("ISEAPROF")~ + ISEA30
END

IF ~~ THEN BEGIN ISEA30
  SAY @7
  IF ~~ THEN REPLY @8 + ISEA31
END

IF ~~ THEN BEGIN ISEA31
  SAY @9
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISAEAXX")~ EXIT
END

IF ~~ THEN BEGIN ISEA32
  SAY @4
  IF ~~ THEN REPLY @5 + ISEA33
END

IF ~~ THEN BEGIN ISEA33
  SAY @6
  IF ~~ THEN DO ~TakePartyItem("RUNENOTE")
TakePartyItem("ISEAPROF")~ + ISEA34
END

IF ~~ THEN BEGIN ISEA34
  SAY @7
  IF ~~ THEN REPLY @2 + ISEA31
END

IF ~Global("Isduel","GLOBAL",9)~ THEN BEGIN ISEA38
  SAY @10
  IF ~~ THEN + ISEA39
END

IF ~~ THEN BEGIN ISEA39
  SAY @11
  IF ~~ THEN + ISEA40
END

IF ~~ THEN BEGIN ISEA40
  SAY @12
  IF ~~ THEN EXTERN ~ISAEAX~ Capture17
END

IF ~~ THEN BEGIN ISEA41
  SAY @13
  IF ~~ THEN + ISEA42
END

IF ~~ THEN BEGIN ISEA42
  SAY @14
  IF ~~ THEN DO ~ReputationInc(1)
GiveGoldForce(10000)
AddexperienceParty(10000)~ EXTERN ~ISAEAX~ Capture18
END

END

APPEND ~ISAEAX~

IF ~~ THEN BEGIN Capture17
  SAY @15
  IF ~~ THEN EXTERN ~HABREGA~ ISEA41
END

IF ~~ THEN BEGIN Capture18
  SAY @16
  IF ~~ THEN DO ~ClearAllActions()
StartCutSceneMode()
StartCutScene("ISAEAF07")~ EXIT
END

END
