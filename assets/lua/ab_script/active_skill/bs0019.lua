--1021880:邪悪龍軍団_邪悪龍覚醒(アクティブスキル)
--sp_effect_b4_00185

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 1036; --気が広がる
SE_03 = 1036; --かめはめ
SE_04 = 1018; --カットイン
SE_05 = 1035; --カットイン攻撃
SE_06 = 1021; --発射
SE_07 = 1022; --のびる発射
SE_08 = 1042; --カットイン
SE_09 = 1023; --HIT
SE_10 = 1024; --爆破
SE_11 = 1054; --割れる音
SE_12 = 09;

--エフェクト(味方)
SP_01=	157337	;--	煙が出る～一星龍でる～煙が龍に変わる
SP_02=	157338	;--	シルエットになる
SP_03=	157339	;--	邪悪龍軍団集結

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


setMoveKey(   0,   0,    0, -5000,   0);
setMoveKey(   1,   0,    0, -5000,   0);
setMoveKey(   2,   0,    0, -5000,   0);
setMoveKey(   3,   0,    0, -5000,   0);
setMoveKey(   4,   0,    0, -5000,   0);
setMoveKey(   5,   0,    0, -5000,   0);
setMoveKey(   6,   0,    0, -5000,   0);
setScaleKey(  0,   0,  1.6, 1.6 );
setScaleKey(  1,   0,  1.6, 1.6 );
setScaleKey(  2,   0,  1.6, 1.6 );
setScaleKey(  3,   0,  1.6, 1.6 );
setScaleKey(  4,   0,  1.6, 1.6 );
setScaleKey(  5,   0,  1.6, 1.6 );
setScaleKey(  6,   0,  1.6, 1.6 );
setRotateKey( 0,   0,  0 );
setRotateKey( 1,   0,  0 );
setRotateKey( 2,   0,  0 );
setRotateKey( 3,   0,  0 );
setRotateKey( 4,   0,  0 );
setRotateKey( 5,   0,  0 );
setRotateKey( 6,   0,  0 );


setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);
setAlphaKey( 0, 1, 255 );

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6 );
setScaleKey(  1,   1,  1.6, 1.6 );
setScaleKey(  2,   1,  1.6, 1.6 );
setScaleKey(  3,   1,  1.6, 1.6 );
setScaleKey(  4,   1,  1.6, 1.6 );
setScaleKey(  5,   1,  1.6, 1.6 );
setScaleKey(  6,   1,  1.6, 1.6 );
setRotateKey( 0,   1,  0 );
setRotateKey( 1,   1,  0 );
setRotateKey( 2,   1,  0 );
setRotateKey( 3,   1,  0 );
setRotateKey( 4,   1,  0 );
setRotateKey( 5,   1,  0 );
setRotateKey( 6,   1,  0 );

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
-------------------------------------------
--煙が出る～一星龍でる～煙が龍に変わる
-------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
smoke = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, smoke, 0, 0, 0 );
setEffMoveKey( spep_0 + 716, smoke, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, smoke, 1.0, 1.0 );
setEffScaleKey( spep_0 + 716, smoke, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, smoke, 0 );
setEffRotateKey( spep_0 + 716, smoke, 0 );
setEffAlphaKey( spep_0 + 0, smoke, 255 );
setEffAlphaKey( spep_0 + 714, smoke, 255 );
setEffAlphaKey( spep_0 + 715, smoke, 255 );
setEffAlphaKey( spep_0 + 716, smoke, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 8 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );
SE002 = playSe( spep_0 + 0, 1175 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );
stopSe( spep_0 + 132, SE002, 106 );
setPitch( spep_0 + 0, SE002, -400 );
setTimeStretch( SE002, 0.73, 10, 1 );

--ヒビ入る
SE003 = playSe( spep_0 + 126, 1041 );

--煙出る
SE004 = playSe( spep_0 + 126, 1219 );
setSeVolumeByWorkId( spep_0 + 126, SE004, 158 );

--セリフカットイン
SE005 = playSe( spep_0 + 232, 1018 );

--決め
SE006 = playSe( spep_0 + 236, 20 );
setSeVolumeByWorkId( spep_0 + 236, SE006, 58 );

--環境音
SE007 = playSe( spep_0 + 364, 1278 );
setSeVolumeByWorkId( spep_0 + 364, SE007, 54 );
SE008 = playSe( spep_0 + 364, 1314 );
setSeVolumeByWorkId( spep_0 + 364, SE008, 46 );
stopSe( spep_0 + 688, SE008, 54 );

--邪悪龍出現
SE009 = playSe( spep_0 + 374, 1321 );
setSeVolumeByWorkId( spep_0 + 374, SE009, 50 );
stopSe( spep_0 + 446, SE009, 34 );
SE010 = playSe( spep_0 + 454, 1321 );
setSeVolumeByWorkId( spep_0 + 454, SE010, 50 );
stopSe( spep_0 + 558, SE010, 24 );
SE011 = playSe( spep_0 + 554, 1321 );
setSeVolumeByWorkId( spep_0 + 554, SE011, 50 );
setSeVolumeByWorkId( spep_0 + 692, SE011, 50);
setSeVolumeByWorkId( spep_0 + 693, SE011, 53.9);
setSeVolumeByWorkId( spep_0 + 694, SE011, 57.8);
setSeVolumeByWorkId( spep_0 + 695, SE011, 61.7);
setSeVolumeByWorkId( spep_0 + 696, SE011, 65.6);
setSeVolumeByWorkId( spep_0 + 697, SE011, 69.5);
setSeVolumeByWorkId( spep_0 + 698, SE011, 73.4);
setSeVolumeByWorkId( spep_0 + 699, SE011, 77.3);
setSeVolumeByWorkId( spep_0 + 700, SE011, 81.2);
setSeVolumeByWorkId( spep_0 + 701, SE011, 85.1);
setSeVolumeByWorkId( spep_0 + 702, SE011, 89);
setSeVolumeByWorkId( spep_0 + 703, SE011, 92.9);
setSeVolumeByWorkId( spep_0 + 704, SE011, 96.8);
setSeVolumeByWorkId( spep_0 + 705, SE011, 100.7);
setSeVolumeByWorkId( spep_0 + 706, SE011, 104.6);
setSeVolumeByWorkId( spep_0 + 707, SE011, 108.5);
setSeVolumeByWorkId( spep_0 + 708, SE011, 112);
setSeVolumeByWorkId( spep_0 + 708, SE011, 112);
setSeVolumeByWorkId( spep_0 + 709, SE011, 122.3);
setSeVolumeByWorkId( spep_0 + 710, SE011, 132.6);
setSeVolumeByWorkId( spep_0 + 711, SE011, 142.9);
setSeVolumeByWorkId( spep_0 + 712, SE011, 153.2);
setSeVolumeByWorkId( spep_0 + 713, SE011, 163.5);
setSeVolumeByWorkId( spep_0 + 714, SE011, 173.8);
setSeVolumeByWorkId( spep_0 + 715, SE011, 184.1);
setSeVolumeByWorkId( spep_0 + 716, SE011, 194.4);
setSeVolumeByWorkId( spep_0 + 717, SE011, 204.7);
setSeVolumeByWorkId( spep_0 + 718, SE011, 215);
setSeVolumeByWorkId( spep_0 + 719, SE011, 225.3);
setSeVolumeByWorkId( spep_0 + 720, SE011, 235.6);
setSeVolumeByWorkId( spep_0 + 721, SE011, 245.9);
setSeVolumeByWorkId( spep_0 + 722, SE011, 256.2);
setSeVolumeByWorkId( spep_0 + 723, SE011, 266.5);
setSeVolumeByWorkId( spep_0 + 724, SE011, 276.8);
setSeVolumeByWorkId( spep_0 +725, SE011, 287.1);
setSeVolumeByWorkId( spep_0 +726, SE011, 297.4);
setSeVolumeByWorkId( spep_0 +727, SE011, 307.7);
setSeVolumeByWorkId( spep_0 +728, SE011, 318);
setSeVolumeByWorkId( spep_0 +729, SE011, 328.3);
setSeVolumeByWorkId( spep_0 +730, SE011, 338.6);
setSeVolumeByWorkId( spep_0 +731, SE011, 348.9);
setSeVolumeByWorkId( spep_0 +732, SE011, 359.2);
setSeVolumeByWorkId( spep_0 +733, SE011, 369.5);
setSeVolumeByWorkId( spep_0 +734, SE011, 379.8);
setSeVolumeByWorkId( spep_0 +735, SE011, 390.1);
setSeVolumeByWorkId( spep_0 +736, SE011, 400);

--ボイス
playVoice( spep_0 + 232, 272 );
setVoiceVolume( spep_0 + 232, 272, 146 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 720 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_1=spep_0+716;
-------------------------------------------
--シルエットになる
-------------------------------------------
-- ** エフェクト等 ** --
silhouette = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, silhouette, 0, 0, 0 );
setEffMoveKey( spep_1 + 118, silhouette, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, silhouette, 1.0, 1.0 );
setEffScaleKey( spep_1 + 118, silhouette, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, silhouette, 0 );
setEffRotateKey( spep_1 + 118, silhouette, 0 );
setEffAlphaKey( spep_1 + 0, silhouette, 255 );
setEffAlphaKey( spep_1 + 116, silhouette, 255 );
setEffAlphaKey( spep_1 + 117, silhouette, 255 );
setEffAlphaKey( spep_1 + 118, silhouette, 0 );

--SE
--雷予兆
SE012 = playSe( spep_1 + 0, 1230 );

--雷
SE013 = playSe( spep_1 + 58, 1126 );
setSeVolumeByWorkId( spep_1 + 58, SE013, 44 );
stopSe( spep_1 + 98, SE013, 170 );
SE014 = playSe( spep_1 + 58, 1231 );
setSeVolumeByWorkId( spep_1 + 58, SE014, 162 );
SE015 = playSe( spep_1 + 58, 1169 );
setSeVolumeByWorkId( spep_1 + 58, SE015, 66 );
SE016 = playSe( spep_1 + 58, 1153 );
setSeVolumeByWorkId( spep_1 + 58, SE016, 62 );
SE017 = playSe( spep_1 + 58, 1229 );
setSeVolumeByWorkId( spep_1 + 58, SE017, 88 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 120 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--次の準備
spep_2=spep_1+118;
-------------------------------------------
--邪悪龍軍団集結
-------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_2 + 196, finish, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 196, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 196, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 196, finish, 255 );

--SE
--ラスト決め
SE018 = playSe( spep_2 + 24, 1011 );
setSeVolumeByWorkId( spep_2 + 24, SE018, 79 );
SE019 = playSe( spep_2 + 24, 20 );
setSeVolumeByWorkId( spep_2 + 24, SE019, 69 );
SE020 = playSe( spep_2 + 24, 1271 );
setSeVolumeByWorkId( spep_2 + 24, SE020, 79 );
stopSe( spep_2 + 164, SE020, 44 );

--ボイス
--もうお遊びは終わりだ
playVoice( spep_2 + 56, 273 );
setVoiceVolume( spep_2 + 56, 273, 120 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 200 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

endPhase( spep_2 +196 );
else end