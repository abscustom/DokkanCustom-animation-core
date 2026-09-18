-- 1030790: LR_ピッコロ大魔王(老)_必殺技：魔撃閃
-- sp_effect_b2_00063
-- sp2817

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163608;  -- 手前に向かってダッシュ ef_001
SP_002 = 163610;  -- 蹴り上げ〜フィニッシュ ef_002
SP_002b = 163611;  -- 蹴り上げ〜フィニッシュ ef_002b

-- 敵側
SP_001r = 163609;  -- 手前に向かってダッシュ ef_001r
SP_002r = 163612;  -- 蹴り上げ〜フィニッシュ ef_002r
SP_002br = 163613;  -- 蹴り上げ〜フィニッシュ ef_002br

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 手前に向かってダッシュ ef_001
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- 手前に向かってダッシュ ef_001
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 128, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 4, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 86 );
SE003 = playSeVer2( spep_0 + 10, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );

--走る音
SE005 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 168 );
SE006 = playSeVer2( spep_0 + 34, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE006, 168 );
SE007 = playSeVer2( spep_0 + 46, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 168 );
SE008 = playSeVer2( spep_0 + 56, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 168 );
SE009 = playSeVer2( spep_0 + 66, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE009, 168 );
SE010 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE010, 168 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 8, SE010, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--走る音
SE011 = playSeVer2( spep_0 + 88, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE011, 168 );
SE012 = playSeVer2( spep_0 + 98, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE012, 168 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り上げる
SE014 = playSeVer2( spep_1 + 88, 1116, "",spep_2 + 30, 0, 18, -1);
SE015 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);

------------------------------------------------------
-- 蹴り上げ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 628;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- 蹴り上げ〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- 蹴り上げ〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0 , 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 , 1, 102 );
changeAnime( spep_2 + 20 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0 , 1, 258.9, -230.8 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 258.9, -230.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 16.9, -635.2 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 16.9, -635.2 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 26.3, -610.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 26.3, -610.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 21.6, -600.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 21.6, -600.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 35.7, -573.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 35.7, -573.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 28.8, -561.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 28.8, -561.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 43.7, -533.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 43.7, -533.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 39.4, -524 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 39.4, -524 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 49.8, -498 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 49.8, -498 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 50.1, -485.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 50.1, -485.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 58.4, -464.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 58.4, -464.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 58.5, -441.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 58.5, -441.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 67.2, -427.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 67.2, -427.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 67.1, -403.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 67.1, -403.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 77.1, -389.1 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 77.1, -389.1 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 77.6, -365.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 77.6, -365.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 84.5, -350.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 84.5, -350.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 90.5, -327.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 90.5, -327.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 90.2, -312 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 90.2, -312 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 97.6, -289.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 97.6, -289.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 104, -273.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 104, -273.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 104, -250.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 104, -250.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 112.6, -232.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 112.6, -232.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 113.2, -216.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 113.2, -216.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 120.7, -194.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 120.7, -194.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 121.8, -179.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 121.8, -179.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 129.5, -159.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 129.5, -159.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 129.9, -138.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 129.9, -138.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 138.3, -121.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 138.3, -121.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 139.3, -100.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 139.3, -100.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 146.9, -83.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 146.9, -83.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 148.3, -62.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 148.3, -62.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 155.6, -45 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 155.6, -45 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 157.2, -24.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 157.2, -24.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 164.6, -7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 164.6, -7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 166.3, 13.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 166.3, 13.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 173.5, 31.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 173.5, 31.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 175.1, 52 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 175.1, 52 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 182.3, 69.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 182.3, 69.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 184.5, 89.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 184.5, 89.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 191.2, 107.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 191.2, 107.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 192.9, 127.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 192.9, 127.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 200, 145.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 200, 145.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 201.7, 166 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 201.7, 166 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 208.9, 184.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 208.9, 184.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 211.8, 203.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 211.8, 203.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 177.5, 181 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 177.5, 181 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 202.4, 234.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 202.4, 234.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 223.8, 280.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 223.8, 280.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 242.4, 321 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 242.4, 321 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 259, 356.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 259, 356.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 273.9, 388.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 273.9, 388.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 287.4, 418.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 287.4, 418.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 299.8, 444.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 299.8, 444.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 311.1, 469.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 311.1, 469.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 321.6, 491.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 321.6, 491.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 331.3, 512.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 331.3, 512.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 340.3, 532.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 340.3, 532.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 353.7, 560.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 353.7, 560.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 351.6, 559.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 351.6, 559.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 366.1, 588.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 366.1, 588.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 366.1, 591.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 366.1, 591.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 379.2, 615.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 379.2, 615.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 379.7, 618.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 379.7, 618.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 390.7, 639.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 390.7, 639.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 392.1, 646.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 392.1, 646.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 400.1, 660.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 400.1, 660.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 401.7, 668.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 401.7, 668.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 408.9, 680.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 408.9, 680.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 410.5, 686.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 410.5, 686.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 416.6, 697 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 416.6, 697 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 418.3, 703.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 418.3, 703.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 423.4, 712.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 423.4, 712.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 425.3, 717.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 425.3, 717.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 429.8, 725.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 429.8, 725.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 431.1, 729.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 431.1, 729.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 165.9, -102.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 165.9, -102.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 197.7, -76.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 197.7, -76.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 229.5, -50.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 229.5, -50.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 261.4, -24.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 261.4, -24.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 293.2, 1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 293.2, 1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 325.1, 26.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 325.1, 26.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 357, 52.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 357, 52.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 388.8, 78.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 388.8, 78.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 420.7, 104 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 420.7, 104 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 452.5, 129.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 452.5, 129.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 484.4, 155.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 484.4, 155.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 516.2, 181.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 516.2, 181.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 548.1, 207 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 548.1, 207 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 579.9, 232.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 579.9, 232.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 611.8, 258.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 611.8, 258.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 643.7, 284.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 643.7, 284.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 675.5, 309.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 675.5, 309.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 707.4, 335.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 707.4, 335.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 739.3, 361.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 739.3, 361.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 771.1, 387 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 771.1, 387 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 9.92, 9.92 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 9.92, 9.92 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 9.73, 9.73 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 9.73, 9.73 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 9.66, 9.66 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 9.66, 9.66 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 9.62, 9.62 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 9.62, 9.62 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 9.58, 9.58 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 9.58, 9.58 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 9.32, 9.32 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 9.32, 9.32 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 9.24, 9.24 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 9.24, 9.24 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 8.49, 8.49 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 8.49, 8.49 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 8.34, 8.34 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 8.34, 8.34 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 5.59, 5.59 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 53.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 53.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 52.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 52.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 50 );

-- 敵の動き2
setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 294 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, -66.9, -474.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -66.9, -474.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -255.1, -412.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -255.1, -412.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 107.7, -137.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 107.7, -137.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 125.1, -131.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 125.1, -131.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 116.6, -155.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 116.6, -155.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 136.6, -144.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 136.6, -144.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 133.5, -166 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 133.5, -166 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 149, -159.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 149, -159.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 147.3, -175.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 147.3, -175.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 166.3, -171.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 166.3, -171.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 164.8, -183.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 164.8, -183.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 178.8, -183.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 178.8, -183.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 178.9, -196.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 178.9, -196.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 189.7, -199.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 189.7, -199.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 197.2, -205.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 197.2, -205.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 204.6, -211 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 204.6, -211 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 212.1, -216.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 212.1, -216.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 219.6, -222.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 219.6, -222.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 227, -228 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 227, -228 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 234.5, -233.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 234.5, -233.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 242, -239.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 242, -239.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 249.4, -245 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 249.4, -245 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 256.9, -250.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 256.9, -250.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 264.3, -256.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 264.3, -256.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 271.8, -262 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 271.8, -262 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 279.3, -267.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 279.3, -267.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 286.7, -273.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 286.7, -273.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 294.2, -278.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 294.2, -278.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 301.6, -284.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 301.6, -284.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 309.1, -290.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 309.1, -290.3 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 10.36, 10.36 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 10.36, 10.36 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 43.1 );

-- 敵の動き3
setDisp( spep_2 + 458 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 458 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 458 + OFFSET_X, 1, -2.8, 672.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -2.8, 672.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -2.8, 611.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -2.8, 611.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -2.8, 551.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, -2.8, 551.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -2.8, 491.4 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, -2.8, 491.4 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, -2.8, 431.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, -2.8, 431.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, -2.8, 371 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, -2.8, 371 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, -2.8, 310.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, -2.8, 310.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, -2.8, 250.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, -2.8, 250.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, -2.8, 190.3 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, -2.8, 190.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, -2.8, 130.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, -2.8, 130.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, -2.8, 69.8 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, -2.8, 69.8 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, -2.8, 9.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, -2.8, 9.6 , 0 );

setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_2 + 458 + OFFSET_X, 1, 62.1 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, 62.1 );

-- ** 音 ** --
--蹴り上げる
SE016 = playSeVer2( spep_2 + 12, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 12, 1049, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE018, 61 );
SE019 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 35 );
SE020 = playSeVer2( spep_2 + 82, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE020, 22 );
SE021 = playSeVer2( spep_2 + 108, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE021, 10 );

--飛び上がる
SE022 = playSeVer2( spep_2 + 120, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 120, 1207, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 130, 1314, "",spep_2 + 310, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 130, SE024, 59 );
SE025 = playSeVer2( spep_2 + 130, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE025, 71 );
SE026 = playSeVer2( spep_2 + 160, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE026, 62 );
SE027 = playSeVer2( spep_2 + 194, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE027, 71 );

--顔アップ
SE028 = playSeVer2( spep_2 + 200, 8, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 202, 1184, "",spep_2 + 308, 0, 34, -1);
SE030 = playSeVer2( spep_2 + 204, 1190, "", 0, 12, 0, -1);

--飛び上がる
SE031 = playSeVer2( spep_2 + 258, 1019, "",spep_2 + 304, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 258, SE031, 71 );

--殴り飛ばす
SE032 = playSeVer2( spep_2 + 268, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 280, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 280, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE035 = playSeVer2( spep_2 + 310, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE035, 77 );

--画面遷移
SE036 = playSeVer2( spep_2 + 346, 1116, "",spep_2 + 396, 0, 24, -1);

--空気圧発射
SE037 = playSeVer2( spep_2 + 404, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 404, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE038, 75 );
SE039 = playSeVer2( spep_2 + 404, 1179, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 406, 1117, "", 0, 0, 0, -1);

--岩爆発
SE041 = playSeVer2( spep_2 + 474, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 490 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 628

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 手前に向かってダッシュ ef_001r
------------------------------------------------------
MAX_FRAME_0 = 108;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001r, 0x80, -1, 0, 0, 0 );  -- 手前に向かってダッシュ ef_001r
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 18;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -45, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -45, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -45, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );
]]

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 音 ** --
--走ってくる
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 128, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 4, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE002, 86 );
SE003 = playSeVer2( spep_0 + 10, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 79 );

--走る音
SE005 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE005, 168 );
SE006 = playSeVer2( spep_0 + 34, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE006, 168 );
SE007 = playSeVer2( spep_0 + 46, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 46, SE007, 168 );
SE008 = playSeVer2( spep_0 + 56, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE008, 168 );
SE009 = playSeVer2( spep_0 + 66, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE009, 168 );
SE010 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE010, 168 );

--------------------------------------
-- 回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 86;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 8, SE010, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
-- 回避しなかった場合
-----------------------------

-- ** 音 ** --
--走る音
SE011 = playSeVer2( spep_0 + 88, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE011, 168 );
SE012 = playSeVer2( spep_0 + 98, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 98, SE012, 168 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 108

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

-- ** 音 ** --
--蹴り上げる
SE014 = playSeVer2( spep_1 + 88, 1116, "",spep_2 + 30, 0, 18, -1);
SE015 = playSeVer2( spep_1 + 92, 1004, "", 0, 0, 0, -1);

------------------------------------------------------
-- 蹴り上げ〜フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 628;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- 蹴り上げ〜フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );  -- 蹴り上げ〜フィニッシュ ef_002br
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 0 , 1, 1 );
setDisp( spep_2 + 210 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 0 , 1, 102 );
changeAnime( spep_2 + 20 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 5 );
changeAnime( spep_2 + 170 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 0 , 1, 258.9, -230.8 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 258.9, -230.8 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 16.9, -635.2 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 16.9, -635.2 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 26.3, -610.4 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 26.3, -610.4 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 21.6, -600.7 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 21.6, -600.7 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 35.7, -573.4 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 35.7, -573.4 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 28.8, -561.4 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 28.8, -561.4 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 43.7, -533.6 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 43.7, -533.6 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 39.4, -524 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 39.4, -524 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 49.8, -498 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 49.8, -498 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 50.1, -485.2 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 50.1, -485.2 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 58.4, -464.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 58.4, -464.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 58.5, -441.6 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 58.5, -441.6 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 67.2, -427.2 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 67.2, -427.2 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 67.1, -403.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 67.1, -403.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 77.1, -389.1 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 77.1, -389.1 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 77.6, -365.4 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 77.6, -365.4 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 84.5, -350.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 84.5, -350.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 90.5, -327.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 90.5, -327.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 90.2, -312 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 90.2, -312 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 97.6, -289.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 97.6, -289.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 104, -273.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 104, -273.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 104, -250.8 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 104, -250.8 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 112.6, -232.8 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 112.6, -232.8 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 113.2, -216.6 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 113.2, -216.6 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 120.7, -194.8 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 120.7, -194.8 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 121.8, -179.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 121.8, -179.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 129.5, -159.7 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 129.5, -159.7 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 129.9, -138.3 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 129.9, -138.3 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 138.3, -121.2 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 138.3, -121.2 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 139.3, -100.1 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 139.3, -100.1 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 146.9, -83.4 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 146.9, -83.4 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 148.3, -62.3 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 148.3, -62.3 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 155.6, -45 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 155.6, -45 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 157.2, -24.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 157.2, -24.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 164.6, -7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 164.6, -7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 166.3, 13.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 166.3, 13.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 173.5, 31.3 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 173.5, 31.3 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 175.1, 52 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 175.1, 52 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 182.3, 69.6 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 182.3, 69.6 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 184.5, 89.8 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 184.5, 89.8 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 191.2, 107.8 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 191.2, 107.8 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 192.9, 127.9 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 192.9, 127.9 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 200, 145.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 200, 145.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 201.7, 166 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 201.7, 166 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 208.9, 184.1 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 208.9, 184.1 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 211.8, 203.4 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 211.8, 203.4 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 177.5, 181 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 177.5, 181 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 202.4, 234.8 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 202.4, 234.8 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 223.8, 280.8 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 223.8, 280.8 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 242.4, 321 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 242.4, 321 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 259, 356.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 259, 356.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 273.9, 388.9 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 273.9, 388.9 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 287.4, 418.1 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 287.4, 418.1 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 299.8, 444.8 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 299.8, 444.8 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 311.1, 469.3 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 311.1, 469.3 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 321.6, 491.9 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 321.6, 491.9 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 331.3, 512.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 331.3, 512.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 340.3, 532.2 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 340.3, 532.2 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 353.7, 560.3 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 353.7, 560.3 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 351.6, 559.2 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 351.6, 559.2 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 366.1, 588.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 366.1, 588.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 366.1, 591.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 366.1, 591.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 379.2, 615.6 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 379.2, 615.6 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 379.7, 618.8 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 379.7, 618.8 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 390.7, 639.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 390.7, 639.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 392.1, 646.6 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 392.1, 646.6 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 400.1, 660.9 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 400.1, 660.9 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 401.7, 668.2 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 401.7, 668.2 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 408.9, 680.4 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 408.9, 680.4 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 410.5, 686.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 410.5, 686.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 416.6, 697 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 416.6, 697 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 418.3, 703.1 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 418.3, 703.1 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, 423.4, 712.2 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, 423.4, 712.2 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 425.3, 717.6 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 425.3, 717.6 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 429.8, 725.4 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 429.8, 725.4 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 431.1, 729.8 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 431.1, 729.8 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 165.9, -102.2 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 165.9, -102.2 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 197.7, -76.4 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 197.7, -76.4 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 229.5, -50.6 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 229.5, -50.6 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 261.4, -24.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 261.4, -24.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 293.2, 1 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 293.2, 1 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 325.1, 26.7 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 325.1, 26.7 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 357, 52.5 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 357, 52.5 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 388.8, 78.3 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 388.8, 78.3 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 420.7, 104 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 420.7, 104 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 452.5, 129.8 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 452.5, 129.8 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 484.4, 155.5 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 484.4, 155.5 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 516.2, 181.3 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 516.2, 181.3 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 548.1, 207 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 548.1, 207 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 579.9, 232.8 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 579.9, 232.8 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 611.8, 258.5 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 611.8, 258.5 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 643.7, 284.2 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 643.7, 284.2 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 675.5, 309.9 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 675.5, 309.9 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 707.4, 335.6 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 707.4, 335.6 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 739.3, 361.3 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 739.3, 361.3 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 771.1, 387 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 771.1, 387 , 0 );

setScaleKey( spep_2 + 0 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 19 + OFFSET_X, 1, 5, 5 );
setScaleKey( spep_2 + 20 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 21 + OFFSET_X, 1, 10, 10 );
setScaleKey( spep_2 + 22 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_2 + 23 + OFFSET_X, 1, 9.96, 9.96 );
setScaleKey( spep_2 + 24 + OFFSET_X, 1, 9.92, 9.92 );
setScaleKey( spep_2 + 25 + OFFSET_X, 1, 9.92, 9.92 );
setScaleKey( spep_2 + 26 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_2 + 27 + OFFSET_X, 1, 9.89, 9.89 );
setScaleKey( spep_2 + 28 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_2 + 29 + OFFSET_X, 1, 9.85, 9.85 );
setScaleKey( spep_2 + 30 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 31 + OFFSET_X, 1, 9.81, 9.81 );
setScaleKey( spep_2 + 32 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_2 + 33 + OFFSET_X, 1, 9.77, 9.77 );
setScaleKey( spep_2 + 34 + OFFSET_X, 1, 9.73, 9.73 );
setScaleKey( spep_2 + 35 + OFFSET_X, 1, 9.73, 9.73 );
setScaleKey( spep_2 + 36 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 37 + OFFSET_X, 1, 9.7, 9.7 );
setScaleKey( spep_2 + 38 + OFFSET_X, 1, 9.66, 9.66 );
setScaleKey( spep_2 + 39 + OFFSET_X, 1, 9.66, 9.66 );
setScaleKey( spep_2 + 40 + OFFSET_X, 1, 9.62, 9.62 );
setScaleKey( spep_2 + 41 + OFFSET_X, 1, 9.62, 9.62 );
setScaleKey( spep_2 + 42 + OFFSET_X, 1, 9.58, 9.58 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 9.58, 9.58 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 9.55, 9.55 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_2 + 49 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_2 + 50 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 51 + OFFSET_X, 1, 9.43, 9.43 );
setScaleKey( spep_2 + 52 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_2 + 53 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_2 + 54 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_2 + 55 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_2 + 56 + OFFSET_X, 1, 9.32, 9.32 );
setScaleKey( spep_2 + 57 + OFFSET_X, 1, 9.32, 9.32 );
setScaleKey( spep_2 + 58 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_2 + 59 + OFFSET_X, 1, 9.28, 9.28 );
setScaleKey( spep_2 + 60 + OFFSET_X, 1, 9.24, 9.24 );
setScaleKey( spep_2 + 61 + OFFSET_X, 1, 9.24, 9.24 );
setScaleKey( spep_2 + 62 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 63 + OFFSET_X, 1, 9.21, 9.21 );
setScaleKey( spep_2 + 64 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_2 + 65 + OFFSET_X, 1, 9.17, 9.17 );
setScaleKey( spep_2 + 66 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_2 + 67 + OFFSET_X, 1, 9.13, 9.13 );
setScaleKey( spep_2 + 68 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 69 + OFFSET_X, 1, 9.09, 9.09 );
setScaleKey( spep_2 + 70 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_2 + 71 + OFFSET_X, 1, 9.06, 9.06 );
setScaleKey( spep_2 + 72 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_2 + 73 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_2 + 74 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_2 + 75 + OFFSET_X, 1, 8.98, 8.98 );
setScaleKey( spep_2 + 76 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 8.94, 8.94 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 8.91, 8.91 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 8.87, 8.87 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 83 + OFFSET_X, 1, 8.83, 8.83 );
setScaleKey( spep_2 + 84 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_2 + 85 + OFFSET_X, 1, 8.79, 8.79 );
setScaleKey( spep_2 + 86 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 8.75, 8.75 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_2 + 89 + OFFSET_X, 1, 8.72, 8.72 );
setScaleKey( spep_2 + 90 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 91 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_2 + 92 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_2 + 93 + OFFSET_X, 1, 8.64, 8.64 );
setScaleKey( spep_2 + 94 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_2 + 95 + OFFSET_X, 1, 8.6, 8.6 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 8.57, 8.57 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 8.53, 8.53 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 8.49, 8.49 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 8.49, 8.49 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 8.45, 8.45 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 8.42, 8.42 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 8.38, 8.38 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 8.34, 8.34 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 8.34, 8.34 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 157 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 158 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 171 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 172 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 3.15, 3.15 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 3.64, 3.64 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 3.8, 3.8 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 4.13, 4.13 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 193 + OFFSET_X, 1, 4.29, 4.29 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 195 + OFFSET_X, 1, 4.45, 4.45 );
setScaleKey( spep_2 + 196 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 197 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_2 + 198 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 199 + OFFSET_X, 1, 4.78, 4.78 );
setScaleKey( spep_2 + 200 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 4.94, 4.94 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 5.1, 5.1 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 5.26, 5.26 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 5.43, 5.43 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 5.59, 5.59 );

setRotateKey( spep_2 + 0 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 19 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 20 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, -46 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 23 + OFFSET_X, 1, -45.7 );
setRotateKey( spep_2 + 24 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 25 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_2 + 26 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 27 + OFFSET_X, 1, -45 );
setRotateKey( spep_2 + 28 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 29 + OFFSET_X, 1, -44.7 );
setRotateKey( spep_2 + 30 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 31 + OFFSET_X, 1, -44.4 );
setRotateKey( spep_2 + 32 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 33 + OFFSET_X, 1, -44.1 );
setRotateKey( spep_2 + 34 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 35 + OFFSET_X, 1, -43.8 );
setRotateKey( spep_2 + 36 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 37 + OFFSET_X, 1, -43.5 );
setRotateKey( spep_2 + 38 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 39 + OFFSET_X, 1, -43.1 );
setRotateKey( spep_2 + 40 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -42.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -42.5 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -42.2 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -41.9 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -41.5 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -41.2 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -40.9 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -40.6 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -40 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 63 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_2 + 64 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 65 + OFFSET_X, 1, -39 );
setRotateKey( spep_2 + 66 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 67 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_2 + 68 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 69 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_2 + 70 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, -38 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 73 + OFFSET_X, 1, -37.7 );
setRotateKey( spep_2 + 74 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 75 + OFFSET_X, 1, -37.4 );
setRotateKey( spep_2 + 76 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 77 + OFFSET_X, 1, -37.1 );
setRotateKey( spep_2 + 78 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -35.8 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, -34.5 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, -34.2 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, -33.9 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -33.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, -33.3 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, -32.6 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, -32.3 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, -32 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, 38 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, 54 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, 53.8 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 53.8 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, 53.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, 53.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, 52.9 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, 52.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, 52.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, 52.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, 52.3 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, 51.9 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, 51.7 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, 51.3 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, 51.1 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, 50.8 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 203 + OFFSET_X, 1, 50.6 );
setRotateKey( spep_2 + 204 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 205 + OFFSET_X, 1, 50.4 );
setRotateKey( spep_2 + 206 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 207 + OFFSET_X, 1, 50.2 );
setRotateKey( spep_2 + 208 + OFFSET_X, 1, 50 );
setRotateKey( spep_2 + 210 + OFFSET_X, 1, 50 );

-- 敵の動き2
setDisp( spep_2 + 270 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 350 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 294 + OFFSET_X, 1, 107 );

setMoveKey( spep_2 + 270 + OFFSET_X, 1, -66.9, -474.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, -66.9, -474.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, -255.1, -412.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, -255.1, -412.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 107.7, -137.5 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 107.7, -137.5 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 125.1, -131.2 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 125.1, -131.2 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 116.6, -155.9 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 116.6, -155.9 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 136.6, -144.6 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 136.6, -144.6 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 133.5, -166 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, 133.5, -166 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, 149, -159.8 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, 149, -159.8 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, 147.3, -175.4 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, 147.3, -175.4 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, 166.3, -171.9 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, 166.3, -171.9 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, 164.8, -183.8 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, 164.8, -183.8 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, 178.8, -183.5 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, 178.8, -183.5 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, 178.9, -196.7 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, 178.9, -196.7 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, 189.7, -199.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, 189.7, -199.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, 197.2, -205.4 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, 197.2, -205.4 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, 204.6, -211 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, 204.6, -211 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, 212.1, -216.7 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, 212.1, -216.7 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, 219.6, -222.4 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, 219.6, -222.4 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, 227, -228 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, 227, -228 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, 234.5, -233.7 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, 234.5, -233.7 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, 242, -239.3 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, 242, -239.3 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, 249.4, -245 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, 249.4, -245 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, 256.9, -250.6 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, 256.9, -250.6 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, 264.3, -256.3 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, 264.3, -256.3 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, 271.8, -262 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, 271.8, -262 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, 279.3, -267.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, 279.3, -267.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, 286.7, -273.3 , 0 );
setMoveKey( spep_2 + 343 + OFFSET_X, 1, 286.7, -273.3 , 0 );
setMoveKey( spep_2 + 344 + OFFSET_X, 1, 294.2, -278.9 , 0 );
setMoveKey( spep_2 + 345 + OFFSET_X, 1, 294.2, -278.9 , 0 );
setMoveKey( spep_2 + 346 + OFFSET_X, 1, 301.6, -284.6 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, 301.6, -284.6 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, 309.1, -290.3 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, 309.1, -290.3 , 0 );

setScaleKey( spep_2 + 270 + OFFSET_X, 1, 10.36, 10.36 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 10.36, 10.36 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 9.42, 9.42 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 1.66, 1.66 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 1.77, 1.77 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 1.84, 1.84 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 1.88, 1.88 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 1.95, 1.95 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 2.02, 2.02 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 2.06, 2.06 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.17, 2.17 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 343 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 344 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 345 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 346 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 350 + OFFSET_X, 1, 2.5, 2.5 );

setRotateKey( spep_2 + 270 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 293 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 294 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 297 + OFFSET_X, 1, 6.4 );
setRotateKey( spep_2 + 298 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 299 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_2 + 300 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 301 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 303 + OFFSET_X, 1, 10.6 );
setRotateKey( spep_2 + 304 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 305 + OFFSET_X, 1, 12.1 );
setRotateKey( spep_2 + 306 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 307 + OFFSET_X, 1, 13.5 );
setRotateKey( spep_2 + 308 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 309 + OFFSET_X, 1, 14.9 );
setRotateKey( spep_2 + 310 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 311 + OFFSET_X, 1, 16.3 );
setRotateKey( spep_2 + 312 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 313 + OFFSET_X, 1, 17.7 );
setRotateKey( spep_2 + 314 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 315 + OFFSET_X, 1, 19.1 );
setRotateKey( spep_2 + 316 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 317 + OFFSET_X, 1, 20.5 );
setRotateKey( spep_2 + 318 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 319 + OFFSET_X, 1, 21.9 );
setRotateKey( spep_2 + 320 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 321 + OFFSET_X, 1, 23.3 );
setRotateKey( spep_2 + 322 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 323 + OFFSET_X, 1, 24.8 );
setRotateKey( spep_2 + 324 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 325 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_2 + 326 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 327 + OFFSET_X, 1, 27.6 );
setRotateKey( spep_2 + 328 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 329 + OFFSET_X, 1, 29 );
setRotateKey( spep_2 + 330 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 331 + OFFSET_X, 1, 30.4 );
setRotateKey( spep_2 + 332 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 333 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_2 + 334 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 335 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_2 + 336 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 337 + OFFSET_X, 1, 34.6 );
setRotateKey( spep_2 + 338 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 339 + OFFSET_X, 1, 36.1 );
setRotateKey( spep_2 + 340 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 341 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 342 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 343 + OFFSET_X, 1, 38.9 );
setRotateKey( spep_2 + 344 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 345 + OFFSET_X, 1, 40.3 );
setRotateKey( spep_2 + 346 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 41.7 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, 43.1 );
setRotateKey( spep_2 + 350 + OFFSET_X, 1, 43.1 );

-- 敵の動き3
setDisp( spep_2 + 458 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 482 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 458 + OFFSET_X, 1, 8 );

setMoveKey( spep_2 + 458 + OFFSET_X, 1, 2.8, 672.1 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 2.8, 672.1 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 2.8, 611.9 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 2.8, 611.9 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 2.8, 551.6 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 2.8, 551.6 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 2.8, 491.4 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 2.8, 491.4 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 2.8, 431.2 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 2.8, 431.2 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 2.8, 371 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 2.8, 371 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 2.8, 310.7 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 2.8, 310.7 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 2.8, 250.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 2.8, 250.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 2.8, 190.3 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 2.8, 190.3 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 2.8, 130.1 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 2.8, 130.1 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 2.8, 69.8 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 2.8, 69.8 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 2.8, 9.6 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 2.8, 9.6 , 0 );

setScaleKey( spep_2 + 458 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 482 + OFFSET_X, 1, 0.34, 0.34 );

setRotateKey( spep_2 + 458 + OFFSET_X, 1, -62.1 );
setRotateKey( spep_2 + 482 + OFFSET_X, 1, -62.1 );

-- ** 音 ** --
--蹴り上げる
SE016 = playSeVer2( spep_2 + 12, 1187, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_2 + 12, 1049, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 38, SE018, 61 );
SE019 = playSeVer2( spep_2 + 60, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE019, 35 );
SE020 = playSeVer2( spep_2 + 82, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 82, SE020, 22 );
SE021 = playSeVer2( spep_2 + 108, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE021, 10 );

--飛び上がる
SE022 = playSeVer2( spep_2 + 120, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 120, 1207, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 130, 1314, "",spep_2 + 310, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 130, SE024, 59 );
SE025 = playSeVer2( spep_2 + 130, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 130, SE025, 71 );
SE026 = playSeVer2( spep_2 + 160, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 160, SE026, 62 );
SE027 = playSeVer2( spep_2 + 194, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 194, SE027, 71 );

--顔アップ
SE028 = playSeVer2( spep_2 + 200, 8, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 202, 1184, "",spep_2 + 308, 0, 34, -1);
SE030 = playSeVer2( spep_2 + 204, 1190, "", 0, 12, 0, -1);

--飛び上がる
SE031 = playSeVer2( spep_2 + 258, 1019, "",spep_2 + 304, 0, 24, -1);
setSeVolumeByWorkId( spep_2 + 258, SE031, 71 );

--殴り飛ばす
SE032 = playSeVer2( spep_2 + 268, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 280, 1187, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 280, 1120, "", 0, 0, 0, -1);

--敵落ちていく
SE035 = playSeVer2( spep_2 + 310, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 310, SE035, 77 );

--画面遷移
SE036 = playSeVer2( spep_2 + 346, 1116, "",spep_2 + 396, 0, 24, -1);

--空気圧発射
SE037 = playSeVer2( spep_2 + 404, 1032, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 404, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 404, SE038, 75 );
SE039 = playSeVer2( spep_2 + 404, 1179, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 406, 1117, "", 0, 0, 0, -1);

--岩爆発
SE041 = playSeVer2( spep_2 + 474, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 484, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 490 );
endPhase( spep_2 + MAX_FRAME_2 );  -- 628

end
