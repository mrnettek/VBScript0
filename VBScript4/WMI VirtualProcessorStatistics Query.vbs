On Error Resume Next

Const wbemFlagReturnImmediately = &h10
Const wbemFlagForwardOnly = &h20

arrComputers = Array(".")
For Each strComputer In arrComputers
   WScript.Echo
   WScript.Echo "=========================================="
   WScript.Echo "Computer: " & strComputer
   WScript.Echo "=========================================="

   Set objWMIService = GetObject("winmgmts:\\" & strComputer & "\root\WMI")
   Set colItems = objWMIService.ExecQuery("SELECT * FROM VirtualProcessorStatistics", "WQL", _
                                          wbemFlagReturnImmediately + wbemFlagForwardOnly)

   For Each objItem In colItems
      WScript.Echo "Active: " & objItem.Active
      WScript.Echo "Caption: " & objItem.Caption
      WScript.Echo "Description: " & objItem.Description
      WScript.Echo "fExternalInterrupts: " & objItem.fExternalInterrupts
      WScript.Echo "filler_0: " & objItem.filler_0
      WScript.Echo "filler_100: " & objItem.filler_100
      WScript.Echo "filler_104: " & objItem.filler_104
      WScript.Echo "filler_108: " & objItem.filler_108
      WScript.Echo "filler_112: " & objItem.filler_112
      WScript.Echo "filler_116: " & objItem.filler_116
      WScript.Echo "filler_120: " & objItem.filler_120
      WScript.Echo "filler_124: " & objItem.filler_124
      WScript.Echo "filler_128: " & objItem.filler_128
      WScript.Echo "filler_132: " & objItem.filler_132
      WScript.Echo "filler_136: " & objItem.filler_136
      WScript.Echo "filler_140: " & objItem.filler_140
      WScript.Echo "filler_148: " & objItem.filler_148
      WScript.Echo "filler_152: " & objItem.filler_152
      WScript.Echo "filler_156: " & objItem.filler_156
      WScript.Echo "filler_16: " & objItem.filler_16
      WScript.Echo "filler_160: " & objItem.filler_160
      WScript.Echo "filler_164: " & objItem.filler_164
      WScript.Echo "filler_168: " & objItem.filler_168
      WScript.Echo "filler_172: " & objItem.filler_172
      WScript.Echo "filler_176: " & objItem.filler_176
      WScript.Echo "filler_180: " & objItem.filler_180
      WScript.Echo "filler_184: " & objItem.filler_184
      WScript.Echo "filler_188: " & objItem.filler_188
      WScript.Echo "filler_192: " & objItem.filler_192
      WScript.Echo "filler_196: " & objItem.filler_196
      WScript.Echo "filler_200: " & objItem.filler_200
      WScript.Echo "filler_204: " & objItem.filler_204
      WScript.Echo "filler_208: " & objItem.filler_208
      WScript.Echo "filler_212: " & objItem.filler_212
      WScript.Echo "filler_216: " & objItem.filler_216
      WScript.Echo "filler_220: " & objItem.filler_220
      WScript.Echo "filler_224: " & objItem.filler_224
      WScript.Echo "filler_228: " & objItem.filler_228
      WScript.Echo "filler_232: " & objItem.filler_232
      WScript.Echo "filler_236: " & objItem.filler_236
      WScript.Echo "filler_24: " & objItem.filler_24
      WScript.Echo "filler_240: " & objItem.filler_240
      WScript.Echo "filler_244: " & objItem.filler_244
      WScript.Echo "filler_248: " & objItem.filler_248
      WScript.Echo "filler_252: " & objItem.filler_252
      WScript.Echo "filler_256: " & objItem.filler_256
      WScript.Echo "filler_260: " & objItem.filler_260
      WScript.Echo "filler_264: " & objItem.filler_264
      WScript.Echo "filler_268: " & objItem.filler_268
      WScript.Echo "filler_272: " & objItem.filler_272
      WScript.Echo "filler_276: " & objItem.filler_276
      WScript.Echo "filler_280: " & objItem.filler_280
      WScript.Echo "filler_284: " & objItem.filler_284
      WScript.Echo "filler_288: " & objItem.filler_288
      WScript.Echo "filler_292: " & objItem.filler_292
      WScript.Echo "filler_296: " & objItem.filler_296
      WScript.Echo "filler_300: " & objItem.filler_300
      WScript.Echo "filler_304: " & objItem.filler_304
      WScript.Echo "filler_308: " & objItem.filler_308
      WScript.Echo "filler_312: " & objItem.filler_312
      WScript.Echo "filler_316: " & objItem.filler_316
      WScript.Echo "filler_32: " & objItem.filler_32
      WScript.Echo "filler_320: " & objItem.filler_320
      WScript.Echo "filler_324: " & objItem.filler_324
      WScript.Echo "filler_328: " & objItem.filler_328
      WScript.Echo "filler_332: " & objItem.filler_332
      WScript.Echo "filler_336: " & objItem.filler_336
      WScript.Echo "filler_340: " & objItem.filler_340
      WScript.Echo "filler_344: " & objItem.filler_344
      WScript.Echo "filler_348: " & objItem.filler_348
      WScript.Echo "filler_352: " & objItem.filler_352
      WScript.Echo "filler_356: " & objItem.filler_356
      WScript.Echo "filler_360: " & objItem.filler_360
      WScript.Echo "filler_364: " & objItem.filler_364
      WScript.Echo "filler_368: " & objItem.filler_368
      WScript.Echo "filler_372: " & objItem.filler_372
      WScript.Echo "filler_376: " & objItem.filler_376
      WScript.Echo "filler_380: " & objItem.filler_380
      WScript.Echo "filler_384: " & objItem.filler_384
      WScript.Echo "filler_388: " & objItem.filler_388
      WScript.Echo "filler_392: " & objItem.filler_392
      WScript.Echo "filler_396: " & objItem.filler_396
      WScript.Echo "filler_40: " & objItem.filler_40
      WScript.Echo "filler_400: " & objItem.filler_400
      WScript.Echo "filler_404: " & objItem.filler_404
      WScript.Echo "filler_408: " & objItem.filler_408
      WScript.Echo "filler_412: " & objItem.filler_412
      WScript.Echo "filler_416: " & objItem.filler_416
      WScript.Echo "filler_420: " & objItem.filler_420
      WScript.Echo "filler_424: " & objItem.filler_424
      WScript.Echo "filler_428: " & objItem.filler_428
      WScript.Echo "filler_432: " & objItem.filler_432
      WScript.Echo "filler_436: " & objItem.filler_436
      WScript.Echo "filler_440: " & objItem.filler_440
      WScript.Echo "filler_444: " & objItem.filler_444
      WScript.Echo "filler_448: " & objItem.filler_448
      WScript.Echo "filler_452: " & objItem.filler_452
      WScript.Echo "filler_456: " & objItem.filler_456
      WScript.Echo "filler_460: " & objItem.filler_460
      WScript.Echo "filler_464: " & objItem.filler_464
      WScript.Echo "filler_468: " & objItem.filler_468
      WScript.Echo "filler_472: " & objItem.filler_472
      WScript.Echo "filler_476: " & objItem.filler_476
      WScript.Echo "filler_480: " & objItem.filler_480
      WScript.Echo "filler_484: " & objItem.filler_484
      WScript.Echo "filler_488: " & objItem.filler_488
      WScript.Echo "filler_492: " & objItem.filler_492
      WScript.Echo "filler_496: " & objItem.filler_496
      WScript.Echo "filler_500: " & objItem.filler_500
      WScript.Echo "filler_504: " & objItem.filler_504
      WScript.Echo "filler_508: " & objItem.filler_508
      WScript.Echo "filler_512: " & objItem.filler_512
      WScript.Echo "filler_516: " & objItem.filler_516
      WScript.Echo "filler_52: " & objItem.filler_52
      WScript.Echo "filler_520: " & objItem.filler_520
      WScript.Echo "filler_524: " & objItem.filler_524
      WScript.Echo "filler_528: " & objItem.filler_528
      WScript.Echo "filler_532: " & objItem.filler_532
      WScript.Echo "filler_536: " & objItem.filler_536
      WScript.Echo "filler_540: " & objItem.filler_540
      WScript.Echo "filler_544: " & objItem.filler_544
      WScript.Echo "filler_548: " & objItem.filler_548
      WScript.Echo "filler_552: " & objItem.filler_552
      WScript.Echo "filler_556: " & objItem.filler_556
      WScript.Echo "filler_56: " & objItem.filler_56
      WScript.Echo "filler_560: " & objItem.filler_560
      WScript.Echo "filler_564: " & objItem.filler_564
      WScript.Echo "filler_568: " & objItem.filler_568
      WScript.Echo "filler_572: " & objItem.filler_572
      WScript.Echo "filler_576: " & objItem.filler_576
      WScript.Echo "filler_580: " & objItem.filler_580
      WScript.Echo "filler_584: " & objItem.filler_584
      WScript.Echo "filler_588: " & objItem.filler_588
      WScript.Echo "filler_592: " & objItem.filler_592
      WScript.Echo "filler_596: " & objItem.filler_596
      WScript.Echo "filler_60: " & objItem.filler_60
      WScript.Echo "filler_600: " & objItem.filler_600
      WScript.Echo "filler_604: " & objItem.filler_604
      WScript.Echo "filler_608: " & objItem.filler_608
      WScript.Echo "filler_612: " & objItem.filler_612
      WScript.Echo "filler_616: " & objItem.filler_616
      WScript.Echo "filler_620: " & objItem.filler_620
      WScript.Echo "filler_624: " & objItem.filler_624
      WScript.Echo "filler_628: " & objItem.filler_628
      WScript.Echo "filler_632: " & objItem.filler_632
      WScript.Echo "filler_636: " & objItem.filler_636
      WScript.Echo "filler_64: " & objItem.filler_64
      WScript.Echo "filler_640: " & objItem.filler_640
      WScript.Echo "filler_644: " & objItem.filler_644
      WScript.Echo "filler_648: " & objItem.filler_648
      WScript.Echo "filler_652: " & objItem.filler_652
      WScript.Echo "filler_660: " & objItem.filler_660
      WScript.Echo "filler_664: " & objItem.filler_664
      WScript.Echo "filler_668: " & objItem.filler_668
      WScript.Echo "filler_672: " & objItem.filler_672
      WScript.Echo "filler_676: " & objItem.filler_676
      WScript.Echo "filler_68: " & objItem.filler_68
      WScript.Echo "filler_680: " & objItem.filler_680
      WScript.Echo "filler_684: " & objItem.filler_684
      WScript.Echo "filler_688: " & objItem.filler_688
      WScript.Echo "filler_692: " & objItem.filler_692
      WScript.Echo "filler_696: " & objItem.filler_696
      WScript.Echo "filler_700: " & objItem.filler_700
      WScript.Echo "filler_704: " & objItem.filler_704
      WScript.Echo "filler_708: " & objItem.filler_708
      WScript.Echo "filler_712: " & objItem.filler_712
      WScript.Echo "filler_716: " & objItem.filler_716
      WScript.Echo "filler_72: " & objItem.filler_72
      WScript.Echo "filler_720: " & objItem.filler_720
      WScript.Echo "filler_76: " & objItem.filler_76
      WScript.Echo "filler_80: " & objItem.filler_80
      WScript.Echo "filler_84: " & objItem.filler_84
      WScript.Echo "filler_88: " & objItem.filler_88
      WScript.Echo "filler_92: " & objItem.filler_92
      WScript.Echo "filler_96: " & objItem.filler_96
      WScript.Echo "Frequency_Object: " & objItem.Frequency_Object
      WScript.Echo "Frequency_PerfTime: " & objItem.Frequency_PerfTime
      WScript.Echo "Frequency_Sys100NS: " & objItem.Frequency_Sys100NS
      WScript.Echo "fVmmContextSwitches: " & objItem.fVmmContextSwitches
      WScript.Echo "fVmmCumulativeGuestTimeMicroseconds: " & objItem.fVmmCumulativeGuestTimeMicroseconds
      WScript.Echo "fVmmExceptions: " & objItem.fVmmExceptions
      WScript.Echo "InstanceName: " & objItem.InstanceName
      WScript.Echo "Name: " & objItem.Name
      WScript.Echo "Timestamp_Object: " & objItem.Timestamp_Object
      WScript.Echo "Timestamp_PerfTime: " & objItem.Timestamp_PerfTime
      WScript.Echo "Timestamp_Sys100NS: " & objItem.Timestamp_Sys100NS
      WScript.Echo
   Next
Next

