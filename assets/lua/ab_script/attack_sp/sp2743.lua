-- 1029770: UR_ピッコロ/超サイヤ人べジータ_必殺技：超魔撃閃
-- sp_effect_b1_00292
-- sp2743

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_001 = 163098;  -- ピッコロと敵が対峙している ef_001
SP_002 = 163099;  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002
SP_002b = 163100;  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002b

-- 敵側
SP_002r = 163101;  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
--changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
--setDisp( 0, 1, 0 );

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

--[[
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
]]

ENABLE_AUTO_TIME_STRETCH(0.82);

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ピッコロと敵が対峙している ef_001
------------------------------------------------------
MAX_FRAME_0 = 138;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- ピッコロと敵が対峙している ef_001
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
spep_x = spep_0 + 54;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -85, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -85, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -85, 515.5 , 0 );
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
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 0 , 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 479.9, -171.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 479.9, -171.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 592, -249.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 592, -249.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 704.2, -327.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 704.2, -327.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 816.3, -405.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 816.3, -405.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 928.5, -483.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 928.5, -483.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1194.2, -656.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1194.2, -656.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1488.4, -846 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 1488.4, -846 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 1811.1, -1053.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 1811.1, -1053.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 2162.3, -1278.5 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 2162.3, -1278.5 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 2361.4, -1401.3 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 2361.4, -1401.3 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 2561.1, -1524.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 2561.1, -1524.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 2761.2, -1647.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 2761.2, -1647.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 2961.8, -1771.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 2961.8, -1771.2 , 0 );

setScaleKey( spep_0 + 0 , 1, 3.25, 3.25 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 9.39, 9.39 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 9.39, 9.39 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 9.4, 9.4 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 158, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--マントひるがえる
SE003 = playSeVer2( spep_0 + 8, 1332, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1331, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2;  -- 138

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -50 );
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_c + 92, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_c + 92, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_c + 92, 1167, "",spep_2 + 60, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 92, SE009, 50 );
SE010 = playSeVer2( spep_c + 92, 1332, "", 0, 0, 0, -1);

------------------------------------------------------
-- ピッコロが画面に向かってくる～敵が蹴り落される ef_002
------------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002, 0x100, -1, 0, 0, 0 );  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, 1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002b
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
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 464 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 354 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 15.7, 48.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 15.7, 48.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -19.5, 74.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -19.5, 74.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -46.6, 57.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -46.6, 57.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -21.1, 44.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -21.1, 44.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -16.4, 62.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -16.4, 62.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -12.7, 56.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -12.7, 56.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 5.4, 57.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 5.4, 57.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 41.5, 59.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 41.5, 59.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 19.7, 37.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 19.7, 37.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 45.9, 59.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 45.9, 59.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 32.2, 35.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 32.2, 35.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 28, 46.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 28, 46.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 42.9, 35.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 42.9, 35.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 45.2, 30.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 45.2, 30.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 47.4, 25.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 47.4, 25.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 49.6, 20.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 49.6, 20.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 51.9, 15.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 51.9, 15.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 54.1, 10.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 54.1, 10.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 56.4, 5.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 56.4, 5.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 85.7, 2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 85.7, 2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 49.1, -15.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 49.1, -15.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 93.7, -20.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 93.7, -20.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 50.7, 2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 50.7, 2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 73.7, -5.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 73.7, -5.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 74.4, -4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 74.4, -4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 75.2, -2.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 75.2, -2.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 75.9, -0.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 75.9, -0.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 76.6, 1.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 76.6, 1.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 128, 23.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 128, 23.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 152.5, 33.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 152.5, 33.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 113.3, 12.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 113.3, 12.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 129.9, 24.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 129.9, 24.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 130.5, 24.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 130.5, 24.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 131.1, 25.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 131.1, 25.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 131.7, 25.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 131.7, 25.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 132.4, 25.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 132.4, 25.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 133, 26.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 133, 26.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 133.6, 26.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 133.6, 26.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 134.2, 27 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 134.2, 27 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 98.4, 33.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 98.4, 33.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 133.5, 26.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 133.5, 26.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 108, 14 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 108, 14 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 124, 26.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 124, 26.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 113.7, 5.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 113.7, 5.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 138.7, 31.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 138.7, 31.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 123.7, 10.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 123.7, 10.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 118.3, 24.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 118.3, 24.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 132.1, 16.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 132.1, 16.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 133.1, 15.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 133.1, 15.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 134.1, 13.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 134.1, 13.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 135.1, 11.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 135.1, 11.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 136.1, 10.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 136.1, 10.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 137.1, 8.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 137.1, 8.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 138.1, 7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 138.1, 7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 139.5, 40.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 139.5, 40.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 161.8, 69 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 161.8, 69 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 126.7, 11.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 126.7, 11.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 118.7, 44.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 118.7, 44.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 150.6, 20.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 150.6, 20.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 139.6, 31.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 139.6, 31.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 139.6, 29.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 139.6, 29.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 105.1, -122 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 105.1, -122 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.5, -115.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.5, -115.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 113.8, -108.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 113.8, -108.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 118.1, -102.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 118.1, -102.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 122.4, -95.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 122.4, -95.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 126.7, -89.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 126.7, -89.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131, -82.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 131, -82.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 135.3, -75.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 135.3, -75.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 139.6, -69.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 139.6, -69.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 159.3, 153.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 159.3, 153.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 145.8, 112.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 145.8, 112.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 199, 132.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 199, 132.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 153.6, 144.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 153.6, 144.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 251.3, 228.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 251.3, 228.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 296.8, 282.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 296.8, 282.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 353.7, 350.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 353.7, 350.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 407.6, 414.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 407.6, 414.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 461.5, 478.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 461.5, 478.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 515.4, 543.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 515.4, 543.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 569.4, 607.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 569.4, 607.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 623.3, 671.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 623.3, 671.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 677.2, 735.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 677.2, 735.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 731.2, 800.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 731.2, 800.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -251.2, -438.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -251.2, -438.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -227.4, -388.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -227.4, -388.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -203.7, -338.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -203.7, -338.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -180.4, -288.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -180.4, -288.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -157.3, -239.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -157.3, -239.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -134.4, -190.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -134.4, -190.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -111.7, -141.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -111.7, -141.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -89.3, -93.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -89.3, -93.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -67.1, -45.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -67.1, -45.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -45.2, 2.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -45.2, 2.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -23.4, 50.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -23.4, 50.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -1.9, 97.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -1.9, 97.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 19.2, 144 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 19.2, 144 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 40.3, 190.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 40.3, 190.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 61, 236.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 61, 236.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 81.6, 282.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 81.6, 282.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 85.2, 289.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 85.2, 289.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 88.7, 296.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 88.7, 296.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 92.4, 303 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 92.4, 303 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 95.9, 309.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 95.9, 309.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 99.4, 316.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 99.4, 316.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 103, 323.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 103, 323.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 106.4, 329.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 106.4, 329.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 109.8, 336.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 109.8, 336.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -321.4, -659 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -321.4, -659 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -306, -636.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -306, -636.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -290.5, -613.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -290.5, -613.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -275, -590.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -275, -590.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -259.6, -568 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -259.6, -568 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -244.1, -545.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -244.1, -545.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -228.6, -522.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -228.6, -522.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -213.2, -499.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -213.2, -499.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -197.7, -477.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -197.7, -477.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -182.3, -454.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -182.3, -454.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -166.8, -431.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -166.8, -431.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -151.3, -408.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -151.3, -408.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -135.9, -386.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -135.9, -386.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -120.4, -363.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -120.4, -363.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -104.9, -340.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -104.9, -340.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -89.5, -318.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -89.5, -318.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -74, -295.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -74, -295.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -58.5, -272.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -58.5, -272.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -43.1, -249.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -43.1, -249.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -27.6, -227.2 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -27.6, -227.2 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -12.2, -204.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -12.2, -204.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -389.7, -894.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -389.7, -894.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -905, -1971.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -905, -1971.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -1558.1, -3436.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -1558.1, -3436.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -289.7, -275 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -289.7, -275 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -235.3, -214.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -235.3, -214.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -181, -154.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -181, -154.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -136.2, -141.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -136.2, -141.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -156.4, -164.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -156.4, -164.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -30.6, -130 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -30.6, -130 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -4.4, -61.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -4.4, -61.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.5, -96 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.5, -96 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 17.1, -75.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 17.1, -75.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -10.2, -76 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -10.2, -76 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 5.8, -96.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 5.8, -96.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 2.7, -100.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 2.7, -100.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 4.5, -107.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 4.5, -107.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 6.5, -114.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 6.5, -114.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 8.4, -121.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 8.4, -121.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 10.3, -128 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 10.3, -128 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 12.2, -134.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 12.2, -134.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 14.1, -141.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 14.1, -141.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 16.1, -148.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 16.1, -148.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 18, -155.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 18, -155.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 20, -162.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 20, -162.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 21.9, -169.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 21.9, -169.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 23.9, -175.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 23.9, -175.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 395.4, -408.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 395.4, -408.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 342.1, -370.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 342.1, -370.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 290.5, -334.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 290.5, -334.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 240.7, -300 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 240.7, -300 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 192.4, -266.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 192.4, -266.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 145.9, -235 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 145.9, -235 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 101.1, -204.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 101.1, -204.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 57.8, -175.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 57.8, -175.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 16.4, -148.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 16.4, -148.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -23.5, -122.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -23.5, -122.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -61.7, -97.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -61.7, -97.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -98.1, -74.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -98.1, -74.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -164.8, -66.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -164.8, -66.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -109.3, -35.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -109.3, -35.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -160.7, -38.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -160.7, -38.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -160, -67.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -160, -67.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -161.2, -58.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -161.2, -58.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -157.1, -27.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -157.1, -27.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -153.2, -48.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -153.2, -48.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -162.6, -42.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -162.6, -42.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -155.5, -40.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -155.5, -40.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -155, -52.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -155, -52.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -168.2, -44.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -168.2, -44.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -157, -40.8 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -157, -40.8 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -168.1, -47.9 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -168.1, -47.9 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -164.5, -44.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -164.5, -44.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -168.7, -44.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -168.7, -44.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -166.7, -46.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -166.7, -46.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -168.9, -46.3 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -168.9, -46.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -171, -45.8 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -171, -45.8 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -171.8, -45.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -171.8, -45.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -172.6, -45.1 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -172.6, -45.1 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -173.4, -45 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -173.4, -45 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -174.3, -44.8 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -174.3, -44.8 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -175.2, -44.8 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -175.2, -44.8 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -69.2 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 52;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--連打
SE011 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 66, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 80, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 58 );
SE017 = playSeVer2( spep_2 + 104, 1187, "",spep_2 + 152, 0, 32, -1);
SE018 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 122, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1187, "",spep_2 + 192, 0, 32, -1);
SE023 = playSeVer2( spep_2 + 162, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 162, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 184, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 200, 44, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 204, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 216, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_2 + 224, 1183, "",spep_2 + 372, 0, 56, -1);

--追いかける
SE032 = playSeVer2( spep_2 + 260, 1060, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 260, 1207, "",spep_2 + 346, 0, 34, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 306, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE035 = playSeVer2( spep_2 + 320, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE036 = playSeVer2( spep_2 + 354, 1120, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 354, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE038 = playSeVer2( spep_2 + 376, 1121, "",spep_2 + 444, 0, 24, -1);

--地面激突
SE039 = playSeVer2( spep_2 + 410, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 420 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 532

else

------------------------------------------------------
-- 敵側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ピッコロと敵が対峙している ef_001
------------------------------------------------------
MAX_FRAME_0 = 138;

-- ** エフェクト等 ** --
SP_01 = entryEffect( spep_0 + 0, SP_001, 0x80, -1, 0, 0, 0 );  -- ピッコロと敵が対峙している ef_001
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
spep_x = spep_0 + 54;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0 , 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -25, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -25, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -25, 515.5 , 0 );
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
setDisp( spep_0 + 0 , 1, 1 );
setDisp( spep_0 + 92 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 0 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 0 , 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 2 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 3 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 4 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 5 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 6 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 7 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 367.8, -93.6 , 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 479.9, -171.6 , 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 479.9, -171.6 , 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 592, -249.6 , 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 592, -249.6 , 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 704.2, -327.6 , 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 704.2, -327.6 , 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 816.3, -405.6 , 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 816.3, -405.6 , 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 928.5, -483.6 , 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 928.5, -483.6 , 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1194.2, -656.1 , 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1194.2, -656.1 , 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1488.4, -846 , 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 1488.4, -846 , 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 1811.1, -1053.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 1811.1, -1053.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 2162.3, -1278.5 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 2162.3, -1278.5 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 2361.4, -1401.3 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 2361.4, -1401.3 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 2561.1, -1524.3 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 2561.1, -1524.3 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 2761.2, -1647.6 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 2761.2, -1647.6 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 2961.8, -1771.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 2961.8, -1771.2 , 0 );

setScaleKey( spep_0 + 0 , 1, 3.25, 3.25 );
setScaleKey( spep_0 + 2 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 3 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 4 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 5 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 6 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 7 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 3.93, 3.93 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 4.61, 4.61 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 5.29, 5.29 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 5.97, 5.97 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 6.64, 6.64 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 7.32, 7.32 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 8, 8 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 8.68, 8.68 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 9.36, 9.36 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 9.37, 9.37 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 9.38, 9.38 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 9.39, 9.39 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 9.39, 9.39 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 9.4, 9.4 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 9.4, 9.4 );

setRotateKey( spep_0 + 0 , 1, 0 );
setRotateKey( spep_0 + 2 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 3 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 4 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 5 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 6 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 7 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 92 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 158, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );
SE002 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 158, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 32 );

--マントひるがえる
SE003 = playSeVer2( spep_0 + 8, 1332, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 22, 1331, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0 - 2;  -- 138

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -50 );
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-- ** 音 ** --
--向かってくる
SE007 = playSeVer2( spep_c + 92, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_c + 92, 1117, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_c + 92, 1167, "",spep_2 + 60, 0, 36, -1);
setSeVolumeByWorkId( spep_c + 92, SE009, 50 );
SE010 = playSeVer2( spep_c + 92, 1332, "", 0, 0, 0, -1);

------------------------------------------------------
-- ピッコロが画面に向かってくる～敵が蹴り落される ef_002r
------------------------------------------------------
MAX_FRAME_2 = 532;

-- ** エフェクト等 ** --
SP_02 = entryEffect( spep_2 + 0, SP_002r, 0x100, -1, 0, 0, 0 );  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002r
setEffMoveKey( spep_2 + 0, SP_02, 0, 0 , 0 );
setEffMoveKey( spep_2 + MAX_FRAME_2, SP_02, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, SP_02, -1.0, 1.0 );
setEffScaleKey( spep_2 + MAX_FRAME_2, SP_02, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, SP_02, 0 );
setEffRotateKey( spep_2 + MAX_FRAME_2, SP_02, 0 );
setEffAlphaKey( spep_2 + 0, SP_02, 255 );
setEffAlphaKey( spep_2 + MAX_FRAME_2, SP_02, 255 );
SP_02b = entryEffect( spep_2 + 0, SP_002b, 0x80, -1, 0, 0, 0 );  -- ピッコロが画面に向かってくる～敵が蹴り落される ef_002b
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
setDisp( spep_2 + 62 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 464 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 62 + OFFSET_X, 1, 117 );
changeAnime( spep_2 + 72 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 88 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 110 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 128 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 150 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 166 + OFFSET_X, 1, 108 );
changeAnime( spep_2 + 220 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 248 + OFFSET_X, 1, 105 );
changeAnime( spep_2 + 348 + OFFSET_X, 1, 106 );
changeAnime( spep_2 + 354 + OFFSET_X, 1, 8 );
changeAnime( spep_2 + 394 + OFFSET_X, 1, 105 );

setMoveKey( spep_2 + 62 + OFFSET_X, 1, 15.7, 48.2 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_X, 1, 15.7, 48.2 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_X, 1, -19.5, 74.9 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_X, 1, -19.5, 74.9 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_X, 1, -46.6, 57.3 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_X, 1, -46.6, 57.3 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_X, 1, -21.1, 44.6 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_X, 1, -21.1, 44.6 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_X, 1, -16.4, 62.1 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_X, 1, -16.4, 62.1 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_X, 1, -12.7, 56.8 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_X, 1, -12.7, 56.8 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_X, 1, 5.4, 57.8 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_X, 1, 5.4, 57.8 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_X, 1, 23.4, 58.7 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_X, 1, 41.5, 59.7 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_X, 1, 41.5, 59.7 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_X, 1, 19.7, 37.7 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_X, 1, 19.7, 37.7 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_X, 1, 45.9, 59.8 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_X, 1, 45.9, 59.8 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_X, 1, 32.2, 35.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_X, 1, 32.2, 35.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_X, 1, 28, 46.7 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_X, 1, 28, 46.7 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_X, 1, 42.9, 35.5 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_X, 1, 42.9, 35.5 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_X, 1, 45.2, 30.5 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_X, 1, 45.2, 30.5 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_X, 1, 47.4, 25.6 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_X, 1, 47.4, 25.6 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_X, 1, 49.6, 20.6 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_X, 1, 49.6, 20.6 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_X, 1, 51.9, 15.7 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_X, 1, 51.9, 15.7 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_X, 1, 54.1, 10.7 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_X, 1, 54.1, 10.7 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_X, 1, 56.4, 5.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_X, 1, 56.4, 5.8 , 0 );
setMoveKey( spep_2 + 110 + OFFSET_X, 1, 85.7, 2 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_X, 1, 85.7, 2 , 0 );
setMoveKey( spep_2 + 112 + OFFSET_X, 1, 49.1, -15.5 , 0 );
setMoveKey( spep_2 + 113 + OFFSET_X, 1, 49.1, -15.5 , 0 );
setMoveKey( spep_2 + 114 + OFFSET_X, 1, 93.7, -20.3 , 0 );
setMoveKey( spep_2 + 115 + OFFSET_X, 1, 93.7, -20.3 , 0 );
setMoveKey( spep_2 + 116 + OFFSET_X, 1, 50.7, 2 , 0 );
setMoveKey( spep_2 + 117 + OFFSET_X, 1, 50.7, 2 , 0 );
setMoveKey( spep_2 + 118 + OFFSET_X, 1, 73.7, -5.8 , 0 );
setMoveKey( spep_2 + 119 + OFFSET_X, 1, 73.7, -5.8 , 0 );
setMoveKey( spep_2 + 120 + OFFSET_X, 1, 74.4, -4 , 0 );
setMoveKey( spep_2 + 121 + OFFSET_X, 1, 74.4, -4 , 0 );
setMoveKey( spep_2 + 122 + OFFSET_X, 1, 75.2, -2.2 , 0 );
setMoveKey( spep_2 + 123 + OFFSET_X, 1, 75.2, -2.2 , 0 );
setMoveKey( spep_2 + 124 + OFFSET_X, 1, 75.9, -0.4 , 0 );
setMoveKey( spep_2 + 125 + OFFSET_X, 1, 75.9, -0.4 , 0 );
setMoveKey( spep_2 + 126 + OFFSET_X, 1, 76.6, 1.4 , 0 );
setMoveKey( spep_2 + 127 + OFFSET_X, 1, 76.6, 1.4 , 0 );
setMoveKey( spep_2 + 128 + OFFSET_X, 1, 128, 23.3 , 0 );
setMoveKey( spep_2 + 129 + OFFSET_X, 1, 128, 23.3 , 0 );
setMoveKey( spep_2 + 130 + OFFSET_X, 1, 152.5, 33.2 , 0 );
setMoveKey( spep_2 + 131 + OFFSET_X, 1, 152.5, 33.2 , 0 );
setMoveKey( spep_2 + 132 + OFFSET_X, 1, 113.3, 12.8 , 0 );
setMoveKey( spep_2 + 133 + OFFSET_X, 1, 113.3, 12.8 , 0 );
setMoveKey( spep_2 + 134 + OFFSET_X, 1, 129.9, 24.4 , 0 );
setMoveKey( spep_2 + 135 + OFFSET_X, 1, 129.9, 24.4 , 0 );
setMoveKey( spep_2 + 136 + OFFSET_X, 1, 130.5, 24.8 , 0 );
setMoveKey( spep_2 + 137 + OFFSET_X, 1, 130.5, 24.8 , 0 );
setMoveKey( spep_2 + 138 + OFFSET_X, 1, 131.1, 25.2 , 0 );
setMoveKey( spep_2 + 139 + OFFSET_X, 1, 131.1, 25.2 , 0 );
setMoveKey( spep_2 + 140 + OFFSET_X, 1, 131.7, 25.5 , 0 );
setMoveKey( spep_2 + 141 + OFFSET_X, 1, 131.7, 25.5 , 0 );
setMoveKey( spep_2 + 142 + OFFSET_X, 1, 132.4, 25.9 , 0 );
setMoveKey( spep_2 + 143 + OFFSET_X, 1, 132.4, 25.9 , 0 );
setMoveKey( spep_2 + 144 + OFFSET_X, 1, 133, 26.3 , 0 );
setMoveKey( spep_2 + 145 + OFFSET_X, 1, 133, 26.3 , 0 );
setMoveKey( spep_2 + 146 + OFFSET_X, 1, 133.6, 26.7 , 0 );
setMoveKey( spep_2 + 147 + OFFSET_X, 1, 133.6, 26.7 , 0 );
setMoveKey( spep_2 + 148 + OFFSET_X, 1, 134.2, 27 , 0 );
setMoveKey( spep_2 + 149 + OFFSET_X, 1, 134.2, 27 , 0 );
setMoveKey( spep_2 + 150 + OFFSET_X, 1, 98.4, 33.2 , 0 );
setMoveKey( spep_2 + 151 + OFFSET_X, 1, 98.4, 33.2 , 0 );
setMoveKey( spep_2 + 152 + OFFSET_X, 1, 133.5, 26.8 , 0 );
setMoveKey( spep_2 + 153 + OFFSET_X, 1, 133.5, 26.8 , 0 );
setMoveKey( spep_2 + 154 + OFFSET_X, 1, 108, 14 , 0 );
setMoveKey( spep_2 + 155 + OFFSET_X, 1, 108, 14 , 0 );
setMoveKey( spep_2 + 156 + OFFSET_X, 1, 124, 26.8 , 0 );
setMoveKey( spep_2 + 165 + OFFSET_X, 1, 124, 26.8 , 0 );
setMoveKey( spep_2 + 166 + OFFSET_X, 1, 113.7, 5.7 , 0 );
setMoveKey( spep_2 + 167 + OFFSET_X, 1, 113.7, 5.7 , 0 );
setMoveKey( spep_2 + 168 + OFFSET_X, 1, 138.7, 31.2 , 0 );
setMoveKey( spep_2 + 169 + OFFSET_X, 1, 138.7, 31.2 , 0 );
setMoveKey( spep_2 + 170 + OFFSET_X, 1, 123.7, 10.4 , 0 );
setMoveKey( spep_2 + 171 + OFFSET_X, 1, 123.7, 10.4 , 0 );
setMoveKey( spep_2 + 172 + OFFSET_X, 1, 118.3, 24.7 , 0 );
setMoveKey( spep_2 + 173 + OFFSET_X, 1, 118.3, 24.7 , 0 );
setMoveKey( spep_2 + 174 + OFFSET_X, 1, 132.1, 16.8 , 0 );
setMoveKey( spep_2 + 175 + OFFSET_X, 1, 132.1, 16.8 , 0 );
setMoveKey( spep_2 + 176 + OFFSET_X, 1, 133.1, 15.1 , 0 );
setMoveKey( spep_2 + 177 + OFFSET_X, 1, 133.1, 15.1 , 0 );
setMoveKey( spep_2 + 178 + OFFSET_X, 1, 134.1, 13.5 , 0 );
setMoveKey( spep_2 + 179 + OFFSET_X, 1, 134.1, 13.5 , 0 );
setMoveKey( spep_2 + 180 + OFFSET_X, 1, 135.1, 11.9 , 0 );
setMoveKey( spep_2 + 181 + OFFSET_X, 1, 135.1, 11.9 , 0 );
setMoveKey( spep_2 + 182 + OFFSET_X, 1, 136.1, 10.3 , 0 );
setMoveKey( spep_2 + 183 + OFFSET_X, 1, 136.1, 10.3 , 0 );
setMoveKey( spep_2 + 184 + OFFSET_X, 1, 137.1, 8.6 , 0 );
setMoveKey( spep_2 + 185 + OFFSET_X, 1, 137.1, 8.6 , 0 );
setMoveKey( spep_2 + 186 + OFFSET_X, 1, 138.1, 7 , 0 );
setMoveKey( spep_2 + 187 + OFFSET_X, 1, 138.1, 7 , 0 );
setMoveKey( spep_2 + 188 + OFFSET_X, 1, 139.5, 40.5 , 0 );
setMoveKey( spep_2 + 189 + OFFSET_X, 1, 139.5, 40.5 , 0 );
setMoveKey( spep_2 + 190 + OFFSET_X, 1, 161.8, 69 , 0 );
setMoveKey( spep_2 + 191 + OFFSET_X, 1, 161.8, 69 , 0 );
setMoveKey( spep_2 + 192 + OFFSET_X, 1, 126.7, 11.4 , 0 );
setMoveKey( spep_2 + 193 + OFFSET_X, 1, 126.7, 11.4 , 0 );
setMoveKey( spep_2 + 194 + OFFSET_X, 1, 118.7, 44.6 , 0 );
setMoveKey( spep_2 + 195 + OFFSET_X, 1, 118.7, 44.6 , 0 );
setMoveKey( spep_2 + 196 + OFFSET_X, 1, 150.6, 20.4 , 0 );
setMoveKey( spep_2 + 197 + OFFSET_X, 1, 150.6, 20.4 , 0 );
setMoveKey( spep_2 + 198 + OFFSET_X, 1, 139.6, 31.4 , 0 );
setMoveKey( spep_2 + 199 + OFFSET_X, 1, 139.6, 31.4 , 0 );
setMoveKey( spep_2 + 200 + OFFSET_X, 1, 139.6, 29.6 , 0 );
setMoveKey( spep_2 + 201 + OFFSET_X, 1, 139.6, 29.6 , 0 );
setMoveKey( spep_2 + 202 + OFFSET_X, 1, 105.1, -122 , 0 );
setMoveKey( spep_2 + 203 + OFFSET_X, 1, 105.1, -122 , 0 );
setMoveKey( spep_2 + 204 + OFFSET_X, 1, 109.5, -115.4 , 0 );
setMoveKey( spep_2 + 205 + OFFSET_X, 1, 109.5, -115.4 , 0 );
setMoveKey( spep_2 + 206 + OFFSET_X, 1, 113.8, -108.8 , 0 );
setMoveKey( spep_2 + 207 + OFFSET_X, 1, 113.8, -108.8 , 0 );
setMoveKey( spep_2 + 208 + OFFSET_X, 1, 118.1, -102.2 , 0 );
setMoveKey( spep_2 + 209 + OFFSET_X, 1, 118.1, -102.2 , 0 );
setMoveKey( spep_2 + 210 + OFFSET_X, 1, 122.4, -95.7 , 0 );
setMoveKey( spep_2 + 211 + OFFSET_X, 1, 122.4, -95.7 , 0 );
setMoveKey( spep_2 + 212 + OFFSET_X, 1, 126.7, -89.1 , 0 );
setMoveKey( spep_2 + 213 + OFFSET_X, 1, 126.7, -89.1 , 0 );
setMoveKey( spep_2 + 214 + OFFSET_X, 1, 131, -82.5 , 0 );
setMoveKey( spep_2 + 215 + OFFSET_X, 1, 131, -82.5 , 0 );
setMoveKey( spep_2 + 216 + OFFSET_X, 1, 135.3, -75.9 , 0 );
setMoveKey( spep_2 + 217 + OFFSET_X, 1, 135.3, -75.9 , 0 );
setMoveKey( spep_2 + 218 + OFFSET_X, 1, 139.6, -69.3 , 0 );
setMoveKey( spep_2 + 219 + OFFSET_X, 1, 139.6, -69.3 , 0 );
setMoveKey( spep_2 + 220 + OFFSET_X, 1, 159.3, 153.9 , 0 );
setMoveKey( spep_2 + 221 + OFFSET_X, 1, 159.3, 153.9 , 0 );
setMoveKey( spep_2 + 222 + OFFSET_X, 1, 145.8, 112.6 , 0 );
setMoveKey( spep_2 + 223 + OFFSET_X, 1, 145.8, 112.6 , 0 );
setMoveKey( spep_2 + 224 + OFFSET_X, 1, 199, 132.5 , 0 );
setMoveKey( spep_2 + 225 + OFFSET_X, 1, 199, 132.5 , 0 );
setMoveKey( spep_2 + 226 + OFFSET_X, 1, 153.6, 144.3 , 0 );
setMoveKey( spep_2 + 227 + OFFSET_X, 1, 153.6, 144.3 , 0 );
setMoveKey( spep_2 + 228 + OFFSET_X, 1, 251.3, 228.7 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 251.3, 228.7 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 296.8, 282.8 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 296.8, 282.8 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 353.7, 350.3 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 353.7, 350.3 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 407.6, 414.6 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 407.6, 414.6 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 461.5, 478.8 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 461.5, 478.8 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 515.4, 543.1 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 515.4, 543.1 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 569.4, 607.3 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 569.4, 607.3 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 623.3, 671.6 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 623.3, 671.6 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 677.2, 735.8 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 677.2, 735.8 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 731.2, 800.1 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 731.2, 800.1 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -251.2, -438.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -251.2, -438.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -227.4, -388.4 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -227.4, -388.4 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -203.7, -338.4 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -203.7, -338.4 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -180.4, -288.8 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -180.4, -288.8 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -157.3, -239.4 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -157.3, -239.4 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -134.4, -190.4 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -134.4, -190.4 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -111.7, -141.7 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -111.7, -141.7 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -89.3, -93.2 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -89.3, -93.2 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -67.1, -45.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -67.1, -45.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -45.2, 2.6 , 0 );
setMoveKey( spep_2 + 267 + OFFSET_X, 1, -45.2, 2.6 , 0 );
setMoveKey( spep_2 + 268 + OFFSET_X, 1, -23.4, 50.1 , 0 );
setMoveKey( spep_2 + 269 + OFFSET_X, 1, -23.4, 50.1 , 0 );
setMoveKey( spep_2 + 270 + OFFSET_X, 1, -1.9, 97.2 , 0 );
setMoveKey( spep_2 + 271 + OFFSET_X, 1, -1.9, 97.2 , 0 );
setMoveKey( spep_2 + 272 + OFFSET_X, 1, 19.2, 144 , 0 );
setMoveKey( spep_2 + 273 + OFFSET_X, 1, 19.2, 144 , 0 );
setMoveKey( spep_2 + 274 + OFFSET_X, 1, 40.3, 190.5 , 0 );
setMoveKey( spep_2 + 275 + OFFSET_X, 1, 40.3, 190.5 , 0 );
setMoveKey( spep_2 + 276 + OFFSET_X, 1, 61, 236.7 , 0 );
setMoveKey( spep_2 + 277 + OFFSET_X, 1, 61, 236.7 , 0 );
setMoveKey( spep_2 + 278 + OFFSET_X, 1, 81.6, 282.6 , 0 );
setMoveKey( spep_2 + 279 + OFFSET_X, 1, 81.6, 282.6 , 0 );
setMoveKey( spep_2 + 280 + OFFSET_X, 1, 85.2, 289.4 , 0 );
setMoveKey( spep_2 + 281 + OFFSET_X, 1, 85.2, 289.4 , 0 );
setMoveKey( spep_2 + 282 + OFFSET_X, 1, 88.7, 296.2 , 0 );
setMoveKey( spep_2 + 283 + OFFSET_X, 1, 88.7, 296.2 , 0 );
setMoveKey( spep_2 + 284 + OFFSET_X, 1, 92.4, 303 , 0 );
setMoveKey( spep_2 + 285 + OFFSET_X, 1, 92.4, 303 , 0 );
setMoveKey( spep_2 + 286 + OFFSET_X, 1, 95.9, 309.7 , 0 );
setMoveKey( spep_2 + 287 + OFFSET_X, 1, 95.9, 309.7 , 0 );
setMoveKey( spep_2 + 288 + OFFSET_X, 1, 99.4, 316.4 , 0 );
setMoveKey( spep_2 + 289 + OFFSET_X, 1, 99.4, 316.4 , 0 );
setMoveKey( spep_2 + 290 + OFFSET_X, 1, 103, 323.1 , 0 );
setMoveKey( spep_2 + 291 + OFFSET_X, 1, 103, 323.1 , 0 );
setMoveKey( spep_2 + 292 + OFFSET_X, 1, 106.4, 329.6 , 0 );
setMoveKey( spep_2 + 293 + OFFSET_X, 1, 106.4, 329.6 , 0 );
setMoveKey( spep_2 + 294 + OFFSET_X, 1, 109.8, 336.2 , 0 );
setMoveKey( spep_2 + 295 + OFFSET_X, 1, 109.8, 336.2 , 0 );
setMoveKey( spep_2 + 296 + OFFSET_X, 1, -321.4, -659 , 0 );
setMoveKey( spep_2 + 297 + OFFSET_X, 1, -321.4, -659 , 0 );
setMoveKey( spep_2 + 298 + OFFSET_X, 1, -306, -636.2 , 0 );
setMoveKey( spep_2 + 299 + OFFSET_X, 1, -306, -636.2 , 0 );
setMoveKey( spep_2 + 300 + OFFSET_X, 1, -290.5, -613.5 , 0 );
setMoveKey( spep_2 + 301 + OFFSET_X, 1, -290.5, -613.5 , 0 );
setMoveKey( spep_2 + 302 + OFFSET_X, 1, -275, -590.8 , 0 );
setMoveKey( spep_2 + 303 + OFFSET_X, 1, -275, -590.8 , 0 );
setMoveKey( spep_2 + 304 + OFFSET_X, 1, -259.6, -568 , 0 );
setMoveKey( spep_2 + 305 + OFFSET_X, 1, -259.6, -568 , 0 );
setMoveKey( spep_2 + 306 + OFFSET_X, 1, -244.1, -545.3 , 0 );
setMoveKey( spep_2 + 307 + OFFSET_X, 1, -244.1, -545.3 , 0 );
setMoveKey( spep_2 + 308 + OFFSET_X, 1, -228.6, -522.6 , 0 );
setMoveKey( spep_2 + 309 + OFFSET_X, 1, -228.6, -522.6 , 0 );
setMoveKey( spep_2 + 310 + OFFSET_X, 1, -213.2, -499.9 , 0 );
setMoveKey( spep_2 + 311 + OFFSET_X, 1, -213.2, -499.9 , 0 );
setMoveKey( spep_2 + 312 + OFFSET_X, 1, -197.7, -477.1 , 0 );
setMoveKey( spep_2 + 313 + OFFSET_X, 1, -197.7, -477.1 , 0 );
setMoveKey( spep_2 + 314 + OFFSET_X, 1, -182.3, -454.5 , 0 );
setMoveKey( spep_2 + 315 + OFFSET_X, 1, -182.3, -454.5 , 0 );
setMoveKey( spep_2 + 316 + OFFSET_X, 1, -166.8, -431.7 , 0 );
setMoveKey( spep_2 + 317 + OFFSET_X, 1, -166.8, -431.7 , 0 );
setMoveKey( spep_2 + 318 + OFFSET_X, 1, -151.3, -408.9 , 0 );
setMoveKey( spep_2 + 319 + OFFSET_X, 1, -151.3, -408.9 , 0 );
setMoveKey( spep_2 + 320 + OFFSET_X, 1, -135.9, -386.3 , 0 );
setMoveKey( spep_2 + 321 + OFFSET_X, 1, -135.9, -386.3 , 0 );
setMoveKey( spep_2 + 322 + OFFSET_X, 1, -120.4, -363.5 , 0 );
setMoveKey( spep_2 + 323 + OFFSET_X, 1, -120.4, -363.5 , 0 );
setMoveKey( spep_2 + 324 + OFFSET_X, 1, -104.9, -340.8 , 0 );
setMoveKey( spep_2 + 325 + OFFSET_X, 1, -104.9, -340.8 , 0 );
setMoveKey( spep_2 + 326 + OFFSET_X, 1, -89.5, -318.1 , 0 );
setMoveKey( spep_2 + 327 + OFFSET_X, 1, -89.5, -318.1 , 0 );
setMoveKey( spep_2 + 328 + OFFSET_X, 1, -74, -295.4 , 0 );
setMoveKey( spep_2 + 329 + OFFSET_X, 1, -74, -295.4 , 0 );
setMoveKey( spep_2 + 330 + OFFSET_X, 1, -58.5, -272.6 , 0 );
setMoveKey( spep_2 + 331 + OFFSET_X, 1, -58.5, -272.6 , 0 );
setMoveKey( spep_2 + 332 + OFFSET_X, 1, -43.1, -249.9 , 0 );
setMoveKey( spep_2 + 333 + OFFSET_X, 1, -43.1, -249.9 , 0 );
setMoveKey( spep_2 + 334 + OFFSET_X, 1, -27.6, -227.2 , 0 );
setMoveKey( spep_2 + 335 + OFFSET_X, 1, -27.6, -227.2 , 0 );
setMoveKey( spep_2 + 336 + OFFSET_X, 1, -12.2, -204.4 , 0 );
setMoveKey( spep_2 + 337 + OFFSET_X, 1, -12.2, -204.4 , 0 );
setMoveKey( spep_2 + 338 + OFFSET_X, 1, -389.7, -894.2 , 0 );
setMoveKey( spep_2 + 339 + OFFSET_X, 1, -389.7, -894.2 , 0 );
setMoveKey( spep_2 + 340 + OFFSET_X, 1, -905, -1971.6 , 0 );
setMoveKey( spep_2 + 341 + OFFSET_X, 1, -905, -1971.6 , 0 );
setMoveKey( spep_2 + 342 + OFFSET_X, 1, -1558.1, -3436.9 , 0 );
setMoveKey( spep_2 + 347 + OFFSET_X, 1, -1558.1, -3436.9 , 0 );
setMoveKey( spep_2 + 348 + OFFSET_X, 1, -289.7, -275 , 0 );
setMoveKey( spep_2 + 349 + OFFSET_X, 1, -289.7, -275 , 0 );
setMoveKey( spep_2 + 350 + OFFSET_X, 1, -235.3, -214.7 , 0 );
setMoveKey( spep_2 + 351 + OFFSET_X, 1, -235.3, -214.7 , 0 );
setMoveKey( spep_2 + 352 + OFFSET_X, 1, -181, -154.5 , 0 );
setMoveKey( spep_2 + 353 + OFFSET_X, 1, -181, -154.5 , 0 );
setMoveKey( spep_2 + 354 + OFFSET_X, 1, -136.2, -141.3 , 0 );
setMoveKey( spep_2 + 355 + OFFSET_X, 1, -136.2, -141.3 , 0 );
setMoveKey( spep_2 + 356 + OFFSET_X, 1, -156.4, -164.3 , 0 );
setMoveKey( spep_2 + 357 + OFFSET_X, 1, -156.4, -164.3 , 0 );
setMoveKey( spep_2 + 358 + OFFSET_X, 1, -30.6, -130 , 0 );
setMoveKey( spep_2 + 359 + OFFSET_X, 1, -30.6, -130 , 0 );
setMoveKey( spep_2 + 360 + OFFSET_X, 1, -4.4, -61.4 , 0 );
setMoveKey( spep_2 + 361 + OFFSET_X, 1, -4.4, -61.4 , 0 );
setMoveKey( spep_2 + 362 + OFFSET_X, 1, 7.5, -96 , 0 );
setMoveKey( spep_2 + 363 + OFFSET_X, 1, 7.5, -96 , 0 );
setMoveKey( spep_2 + 364 + OFFSET_X, 1, 17.1, -75.2 , 0 );
setMoveKey( spep_2 + 365 + OFFSET_X, 1, 17.1, -75.2 , 0 );
setMoveKey( spep_2 + 366 + OFFSET_X, 1, -10.2, -76 , 0 );
setMoveKey( spep_2 + 367 + OFFSET_X, 1, -10.2, -76 , 0 );
setMoveKey( spep_2 + 368 + OFFSET_X, 1, 5.8, -96.1 , 0 );
setMoveKey( spep_2 + 369 + OFFSET_X, 1, 5.8, -96.1 , 0 );
setMoveKey( spep_2 + 370 + OFFSET_X, 1, 2.7, -100.7 , 0 );
setMoveKey( spep_2 + 371 + OFFSET_X, 1, 2.7, -100.7 , 0 );
setMoveKey( spep_2 + 372 + OFFSET_X, 1, 4.5, -107.5 , 0 );
setMoveKey( spep_2 + 373 + OFFSET_X, 1, 4.5, -107.5 , 0 );
setMoveKey( spep_2 + 374 + OFFSET_X, 1, 6.5, -114.4 , 0 );
setMoveKey( spep_2 + 375 + OFFSET_X, 1, 6.5, -114.4 , 0 );
setMoveKey( spep_2 + 376 + OFFSET_X, 1, 8.4, -121.2 , 0 );
setMoveKey( spep_2 + 377 + OFFSET_X, 1, 8.4, -121.2 , 0 );
setMoveKey( spep_2 + 378 + OFFSET_X, 1, 10.3, -128 , 0 );
setMoveKey( spep_2 + 379 + OFFSET_X, 1, 10.3, -128 , 0 );
setMoveKey( spep_2 + 380 + OFFSET_X, 1, 12.2, -134.9 , 0 );
setMoveKey( spep_2 + 381 + OFFSET_X, 1, 12.2, -134.9 , 0 );
setMoveKey( spep_2 + 382 + OFFSET_X, 1, 14.1, -141.8 , 0 );
setMoveKey( spep_2 + 383 + OFFSET_X, 1, 14.1, -141.8 , 0 );
setMoveKey( spep_2 + 384 + OFFSET_X, 1, 16.1, -148.6 , 0 );
setMoveKey( spep_2 + 385 + OFFSET_X, 1, 16.1, -148.6 , 0 );
setMoveKey( spep_2 + 386 + OFFSET_X, 1, 18, -155.4 , 0 );
setMoveKey( spep_2 + 387 + OFFSET_X, 1, 18, -155.4 , 0 );
setMoveKey( spep_2 + 388 + OFFSET_X, 1, 20, -162.3 , 0 );
setMoveKey( spep_2 + 389 + OFFSET_X, 1, 20, -162.3 , 0 );
setMoveKey( spep_2 + 390 + OFFSET_X, 1, 21.9, -169.1 , 0 );
setMoveKey( spep_2 + 391 + OFFSET_X, 1, 21.9, -169.1 , 0 );
setMoveKey( spep_2 + 392 + OFFSET_X, 1, 23.9, -175.9 , 0 );
setMoveKey( spep_2 + 393 + OFFSET_X, 1, 23.9, -175.9 , 0 );
setMoveKey( spep_2 + 394 + OFFSET_X, 1, 395.4, -408.2 , 0 );
setMoveKey( spep_2 + 395 + OFFSET_X, 1, 395.4, -408.2 , 0 );
setMoveKey( spep_2 + 396 + OFFSET_X, 1, 342.1, -370.7 , 0 );
setMoveKey( spep_2 + 397 + OFFSET_X, 1, 342.1, -370.7 , 0 );
setMoveKey( spep_2 + 398 + OFFSET_X, 1, 290.5, -334.7 , 0 );
setMoveKey( spep_2 + 399 + OFFSET_X, 1, 290.5, -334.7 , 0 );
setMoveKey( spep_2 + 400 + OFFSET_X, 1, 240.7, -300 , 0 );
setMoveKey( spep_2 + 401 + OFFSET_X, 1, 240.7, -300 , 0 );
setMoveKey( spep_2 + 402 + OFFSET_X, 1, 192.4, -266.8 , 0 );
setMoveKey( spep_2 + 403 + OFFSET_X, 1, 192.4, -266.8 , 0 );
setMoveKey( spep_2 + 404 + OFFSET_X, 1, 145.9, -235 , 0 );
setMoveKey( spep_2 + 405 + OFFSET_X, 1, 145.9, -235 , 0 );
setMoveKey( spep_2 + 406 + OFFSET_X, 1, 101.1, -204.7 , 0 );
setMoveKey( spep_2 + 407 + OFFSET_X, 1, 101.1, -204.7 , 0 );
setMoveKey( spep_2 + 408 + OFFSET_X, 1, 57.8, -175.7 , 0 );
setMoveKey( spep_2 + 409 + OFFSET_X, 1, 57.8, -175.7 , 0 );
setMoveKey( spep_2 + 410 + OFFSET_X, 1, 16.4, -148.2 , 0 );
setMoveKey( spep_2 + 411 + OFFSET_X, 1, 16.4, -148.2 , 0 );
setMoveKey( spep_2 + 412 + OFFSET_X, 1, -23.5, -122.1 , 0 );
setMoveKey( spep_2 + 413 + OFFSET_X, 1, -23.5, -122.1 , 0 );
setMoveKey( spep_2 + 414 + OFFSET_X, 1, -61.7, -97.4 , 0 );
setMoveKey( spep_2 + 415 + OFFSET_X, 1, -61.7, -97.4 , 0 );
setMoveKey( spep_2 + 416 + OFFSET_X, 1, -98.1, -74.2 , 0 );
setMoveKey( spep_2 + 417 + OFFSET_X, 1, -98.1, -74.2 , 0 );
setMoveKey( spep_2 + 418 + OFFSET_X, 1, -164.8, -66.7 , 0 );
setMoveKey( spep_2 + 419 + OFFSET_X, 1, -164.8, -66.7 , 0 );
setMoveKey( spep_2 + 420 + OFFSET_X, 1, -109.3, -35.7 , 0 );
setMoveKey( spep_2 + 421 + OFFSET_X, 1, -109.3, -35.7 , 0 );
setMoveKey( spep_2 + 422 + OFFSET_X, 1, -160.7, -38.1 , 0 );
setMoveKey( spep_2 + 423 + OFFSET_X, 1, -160.7, -38.1 , 0 );
setMoveKey( spep_2 + 424 + OFFSET_X, 1, -160, -67.2 , 0 );
setMoveKey( spep_2 + 425 + OFFSET_X, 1, -160, -67.2 , 0 );
setMoveKey( spep_2 + 426 + OFFSET_X, 1, -161.2, -58.9 , 0 );
setMoveKey( spep_2 + 427 + OFFSET_X, 1, -161.2, -58.9 , 0 );
setMoveKey( spep_2 + 428 + OFFSET_X, 1, -157.1, -27.7 , 0 );
setMoveKey( spep_2 + 429 + OFFSET_X, 1, -157.1, -27.7 , 0 );
setMoveKey( spep_2 + 430 + OFFSET_X, 1, -153.2, -48.1 , 0 );
setMoveKey( spep_2 + 431 + OFFSET_X, 1, -153.2, -48.1 , 0 );
setMoveKey( spep_2 + 432 + OFFSET_X, 1, -162.6, -42.4 , 0 );
setMoveKey( spep_2 + 433 + OFFSET_X, 1, -162.6, -42.4 , 0 );
setMoveKey( spep_2 + 434 + OFFSET_X, 1, -155.5, -40.9 , 0 );
setMoveKey( spep_2 + 435 + OFFSET_X, 1, -155.5, -40.9 , 0 );
setMoveKey( spep_2 + 436 + OFFSET_X, 1, -155, -52.5 , 0 );
setMoveKey( spep_2 + 437 + OFFSET_X, 1, -155, -52.5 , 0 );
setMoveKey( spep_2 + 438 + OFFSET_X, 1, -168.2, -44.9 , 0 );
setMoveKey( spep_2 + 439 + OFFSET_X, 1, -168.2, -44.9 , 0 );
setMoveKey( spep_2 + 440 + OFFSET_X, 1, -157, -40.8 , 0 );
setMoveKey( spep_2 + 441 + OFFSET_X, 1, -157, -40.8 , 0 );
setMoveKey( spep_2 + 442 + OFFSET_X, 1, -168.1, -47.9 , 0 );
setMoveKey( spep_2 + 443 + OFFSET_X, 1, -168.1, -47.9 , 0 );
setMoveKey( spep_2 + 444 + OFFSET_X, 1, -164.5, -44.3 , 0 );
setMoveKey( spep_2 + 445 + OFFSET_X, 1, -164.5, -44.3 , 0 );
setMoveKey( spep_2 + 446 + OFFSET_X, 1, -168.7, -44.1 , 0 );
setMoveKey( spep_2 + 447 + OFFSET_X, 1, -168.7, -44.1 , 0 );
setMoveKey( spep_2 + 448 + OFFSET_X, 1, -166.7, -46.9 , 0 );
setMoveKey( spep_2 + 449 + OFFSET_X, 1, -166.7, -46.9 , 0 );
setMoveKey( spep_2 + 450 + OFFSET_X, 1, -168.9, -46.3 , 0 );
setMoveKey( spep_2 + 451 + OFFSET_X, 1, -168.9, -46.3 , 0 );
setMoveKey( spep_2 + 452 + OFFSET_X, 1, -171, -45.8 , 0 );
setMoveKey( spep_2 + 453 + OFFSET_X, 1, -171, -45.8 , 0 );
setMoveKey( spep_2 + 454 + OFFSET_X, 1, -171.8, -45.4 , 0 );
setMoveKey( spep_2 + 455 + OFFSET_X, 1, -171.8, -45.4 , 0 );
setMoveKey( spep_2 + 456 + OFFSET_X, 1, -172.6, -45.1 , 0 );
setMoveKey( spep_2 + 457 + OFFSET_X, 1, -172.6, -45.1 , 0 );
setMoveKey( spep_2 + 458 + OFFSET_X, 1, -173.4, -45 , 0 );
setMoveKey( spep_2 + 459 + OFFSET_X, 1, -173.4, -45 , 0 );
setMoveKey( spep_2 + 460 + OFFSET_X, 1, -174.3, -44.8 , 0 );
setMoveKey( spep_2 + 461 + OFFSET_X, 1, -174.3, -44.8 , 0 );
setMoveKey( spep_2 + 462 + OFFSET_X, 1, -175.2, -44.8 , 0 );
setMoveKey( spep_2 + 464 + OFFSET_X, 1, -175.2, -44.8 , 0 );

setScaleKey( spep_2 + 62 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 87 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 88 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 109 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 110 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 127 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 128 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 149 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 150 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 165 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 166 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 201 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_2 + 202 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 203 + OFFSET_X, 1, 3.18, 3.18 );
setScaleKey( spep_2 + 204 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 205 + OFFSET_X, 1, 3.1, 3.1 );
setScaleKey( spep_2 + 206 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 207 + OFFSET_X, 1, 3.02, 3.02 );
setScaleKey( spep_2 + 208 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 209 + OFFSET_X, 1, 2.94, 2.94 );
setScaleKey( spep_2 + 210 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 211 + OFFSET_X, 1, 2.86, 2.86 );
setScaleKey( spep_2 + 212 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 213 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_2 + 214 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 215 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_2 + 216 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 217 + OFFSET_X, 1, 2.62, 2.62 );
setScaleKey( spep_2 + 218 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 220 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 227 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_2 + 228 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 2.1, 2.1 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 235 + OFFSET_X, 1, 1.96, 1.96 );
setScaleKey( spep_2 + 236 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 237 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_2 + 238 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 239 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_2 + 240 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 241 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_2 + 242 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 243 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_2 + 244 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 247 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 248 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 249 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 250 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 251 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_2 + 252 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 253 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 254 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 255 + OFFSET_X, 1, 1.93, 1.93 );
setScaleKey( spep_2 + 256 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 257 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_2 + 258 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 259 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_2 + 260 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 261 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_2 + 262 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 263 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_2 + 264 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 265 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 267 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 268 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 269 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 270 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 271 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_2 + 272 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 273 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 274 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 275 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_2 + 276 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 277 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 278 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 279 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_2 + 280 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 281 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 282 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 283 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_2 + 284 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 285 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 286 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 287 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 288 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 289 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 290 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 291 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 292 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 293 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 294 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 295 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_2 + 296 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 297 + OFFSET_X, 1, 5.92, 5.92 );
setScaleKey( spep_2 + 298 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 299 + OFFSET_X, 1, 5.72, 5.72 );
setScaleKey( spep_2 + 300 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 301 + OFFSET_X, 1, 5.52, 5.52 );
setScaleKey( spep_2 + 302 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 303 + OFFSET_X, 1, 5.32, 5.32 );
setScaleKey( spep_2 + 304 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 305 + OFFSET_X, 1, 5.12, 5.12 );
setScaleKey( spep_2 + 306 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 307 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_2 + 308 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 309 + OFFSET_X, 1, 4.72, 4.72 );
setScaleKey( spep_2 + 310 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 311 + OFFSET_X, 1, 4.52, 4.52 );
setScaleKey( spep_2 + 312 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 313 + OFFSET_X, 1, 4.32, 4.32 );
setScaleKey( spep_2 + 314 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 315 + OFFSET_X, 1, 4.12, 4.12 );
setScaleKey( spep_2 + 316 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 317 + OFFSET_X, 1, 3.91, 3.91 );
setScaleKey( spep_2 + 318 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 319 + OFFSET_X, 1, 3.71, 3.71 );
setScaleKey( spep_2 + 320 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 321 + OFFSET_X, 1, 3.51, 3.51 );
setScaleKey( spep_2 + 322 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 323 + OFFSET_X, 1, 3.31, 3.31 );
setScaleKey( spep_2 + 324 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 325 + OFFSET_X, 1, 3.11, 3.11 );
setScaleKey( spep_2 + 326 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 327 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_2 + 328 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 329 + OFFSET_X, 1, 2.71, 2.71 );
setScaleKey( spep_2 + 330 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 331 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_2 + 332 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 333 + OFFSET_X, 1, 2.31, 2.31 );
setScaleKey( spep_2 + 334 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 335 + OFFSET_X, 1, 2.11, 2.11 );
setScaleKey( spep_2 + 336 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 337 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_2 + 338 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 339 + OFFSET_X, 1, 3.36, 3.36 );
setScaleKey( spep_2 + 340 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 341 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_2 + 342 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 347 + OFFSET_X, 1, 6.27, 6.27 );
setScaleKey( spep_2 + 348 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 353 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_2 + 354 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 355 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_2 + 356 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 357 + OFFSET_X, 1, 2.01, 2.01 );
setScaleKey( spep_2 + 358 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 359 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_2 + 360 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 365 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_2 + 366 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 367 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_2 + 368 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 369 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 370 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 371 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_2 + 372 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 373 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 374 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 375 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_2 + 376 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 377 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_2 + 378 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 379 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 380 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 381 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_2 + 382 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 383 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_2 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 386 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 387 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_2 + 388 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 389 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_2 + 390 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 391 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_2 + 392 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 393 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 394 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 395 + OFFSET_X, 1, 3.13, 3.13 );
setScaleKey( spep_2 + 396 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 397 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_2 + 398 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 399 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_2 + 400 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 401 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_2 + 402 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 403 + OFFSET_X, 1, 1.89, 1.89 );
setScaleKey( spep_2 + 404 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 405 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_2 + 406 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 407 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_2 + 408 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 409 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 410 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 411 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_2 + 412 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 413 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_2 + 414 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 415 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_2 + 416 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 417 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_2 + 418 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 435 + OFFSET_X, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 436 + OFFSET_X, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 464 + OFFSET_X, 1, 0.04, 0.04 );

setRotateKey( spep_2 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 71 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 72 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 79 + OFFSET_X, 1, -28.2 );
setRotateKey( spep_2 + 80 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 81 + OFFSET_X, 1, -26.5 );
setRotateKey( spep_2 + 82 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 83 + OFFSET_X, 1, -24.7 );
setRotateKey( spep_2 + 84 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 85 + OFFSET_X, 1, -23 );
setRotateKey( spep_2 + 86 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 87 + OFFSET_X, 1, -21.3 );
setRotateKey( spep_2 + 88 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 89 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_2 + 90 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 91 + OFFSET_X, 1, 27.7 );
setRotateKey( spep_2 + 92 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 93 + OFFSET_X, 1, 28.9 );
setRotateKey( spep_2 + 94 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 95 + OFFSET_X, 1, 30.1 );
setRotateKey( spep_2 + 96 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 97 + OFFSET_X, 1, 31.4 );
setRotateKey( spep_2 + 98 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 99 + OFFSET_X, 1, 32.6 );
setRotateKey( spep_2 + 100 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 101 + OFFSET_X, 1, 33.8 );
setRotateKey( spep_2 + 102 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 103 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_2 + 104 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 105 + OFFSET_X, 1, 36.3 );
setRotateKey( spep_2 + 106 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 107 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_2 + 108 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 109 + OFFSET_X, 1, 38.8 );
setRotateKey( spep_2 + 110 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 117 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 118 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 119 + OFFSET_X, 1, -36.1 );
setRotateKey( spep_2 + 120 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 121 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_2 + 122 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 123 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_2 + 124 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 125 + OFFSET_X, 1, -34.7 );
setRotateKey( spep_2 + 126 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 127 + OFFSET_X, 1, -34.3 );
setRotateKey( spep_2 + 128 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 129 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 130 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 131 + OFFSET_X, 1, -4 );
setRotateKey( spep_2 + 132 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 133 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 134 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 135 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_2 + 136 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 137 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 138 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 139 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_2 + 140 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 141 + OFFSET_X, 1, -1.1 );
setRotateKey( spep_2 + 142 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 143 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_2 + 144 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 145 + OFFSET_X, 1, 0 );
setRotateKey( spep_2 + 146 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 147 + OFFSET_X, 1, 0.6 );
setRotateKey( spep_2 + 148 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 149 + OFFSET_X, 1, 1.2 );
setRotateKey( spep_2 + 150 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 157 + OFFSET_X, 1, -36.5 );
setRotateKey( spep_2 + 158 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 159 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_2 + 160 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 161 + OFFSET_X, 1, -34.1 );
setRotateKey( spep_2 + 162 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 163 + OFFSET_X, 1, -33 );
setRotateKey( spep_2 + 164 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 165 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_2 + 166 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 167 + OFFSET_X, 1, -4.6 );
setRotateKey( spep_2 + 168 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 169 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_2 + 170 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 171 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 172 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 173 + OFFSET_X, 1, -3.9 );
setRotateKey( spep_2 + 174 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 175 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_2 + 176 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 177 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_2 + 178 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 179 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_2 + 180 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 181 + OFFSET_X, 1, -3 );
setRotateKey( spep_2 + 182 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 183 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_2 + 184 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 185 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_2 + 186 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 187 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_2 + 188 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 189 + OFFSET_X, 1, -9.3 );
setRotateKey( spep_2 + 190 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 191 + OFFSET_X, 1, -8.4 );
setRotateKey( spep_2 + 192 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 193 + OFFSET_X, 1, -7.5 );
setRotateKey( spep_2 + 194 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 195 + OFFSET_X, 1, -6.7 );
setRotateKey( spep_2 + 196 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 197 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_2 + 198 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 199 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_2 + 200 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 201 + OFFSET_X, 1, -4.1 );
setRotateKey( spep_2 + 202 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 219 + OFFSET_X, 1, 12.3 );
setRotateKey( spep_2 + 220 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 227 + OFFSET_X, 1, -22.9 );
setRotateKey( spep_2 + 228 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 229 + OFFSET_X, 1, -21.4 );
setRotateKey( spep_2 + 230 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 231 + OFFSET_X, 1, -19.9 );
setRotateKey( spep_2 + 232 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 233 + OFFSET_X, 1, -18.3 );
setRotateKey( spep_2 + 234 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 235 + OFFSET_X, 1, -16.8 );
setRotateKey( spep_2 + 236 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 237 + OFFSET_X, 1, -15.3 );
setRotateKey( spep_2 + 238 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 239 + OFFSET_X, 1, -13.8 );
setRotateKey( spep_2 + 240 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 241 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_2 + 242 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 243 + OFFSET_X, 1, -10.7 );
setRotateKey( spep_2 + 244 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 245 + OFFSET_X, 1, -9.2 );
setRotateKey( spep_2 + 246 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 247 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_2 + 248 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 295 + OFFSET_X, 1, 11.5 );
setRotateKey( spep_2 + 296 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 347 + OFFSET_X, 1, 11.8 );
setRotateKey( spep_2 + 348 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 354 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 393 + OFFSET_X, 1, -19.4 );
setRotateKey( spep_2 + 394 + OFFSET_X, 1, -69.2 );
setRotateKey( spep_2 + 464 + OFFSET_X, 1, -69.2 );

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 52;  -- エンドフェイズのフレーム数を置き換える
    
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);

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
--回避しなかった場合
-----------------------------

-- ** 音 ** --
--連打
SE011 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 66, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_2 + 66, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 80, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_2 + 80, 1010, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 102, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 58 );
SE017 = playSeVer2( spep_2 + 104, 1187, "",spep_2 + 152, 0, 32, -1);
SE018 = playSeVer2( spep_2 + 122, 1110, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_2 + 122, 1009, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 144, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 144, 1010, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 144, 1187, "",spep_2 + 192, 0, 32, -1);
SE023 = playSeVer2( spep_2 + 162, 1110, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_2 + 162, 1009, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_2 + 184, 1153, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 184, 1110, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_2 + 200, 44, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_2 + 204, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE029 = playSeVer2( spep_2 + 216, 1187, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 216, 1110, "", 0, 0, 0, -1);

--敵飛んでいく
SE031 = playSeVer2( spep_2 + 224, 1183, "",spep_2 + 372, 0, 56, -1);

--追いかける
SE032 = playSeVer2( spep_2 + 260, 1060, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 260, 1207, "",spep_2 + 346, 0, 34, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 306, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE035 = playSeVer2( spep_2 + 320, 1004, "", 0, 0, 0, -1);

--蹴り飛ばす
SE036 = playSeVer2( spep_2 + 354, 1120, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_2 + 354, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE038 = playSeVer2( spep_2 + 376, 1121, "",spep_2 + 444, 0, 24, -1);

--地面激突
SE039 = playSeVer2( spep_2 + 410, 1159, "", 0, 0, 0, -1);

-- ** おわり ** --
dealDamage( spep_2 + 420 );
endPhase( spep_2 + MAX_FRAME_2 - 2);  -- 532

end
