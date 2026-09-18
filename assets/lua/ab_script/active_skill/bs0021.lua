--1022120:孫悟空&ピッコロ_真剣勝負！！（アクティブ）_bs0021
--sp_effect_b4_00189

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
SP_01 = 157454;
SP_02 = 157455;

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


--[[setDisp( 0, 1, 0);
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
setRotateKey( 6,   1,  0 );]]

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 836, active_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 836, active_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active_f, 0 );
setEffRotateKey( spep_0 + 836, active_f, 0 );
setEffAlphaKey( spep_0 + 0, active_f, 255 );
setEffAlphaKey( spep_0 + 836, active_f, 255 );

active_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 836, active_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 836, active_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active_b, 0 );
setEffRotateKey( spep_0 + 836, active_b, 0 );
setEffAlphaKey( spep_0 + 0, active_b, 255 );
setEffAlphaKey( spep_0 + 836, active_b, 255 );

setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 50, 1, 0 );
setDisp( spep_0 -3 + 484, 1, 1 );
setDisp( spep_0 -3 + 564, 1, 0 );
changeAnime( spep_0 -3 + 0, 1, 117 );

a1 = 15;
b1 = 0;
setMoveKey( spep_0 + 0, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 1, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 2, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 3, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 4, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 5, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 + 6, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 0 +a1, -22.3 +b1 , 0 );
setMoveKey( spep_0 -3 + 564, 1, 0 +a1, -22.3 +b1 , 0 );

s1 = 0.05;
setScaleKey( spep_0 + 0, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 1, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 2, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 3, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 4, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 5, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 + 6, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 -3 + 50, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 -3 + 484, 1, 0.46 +s1, 0.46 +s1 );
setScaleKey( spep_0 -3 + 564, 1, 0.46 +s1, 0.46 +s1 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 -3 + 50, 1, 0 );
setRotateKey( spep_0 -3 + 484, 1, 0 );
setRotateKey( spep_0 -3 + 564, 1, 0 );

-------------------------------------------
--SE
-------------------------------------------
--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 24 );
setPitch( spep_0 + 0, SE001, -50 );
setTimeStretch( SE001, 0.97, 10, 1 );

--腕下ろす
SE002 = playSe( spep_0 + 8, 1116 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 80 );
stopSe( spep_0 + 30, SE002, 14 );
setBandpassFilter	( spep_0 + 8, SE002, 800, 24000 );

--悟空服脱ぐ
SE003 = playSe( spep_0 + 60, 1331 );
setSeVolumeByWorkId( spep_0 + 60, SE003, 146 );

--服投げる
SE004 = playSe( spep_0 + 112, 1332 );
setSeVolumeByWorkId( spep_0 + 112, SE004, 155 );

--胴着落ちる
SE005 = playSe( spep_0 + 206, 1010 );
stopSe( spep_0 + 222, SE005, 14 );
setBandpassFilter	( spep_0 + 206, SE005, 200, 24000 );

--胴着落ちる
SE006 = playSe( spep_0 + 208, 1110 );
setSeVolumeByWorkId( spep_0 + 208, SE006, 64 );
stopSe( spep_0 + 222, SE006, 18 );

--リストバンド落ちる
SE007 = playSe( spep_0 + 236, 1045 );
stopSe( spep_0 + 250, SE007, 16 );
setPitch( spep_0 + 236, SE007, 300 );
setTimeStretch( SE007, 1.2, 10, 1 );

--リストバンド落ちる
SE008 = playSe( spep_0 + 236, 1007 );

--リストバンド落ちる
SE009 = playSe( spep_0 + 272, 1007 );

--リストバンド落ちる
SE010 = playSe( spep_0 + 272, 1045 );
setSeVolumeByWorkId( spep_0 + 272, SE010, 87 );
stopSe( spep_0 + 286, SE010, 16 );

--ブーツ落ちる
SE011 = playSe( spep_0 + 288, 1006 );
setSeVolumeByWorkId( spep_0 + 288, SE011, 93 );
stopSe( spep_0 + 298, SE011, 4 );
setBandpassFilter	( spep_0 + 296, SE011, 300, 24000 );

--ブーツ落ちる
SE012 = playSe( spep_0 + 288, 1045 );
stopSe( spep_0 + 302, SE012, 10 );
setPitch( spep_0 + 288, SE012, -300 );
setTimeStretch( SE012, 0.8, 10, 1 );

--ブーツ落ちる
SE013 = playSe( spep_0 + 300, 1045 );
stopSe( spep_0 + 314, SE013, 10 );
setPitch( spep_0 + 300, SE013, -100 );
setTimeStretch( SE013, 0.93, 10, 1 );

--ブーツ落ちる
SE014 = playSe( spep_0 + 302, 1006 );
setSeVolumeByWorkId( spep_0 + 302, SE014, 84 );
stopSe( spep_0 + 310, SE014, 8 );

--ピッコロマント脱ぐ
SE015 = playSe( spep_0 + 438, 1331 );
setSeVolumeByWorkId( spep_0 + 438, SE015, 200 );

--マント投げる
SE016 = playSe( spep_0 + 466, 1333 );
setSeVolumeByWorkId( spep_0 + 466, SE016, 120 );

--マント落ちる
SE017 = playSe( spep_0 + 520, 1047 );
setSeVolumeByWorkId( spep_0 + 520, SE017, 67 );
stopSe( spep_0 + 532, SE017, 8 );

--マント落ちる
SE018 = playSe( spep_0 + 520, 1153 );
setSeVolumeByWorkId( spep_0 + 520, SE018, 54 );
stopSe( spep_0 + 534, SE018, 14 );

--帽子落ちる
SE019 = playSe( spep_0 + 548, 1045 );
setSeVolumeByWorkId( spep_0 + 548, SE019, 68 );
stopSe( spep_0 + 562, SE019, 10 );

--帽子落ちる
SE020 = playSe( spep_0 + 550, 1006 );
stopSe( spep_0 + 558, SE020, 8 );

--2人構える
SE021 = playSe( spep_0 + 576, 8 );
setSeVolumeByWorkId( spep_0 + 576, SE021, 70 );

--2人構える
SE022 = playSe( spep_0 + 596, 1233 );
stopSe( spep_0 + 614, SE022, 4 );

--2人構える
SE023 = playSe( spep_0 + 608, 1012 );
stopSe( spep_0 + 616, SE023, 6 );

--最後決め
SE024 = playSe( spep_0 + 696, 1264 );
setSeVolumeByWorkId( spep_0 + 696, SE024, 44 );
setPitch( spep_0 + 696, SE024, -200 );
setTimeStretch( SE024, 0.87, 10, 1 );

--最後決め
SE025 = playSe( spep_0 + 696, 1060 );

--セリフカットイン
SE026 = playSe( spep_0 + 704, 1018 );

---------------------------------------------
----ボイス
---------------------------------------------
--こりゃ全開で戦わないとやべえかもな…
playVoice( spep_0 + 42, 277 );
setVoiceVolume( spep_0 + 42, 277, 100 );

--ふん…足を引っ張るなよ
playVoice( spep_0 + 328, 278 );
setVoiceVolume( spep_0 + 328, 278, 100 );

--すぐに片付けてやる
playVoice( spep_0 + 566, 279 );
setVoiceVolume( spep_0 + 566, 279, 100 );

--いくぞっ！
playVoice( spep_0 + 698, 322 );
setVoiceVolume( spep_0 + 698, 322, 316 );
setVoiceVolume( spep_0 + 706, 322, 126 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 836 );

else end