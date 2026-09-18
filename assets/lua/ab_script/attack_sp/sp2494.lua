--1025590:LR_ピッコロ(潜在能力解放)_必殺技：爆力魔波
--sp_effect_a2_00196
--sp2494

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

--味方側
SP_01 = 161209; --冒頭～両足蹴りまで：手前 ef_001
SP_02 = 161210; --冒頭～両足蹴りまで：奥 ef_002
SP_03 = 161211; --気弾発射～ラスト：手前 ef_003
SP_04 = 161212; --気弾発射～ラスト：奥 ef_004


--敵側
SP_01r = 161213; --敵用・冒頭～両足蹴りまで：手前 ef_001r
SP_03r = 161214; --敵用・気弾発射～ラスト：手前 ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
--changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
--setDisp( 0, 1, 0);

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

--[[setMoveKey(   0,   1,    0, -5000,   0);
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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 正面突進(752F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 752, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 752, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 752, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 752, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 752, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 752, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 752, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 752, first_b, 255 );

spep_x = spep_0 + 44 -4;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き1
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

setMoveKey( spep_0 + 0, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 0, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 1, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 2, 1, 154, -229.4 , 0 );
setMoveKey( spep_0 +1 + 3, 1, 154, -229.4 , 0 );
setMoveKey( spep_0 +1 + 4, 1, 152, -229.2 , 0 );
setMoveKey( spep_0 +1 + 5, 1, 152, -229.2 , 0 );
setMoveKey( spep_0 +1 + 6, 1, 150, -229.1 , 0 );
setMoveKey( spep_0 +1 + 8, 1, 148, -228.9 , 0 );
setMoveKey( spep_0 +1 + 10, 1, 146, -228.7 , 0 );
setMoveKey( spep_0 +1 + 12, 1, 144, -228.5 , 0 );
setMoveKey( spep_0 +1 + 14, 1, 141.9, -228.3 , 0 );
setMoveKey( spep_0 +1 + 16, 1, 139.9, -228.1 , 0 );
setMoveKey( spep_0 +1 + 18, 1, 137.9, -228 , 0 );
setMoveKey( spep_0 +1 + 20, 1, 135.9, -227.8 , 0 );
setMoveKey( spep_0 +1 + 22, 1, 133.9, -227.6 , 0 );
setMoveKey( spep_0 +1 + 24, 1, 131.9, -227.4 , 0 );
setMoveKey( spep_0 +1 + 26, 1, 129.9, -227.2 , 0 );
setMoveKey( spep_0 +1 + 28, 1, 134.6, -234.4 , 0 );
setMoveKey( spep_0 +1 + 30, 1, 145.2, -250.1 , 0 );
setMoveKey( spep_0 +1 + 32, 1, 159, -270.7 , 0 );
setMoveKey( spep_0 +1 + 34, 1, 175.3, -294.9 , 0 );
setMoveKey( spep_0 +1 + 36, 1, 193.5, -322 , 0 );
setMoveKey( spep_0 +1 + 38, 1, 213.4, -351.5 , 0 );
setMoveKey( spep_0 +1 + 40, 1, 314.7, -467.7 , 0 );
setMoveKey( spep_0 +1 + 42, 1, 436.2, -607 , 0 );
setMoveKey( spep_0 +1 + 44, 1, 574.7, -765.9 , 0 );
setMoveKey( spep_0 +1 + 46, 1, 729.1, -942.8 , 0 );
setMoveKey( spep_0 +1 + 48, 1, 898.4, -1137 , 0 );
setMoveKey( spep_0 +1 + 50, 1, 1082.5, -1348 , 0 );
setMoveKey( spep_0 +1 + 52, 1, 1281.3, -1575.9 , 0 );
setMoveKey( spep_0 +1 + 54, 1, 1494.8, -1820.8 , 0 );
setMoveKey( spep_0 +1 + 57, 1, 1724.6, -2086.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 3, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 4, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 5, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 6, 1, 2.6, 2.6 );
setScaleKey( spep_0 +1 + 26, 1, 2.6, 2.6 );
setScaleKey( spep_0 +1 + 28, 1, 2.63, 2.63 );
setScaleKey( spep_0 +1 + 30, 1, 2.7, 2.7 );
setScaleKey( spep_0 +1 + 32, 1, 2.79, 2.79 );
setScaleKey( spep_0 +1 + 34, 1, 2.89, 2.89 );
setScaleKey( spep_0 +1 + 36, 1, 3.01, 3.01 );
setScaleKey( spep_0 +1 + 38, 1, 3.13, 3.13 );
setScaleKey( spep_0 +1 + 40, 1, 3.77, 3.77 );
setScaleKey( spep_0 +1 + 42, 1, 4.54, 4.54 );
setScaleKey( spep_0 +1 + 44, 1, 5.42, 5.42 );
setScaleKey( spep_0 +1 + 46, 1, 6.39, 6.39 );
setScaleKey( spep_0 +1 + 48, 1, 7.47, 7.47 );
setScaleKey( spep_0 +1 + 50, 1, 8.63, 8.63 );
setScaleKey( spep_0 +1 + 52, 1, 9.89, 9.89 );
setScaleKey( spep_0 +1 + 54, 1, 11.24, 11.24 );
setScaleKey( spep_0 +1 + 57, 1, 12.68, 12.68 );

setRotateKey( spep_0 + 0, 1, 4 );
setRotateKey( spep_0 + 1, 1, 4 );
setRotateKey( spep_0 + 2, 1, 4 );
setRotateKey( spep_0 + 3, 1, 4 );
setRotateKey( spep_0 + 4, 1, 4 );
setRotateKey( spep_0 + 5, 1, 4 );
setRotateKey( spep_0 + 6, 1, 4 );
setRotateKey( spep_0 +1 + 57, 1, 4 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 +1 + 156, 1, 1 );
changeAnime( spep_0 +1 + 156, 1, 102 );

setMoveKey( spep_0 +1 + 156, 1, 104.7, 178.7 , 0 );

setScaleKey( spep_0 +1 + 156, 1, 2.1, 2.1 );

setRotateKey( spep_0 +1 + 156, 1, 3.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE003 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 86 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 394, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--顔カットイン
SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 118, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 752 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 168 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 104.7, 178.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 2, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 4, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 6, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 8, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 10, 1, 2.1, 2.1 );

    setRotateKey( SP_dodge + 0, 1, 3.8 );
    setRotateKey( SP_dodge + 10, 1, 3.8 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 +1 + 276, 1, 0 );
changeAnime( spep_0 +1 + 186, 1, 117 );
changeAnime( spep_0 +1 + 190, 1, 104 );
changeAnime( spep_0 +1 + 194, 1, 108 );
changeAnime( spep_0 +1 + 236, 1, 107 );

setMoveKey( spep_0 +1 + 185, 1, 104.7, 178.7 , 0 );--
setMoveKey( spep_0 +1 + 186, 1, 122.1, 206.9 , 0 );
setMoveKey( spep_0 +1 + 189, 1, 122.1, 206.9 , 0 );--
setMoveKey( spep_0 +1 + 190, 1, 139.5, 189.1 , 0 );
setMoveKey( spep_0 +1 + 192, 1, 118.7, 157.6 , 0 );
setMoveKey( spep_0 +1 + 193, 1, 118.7, 157.6 , 0 );--
setMoveKey( spep_0 +1 + 194, 1, 120, 174.3 , 0 );
setMoveKey( spep_0 +1 + 195, 1, 120, 174.3 , 0 );
setMoveKey( spep_0 +1 + 196, 1, 162.7, 195.6 , 0 );
setMoveKey( spep_0 +1 + 197, 1, 162.7, 195.6 , 0 );
setMoveKey( spep_0 +1 + 198, 1, 126, 193.1 , 0 );
setMoveKey( spep_0 +1 + 199, 1, 126, 193.1 , 0 );
setMoveKey( spep_0 +1 + 200, 1, 109.4, 175.4 , 0 );
setMoveKey( spep_0 +1 + 201, 1, 109.4, 175.4 , 0 );
setMoveKey( spep_0 +1 + 202, 1, 76.3, 158.9 , 0 );
setMoveKey( spep_0 +1 + 203, 1, 76.3, 158.9 , 0 );
setMoveKey( spep_0 +1 + 204, 1, 102.3, 165.7 , 0 );
setMoveKey( spep_0 +1 + 205, 1, 102.3, 165.7 , 0 );
setMoveKey( spep_0 +1 + 206, 1, 111.6, 166 , 0 );
setMoveKey( spep_0 +1 + 208, 1, 134.3, 168 , 0 );
setMoveKey( spep_0 +1 + 210, 1, 126.5, 173.8 , 0 );
setMoveKey( spep_0 +1 + 212, 1, 131.7, 166.5 , 0 );
setMoveKey( spep_0 +1 + 214, 1, 117.4, 159.2 , 0 );
setMoveKey( spep_0 +1 + 216, 1, 129.1, 164.9 , 0 );
setMoveKey( spep_0 +1 + 218, 1, 121.3, 157.7 , 0 );
setMoveKey( spep_0 +1 + 220, 1, 126.5, 163.4 , 0 );
setMoveKey( spep_0 +1 + 222, 1, 118.7, 165.9 , 0 );
setMoveKey( spep_0 +1 + 224, 1, 123.9, 161.9 , 0 );
setMoveKey( spep_0 +1 + 226, 1, 122.6, 161.1 , 0 );
setMoveKey( spep_0 +1 + 228, 1, 121.3, 160.3 , 0 );
setMoveKey( spep_0 +1 + 230, 1, 120, 159.6 , 0 );
setMoveKey( spep_0 +1 + 232, 1, 118.7, 158.8 , 0 );
setMoveKey( spep_0 +1 + 234, 1, 117.4, 158 , 0 );
setMoveKey( spep_0 +1 + 235, 1, 117.4, 158 , 0 );--
setMoveKey( spep_0 +1 + 236, 1, 17.5, 241.9 , 0 );
setMoveKey( spep_0 +1 + 237, 1, 17.5, 241.9 , 0 );
setMoveKey( spep_0 +1 + 238, 1, 46.6, 282.8 , 0 );
setMoveKey( spep_0 +1 + 239, 1, 46.6, 282.8 , 0 );
setMoveKey( spep_0 +1 + 240, 1, 66, 313.6 , 0 );
setMoveKey( spep_0 +1 + 241, 1, 66, 313.6 , 0 );
setMoveKey( spep_0 +1 + 242, 1, 103.2, 318.4 , 0 );
setMoveKey( spep_0 +1 + 243, 1, 103.2, 318.4 , 0 );
setMoveKey( spep_0 +1 + 244, 1, 85.5, 322.6 , 0 );
setMoveKey( spep_0 +1 + 245, 1, 85.5, 322.6 , 0 );
setMoveKey( spep_0 +1 + 246, 1, 99.4, 321.5 , 0 );
setMoveKey( spep_0 +1 + 247, 1, 99.4, 321.5 , 0 );
setMoveKey( spep_0 +1 + 248, 1, 97, 304 , 0 );
setMoveKey( spep_0 +1 + 249, 1, 97, 304 , 0 );
setMoveKey( spep_0 +1 + 250, 1, 101.2, 312.6 , 0 );
setMoveKey( spep_0 +1 + 251, 1, 101.2, 312.6 , 0 );
setMoveKey( spep_0 +1 + 252, 1, 92.4, 305 , 0 );
setMoveKey( spep_0 +1 + 253, 1, 92.4, 305 , 0 );
setMoveKey( spep_0 +1 + 254, 1, 103, 303.8 , 0 );
setMoveKey( spep_0 +1 + 255, 1, 103, 303.8 , 0 );
setMoveKey( spep_0 +1 + 256, 1, 100.7, 289.6 , 0 );
setMoveKey( spep_0 +1 + 257, 1, 100.7, 289.6 , 0 );
setMoveKey( spep_0 +1 + 258, 1, 104.8, 294.9 , 0 );
setMoveKey( spep_0 +1 + 259, 1, 104.8, 294.9 , 0 );
setMoveKey( spep_0 +1 + 260, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 261, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 262, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 263, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 264, 1, 925.8, 291.3 , 0 );
setMoveKey( spep_0 +1 + 266, 1, 932.3, 297.8 , 0 );
setMoveKey( spep_0 +1 + 268, 1, 2042.8, 244.7 , 0 );
setMoveKey( spep_0 +1 + 270, 1, 2049.3, 247.9 , 0 );
setMoveKey( spep_0 +1 + 272, 1, 2042.8, 254.4 , 0 );
setMoveKey( spep_0 +1 + 274, 1, 2049.3, 247.9 , 0 );
setMoveKey( spep_0 +1 + 276, 1, 2049.3, 247.9 , 0 );

setScaleKey( spep_0 +1 + 185, 1, 2.1, 2.1 );--
setScaleKey( spep_0 +1 + 186, 1, 1.85, 1.85 );
setScaleKey( spep_0 +1 + 189, 1, 1.85, 1.85 );--
setScaleKey( spep_0 +1 + 190, 1, 1.95, 1.95 );
setScaleKey( spep_0 +1 + 193, 1, 1.95, 1.95 );--
setScaleKey( spep_0 +1 + 194, 1, 3.27, 3.27 );
setScaleKey( spep_0 +1 + 195, 1, 3.27, 3.27 );
setScaleKey( spep_0 +1 + 196, 1, 2.59, 2.59 );
setScaleKey( spep_0 +1 + 197, 1, 2.59, 2.59 );
setScaleKey( spep_0 +1 + 198, 1, 2.29, 2.29 );
setScaleKey( spep_0 +1 + 199, 1, 2.29, 2.29 );
setScaleKey( spep_0 +1 + 200, 1, 1.89, 1.89 );
setScaleKey( spep_0 +1 + 201, 1, 1.89, 1.89 );
setScaleKey( spep_0 +1 + 202, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 203, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 204, 1, 1.74, 1.74 );
setScaleKey( spep_0 +1 + 205, 1, 1.74, 1.74 );
setScaleKey( spep_0 +1 + 206, 1, 1.69, 1.69 );
setScaleKey( spep_0 +1 + 208, 1, 1.65, 1.65 );
setScaleKey( spep_0 +1 + 210, 1, 1.64, 1.64 );
setScaleKey( spep_0 +1 + 212, 1, 1.63, 1.63 );
setScaleKey( spep_0 +1 + 214, 1, 1.62, 1.62 );
setScaleKey( spep_0 +1 + 216, 1, 1.62, 1.62 );
setScaleKey( spep_0 +1 + 218, 1, 1.61, 1.61 );
setScaleKey( spep_0 +1 + 220, 1, 1.6, 1.6 );
setScaleKey( spep_0 +1 + 222, 1, 1.59, 1.59 );
setScaleKey( spep_0 +1 + 224, 1, 1.59, 1.59 );
setScaleKey( spep_0 +1 + 226, 1, 1.58, 1.58 );
setScaleKey( spep_0 +1 + 228, 1, 1.57, 1.57 );
setScaleKey( spep_0 +1 + 230, 1, 1.56, 1.56 );
setScaleKey( spep_0 +1 + 232, 1, 1.56, 1.56 );
setScaleKey( spep_0 +1 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_0 +1 + 235, 1, 1.55, 1.55 );--
setScaleKey( spep_0 +1 + 236, 1, 0.53, 0.53 );
setScaleKey( spep_0 +1 + 237, 1, 0.53, 0.53 );
setScaleKey( spep_0 +1 + 238, 1, 0.81, 0.81 );
setScaleKey( spep_0 +1 + 239, 1, 0.81, 0.81 );
setScaleKey( spep_0 +1 + 240, 1, 0.86, 0.86 );
setScaleKey( spep_0 +1 + 241, 1, 0.86, 0.86 );
setScaleKey( spep_0 +1 + 242, 1, 0.93, 0.93 );
setScaleKey( spep_0 +1 + 243, 1, 0.93, 0.93 );
setScaleKey( spep_0 +1 + 244, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 245, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 246, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 247, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 248, 1, 1.01, 1.01 );
setScaleKey( spep_0 +1 + 255, 1, 1.01, 1.01 );
setScaleKey( spep_0 +1 + 256, 1, 1, 1 );
setScaleKey( spep_0 +1 + 259, 1, 1, 1 );
setScaleKey( spep_0 +1 + 260, 1, 1.96, 1.96 );
setScaleKey( spep_0 +1 + 263, 1, 1.96, 1.96 );
setScaleKey( spep_0 +1 + 264, 1, 4.36, 4.36 );
setScaleKey( spep_0 +1 + 266, 1, 4.36, 4.36 );
setScaleKey( spep_0 +1 + 268, 1, 8.11, 8.11 );
setScaleKey( spep_0 +1 + 274, 1, 8.11, 8.11 );
setScaleKey( spep_0 +1 + 276, 1, 8.11, 8.11 );

setRotateKey( spep_0 +1 + 185, 1, 3.8 );--
setRotateKey( spep_0 +1 + 186, 1, 0 );
setRotateKey( spep_0 +1 + 189, 1, 0 );--
setRotateKey( spep_0 +1 + 190, 1, -27.3 );
setRotateKey( spep_0 +1 + 193, 1, -27.3 );--
setRotateKey( spep_0 +1 + 194, 1, -39.2 );
setRotateKey( spep_0 +1 + 195, 1, -39.2 );
setRotateKey( spep_0 +1 + 196, 1, -41.6 );
setRotateKey( spep_0 +1 + 206, 1, -41.6 );
setRotateKey( spep_0 +1 + 208, 1, -36.9 );
setRotateKey( spep_0 +1 + 210, 1, -35.7 );
setRotateKey( spep_0 +1 + 212, 1, -34.5 );
setRotateKey( spep_0 +1 + 214, 1, -33.3 );
setRotateKey( spep_0 +1 + 216, 1, -32.2 );
setRotateKey( spep_0 +1 + 218, 1, -31 );
setRotateKey( spep_0 +1 + 220, 1, -29.8 );
setRotateKey( spep_0 +1 + 222, 1, -28.6 );
setRotateKey( spep_0 +1 + 224, 1, -27.5 );
setRotateKey( spep_0 +1 + 226, 1, -26.3 );
setRotateKey( spep_0 +1 + 228, 1, -25.1 );
setRotateKey( spep_0 +1 + 230, 1, -23.9 );
setRotateKey( spep_0 +1 + 232, 1, -22.7 );
setRotateKey( spep_0 +1 + 234, 1, -21.6 );
setRotateKey( spep_0 +1 + 235, 1, -21.6 );--
setRotateKey( spep_0 +1 + 236, 1, -8.6 );
setRotateKey( spep_0 +1 + 237, 1, -8.6 );
setRotateKey( spep_0 +1 + 238, 1, -2.9 );
setRotateKey( spep_0 +1 + 243, 1, -2.9 );
setRotateKey( spep_0 +1 + 244, 1, 0.8 );
setRotateKey( spep_0 +1 + 247, 1, 0.8 );
setRotateKey( spep_0 +1 + 248, 1, 0.9 );
setRotateKey( spep_0 +1 + 253, 1, 0.9 );
setRotateKey( spep_0 +1 + 254, 1, 1 );
setRotateKey( spep_0 +1 + 257, 1, 1 );
setRotateKey( spep_0 +1 + 258, 1, 1.1 );
setRotateKey( spep_0 +1 + 259, 1, 1.1 );
setRotateKey( spep_0 +1 + 260, 1, -2.9 );
setRotateKey( spep_0 +1 + 274, 1, -2.9 );
setRotateKey( spep_0 +1 + 276, 1, -2.9 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 +1 + 284, 1, 1 );
setDisp( spep_0 +1 + 292, 1, 0 );
changeAnime( spep_0 +1 + 284, 1, 106 );

setMoveKey( spep_0 +1 + 284, 1, -235.8, 577.8 , 0 );
setMoveKey( spep_0 +1 + 286, 1, -148.7, 424.8 , 0 );
setMoveKey( spep_0 +1 + 288, 1, -61.6, 271.8 , 0 );
setMoveKey( spep_0 +1 + 290, 1, 25.5, 118.8 , 0 );
setMoveKey( spep_0 +1 + 292, 1, 25.5, 118.8 , 0 );

setScaleKey( spep_0 +1 + 284, 1, 0.3, 0.3 );
setScaleKey( spep_0 +1 + 286, 1, 0.26, 0.26 );
setScaleKey( spep_0 +1 + 288, 1, 0.23, 0.23 );
setScaleKey( spep_0 +1 + 290, 1, 0.2, 0.2 );
setScaleKey( spep_0 +1 + 292, 1, 0.2, 0.2 );

setRotateKey( spep_0 +1 + 284, 1, 81.4 );
setRotateKey( spep_0 +1 + 286, 1, 87.3 );
setRotateKey( spep_0 +1 + 288, 1, 93.2 );
setRotateKey( spep_0 +1 + 290, 1, 99.2 );
setRotateKey( spep_0 +1 + 292, 1, 99.2 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 +1 + 662, 1, 1 );
setDisp( spep_0 +1 + 724, 1, 0 );
changeAnime( spep_0 +1 + 662, 1, 106 );
changeAnime( spep_0 +1 + 708, 1, 108 );

setMoveKey( spep_0 +1 + 662, 1, -175, -8.2 , 0 );
setMoveKey( spep_0 +1 + 664, 1, -159.4, -14.1 , 0 );
setMoveKey( spep_0 +1 + 666, 1, -154.1, -17.7 , 0 );
setMoveKey( spep_0 +1 + 668, 1, -139, -14.1 , 0 );
setMoveKey( spep_0 +1 + 670, 1, -132.1, -17.3 , 0 );
setMoveKey( spep_0 +1 + 672, 1, -112.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 674, 1, -102, -15 , 0 );
setMoveKey( spep_0 +1 + 676, 1, -80.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 678, 1, -69, -15.4 , 0 );
setMoveKey( spep_0 +1 + 680, 1, -47, -14.2 , 0 );
setMoveKey( spep_0 +1 + 682, 1, -27.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 684, 1, -19.4, -14.6 , 0 );
setMoveKey( spep_0 +1 + 686, 1, -12.4, -14.8 , 0 );
setMoveKey( spep_0 +1 + 688, 1, -6.7, -15.1 , 0 );
setMoveKey( spep_0 +1 + 690, 1, -2.2, -15.3 , 0 );
setMoveKey( spep_0 +1 + 692, 1, 0.9, -15.4 , 0 );
setMoveKey( spep_0 +1 + 694, 1, 2.6, -16.7 , 0 );
setMoveKey( spep_0 +1 + 696, 1, 4.1, -17.9 , 0 );
setMoveKey( spep_0 +1 + 698, 1, 5.4, -18.9 , 0 );
setMoveKey( spep_0 +1 + 700, 1, 6.6, -19.9 , 0 );
setMoveKey( spep_0 +1 + 702, 1, 7.6, -20.8 , 0 );
setMoveKey( spep_0 +1 + 704, 1, 8.4, -21.4 , 0 );
setMoveKey( spep_0 +1 + 706, 1, 9.1, -22.1 , 0 );
setMoveKey( spep_0 +1 + 707, 1, 9.1, -22.1 , 0 );--
setMoveKey( spep_0 +1 + 708, 1, 20.6, -125.1 , 0 );
setMoveKey( spep_0 +1 + 709, 1, 20.6, -125.1 , 0 );
setMoveKey( spep_0 +1 + 710, 1, 13.1, -107.1 , 0 );
setMoveKey( spep_0 +1 + 711, 1, 13.1, -107.1 , 0 );
setMoveKey( spep_0 +1 + 712, 1, 13, -66.2 , 0 );
setMoveKey( spep_0 +1 + 713, 1, 13, -66.2 , 0 );
setMoveKey( spep_0 +1 + 714, 1, 2.4, -57.9 , 0 );
setMoveKey( spep_0 +1 + 715, 1, 2.4, -57.9 , 0 );
setMoveKey( spep_0 +1 + 716, 1, 12.9, -66.4 , 0 );
setMoveKey( spep_0 +1 + 717, 1, 12.9, -66.4 , 0 );
setMoveKey( spep_0 +1 + 718, 1, 101.9, -347.7 , 0 );
setMoveKey( spep_0 +1 + 720, 1, 168.6, -519.9 , 0 );
setMoveKey( spep_0 +1 + 722, 1, 191.5, -602.2 , 0 );
setMoveKey( spep_0 +1 + 724, 1, 191.5, -602.2 , 0 );

setScaleKey( spep_0 +1 + 662, 1, 0.58, 0.58 );
setScaleKey( spep_0 +1 + 707, 1, 0.58, 0.58 );--
setScaleKey( spep_0 +1 + 708, 1, 1.21, 1.21 );
setScaleKey( spep_0 +1 + 709, 1, 1.21, 1.21 );
setScaleKey( spep_0 +1 + 710, 1, 0.98, 0.98 );
setScaleKey( spep_0 +1 + 711, 1, 0.98, 0.98 );
setScaleKey( spep_0 +1 + 712, 1, 0.74, 0.74 );
setScaleKey( spep_0 +1 + 713, 1, 0.74, 0.74 );
setScaleKey( spep_0 +1 + 714, 1, 0.73, 0.73 );
setScaleKey( spep_0 +1 + 715, 1, 0.73, 0.73 );
setScaleKey( spep_0 +1 + 716, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 717, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 718, 1, 0.71, 0.71 );
setScaleKey( spep_0 +1 + 720, 1, 0.7, 0.7 );
setScaleKey( spep_0 +1 + 722, 1, 0.69, 0.69 );
setScaleKey( spep_0 +1 + 724, 1, 0.69, 0.69 );

setRotateKey( spep_0 +1 + 662, 1, 16 );
setRotateKey( spep_0 +1 + 682, 1, 16 );
setRotateKey( spep_0 +1 + 684, 1, 16.8 );
setRotateKey( spep_0 +1 + 686, 1, 17.4 );
setRotateKey( spep_0 +1 + 688, 1, 18 );
setRotateKey( spep_0 +1 + 690, 1, 18.4 );
setRotateKey( spep_0 +1 + 692, 1, 18.8 );
setRotateKey( spep_0 +1 + 694, 1, 20 );
setRotateKey( spep_0 +1 + 696, 1, 21.1 );
setRotateKey( spep_0 +1 + 698, 1, 22.1 );
setRotateKey( spep_0 +1 + 700, 1, 23 );
setRotateKey( spep_0 +1 + 702, 1, 23.7 );
setRotateKey( spep_0 +1 + 704, 1, 24.4 );
setRotateKey( spep_0 +1 + 706, 1, 25 );
setRotateKey( spep_0 +1 + 707, 1, 25 );--
setRotateKey( spep_0 +1 + 708, 1, 59.1 );
setRotateKey( spep_0 +1 + 724, 1, 59.1 );

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_0 + 162, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE007 = playSeVer2( spep_0 + 184, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 184, 1359, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 218, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 228, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 228, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE013 = playSeVer2( spep_0 + 250, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE013, 146 );
SE014 = playSeVer2( spep_0 + 252, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE014, 92 );


--瞬間移動
SE024 = playSeVer2( spep_0 + 316, 1109, "", 0, 0, 0, -1);


--壁激突
SE015 = playSeVer2( spep_0 + 282, 1159, "",spep_0 + 532, 0, 36, -1);

--岩集まる
SE016 = playSeVer2( spep_0 + 362, 1168, "",spep_0 + 526, 8, 32, -1);
setSeVolumeByWorkId( spep_0 + 362, SE016, 67 );
setStartTimeMs( SE016,  517 );
SE017 = playSeVer2( spep_0 + 364, 1250, "",spep_0 + 522, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 364, SE017, 260 );
SE018 = playSeVer2( spep_0 + 364, 1007, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 366, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 382, 1297, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE020, 186 );
SE021 = playSeVer2( spep_0 + 384, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 74 );
SE022 = playSeVer2( spep_0 + 402, 1061, "",spep_0 + 426, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 402, SE022, 76 );
SE023 = playSeVer2( spep_0 + 432, 1220, "", 0, 0, 0, -1);
setPitch( spep_0 + 432, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );

--振りかぶる
SE025 = playSeVer2( spep_0 + 518, 1116, "",spep_0 + 554, 0, 14, -1);
SE026 = playSeVer2( spep_0 + 518, 1117, "",spep_0 + 582, 0, 40, -1);

--岩飛んでいく
SE027 = playSeVer2( spep_0 + 556, 1193, "",spep_0 + 658, 0, 16, -1);
SE028 = playSeVer2( spep_0 + 556, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 556, 1121, "",spep_0 + 652, 0, 14, -1);

--壁激突
SE030 = playSeVer2( spep_0 + 632, 1023, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 636, 1159, "",spep_0 + 762, 0, 6, -1);

--蹴り落とす
SE032 = playSeVer2( spep_0 + 694, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 698, 1123, "",spep_0 + 762, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 698, SE033, 80 );
SE034 = playSeVer2( spep_0 + 698, 1359, "",spep_0 + 762, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 752;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
	speff = entryEffect( spep_1, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_1 + 0, SE_05 );

--気弾溜め
SE036 = playSeVer2( spep_1 + 88, 1154, "",spep_1 + 148, 0, 10, -1);
SE037 = playSeVer2( spep_1 + 88, 1282, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE037, 47 );
SE038 = playSeVer2( spep_1 + 88, 1356, "",spep_1 + 148, 0, 10, -1);
SE039 = playSeVer2( spep_1 + 88, 1296, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE039, 112 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射～ラスト(270F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾発射～ラスト：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 270, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 270, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾発射～ラスト：奥 ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 270, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 270, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 +1 + 60, 1, 1 );
setDisp( spep_2 +1 + 130, 1, 0 );
changeAnime( spep_2 +1 + 60, 1, 108 );

setMoveKey( spep_2 +1 + 60, 1, 11.4, 131.9 , 0 );
setMoveKey( spep_2 +1 + 62, 1, 12.2, 110.5 , 0 );
setMoveKey( spep_2 +1 + 64, 1, 12.9, 90.5 , 0 );
setMoveKey( spep_2 +1 + 66, 1, 13.6, 72 , 0 );
setMoveKey( spep_2 +1 + 68, 1, 14.3, 55 , 0 );
setMoveKey( spep_2 +1 + 70, 1, 14.8, 39.5 , 0 );
setMoveKey( spep_2 +1 + 72, 1, 15.4, 25.4 , 0 );
setMoveKey( spep_2 +1 + 74, 1, 15.8, 12.8 , 0 );
setMoveKey( spep_2 +1 + 76, 1, 16.3, 1.7 , 0 );
setMoveKey( spep_2 +1 + 78, 1, 16.6, -7.9 , 0 );
setMoveKey( spep_2 +1 + 80, 1, 16.9, -16 , 0 );
setMoveKey( spep_2 +1 + 82, 1, 17.2, -20.4 , 0 );
setMoveKey( spep_2 +1 + 84, 1, 17.5, -24.7 , 0 );
setMoveKey( spep_2 +1 + 86, 1, 17.9, -28.9 , 0 );
setMoveKey( spep_2 +1 + 88, 1, 18.1, -33.1 , 0 );
setMoveKey( spep_2 +1 + 90, 1, 18.5, -37.2 , 0 );
setMoveKey( spep_2 +1 + 92, 1, 18.8, -41.3 , 0 );
setMoveKey( spep_2 +1 + 94, 1, 19.1, -45.3 , 0 );
setMoveKey( spep_2 +1 + 96, 1, 19.4, -49.3 , 0 );
setMoveKey( spep_2 +1 + 98, 1, 19.7, -53.1 , 0 );
setMoveKey( spep_2 +1 + 100, 1, 20, -56.9 , 0 );
setMoveKey( spep_2 +1 + 102, 1, 20.3, -60.7 , 0 );
setMoveKey( spep_2 +1 + 104, 1, 20.5, -64.3 , 0 );
setMoveKey( spep_2 +1 + 106, 1, 20.9, -67.9 , 0 );
setMoveKey( spep_2 +1 + 108, 1, 21.1, -71.5 , 0 );
setMoveKey( spep_2 +1 + 110, 1, 21.4, -75 , 0 );
setMoveKey( spep_2 +1 + 112, 1, 21.6, -78.4 , 0 );
setMoveKey( spep_2 +1 + 114, 1, 21.9, -81.8 , 0 );
setMoveKey( spep_2 +1 + 116, 1, 22.1, -85.1 , 0 );
setMoveKey( spep_2 +1 + 118, 1, 22.3, -88.3 , 0 );
setMoveKey( spep_2 +1 + 120, 1, 22.6, -91.5 , 0 );
setMoveKey( spep_2 +1 + 122, 1, 22.8, -94.7 , 0 );
setMoveKey( spep_2 +1 + 124, 1, 23, -97.7 , 0 );
setMoveKey( spep_2 +1 + 126, 1, 23.3, -100.7 , 0 );
setMoveKey( spep_2 +1 + 128, 1, 23.6, -103.6 , 0 );
setMoveKey( spep_2 +1 + 130, 1, 23.6, -103.6 , 0 );

setScaleKey( spep_2 +1 + 60, 1, 0.36, 0.36 );
setScaleKey( spep_2 +1 + 130, 1, 0.36, 0.36 );

setRotateKey( spep_2 +1 + 60, 1, 80.6 );
setRotateKey( spep_2 +1 + 62, 1, 82 );
setRotateKey( spep_2 +1 + 64, 1, 83.2 );
setRotateKey( spep_2 +1 + 66, 1, 84.3 );
setRotateKey( spep_2 +1 + 68, 1, 85.4 );
setRotateKey( spep_2 +1 + 70, 1, 86.4 );
setRotateKey( spep_2 +1 + 72, 1, 87.2 );
setRotateKey( spep_2 +1 + 74, 1, 88 );
setRotateKey( spep_2 +1 + 76, 1, 88.7 );
setRotateKey( spep_2 +1 + 78, 1, 89.3 );
setRotateKey( spep_2 +1 + 80, 1, 89.8 );
setRotateKey( spep_2 +1 + 82, 1, 90.7 );
setRotateKey( spep_2 +1 + 84, 1, 91.5 );
setRotateKey( spep_2 +1 + 86, 1, 92.3 );
setRotateKey( spep_2 +1 + 88, 1, 93.1 );
setRotateKey( spep_2 +1 + 90, 1, 93.9 );
setRotateKey( spep_2 +1 + 92, 1, 94.7 );
setRotateKey( spep_2 +1 + 94, 1, 95.5 );
setRotateKey( spep_2 +1 + 96, 1, 96.3 );
setRotateKey( spep_2 +1 + 98, 1, 97 );
setRotateKey( spep_2 +1 + 100, 1, 97.8 );
setRotateKey( spep_2 +1 + 102, 1, 98.5 );
setRotateKey( spep_2 +1 + 104, 1, 99.2 );
setRotateKey( spep_2 +1 + 106, 1, 99.9 );
setRotateKey( spep_2 +1 + 108, 1, 100.6 );
setRotateKey( spep_2 +1 + 110, 1, 101.3 );
setRotateKey( spep_2 +1 + 112, 1, 101.9 );
setRotateKey( spep_2 +1 + 114, 1, 102.6 );
setRotateKey( spep_2 +1 + 116, 1, 103.2 );
setRotateKey( spep_2 +1 + 118, 1, 103.9 );
setRotateKey( spep_2 +1 + 120, 1, 104.5 );
setRotateKey( spep_2 +1 + 122, 1, 105.1 );
setRotateKey( spep_2 +1 + 124, 1, 105.7 );
setRotateKey( spep_2 +1 + 126, 1, 106.3 );
setRotateKey( spep_2 +1 + 128, 1, 106.8 );
setRotateKey( spep_2 +1 + 130, 1, 106.8 );

-- ** 音 ** --
--気弾発射
SE040 = playSeVer2( spep_2 + 38, 1145, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE040, 83 );
SE041 = playSeVer2( spep_2 + 38, 1122, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE041, 71 );
SE042 = playSeVer2( spep_2 + 38, 1213, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE042, 52 );
SE043 = playSeVer2( spep_2 + 38, 1109, "", 0, 0, 0, -1);

--爆発
SE044 = playSeVer2( spep_2 + 104, 1067, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 104, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 124, 1069, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 140, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 270 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 160 );
endPhase( spep_2 + 260 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 正面突進(752F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 752, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 752, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 752, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 752, first_f, 255 );

first_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --正面突進  ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 752, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 752, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 752, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 752, first_b, 255);

spep_x = spep_0 + 44 -4;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
--敵の動き1
changeAnime( spep_0 + 0, 1, 102 );
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 58, 1, 0 );

setMoveKey( spep_0 + 0, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 0, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 1, 1, 156, -229.6 , 0 );
setMoveKey( spep_0 +1 + 2, 1, 154, -229.4 , 0 );
setMoveKey( spep_0 +1 + 3, 1, 154, -229.4 , 0 );
setMoveKey( spep_0 +1 + 4, 1, 152, -229.2 , 0 );
setMoveKey( spep_0 +1 + 5, 1, 152, -229.2 , 0 );
setMoveKey( spep_0 +1 + 6, 1, 150, -229.1 , 0 );
setMoveKey( spep_0 +1 + 8, 1, 148, -228.9 , 0 );
setMoveKey( spep_0 +1 + 10, 1, 146, -228.7 , 0 );
setMoveKey( spep_0 +1 + 12, 1, 144, -228.5 , 0 );
setMoveKey( spep_0 +1 + 14, 1, 141.9, -228.3 , 0 );
setMoveKey( spep_0 +1 + 16, 1, 139.9, -228.1 , 0 );
setMoveKey( spep_0 +1 + 18, 1, 137.9, -228 , 0 );
setMoveKey( spep_0 +1 + 20, 1, 135.9, -227.8 , 0 );
setMoveKey( spep_0 +1 + 22, 1, 133.9, -227.6 , 0 );
setMoveKey( spep_0 +1 + 24, 1, 131.9, -227.4 , 0 );
setMoveKey( spep_0 +1 + 26, 1, 129.9, -227.2 , 0 );
setMoveKey( spep_0 +1 + 28, 1, 134.6, -234.4 , 0 );
setMoveKey( spep_0 +1 + 30, 1, 145.2, -250.1 , 0 );
setMoveKey( spep_0 +1 + 32, 1, 159, -270.7 , 0 );
setMoveKey( spep_0 +1 + 34, 1, 175.3, -294.9 , 0 );
setMoveKey( spep_0 +1 + 36, 1, 193.5, -322 , 0 );
setMoveKey( spep_0 +1 + 38, 1, 213.4, -351.5 , 0 );
setMoveKey( spep_0 +1 + 40, 1, 314.7, -467.7 , 0 );
setMoveKey( spep_0 +1 + 42, 1, 436.2, -607 , 0 );
setMoveKey( spep_0 +1 + 44, 1, 574.7, -765.9 , 0 );
setMoveKey( spep_0 +1 + 46, 1, 729.1, -942.8 , 0 );
setMoveKey( spep_0 +1 + 48, 1, 898.4, -1137 , 0 );
setMoveKey( spep_0 +1 + 50, 1, 1082.5, -1348 , 0 );
setMoveKey( spep_0 +1 + 52, 1, 1281.3, -1575.9 , 0 );
setMoveKey( spep_0 +1 + 54, 1, 1494.8, -1820.8 , 0 );
setMoveKey( spep_0 +1 + 57, 1, 1724.6, -2086.2 , 0 );

setScaleKey( spep_0 + 0, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 1, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 2, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 3, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 4, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 5, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 6, 1, 2.6, 2.6 );
setScaleKey( spep_0 +1 + 26, 1, 2.6, 2.6 );
setScaleKey( spep_0 +1 + 28, 1, 2.63, 2.63 );
setScaleKey( spep_0 +1 + 30, 1, 2.7, 2.7 );
setScaleKey( spep_0 +1 + 32, 1, 2.79, 2.79 );
setScaleKey( spep_0 +1 + 34, 1, 2.89, 2.89 );
setScaleKey( spep_0 +1 + 36, 1, 3.01, 3.01 );
setScaleKey( spep_0 +1 + 38, 1, 3.13, 3.13 );
setScaleKey( spep_0 +1 + 40, 1, 3.77, 3.77 );
setScaleKey( spep_0 +1 + 42, 1, 4.54, 4.54 );
setScaleKey( spep_0 +1 + 44, 1, 5.42, 5.42 );
setScaleKey( spep_0 +1 + 46, 1, 6.39, 6.39 );
setScaleKey( spep_0 +1 + 48, 1, 7.47, 7.47 );
setScaleKey( spep_0 +1 + 50, 1, 8.63, 8.63 );
setScaleKey( spep_0 +1 + 52, 1, 9.89, 9.89 );
setScaleKey( spep_0 +1 + 54, 1, 11.24, 11.24 );
setScaleKey( spep_0 +1 + 57, 1, 12.68, 12.68 );

setRotateKey( spep_0 + 0, 1, 4 );
setRotateKey( spep_0 + 1, 1, 4 );
setRotateKey( spep_0 + 2, 1, 4 );
setRotateKey( spep_0 + 3, 1, 4 );
setRotateKey( spep_0 + 4, 1, 4 );
setRotateKey( spep_0 + 5, 1, 4 );
setRotateKey( spep_0 + 6, 1, 4 );
setRotateKey( spep_0 +1 + 57, 1, 4 );

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 +1 + 156, 1, 1 );
changeAnime( spep_0 +1 + 156, 1, 102 );

setMoveKey( spep_0 +1 + 156, 1, 104.7, 178.7 , 0 );

setScaleKey( spep_0 +1 + 156, 1, 2.1, 2.1 );

setRotateKey( spep_0 +1 + 156, 1, 3.8 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );
SE003 = playSeVer2( spep_0 + 22, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 22, SE003, 86 );

--環境音
SE002 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 394, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 25 );

--顔カットイン
--SE004 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--瞬間移動
SE005 = playSeVer2( spep_0 + 118, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 752 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 168 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE005, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 2, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 4, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 104.7, 178.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 104.7, 178.7 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 2, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 4, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 6, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 8, 1, 2.1, 2.1 );
    setScaleKey( SP_dodge + 10, 1, 2.1, 2.1 );

    setRotateKey( SP_dodge + 0, 1, 3.8 );
    setRotateKey( SP_dodge + 10, 1, 3.8 );
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
setDisp( spep_0 +1 + 276, 1, 0 );
changeAnime( spep_0 +1 + 186, 1, 117 );
changeAnime( spep_0 +1 + 190, 1, 104 );
changeAnime( spep_0 +1 + 194, 1, 108 );
changeAnime( spep_0 +1 + 236, 1, 107 );

setMoveKey( spep_0 +1 + 185, 1, 104.7, 178.7 , 0 );--
setMoveKey( spep_0 +1 + 186, 1, 122.1, 206.9 , 0 );
setMoveKey( spep_0 +1 + 189, 1, 122.1, 206.9 , 0 );--
setMoveKey( spep_0 +1 + 190, 1, 139.5, 189.1 , 0 );
setMoveKey( spep_0 +1 + 192, 1, 118.7, 157.6 , 0 );
setMoveKey( spep_0 +1 + 193, 1, 118.7, 157.6 , 0 );--
setMoveKey( spep_0 +1 + 194, 1, 120, 174.3 , 0 );
setMoveKey( spep_0 +1 + 195, 1, 120, 174.3 , 0 );
setMoveKey( spep_0 +1 + 196, 1, 162.7, 195.6 , 0 );
setMoveKey( spep_0 +1 + 197, 1, 162.7, 195.6 , 0 );
setMoveKey( spep_0 +1 + 198, 1, 126, 193.1 , 0 );
setMoveKey( spep_0 +1 + 199, 1, 126, 193.1 , 0 );
setMoveKey( spep_0 +1 + 200, 1, 109.4, 175.4 , 0 );
setMoveKey( spep_0 +1 + 201, 1, 109.4, 175.4 , 0 );
setMoveKey( spep_0 +1 + 202, 1, 76.3, 158.9 , 0 );
setMoveKey( spep_0 +1 + 203, 1, 76.3, 158.9 , 0 );
setMoveKey( spep_0 +1 + 204, 1, 102.3, 165.7 , 0 );
setMoveKey( spep_0 +1 + 205, 1, 102.3, 165.7 , 0 );
setMoveKey( spep_0 +1 + 206, 1, 111.6, 166 , 0 );
setMoveKey( spep_0 +1 + 208, 1, 134.3, 168 , 0 );
setMoveKey( spep_0 +1 + 210, 1, 126.5, 173.8 , 0 );
setMoveKey( spep_0 +1 + 212, 1, 131.7, 166.5 , 0 );
setMoveKey( spep_0 +1 + 214, 1, 117.4, 159.2 , 0 );
setMoveKey( spep_0 +1 + 216, 1, 129.1, 164.9 , 0 );
setMoveKey( spep_0 +1 + 218, 1, 121.3, 157.7 , 0 );
setMoveKey( spep_0 +1 + 220, 1, 126.5, 163.4 , 0 );
setMoveKey( spep_0 +1 + 222, 1, 118.7, 165.9 , 0 );
setMoveKey( spep_0 +1 + 224, 1, 123.9, 161.9 , 0 );
setMoveKey( spep_0 +1 + 226, 1, 122.6, 161.1 , 0 );
setMoveKey( spep_0 +1 + 228, 1, 121.3, 160.3 , 0 );
setMoveKey( spep_0 +1 + 230, 1, 120, 159.6 , 0 );
setMoveKey( spep_0 +1 + 232, 1, 118.7, 158.8 , 0 );
setMoveKey( spep_0 +1 + 234, 1, 117.4, 158 , 0 );
setMoveKey( spep_0 +1 + 235, 1, 117.4, 158 , 0 );--
setMoveKey( spep_0 +1 + 236, 1, 17.5, 241.9 , 0 );
setMoveKey( spep_0 +1 + 237, 1, 17.5, 241.9 , 0 );
setMoveKey( spep_0 +1 + 238, 1, 46.6, 282.8 , 0 );
setMoveKey( spep_0 +1 + 239, 1, 46.6, 282.8 , 0 );
setMoveKey( spep_0 +1 + 240, 1, 66, 313.6 , 0 );
setMoveKey( spep_0 +1 + 241, 1, 66, 313.6 , 0 );
setMoveKey( spep_0 +1 + 242, 1, 103.2, 318.4 , 0 );
setMoveKey( spep_0 +1 + 243, 1, 103.2, 318.4 , 0 );
setMoveKey( spep_0 +1 + 244, 1, 85.5, 322.6 , 0 );
setMoveKey( spep_0 +1 + 245, 1, 85.5, 322.6 , 0 );
setMoveKey( spep_0 +1 + 246, 1, 99.4, 321.5 , 0 );
setMoveKey( spep_0 +1 + 247, 1, 99.4, 321.5 , 0 );
setMoveKey( spep_0 +1 + 248, 1, 97, 304 , 0 );
setMoveKey( spep_0 +1 + 249, 1, 97, 304 , 0 );
setMoveKey( spep_0 +1 + 250, 1, 101.2, 312.6 , 0 );
setMoveKey( spep_0 +1 + 251, 1, 101.2, 312.6 , 0 );
setMoveKey( spep_0 +1 + 252, 1, 92.4, 305 , 0 );
setMoveKey( spep_0 +1 + 253, 1, 92.4, 305 , 0 );
setMoveKey( spep_0 +1 + 254, 1, 103, 303.8 , 0 );
setMoveKey( spep_0 +1 + 255, 1, 103, 303.8 , 0 );
setMoveKey( spep_0 +1 + 256, 1, 100.7, 289.6 , 0 );
setMoveKey( spep_0 +1 + 257, 1, 100.7, 289.6 , 0 );
setMoveKey( spep_0 +1 + 258, 1, 104.8, 294.9 , 0 );
setMoveKey( spep_0 +1 + 259, 1, 104.8, 294.9 , 0 );
setMoveKey( spep_0 +1 + 260, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 261, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 262, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 263, 1, 199.1, 114.7 , 0 );
setMoveKey( spep_0 +1 + 264, 1, 925.8, 291.3 , 0 );
setMoveKey( spep_0 +1 + 266, 1, 932.3, 297.8 , 0 );
setMoveKey( spep_0 +1 + 268, 1, 2042.8, 244.7 , 0 );
setMoveKey( spep_0 +1 + 270, 1, 2049.3, 247.9 , 0 );
setMoveKey( spep_0 +1 + 272, 1, 2042.8, 254.4 , 0 );
setMoveKey( spep_0 +1 + 274, 1, 2049.3, 247.9 , 0 );
setMoveKey( spep_0 +1 + 276, 1, 2049.3, 247.9 , 0 );

setScaleKey( spep_0 +1 + 185, 1, 2.1, 2.1 );--
setScaleKey( spep_0 +1 + 186, 1, 1.85, 1.85 );
setScaleKey( spep_0 +1 + 189, 1, 1.85, 1.85 );--
setScaleKey( spep_0 +1 + 190, 1, 1.95, 1.95 );
setScaleKey( spep_0 +1 + 193, 1, 1.95, 1.95 );--
setScaleKey( spep_0 +1 + 194, 1, 3.27, 3.27 );
setScaleKey( spep_0 +1 + 195, 1, 3.27, 3.27 );
setScaleKey( spep_0 +1 + 196, 1, 2.59, 2.59 );
setScaleKey( spep_0 +1 + 197, 1, 2.59, 2.59 );
setScaleKey( spep_0 +1 + 198, 1, 2.29, 2.29 );
setScaleKey( spep_0 +1 + 199, 1, 2.29, 2.29 );
setScaleKey( spep_0 +1 + 200, 1, 1.89, 1.89 );
setScaleKey( spep_0 +1 + 201, 1, 1.89, 1.89 );
setScaleKey( spep_0 +1 + 202, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 203, 1, 1.76, 1.76 );
setScaleKey( spep_0 +1 + 204, 1, 1.74, 1.74 );
setScaleKey( spep_0 +1 + 205, 1, 1.74, 1.74 );
setScaleKey( spep_0 +1 + 206, 1, 1.69, 1.69 );
setScaleKey( spep_0 +1 + 208, 1, 1.65, 1.65 );
setScaleKey( spep_0 +1 + 210, 1, 1.64, 1.64 );
setScaleKey( spep_0 +1 + 212, 1, 1.63, 1.63 );
setScaleKey( spep_0 +1 + 214, 1, 1.62, 1.62 );
setScaleKey( spep_0 +1 + 216, 1, 1.62, 1.62 );
setScaleKey( spep_0 +1 + 218, 1, 1.61, 1.61 );
setScaleKey( spep_0 +1 + 220, 1, 1.6, 1.6 );
setScaleKey( spep_0 +1 + 222, 1, 1.59, 1.59 );
setScaleKey( spep_0 +1 + 224, 1, 1.59, 1.59 );
setScaleKey( spep_0 +1 + 226, 1, 1.58, 1.58 );
setScaleKey( spep_0 +1 + 228, 1, 1.57, 1.57 );
setScaleKey( spep_0 +1 + 230, 1, 1.56, 1.56 );
setScaleKey( spep_0 +1 + 232, 1, 1.56, 1.56 );
setScaleKey( spep_0 +1 + 234, 1, 1.55, 1.55 );
setScaleKey( spep_0 +1 + 235, 1, 1.55, 1.55 );--
setScaleKey( spep_0 +1 + 236, 1, 0.53, 0.53 );
setScaleKey( spep_0 +1 + 237, 1, 0.53, 0.53 );
setScaleKey( spep_0 +1 + 238, 1, 0.81, 0.81 );
setScaleKey( spep_0 +1 + 239, 1, 0.81, 0.81 );
setScaleKey( spep_0 +1 + 240, 1, 0.86, 0.86 );
setScaleKey( spep_0 +1 + 241, 1, 0.86, 0.86 );
setScaleKey( spep_0 +1 + 242, 1, 0.93, 0.93 );
setScaleKey( spep_0 +1 + 243, 1, 0.93, 0.93 );
setScaleKey( spep_0 +1 + 244, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 245, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 246, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 247, 1, 1.02, 1.02 );
setScaleKey( spep_0 +1 + 248, 1, 1.01, 1.01 );
setScaleKey( spep_0 +1 + 255, 1, 1.01, 1.01 );
setScaleKey( spep_0 +1 + 256, 1, 1, 1 );
setScaleKey( spep_0 +1 + 259, 1, 1, 1 );
setScaleKey( spep_0 +1 + 260, 1, 1.96, 1.96 );
setScaleKey( spep_0 +1 + 263, 1, 1.96, 1.96 );
setScaleKey( spep_0 +1 + 264, 1, 4.36, 4.36 );
setScaleKey( spep_0 +1 + 266, 1, 4.36, 4.36 );
setScaleKey( spep_0 +1 + 268, 1, 8.11, 8.11 );
setScaleKey( spep_0 +1 + 274, 1, 8.11, 8.11 );
setScaleKey( spep_0 +1 + 276, 1, 8.11, 8.11 );

setRotateKey( spep_0 +1 + 185, 1, 3.8 );--
setRotateKey( spep_0 +1 + 186, 1, 0 );
setRotateKey( spep_0 +1 + 189, 1, 0 );--
setRotateKey( spep_0 +1 + 190, 1, -27.3 );
setRotateKey( spep_0 +1 + 193, 1, -27.3 );--
setRotateKey( spep_0 +1 + 194, 1, -39.2 );
setRotateKey( spep_0 +1 + 195, 1, -39.2 );
setRotateKey( spep_0 +1 + 196, 1, -41.6 );
setRotateKey( spep_0 +1 + 206, 1, -41.6 );
setRotateKey( spep_0 +1 + 208, 1, -36.9 );
setRotateKey( spep_0 +1 + 210, 1, -35.7 );
setRotateKey( spep_0 +1 + 212, 1, -34.5 );
setRotateKey( spep_0 +1 + 214, 1, -33.3 );
setRotateKey( spep_0 +1 + 216, 1, -32.2 );
setRotateKey( spep_0 +1 + 218, 1, -31 );
setRotateKey( spep_0 +1 + 220, 1, -29.8 );
setRotateKey( spep_0 +1 + 222, 1, -28.6 );
setRotateKey( spep_0 +1 + 224, 1, -27.5 );
setRotateKey( spep_0 +1 + 226, 1, -26.3 );
setRotateKey( spep_0 +1 + 228, 1, -25.1 );
setRotateKey( spep_0 +1 + 230, 1, -23.9 );
setRotateKey( spep_0 +1 + 232, 1, -22.7 );
setRotateKey( spep_0 +1 + 234, 1, -21.6 );
setRotateKey( spep_0 +1 + 235, 1, -21.6 );--
setRotateKey( spep_0 +1 + 236, 1, -8.6 );
setRotateKey( spep_0 +1 + 237, 1, -8.6 );
setRotateKey( spep_0 +1 + 238, 1, -2.9 );
setRotateKey( spep_0 +1 + 243, 1, -2.9 );
setRotateKey( spep_0 +1 + 244, 1, 0.8 );
setRotateKey( spep_0 +1 + 247, 1, 0.8 );
setRotateKey( spep_0 +1 + 248, 1, 0.9 );
setRotateKey( spep_0 +1 + 253, 1, 0.9 );
setRotateKey( spep_0 +1 + 254, 1, 1 );
setRotateKey( spep_0 +1 + 257, 1, 1 );
setRotateKey( spep_0 +1 + 258, 1, 1.1 );
setRotateKey( spep_0 +1 + 259, 1, 1.1 );
setRotateKey( spep_0 +1 + 260, 1, -2.9 );
setRotateKey( spep_0 +1 + 274, 1, -2.9 );
setRotateKey( spep_0 +1 + 276, 1, -2.9 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 +1 + 284, 1, 1 );
setDisp( spep_0 +1 + 292, 1, 0 );
changeAnime( spep_0 +1 + 284, 1, 106 );

setMoveKey( spep_0 +1 + 284, 1, -235.8, 577.8 , 0 );
setMoveKey( spep_0 +1 + 286, 1, -148.7, 424.8 , 0 );
setMoveKey( spep_0 +1 + 288, 1, -61.6, 271.8 , 0 );
setMoveKey( spep_0 +1 + 290, 1, 25.5, 118.8 , 0 );
setMoveKey( spep_0 +1 + 292, 1, 25.5, 118.8 , 0 );

setScaleKey( spep_0 +1 + 284, 1, 0.3, 0.3 );
setScaleKey( spep_0 +1 + 286, 1, 0.26, 0.26 );
setScaleKey( spep_0 +1 + 288, 1, 0.23, 0.23 );
setScaleKey( spep_0 +1 + 290, 1, 0.2, 0.2 );
setScaleKey( spep_0 +1 + 292, 1, 0.2, 0.2 );

setRotateKey( spep_0 +1 + 284, 1, 81.4 );
setRotateKey( spep_0 +1 + 286, 1, 87.3 );
setRotateKey( spep_0 +1 + 288, 1, 93.2 );
setRotateKey( spep_0 +1 + 290, 1, 99.2 );
setRotateKey( spep_0 +1 + 292, 1, 99.2 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 +1 + 662, 1, 1 );
setDisp( spep_0 +1 + 724, 1, 0 );
changeAnime( spep_0 +1 + 662, 1, 106 );
changeAnime( spep_0 +1 + 708, 1, 108 );

setMoveKey( spep_0 +1 + 662, 1, -175, -8.2 , 0 );
setMoveKey( spep_0 +1 + 664, 1, -159.4, -14.1 , 0 );
setMoveKey( spep_0 +1 + 666, 1, -154.1, -17.7 , 0 );
setMoveKey( spep_0 +1 + 668, 1, -139, -14.1 , 0 );
setMoveKey( spep_0 +1 + 670, 1, -132.1, -17.3 , 0 );
setMoveKey( spep_0 +1 + 672, 1, -112.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 674, 1, -102, -15 , 0 );
setMoveKey( spep_0 +1 + 676, 1, -80.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 678, 1, -69, -15.4 , 0 );
setMoveKey( spep_0 +1 + 680, 1, -47, -14.2 , 0 );
setMoveKey( spep_0 +1 + 682, 1, -27.8, -14.2 , 0 );
setMoveKey( spep_0 +1 + 684, 1, -19.4, -14.6 , 0 );
setMoveKey( spep_0 +1 + 686, 1, -12.4, -14.8 , 0 );
setMoveKey( spep_0 +1 + 688, 1, -6.7, -15.1 , 0 );
setMoveKey( spep_0 +1 + 690, 1, -2.2, -15.3 , 0 );
setMoveKey( spep_0 +1 + 692, 1, 0.9, -15.4 , 0 );
setMoveKey( spep_0 +1 + 694, 1, 2.6, -16.7 , 0 );
setMoveKey( spep_0 +1 + 696, 1, 4.1, -17.9 , 0 );
setMoveKey( spep_0 +1 + 698, 1, 5.4, -18.9 , 0 );
setMoveKey( spep_0 +1 + 700, 1, 6.6, -19.9 , 0 );
setMoveKey( spep_0 +1 + 702, 1, 7.6, -20.8 , 0 );
setMoveKey( spep_0 +1 + 704, 1, 8.4, -21.4 , 0 );
setMoveKey( spep_0 +1 + 706, 1, 9.1, -22.1 , 0 );
setMoveKey( spep_0 +1 + 707, 1, 9.1, -22.1 , 0 );--
setMoveKey( spep_0 +1 + 708, 1, 20.6, -125.1 , 0 );
setMoveKey( spep_0 +1 + 709, 1, 20.6, -125.1 , 0 );
setMoveKey( spep_0 +1 + 710, 1, 13.1, -107.1 , 0 );
setMoveKey( spep_0 +1 + 711, 1, 13.1, -107.1 , 0 );
setMoveKey( spep_0 +1 + 712, 1, 13, -66.2 , 0 );
setMoveKey( spep_0 +1 + 713, 1, 13, -66.2 , 0 );
setMoveKey( spep_0 +1 + 714, 1, 2.4, -57.9 , 0 );
setMoveKey( spep_0 +1 + 715, 1, 2.4, -57.9 , 0 );
setMoveKey( spep_0 +1 + 716, 1, 12.9, -66.4 , 0 );
setMoveKey( spep_0 +1 + 717, 1, 12.9, -66.4 , 0 );
setMoveKey( spep_0 +1 + 718, 1, 101.9, -347.7 , 0 );
setMoveKey( spep_0 +1 + 720, 1, 168.6, -519.9 , 0 );
setMoveKey( spep_0 +1 + 722, 1, 191.5, -602.2 , 0 );
setMoveKey( spep_0 +1 + 724, 1, 191.5, -602.2 , 0 );

setScaleKey( spep_0 +1 + 662, 1, 0.58, 0.58 );
setScaleKey( spep_0 +1 + 707, 1, 0.58, 0.58 );--
setScaleKey( spep_0 +1 + 708, 1, 1.21, 1.21 );
setScaleKey( spep_0 +1 + 709, 1, 1.21, 1.21 );
setScaleKey( spep_0 +1 + 710, 1, 0.98, 0.98 );
setScaleKey( spep_0 +1 + 711, 1, 0.98, 0.98 );
setScaleKey( spep_0 +1 + 712, 1, 0.74, 0.74 );
setScaleKey( spep_0 +1 + 713, 1, 0.74, 0.74 );
setScaleKey( spep_0 +1 + 714, 1, 0.73, 0.73 );
setScaleKey( spep_0 +1 + 715, 1, 0.73, 0.73 );
setScaleKey( spep_0 +1 + 716, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 717, 1, 0.72, 0.72 );
setScaleKey( spep_0 +1 + 718, 1, 0.71, 0.71 );
setScaleKey( spep_0 +1 + 720, 1, 0.7, 0.7 );
setScaleKey( spep_0 +1 + 722, 1, 0.69, 0.69 );
setScaleKey( spep_0 +1 + 724, 1, 0.69, 0.69 );

setRotateKey( spep_0 +1 + 662, 1, 16 );
setRotateKey( spep_0 +1 + 682, 1, 16 );
setRotateKey( spep_0 +1 + 684, 1, 16.8 );
setRotateKey( spep_0 +1 + 686, 1, 17.4 );
setRotateKey( spep_0 +1 + 688, 1, 18 );
setRotateKey( spep_0 +1 + 690, 1, 18.4 );
setRotateKey( spep_0 +1 + 692, 1, 18.8 );
setRotateKey( spep_0 +1 + 694, 1, 20 );
setRotateKey( spep_0 +1 + 696, 1, 21.1 );
setRotateKey( spep_0 +1 + 698, 1, 22.1 );
setRotateKey( spep_0 +1 + 700, 1, 23 );
setRotateKey( spep_0 +1 + 702, 1, 23.7 );
setRotateKey( spep_0 +1 + 704, 1, 24.4 );
setRotateKey( spep_0 +1 + 706, 1, 25 );
setRotateKey( spep_0 +1 + 707, 1, 25 );--
setRotateKey( spep_0 +1 + 708, 1, 59.1 );
setRotateKey( spep_0 +1 + 724, 1, 59.1 );

-- ** 音 ** --
--瞬間移動
SE006 = playSeVer2( spep_0 + 162, 1109, "", 0, 0, 0, -1);

--膝蹴り
SE007 = playSeVer2( spep_0 + 184, 1153, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 184, 1359, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 184, 1110, "", 0, 0, 0, -1);

--パンチ
SE010 = playSeVer2( spep_0 + 218, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 228, 1359, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_0 + 228, 1187, "", 0, 0, 0, -1);

--敵吹き飛ぶ
SE013 = playSeVer2( spep_0 + 250, 1277, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 250, SE013, 146 );
SE014 = playSeVer2( spep_0 + 252, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE014, 92 );


--瞬間移動
SE024 = playSeVer2( spep_0 + 316, 1109, "", 0, 0, 0, -1);


--壁激突
SE015 = playSeVer2( spep_0 + 282, 1159, "",spep_0 + 532, 0, 36, -1);

--岩集まる
SE016 = playSeVer2( spep_0 + 362, 1168, "",spep_0 + 526, 8, 32, -1);
setSeVolumeByWorkId( spep_0 + 362, SE016, 67 );
setStartTimeMs( SE016,  517 );
SE017 = playSeVer2( spep_0 + 364, 1250, "",spep_0 + 522, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 364, SE017, 260 );
SE018 = playSeVer2( spep_0 + 364, 1007, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 366, 1011, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 382, 1297, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 382, SE020, 186 );
SE021 = playSeVer2( spep_0 + 384, 1220, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 384, SE021, 74 );
SE022 = playSeVer2( spep_0 + 402, 1061, "",spep_0 + 426, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 402, SE022, 76 );
SE023 = playSeVer2( spep_0 + 432, 1220, "", 0, 0, 0, -1);
setPitch( spep_0 + 432, SE023, -300 );
setTimeStretch( SE023, 0.8, 30, 4 );

--振りかぶる
SE025 = playSeVer2( spep_0 + 518, 1116, "",spep_0 + 554, 0, 14, -1);
SE026 = playSeVer2( spep_0 + 518, 1117, "",spep_0 + 582, 0, 40, -1);

--岩飛んでいく
SE027 = playSeVer2( spep_0 + 556, 1193, "",spep_0 + 658, 0, 16, -1);
SE028 = playSeVer2( spep_0 + 556, 1027, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 556, 1121, "",spep_0 + 652, 0, 14, -1);

--壁激突
SE030 = playSeVer2( spep_0 + 632, 1023, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 636, 1159, "",spep_0 + 762, 0, 6, -1);

--蹴り落とす
SE032 = playSeVer2( spep_0 + 694, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 698, 1123, "",spep_0 + 762, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 698, SE033, 80 );
SE034 = playSeVer2( spep_0 + 698, 1359, "",spep_0 + 762, 0, 6, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 752;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 90, shuchusen, 0 );
setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--気弾溜め
SE036 = playSeVer2( spep_1 + 88, 1154, "",spep_1 + 148, 0, 10, -1);
SE037 = playSeVer2( spep_1 + 88, 1282, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE037, 47 );
SE038 = playSeVer2( spep_1 + 88, 1356, "",spep_1 + 148, 0, 10, -1);
SE039 = playSeVer2( spep_1 + 88, 1296, "",spep_1 + 148, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 88, SE039, 112 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾発射～ラスト(270F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --気弾発射～ラスト：手前 ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 270, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 270, finish_f, 255 );

finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );  --気弾発射～ラスト：奥   ef_004
setEffMoveKey( spep_2 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 270, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 270, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 270, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 270, finish_b, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 +1 + 60, 1, 1 );
setDisp( spep_2 +1 + 130, 1, 0 );
changeAnime( spep_2 +1 + 60, 1, 108 );

setMoveKey( spep_2 +1 + 60, 1, 11.4, 131.9 , 0 );
setMoveKey( spep_2 +1 + 62, 1, 12.2, 110.5 , 0 );
setMoveKey( spep_2 +1 + 64, 1, 12.9, 90.5 , 0 );
setMoveKey( spep_2 +1 + 66, 1, 13.6, 72 , 0 );
setMoveKey( spep_2 +1 + 68, 1, 14.3, 55 , 0 );
setMoveKey( spep_2 +1 + 70, 1, 14.8, 39.5 , 0 );
setMoveKey( spep_2 +1 + 72, 1, 15.4, 25.4 , 0 );
setMoveKey( spep_2 +1 + 74, 1, 15.8, 12.8 , 0 );
setMoveKey( spep_2 +1 + 76, 1, 16.3, 1.7 , 0 );
setMoveKey( spep_2 +1 + 78, 1, 16.6, -7.9 , 0 );
setMoveKey( spep_2 +1 + 80, 1, 16.9, -16 , 0 );
setMoveKey( spep_2 +1 + 82, 1, 17.2, -20.4 , 0 );
setMoveKey( spep_2 +1 + 84, 1, 17.5, -24.7 , 0 );
setMoveKey( spep_2 +1 + 86, 1, 17.9, -28.9 , 0 );
setMoveKey( spep_2 +1 + 88, 1, 18.1, -33.1 , 0 );
setMoveKey( spep_2 +1 + 90, 1, 18.5, -37.2 , 0 );
setMoveKey( spep_2 +1 + 92, 1, 18.8, -41.3 , 0 );
setMoveKey( spep_2 +1 + 94, 1, 19.1, -45.3 , 0 );
setMoveKey( spep_2 +1 + 96, 1, 19.4, -49.3 , 0 );
setMoveKey( spep_2 +1 + 98, 1, 19.7, -53.1 , 0 );
setMoveKey( spep_2 +1 + 100, 1, 20, -56.9 , 0 );
setMoveKey( spep_2 +1 + 102, 1, 20.3, -60.7 , 0 );
setMoveKey( spep_2 +1 + 104, 1, 20.5, -64.3 , 0 );
setMoveKey( spep_2 +1 + 106, 1, 20.9, -67.9 , 0 );
setMoveKey( spep_2 +1 + 108, 1, 21.1, -71.5 , 0 );
setMoveKey( spep_2 +1 + 110, 1, 21.4, -75 , 0 );
setMoveKey( spep_2 +1 + 112, 1, 21.6, -78.4 , 0 );
setMoveKey( spep_2 +1 + 114, 1, 21.9, -81.8 , 0 );
setMoveKey( spep_2 +1 + 116, 1, 22.1, -85.1 , 0 );
setMoveKey( spep_2 +1 + 118, 1, 22.3, -88.3 , 0 );
setMoveKey( spep_2 +1 + 120, 1, 22.6, -91.5 , 0 );
setMoveKey( spep_2 +1 + 122, 1, 22.8, -94.7 , 0 );
setMoveKey( spep_2 +1 + 124, 1, 23, -97.7 , 0 );
setMoveKey( spep_2 +1 + 126, 1, 23.3, -100.7 , 0 );
setMoveKey( spep_2 +1 + 128, 1, 23.6, -103.6 , 0 );
setMoveKey( spep_2 +1 + 130, 1, 23.6, -103.6 , 0 );

setScaleKey( spep_2 +1 + 60, 1, 0.36, 0.36 );
setScaleKey( spep_2 +1 + 130, 1, 0.36, 0.36 );

setRotateKey( spep_2 +1 + 60, 1, 80.6 );
setRotateKey( spep_2 +1 + 62, 1, 82 );
setRotateKey( spep_2 +1 + 64, 1, 83.2 );
setRotateKey( spep_2 +1 + 66, 1, 84.3 );
setRotateKey( spep_2 +1 + 68, 1, 85.4 );
setRotateKey( spep_2 +1 + 70, 1, 86.4 );
setRotateKey( spep_2 +1 + 72, 1, 87.2 );
setRotateKey( spep_2 +1 + 74, 1, 88 );
setRotateKey( spep_2 +1 + 76, 1, 88.7 );
setRotateKey( spep_2 +1 + 78, 1, 89.3 );
setRotateKey( spep_2 +1 + 80, 1, 89.8 );
setRotateKey( spep_2 +1 + 82, 1, 90.7 );
setRotateKey( spep_2 +1 + 84, 1, 91.5 );
setRotateKey( spep_2 +1 + 86, 1, 92.3 );
setRotateKey( spep_2 +1 + 88, 1, 93.1 );
setRotateKey( spep_2 +1 + 90, 1, 93.9 );
setRotateKey( spep_2 +1 + 92, 1, 94.7 );
setRotateKey( spep_2 +1 + 94, 1, 95.5 );
setRotateKey( spep_2 +1 + 96, 1, 96.3 );
setRotateKey( spep_2 +1 + 98, 1, 97 );
setRotateKey( spep_2 +1 + 100, 1, 97.8 );
setRotateKey( spep_2 +1 + 102, 1, 98.5 );
setRotateKey( spep_2 +1 + 104, 1, 99.2 );
setRotateKey( spep_2 +1 + 106, 1, 99.9 );
setRotateKey( spep_2 +1 + 108, 1, 100.6 );
setRotateKey( spep_2 +1 + 110, 1, 101.3 );
setRotateKey( spep_2 +1 + 112, 1, 101.9 );
setRotateKey( spep_2 +1 + 114, 1, 102.6 );
setRotateKey( spep_2 +1 + 116, 1, 103.2 );
setRotateKey( spep_2 +1 + 118, 1, 103.9 );
setRotateKey( spep_2 +1 + 120, 1, 104.5 );
setRotateKey( spep_2 +1 + 122, 1, 105.1 );
setRotateKey( spep_2 +1 + 124, 1, 105.7 );
setRotateKey( spep_2 +1 + 126, 1, 106.3 );
setRotateKey( spep_2 +1 + 128, 1, 106.8 );
setRotateKey( spep_2 +1 + 130, 1, 106.8 );

-- ** 音 ** --
--気弾発射
SE040 = playSeVer2( spep_2 + 38, 1145, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE040, 83 );
SE041 = playSeVer2( spep_2 + 38, 1122, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE041, 71 );
SE042 = playSeVer2( spep_2 + 38, 1213, "",spep_2 + 134, 0, 22, -1);
setSeVolumeByWorkId( spep_2 + 38, SE042, 52 );
SE043 = playSeVer2( spep_2 + 38, 1109, "", 0, 0, 0, -1);

--爆発
SE044 = playSeVer2( spep_2 + 104, 1067, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 104, 1024, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 124, 1069, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 140, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 270 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 160 );
endPhase( spep_2 + 260 );

end