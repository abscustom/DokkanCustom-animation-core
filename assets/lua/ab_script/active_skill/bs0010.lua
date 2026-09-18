--1020750:ターレス軍団_神精樹の実(アクティブバフ)_bs0010
--battle_301207

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 1035; --気を貯める
SE_02 = 678; --気が広がる
SE_03 = 678; --かめはめ
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
SP_01=	3125	;--	ターレス軍団・神精樹の実・アクティブバフ

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
setEffMoveKey( spep_0 + 678, active, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, active, 1.0, 1.0 );
setEffScaleKey( spep_0 + 678, active, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, active, 0 );
setEffRotateKey( spep_0 + 678, active, 0 );
setEffAlphaKey( spep_0 + 0, active, 255 );
setEffAlphaKey( spep_0 + 678, active, 255 );


-------------------------------------------
--SE
-------------------------------------------

--環境音
SE001 = playSe( spep_0 + 0, 1269 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 17 );

--顔カットイン
SE002 = playSe( spep_0 + 28, 1018 );
setSeVolumeByWorkId( spep_0 + 28, SE002, 56 );
--むしゃ
SE003 = playSe( spep_0 + 226, 1070 );

--胸どーん1
SE004 = playSe( spep_0 + 364, 19 );
setSeVolumeByWorkId( spep_0 + 364, SE004, 84 );

--胸どーん2
SE005 = playSe( spep_0 + 364, 1178 );
setSeVolumeByWorkId( spep_0 + 364, SE005, 79 );

--胸どーん3
SE006 = playSe( spep_0 + 368, 1153 );
setSeVolumeByWorkId( spep_0 + 368, SE006, 82 );
setTimeStretch( SE006, 0.83, 10, 1 );

--足どーん4
SE007 = playSe( spep_0 + 402, 20 );
setSeVolumeByWorkId( spep_0 + 402, SE007, 82 );

--足どーん5
SE008 = playSe( spep_0 + 402, 1153 );
setSeVolumeByWorkId( spep_0 + 402, SE008, 82 );
setTimeStretch( SE008, 0.83, 10, 1 );

--足どーん6
SE009 = playSe( spep_0 + 402, 1178 );
setSeVolumeByWorkId( spep_0 + 402, SE009, 73 );

--りんごばーん1
SE010 = playSe( spep_0 + 436, 1041 );
setSeVolumeByWorkId( spep_0 + 436, SE010, 130 );
stopSe( spep_0 + 446, SE010, 12 );

--りんごばーん2
SE011 = playSe( spep_0 + 436, 1023 );
setSeVolumeByWorkId( spep_0 + 436, SE011, 130 );
setTimeStretch( SE011, 0.56, 10, 1 );

--最後決め1
SE012 = playSe( spep_0 + 566, 1126 );
setSeVolumeByWorkId( spep_0 + 566, SE012, 35 );

--最後決め2
SE013 = playSe( spep_0 + 568, 20 );

--最後決め3
SE014 = playSe( spep_0 + 568, 1182 );

---------------------------------------------
----ボイス
---------------------------------------------

--神精樹の実を食べ続けてきた俺に、勝てると思ったか？
playVoice( spep_0 + 6, 224 );
setVoiceVolume( spep_0 + 6, 224, 158 );

--オレの勝ちだな
playVoice( spep_0 + 478, 225 );
setVoiceVolume( spep_0 + 478, 225, 200 );

entryFade( spep_0 + 678 -40, 10, 40, 0, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
endPhase( spep_0 + 678 );--678
else end