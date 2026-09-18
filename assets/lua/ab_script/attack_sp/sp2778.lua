-- 1030140: UR_黒衣の戦士(超サイヤ人・暗黒ドラゴンボール強化)_必殺技：フィニッシュインパクト
-- sp_effect_b1_00299
-- sp2778

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01 = 163299 --カードカットイン前 ef_001
SP_02 = 163301 --カードカットイン前：奥 ef_001b
SP_03 = 163300 --格闘→フィニッシュ ef_002
SP_04 = 163302 --格闘→フィニッシュ：奥 ef_002b

-- 敵側
SP_01r = 163303 --カードカットイン前：反転 ef_001r
SP_02r = 163305 --カードカットイン前：反転：奥 ef_001rb
SP_03r = 163304 --格闘→フィニッシュ：反転 ef_002r
SP_04r = 163306 --格闘→フィニュシュ：反転：奥 ef_002br

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

ENABLE_AUTO_TIME_STRETCH(0.78);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- カードカットイン前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 184;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0);  --カードカットイン前 ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); --カードカットイン前：奥 ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 92;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 60, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 60, 515.5 , 0 );
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

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 36 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, 154.9, 10.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 154.9, 10.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 172.1, 3.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 172.1, 3.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 151.7, 12.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 151.7, 12.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 146.2, 26.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 146.2, 26.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 219.4, -33.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 219.4, -33.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 264.4, -132.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 264.4, -132.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 304.6, -200.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 304.6, -200.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 381, -278.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 381, -278.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 419.8, -368 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 419.8, -368 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 475.5, -447.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 475.5, -447.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 530.8, -527.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 530.8, -527.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 585.7, -606 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 37 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 39 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 41 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 45 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 46 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 47 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 49 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 21 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--気を解放
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 210, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 10;  -- エンドフェイズのフレーム数を置き換える
        
    playSe( SP_dodge - 10, 1042);
    stopSe( SP_dodge - 10, SE001, 0);
    stopSe( SP_dodge - 10, SE002, 0);
    
    pauseAll( SP_dodge, 67);
        
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    setBlendColor( SP_dodge+0, 1, 3, 0.0, 0.0, 0.0, 0.0 );

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);
    
    do return end
    else end
    
    -----------------------------
    --回避しなかった場合
    -----------------------------
    
-- ** 音 ** --
--気を解放
SE003 = playSeVer2( spep_0 + 6, 1258, "",spep_0 + 198, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 53 );
SE005 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 12, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE006, 77 );

--オーラ
SE004 = playSeVer2( spep_0 + 8, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 86, 1227, "",spep_0 + 200, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE009, 63 );
SE010 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE010, 63 );
SE011 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 63 );
SE012 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE012, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 184

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

--向かってくる
SE014 = playSeVer2( spep_1 + 80, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 80, 1117, "",spep_1 + 152, 0, 16, -1);
SE016 = playSeVer2( spep_1 + 80, 1121, "",spep_1 + 148, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 50 );

------------------------------------------------------
-- 格闘→フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 522;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  -- 格闘→フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  -- 格闘→フィニッシュ：奥 ef_002b
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 36 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 36 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 36 + OFFSET_X, 1, -40.7, 142.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -40.7, 142.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -11.9, 116.5 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -11.9, 116.5 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 16.9, 90.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 16.9, 90.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 45.6, 64.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 45.6, 64.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 74.4, 37.9 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 74.4, 37.9 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 131.5, -12.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 131.5, -12.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 105.6, 10.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 105.6, 10.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 153.1, -18.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 153.1, -18.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 127.5, 14.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 127.5, 14.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 123.1, -2.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 123.1, -2.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 146.4, -6.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 146.4, -6.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 135.7, 14.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 135.7, 14.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 125.9, -9.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 125.9, -9.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 128.3, -11.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 128.3, -11.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 130.6, -13 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 130.6, -13 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 132.9, -14.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 132.9, -14.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 135.3, -16.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 135.3, -16.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 137.6, -18.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 137.6, -18.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 140, -19.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 140, -19.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 142.3, -21.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 142.3, -21.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 142.4, -21.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 142.4, -21.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 278.6, -132.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 278.6, -132.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 421.2, -232.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 421.2, -232.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 544.9, -356.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 544.9, -356.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 693.7, -450.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 693.7, -450.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 823.6, -577.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 823.6, -577.2 , 0 );

setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_2 + 36 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 41.1 );

--敵の動き2
setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 102 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, -691.9, -641.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -691.9, -641.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -643.5, -595.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -643.5, -595.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -595.6, -548.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -595.6, -548.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -548, -501.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -548, -501.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -500.8, -455 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -500.8, -455 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -453.5, -408 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -453.5, -408 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -406.2, -360.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -406.2, -360.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -358.7, -312.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -358.7, -312.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -310.7, -263.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -310.7, -263.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -262.3, -214.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -262.3, -214.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -213.1, -163.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -213.1, -163.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -163, -112.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -163, -112.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -158.7, -100.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -158.7, -100.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -154.5, -88 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -154.5, -88 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -150.5, -75.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -150.5, -75.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -146.5, -62.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -146.5, -62.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -142.6, -49.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -142.6, -49.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -138.6, -35.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -138.6, -35.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -127.4, -23.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -127.4, -23.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -116.1, -11.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -116.1, -11.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -104.8, 1.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -104.8, 1.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -93.3, 13.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -93.3, 13.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -81.8, 26 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -81.8, 26 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 13.4, -78.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 13.4, -78.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 13.7, -107.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 13.7, -107.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 14, -109.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 14, -109.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 14.4, -111.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 14.4, -111.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 27, -114.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 27, -114.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 3.4, -119.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 3.4, -119.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 34, -116.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 34, -116.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -19.7, -129.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -19.7, -129.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 75.7, -113.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 75.7, -113.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 16.3, -125.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 16.3, -125.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 49.5, -105.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 49.5, -105.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 16.9, -129.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 16.9, -129.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 32.1, -122.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 32.1, -122.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 12.6, -137.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 12.6, -137.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 20.6, -164.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 20.6, -164.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 15.1, -189.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 15.1, -189.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 10.3, -211.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 10.3, -211.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 6.3, -230.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 6.3, -230.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 3.2, -231.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 3.2, -231.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 1.1, -229.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 1.1, -229.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -0.2, -223.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -0.2, -223.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -0.7, -214.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -0.7, -214.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -0.5, -202.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -0.5, -202.4 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -29 );

--敵の動き3
setDisp( spep_2 + 366 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 366 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 366 + OFFSET_X, 1, -37.8, -52.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -37.8, -52.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 18.3, -61.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 18.3, -61.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 107.5, -153 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 107.5, -153 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -26.4, 21.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -26.4, 21.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 97.5, -114.3 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 97.5, -114.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -19.2, -134.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -19.2, -134.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 108.8, -20.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 108.8, -20.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 18.4, -100.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 18.4, -100.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 83.2, -66 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 83.2, -66 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -17.8, -65.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -17.8, -65.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 58, -96.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 58, -96.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 38.2, -90.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 38.2, -90.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 49.1, -83.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 49.1, -83.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 46, -76.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 46, -76.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 42.9, -68.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 42.9, -68.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 39.8, -61.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 39.8, -61.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 20.8, -53.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 20.8, -53.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 3.3, -23.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 3.3, -23.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 80.3, -100 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 80.3, -100 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -30.3, -100.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -30.3, -100.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 104.1, -14.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 104.1, -14.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -5, -79 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -5, -79 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 60.2, -11.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 60.2, -11.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 23.1, -52.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 23.1, -52.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 20.7, -53 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 20.7, -53 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 23.1, -52.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 23.1, -52.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 18.6, -44.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 18.6, -44.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 23.1, -51.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 23.1, -51.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 18.6, -44.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 18.6, -44.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 23, -51.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 23, -51.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 18.5, -44.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 18.5, -44.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 23, -51.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 23, -51.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 23, -51.3 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 23, -51.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 18.5, -43.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 18.5, -43.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 20.5, -51.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 20.5, -51.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 22.9, -51 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 22.9, -51 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 20.5, -51.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 20.5, -51.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 22.9, -50.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 22.9, -50.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 20.5, -51.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 20.5, -51.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 22.9, -50.6 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 22.9, -50.6 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 20.4, -51.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 20.4, -51.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 22.9, -50.4 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 22.9, -50.4 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 20.4, -51.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 20.4, -51.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 22.8, -50.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 22.8, -50.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 20.4, -50.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 20.4, -50.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 22.8, -50 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 22.8, -50 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 20.3, -50.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 20.3, -50.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 22.8, -49.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 22.8, -49.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 20.3, -50.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 20.3, -50.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 22.7, -49.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 22.7, -49.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 20.3, -50.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 20.3, -50.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 22.7, -49.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 22.7, -49.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 20.3, -50.1 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 20.3, -50.1 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 20.2, -50 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 20.2, -50 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 20.2, -49.9 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 20.2, -49.9 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 20.2, -49.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 20.2, -49.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 20.2, -49.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 20.2, -49.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 20.2, -49.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 20.2, -49.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 20.2, -49.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 20.2, -49.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 20.2, -49.4 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 20.2, -49.4 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 20.1, -49.2 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 20.1, -49.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 20.1, -49.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 20.1, -49.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 20.1, -49 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 20.1, -49 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 20.1, -48.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 20.1, -48.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 20.1, -48.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 20.1, -48.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 20.1, -48.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 20.1, -48.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 20.1, -48.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 20.1, -48.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 20, -48.5 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 20, -48.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 20, -48.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 20, -48.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 20, -48.3 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 20, -48.3 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 20, -48.2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 20, -48.2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 20, -48.1 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 20, -48.1 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 20, -48 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 20, -48 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 20, -47.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 20, -47.9 , 0 );

setScaleKey( spep_2 + 366 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 366 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 42.9 );

-- ** 音 ** --
--キック
SE017 = playSeVer2( spep_2 + 36, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE017, 68 );
SE018 = playSeVer2( spep_2 + 36, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE019 = playSeVer2( spep_2 + 70, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_2 + 100, 1109, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_2 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE021, 63 );
SE022 = playSeVer2( spep_2 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE022, 63 );

--叩き落とす
SE023 = playSeVer2( spep_2 + 124, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 128, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE025 = playSeVer2( spep_2 + 148, 1121, "",spep_2 + 206, 0, 22, -1);

--地面激突
SE026 = playSeVer2( spep_2 + 180, 1159, "", 0, 0, 0, -1);

--旋回する
SE027 = playSeVer2( spep_2 + 218, 1117, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 218, 1182, "", 0, 0, 0, -1);

--飛び込んでいく
SE029 = playSeVer2( spep_2 + 266, 44, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 266, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE030, 150 );

--向かってくる
SE031 = playSeVer2( spep_2 + 298, 9, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 298, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 3298, SE032, 56 );

--地面パンチ
SE033 = playSeVer2( spep_2 + 348, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 360, 1187, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 360, 1153, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_2 + 384, 1179, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 384, 1068, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 384, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE038, 45 );

-- ** おわり ** --
dealDamage( spep_2 + 406 );
endPhase( spep_2 + MAX_FRAME_2);  -- 522F

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;


------------------------------------------------------
-- カードカットイン前 ef_001
------------------------------------------------------
MAX_FRAME_0 = 184;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0);  --カードカットイン前 ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);
base_0b = entryEffect( spep_0 + 0, SP_02r, 0x80, -1, 0, 0, 0); --カードカットイン前：奥 ef_001rb
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
--entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 92;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 60, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 60, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 60, 515.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, 0.7);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 30 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 52 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 30 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 36 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 30 + OFFSET_X, 1, 154.9, 10.9 , 0 );
setMoveKey( spep_0 + 31 + OFFSET_X, 1, 154.9, 10.9 , 0 );
setMoveKey( spep_0 + 32 + OFFSET_X, 1, 172.1, 3.1 , 0 );
setMoveKey( spep_0 + 33 + OFFSET_X, 1, 172.1, 3.1 , 0 );
setMoveKey( spep_0 + 34 + OFFSET_X, 1, 151.7, 12.5 , 0 );
setMoveKey( spep_0 + 35 + OFFSET_X, 1, 151.7, 12.5 , 0 );
setMoveKey( spep_0 + 36 + OFFSET_X, 1, 146.2, 26.7 , 0 );
setMoveKey( spep_0 + 37 + OFFSET_X, 1, 146.2, 26.7 , 0 );
setMoveKey( spep_0 + 38 + OFFSET_X, 1, 219.4, -33.4 , 0 );
setMoveKey( spep_0 + 39 + OFFSET_X, 1, 219.4, -33.4 , 0 );
setMoveKey( spep_0 + 40 + OFFSET_X, 1, 264.4, -132.8 , 0 );
setMoveKey( spep_0 + 41 + OFFSET_X, 1, 264.4, -132.8 , 0 );
setMoveKey( spep_0 + 42 + OFFSET_X, 1, 304.6, -200.7 , 0 );
setMoveKey( spep_0 + 43 + OFFSET_X, 1, 304.6, -200.7 , 0 );
setMoveKey( spep_0 + 44 + OFFSET_X, 1, 381, -278.1 , 0 );
setMoveKey( spep_0 + 45 + OFFSET_X, 1, 381, -278.1 , 0 );
setMoveKey( spep_0 + 46 + OFFSET_X, 1, 419.8, -368 , 0 );
setMoveKey( spep_0 + 47 + OFFSET_X, 1, 419.8, -368 , 0 );
setMoveKey( spep_0 + 48 + OFFSET_X, 1, 475.5, -447.9 , 0 );
setMoveKey( spep_0 + 49 + OFFSET_X, 1, 475.5, -447.9 , 0 );
setMoveKey( spep_0 + 50 + OFFSET_X, 1, 530.8, -527.3 , 0 );
setMoveKey( spep_0 + 51 + OFFSET_X, 1, 530.8, -527.3 , 0 );
setMoveKey( spep_0 + 52 + OFFSET_X, 1, 585.7, -606 , 0 );

setScaleKey( spep_0 + 30 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 35 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_0 + 36 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 37 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 38 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 39 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 40 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 41 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 42 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 43 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 44 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 45 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 46 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 47 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 48 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 49 + OFFSET_X, 1, 1.57, 1.57 );
setScaleKey( spep_0 + 50 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 51 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 52 + OFFSET_X, 1, 1.78, 1.78 );

setRotateKey( spep_0 + 30 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 37 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 38 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 39 + OFFSET_X, 1, 2.6 );
setRotateKey( spep_0 + 40 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 41 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 42 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 43 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 44 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 45 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 46 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 47 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 48 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 49 + OFFSET_X, 1, 15.7 );
setRotateKey( spep_0 + 50 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 51 + OFFSET_X, 1, 18.4 );
setRotateKey( spep_0 + 52 + OFFSET_X, 1, 21 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--気を解放
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 210, 0, 18, 0.6);
setSeVolumeByWorkId( spep_0 + 0, SE002, 40 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 10;  -- エンドフェイズのフレーム数を置き換える
        
    playSe( SP_dodge - 10, 1042);
    stopSe( SP_dodge - 10, SE001, 0);
    stopSe( SP_dodge - 10, SE002, 0);
    
    pauseAll( SP_dodge, 67);
        
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350);  -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);  -- カットイン差し替え
    
    dodge = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350);  -- 回避の文字表示
    setEffScaleKey( SP_dodge-1, dodge, -1.0, 1.0);

    setBlendColor( SP_dodge+0, 1, 3, 0.0, 0.0, 0.0, 0.0 );

    entryFade( SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255);  -- white fade

    endPhase( SP_dodge+10);
    
    do return end
    else end
    
-----------------------------
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--気を解放
SE003 = playSeVer2( spep_0 + 6, 1258, "",spep_0 + 198, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 6, SE003, 53 );
SE005 = playSeVer2( spep_0 + 12, 1035, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 12, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 12, SE006, 77 );

--オーラ
SE004 = playSeVer2( spep_0 + 8, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE004, 63 );

--オーラ
SE008 = playSeVer2( spep_0 + 86, 1227, "",spep_0 + 200, 0, 18, -1);
SE009 = playSeVer2( spep_0 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE009, 63 );
SE010 = playSeVer2( spep_0 + 110, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE010, 63 );
SE011 = playSeVer2( spep_0 + 134, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 134, SE011, 63 );
SE012 = playSeVer2( spep_0 + 158, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 158, SE012, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0;  -- 184

--------------------------------------
-- カードカットイン(94F)
--------------------------------------
spep_2 = showCardCutin(spep_1, 1);

--向かってくる
SE014 = playSeVer2( spep_1 + 80, 9, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_1 + 80, 1117, "",spep_1 + 152, 0, 16, -1);
SE016 = playSeVer2( spep_1 + 80, 1121, "",spep_1 + 148, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 80, SE016, 50 );

------------------------------------------------------
-- 格闘→フィニッシュ ef_002
------------------------------------------------------
MAX_FRAME_2 = 522;

-- ** エフェクト等 ** --
finish_0f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  -- 格闘→フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, finish_0f, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0f, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0f, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0f, 0 );
setEffAlphaKey( spep_2 + 0, finish_0f, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0f, 255 );
finish_0b = entryEffect( spep_2 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  -- 格闘→フィニッシュ：奥 ef_002br
setEffMoveKey( spep_2 + 0, finish_0b, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_0b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_0b, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_0b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_0b, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_0b, 0 );
setEffAlphaKey( spep_2 + 0, finish_0b, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_0b, 255 );

-- ** 黒背景 ** --
--entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_2 + 36 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 96 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 36 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 36 + OFFSET_X, 1, -40.7, 142.6 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_X, 1, -40.7, 142.6 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_X, 1, -11.9, 116.5 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_X, 1, -11.9, 116.5 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_X, 1, 16.9, 90.3 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_X, 1, 16.9, 90.3 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_X, 1, 45.6, 64.1 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_X, 1, 45.6, 64.1 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_X, 1, 74.4, 37.9 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_X, 1, 74.4, 37.9 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_X, 1, 131.5, -12.2 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_X, 1, 131.5, -12.2 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_X, 1, 105.6, 10.1 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_X, 1, 105.6, 10.1 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_X, 1, 153.1, -18.3 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_X, 1, 153.1, -18.3 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_X, 1, 127.5, 14.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_X, 1, 127.5, 14.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_X, 1, 123.1, -2.3 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_X, 1, 123.1, -2.3 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_X, 1, 146.4, -6.2 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_X, 1, 146.4, -6.2 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_X, 1, 135.7, 14.7 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_X, 1, 135.7, 14.7 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_X, 1, 125.9, -9.6 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_X, 1, 125.9, -9.6 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_X, 1, 128.3, -11.3 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_X, 1, 128.3, -11.3 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_X, 1, 130.6, -13 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_X, 1, 130.6, -13 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_X, 1, 132.9, -14.7 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_X, 1, 132.9, -14.7 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_X, 1, 135.3, -16.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_X, 1, 135.3, -16.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_X, 1, 137.6, -18.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 137.6, -18.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, 140, -19.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, 140, -19.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, 142.3, -21.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, 142.3, -21.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 142.4, -21.6 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 142.4, -21.6 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 278.6, -132.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 278.6, -132.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 421.2, -232.9 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 421.2, -232.9 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 544.9, -356.6 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 544.9, -356.6 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 693.7, -450.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 693.7, -450.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 823.6, -577.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 823.6, -577.2 , 0 );

setScaleKey( spep_2 + 36 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 43 + OFFSET_X, 1, 2.57, 2.56 );
setScaleKey( spep_2 + 44 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 45 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 46 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 47 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 48 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_2 + 96 + OFFSET_X, 1, 2.56, 2.56 );

setRotateKey( spep_2 + 36 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, 20.8 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, 24.9 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 33 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 37 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 41.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 41.1 );

--敵の動き2
setDisp( spep_2 + 102 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 194 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 102 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 148 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 102 + OFFSET_X, 1, -691.9, -641.9 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, -691.9, -641.9 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, -643.5, -595.1 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, -643.5, -595.1 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, -595.6, -548.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, -595.6, -548.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, -548, -501.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, -548, -501.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, -500.8, -455 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, -500.8, -455 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, -453.5, -408 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, -453.5, -408 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, -406.2, -360.6 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, -406.2, -360.6 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, -358.7, -312.6 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, -358.7, -312.6 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, -310.7, -263.9 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, -310.7, -263.9 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, -262.3, -214.4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, -262.3, -214.4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, -213.1, -163.8 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, -213.1, -163.8 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, -163, -112.2 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, -163, -112.2 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, -158.7, -100.2 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, -158.7, -100.2 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, -154.5, -88 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, -154.5, -88 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, -150.5, -75.4 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, -150.5, -75.4 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, -146.5, -62.5 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, -146.5, -62.5 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, -142.6, -49.2 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, -142.6, -49.2 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, -138.6, -35.5 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, -138.6, -35.5 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, -127.4, -23.4 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, -127.4, -23.4 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, -116.1, -11.2 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, -116.1, -11.2 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, -104.8, 1.1 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, -104.8, 1.1 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, -93.3, 13.5 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, -93.3, 13.5 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, -81.8, 26 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, -81.8, 26 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 13.4, -78.9 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 13.4, -78.9 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 13.7, -107.5 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 13.7, -107.5 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 14, -109.7 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 14, -109.7 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 14.4, -111.9 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 14.4, -111.9 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 27, -114.9 , 0 );
setMoveKey( spep_2 + 157 + OFFSET_X, 1, 27, -114.9 , 0 );
setMoveKey( spep_2 + 158 + OFFSET_X, 1, 3.4, -119.1 , 0 );
setMoveKey( spep_2 + 159 + OFFSET_X, 1, 3.4, -119.1 , 0 );
setMoveKey( spep_2 + 160 + OFFSET_X, 1, 34, -116.2 , 0 );
setMoveKey( spep_2 + 161 + OFFSET_X, 1, 34, -116.2 , 0 );
setMoveKey( spep_2 + 162 + OFFSET_X, 1, -19.7, -129.7 , 0 );
setMoveKey( spep_2 + 163 + OFFSET_X, 1, -19.7, -129.7 , 0 );
setMoveKey( spep_2 + 164 + OFFSET_X, 1, 75.7, -113.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 75.7, -113.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 16.3, -125.1 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 16.3, -125.1 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 49.5, -105.5 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 49.5, -105.5 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 16.9, -129.5 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 16.9, -129.5 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 32.1, -122.8 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 32.1, -122.8 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 12.6, -137.3 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 12.6, -137.3 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 20.6, -164.8 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 20.6, -164.8 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 15.1, -189.6 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 15.1, -189.6 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 10.3, -211.5 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 10.3, -211.5 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 6.3, -230.6 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 6.3, -230.6 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 3.2, -231.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 3.2, -231.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 1.1, -229.1 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 1.1, -229.1 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, -0.2, -223.2 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, -0.2, -223.2 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, -0.7, -214.2 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, -0.7, -214.2 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, -0.5, -202.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, -0.5, -202.4 , 0 );

setScaleKey( spep_2 + 102 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 103 + OFFSET_X, 1, 3.07, 3.07 );
setScaleKey( spep_2 + 104 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 105 + OFFSET_X, 1, 2.99, 2.99 );
setScaleKey( spep_2 + 106 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 107 + OFFSET_X, 1, 2.9, 2.9 );
setScaleKey( spep_2 + 108 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 111 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_2 + 112 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 113 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_2 + 114 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 115 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_2 + 116 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 117 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 118 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 119 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 120 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 121 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_2 + 122 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 123 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_2 + 124 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 125 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_2 + 126 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 2.22, 2.22 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 129 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 130 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 131 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_2 + 132 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 133 + OFFSET_X, 1, 2.32, 2.32 );
setScaleKey( spep_2 + 134 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 135 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_2 + 136 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 137 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_2 + 138 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 139 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_2 + 140 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 143 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_2 + 144 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 145 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_2 + 146 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 147 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_2 + 148 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 2.45, 2.45 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 151 + OFFSET_X, 1, 2.46, 2.46 );
setScaleKey( spep_2 + 152 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 153 + OFFSET_X, 1, 2.47, 2.47 );
setScaleKey( spep_2 + 154 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 155 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_2 + 156 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 159 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 160 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 161 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_2 + 162 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 163 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 164 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 167 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 168 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 169 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 170 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 173 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_2 + 174 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 175 + OFFSET_X, 1, 1.54, 1.54 );
setScaleKey( spep_2 + 176 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 177 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 178 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 179 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_2 + 180 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 181 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_2 + 182 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 183 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_2 + 184 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 185 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_2 + 186 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 187 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 188 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 189 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 190 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 191 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 192 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 194 + OFFSET_X, 1, 0.17, 0.17 );

setRotateKey( spep_2 + 102 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, 10 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -11 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -18.1 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -21 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -23.4 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -25.4 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -27 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -28.1 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -28.8 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -29 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -29 );

--敵の動き3
setDisp( spep_2 + 366 + OFFSET_X, 1, 1 );
--setDisp( spep_2 + 524 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 366 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 368 + OFFSET_X, 1, 108 );

setMoveKey( spep_2 + 366 + OFFSET_X, 1, -37.8, -52.4 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -37.8, -52.4 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 18.3, -61.9 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 18.3, -61.9 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 107.5, -153 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 107.5, -153 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, -26.4, 21.5 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, -26.4, 21.5 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 97.5, -114.3 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 97.5, -114.3 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, -19.2, -134.8 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, -19.2, -134.8 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 108.8, -20.1 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 108.8, -20.1 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 18.4, -100.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 18.4, -100.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 83.2, -66 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 83.2, -66 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, -17.8, -65.6 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, -17.8, -65.6 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 58, -96.8 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 58, -96.8 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 38.2, -90.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 38.2, -90.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 35.7, -91.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 49.1, -83.8 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 49.1, -83.8 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 46, -76.2 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 46, -76.2 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 42.9, -68.7 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 42.9, -68.7 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 39.8, -61.2 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 39.8, -61.2 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 20.8, -53.8 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 20.8, -53.8 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 3.3, -23.9 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 3.3, -23.9 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 80.3, -100 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 80.3, -100 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -30.3, -100.9 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -30.3, -100.9 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, 104.1, -14.7 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, 104.1, -14.7 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -5, -79 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -5, -79 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, 60.2, -11.3 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, 60.2, -11.3 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, 23.1, -52.4 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, 23.1, -52.4 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, 20.7, -53 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, 20.7, -53 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, 23.1, -52.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, 23.1, -52.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, 18.6, -44.5 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, 18.6, -44.5 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, 23.1, -51.9 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, 23.1, -51.9 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, 18.6, -44.3 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, 18.6, -44.3 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, 23, -51.7 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, 23, -51.7 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, 18.5, -44.1 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, 18.5, -44.1 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, 23, -51.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, 23, -51.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, 18.5, -43.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, 23, -51.3 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, 23, -51.3 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, 18.5, -43.7 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, 18.5, -43.7 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, 20.5, -51.9 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, 20.5, -51.9 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, 22.9, -51 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, 22.9, -51 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, 20.5, -51.7 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, 20.5, -51.7 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, 22.9, -50.8 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, 22.9, -50.8 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, 20.5, -51.5 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, 20.5, -51.5 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, 22.9, -50.6 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, 22.9, -50.6 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, 20.4, -51.3 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, 20.4, -51.3 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, 22.9, -50.4 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, 22.9, -50.4 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, 20.4, -51.1 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, 20.4, -51.1 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, 22.8, -50.2 , 0 );
setMoveKey( spep_2 + 463 + OFFSET_X, 1, 22.8, -50.2 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, 20.4, -50.9 , 0 );
setMoveKey( spep_2 + 465 + OFFSET_X, 1, 20.4, -50.9 , 0 );
setMoveKey( spep_2 + 466 + OFFSET_X, 1, 22.8, -50 , 0 );
setMoveKey( spep_2 + 467 + OFFSET_X, 1, 22.8, -50 , 0 );
setMoveKey( spep_2 + 468 + OFFSET_X, 1, 20.3, -50.7 , 0 );
setMoveKey( spep_2 + 469 + OFFSET_X, 1, 20.3, -50.7 , 0 );
setMoveKey( spep_2 + 470 + OFFSET_X, 1, 22.8, -49.8 , 0 );
setMoveKey( spep_2 + 471 + OFFSET_X, 1, 22.8, -49.8 , 0 );
setMoveKey( spep_2 + 472 + OFFSET_X, 1, 20.3, -50.5 , 0 );
setMoveKey( spep_2 + 473 + OFFSET_X, 1, 20.3, -50.5 , 0 );
setMoveKey( spep_2 + 474 + OFFSET_X, 1, 22.7, -49.6 , 0 );
setMoveKey( spep_2 + 475 + OFFSET_X, 1, 22.7, -49.6 , 0 );
setMoveKey( spep_2 + 476 + OFFSET_X, 1, 20.3, -50.3 , 0 );
setMoveKey( spep_2 + 477 + OFFSET_X, 1, 20.3, -50.3 , 0 );
setMoveKey( spep_2 + 478 + OFFSET_X, 1, 22.7, -49.4 , 0 );
setMoveKey( spep_2 + 479 + OFFSET_X, 1, 22.7, -49.4 , 0 );
setMoveKey( spep_2 + 480 + OFFSET_X, 1, 20.3, -50.1 , 0 );
setMoveKey( spep_2 + 481 + OFFSET_X, 1, 20.3, -50.1 , 0 );
setMoveKey( spep_2 + 482 + OFFSET_X, 1, 20.2, -50 , 0 );
setMoveKey( spep_2 + 483 + OFFSET_X, 1, 20.2, -50 , 0 );
setMoveKey( spep_2 + 484 + OFFSET_X, 1, 20.2, -49.9 , 0 );
setMoveKey( spep_2 + 485 + OFFSET_X, 1, 20.2, -49.9 , 0 );
setMoveKey( spep_2 + 486 + OFFSET_X, 1, 20.2, -49.8 , 0 );
setMoveKey( spep_2 + 487 + OFFSET_X, 1, 20.2, -49.8 , 0 );
setMoveKey( spep_2 + 488 + OFFSET_X, 1, 20.2, -49.7 , 0 );
setMoveKey( spep_2 + 489 + OFFSET_X, 1, 20.2, -49.7 , 0 );
setMoveKey( spep_2 + 490 + OFFSET_X, 1, 20.2, -49.6 , 0 );
setMoveKey( spep_2 + 491 + OFFSET_X, 1, 20.2, -49.6 , 0 );
setMoveKey( spep_2 + 492 + OFFSET_X, 1, 20.2, -49.5 , 0 );
setMoveKey( spep_2 + 493 + OFFSET_X, 1, 20.2, -49.5 , 0 );
setMoveKey( spep_2 + 494 + OFFSET_X, 1, 20.2, -49.4 , 0 );
setMoveKey( spep_2 + 495 + OFFSET_X, 1, 20.2, -49.4 , 0 );
setMoveKey( spep_2 + 496 + OFFSET_X, 1, 20.1, -49.2 , 0 );
setMoveKey( spep_2 + 497 + OFFSET_X, 1, 20.1, -49.2 , 0 );
setMoveKey( spep_2 + 498 + OFFSET_X, 1, 20.1, -49.1 , 0 );
setMoveKey( spep_2 + 499 + OFFSET_X, 1, 20.1, -49.1 , 0 );
setMoveKey( spep_2 + 500 + OFFSET_X, 1, 20.1, -49 , 0 );
setMoveKey( spep_2 + 501 + OFFSET_X, 1, 20.1, -49 , 0 );
setMoveKey( spep_2 + 502 + OFFSET_X, 1, 20.1, -48.9 , 0 );
setMoveKey( spep_2 + 503 + OFFSET_X, 1, 20.1, -48.9 , 0 );
setMoveKey( spep_2 + 504 + OFFSET_X, 1, 20.1, -48.8 , 0 );
setMoveKey( spep_2 + 505 + OFFSET_X, 1, 20.1, -48.8 , 0 );
setMoveKey( spep_2 + 506 + OFFSET_X, 1, 20.1, -48.7 , 0 );
setMoveKey( spep_2 + 507 + OFFSET_X, 1, 20.1, -48.7 , 0 );
setMoveKey( spep_2 + 508 + OFFSET_X, 1, 20.1, -48.6 , 0 );
setMoveKey( spep_2 + 509 + OFFSET_X, 1, 20.1, -48.6 , 0 );
setMoveKey( spep_2 + 510 + OFFSET_X, 1, 20, -48.5 , 0 );
setMoveKey( spep_2 + 511 + OFFSET_X, 1, 20, -48.5 , 0 );
setMoveKey( spep_2 + 512 + OFFSET_X, 1, 20, -48.4 , 0 );
setMoveKey( spep_2 + 513 + OFFSET_X, 1, 20, -48.4 , 0 );
setMoveKey( spep_2 + 514 + OFFSET_X, 1, 20, -48.3 , 0 );
setMoveKey( spep_2 + 515 + OFFSET_X, 1, 20, -48.3 , 0 );
setMoveKey( spep_2 + 516 + OFFSET_X, 1, 20, -48.2 , 0 );
setMoveKey( spep_2 + 517 + OFFSET_X, 1, 20, -48.2 , 0 );
setMoveKey( spep_2 + 518 + OFFSET_X, 1, 20, -48.1 , 0 );
setMoveKey( spep_2 + 519 + OFFSET_X, 1, 20, -48.1 , 0 );
setMoveKey( spep_2 + 520 + OFFSET_X, 1, 20, -48 , 0 );
setMoveKey( spep_2 + 521 + OFFSET_X, 1, 20, -48 , 0 );
setMoveKey( spep_2 + 522 + OFFSET_X, 1, 20, -47.9 , 0 );
setMoveKey( spep_2 + 524 + OFFSET_X, 1, 20, -47.9 , 0 );

setScaleKey( spep_2 + 366 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 5.59, 5.59 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 6.31, 6.31 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.63, 2.63 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 0.96, 0.96 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 437 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_2 + 438 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 511 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_2 + 512 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_2 + 524 + OFFSET_X, 1, 0.38, 0.38 );

setRotateKey( spep_2 + 366 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 367 + OFFSET_X, 1, -20 );
setRotateKey( spep_2 + 368 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 397 + OFFSET_X, 1, 43 );
setRotateKey( spep_2 + 398 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_2 + 524 + OFFSET_X, 1, 42.9 );

-- ** 音 ** --
--キック
SE017 = playSeVer2( spep_2 + 36, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE017, 68 );
SE018 = playSeVer2( spep_2 + 36, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE019 = playSeVer2( spep_2 + 70, 1027, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_2 + 100, 1109, "", 0, 0, 0, -1);

--オーラ
SE021 = playSeVer2( spep_2 + 100, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE021, 63 );
SE022 = playSeVer2( spep_2 + 124, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 124, SE022, 63 );

--叩き落とす
SE023 = playSeVer2( spep_2 + 124, 1003, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 128, 1123, "", 0, 0, 0, -1);

--敵落ちていく
SE025 = playSeVer2( spep_2 + 148, 1121, "",spep_2 + 206, 0, 22, -1);

--地面激突
SE026 = playSeVer2( spep_2 + 180, 1159, "", 0, 0, 0, -1);

--旋回する
SE027 = playSeVer2( spep_2 + 218, 1117, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 218, 1182, "", 0, 0, 0, -1);

--飛び込んでいく
SE029 = playSeVer2( spep_2 + 266, 44, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 266, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE030, 150 );

--向かってくる
SE031 = playSeVer2( spep_2 + 298, 9, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 298, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 3298, SE032, 56 );

--地面パンチ
SE033 = playSeVer2( spep_2 + 348, 1004, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_2 + 360, 1187, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 360, 1153, "", 0, 0, 0, -1);

--爆発
SE036 = playSeVer2( spep_2 + 384, 1179, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 384, 1068, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 384, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 384, SE038, 45 );

-- ** おわり ** --
dealDamage( spep_2 + 406 );
endPhase( spep_2 + MAX_FRAME_2);  -- 522F

end
