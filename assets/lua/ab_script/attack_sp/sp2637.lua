-- 1027600: LR_超サイヤ人トランクス (青年期)＆超サイヤ人ブロリー_超必殺技：バーニングブラスター
-- sp_effect_a2_00232
-- sp2637

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 162532;  -- 開幕カットイン～カードカットインまで ef_001
SP_002 = 162533;  -- トランクス的に攻撃～フィニッシュまで ef_002
SP_002b = 162534;  -- トランクス的に攻撃～フィニッシュまで ef_002b

-- 敵側
SP_002r = 162535;  -- トランクス的に攻撃～フィニッシュまで ef_002r
SP_002br = 162536;  -- トランクス的に攻撃～フィニッシュまで ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕カットイン～カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
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

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 172, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 172 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 74 );

--ズームアウト
SE005 = playSeVer2( spep_0 + 18, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 80 );
setTimeStretch( SE005, 0.86, 30, 4 );

--トランクス突っ込んでくる
SE009 = playSeVer2( spep_0 + 96, 1182, "",spep_0 + 170, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 96, 1117, "",spep_0 + 172, 0, 12, -1);

--ブロリー突っ込んでくる
SE011 = playSeVer2( spep_0 + 128, 9, "",spep_0 + 170, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 128, 1182, "",spep_0 + 174, 0, 14, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 156

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- トランクス的に攻撃～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 920;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 590;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, 9.2, -6.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 9.2, -7 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 9.2, -7 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 9.2, -7.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 9.2, -7.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 9.2, -7.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 9.2, -7.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 9.2, -7.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 9.2, -7.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 9.2, -7.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 9.2, -7.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 9.2, -8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 9.2, -8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 9.2, -8.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 9.2, -8.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 9.2, -8.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 9.2, -8.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 9.2, -8.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 9.2, -8.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 9.2, -8.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 9.2, -8.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 25.6, 23.8 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 25.6, 23.8 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 8.4, 10 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 8.4, 10 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 32.1, 35.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 32.1, 35.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 38.2, -2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 38.2, -2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 44.4, 15.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 44.4, 15.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 47.2, 15.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 47.2, 15.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 50, 15.7 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 50, 15.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 52.4, 15.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 52.4, 15.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 54.8, 16.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 54.8, 16.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 57.2, 16.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 57.2, 16.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 48.7, 7.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 48.7, 7.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 35.4, -6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 35.4, -6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 63, 19.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 63, 19.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 65.1, -18 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 65.1, -18 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 67.2, -0.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 67.2, -0.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 69.3, -0.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 69.3, -0.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 99, 37.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 99, 37.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 75.2, 20.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 75.2, 20.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 103.2, 50.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 103.2, 50.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 113.5, 18.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 113.5, 18.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 115.3, 35.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 115.3, 35.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 117.1, 36.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 117.1, 36.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 119, 36.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 119, 36.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 120.8, 36.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 120.8, 36.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 122.6, 36.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 122.6, 36.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 124.4, 36.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 124.4, 36.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 126.3, 37 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 126.3, 37 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 217.3, 37.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 217.3, 37.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 309.8, 38.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 309.8, 38.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 403.6, 40 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 403.6, 40 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 406.9, 40.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 406.9, 40.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 410.2, 41 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 410.2, 41 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 413.4, 41.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 413.4, 41.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 416.7, 41.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 416.7, 41.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 420, 42.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 420, 42.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 277.3, 27.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 277.3, 27.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 184.4, -103.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 184.4, -103.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 128.8, -55.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 128.8, -55.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 33.4, -67 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 33.4, -67 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 70.1, -14.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 70.1, -14.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 93.5, 11.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 93.5, 11.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 115.4, 35.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 115.4, 35.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 136, 57.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 136, 57.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 155.4, 78.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 155.4, 78.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 173.5, 98.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 173.5, 98.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 190.3, 116.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 190.3, 116.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 205.9, 133.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 205.9, 133.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 220.3, 149 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 220.3, 149 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 233.4, 163.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 233.4, 163.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 245.3, 175.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 245.3, 175.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 255.9, 187.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 255.9, 187.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 265.2, 197.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 265.2, 197.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 273.3, 205.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 273.3, 205.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 280.1, 212.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 280.1, 212.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 285.7, 218.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 285.7, 218.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 290, 223 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 290, 223 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 291.1, 223.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 291.1, 223.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 292, 224.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 292, 224.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 292.8, 225 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 292.8, 225 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 293.5, 225.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 293.5, 225.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 294.1, 225.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 294.1, 225.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 294.6, 225.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 294.6, 225.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 295, 225.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 295, 225.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 295.3, 225.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 295.3, 225.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 295.5, 225.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 295.5, 225.7 , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 28.7 );

-- 敵の動き2
setDisp( spep_2 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 226 + OFFSET_X, 1, -275.2, -458.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -275.2, -458.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -240.7, -403.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -240.7, -403.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -206.3, -348.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -206.3, -348.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -172.1, -294.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -172.1, -294.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -138, -239.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -138, -239.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -104.1, -185.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -104.1, -185.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -70.4, -131.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -70.4, -131.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -36.6, -78.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -36.6, -78.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 13.9, -122.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 13.9, -122.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 13.9, -123.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 13.9, -123.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 13.9, -125.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 13.9, -125.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 13.9, -127.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 13.9, -127.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 4, -151.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 4, -151.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 24.9, -104 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 24.9, -104 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -0.5, -136.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -0.5, -136.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 29.3, -145.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 29.3, -145.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 13.9, -142.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 13.9, -142.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 13.9, -146.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 13.9, -146.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 13.9, -151.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 13.9, -151.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 13.9, -155.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 13.9, -155.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 13.9, -161 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 13.9, -161 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 13.9, -166.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 13.9, -166.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 13.9, -172.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 13.9, -172.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 13.9, -176.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 13.9, -176.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 13.9, -182.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 13.9, -182.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 13.9, -189.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 13.9, -189.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 13.9, -198.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 13.9, -198.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 13.9, -208.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 13.9, -208.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 13.9, -221 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 13.9, -221 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 13.9, -234.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 13.9, -234.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 13.9, -250 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 13.9, -250 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 13.9, -266.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 13.9, -266.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 13.9, -285.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 13.9, -285.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 13.9, -305.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 13.9, -305.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 13.9, -551.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 13.9, -551.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 13.9, -798.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 13.9, -798.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 13.9, -1044.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 13.9, -1044.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 13.9, -1291.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 13.9, -1291.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 13.9, -1537.8 , 0 );

setScaleKey( spep_2 + 226 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_2 + 226 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 72.1 );

-- 敵の動き3
setDisp( spep_2 + 764 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 920 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 764 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 764 + OFFSET_X, 1, 135.5, -2274.3 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 135.5, -2274.3 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 134.8, -2120.5 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 134.8, -2120.5 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 120.1, -2004.7 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 120.1, -2004.7 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 149.4, -1876.9 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 149.4, -1876.9 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 132.7, -1763.1 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 132.7, -1763.1 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 132, -1609.2 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 132, -1609.2 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 117.3, -1493.4 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 117.3, -1493.4 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 146.7, -1365.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 146.7, -1365.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 130, -1251.8 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 130, -1251.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 129.3, -1098 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 129.3, -1098 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 114.6, -982.2 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 114.6, -982.2 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 154.5, -854.4 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 154.5, -854.4 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 127.3, -751 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 127.3, -751 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 126.7, -576.2 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 126.7, -576.2 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 84.6, -526.4 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 84.6, -526.4 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 118, -454 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 118, -454 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 73.9, -406 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 73.9, -406 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 56.2, -286.5 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, 56.2, -286.5 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, 31.7, -308.9 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, 31.7, -308.9 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, 56.2, -310.8 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, 56.2, -310.8 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, 56.2, -306.6 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, 56.2, -306.6 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, 54.2, -308.5 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, 54.2, -308.5 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, 58.2, -308.4 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, 58.2, -308.4 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, 56.2, -310.3 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, 56.2, -310.3 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, 56.2, -306.1 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, 56.2, -306.1 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, 54.2, -308 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, 54.2, -308 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, 58.2, -307.9 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, 58.2, -307.9 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, 56.2, -309.8 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, 56.2, -309.8 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, 56.2, -305.6 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, 56.2, -305.6 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, 54.2, -307.5 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, 54.2, -307.5 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, 58.2, -307.4 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, 58.2, -307.4 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, 56.2, -309.3 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, 56.2, -309.3 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, 56.2, -305.1 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, 56.2, -305.1 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, 54.2, -307 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, 54.2, -307 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, 58.2, -306.9 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 58.2, -306.9 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 56.2, -308.8 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 56.2, -308.8 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 56.2, -304.7 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 56.2, -304.7 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 54.2, -306.5 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 54.2, -306.5 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 58.2, -306.4 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 58.2, -306.4 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 56.2, -308.3 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 56.2, -308.3 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 56.2, -304.2 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 56.2, -304.2 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 54.2, -306 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 54.2, -306 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 58.2, -305.9 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 58.2, -305.9 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 56.2, -307.8 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 56.2, -307.8 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 54.2, -305.5 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 54.2, -305.5 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 58.2, -305.4 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 58.2, -305.4 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 56.2, -307.3 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 56.2, -307.3 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 56.2, -303.2 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 56.2, -303.2 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 54.2, -305 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 54.2, -305 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 58.2, -304.9 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 58.2, -304.9 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 56.2, -306.8 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 56.2, -306.8 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 56.2, -302.7 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 56.2, -302.7 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 54.2, -304.6 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 54.2, -304.6 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 58.2, -304.4 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, 58.2, -304.4 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, 56.2, -306.3 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 56.2, -306.3 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 56.2, -302.2 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, 56.2, -302.2 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, 54.2, -304.1 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, 54.2, -304.1 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, 58.2, -303.9 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, 58.2, -303.9 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, 56.2, -305.8 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, 56.2, -305.8 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, 56.2, -301.7 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, 56.2, -301.7 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, 54.2, -303.6 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, 54.2, -303.6 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, 58.2, -303.4 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, 58.2, -303.4 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, 56.2, -305.3 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, 56.2, -305.3 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, 56.2, -301.2 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X, 1, 56.2, -301.2 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X, 1, 54.2, -303.1 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, 54.2, -303.1 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X, 1, 58.2, -302.9 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X, 1, 58.2, -302.9 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X, 1, 56.2, -304.8 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, 56.2, -304.8 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, 56.2, -300.7 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X, 1, 56.2, -300.7 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X, 1, 54.2, -302.6 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, 54.2, -302.6 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, 58.2, -302.5 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, 58.2, -302.5 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, 56.2, -304.3 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, 56.2, -304.3 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, 56.2, -300.2 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, 56.2, -300.2 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, 54.2, -302.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, 54.2, -302.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, 58.2, -302 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, 58.2, -302 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, 58.2, -301.8 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, 58.2, -301.8 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, 56.2, -299.6 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, 56.2, -299.6 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, 54.2, -301.5 , 0 );

setScaleKey( spep_2 + 764 + OFFSET_X, 1, 15.6, 15.6 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 15.6, 15.6 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 14.73, 14.73 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 14.73, 14.73 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 13.86, 13.86 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 13.86, 13.86 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 12.12, 12.12 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 12.12, 12.12 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 7.76, 7.76 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 7.76, 7.76 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 785 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 786 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 920 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 764 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 56.7 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, 56.7 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 785 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 786 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 920 + OFFSET_X, 1, 60.6 );

-- ** 音 ** --
--トランクス向かっていく
SE014 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 26, 4, 8, -1);
setStartTimeMs( SE014,  433 );

--パンチ
SE015 = playSeVer2( spep_2 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE015, 132 );
SE016 = playSeVer2( spep_2 + 18, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE016, 71 );
SE017 = playSeVer2( spep_2 + 18, 1110, "", 0, 0, 0, -1);

--パンチ2
SE018 = playSeVer2( spep_2 + 38, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);

--パンチ3
SE020 = playSeVer2( spep_2 + 52, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_2 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE022, 50 );
SE023 = playSeVer2( spep_2 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE023, 50 );
SE026 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE026, 50 );

--殴り飛ばす
SE024 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE024, 77 );
SE025 = playSeVer2( spep_2 + 90, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE027 = playSeVer2( spep_2 + 126, 1109, "", 0, 0, 0, -1);

--ブロリー急降下
SE028 = playSeVer2( spep_2 + 146, 1116, "",spep_2 + 186, 0, 18, -1);
SE029 = playSeVer2( spep_2 + 148, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 156, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE030, 60 );
SE031 = playSeVer2( spep_2 + 156, 1121, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 156, SE031, 50 );

--敵ヒット
SE032 = playSeVer2( spep_2 + 222, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 232, 1123, "", spep_2 + 390, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 232, SE033, 82 );
SE034 = playSeVer2( spep_2 + 234, 1153, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 234, 1180, "", spep_2 + 390, 0, 10, -1);

--地面激突
SE036 = playSeVer2( spep_2 + 278, 1277, "", spep_2 + 390, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 278, SE036, 146 );
SE037 = playSeVer2( spep_2 + 298, 1159, "",spep_2 + 538, 0, 168, 0.6);

--ブロリー着地
SE038 = playSeVer2( spep_2 + 338, 63, "",spep_2 + 378, 0, 16, -1);
SE039 = playSeVer2( spep_2 + 356, 1106, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 356, 1192, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 356, SE040, 148 );
stopSeIfDoubleSpeed( spep_2 + 356, SE040 );
SE041 = playSeVer2( spep_2 + 360, 1107, "", 0, 0, 0, -1);

--ブロリー気弾溜め
SE042 = playSeVer2( spep_2 + 392, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE042,  100 );
SE043 = playSeVer2( spep_2 + 402, 1262, "", 0, 0, 0, -1);
setTimeStretch( SE043, 2, 30, 4 );
SE044 = playSeVer2( spep_2 + 402, 1396, "",spep_2 + 738, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 402, SE044, 81 );
SE045 = playSeVer2( spep_2 + 402, 1394, "",spep_2 + 738, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 402, SE045, 84 );
SE046 = playSeVer2( spep_2 + 402, 1281, "",spep_2 + 740, 0, 62, -1);
setPitch( spep_2 + 402, SE046, -700 );
setTimeStretch( SE046, 0.53, 30, 4 );

--腕上げる
SE047 = playSeVer2( spep_2 + 432, 1003, "", 0, 0, 0, -1);

--トランクス着地
SE048 = playSeVer2( spep_2 + 478, 63, "",spep_2 + 524, 0, 16, -1);
SE049 = playSeVer2( spep_2 + 498, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 498, SE049, 158 );
SE050 = playSeVer2( spep_2 + 502, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 502, SE050, 188 );

--腕ひく
SE051 = playSeVer2( spep_2 + 522, 1003, "", 0, 0, 0, -1);

--二人上前に出す
SE052 = playSeVer2( spep_2 + 564, 1004, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 566, 1003, "", 0, 0, 0, -1);

--二人気弾溜め
SE054 = playSeVer2( spep_2 + 580, 1334, "",spep_2 + 694, 0, 24, -1);
SE055 = playSeVer2( spep_2 + 592, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 592, SE055, 76 );

--気弾発射
SE057 = playSeVer2( spep_2 + 666, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 666, SE057, 63 );
SE058 = playSeVer2( spep_2 + 674, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 674, 1146, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 674, SE059, 84 );
SE060 = playSeVer2( spep_2 + 674, 1109, "", 0, 0, 0, -1);

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 734, 1177, "",spep_2 + 790, 0, 16, -1);
SE062 = playSeVer2( spep_2 + 736, 1159, "", 0, 0, 0, -1);

--爆発
SE063 = playSeVer2( spep_2 + 780, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 810 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 920

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 開幕カットイン～カードカットインまで ef_001
------------------------------------------------------
MAX_FRAME_0 = 156;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, SP_01, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, SP_01, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, SP_01, -1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, SP_01, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, SP_01, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, SP_01, 0 );
setEffAlphaKey( spep_0 + 0, SP_01, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, SP_01, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1407, "",spep_0 + 172, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 172 );
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE004 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 24, SE004, 79 );
SE006 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 48, SE006, 79 );
SE007 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE007, 79 );
SE008 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 96, SE008, 79 );

--入り
SE003 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 74 );

--ズームアウト
SE005 = playSeVer2( spep_0 + 18, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE005, 80 );
setTimeStretch( SE005, 0.86, 30, 4 );

--トランクス突っ込んでくる
SE009 = playSeVer2( spep_0 + 96, 1182, "",spep_0 + 170, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 96, 1117, "",spep_0 + 172, 0, 12, -1);

--ブロリー突っ込んでくる
SE011 = playSeVer2( spep_0 + 128, 9, "",spep_0 + 170, 0, 10, -1);
SE012 = playSeVer2( spep_0 + 128, 1182, "",spep_0 + 174, 0, 14, -1);

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then
SP_dodge = spep_0 + 150;  -- エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
stopSe( SP_dodge - 12, SE012, 0);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え

dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

pauseAll( SP_dodge, 67);

entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

endPhase( SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 156

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 0);

------------------------------------------------------
-- トランクス的に攻撃～フィニッシュまで ef_002
------------------------------------------------------
MAX_FRAME_2 = 920;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002br, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, SP_02b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02b, 0 );
setEffAlphaKey( spep_2 + 0, SP_02b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02b, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_2 + 590;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0,-15, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -15, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -15, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, 0.7);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp( spep_2 + 1 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 154 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 1 + OFFSET_X, 1, 104 );
changeAnime( spep_2 + 22 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 42 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 56 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 1 + OFFSET_X, 1, 9.2, -6.9 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_X, 1, 9.2, -7 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_X, 1, 9.2, -7 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_X, 1, 9.2, -7.2 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_X, 1, 9.2, -7.2 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_X, 1, 9.2, -7.4 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_X, 1, 9.2, -7.4 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_X, 1, 9.2, -7.6 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_X, 1, 9.2, -7.6 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_X, 1, 9.2, -7.8 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_X, 1, 9.2, -7.8 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_X, 1, 9.2, -8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_X, 1, 9.2, -8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_X, 1, 9.2, -8.2 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_X, 1, 9.2, -8.2 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_X, 1, 9.2, -8.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_X, 1, 9.2, -8.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_X, 1, 9.2, -8.5 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_X, 1, 9.2, -8.5 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_X, 1, 9.2, -8.7 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_X, 1, 9.2, -8.7 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_X, 1, 25.6, 23.8 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_X, 1, 25.6, 23.8 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_X, 1, 8.4, 10 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_X, 1, 8.4, 10 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_X, 1, 32.1, 35.2 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_X, 1, 32.1, 35.2 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_X, 1, 38.2, -2 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_X, 1, 38.2, -2 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_X, 1, 44.4, 15.3 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_X, 1, 44.4, 15.3 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_X, 1, 47.2, 15.5 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_X, 1, 47.2, 15.5 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_X, 1, 50, 15.7 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_X, 1, 50, 15.7 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_X, 1, 52.4, 15.9 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, 52.4, 15.9 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, 54.8, 16.1 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, 54.8, 16.1 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 57.2, 16.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 57.2, 16.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 48.7, 7.8 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 48.7, 7.8 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 35.4, -6 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 35.4, -6 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 63, 19.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 63, 19.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 65.1, -18 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 65.1, -18 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 67.2, -0.7 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 67.2, -0.7 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 69.3, -0.2 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 69.3, -0.2 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 71.4, 0.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 99, 37.7 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 99, 37.7 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 75.2, 20.5 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 75.2, 20.5 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 103.2, 50.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 103.2, 50.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 113.5, 18.4 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 113.5, 18.4 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 115.3, 35.9 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 115.3, 35.9 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 117.1, 36.1 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 117.1, 36.1 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 119, 36.3 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 119, 36.3 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 120.8, 36.4 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 120.8, 36.4 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 122.6, 36.6 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 122.6, 36.6 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 124.4, 36.8 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, 124.4, 36.8 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, 126.3, 37 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, 126.3, 37 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, 217.3, 37.8 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, 217.3, 37.8 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, 309.8, 38.9 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 309.8, 38.9 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 403.6, 40 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 403.6, 40 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 406.9, 40.5 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 406.9, 40.5 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 410.2, 41 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 410.2, 41 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 413.4, 41.4 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 413.4, 41.4 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 416.7, 41.9 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 416.7, 41.9 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 420, 42.4 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 420, 42.4 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 277.3, 27.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 277.3, 27.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 184.4, -103.7 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 184.4, -103.7 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 128.8, -55.7 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 128.8, -55.7 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 33.4, -67 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 33.4, -67 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 70.1, -14.8 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 70.1, -14.8 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 93.5, 11.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 93.5, 11.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 115.4, 35.6 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 115.4, 35.6 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 136, 57.9 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 136, 57.9 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 155.4, 78.9 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 155.4, 78.9 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 173.5, 98.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 173.5, 98.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 190.3, 116.7 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 190.3, 116.7 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 205.9, 133.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 205.9, 133.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 220.3, 149 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 220.3, 149 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 233.4, 163.1 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 233.4, 163.1 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 245.3, 175.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 245.3, 175.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 255.9, 187.1 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 255.9, 187.1 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 265.2, 197.1 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 265.2, 197.1 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 273.3, 205.6 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 273.3, 205.6 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 280.1, 212.8 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 280.1, 212.8 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 285.7, 218.6 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 285.7, 218.6 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 290, 223 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 290, 223 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 291.1, 223.7 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 291.1, 223.7 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 292, 224.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 292, 224.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 292.8, 225 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 292.8, 225 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 293.5, 225.3 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 293.5, 225.3 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 294.1, 225.7 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 294.1, 225.7 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 294.6, 225.9 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 294.6, 225.9 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 295, 225.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 295, 225.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 295.3, 225.8 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 295.3, 225.8 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 295.5, 225.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 295.5, 225.7 , 0 );

setScaleKey( spep_2 + 1 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 77 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 78 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 79 + OFFSET_X, 1, 1.85, 1.85 );
setScaleKey( spep_2 + 80 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 81 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 82 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 97 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_2 + 98 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 99 + OFFSET_X, 1, 3.33, 3.33 );
setScaleKey( spep_2 + 100 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 101 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_2 + 102 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 141 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_2 + 142 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_2 + 1 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 21 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 22 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 41 + OFFSET_X, 1, -11.8 );
setRotateKey( spep_2 + 42 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 43 + OFFSET_X, 1, -57.7 );
setRotateKey( spep_2 + 44 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 45 + OFFSET_X, 1, -57 );
setRotateKey( spep_2 + 46 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 47 + OFFSET_X, 1, -56.3 );
setRotateKey( spep_2 + 48 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 49 + OFFSET_X, 1, -55.6 );
setRotateKey( spep_2 + 50 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 51 + OFFSET_X, 1, -54.9 );
setRotateKey( spep_2 + 52 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 53 + OFFSET_X, 1, -54.2 );
setRotateKey( spep_2 + 54 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 55 + OFFSET_X, 1, -53.5 );
setRotateKey( spep_2 + 56 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 57 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 58 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 59 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 60 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 61 + OFFSET_X, 1, -2.4 );
setRotateKey( spep_2 + 62 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 30 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 28.7 );
setRotateKey( spep_2 + 154 + OFFSET_X, 1, 28.7 );

-- 敵の動き2
setDisp( spep_2 + 226 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 302 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 242 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 226 + OFFSET_X, 1, -275.2, -458.8 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, -275.2, -458.8 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, -240.7, -403.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -240.7, -403.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -206.3, -348.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -206.3, -348.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -172.1, -294.2 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -172.1, -294.2 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -138, -239.9 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -138, -239.9 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -104.1, -185.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -104.1, -185.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -70.4, -131.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -70.4, -131.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -36.6, -78.1 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -36.6, -78.1 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 13.9, -122.2 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 13.9, -122.2 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 13.9, -123.6 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 13.9, -123.6 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 13.9, -125.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 13.9, -125.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 13.9, -127.6 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 13.9, -127.6 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 4, -151.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 4, -151.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 24.9, -104 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 24.9, -104 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -0.5, -136.3 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -0.5, -136.3 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 29.3, -145.5 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 29.3, -145.5 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 13.9, -142.7 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 13.9, -142.7 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 13.9, -146.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 13.9, -146.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 13.9, -151.1 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 13.9, -151.1 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 13.9, -155.9 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 13.9, -155.9 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 13.9, -161 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, 13.9, -161 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, 13.9, -166.4 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, 13.9, -166.4 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, 13.9, -172.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, 13.9, -172.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 13.9, -176.4 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 13.9, -176.4 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 13.9, -182.1 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 13.9, -182.1 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 13.9, -189.5 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 13.9, -189.5 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 13.9, -198.4 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 13.9, -198.4 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 13.9, -208.9 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 13.9, -208.9 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 13.9, -221 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 13.9, -221 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 13.9, -234.7 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 13.9, -234.7 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 13.9, -250 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 13.9, -250 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 13.9, -266.8 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 13.9, -266.8 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 13.9, -285.3 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 13.9, -285.3 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 13.9, -305.3 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 13.9, -305.3 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 13.9, -551.8 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 13.9, -551.8 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, 13.9, -798.3 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, 13.9, -798.3 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, 13.9, -1044.8 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, 13.9, -1044.8 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, 13.9, -1291.3 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, 13.9, -1291.3 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, 13.9, -1537.8 , 0 );

setScaleKey( spep_2 + 226 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 5.57, 5.57 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 4.54, 4.54 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 4.02, 4.02 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 2.14, 2.14 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 2.14, 2.14 );

setRotateKey( spep_2 + 226 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, 0.7 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, 0.8 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, 1 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, 1.1 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, 72.1 );
setRotateKey( spep_2 + 302 + OFFSET_X, 1, 72.1 );

-- 敵の動き3
setDisp( spep_2 + 764 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 920 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 764 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 764 + OFFSET_X, 1, 135.5, -2274.3 , 0 );
setMoveKey( spep_2 + 765 + OFFSET_X, 1, 135.5, -2274.3 , 0 );
setMoveKey( spep_2 + 766 + OFFSET_X, 1, 134.8, -2120.5 , 0 );
setMoveKey( spep_2 + 767 + OFFSET_X, 1, 134.8, -2120.5 , 0 );
setMoveKey( spep_2 + 768 + OFFSET_X, 1, 120.1, -2004.7 , 0 );
setMoveKey( spep_2 + 769 + OFFSET_X, 1, 120.1, -2004.7 , 0 );
setMoveKey( spep_2 + 770 + OFFSET_X, 1, 149.4, -1876.9 , 0 );
setMoveKey( spep_2 + 771 + OFFSET_X, 1, 149.4, -1876.9 , 0 );
setMoveKey( spep_2 + 772 + OFFSET_X, 1, 132.7, -1763.1 , 0 );
setMoveKey( spep_2 + 773 + OFFSET_X, 1, 132.7, -1763.1 , 0 );
setMoveKey( spep_2 + 774 + OFFSET_X, 1, 132, -1609.2 , 0 );
setMoveKey( spep_2 + 775 + OFFSET_X, 1, 132, -1609.2 , 0 );
setMoveKey( spep_2 + 776 + OFFSET_X, 1, 117.3, -1493.4 , 0 );
setMoveKey( spep_2 + 777 + OFFSET_X, 1, 117.3, -1493.4 , 0 );
setMoveKey( spep_2 + 778 + OFFSET_X, 1, 146.7, -1365.6 , 0 );
setMoveKey( spep_2 + 779 + OFFSET_X, 1, 146.7, -1365.6 , 0 );
setMoveKey( spep_2 + 780 + OFFSET_X, 1, 130, -1251.8 , 0 );
setMoveKey( spep_2 + 781 + OFFSET_X, 1, 130, -1251.8 , 0 );
setMoveKey( spep_2 + 782 + OFFSET_X, 1, 129.3, -1098 , 0 );
setMoveKey( spep_2 + 783 + OFFSET_X, 1, 129.3, -1098 , 0 );
setMoveKey( spep_2 + 784 + OFFSET_X, 1, 114.6, -982.2 , 0 );
setMoveKey( spep_2 + 785 + OFFSET_X, 1, 114.6, -982.2 , 0 );
setMoveKey( spep_2 + 786 + OFFSET_X, 1, 154.5, -854.4 , 0 );
setMoveKey( spep_2 + 787 + OFFSET_X, 1, 154.5, -854.4 , 0 );
setMoveKey( spep_2 + 788 + OFFSET_X, 1, 127.3, -751 , 0 );
setMoveKey( spep_2 + 789 + OFFSET_X, 1, 127.3, -751 , 0 );
setMoveKey( spep_2 + 790 + OFFSET_X, 1, 126.7, -576.2 , 0 );
setMoveKey( spep_2 + 791 + OFFSET_X, 1, 126.7, -576.2 , 0 );
setMoveKey( spep_2 + 792 + OFFSET_X, 1, 84.6, -526.4 , 0 );
setMoveKey( spep_2 + 793 + OFFSET_X, 1, 84.6, -526.4 , 0 );
setMoveKey( spep_2 + 794 + OFFSET_X, 1, 118, -454 , 0 );
setMoveKey( spep_2 + 795 + OFFSET_X, 1, 118, -454 , 0 );
setMoveKey( spep_2 + 796 + OFFSET_X, 1, 73.9, -406 , 0 );
setMoveKey( spep_2 + 797 + OFFSET_X, 1, 73.9, -406 , 0 );
setMoveKey( spep_2 + 798 + OFFSET_X, 1, 56.2, -286.5 , 0 );
setMoveKey( spep_2 + 799 + OFFSET_X, 1, 56.2, -286.5 , 0 );
setMoveKey( spep_2 + 800 + OFFSET_X, 1, 31.7, -308.9 , 0 );
setMoveKey( spep_2 + 801 + OFFSET_X, 1, 31.7, -308.9 , 0 );
setMoveKey( spep_2 + 802 + OFFSET_X, 1, 56.2, -310.8 , 0 );
setMoveKey( spep_2 + 803 + OFFSET_X, 1, 56.2, -310.8 , 0 );
setMoveKey( spep_2 + 804 + OFFSET_X, 1, 56.2, -306.6 , 0 );
setMoveKey( spep_2 + 805 + OFFSET_X, 1, 56.2, -306.6 , 0 );
setMoveKey( spep_2 + 806 + OFFSET_X, 1, 54.2, -308.5 , 0 );
setMoveKey( spep_2 + 807 + OFFSET_X, 1, 54.2, -308.5 , 0 );
setMoveKey( spep_2 + 808 + OFFSET_X, 1, 58.2, -308.4 , 0 );
setMoveKey( spep_2 + 809 + OFFSET_X, 1, 58.2, -308.4 , 0 );
setMoveKey( spep_2 + 810 + OFFSET_X, 1, 56.2, -310.3 , 0 );
setMoveKey( spep_2 + 811 + OFFSET_X, 1, 56.2, -310.3 , 0 );
setMoveKey( spep_2 + 812 + OFFSET_X, 1, 56.2, -306.1 , 0 );
setMoveKey( spep_2 + 813 + OFFSET_X, 1, 56.2, -306.1 , 0 );
setMoveKey( spep_2 + 814 + OFFSET_X, 1, 54.2, -308 , 0 );
setMoveKey( spep_2 + 815 + OFFSET_X, 1, 54.2, -308 , 0 );
setMoveKey( spep_2 + 816 + OFFSET_X, 1, 58.2, -307.9 , 0 );
setMoveKey( spep_2 + 817 + OFFSET_X, 1, 58.2, -307.9 , 0 );
setMoveKey( spep_2 + 818 + OFFSET_X, 1, 56.2, -309.8 , 0 );
setMoveKey( spep_2 + 819 + OFFSET_X, 1, 56.2, -309.8 , 0 );
setMoveKey( spep_2 + 820 + OFFSET_X, 1, 56.2, -305.6 , 0 );
setMoveKey( spep_2 + 821 + OFFSET_X, 1, 56.2, -305.6 , 0 );
setMoveKey( spep_2 + 822 + OFFSET_X, 1, 54.2, -307.5 , 0 );
setMoveKey( spep_2 + 823 + OFFSET_X, 1, 54.2, -307.5 , 0 );
setMoveKey( spep_2 + 824 + OFFSET_X, 1, 58.2, -307.4 , 0 );
setMoveKey( spep_2 + 825 + OFFSET_X, 1, 58.2, -307.4 , 0 );
setMoveKey( spep_2 + 826 + OFFSET_X, 1, 56.2, -309.3 , 0 );
setMoveKey( spep_2 + 827 + OFFSET_X, 1, 56.2, -309.3 , 0 );
setMoveKey( spep_2 + 828 + OFFSET_X, 1, 56.2, -305.1 , 0 );
setMoveKey( spep_2 + 829 + OFFSET_X, 1, 56.2, -305.1 , 0 );
setMoveKey( spep_2 + 830 + OFFSET_X, 1, 54.2, -307 , 0 );
setMoveKey( spep_2 + 831 + OFFSET_X, 1, 54.2, -307 , 0 );
setMoveKey( spep_2 + 832 + OFFSET_X, 1, 58.2, -306.9 , 0 );
setMoveKey( spep_2 + 833 + OFFSET_X, 1, 58.2, -306.9 , 0 );
setMoveKey( spep_2 + 834 + OFFSET_X, 1, 56.2, -308.8 , 0 );
setMoveKey( spep_2 + 835 + OFFSET_X, 1, 56.2, -308.8 , 0 );
setMoveKey( spep_2 + 836 + OFFSET_X, 1, 56.2, -304.7 , 0 );
setMoveKey( spep_2 + 837 + OFFSET_X, 1, 56.2, -304.7 , 0 );
setMoveKey( spep_2 + 838 + OFFSET_X, 1, 54.2, -306.5 , 0 );
setMoveKey( spep_2 + 839 + OFFSET_X, 1, 54.2, -306.5 , 0 );
setMoveKey( spep_2 + 840 + OFFSET_X, 1, 58.2, -306.4 , 0 );
setMoveKey( spep_2 + 841 + OFFSET_X, 1, 58.2, -306.4 , 0 );
setMoveKey( spep_2 + 842 + OFFSET_X, 1, 56.2, -308.3 , 0 );
setMoveKey( spep_2 + 843 + OFFSET_X, 1, 56.2, -308.3 , 0 );
setMoveKey( spep_2 + 844 + OFFSET_X, 1, 56.2, -304.2 , 0 );
setMoveKey( spep_2 + 845 + OFFSET_X, 1, 56.2, -304.2 , 0 );
setMoveKey( spep_2 + 846 + OFFSET_X, 1, 54.2, -306 , 0 );
setMoveKey( spep_2 + 847 + OFFSET_X, 1, 54.2, -306 , 0 );
setMoveKey( spep_2 + 848 + OFFSET_X, 1, 58.2, -305.9 , 0 );
setMoveKey( spep_2 + 849 + OFFSET_X, 1, 58.2, -305.9 , 0 );
setMoveKey( spep_2 + 850 + OFFSET_X, 1, 56.2, -307.8 , 0 );
setMoveKey( spep_2 + 851 + OFFSET_X, 1, 56.2, -307.8 , 0 );
setMoveKey( spep_2 + 852 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 853 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 854 + OFFSET_X, 1, 54.2, -305.5 , 0 );
setMoveKey( spep_2 + 855 + OFFSET_X, 1, 54.2, -305.5 , 0 );
setMoveKey( spep_2 + 856 + OFFSET_X, 1, 58.2, -305.4 , 0 );
setMoveKey( spep_2 + 857 + OFFSET_X, 1, 58.2, -305.4 , 0 );
setMoveKey( spep_2 + 858 + OFFSET_X, 1, 56.2, -307.3 , 0 );
setMoveKey( spep_2 + 859 + OFFSET_X, 1, 56.2, -307.3 , 0 );
setMoveKey( spep_2 + 860 + OFFSET_X, 1, 56.2, -303.2 , 0 );
setMoveKey( spep_2 + 861 + OFFSET_X, 1, 56.2, -303.2 , 0 );
setMoveKey( spep_2 + 862 + OFFSET_X, 1, 54.2, -305 , 0 );
setMoveKey( spep_2 + 863 + OFFSET_X, 1, 54.2, -305 , 0 );
setMoveKey( spep_2 + 864 + OFFSET_X, 1, 58.2, -304.9 , 0 );
setMoveKey( spep_2 + 865 + OFFSET_X, 1, 58.2, -304.9 , 0 );
setMoveKey( spep_2 + 866 + OFFSET_X, 1, 56.2, -306.8 , 0 );
setMoveKey( spep_2 + 867 + OFFSET_X, 1, 56.2, -306.8 , 0 );
setMoveKey( spep_2 + 868 + OFFSET_X, 1, 56.2, -302.7 , 0 );
setMoveKey( spep_2 + 869 + OFFSET_X, 1, 56.2, -302.7 , 0 );
setMoveKey( spep_2 + 870 + OFFSET_X, 1, 54.2, -304.6 , 0 );
setMoveKey( spep_2 + 871 + OFFSET_X, 1, 54.2, -304.6 , 0 );
setMoveKey( spep_2 + 872 + OFFSET_X, 1, 58.2, -304.4 , 0 );
setMoveKey( spep_2 + 873 + OFFSET_X, 1, 58.2, -304.4 , 0 );
setMoveKey( spep_2 + 874 + OFFSET_X, 1, 56.2, -306.3 , 0 );
setMoveKey( spep_2 + 875 + OFFSET_X, 1, 56.2, -306.3 , 0 );
setMoveKey( spep_2 + 876 + OFFSET_X, 1, 56.2, -302.2 , 0 );
setMoveKey( spep_2 + 877 + OFFSET_X, 1, 56.2, -302.2 , 0 );
setMoveKey( spep_2 + 878 + OFFSET_X, 1, 54.2, -304.1 , 0 );
setMoveKey( spep_2 + 879 + OFFSET_X, 1, 54.2, -304.1 , 0 );
setMoveKey( spep_2 + 880 + OFFSET_X, 1, 58.2, -303.9 , 0 );
setMoveKey( spep_2 + 881 + OFFSET_X, 1, 58.2, -303.9 , 0 );
setMoveKey( spep_2 + 882 + OFFSET_X, 1, 56.2, -305.8 , 0 );
setMoveKey( spep_2 + 883 + OFFSET_X, 1, 56.2, -305.8 , 0 );
setMoveKey( spep_2 + 884 + OFFSET_X, 1, 56.2, -301.7 , 0 );
setMoveKey( spep_2 + 885 + OFFSET_X, 1, 56.2, -301.7 , 0 );
setMoveKey( spep_2 + 886 + OFFSET_X, 1, 54.2, -303.6 , 0 );
setMoveKey( spep_2 + 887 + OFFSET_X, 1, 54.2, -303.6 , 0 );
setMoveKey( spep_2 + 888 + OFFSET_X, 1, 58.2, -303.4 , 0 );
setMoveKey( spep_2 + 889 + OFFSET_X, 1, 58.2, -303.4 , 0 );
setMoveKey( spep_2 + 890 + OFFSET_X, 1, 56.2, -305.3 , 0 );
setMoveKey( spep_2 + 891 + OFFSET_X, 1, 56.2, -305.3 , 0 );
setMoveKey( spep_2 + 892 + OFFSET_X, 1, 56.2, -301.2 , 0 );
setMoveKey( spep_2 + 893 + OFFSET_X, 1, 56.2, -301.2 , 0 );
setMoveKey( spep_2 + 894 + OFFSET_X, 1, 54.2, -303.1 , 0 );
setMoveKey( spep_2 + 895 + OFFSET_X, 1, 54.2, -303.1 , 0 );
setMoveKey( spep_2 + 896 + OFFSET_X, 1, 58.2, -302.9 , 0 );
setMoveKey( spep_2 + 897 + OFFSET_X, 1, 58.2, -302.9 , 0 );
setMoveKey( spep_2 + 898 + OFFSET_X, 1, 56.2, -304.8 , 0 );
setMoveKey( spep_2 + 899 + OFFSET_X, 1, 56.2, -304.8 , 0 );
setMoveKey( spep_2 + 900 + OFFSET_X, 1, 56.2, -300.7 , 0 );
setMoveKey( spep_2 + 901 + OFFSET_X, 1, 56.2, -300.7 , 0 );
setMoveKey( spep_2 + 902 + OFFSET_X, 1, 54.2, -302.6 , 0 );
setMoveKey( spep_2 + 903 + OFFSET_X, 1, 54.2, -302.6 , 0 );
setMoveKey( spep_2 + 904 + OFFSET_X, 1, 58.2, -302.5 , 0 );
setMoveKey( spep_2 + 905 + OFFSET_X, 1, 58.2, -302.5 , 0 );
setMoveKey( spep_2 + 906 + OFFSET_X, 1, 56.2, -304.3 , 0 );
setMoveKey( spep_2 + 907 + OFFSET_X, 1, 56.2, -304.3 , 0 );
setMoveKey( spep_2 + 908 + OFFSET_X, 1, 56.2, -300.2 , 0 );
setMoveKey( spep_2 + 909 + OFFSET_X, 1, 56.2, -300.2 , 0 );
setMoveKey( spep_2 + 910 + OFFSET_X, 1, 54.2, -302.1 , 0 );
setMoveKey( spep_2 + 911 + OFFSET_X, 1, 54.2, -302.1 , 0 );
setMoveKey( spep_2 + 912 + OFFSET_X, 1, 58.2, -302 , 0 );
setMoveKey( spep_2 + 913 + OFFSET_X, 1, 58.2, -302 , 0 );
setMoveKey( spep_2 + 914 + OFFSET_X, 1, 58.2, -301.8 , 0 );
setMoveKey( spep_2 + 915 + OFFSET_X, 1, 58.2, -301.8 , 0 );
setMoveKey( spep_2 + 916 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 917 + OFFSET_X, 1, 56.2, -303.7 , 0 );
setMoveKey( spep_2 + 918 + OFFSET_X, 1, 56.2, -299.6 , 0 );
setMoveKey( spep_2 + 919 + OFFSET_X, 1, 56.2, -299.6 , 0 );
setMoveKey( spep_2 + 920 + OFFSET_X, 1, 54.2, -301.5 , 0 );

setScaleKey( spep_2 + 764 + OFFSET_X, 1, 15.6, 15.6 );
setScaleKey( spep_2 + 765 + OFFSET_X, 1, 15.6, 15.6 );
setScaleKey( spep_2 + 766 + OFFSET_X, 1, 14.73, 14.73 );
setScaleKey( spep_2 + 767 + OFFSET_X, 1, 14.73, 14.73 );
setScaleKey( spep_2 + 768 + OFFSET_X, 1, 13.86, 13.86 );
setScaleKey( spep_2 + 769 + OFFSET_X, 1, 13.86, 13.86 );
setScaleKey( spep_2 + 770 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_2 + 771 + OFFSET_X, 1, 12.99, 12.99 );
setScaleKey( spep_2 + 772 + OFFSET_X, 1, 12.12, 12.12 );
setScaleKey( spep_2 + 773 + OFFSET_X, 1, 12.12, 12.12 );
setScaleKey( spep_2 + 774 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_2 + 775 + OFFSET_X, 1, 11.24, 11.24 );
setScaleKey( spep_2 + 776 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_2 + 777 + OFFSET_X, 1, 10.37, 10.37 );
setScaleKey( spep_2 + 778 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 779 + OFFSET_X, 1, 9.5, 9.5 );
setScaleKey( spep_2 + 780 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 781 + OFFSET_X, 1, 8.63, 8.63 );
setScaleKey( spep_2 + 782 + OFFSET_X, 1, 7.76, 7.76 );
setScaleKey( spep_2 + 783 + OFFSET_X, 1, 7.76, 7.76 );
setScaleKey( spep_2 + 784 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 785 + OFFSET_X, 1, 6.89, 6.89 );
setScaleKey( spep_2 + 786 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 787 + OFFSET_X, 1, 6.01, 6.01 );
setScaleKey( spep_2 + 788 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 789 + OFFSET_X, 1, 5.14, 5.14 );
setScaleKey( spep_2 + 790 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 791 + OFFSET_X, 1, 4.27, 4.27 );
setScaleKey( spep_2 + 792 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 793 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_2 + 794 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 795 + OFFSET_X, 1, 3.08, 3.08 );
setScaleKey( spep_2 + 796 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 797 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 798 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_2 + 920 + OFFSET_X, 1, 1.9, 1.9 );

setRotateKey( spep_2 + 764 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 765 + OFFSET_X, 1, 59.9 );
setRotateKey( spep_2 + 766 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 767 + OFFSET_X, 1, 59.3 );
setRotateKey( spep_2 + 768 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 769 + OFFSET_X, 1, 58.6 );
setRotateKey( spep_2 + 770 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 771 + OFFSET_X, 1, 58 );
setRotateKey( spep_2 + 772 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 773 + OFFSET_X, 1, 57.3 );
setRotateKey( spep_2 + 774 + OFFSET_X, 1, 56.7 );
setRotateKey( spep_2 + 775 + OFFSET_X, 1, 56.7 );
setRotateKey( spep_2 + 776 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 777 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 778 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 779 + OFFSET_X, 1, 55.4 );
setRotateKey( spep_2 + 780 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 781 + OFFSET_X, 1, 54.7 );
setRotateKey( spep_2 + 782 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 783 + OFFSET_X, 1, 54.1 );
setRotateKey( spep_2 + 784 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 785 + OFFSET_X, 1, 53.4 );
setRotateKey( spep_2 + 786 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 787 + OFFSET_X, 1, 52.8 );
setRotateKey( spep_2 + 788 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 789 + OFFSET_X, 1, 52.1 );
setRotateKey( spep_2 + 790 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 791 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_2 + 792 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 793 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_2 + 794 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 795 + OFFSET_X, 1, 56 );
setRotateKey( spep_2 + 796 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 797 + OFFSET_X, 1, 58.3 );
setRotateKey( spep_2 + 798 + OFFSET_X, 1, 60.6 );
setRotateKey( spep_2 + 920 + OFFSET_X, 1, 60.6 );

-- ** 音 ** --
--トランクス向かっていく
SE014 = playSeVer2( spep_2 + 0, 1117, "",spep_2 + 26, 4, 8, -1);
setStartTimeMs( SE014,  433 );

--パンチ
SE015 = playSeVer2( spep_2 + 12, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE015, 132 );
SE016 = playSeVer2( spep_2 + 18, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 18, SE016, 71 );
SE017 = playSeVer2( spep_2 + 18, 1110, "", 0, 0, 0, -1);

--パンチ2
SE018 = playSeVer2( spep_2 + 38, 1009, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 38, 1110, "", 0, 0, 0, -1);

--パンチ3
SE020 = playSeVer2( spep_2 + 52, 1010, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 52, 1110, "", 0, 0, 0, -1);

--オーラ
SE022 = playSeVer2( spep_2 + 56, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 56, SE022, 50 );
SE023 = playSeVer2( spep_2 + 80, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 80, SE023, 50 );
SE026 = playSeVer2( spep_2 + 104, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 104, SE026, 50 );

--殴り飛ばす
SE024 = playSeVer2( spep_2 + 90, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 90, SE024, 77 );
SE025 = playSeVer2( spep_2 + 90, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE027 = playSeVer2( spep_2 + 126, 1109, "", 0, 0, 0, -1);

--ブロリー急降下
SE028 = playSeVer2( spep_2 + 146, 1116, "",spep_2 + 186, 0, 18, -1);
SE029 = playSeVer2( spep_2 + 148, 1117, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 156, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE030, 60 );
SE031 = playSeVer2( spep_2 + 156, 1121, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 156, SE031, 50 );

--敵ヒット
SE032 = playSeVer2( spep_2 + 222, 1004, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 232, 1123, "", spep_2 + 390, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 232, SE033, 82 );
SE034 = playSeVer2( spep_2 + 234, 1153, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 234, 1180, "", spep_2 + 390, 0, 10, -1);

--地面激突
SE036 = playSeVer2( spep_2 + 278, 1277, "", spep_2 + 390, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 278, SE036, 146 );
SE037 = playSeVer2( spep_2 + 298, 1159, "",spep_2 + 538, 0, 168, 0.6);

--ブロリー着地
SE038 = playSeVer2( spep_2 + 338, 63, "",spep_2 + 378, 0, 16, -1);
SE039 = playSeVer2( spep_2 + 356, 1106, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 356, 1192, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 356, SE040, 148 );
stopSeIfDoubleSpeed( spep_2 + 356, SE040 );
SE041 = playSeVer2( spep_2 + 360, 1107, "", 0, 0, 0, -1);

--ブロリー気弾溜め
SE042 = playSeVer2( spep_2 + 392, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE042,  100 );
SE043 = playSeVer2( spep_2 + 402, 1262, "", 0, 0, 0, -1);
setTimeStretch( SE043, 2, 30, 4 );
SE044 = playSeVer2( spep_2 + 402, 1396, "",spep_2 + 738, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 402, SE044, 81 );
SE045 = playSeVer2( spep_2 + 402, 1394, "",spep_2 + 738, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 402, SE045, 84 );
SE046 = playSeVer2( spep_2 + 402, 1281, "",spep_2 + 740, 0, 62, -1);
setPitch( spep_2 + 402, SE046, -700 );
setTimeStretch( SE046, 0.53, 30, 4 );

--腕上げる
SE047 = playSeVer2( spep_2 + 432, 1003, "", 0, 0, 0, -1);

--トランクス着地
SE048 = playSeVer2( spep_2 + 478, 63, "",spep_2 + 524, 0, 16, -1);
SE049 = playSeVer2( spep_2 + 498, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 498, SE049, 158 );
SE050 = playSeVer2( spep_2 + 502, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 502, SE050, 188 );

--腕ひく
SE051 = playSeVer2( spep_2 + 522, 1003, "", 0, 0, 0, -1);

--二人上前に出す
SE052 = playSeVer2( spep_2 + 564, 1004, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 566, 1003, "", 0, 0, 0, -1);

--二人気弾溜め
SE054 = playSeVer2( spep_2 + 580, 1334, "",spep_2 + 694, 0, 24, -1);
SE055 = playSeVer2( spep_2 + 592, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 592, SE055, 76 );

--気弾発射
SE057 = playSeVer2( spep_2 + 666, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 666, SE057, 63 );
SE058 = playSeVer2( spep_2 + 674, 1027, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_2 + 674, 1146, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 674, SE059, 84 );
SE060 = playSeVer2( spep_2 + 674, 1109, "", 0, 0, 0, -1);

--気弾飛んでいく
SE061 = playSeVer2( spep_2 + 734, 1177, "",spep_2 + 790, 0, 16, -1);
SE062 = playSeVer2( spep_2 + 736, 1159, "", 0, 0, 0, -1);

--爆発
SE063 = playSeVer2( spep_2 + 780, 1067, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 810 );
endPhase( spep_2 +  MAX_FRAME_2 - 2);  -- 920

end
