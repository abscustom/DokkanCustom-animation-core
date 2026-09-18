--4021820:ビーデル_複雑な乙女心_bs0017
--sp_effect_b4_00183

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
SP_01 = 157022;

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
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
active = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, active, 0, 0, 0 );
setEffMoveKey( spep_0 + 1096, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1096, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 1096, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 1096, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 13 );
setPitch( spep_0 + 0, SE001, 100 );
setTimeStretch( SE001, 1.07, 10, 1 );
setBandpassFilter	( spep_0 + 0, SE001, 800, 24000 );

--髪さわる
SE002 = playSe( spep_0 + 20, 37 );
setSeVolumeByWorkId( spep_0 + 20, SE002, 62 );
setPitch( spep_0 + 20, SE002, 600 );
setTimeStretch( SE002, 1.4, 10, 1 );

--キラキラ
SE003 = playSe( spep_0 + 184, 1115 );
setSeVolumeByWorkId( spep_0 + 184, SE003, 56 );
stopSe( spep_0 + 256, SE003, 84 );
setPitch( spep_0 + 184, SE003, 400 );
setTimeStretch( SE003, 1.27, 10, 1 );

--指立てる
SE004 = playSe( spep_0 + 526, 1003 );
setSeVolumeByWorkId( spep_0 + 526, SE004, 41 );
setPitch( spep_0 + 526, SE004, 200 );
setTimeStretch( SE004, 1.13, 10, 1 );

--ビーデルわなわな
SE005 = playSe( spep_0 + 730, 1233 );
setSeVolumeByWorkId( spep_0 + 730, SE005, 55 );

--ビーデルわなわな
SE006 = playSe( spep_0 + 740, 1250 );
stopSe( spep_0 + 824, SE006, 0 );
setPitch( spep_0 + 740, SE006, -1200 );
setTimeStretch( SE006, 0.2, 10, 1 );
setBandpassFilter( spep_0 + 740, SE006, 685, 24000 );

--ビーデルおこる
SE007 = playSe( spep_0 + 820, 1018 );
setSeVolumeByWorkId( spep_0 + 830, SE007, 71 );

--ビーデルおこる
SE008 = playSe( spep_0 + 820, 20 );
setSeVolumeByWorkId( spep_0 + 830, SE008, 62 );

--ビーデルおこる
SE009 = playSe( spep_0 + 820, 1051 );
setSeVolumeByWorkId( spep_0 + 830, SE009, 74 );

---------------------------------------------
----ボイス
---------------------------------------------

--ショ…ショートヘアの方が…悟飯くんの好み？
playVoice( spep_0 + 20, 250 );
setVoiceVolume( spep_0 + 20, 250, 120 );

--い、いや好みとかじゃなくて、試合するんだったら短い方が有利だとおもってさ…
playVoice( spep_0 + 300, 252 );
setVoiceVolume( spep_0 + 300, 252, 120 );

--うるさいわね、ほっといてよ！そんなこと、わたしのかってでしょ！」
playVoice( spep_0 + 826, 251 );	setVoiceVolume( spep_0 + 836, 251, 120 );

--entryFade( spep_0 + 692 -38, 14, 38, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 +1116 );
else end