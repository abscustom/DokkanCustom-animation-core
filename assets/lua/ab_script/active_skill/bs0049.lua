--1029670:UR_超サイヤ人トランクス(幼年期)_アクティブバフ：おしりぺんぺん！
--sp_effect_b4_00344
--bs0049

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163129; --セリフ込み ef_001

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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

if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

-------------------------------------------------
-- セリフ込み
-------------------------------------------------

MAX_FRAME_0 = 360;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- セリフ込み ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -2, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 -1, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --

--入り
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--顔カットイン
SE002 = playSeVer2( spep_0 + 0, 32, "", 0, 0, 0, -1);

--変顔
SE003 = playSeVer2( spep_0 + 2, 1018, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 94, 31, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 94, 1112, "", 0, 0, 0, -1);

--後むく
SE006 = playSeVer2( spep_0 + 94, 1251, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 178, 4, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 178, 37, "", 0, 0, 0, -1);

--おしりたたく
SE009 = playSeVer2( spep_0 + 178, 1013, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 238, 1000, "",spep_0 + 268, 0, 12, -1);
setBandpassFilter( spep_0 + 238, SE010, 2000, 24000 );
SE011 = playSeVer2( spep_0 + 260, 1000, "",spep_0 + 290, 0, 12, -1);
setBandpassFilter( spep_0 + 260, SE011, 2000, 24000 );

--おしりふる
SE012 = playSeVer2( spep_0 + 294, 1113, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 314, 1113, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 336, 1113, "", 0, 0, 0, -1);

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 360

else end
