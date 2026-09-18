--1022940:クリリン&孫悟飯(幼年期)_かめはめ波&魔閃光_sp2255
--sp_effect_a1_00311
--sp2255

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
SP_01 = 158190; --開幕（道着） ef_001
SP_02 = 158192; --悟飯蹴り（共通）　前面 ef_002
SP_03 = 158193; --悟飯蹴り（道着）　背面 ef_003
SP_04 = 158195; --クリリン飛び上がり(道着) ef_004
SP_05 = 158198; --クリリン撃ち落とし（共通）　前面 ef_005
SP_06 = 158200; --クリリン撃ち落とし（道着）　背面 ef_006
SP_07 = 158203; --敵が落下（共通） ef_007
SP_08 = 158204; --悟飯追撃（道着） ef_008
SP_09 = 158206; --悟飯地面パンチ（道着）前面 ef_009
SP_10 = 158208; --悟飯地面パンチ（共通）背面 ef_010
SP_11 = 158209; --着地して気を溜める２人（道着） ef_011
SP_12 = 158211; --飛び上がって発射準備する２人（道着） ef_012
SP_13 = 158213; --発射（道着） ef_013
SP_14 = 158215; --螺旋状に迫る光弾（共通） ef_014
SP_15 = 158216; --敵に迫る光弾（共通）　前面 ef_015
SP_16 = 158217; --敵に迫る光弾（共通）　背面 ef_016
SP_17 = 158218; --爆発フィニッシュ（共通） ef_017

--敵側
SP_02r = 158306; --悟飯蹴り（共通）　前面　敵側 ef_002e
SP_04r = 158197; --クリリン飛び上がり（道着）　敵側 ef_004e
SP_05r = 158199; --クリリン撃ち落とし（共通）　前面　敵側 ef_005e
SP_06r = 158202; --クリリン撃ち落とし（道着）　背面　敵側 ef_006e

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開幕(126F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 126, 0x100, -1, 0, 0, 0 );  --開幕（道着）	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 0 );

spep_x = spep_0 + 28;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 126 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126-1, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 126-1, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 126-1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 42 -2, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 42 -1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 126-1, shuchusen1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, 100 );
setTimeStretch( SE001, 1.07, 30, 4 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

------------------------------------------------------
-- 悟飯蹴り(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
gkick_f = entryEffectLife( spep_1 + 0, SP_02, 76, 0x100, -1, 0, 0, 0 );  --悟飯蹴り（共通）　前面 ef_002
setEffMoveKey( spep_1 + 0, gkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, gkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, gkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gkick_f, 0 );
setEffRotateKey( spep_1 + 76, gkick_f, 0 );
setEffAlphaKey( spep_1 + 0, gkick_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, gkick_f, 255 );
setEffAlphaKey( spep_1 + 76, gkick_f, 0 );

gkick_b = entryEffectLife( spep_1 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --悟飯蹴り（道着）　背面 ef_003
setEffMoveKey( spep_1 + 0, gkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, gkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, gkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gkick_b, 0 );
setEffRotateKey( spep_1 + 76, gkick_b, 0 );
setEffAlphaKey( spep_1 + 0, gkick_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, gkick_b, 255 );
setEffAlphaKey( spep_1 + 76, gkick_b, 0 );

-- ** 書き文字エントリー ** --
ctkizuki = entryEffectLife( spep_1 -3 + 16,  10000, 32 -1, 0x100, -1, 0, 108.8, 150.4 );
setEffMoveKey( spep_1 -3 + 16, ctkizuki, 108.8, 150.4 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctkizuki, 99.4, 191 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctkizuki, 93.3, 217.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 47, ctkizuki, 89.7, 231.4 , 0 );

setEffScaleKey( spep_1 -3 + 16, ctkizuki, 0.55, 0.55 );
setEffScaleKey( spep_1 -3 + 18, ctkizuki, 1.78, 1.78 );
setEffScaleKey( spep_1 -3 + 20, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 22, ctkizuki, 2.57, 2.57 );
setEffScaleKey( spep_1 -3 + 24, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 47, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 16, ctkizuki, 0.55, 0.55 );
setEffScaleKey( spep_1 -3 + 18, ctkizuki, 1.78, 1.78 );
setEffScaleKey( spep_1 -3 + 20, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 22, ctkizuki, 2.57, 2.57 );
setEffScaleKey( spep_1 -3 + 24, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 47, ctkizuki, 3, 3 );

setEffRotateKey( spep_1 -3 + 16, ctkizuki, -19.1 );
setEffRotateKey( spep_1 -3 + 18, ctkizuki, -19.2 );
setEffRotateKey( spep_1 -3 + 47, ctkizuki, -19.2 );

setEffAlphaKey( spep_1 -3 + 16, ctkizuki, 255 );
setEffAlphaKey( spep_1 -3 + 47, ctkizuki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 159.3, -935.1 , 0 );
setMoveKey( spep_1 + 1, 1, 159.3, -820.4 , 0 );
setMoveKey( spep_1 + 2, 1, 159.3, -705.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 159.3, -591 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 159.3, -476.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 159.3, -361.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 159.3, -246.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 159.3, -132.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 159.3, -132.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 159.3, -133.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 159.3, -133.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 159.3, -134.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 159.3, -134.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 159.3, -135.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 159.3, -135.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 159.3, -136.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 159.3, -136.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--画面遷移
SE003 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 61 );

--瞬間移動
SE004 = playSeVer2( spep_1 + 10, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 159.3, -136.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 159.3, -137.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 159.3, -137.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 159.3, -138.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, 159.3, -138.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 159.3, -139.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 66, 1, 0 );
changeAnime( spep_1 -3 + 48, 1, 106 );

setMoveKey( spep_1 -3 + 34, 1, 159.3, -137.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 159.3, -137.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 159.3, -138.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 159.3, -138.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 159.3, -139.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 159.3, -139.9 , 0 );
setMoveKey( spep_1 -3 + 47, 1, 159.3, -140.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 58.4, -72.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 161.8, -206.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 163.2, -317.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 288.7, -335.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 282.1, -450.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 359.5, -554.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 416.9, -643.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 474.4, -731.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 531.8, -820.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 531.8, -820.3 , 0 );

setScaleKey( spep_1 -3 + 48, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 50, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 52, 1, 3.12, 3.12 );
setScaleKey( spep_1 -3 + 54, 1, 3.43, 3.43 );
setScaleKey( spep_1 -3 + 56, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 58, 1, 4.05, 4.05 );
setScaleKey( spep_1 -3 + 60, 1, 4.36, 4.36 );
setScaleKey( spep_1 -3 + 62, 1, 4.67, 4.67 );
setScaleKey( spep_1 -3 + 64, 1, 4.98, 4.98 );
setScaleKey( spep_1 -3 + 66, 1, 4.98, 4.98 );

setRotateKey( spep_1 -3 + 47, 1, 0 );
setRotateKey( spep_1 -3 + 48, 1, -28.1 );
setRotateKey( spep_1 -3 + 50, 1, -26.1 );
setRotateKey( spep_1 -3 + 52, 1, -24 );
setRotateKey( spep_1 -3 + 54, 1, -21.9 );
setRotateKey( spep_1 -3 + 56, 1, -19.8 );
setRotateKey( spep_1 -3 + 58, 1, -17.8 );
setRotateKey( spep_1 -3 + 60, 1, -15.7 );
setRotateKey( spep_1 -3 + 62, 1, -13.6 );
setRotateKey( spep_1 -3 + 64, 1, -11.5 );
setRotateKey( spep_1 -3 + 66, 1, -11.5 );

-- ** 音 ** --
--悟飯蹴り
SE005 = playSeVer2( spep_1 + 40, 1001, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_1 + 40, SE005, 72 );
SE006 = playSeVer2( spep_1 + 42, 1187, "",spep_1 +76 + 34, 0, 48, 1.0);
setSeVolumeByWorkId( spep_1 + 42, SE006, 60 );
SE007 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_1 + 44, SE007, 87 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- クリリン飛び上がり(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kjump = entryEffectLife( spep_2 + 0, SP_04, 46, 0x100, -1, 0, 0, 0 );  --クリリン飛び上がり(道着) ef_004
setEffMoveKey( spep_2 + 0, kjump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, kjump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kjump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kjump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kjump, 0 );
setEffRotateKey( spep_2 + 46, kjump, 0 );
setEffAlphaKey( spep_2 + 0, kjump, 255 );
setEffAlphaKey( spep_2 + 46 -1, kjump, 255 );
setEffAlphaKey( spep_2 + 46, kjump, 0 );

-- ** 音 ** --
--クリリン振りかぶる
SE008 = playSeVer2( spep_2 + 4, 1116, "",spep_2 +44, 0, 20, 1.0);
SE009 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, 1.0);
SE010 = playSeVer2( spep_2 + 40, 1123, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 40, SE010, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;

------------------------------------------------------
-- クリリン撃ち落とし(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
khammer_f = entryEffectLife( spep_3 + 0, SP_05, 46 +4, 0x100, -1, 0, 0, 0 );  --クリリン撃ち落とし（共通）　前面 ef_005
setEffMoveKey( spep_3 + 0,khammer_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46 +4,khammer_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0,khammer_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46 +4,khammer_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,khammer_f, 0 );
setEffRotateKey( spep_3 + 46 +4,khammer_f, 0 );
setEffAlphaKey( spep_3 + 0,khammer_f, 255 );
setEffAlphaKey( spep_3 + 46 +4 -1,khammer_f, 255 );
setEffAlphaKey( spep_3 + 46 +4,khammer_f, 0 );

khummer_b = entryEffectLife( spep_3 + 0, SP_06, 46 +4, 0x80, -1, 0, 0, 0 );  --クリリン撃ち落とし（道着）　背面 ef_006
setEffMoveKey( spep_3 + 0, khummer_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46 +4, khummer_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, khummer_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46 +4, khummer_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, khummer_b, 0 );
setEffRotateKey( spep_3 + 46 +4, khummer_b, 0 );
setEffAlphaKey( spep_3 + 0, khummer_b, 255 );
setEffAlphaKey( spep_3 + 46 +4 -1, khummer_b, 255 );
setEffAlphaKey( spep_3 + 46 +4, khummer_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 +1 + 30, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 + 1, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 + 2, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 284.7, -196.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 307, -238.3 , 0 );
setMoveKey( spep_3 +1 + 6, 1, 225.9, -108.2 , 0 );
setMoveKey( spep_3 +1 + 8, 1, 199.2, -221.7 , 0 );
setMoveKey( spep_3 +1 + 10, 1, 336.7, -133.9 , 0 );
setMoveKey( spep_3 +1 + 12, 1, 262.7, -187.4 , 0 );
setMoveKey( spep_3 +1 + 14, 1, 269.2, -190.5 , 0 );
setMoveKey( spep_3 +1 + 16, 1, 309.8, -213.7 , 0 );
setMoveKey( spep_3 +1 + 18, 1, 331.1, -230.5 , 0 );
setMoveKey( spep_3 +1 + 20, 1, 358.9, -249.4 , 0 );
setMoveKey( spep_3 +1 + 22, 1, 386.7, -268.3 , 0 );
setMoveKey( spep_3 +1 + 24, 1, 436, -301.9 , 0 );
setMoveKey( spep_3 +1 + 26, 1, 485.4, -335.5 , 0 );
setMoveKey( spep_3 +1 + 28, 1, 534.7, -369.1 , 0 );
setMoveKey( spep_3 +1 + 30, 1, 534.7, -369.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.15, 1.16 );
setScaleKey( spep_3 + 1, 1, 1.15, 1.16 );
setScaleKey( spep_3 + 2, 1, 1.15, 1.16 );
setScaleKey( spep_3 -3 + 6, 1, 1.95, 1.96 );
setScaleKey( spep_3 -3 + 8, 1, 1.8, 1.81 );
setScaleKey( spep_3 +1 + 6, 1, 1.71, 1.71 );
setScaleKey( spep_3 +1 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_3 +1 + 10, 1, 1.69, 1.7 );
setScaleKey( spep_3 +1 + 12, 1, 1.83, 1.83 );
setScaleKey( spep_3 +1 + 14, 1, 1.96, 1.97 );
setScaleKey( spep_3 +1 + 16, 1, 2.18, 2.19 );
setScaleKey( spep_3 +1 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_3 +1 + 20, 1, 2.62, 2.62 );
setScaleKey( spep_3 +1 + 22, 1, 2.84, 2.84 );
setScaleKey( spep_3 +1 + 24, 1, 3.22, 3.23 );
setScaleKey( spep_3 +1 + 26, 1, 3.61, 3.61 );
setScaleKey( spep_3 +1 + 28, 1, 4, 4 );
setScaleKey( spep_3 +1 + 30, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 40.1 );
setRotateKey( spep_3 + 1, 1, 40.1 );
setRotateKey( spep_3 + 2, 1, 40.1 );
setRotateKey( spep_3 + 3, 1, 40.2 );
setRotateKey( spep_3 +1 + 30, 1, 40.2 );

-- ** 音 ** --
--敵飛んでいく
SE011 = playSeVer2( spep_3 + 28 +4, 1183, "", 0, 0, 0, -1);

SE012 = playSeVer2( spep_3 + 28 +4, 1121, "",spep_3 +36 +36 + 12 +4, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 28 +4, SE012, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 +4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46 +4;

------------------------------------------------------
-- 敵が落下(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_4 + 0, SP_07, 36, 0x80, -1, 0, 0, 0 );  --敵が落下（共通） ef_007
setEffMoveKey( spep_4 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, emove, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, emove, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, emove, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, emove, 0 );
setEffRotateKey( spep_4 + 36, emove, 0 );
setEffAlphaKey( spep_4 + 0, emove, 255 );
setEffAlphaKey( spep_4 + 36 -1, emove, 255 );
setEffAlphaKey( spep_4 + 36, emove, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 39, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -258.1, -219.3 , 0 );
setMoveKey( spep_4 + 1, 1, -221.8, -181.9 , 0 );
setMoveKey( spep_4 + 2, 1, -185.5, -144.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -149.3, -107.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -113, -69.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -105.9, -63 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -98.8, -56.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -91.8, -49.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -84.7, -42.8 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -77.6, -36 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -70.5, -29.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -63.4, -22.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -56.3, -15.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -49.2, -9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -42.2, -2.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -35.1, 4.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -28, 11.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -20.9, 18 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -13.8, 24.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -6.7, 31.6 , 0 );
setMoveKey( spep_4 -3 + 39, 1, -6.7, 31.6 , 0 );

setScaleKey( spep_4 + 0, 1, 9.69, 9.69 );
setScaleKey( spep_4 + 1, 1, 8.28, 8.28 );
setScaleKey( spep_4 + 2, 1, 6.86, 6.86 );
setScaleKey( spep_4 -3 + 6, 1, 5.43, 5.43 );
setScaleKey( spep_4 -3 + 8, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 10, 1, 3.76, 3.76 );
setScaleKey( spep_4 -3 + 12, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 14, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 16, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 18, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 22, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 30, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 39, 1, 0.2, 0.2 );

setRotateKey( spep_4 + 0, 1, 56.7 );
setRotateKey( spep_4 -3 + 39, 1, 56.7 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;

------------------------------------------------------
-- 悟飯追撃(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
gmove = entryEffectLife( spep_5 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --悟飯追撃（道着） ef_008
setEffMoveKey( spep_5 + 0, gmove, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, gmove, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gmove, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, gmove, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gmove, 0 );
setEffRotateKey( spep_5 + 56, gmove, 0 );
setEffAlphaKey( spep_5 + 0, gmove, 255 );
setEffAlphaKey( spep_5 + 56 -1, gmove, 255 );
setEffAlphaKey( spep_5 + 56, gmove, 0 );

-- ** 音 ** --
--悟飯迫る
SE013 = playSeVer2( spep_5 + 4, 1121, "",spep_5 +56 + 14, 10, 20, -1);
setSeVolumeByWorkId( spep_5 + 4, SE013, 83 );
setStartTimeMs( SE013,  717 );
setPitch( spep_5 + 4, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );
SE014 = playSeVer2( spep_5 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 2, SE014, 46 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 悟飯地面パンチ(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gpunch_f = entryEffectLife( spep_6 + 0, SP_09, 56, 0x100, -1, 0, 0, 0 );  --悟飯地面パンチ（道着）前面 ef_009
setEffMoveKey( spep_6 + 0, gpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gpunch_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gpunch_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gpunch_f, 0 );
setEffRotateKey( spep_6 + 56, gpunch_f, 0 );
setEffAlphaKey( spep_6 + 0, gpunch_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, gpunch_f, 255 );
setEffAlphaKey( spep_6 + 56, gpunch_f, 0 );

gpunch_b = entryEffectLife( spep_6 + 0, SP_10, 56, 0x80, -1, 0, 0, 0 );  --悟飯地面パンチ（共通）背面 ef_010
setEffMoveKey( spep_6 + 0, gpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gpunch_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gpunch_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gpunch_b, 0 );
setEffRotateKey( spep_6 + 56, gpunch_b, 0 );
setEffAlphaKey( spep_6 + 0, gpunch_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, gpunch_b, 255 );
setEffAlphaKey( spep_6 + 56, gpunch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 12, 1, 1 );
setDisp( spep_6 -3 + 59, 1, 0 );
changeAnime( spep_6 -3 + 12, 1, 108 );

setMoveKey( spep_6 -3 + 12, 1, -86.1, -515.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -110.1, -495.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -140, -467 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -85.1, -519.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -47.9, -548.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -83.2, -541.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -142.1, -549.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -96.1, -511.4 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -56, -471 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -77.1, -477.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -110.1, -469.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -110.1, -463.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -116, -455 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -107.1, -469.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -110.1, -469.7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -110.1, -463.4 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -116, -455 , 0 );
setMoveKey( spep_6 -3 + 54, 1, -107.1, -469.3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, -116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, -101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 59, 1, -101.2, -457.5 , 0 );

setScaleKey( spep_6 -3 + 12, 1, 8, 8 );
setScaleKey( spep_6 -3 + 14, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 16, 1, 8, 8 );
setScaleKey( spep_6 -3 + 18, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 20, 1, 8, 8 );
setScaleKey( spep_6 -3 + 22, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 24, 1, 8, 8 );
setScaleKey( spep_6 -3 + 26, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 28, 1, 8, 8 );
setScaleKey( spep_6 -3 + 30, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 32, 1, 8, 8 );
setScaleKey( spep_6 -3 + 34, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 36, 1, 8, 8 );
setScaleKey( spep_6 -3 + 38, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 40, 1, 8, 8 );
setScaleKey( spep_6 -3 + 42, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 44, 1, 8, 8 );
setScaleKey( spep_6 -3 + 46, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 48, 1, 8, 8 );
setScaleKey( spep_6 -3 + 50, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 52, 1, 8, 8 );
setScaleKey( spep_6 -3 + 54, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 56, 1, 8, 8 );
setScaleKey( spep_6 -3 + 58, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 59, 1, 8.4, 8.4 );

setRotateKey( spep_6 -3 + 12, 1, 90 );
setRotateKey( spep_6 -3 + 59, 1, 90 );

-- ** 音 ** --
--地面パンチ
SE015 = playSeVer2( spep_6 + 0, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_6 + 2, 1068, "",spep_6 +56 + 4, 0, 38, -1);
SE017 = playSeVer2( spep_6 + 2, 1159, "",spep_6 +56 +66 + 22, 0, 94, -1);
setSeVolumeByWorkId( spep_6 + 2, SE017, 79 );

--着地
SE019 = playSeVer2( spep_6 + 46, 44, "",spep_6 +56 + 26, 22, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 着地して気を溜める２人(66F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
kgtame = entryEffectLife( spep_7 + 0, SP_11, 66 -1, 0x100, -1, 0, 0, 0 );  --着地して気を溜める２人（道着） ef_011
setEffMoveKey( spep_7 + 0, kgtame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66 -1, kgtame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, kgtame, 1.0, 1.0 );
setEffScaleKey( spep_7 + 66 -1, kgtame, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kgtame, 0 );
setEffRotateKey( spep_7 + 66 -1, kgtame, 0 );
setEffAlphaKey( spep_7 + 0, kgtame, 255 );
setEffAlphaKey( spep_7 + 66 -1 -1, kgtame, 255 );
setEffAlphaKey( spep_7 + 66 -1, kgtame, 0 );

-- ** 音 ** --
--気ダメ
SE018 = playSeVer2( spep_7 + 2, 1200, "",spep_7 + 64, 4, 10, -1);
setSeVolumeByWorkId( spep_7 + 2, SE018, 251 );
setStartTimeMs( SE018,  383 );
SE020 = playSeVer2( spep_7 + 0, 1181, "",spep_7 + 64, 0, 12, -1);

--着地
SE021 = playSeVer2( spep_7 + 4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 4, SE021, 178 );
SE022 = playSeVer2( spep_7 + 6, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE022, 178 );

--V字ジャンプ
SE023 = playSeVer2( spep_7 + 46, 1207, "",spep_7 +66 + 6, 2, 6, -1);
setSeVolumeByWorkId( spep_7 + 46, SE023, 68 );
setStartTimeMs( SE023,  117 );
SE024 = playSeVer2( spep_7 + 44, 1027, "",spep_7 +66 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 44, SE024, 72 );
SE025 = playSeVer2( spep_7 + 44, 1232, "",spep_7 +66 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 44, SE025, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66 -1;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_8, SE_05);
    speff = entryEffect( spep_8, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_8 + 0, SE_05 );

--画面遷移
SE027 = playSeVer2( spep_8 + 76, 1072, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;

------------------------------------------------------
-- 飛び上がって発射準備する２人(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
jtame = entryEffectLife( spep_9 + 0, SP_12, 116, 0x100, -1, 0, 0, 0 );  --飛び上がって発射準備する２人（道着） ef_012
setEffMoveKey( spep_9 + 0, jtame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, jtame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jtame, 1.0, 1.0 );
setEffScaleKey( spep_9 + 116, jtame, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jtame, 0 );
setEffRotateKey( spep_9 + 116, jtame, 0 );
setEffAlphaKey( spep_9 + 0, jtame, 255 );
setEffAlphaKey( spep_9 + 116 -1, jtame, 255 );
setEffAlphaKey( spep_9 + 116, jtame, 0 );

-- ** 音 ** --
--飛び上がって気弾溜め
SE028 = playSeVer2( spep_9 + 4, 1131, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_9 + 4, SE028, 65 );
SE029 = playSeVer2( spep_9 + 10, 1132, "",spep_9 +116 + 4, 0, 4, 0.6);
SE030 = playSeVer2( spep_9 + 10, 1191, "",spep_9 +116 + 4, 0, 4, 0.6);
setSeVolumeByWorkId( spep_9 + 10, SE030, 155 );
SE031 = playSeVer2( spep_9 + 26, 1037, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_9 + 26, SE031, 66 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 116;

------------------------------------------------------
-- 発射(74F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
kgshot = entryEffectLife( spep_10 + 0, SP_13, 74, 0x100, -1, 0, 0, 0 );  --発射（道着） ef_013
setEffMoveKey( spep_10 + 0, kgshot, 0, 0 , 0 );
setEffMoveKey( spep_10 + 74, kgshot, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kgshot, 1.0, 1.0 );
setEffScaleKey( spep_10 + 74, kgshot, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kgshot, 0 );
setEffRotateKey( spep_10 + 74, kgshot, 0 );
setEffAlphaKey( spep_10 + 0, kgshot, 255 );
setEffAlphaKey( spep_10 + 74 -1, kgshot, 255 );
setEffAlphaKey( spep_10 + 74, kgshot, 0 );

-- ** 白フェード ** --

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_10 + 0, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE032, 83 );
SE033 = playSeVer2( spep_10 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE033, 83 );
SE034 = playSeVer2( spep_10 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE034, 77 );
SE035 = playSeVer2( spep_10 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE035, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 74 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 68, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 74;

------------------------------------------------------
-- 螺旋状に迫る光弾(52F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_11 + 0, SP_14, 52, 0x100, -1, 0, 0, 0 );  --螺旋状に迫る光弾（共通） ef_014
setEffMoveKey( spep_11 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_11 + 52, kidan, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, kidan, 1.0, 1.0 );
setEffScaleKey( spep_11 + 52, kidan, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, kidan, 0 );
setEffRotateKey( spep_11 + 52, kidan, 0 );
setEffAlphaKey( spep_11 + 0, kidan, 255 );
setEffAlphaKey( spep_11 + 52 -1, kidan, 255 );
setEffAlphaKey( spep_11 + 52, kidan, 0 );

-- ** 音 ** --
--気弾飛んでく
SE036 = playSeVer2( spep_11 + 2, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE036, 92 );
SE037 = playSeVer2( spep_11 + 2, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE037, 234 );

--気弾近づく
SE038 = playSeVer2( spep_11 + 46, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 52 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 52;

------------------------------------------------------
-- 敵に迫る光弾(96F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
kcharge_f = entryEffectLife( spep_12 + 0, SP_15, 96, 0x100, -1, 0, 0, 0 );  --敵に迫る光弾（共通）　前面 ef_015
setEffMoveKey( spep_12 + 0, kcharge_f, 0, 0 , 0 );
setEffMoveKey( spep_12 + 96, kcharge_f, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kcharge_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 96, kcharge_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kcharge_f, 0 );
setEffRotateKey( spep_12 + 96, kcharge_f, 0 );
setEffAlphaKey( spep_12 + 0, kcharge_f, 255 );
setEffAlphaKey( spep_12 + 96 -1, kcharge_f, 255 );
setEffAlphaKey( spep_12 + 96, kcharge_f, 0 );

kcharge_b = entryEffectLife( spep_12 + 0, SP_16, 96, 0x80, -1, 0, 0, 0 );  --敵に迫る光弾（共通）　背面 ef_016
setEffMoveKey( spep_12 + 0, kcharge_b, 0, 0 , 0 );
setEffMoveKey( spep_12 + 96, kcharge_b, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kcharge_b, 1.0, 1.0 );
setEffScaleKey( spep_12 + 96, kcharge_b, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kcharge_b, 0 );
setEffRotateKey( spep_12 + 96, kcharge_b, 0 );
setEffAlphaKey( spep_12 + 0, kcharge_b, 255 );
setEffAlphaKey( spep_12 + 96 -1, kcharge_b, 255 );
setEffAlphaKey( spep_12 + 96, kcharge_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 -3 + 38, 1, 0 );
changeAnime( spep_12 + 0, 1, 108 );

setMoveKey( spep_12 + 0, 1, 154.9, -415.4 , 0 );
setMoveKey( spep_12 + 1, 1, 154.9, -413 , 0 );
setMoveKey( spep_12 + 2, 1, 154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 6, 1, 152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 8, 1, 157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 10, 1, 154.9, -413 , 0 );
setMoveKey( spep_12 -3 + 12, 1, 154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 14, 1, 152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 16, 1, 157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 18, 1, 154.9, -413 , 0 );
setMoveKey( spep_12 -3 + 20, 1, 154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 22, 1, 152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 24, 1, 157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 26, 1, 154.9, -415.4 , 0 );
setMoveKey( spep_12 -3 + 28, 1, 150.1, -405.8 , 0 );
setMoveKey( spep_12 -3 + 30, 1, 159.7, -422.6 , 0 );
setMoveKey( spep_12 -3 + 32, 1, 147.7, -410.6 , 0 );
setMoveKey( spep_12 -3 + 34, 1, 162.1, -410.6 , 0 );
setMoveKey( spep_12 -3 + 36, 1, 152.5, -422.6 , 0 );
setMoveKey( spep_12 -3 + 38, 1, 152.5, -422.6 , 0 );

setScaleKey( spep_12 + 0, 1, 1.92, 1.92 );
setScaleKey( spep_12 -3 + 38, 1, 1.92, 1.92 );

setRotateKey( spep_12 + 0, 1, 76.9 );
setRotateKey( spep_12 -3 + 38, 1, 76.9 );

-- ** 音 ** --
--爆発
SE039 = playSeVer2( spep_12 + 34, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE039, 85 );
SE040 = playSeVer2( spep_12 + 34, 1159, "",spep_12 +96 + 22, 0, 12, -1);
setSeVolumeByWorkId( spep_12 + 34, SE040, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_12 + 86, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 96;

------------------------------------------------------
-- 爆発フィニッシュ(116F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_17, 0x100, -1, 0, 0, 0 );  --爆発フィニッシュ（共通） ef_017
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_13 + 116, finish, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 116, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 116, finish, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_13 -3 + 22,  10018, 78 -1, 0x100, -1, 0, 18.1, -238.2 );    --ctドゴォンッ
setEffMoveKey( spep_13 -3 + 22, ctdogon, 18.1, -238.2 , 0 );
setEffMoveKey( spep_13 -3 + 24, ctdogon, 17.7, -218.6 , 0 );
setEffMoveKey( spep_13 -3 + 26, ctdogon, 17.2, -201 , 0 );
setEffMoveKey( spep_13 -3 + 28, ctdogon, 16.7, -180.4 , 0 );
setEffMoveKey( spep_13 -3 + 30, ctdogon, 16.2, -163.9 , 0 );
setEffMoveKey( spep_13 -3 + 32, ctdogon, 16.2, -161.1 , 0 );
setEffMoveKey( spep_13 -3 + 34, ctdogon, 16.2, -163.6 , 0 );
setEffMoveKey( spep_13 -3 + 36, ctdogon, 16.2, -160.8 , 0 );
setEffMoveKey( spep_13 -3 + 38, ctdogon, 16.2, -163.4 , 0 );
setEffMoveKey( spep_13 -3 + 40, ctdogon, 16.2, -160.6 , 0 );
setEffMoveKey( spep_13 -3 + 42, ctdogon, 16.2, -163.2 , 0 );
setEffMoveKey( spep_13 -3 + 44, ctdogon, 16.2, -160.4 , 0 );
setEffMoveKey( spep_13 -3 + 46, ctdogon, 16.2, -163 , 0 );
setEffMoveKey( spep_13 -3 + 48, ctdogon, 16.2, -160.1 , 0 );
setEffMoveKey( spep_13 -3 + 50, ctdogon, 16.2, -162.7 , 0 );
setEffMoveKey( spep_13 -3 + 52, ctdogon, 16.2, -159.9 , 0 );
setEffMoveKey( spep_13 -3 + 54, ctdogon, 16.2, -162.4 , 0 );
setEffMoveKey( spep_13 -3 + 56, ctdogon, 16.2, -159.6 , 0 );
setEffMoveKey( spep_13 -3 + 58, ctdogon, 16.2, -162.2 , 0 );
setEffMoveKey( spep_13 -3 + 60, ctdogon, 16.2, -159.4 , 0 );
setEffMoveKey( spep_13 -3 + 62, ctdogon, 16.2, -162 , 0 );
setEffMoveKey( spep_13 -3 + 64, ctdogon, 16.2, -159.1 , 0 );
setEffMoveKey( spep_13 -3 + 66, ctdogon, 16.2, -161.7 , 0 );
setEffMoveKey( spep_13 -3 + 68, ctdogon, 16.2, -158.9 , 0 );
setEffMoveKey( spep_13 -3 + 70, ctdogon, 16.2, -161.5 , 0 );
setEffMoveKey( spep_13 -3 + 72, ctdogon, 16.2, -158.7 , 0 );
setEffMoveKey( spep_13 -3 + 74, ctdogon, 16.1, -161.3 , 0 );
setEffMoveKey( spep_13 -3 + 76, ctdogon, 16.1, -158.4 , 0 );
setEffMoveKey( spep_13 -3 + 78, ctdogon, 16.1, -161.1 , 0 );
setEffMoveKey( spep_13 -3 + 80, ctdogon, 16.1, -158.2 , 0 );
setEffMoveKey( spep_13 -3 + 82, ctdogon, 16.1, -160.8 , 0 );
setEffMoveKey( spep_13 -3 + 84, ctdogon, 16.1, -157.9 , 0 );
setEffMoveKey( spep_13 -3 + 86, ctdogon, 16.1, -160.5 , 0 );
setEffMoveKey( spep_13 -3 + 88, ctdogon, 16.1, -157.7 , 0 );
setEffMoveKey( spep_13 -3 + 90, ctdogon, 16.1, -160.3 , 0 );
setEffMoveKey( spep_13 -3 + 92, ctdogon, 16.1, -157.4 , 0 );
setEffMoveKey( spep_13 -3 + 94, ctdogon, 16.1, -160.1 , 0 );
setEffMoveKey( spep_13 -3 + 96, ctdogon, 16.1, -157.2 , 0 );
setEffMoveKey( spep_13 -3 + 98, ctdogon, 16.1, -159.8 , 0 );
setEffMoveKey( spep_13 -3 + 99, ctdogon, 16.1, -159.8 , 0 );

setEffScaleKey( spep_13 -3 + 22, ctdogon, 0.28, 0.28 );
setEffScaleKey( spep_13 -3 + 24, ctdogon, 0.76, 0.76 );
setEffScaleKey( spep_13 -3 + 26, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_13 -3 + 28, ctdogon, 1.7, 1.7 );
setEffScaleKey( spep_13 -3 + 30, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_13 -3 + 32, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 34, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_13 -3 + 36, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 38, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_13 -3 + 40, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 42, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_13 -3 + 44, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 46, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_13 -3 + 48, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 50, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_13 -3 + 52, ctdogon, 2.2, 2.2 );
setEffScaleKey( spep_13 -3 + 54, ctdogon, 2.16, 2.16 );
setEffScaleKey( spep_13 -3 + 56, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 58, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 60, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 62, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 64, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 66, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 68, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 70, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 72, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_13 -3 + 74, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 76, ctdogon, 2.24, 2.24 );
setEffScaleKey( spep_13 -3 + 78, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 80, ctdogon, 2.24, 2.24 );
setEffScaleKey( spep_13 -3 + 82, ctdogon, 2.2, 2.2 );
setEffScaleKey( spep_13 -3 + 84, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_13 -3 + 86, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 88, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_13 -3 + 90, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 92, ctdogon, 2.26, 2.26 );
setEffScaleKey( spep_13 -3 + 94, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 96, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_13 -3 + 99, ctdogon, 2.22, 2.22 );

setEffRotateKey( spep_13 -3 + 22, ctdogon, 0 );
setEffRotateKey( spep_13 -3 + 99, ctdogon, 0 );

setEffAlphaKey( spep_13 -3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_13 -3 + 88, ctdogon, 255 );
setEffAlphaKey( spep_13 -3 + 90, ctdogon, 207 );
setEffAlphaKey( spep_13 -3 + 92, ctdogon, 159 );
setEffAlphaKey( spep_13 -3 + 94, ctdogon, 111 );
setEffAlphaKey( spep_13 -3 + 96, ctdogon, 63 );
setEffAlphaKey( spep_13 -3 + 98, ctdogon, 15 );
setEffAlphaKey( spep_13 -3 + 99, ctdogon, 15 );

-- ** 音 ** --
--ラスト爆発
SE041 = playSeVer2( spep_13 + 8, 1188, "", 0, 0, 0, -1);

SE042 = playSeVer2( spep_13 + 8, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 );
endPhase( spep_13 + 106 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開幕(126F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 126, 0x100, -1, 0, 0, 0 );  --開幕（道着）  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 0 );

spep_x = spep_0 + 28;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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

-- ** 集中線 ** --
shuchusen1 = entryEffectLife( spep_0 + 0, 906, 126 -1, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_0 + 0, shuchusen1, 90, 20 );
setEffMoveKey( spep_0 + 0, shuchusen1, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126-1, shuchusen1, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, shuchusen1, 1.4, 1.4 );
setEffScaleKey( spep_0 + 126-1, shuchusen1, 1.4, 1.4 );
setEffRotateKey( spep_0 + 0, shuchusen1, 0 );
setEffRotateKey( spep_0 + 126-1, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 0, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 42 -2, shuchusen1, 0 );
setEffAlphaKey( spep_0 + 42 -1, shuchusen1, 255 );
setEffAlphaKey( spep_0 + 126-1, shuchusen1, 255 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setPitch( spep_0 + 0, SE001, 100 );
setTimeStretch( SE001, 1.07, 30, 4 );

--顔カットイン
SE002 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;

------------------------------------------------------
-- 悟飯蹴り(76F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
gkick_f = entryEffectLife( spep_1 + 0, SP_02r, 76, 0x100, -1, 0, 0, 0 );  --悟飯蹴り（共通）　前面  ef_002
setEffMoveKey( spep_1 + 0, gkick_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, gkick_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gkick_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, gkick_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gkick_f, 0 );
setEffRotateKey( spep_1 + 76, gkick_f, 0 );
setEffAlphaKey( spep_1 + 0, gkick_f, 255 );
setEffAlphaKey( spep_1 + 76 -1, gkick_f, 255 );
setEffAlphaKey( spep_1 + 76, gkick_f, 0 );

gkick_b = entryEffectLife( spep_1 + 0, SP_03, 76, 0x80, -1, 0, 0, 0 );  --悟飯蹴り（道着）　背面   ef_003
setEffMoveKey( spep_1 + 0, gkick_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 76, gkick_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, gkick_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 76, gkick_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, gkick_b, 0 );
setEffRotateKey( spep_1 + 76, gkick_b, 0 );
setEffAlphaKey( spep_1 + 0, gkick_b, 255 );
setEffAlphaKey( spep_1 + 76 -1, gkick_b, 255 );
setEffAlphaKey( spep_1 + 76, gkick_b, 0 );

-- ** 書き文字エントリー ** --
ctkizuki = entryEffectLife( spep_1 -3 + 16,  10000, 32 -1, 0x100, -1, 0, 108.8, 150.4 );
setEffMoveKey( spep_1 -3 + 16, ctkizuki, 108.8, 150.4 , 0 );
setEffMoveKey( spep_1 -3 + 18, ctkizuki, 99.4, 191 , 0 );
setEffMoveKey( spep_1 -3 + 20, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 22, ctkizuki, 93.3, 217.3 , 0 );
setEffMoveKey( spep_1 -3 + 24, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 26, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 28, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 30, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 32, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 34, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 36, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 38, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 40, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 42, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 44, ctkizuki, 87.3, 231.2 , 0 );
setEffMoveKey( spep_1 -3 + 46, ctkizuki, 89.7, 231.4 , 0 );
setEffMoveKey( spep_1 -3 + 47, ctkizuki, 89.7, 231.4 , 0 );

setEffScaleKey( spep_1 -3 + 16, ctkizuki, 0.55, 0.55 );
setEffScaleKey( spep_1 -3 + 18, ctkizuki, 1.78, 1.78 );
setEffScaleKey( spep_1 -3 + 20, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 22, ctkizuki, 2.57, 2.57 );
setEffScaleKey( spep_1 -3 + 24, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 47, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 16, ctkizuki, 0.55, 0.55 );
setEffScaleKey( spep_1 -3 + 18, ctkizuki, 1.78, 1.78 );
setEffScaleKey( spep_1 -3 + 20, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 22, ctkizuki, 2.57, 2.57 );
setEffScaleKey( spep_1 -3 + 24, ctkizuki, 3, 3 );
setEffScaleKey( spep_1 -3 + 47, ctkizuki, 3, 3 );

setEffRotateKey( spep_1 -3 + 16, ctkizuki, -19.1 );
setEffRotateKey( spep_1 -3 + 18, ctkizuki, -19.2 );
setEffRotateKey( spep_1 -3 + 47, ctkizuki, -19.2 );

setEffAlphaKey( spep_1 -3 + 16, ctkizuki, 255 );
setEffAlphaKey( spep_1 -3 + 47, ctkizuki, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 0, 1, 1 );
changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 159.3, -935.1 , 0 );
setMoveKey( spep_1 + 1, 1, 159.3, -820.4 , 0 );
setMoveKey( spep_1 + 2, 1, 159.3, -705.6 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 159.3, -591 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 159.3, -476.2 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 159.3, -361.5 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 159.3, -246.8 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 159.3, -132.1 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 159.3, -132.6 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 159.3, -133.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 159.3, -133.7 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 159.3, -134.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 159.3, -134.7 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 159.3, -135.2 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 159.3, -135.7 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 159.3, -136.3 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 159.3, -136.8 , 0 );

setScaleKey( spep_1 + 0, 1, 2.5, 2.5 );

setRotateKey( spep_1 + 0, 1, 0 );

-- ** 音 ** --
--画面遷移
SE003 = playSeVer2( spep_1 + 0, 1117, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE003, 61 );

--瞬間移動
SE004 = playSeVer2( spep_1 + 10, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    --stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 159.3, -136.8 , 0 );
    setMoveKey( SP_dodge + 2, 1, 159.3, -137.3 , 0 );
    setMoveKey( SP_dodge + 4, 1, 159.3, -137.8 , 0 );
    setMoveKey( SP_dodge + 6, 1, 159.3, -138.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, 159.3, -138.8 , 0 );
    setMoveKey( SP_dodge + 10, 1, 159.3, -139.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 2.5, 2.5 );
    setScaleKey( SP_dodge + 10, 1, 2.5, 2.5 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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
setDisp( spep_1 -3 + 66, 1, 0 );
changeAnime( spep_1 -3 + 48, 1, 106 );

setMoveKey( spep_1 -3 + 34, 1, 159.3, -137.3 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 159.3, -137.8 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 159.3, -138.3 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 159.3, -138.8 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 159.3, -139.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 159.3, -139.9 , 0 );
setMoveKey( spep_1 -3 + 47, 1, 159.3, -140.4 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 58.4, -72.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 161.8, -206.6 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 163.2, -317.2 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 288.7, -335.7 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 282.1, -450.2 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 359.5, -554.8 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 416.9, -643.3 , 0 );
setMoveKey( spep_1 -3 + 62, 1, 474.4, -731.8 , 0 );
setMoveKey( spep_1 -3 + 64, 1, 531.8, -820.3 , 0 );
setMoveKey( spep_1 -3 + 66, 1, 531.8, -820.3 , 0 );

setScaleKey( spep_1 -3 + 48, 1, 2.5, 2.5 );
setScaleKey( spep_1 -3 + 50, 1, 2.81, 2.81 );
setScaleKey( spep_1 -3 + 52, 1, 3.12, 3.12 );
setScaleKey( spep_1 -3 + 54, 1, 3.43, 3.43 );
setScaleKey( spep_1 -3 + 56, 1, 3.74, 3.74 );
setScaleKey( spep_1 -3 + 58, 1, 4.05, 4.05 );
setScaleKey( spep_1 -3 + 60, 1, 4.36, 4.36 );
setScaleKey( spep_1 -3 + 62, 1, 4.67, 4.67 );
setScaleKey( spep_1 -3 + 64, 1, 4.98, 4.98 );
setScaleKey( spep_1 -3 + 66, 1, 4.98, 4.98 );

setRotateKey( spep_1 -3 + 47, 1, 0 );
setRotateKey( spep_1 -3 + 48, 1, -28.1 );
setRotateKey( spep_1 -3 + 50, 1, -26.1 );
setRotateKey( spep_1 -3 + 52, 1, -24 );
setRotateKey( spep_1 -3 + 54, 1, -21.9 );
setRotateKey( spep_1 -3 + 56, 1, -19.8 );
setRotateKey( spep_1 -3 + 58, 1, -17.8 );
setRotateKey( spep_1 -3 + 60, 1, -15.7 );
setRotateKey( spep_1 -3 + 62, 1, -13.6 );
setRotateKey( spep_1 -3 + 64, 1, -11.5 );
setRotateKey( spep_1 -3 + 66, 1, -11.5 );

-- ** 音 ** --
--悟飯蹴り
SE005 = playSeVer2( spep_1 + 40, 1001, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_1 + 40, SE005, 72 );
SE006 = playSeVer2( spep_1 + 42, 1187, "",spep_1 +76 + 34, 0, 48, 1.0);
setSeVolumeByWorkId( spep_1 + 42, SE006, 60 );
SE007 = playSeVer2( spep_1 + 44, 1110, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_1 + 44, SE007, 87 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 76;

------------------------------------------------------
-- クリリン飛び上がり(46F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
kjump = entryEffectLife( spep_2 + 0, SP_04r, 46, 0x100, -1, 0, 0, 0 );  --クリリン飛び上がり(道着)  ef_004
setEffMoveKey( spep_2 + 0, kjump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 46, kjump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, kjump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 46, kjump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kjump, 0 );
setEffRotateKey( spep_2 + 46, kjump, 0 );
setEffAlphaKey( spep_2 + 0, kjump, 255 );
setEffAlphaKey( spep_2 + 46 -1, kjump, 255 );
setEffAlphaKey( spep_2 + 46, kjump, 0 );

-- ** 音 ** --
--クリリン振りかぶる
SE008 = playSeVer2( spep_2 + 4, 1116, "",spep_2 +44, 0, 20, 1.0);
SE009 = playSeVer2( spep_2 + 8, 1003, "", 0, 0, 0, 1.0);
SE010 = playSeVer2( spep_2 + 40, 1123, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_2 + 40, SE010, 92 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 46;

------------------------------------------------------
-- クリリン撃ち落とし(46F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
khammer_f = entryEffectLife( spep_3 + 0, SP_05r, 46 +4, 0x100, -1, 0, 0, 0 );  --クリリン撃ち落とし（共通）　前面    ef_005
setEffMoveKey( spep_3 + 0,khammer_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46 +4,khammer_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0,khammer_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46 +4,khammer_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0,khammer_f, 0 );
setEffRotateKey( spep_3 + 46 +4,khammer_f, 0 );
setEffAlphaKey( spep_3 + 0,khammer_f, 255 );
setEffAlphaKey( spep_3 + 46 +4 -1,khammer_f, 255 );
setEffAlphaKey( spep_3 + 46 +4,khammer_f, 0 );

khummer_b = entryEffectLife( spep_3 + 0, SP_06r, 46 +4, 0x80, -1, 0, 0, 0 );  --クリリン撃ち落とし（道着）　背面 ef_006
setEffMoveKey( spep_3 + 0, khummer_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 46 +4, khummer_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, khummer_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 46 +4, khummer_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, khummer_b, 0 );
setEffRotateKey( spep_3 + 46 +4, khummer_b, 0 );
setEffAlphaKey( spep_3 + 0, khummer_b, 255 );
setEffAlphaKey( spep_3 + 46 +4 -1, khummer_b, 255 );
setEffAlphaKey( spep_3 + 46 +4, khummer_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 +1 + 30, 1, 0 );
changeAnime( spep_3 + 0, 1, 107 );

setMoveKey( spep_3 + 0, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 + 1, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 + 2, 1, 172, -122.1 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 284.7, -196.2 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 307, -238.3 , 0 );
setMoveKey( spep_3 +1 + 6, 1, 225.9, -108.2 , 0 );
setMoveKey( spep_3 +1 + 8, 1, 199.2, -221.7 , 0 );
setMoveKey( spep_3 +1 + 10, 1, 336.7, -133.9 , 0 );
setMoveKey( spep_3 +1 + 12, 1, 262.7, -187.4 , 0 );
setMoveKey( spep_3 +1 + 14, 1, 269.2, -190.5 , 0 );
setMoveKey( spep_3 +1 + 16, 1, 309.8, -213.7 , 0 );
setMoveKey( spep_3 +1 + 18, 1, 331.1, -230.5 , 0 );
setMoveKey( spep_3 +1 + 20, 1, 358.9, -249.4 , 0 );
setMoveKey( spep_3 +1 + 22, 1, 386.7, -268.3 , 0 );
setMoveKey( spep_3 +1 + 24, 1, 436, -301.9 , 0 );
setMoveKey( spep_3 +1 + 26, 1, 485.4, -335.5 , 0 );
setMoveKey( spep_3 +1 + 28, 1, 534.7, -369.1 , 0 );
setMoveKey( spep_3 +1 + 30, 1, 534.7, -369.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.15, 1.16 );
setScaleKey( spep_3 + 1, 1, 1.15, 1.16 );
setScaleKey( spep_3 + 2, 1, 1.15, 1.16 );
setScaleKey( spep_3 -3 + 6, 1, 1.95, 1.96 );
setScaleKey( spep_3 -3 + 8, 1, 1.8, 1.81 );
setScaleKey( spep_3 +1 + 6, 1, 1.71, 1.71 );
setScaleKey( spep_3 +1 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_3 +1 + 10, 1, 1.69, 1.7 );
setScaleKey( spep_3 +1 + 12, 1, 1.83, 1.83 );
setScaleKey( spep_3 +1 + 14, 1, 1.96, 1.97 );
setScaleKey( spep_3 +1 + 16, 1, 2.18, 2.19 );
setScaleKey( spep_3 +1 + 18, 1, 2.4, 2.4 );
setScaleKey( spep_3 +1 + 20, 1, 2.62, 2.62 );
setScaleKey( spep_3 +1 + 22, 1, 2.84, 2.84 );
setScaleKey( spep_3 +1 + 24, 1, 3.22, 3.23 );
setScaleKey( spep_3 +1 + 26, 1, 3.61, 3.61 );
setScaleKey( spep_3 +1 + 28, 1, 4, 4 );
setScaleKey( spep_3 +1 + 30, 1, 4, 4 );

setRotateKey( spep_3 + 0, 1, 40.1 );
setRotateKey( spep_3 + 1, 1, 40.1 );
setRotateKey( spep_3 + 2, 1, 40.1 );
setRotateKey( spep_3 + 3, 1, 40.2 );
setRotateKey( spep_3 +1 + 30, 1, 40.2 );

-- ** 音 ** --
--敵飛んでいく
SE011 = playSeVer2( spep_3 + 28 +4, 1183, "", 0, 0, 0, -1);

SE012 = playSeVer2( spep_3 + 28 +4, 1121, "",spep_3 +36 +36 + 12 +4, 0, 32, -1);
setSeVolumeByWorkId( spep_3 + 28 +4, SE012, 65 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 46 +4 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 46 +4;

------------------------------------------------------
-- 敵が落下(36F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
emove = entryEffectLife( spep_4 + 0, SP_07, 36, 0x80, -1, 0, 0, 0 );  --敵が落下（共通）    ef_007
setEffMoveKey( spep_4 + 0, emove, 0, 0 , 0 );
setEffMoveKey( spep_4 + 36, emove, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, emove, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, emove, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, emove, 0 );
setEffRotateKey( spep_4 + 36, emove, 0 );
setEffAlphaKey( spep_4 + 0, emove, 255 );
setEffAlphaKey( spep_4 + 36 -1, emove, 255 );
setEffAlphaKey( spep_4 + 36, emove, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 39, 1, 0 );
changeAnime( spep_4 + 0, 1, 5 );

setMoveKey( spep_4 + 0, 1, -258.1, -219.3 , 0 );
setMoveKey( spep_4 + 1, 1, -221.8, -181.9 , 0 );
setMoveKey( spep_4 + 2, 1, -185.5, -144.6 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -149.3, -107.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -113, -69.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -105.9, -63 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -98.8, -56.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -91.8, -49.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -84.7, -42.8 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -77.6, -36 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -70.5, -29.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -63.4, -22.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -56.3, -15.7 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -49.2, -9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -42.2, -2.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -35.1, 4.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -28, 11.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -20.9, 18 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -13.8, 24.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -6.7, 31.6 , 0 );
setMoveKey( spep_4 -3 + 39, 1, -6.7, 31.6 , 0 );

setScaleKey( spep_4 + 0, 1, 9.69, 9.69 );
setScaleKey( spep_4 + 1, 1, 8.28, 8.28 );
setScaleKey( spep_4 + 2, 1, 6.86, 6.86 );
setScaleKey( spep_4 -3 + 6, 1, 5.43, 5.43 );
setScaleKey( spep_4 -3 + 8, 1, 4.01, 4.01 );
setScaleKey( spep_4 -3 + 10, 1, 3.76, 3.76 );
setScaleKey( spep_4 -3 + 12, 1, 3.5, 3.5 );
setScaleKey( spep_4 -3 + 14, 1, 3.25, 3.25 );
setScaleKey( spep_4 -3 + 16, 1, 2.99, 2.99 );
setScaleKey( spep_4 -3 + 18, 1, 2.74, 2.74 );
setScaleKey( spep_4 -3 + 20, 1, 2.49, 2.49 );
setScaleKey( spep_4 -3 + 22, 1, 2.23, 2.23 );
setScaleKey( spep_4 -3 + 24, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 26, 1, 1.72, 1.72 );
setScaleKey( spep_4 -3 + 28, 1, 1.47, 1.47 );
setScaleKey( spep_4 -3 + 30, 1, 1.22, 1.22 );
setScaleKey( spep_4 -3 + 32, 1, 0.96, 0.96 );
setScaleKey( spep_4 -3 + 34, 1, 0.71, 0.71 );
setScaleKey( spep_4 -3 + 36, 1, 0.45, 0.45 );
setScaleKey( spep_4 -3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 39, 1, 0.2, 0.2 );

setRotateKey( spep_4 + 0, 1, 56.7 );
setRotateKey( spep_4 -3 + 39, 1, 56.7 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 36 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;

------------------------------------------------------
-- 悟飯追撃(56F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
gmove = entryEffectLife( spep_5 + 0, SP_08, 56, 0x100, -1, 0, 0, 0 );  --悟飯追撃（道着）   ef_008
setEffMoveKey( spep_5 + 0, gmove, 0, 0 , 0 );
setEffMoveKey( spep_5 + 56, gmove, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, gmove, -1.0, 1.0 );
setEffScaleKey( spep_5 + 56, gmove, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, gmove, 0 );
setEffRotateKey( spep_5 + 56, gmove, 0 );
setEffAlphaKey( spep_5 + 0, gmove, 255 );
setEffAlphaKey( spep_5 + 56 -1, gmove, 255 );
setEffAlphaKey( spep_5 + 56, gmove, 0 );

-- ** 音 ** --
--悟飯迫る
SE013 = playSeVer2( spep_5 + 4, 1121, "",spep_5 +56 + 14, 10, 20, -1);
setSeVolumeByWorkId( spep_5 + 4, SE013, 83 );
setStartTimeMs( SE013,  717 );
setPitch( spep_5 + 4, SE013, -300 );
setTimeStretch( SE013, 0.8, 30, 4 );
SE014 = playSeVer2( spep_5 + 2, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 2, SE014, 46 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 56;

------------------------------------------------------
-- 悟飯地面パンチ(56F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
gpunch_f = entryEffectLife( spep_6 + 0, SP_09, 56, 0x100, -1, 0, 0, 0 );  --悟飯地面パンチ（道着）前面   ef_009
setEffMoveKey( spep_6 + 0, gpunch_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gpunch_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gpunch_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gpunch_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gpunch_f, 0 );
setEffRotateKey( spep_6 + 56, gpunch_f, 0 );
setEffAlphaKey( spep_6 + 0, gpunch_f, 255 );
setEffAlphaKey( spep_6 + 56 -1, gpunch_f, 255 );
setEffAlphaKey( spep_6 + 56, gpunch_f, 0 );

gpunch_b = entryEffectLife( spep_6 + 0, SP_10, 56, 0x80, -1, 0, 0, 0 );  --悟飯地面パンチ（共通）背面    ef_010
setEffMoveKey( spep_6 + 0, gpunch_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 56, gpunch_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, gpunch_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, gpunch_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, gpunch_b, 0 );
setEffRotateKey( spep_6 + 56, gpunch_b, 0 );
setEffAlphaKey( spep_6 + 0, gpunch_b, 255 );
setEffAlphaKey( spep_6 + 56 -1, gpunch_b, 255 );
setEffAlphaKey( spep_6 + 56, gpunch_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 -3 + 12, 1, 1 );
setDisp( spep_6 -3 + 59, 1, 0 );
changeAnime( spep_6 -3 + 12, 1, 8 );

setMoveKey( spep_6 -3 + 12, 1, 86.1, -515.8 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 110.1, -495.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 140, -467 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 85.1, -519.3 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 47.9, -548.9 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 83.2, -541.5 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 142.1, -549.7 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 96.1, -511.4 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 56, -471 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 77.1, -477.3 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 110.1, -469.7 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 110.1, -463.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 116, -455 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 107.1, -469.3 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 110.1, -469.7 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 110.1, -463.4 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 116, -455 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 107.1, -469.3 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 116, -460.9 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 101.2, -457.5 , 0 );
setMoveKey( spep_6 -3 + 59, 1, 101.2, -457.5 , 0 );

setScaleKey( spep_6 -3 + 12, 1, 8, 8 );
setScaleKey( spep_6 -3 + 14, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 16, 1, 8, 8 );
setScaleKey( spep_6 -3 + 18, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 20, 1, 8, 8 );
setScaleKey( spep_6 -3 + 22, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 24, 1, 8, 8 );
setScaleKey( spep_6 -3 + 26, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 28, 1, 8, 8 );
setScaleKey( spep_6 -3 + 30, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 32, 1, 8, 8 );
setScaleKey( spep_6 -3 + 34, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 36, 1, 8, 8 );
setScaleKey( spep_6 -3 + 38, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 40, 1, 8, 8 );
setScaleKey( spep_6 -3 + 42, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 44, 1, 8, 8 );
setScaleKey( spep_6 -3 + 46, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 48, 1, 8, 8 );
setScaleKey( spep_6 -3 + 50, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 52, 1, 8, 8 );
setScaleKey( spep_6 -3 + 54, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 56, 1, 8, 8 );
setScaleKey( spep_6 -3 + 58, 1, 8.4, 8.4 );
setScaleKey( spep_6 -3 + 59, 1, 8.4, 8.4 );

setRotateKey( spep_6 -3 + 12, 1, -90 );
setRotateKey( spep_6 -3 + 59, 1, -90 );

-- ** 音 ** --
--地面パンチ
SE015 = playSeVer2( spep_6 + 0, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_6 + 2, 1068, "",spep_6 +56 + 4, 0, 38, -1);
SE017 = playSeVer2( spep_6 + 2, 1159, "",spep_6 +56 +66 + 22, 0, 94, -1);
setSeVolumeByWorkId( spep_6 + 2, SE017, 79 );

--着地
SE019 = playSeVer2( spep_6 + 46, 44, "",spep_6 +56 + 26, 22, 10, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 56;

------------------------------------------------------
-- 着地して気を溜める２人(66F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
kgtame = entryEffectLife( spep_7 + 0, SP_11, 66 -1, 0x100, -1, 0, 0, 0 );  --着地して気を溜める２人（道着） ef_011
setEffMoveKey( spep_7 + 0, kgtame, 0, 0 , 0 );
setEffMoveKey( spep_7 + 66 -1, kgtame, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, kgtame, -1.0, 1.0 );
setEffScaleKey( spep_7 + 66 -1, kgtame, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kgtame, 0 );
setEffRotateKey( spep_7 + 66 -1, kgtame, 0 );
setEffAlphaKey( spep_7 + 0, kgtame, 255 );
setEffAlphaKey( spep_7 + 66 -1 -1, kgtame, 255 );
setEffAlphaKey( spep_7 + 66 -1, kgtame, 0 );

-- ** 音 ** --
--気ダメ
SE018 = playSeVer2( spep_7 + 2, 1200, "",spep_7 + 64, 4, 10, -1);
setSeVolumeByWorkId( spep_7 + 2, SE018, 251 );
setStartTimeMs( SE018,  383 );
SE020 = playSeVer2( spep_7 + 0, 1181, "",spep_7 + 64, 0, 12, -1);

--着地
SE021 = playSeVer2( spep_7 + 4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 4, SE021, 178 );
SE022 = playSeVer2( spep_7 + 6, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 6, SE022, 178 );

--V字ジャンプ
SE023 = playSeVer2( spep_7 + 46, 1207, "",spep_7 +66 + 6, 2, 6, -1);
setSeVolumeByWorkId( spep_7 + 46, SE023, 68 );
setStartTimeMs( SE023,  117 );
SE024 = playSeVer2( spep_7 + 44, 1027, "",spep_7 +66 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 44, SE024, 72 );
SE025 = playSeVer2( spep_7 + 44, 1232, "",spep_7 +66 + 6, 0, 6, -1);
setSeVolumeByWorkId( spep_7 + 44, SE025, 81 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 66 -1 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 66 -1;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_8 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_8 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_8 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_8 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_8 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_8 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_8 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_8 + 0, shuchusen, 0 );
setEffRotateKey( spep_8 + 90, shuchusen, 0 );
setEffAlphaKey( spep_8 + 0, shuchusen, 255 );
setEffAlphaKey( spep_8 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_8 + 0, SE_05 );

--画面遷移
SE027 = playSeVer2( spep_8 + 76, 1072, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_8 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_8 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_8 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_9 = spep_8 + 94;

------------------------------------------------------
-- 飛び上がって発射準備する２人(116F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
jtame = entryEffectLife( spep_9 + 0, SP_12, 116, 0x100, -1, 0, 0, 0 );  --飛び上がって発射準備する２人（道着）    ef_012
setEffMoveKey( spep_9 + 0, jtame, 0, 0 , 0 );
setEffMoveKey( spep_9 + 116, jtame, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, jtame, -1.0, 1.0 );
setEffScaleKey( spep_9 + 116, jtame, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, jtame, 0 );
setEffRotateKey( spep_9 + 116, jtame, 0 );
setEffAlphaKey( spep_9 + 0, jtame, 255 );
setEffAlphaKey( spep_9 + 116 -1, jtame, 255 );
setEffAlphaKey( spep_9 + 116, jtame, 0 );

-- ** 音 ** --
--飛び上がって気弾溜め
SE028 = playSeVer2( spep_9 + 4, 1131, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_9 + 4, SE028, 65 );
SE029 = playSeVer2( spep_9 + 10, 1132, "",spep_9 +116 + 4, 0, 4, 0.6);
SE030 = playSeVer2( spep_9 + 10, 1191, "",spep_9 +116 + 4, 0, 4, 0.6);
setSeVolumeByWorkId( spep_9 + 10, SE030, 155 );
SE031 = playSeVer2( spep_9 + 26, 1037, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_9 + 26, SE031, 66 );

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 116;

------------------------------------------------------
-- 発射(74F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
kgshot = entryEffectLife( spep_10 + 0, SP_13, 74, 0x100, -1, 0, 0, 0 );  --発射（道着）   ef_013
setEffMoveKey( spep_10 + 0, kgshot, 0, 0 , 0 );
setEffMoveKey( spep_10 + 74, kgshot, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, kgshot, -1.0, 1.0 );
setEffScaleKey( spep_10 + 74, kgshot, -1.0, 1.0 );
setEffRotateKey( spep_10 + 0, kgshot, 0 );
setEffRotateKey( spep_10 + 74, kgshot, 0 );
setEffAlphaKey( spep_10 + 0, kgshot, 255 );
setEffAlphaKey( spep_10 + 74 -1, kgshot, 255 );
setEffAlphaKey( spep_10 + 74, kgshot, 0 );

-- ** 白フェード ** --

-- ** 音 ** --
--気弾発射
SE032 = playSeVer2( spep_10 + 0, 1022, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE032, 83 );
SE033 = playSeVer2( spep_10 + 0, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE033, 83 );
SE034 = playSeVer2( spep_10 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE034, 77 );
SE035 = playSeVer2( spep_10 + 0, 1177, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_10 + 0, SE035, 80 );

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 74 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_10 + 68, 6, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 74;

------------------------------------------------------
-- 螺旋状に迫る光弾(52F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
kidan = entryEffectLife( spep_11 + 0, SP_14, 52, 0x100, -1, 0, 0, 0 );  --螺旋状に迫る光弾（共通）  ef_014
setEffMoveKey( spep_11 + 0, kidan, 0, 0 , 0 );
setEffMoveKey( spep_11 + 52, kidan, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, kidan, -1.0, 1.0 );
setEffScaleKey( spep_11 + 52, kidan, -1.0, 1.0 );
setEffRotateKey( spep_11 + 0, kidan, 0 );
setEffRotateKey( spep_11 + 52, kidan, 0 );
setEffAlphaKey( spep_11 + 0, kidan, 255 );
setEffAlphaKey( spep_11 + 52 -1, kidan, 255 );
setEffAlphaKey( spep_11 + 52, kidan, 0 );

-- ** 音 ** --
--気弾飛んでく
SE036 = playSeVer2( spep_11 + 2, 1179, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE036, 92 );
SE037 = playSeVer2( spep_11 + 2, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 2, SE037, 234 );

--気弾近づく
SE038 = playSeVer2( spep_11 + 46, 1021, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 52 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 52;

------------------------------------------------------
-- 敵に迫る光弾(96F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
kcharge_f = entryEffectLife( spep_12 + 0, SP_15, 96, 0x100, -1, 0, 0, 0 );  --敵に迫る光弾（共通）　前面 ef_015
setEffMoveKey( spep_12 + 0, kcharge_f, 0, 0 , 0 );
setEffMoveKey( spep_12 + 96, kcharge_f, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kcharge_f, -1.0, 1.0 );
setEffScaleKey( spep_12 + 96, kcharge_f, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kcharge_f, 0 );
setEffRotateKey( spep_12 + 96, kcharge_f, 0 );
setEffAlphaKey( spep_12 + 0, kcharge_f, 255 );
setEffAlphaKey( spep_12 + 96 -1, kcharge_f, 255 );
setEffAlphaKey( spep_12 + 96, kcharge_f, 0 );

kcharge_b = entryEffectLife( spep_12 + 0, SP_16, 96, 0x80, -1, 0, 0, 0 );  --敵に迫る光弾（共通）　背面  ef_016
setEffMoveKey( spep_12 + 0, kcharge_b, 0, 0 , 0 );
setEffMoveKey( spep_12 + 96, kcharge_b, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, kcharge_b, -1.0, 1.0 );
setEffScaleKey( spep_12 + 96, kcharge_b, -1.0, 1.0 );
setEffRotateKey( spep_12 + 0, kcharge_b, 0 );
setEffRotateKey( spep_12 + 96, kcharge_b, 0 );
setEffAlphaKey( spep_12 + 0, kcharge_b, 255 );
setEffAlphaKey( spep_12 + 96 -1, kcharge_b, 255 );
setEffAlphaKey( spep_12 + 96, kcharge_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 -3 + 38, 1, 0 );
changeAnime( spep_12 + 0, 1, 8 );

setMoveKey( spep_12 + 0, 1, -154.9, -415.4 , 0 );
setMoveKey( spep_12 + 1, 1, -154.9, -413 , 0 );
setMoveKey( spep_12 + 2, 1, -154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 6, 1, -152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 8, 1, -157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 10, 1, -154.9, -413 , 0 );
setMoveKey( spep_12 -3 + 12, 1, -154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 14, 1, -152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 16, 1, -157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 18, 1, -154.9, -413 , 0 );
setMoveKey( spep_12 -3 + 20, 1, -154.9, -417.8 , 0 );
setMoveKey( spep_12 -3 + 22, 1, -152.5, -413 , 0 );
setMoveKey( spep_12 -3 + 24, 1, -157.3, -417.8 , 0 );
setMoveKey( spep_12 -3 + 26, 1, -154.9, -415.4 , 0 );
setMoveKey( spep_12 -3 + 28, 1, -150.1, -405.8 , 0 );
setMoveKey( spep_12 -3 + 30, 1, -159.7, -422.6 , 0 );
setMoveKey( spep_12 -3 + 32, 1, -147.7, -410.6 , 0 );
setMoveKey( spep_12 -3 + 34, 1, -162.1, -410.6 , 0 );
setMoveKey( spep_12 -3 + 36, 1, -152.5, -422.6 , 0 );
setMoveKey( spep_12 -3 + 38, 1, -152.5, -422.6 , 0 );

setScaleKey( spep_12 + 0, 1, 1.92, 1.92 );
setScaleKey( spep_12 -3 + 38, 1, 1.92, 1.92 );

setRotateKey( spep_12 + 0, 1, -76.9 );
setRotateKey( spep_12 -3 + 38, 1, -76.9 );

-- ** 音 ** --
--爆発
SE039 = playSeVer2( spep_12 + 34, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 34, SE039, 85 );
SE040 = playSeVer2( spep_12 + 34, 1159, "",spep_12 +96 + 22, 0, 12, -1);
setSeVolumeByWorkId( spep_12 + 34, SE040, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 96 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_12 + 86, 10, 0, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_13 = spep_12 + 96;

------------------------------------------------------
-- 爆発フィニッシュ(116F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_13 + 0, SP_17, 0x100, -1, 0, 0, 0 );  --爆発フィニッシュ（共通） ef_017
setEffMoveKey( spep_13 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_13 + 116, finish, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_13 + 116, finish, -1.0, 1.0 );
setEffRotateKey( spep_13 + 0, finish, 0 );
setEffRotateKey( spep_13 + 116, finish, 0 );
setEffAlphaKey( spep_13 + 0, finish, 255 );
setEffAlphaKey( spep_13 + 116, finish, 255 );

-- ** 書き文字エントリー ** --
ctdogon = entryEffectLife( spep_13 -3 + 22,  10018, 78 -1, 0x100, -1, 0, -18.1, -238.2 );    --ctドゴォンッ
setEffMoveKey( spep_13 -3 + 22, ctdogon, -18.1, -238.2 , 0 );
setEffMoveKey( spep_13 -3 + 24, ctdogon, -17.7, -218.6 , 0 );
setEffMoveKey( spep_13 -3 + 26, ctdogon, -17.2, -201 , 0 );
setEffMoveKey( spep_13 -3 + 28, ctdogon, -16.7, -180.4 , 0 );
setEffMoveKey( spep_13 -3 + 30, ctdogon, -16.2, -163.9 , 0 );
setEffMoveKey( spep_13 -3 + 32, ctdogon, -16.2, -161.1 , 0 );
setEffMoveKey( spep_13 -3 + 34, ctdogon, -16.2, -163.6 , 0 );
setEffMoveKey( spep_13 -3 + 36, ctdogon, -16.2, -160.8 , 0 );
setEffMoveKey( spep_13 -3 + 38, ctdogon, -16.2, -163.4 , 0 );
setEffMoveKey( spep_13 -3 + 40, ctdogon, -16.2, -160.6 , 0 );
setEffMoveKey( spep_13 -3 + 42, ctdogon, -16.2, -163.2 , 0 );
setEffMoveKey( spep_13 -3 + 44, ctdogon, -16.2, -160.4 , 0 );
setEffMoveKey( spep_13 -3 + 46, ctdogon, -16.2, -163 , 0 );
setEffMoveKey( spep_13 -3 + 48, ctdogon, -16.2, -160.1 , 0 );
setEffMoveKey( spep_13 -3 + 50, ctdogon, -16.2, -162.7 , 0 );
setEffMoveKey( spep_13 -3 + 52, ctdogon, -16.2, -159.9 , 0 );
setEffMoveKey( spep_13 -3 + 54, ctdogon, -16.2, -162.4 , 0 );
setEffMoveKey( spep_13 -3 + 56, ctdogon, -16.2, -159.6 , 0 );
setEffMoveKey( spep_13 -3 + 58, ctdogon, -16.2, -162.2 , 0 );
setEffMoveKey( spep_13 -3 + 60, ctdogon, -16.2, -159.4 , 0 );
setEffMoveKey( spep_13 -3 + 62, ctdogon, -16.2, -162 , 0 );
setEffMoveKey( spep_13 -3 + 64, ctdogon, -16.2, -159.1 , 0 );
setEffMoveKey( spep_13 -3 + 66, ctdogon, -16.2, -161.7 , 0 );
setEffMoveKey( spep_13 -3 + 68, ctdogon, -16.2, -158.9 , 0 );
setEffMoveKey( spep_13 -3 + 70, ctdogon, -16.2, -161.5 , 0 );
setEffMoveKey( spep_13 -3 + 72, ctdogon, -16.2, -158.7 , 0 );
setEffMoveKey( spep_13 -3 + 74, ctdogon, -16.1, -161.3 , 0 );
setEffMoveKey( spep_13 -3 + 76, ctdogon, -16.1, -158.4 , 0 );
setEffMoveKey( spep_13 -3 + 78, ctdogon, -16.1, -161.1 , 0 );
setEffMoveKey( spep_13 -3 + 80, ctdogon, -16.1, -158.2 , 0 );
setEffMoveKey( spep_13 -3 + 82, ctdogon, -16.1, -160.8 , 0 );
setEffMoveKey( spep_13 -3 + 84, ctdogon, -16.1, -157.9 , 0 );
setEffMoveKey( spep_13 -3 + 86, ctdogon, -16.1, -160.5 , 0 );
setEffMoveKey( spep_13 -3 + 88, ctdogon, -16.1, -157.7 , 0 );
setEffMoveKey( spep_13 -3 + 90, ctdogon, -16.1, -160.3 , 0 );
setEffMoveKey( spep_13 -3 + 92, ctdogon, -16.1, -157.4 , 0 );
setEffMoveKey( spep_13 -3 + 94, ctdogon, -16.1, -160.1 , 0 );
setEffMoveKey( spep_13 -3 + 96, ctdogon, -16.1, -157.2 , 0 );
setEffMoveKey( spep_13 -3 + 98, ctdogon, -16.1, -159.8 , 0 );
setEffMoveKey( spep_13 -3 + 99, ctdogon, -16.1, -159.8 , 0 );

setEffScaleKey( spep_13 -3 + 22, ctdogon, 0.28, 0.28 );
setEffScaleKey( spep_13 -3 + 24, ctdogon, 0.76, 0.76 );
setEffScaleKey( spep_13 -3 + 26, ctdogon, 1.2, 1.2 );
setEffScaleKey( spep_13 -3 + 28, ctdogon, 1.7, 1.7 );
setEffScaleKey( spep_13 -3 + 30, ctdogon, 2.12, 2.12 );
setEffScaleKey( spep_13 -3 + 32, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 34, ctdogon, 2.13, 2.13 );
setEffScaleKey( spep_13 -3 + 36, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 38, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_13 -3 + 40, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 42, ctdogon, 2.14, 2.14 );
setEffScaleKey( spep_13 -3 + 44, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 46, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_13 -3 + 48, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 50, ctdogon, 2.15, 2.15 );
setEffScaleKey( spep_13 -3 + 52, ctdogon, 2.2, 2.2 );
setEffScaleKey( spep_13 -3 + 54, ctdogon, 2.16, 2.16 );
setEffScaleKey( spep_13 -3 + 56, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 58, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 60, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 62, ctdogon, 2.17, 2.17 );
setEffScaleKey( spep_13 -3 + 64, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 66, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 68, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 70, ctdogon, 2.18, 2.18 );
setEffScaleKey( spep_13 -3 + 72, ctdogon, 2.23, 2.23 );
setEffScaleKey( spep_13 -3 + 74, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 76, ctdogon, 2.24, 2.24 );
setEffScaleKey( spep_13 -3 + 78, ctdogon, 2.19, 2.19 );
setEffScaleKey( spep_13 -3 + 80, ctdogon, 2.24, 2.24 );
setEffScaleKey( spep_13 -3 + 82, ctdogon, 2.2, 2.2 );
setEffScaleKey( spep_13 -3 + 84, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_13 -3 + 86, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 88, ctdogon, 2.25, 2.25 );
setEffScaleKey( spep_13 -3 + 90, ctdogon, 2.21, 2.21 );
setEffScaleKey( spep_13 -3 + 92, ctdogon, 2.26, 2.26 );
setEffScaleKey( spep_13 -3 + 94, ctdogon, 2.22, 2.22 );
setEffScaleKey( spep_13 -3 + 96, ctdogon, 2.27, 2.27 );
setEffScaleKey( spep_13 -3 + 99, ctdogon, 2.22, 2.22 );

setEffRotateKey( spep_13 -3 + 22, ctdogon, 0 );
setEffRotateKey( spep_13 -3 + 99, ctdogon, 0 );

setEffAlphaKey( spep_13 -3 + 22, ctdogon, 255 );
setEffAlphaKey( spep_13 -3 + 88, ctdogon, 255 );
setEffAlphaKey( spep_13 -3 + 90, ctdogon, 207 );
setEffAlphaKey( spep_13 -3 + 92, ctdogon, 159 );
setEffAlphaKey( spep_13 -3 + 94, ctdogon, 111 );
setEffAlphaKey( spep_13 -3 + 96, ctdogon, 63 );
setEffAlphaKey( spep_13 -3 + 98, ctdogon, 15 );
setEffAlphaKey( spep_13 -3 + 99, ctdogon, 15 );

-- ** 音 ** --
--ラスト爆発
SE041 = playSeVer2( spep_13 + 8, 1188, "", 0, 0, 0, -1);

SE042 = playSeVer2( spep_13 + 8, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_13 + 6 );
endPhase( spep_13 + 106 );

end