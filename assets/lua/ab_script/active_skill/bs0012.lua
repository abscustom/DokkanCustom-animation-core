--1021140:超サイヤ人2孫悟飯(少年期)_父との約束(アクティブ)
--sp_effect_b4_00174

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
SP_01=	156449	;--	回想シーン
SP_02=	156450	;--	目をさます
SP_03=	156451	;--	手をついて立ち上がる
SP_04=	156452	;--	「おとうさんが助けてくれた」
SP_05=	156453	;--	「うおおおおお」
SP_06=	156454	;--	「そしておまえたちを〜」
SP_07=	156456	;--	「ボクに地球を〜」

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 回想シーン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
recollection = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, recollection, 0, 0, 0 );
setEffMoveKey( spep_0 + 78, recollection, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, recollection, 1.0, 1.0 );
setEffScaleKey( spep_0 + 78, recollection, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, recollection, 0 );
setEffRotateKey( spep_0 + 78, recollection, 0 );
setEffAlphaKey( spep_0 + 0, recollection, 255 );
setEffAlphaKey( spep_0 + 78, recollection, 255 );
setEffAlphaKey( spep_0 + 79, recollection, 0 );
setEffAlphaKey( spep_0 + 80, recollection, 0 );

--SE
--悟空助ける
SE001 = playSe( spep_0 + 0, 1288 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 200 );
stopSe( spep_0 + 78, SE001, 12 );


--画面切り替わり
SE002 = playSe( spep_0 + 74, 8 );
setSeVolumeByWorkId( spep_0 + 74, SE002, 65 );
setTimeStretch( SE002, 1.26, 10, 1 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 80, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 70, 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+78;
------------------------------------------------------
-- 目をさます
------------------------------------------------------
-- ** エフェクト等 ** --
awakening = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, awakening, 0, 0, 0 );
setEffMoveKey( spep_1 + 86, awakening, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, awakening, 1.0, 1.0 );
setEffScaleKey( spep_1 + 86, awakening, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, awakening, 0 );
setEffRotateKey( spep_1 + 86, awakening, 0 );
setEffAlphaKey( spep_1 + 0, awakening, 255 );
setEffAlphaKey( spep_1 + 86, awakening, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 90, 0, 0, 0, 0, 255 );  --黒　背景

--SE
--環境音
SE003 = playSe( spep_1 + 0, 1269 );
setSeVolumeByWorkId( spep_1 + 0, SE003, 13 );

--次の準備
spep_2=spep_1+86;
------------------------------------------------------
-- 手をついて立ち上がる
------------------------------------------------------
-- ** エフェクト等 ** --
stand = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, stand, 0, 0, 0 );
setEffMoveKey( spep_2 + 68, stand, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, stand, 1.0, 1.0 );
setEffScaleKey( spep_2 + 68, stand, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, stand, 0 );
setEffRotateKey( spep_2 + 68, stand, 0 );
setEffAlphaKey( spep_2 + 0, stand, 255 );
setEffAlphaKey( spep_2 + 68, stand, 255 );

--SE
--地面をつかむ
SE004 = playSe( spep_2+10 + 0, 1192 );
setSeVolumeByWorkId( spep_2+10 + 0, SE004, 58 );
stopSe( spep_2+10 + 16, SE004, 10 );
SE005 = playSe( spep_2+10 + 2, 1108 );
setSeVolumeByWorkId( spep_2+10 + 2, SE005, 119 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+68;
------------------------------------------------------
-- 「おとうさんが助けてくれた」
------------------------------------------------------
-- ** エフェクト等 ** --
help = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, help, 0, 0, 0 );
setEffMoveKey( spep_3 + 146, help, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, help, 1.0, 1.0 );
setEffScaleKey( spep_3 + 146, help, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, help, 0 );
setEffRotateKey( spep_3 + 146, help, 0 );
setEffAlphaKey( spep_3 + 0, help, 255 );
setEffAlphaKey( spep_3 + 146, help, 255 );

--SE
--気ダメ
SE006 = playSe( spep_3 + 100, 1035 );
SE007 = playSe( spep_3 + 104, 1258 );
setSeVolumeByWorkId( spep_3 + 104, SE007, 54 );
SE008 = playSe( spep_3 + 104, 1188 );
setSeVolumeByWorkId( spep_3 + 104, SE008, 41 );

--ボイス
--お父さんが助けてくれた！
playVoice( spep_3-14 + 12, 229 );
setVoiceVolume( spep_3-14 + 12, 229, 70 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 150, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_4=spep_3+146;
------------------------------------------------------
-- 「うおおおおお」
------------------------------------------------------
-- ** エフェクト等 ** --
roar = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, roar, 0, 0, 0 );
setEffMoveKey( spep_4 + 160, roar, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, roar, 1.0, 1.0 );
setEffScaleKey( spep_4 + 160, roar, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, roar, 0 );
setEffRotateKey( spep_4 + 160, roar, 0 );
setEffAlphaKey( spep_4 + 0, roar, 255 );
setEffAlphaKey( spep_4 + 160, roar, 255 );

--SE
--気ダメ
--環境音
stopSe( spep_4 + 66, SE003, 0 );

--イナヅマ
SE009 = playSe( spep_4 + 0, 1148 );
setSeVolumeByWorkId( spep_4 + 0, SE009, 36 );

--オーラ
SE010 = playSe( spep_4 + 0, 1036 );
setSeVolumeByWorkId( spep_4 + 0, SE010, 63 );
SE012 = playSe( spep_4 + 24, 1036 );
setSeVolumeByWorkId( spep_4 + 24, SE012, 63 );
SE013 = playSe( spep_4 + 48, 1036 );
setSeVolumeByWorkId( spep_4 + 48, SE013, 63 );
SE015 = playSe( spep_4 + 72, 1036 );
setSeVolumeByWorkId( spep_4 + 72, SE015, 63 );
SE017 = playSe( spep_4 + 96, 1036 );
setSeVolumeByWorkId( spep_4 + 96, SE017, 63 );
SE018 = playSe( spep_4 + 120, 1036 );
setSeVolumeByWorkId( spep_4 + 120, SE018, 63 );
SE019 = playSe( spep_4 + 144, 1036 );
setSeVolumeByWorkId( spep_4 + 144, SE019, 63 );


--気爆発
SE011 = playSe( spep_4 + 56, 1223 );

setSeVolumeByWorkId( spep_4 + 56, SE011, 0 );
setSeVolumeByWorkId( spep_4 + 57, SE011, 4.1 );
setSeVolumeByWorkId( spep_4 + 58, SE011, 8.2 );
setSeVolumeByWorkId( spep_4 + 59, SE011, 12.3 );
setSeVolumeByWorkId( spep_4 + 60, SE011, 16.4 );
setSeVolumeByWorkId( spep_4 + 61, SE011, 20.5 );
setSeVolumeByWorkId( spep_4 + 62, SE011, 24.6 );
setSeVolumeByWorkId( spep_4 + 63, SE011, 28.7 );
setSeVolumeByWorkId( spep_4 + 64, SE011, 32.8 );
setSeVolumeByWorkId( spep_4 + 65, SE011, 36.9 );
setSeVolumeByWorkId( spep_4 + 66, SE011, 41 );
setSeVolumeByWorkId( spep_4 + 67, SE011, 45.1 );
setSeVolumeByWorkId( spep_4 + 68, SE011, 49.2 );
setSeVolumeByWorkId( spep_4 + 69, SE011, 53.3 );
setSeVolumeByWorkId( spep_4 + 70, SE011, 57.4 );
setSeVolumeByWorkId( spep_4 + 71, SE011, 61.5 );
setSeVolumeByWorkId( spep_4 + 72, SE011, 65.6 );


setSeVolumeByWorkId( spep_4 + 83, SE011, 65 );
setSeVolumeByWorkId( spep_4 + 84, SE011, 83.1 );
setSeVolumeByWorkId( spep_4 + 85, SE011, 101.2 );
setSeVolumeByWorkId( spep_4 + 86, SE011, 119.3 );
setSeVolumeByWorkId( spep_4 + 87, SE011, 137.4 );
setSeVolumeByWorkId( spep_4 + 88, SE011, 155.5 );
setSeVolumeByWorkId( spep_4 + 89, SE011, 173.6 );
setSeVolumeByWorkId( spep_4 + 90, SE011, 191.7 );
setSeVolumeByWorkId( spep_4 + 91, SE011, 209.8 );
setSeVolumeByWorkId( spep_4 + 92, SE011, 227.9 );
setSeVolumeByWorkId( spep_4 + 93, SE011, 246 );
setSeVolumeByWorkId( spep_4 + 94, SE011, 264.1 );
setSeVolumeByWorkId( spep_4 + 95, SE011, 282.2 );
setSeVolumeByWorkId( spep_4 + 96, SE011, 300.3 );
setSeVolumeByWorkId( spep_4 + 97, SE011, 318.4 );
setSeVolumeByWorkId( spep_4 + 98, SE011, 336.5 );
setSeVolumeByWorkId( spep_4 + 99, SE011, 354.6 );

--[[
setSeVolumeByWorkId( spep_4 + 40, SE011,63);
setSeVolumeByWorkId( spep_4 + 41, SE011,82.5);
setSeVolumeByWorkId( spep_4 + 42, SE011,102);
setSeVolumeByWorkId( spep_4 + 43, SE011,121.5);
setSeVolumeByWorkId( spep_4 + 44, SE011,141);
setSeVolumeByWorkId( spep_4 + 45, SE011,160.5);
setSeVolumeByWorkId( spep_4 + 46, SE011,180);
setSeVolumeByWorkId( spep_4 + 47, SE011,182.2);
setSeVolumeByWorkId( spep_4 + 48, SE011,184.4);
setSeVolumeByWorkId( spep_4 + 49, SE011,186.6);
setSeVolumeByWorkId( spep_4 + 50, SE011,188.8);
setSeVolumeByWorkId( spep_4 + 51, SE011,191);
setSeVolumeByWorkId( spep_4 + 52, SE011,193.2);
setSeVolumeByWorkId( spep_4 +53, SE011,195.4);
setSeVolumeByWorkId( spep_4 +54, SE011,197.6);
setSeVolumeByWorkId( spep_4 +55, SE011,199.8);
setSeVolumeByWorkId( spep_4 +56, SE011,202);
setSeVolumeByWorkId( spep_4 +57, SE011,204.2);
setSeVolumeByWorkId( spep_4 +58, SE011,206.4);
setSeVolumeByWorkId( spep_4 +59, SE011,208.6);
setSeVolumeByWorkId( spep_4 +60, SE011,210);
setSeVolumeByWorkId( spep_4 +61, SE011,213);
setSeVolumeByWorkId( spep_4 +62, SE011,215.2);
setSeVolumeByWorkId( spep_4 +63, SE011,217.5);
setSeVolumeByWorkId( spep_4 +64, SE011,219.7);
setSeVolumeByWorkId( spep_4 +65, SE011,221.9);
setSeVolumeByWorkId( spep_4 +66, SE011,224.1);
setSeVolumeByWorkId( spep_4 +67, SE011,226.3);
setSeVolumeByWorkId( spep_4 +68, SE011,228.5);
setSeVolumeByWorkId( spep_4 +69, SE011,230.7);
setSeVolumeByWorkId( spep_4 +70, SE011,232.9);
setSeVolumeByWorkId( spep_4 +71, SE011,235.1);
setSeVolumeByWorkId( spep_4 +72, SE011,237.3);
setSeVolumeByWorkId( spep_4 +73, SE011,239.5);
setSeVolumeByWorkId( spep_4 +74, SE011,241.7);
setSeVolumeByWorkId( spep_4 +75, SE011,243.9);
setSeVolumeByWorkId( spep_4 +76, SE011,246.1);
setSeVolumeByWorkId( spep_4 +77, SE011,248.3);
setSeVolumeByWorkId( spep_4 +78, SE011,250.5);
setSeVolumeByWorkId( spep_4 +79, SE011,252.7);
setSeVolumeByWorkId( spep_4 +80, SE011,255);
]]
setStartTimeMs( SE011,  267 );

SE014 = playSe( spep_4+4 + 56, 1024 );
setSeVolumeByWorkId( spep_4+4 + 56, SE014, 63 );
SE016 = playSe( spep_4 + 82, 1184 );
setSeVolumeByWorkId( spep_4 + 82, SE016, 89 );
stopSe( spep_4+4 + 124, SE016, 88 );

--ボイス
--うおおおおお！
playVoice( spep_4 + 12, 230 );
setVoiceVolume( spep_4 + 12, 230, 100 );

--白フェード
entryFade( spep_4 + 152, 4, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 160, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_5=spep_4+160;
------------------------------------------------------
-- 「そしておまえたちを〜」
------------------------------------------------------
-- ** エフェクト等 ** --
your = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, your, 0, 0, 0 );
setEffMoveKey( spep_5 + 236, your, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, your, 1.0, 1.0 );
setEffScaleKey( spep_5 + 236, your, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, your, 0 );
setEffRotateKey( spep_5 + 236, your, 0 );
setEffAlphaKey( spep_5 + 0, your, 255 );
setEffAlphaKey( spep_5 + 236, your, 255 );

--SE
--オーラ
SE020 = playSe( spep_5-4 + 14, 1036 );
setSeVolumeByWorkId( spep_5-4 + 14, SE020, 63 );
SE022 = playSe( spep_5-4 + 38, 1036 );
setSeVolumeByWorkId( spep_5-4 + 38, SE022, 56 );
SE023 = playSe( spep_5-4 + 62, 1036 );
setSeVolumeByWorkId( spep_5-4 + 62, SE023, 56 );
SE024 = playSe( spep_5-4 + 86, 1036 );
setSeVolumeByWorkId( spep_5-4 + 86, SE024, 56 );
SE025 = playSe( spep_5-4 + 110, 1036 );
setSeVolumeByWorkId( spep_5-4 + 110, SE025, 56 );
SE026 = playSe( spep_5-4 + 134, 1036 );
setSeVolumeByWorkId( spep_5-4 + 134, SE026, 56 );
SE027 = playSe( spep_5-4 + 158, 1036 );
setSeVolumeByWorkId( spep_5-4 + 158, SE027, 56 );
SE028 = playSe( spep_5-4 + 182, 1036 );
setSeVolumeByWorkId( spep_5-4 + 182, SE028, 56 );
SE029 = playSe( spep_5-4 + 206, 1036 );
setSeVolumeByWorkId( spep_5-4 + 206, SE029, 56 );
SE031 = playSe( spep_5-4 + 230, 1036 );
setSeVolumeByWorkId( spep_5-4 + 230, SE031, 56 );

--セリフカットイン
SE021 = playSe( spep_5 + 4, 1018 );
setSeVolumeByWorkId( spep_5 + 4, SE021, 71 );

--イナヅマ
SE030 = playSe( spep_5 + 222, 1147 );
setSeVolumeByWorkId( spep_5 + 222, SE030, 36 );

--ボイス
--そしてお前たちを絶対許さないと言っていた！
playVoice( spep_5 + 12, 231 );
setVoiceVolume( spep_5 + 12, 231, 100 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 240, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_6=spep_5+244;
------------------------------------------------------
-- 「ボクに地球を〜」
------------------------------------------------------
-- ** エフェクト等 ** --
arse = entryEffect( spep_6 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, arse, 0, 0, 0 );
setEffMoveKey( spep_6 + 260, arse, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, arse, 1.0, 1.0 );
setEffScaleKey( spep_6 + 260, arse, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, arse, 0 );
setEffRotateKey( spep_6 + 260, arse, 0 );
setEffAlphaKey( spep_6 + 0, arse, 255 );
setEffAlphaKey( spep_6 + 260, arse, 255 );

--SE
--オーラ

SE032 = playSe( spep_6-12 + 18, 1036 );
setSeVolumeByWorkId( spep_6-12 + 18, SE032, 56 );
SE033 = playSe( spep_6-12 + 42, 1036 );
setSeVolumeByWorkId( spep_6-12 + 42, SE033, 56 );
SE034 = playSe( spep_6-12 + 66, 1036 );
setSeVolumeByWorkId( spep_6-12 + 66, SE034, 56 );
SE035 = playSe( spep_6-12 + 90, 1036 );
setSeVolumeByWorkId( spep_6-12 + 90, SE035, 56 );
SE036 = playSe( spep_6-12 + 114, 1036 );
setSeVolumeByWorkId( spep_6-12 + 114, SE036, 56 );
SE037 = playSe( spep_6-12 + 138, 1036 );
setSeVolumeByWorkId( spep_6-12 + 138, SE037, 56 );
SE038 = playSe( spep_6-12 + 162, 1036 );
setSeVolumeByWorkId( spep_6-12 + 162, SE038, 56 );
SE039 = playSe( spep_6-12 + 186, 1036 );
setSeVolumeByWorkId( spep_6-12 + 186, SE039, 56 );

--ラスト爆発
SE040 = playSe( spep_6-20 + 214, 1024 );
setSeVolumeByWorkId( spep_6-20 + 214, SE040, 65 )
SE041 = playSe( spep_6-20 + 214, 1278 );
setSeVolumeByWorkId( spep_6-20 + 214, SE041, 65 );
SE042 = playSe( spep_6-20 + 214, 1258 );
setSeVolumeByWorkId( spep_6-20 + 214, SE042, 54 );
SE043 = playSe( spep_6-20 + 218, 1284 );
setSeVolumeByWorkId( spep_6-20 + 218, SE043, 59 );

--ボイス
--僕に地球を守れと言ってた！
playVoice( spep_6+42 + 0, 232 );
setVoiceVolume( spep_6+42 + 0, 232, 110 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 260, 0, 0, 0, 0, 255 );  --黒　背景

endPhase( spep_6 + 256 );
else end