--1026430：LR_魔人ブウ(悪)_登場時演出
--sp_effect_b4_00280
--pse0023

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
SP_01 = 161749;   --ef_001　正面、咆哮、砂時計破壊、正面

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.85);

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
--LR_魔人ブウ(悪)_登場時演出
------------------------------------------------------
--はじめの準備
spep_0=0;

-- ** エフェクト等 ** --
eff = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, eff, 0, 0, 0 );
setEffMoveKey( spep_0 + 792, eff, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, eff, 1.0, 1.0 );
setEffScaleKey( spep_0 + 792, eff, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, eff, 0 );
setEffRotateKey( spep_0 + 792, eff, 0 );
setEffAlphaKey( spep_0 + 0, eff, 255 );
setEffAlphaKey( spep_0 + 792, eff, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 792 + 2, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 18 );

--画面遷移
SE002 = playSeVer2( spep_0 + 128, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 128, SE002, 73 );

--目線カットイン
SE003 = playSeVer2( spep_0 + 318, 1018, "", 0, 0, 0, -1);

--砂時計
SE004 = playSeVer2( spep_0 + 0, 1268, "",spep_0 + 354, 0, 18, -1);
setBandpassFilter( spep_0 + 0, SE004, 2500, 24000 );

--構える
SE005 = playSeVer2( spep_0 + 328, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 328, SE005, 251 );
SE006 = playSeVer2( spep_0 + 330, 1170, "",spep_0 + 374, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 330, SE006, 71 );

--気を放出する
SE007 = playSeVer2( spep_0 + 370, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE007, 74 );
SE008 = playSeVer2( spep_0 + 370, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE008, 66 );

--砂時計壊す
SE009 = playSeVer2( spep_0 + 484, 1384, "",spep_0 + 600, 6, 80, -1);
setSeVolumeByWorkId( spep_0 + 484, SE009, 79 );
setStartTimeMs( SE009,  767 );

SE010 = playSeVer2( spep_0 + 480, 1218, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 480, SE010, 158 );
SE011 = playSeVer2( spep_0 + 480, 1110, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 484, 1260, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 484, SE012, 133 );

--ズーム
SE013 = playSeVer2( spep_0 + 638, 1072, "", 0, 0, 0, -1);

--最後決め
SE014 = playSeVer2( spep_0 + 688, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE014, 52 );
SE015 = playSeVer2( spep_0 + 688, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE015, 50 );
setPitch( spep_0 + 688, SE015, -400 );
setTimeStretch( SE015, 0.73, 30, 4 );
SE016 = playSeVer2( spep_0 + 688, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 688, SE016, 48 );

--ボイス
-- 「うおおーっ」
playVoice( spep_0 + 316, 619 );
setVoiceVolume( spep_0 + 316, 619, 126 );

-- 「もうまたない　たたかう…！」
playVoice( spep_0 + 524, 620 );
setVoiceVolume( spep_0 + 524, 620, 126 );

endPhase( spep_0 + 792 );

else end
