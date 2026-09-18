-- 1028920:LR_孫悟空(少年期)&クリリン(少年期)&ブルマ(少女期)_アクティブデバフ：お色気作戦
-- sp_effect_b4_00325
-- bs0045

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162931; -- 開幕〜フィニッシュ ef_001

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
-- 開幕〜フィニッシュ
-------------------------------------------------

MAX_FRAME_0 = 626;

-- ** エフェクト等 ** --
base = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- 開幕〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base, 0);
setEffAlphaKey( spep_0 + 0, base, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 332, 0, 50, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--セリフカットイン
SE002 = playSeVer2( spep_0 + 22, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE002, 79 );

--踏み出す
SE003 = playSeVer2( spep_0 + 32, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 32, SE003, 158 );

--歩いてくる
SE004 = playSeVer2( spep_0 + 158, 1108, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 158, 1111, "",spep_0 + 174, 0, 8, -1);
SE006 = playSeVer2( spep_0 + 198, 1108, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 198, 1111, "",spep_0 + 214, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 238, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 238, SE008, 136 );
SE009 = playSeVer2( spep_0 + 238, 1111, "",spep_0 + 254, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 238, SE009, 146 );
SE011 = playSeVer2( spep_0 + 284, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE011, 170 );
SE012 = playSeVer2( spep_0 + 284, 1111, "",spep_0 + 300, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 284, SE012, 178 );

--画面遷移
SE010 = playSeVer2( spep_0 + 280, 8, "", 0, 0, 0, -1);

--お色気音
SE013 = playSeVer2( spep_0 + 308, 1263, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 308, 46, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 308, 1432, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 322, 1112, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE016, 69 );

--ハート飛んでいく
SE017 = playSeVer2( spep_0 + 394, 1436, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 394, SE017, 178 );
SE018 = playSeVer2( spep_0 + 400, 1435, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_0 + 400, SE018, 178 );

--終わり
endPhase( spep_0 + MAX_FRAME_0);    -- 626

else end