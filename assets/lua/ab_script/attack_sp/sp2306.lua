--4023430:LR_超サイヤ人孫悟飯(未来)_超必殺技：爆力魔閃
--sp_effect_a9_00090
--sp2306

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
SP_01 = 158733; --開幕〜気弾構え セリフカットイン手前 ef_001
SP_02 = 158735; --開幕〜気弾構え セリフカットイン奥 ef_002
SP_03 = 158737; --気弾構え続き〜フィニッシュ ef_003

--敵側
SP_01r = 158734; --開幕〜気弾構え セリフカットイン手前 ef_001r
SP_02r = 158736; --開幕〜気弾構え セリフカットイン奥 ef_002r
SP_03r = 158738; --気弾構え続き〜フィニッシュ ef_003r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- エフェクト(754F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 754, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 754, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 754, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 754, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 754 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 754, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02, 754, 0x80, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 754, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 754, first_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 754, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 754 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 754, first_b, 0 );

spep_x = spep_0 + 642;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 142.9, -118.6 , 0 );
setMoveKey( spep_0 + 1, 1, 168.7, -143.1 , 0 );
setMoveKey( spep_0 + 2, 1, 168.7, -143.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 194.6, -167.6 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 194.6, -167.6 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 220.4, -192.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 220.4, -192.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 222.1, -193.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 223.7, -195.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 225.3, -196.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 226.8, -198.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 228.2, -199.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 229.5, -200.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 230.8, -202.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 232, -203.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 233.2, -204.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 234.2, -205.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 235.2, -206.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 236.2, -207.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 237, -208 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 237.8, -208.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 238.6, -209.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 239.2, -210 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 239.8, -210.6 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 240.3, -211.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 240.8, -211.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 241.1, -211.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 241.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 241.7, -212.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 241.9, -212.6 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 242, -212.7 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 242, -212.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 242, -212.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 6, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 7, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 8, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 9, 1, 0.54, 0.54 );
--setScaleKey( spep_0 -3 + 8, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 10, 1, 0.53, 0.53 );
--setScaleKey( spep_0 -3 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 18, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 20, 1, 0.51, 0.51 );
--etScaleKey( spep_0 -3 + 30, 1, 0.51, 0.51 );
--setScaleKey( spep_0 -3 + 32, 1, 0.5, 0.5 );
--setScaleKey( spep_0 -3 + 59, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 60, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6.2 );
setRotateKey( spep_0 + 2, 1, -6.2 );
setRotateKey( spep_0 + 3, 1, -6.2 );
setRotateKey( spep_0 + 4, 1, -6.2 );
setRotateKey( spep_0 + 5, 1, -6.2 );
setRotateKey( spep_0 + 6, 1, -6.2 );
setRotateKey( spep_0 -3 + 60, 1, -6.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1232, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 58, 9, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 58, 1314, "",spep_0 + 200, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 754 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

    pauseAll( SP_dodge, 67);   

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 -3 + 200, 1, 1 );
setDisp( spep_0 -3 + 304, 1, 0 );
changeAnime( spep_0 -3 + 200, 1, 106 );
changeAnime( spep_0 -3 + 276, 1, 107 );

setMoveKey( spep_0 -3 + 200, 1, -378.3, -0.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, -181, 32.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, 12.3, 69.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, 24.9, 46.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, 23.1, 31.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, 31.2, 57.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, 21, 75 , 0 );
setMoveKey( spep_0 -3 + 214, 1, 29.8, 70.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, 22.5, 72.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, 21.1, 87.4 , 0 );
setMoveKey( spep_0 -3 + 220, 1, 37, 74.3 , 0 );
setMoveKey( spep_0 -3 + 222, 1, 25.2, 78.2 , 0 );
setMoveKey( spep_0 -3 + 224, 1, 40.8, 92.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, 36.6, 100.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, 60.6, 89.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, 56.7, 96.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, 80.2, 112.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, 89.7, 117.2 , 0 );
setMoveKey( spep_0 -3 + 236, 1, 99, 121.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, 106.3, 122.8 , 0 );
setMoveKey( spep_0 -3 + 240, 1, 110.3, 119.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, 110.9, 111.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, 107.6, 99.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, 100.1, 83.2 , 0 );
setMoveKey( spep_0 -3 + 248, 1, 102.7, 77.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, 105.4, 73.3 , 0 );
setMoveKey( spep_0 -3 + 252, 1, 108.2, 70.5 , 0 );
setMoveKey( spep_0 -3 + 254, 1, 111.1, 69.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, 114.1, 69.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, 116.8, 70.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, 118.9, 71.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, 120.4, 73 , 0 );
setMoveKey( spep_0 -3 + 264, 1, 121.3, 74.6 , 0 );
setMoveKey( spep_0 -3 + 266, 1, 121.5, 76.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, 121.2, 78.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, 120.2, 80.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, 118.7, 82.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, 116.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 275, 1, 116.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, 102.9, -33.7 , 0 );--
setMoveKey( spep_0 -3 + 278, 1, 171.8, -58.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, 128.5, -26.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, 84.1, 6 , 0 );
setMoveKey( spep_0 -3 + 284, 1, 71.4, 15.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, 81.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, 63.7, 1.5 , 0 );
setMoveKey( spep_0 -3 + 290, 1, 73.2, 13.3 , 0 );
setMoveKey( spep_0 -3 + 292, 1, 55.1, 16.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, 65.2, 1.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, 47.4, 3.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, 225.3, 32.4 , 0 );
setMoveKey( spep_0 -3 + 300, 1, 278.7, 50.4 , 0 );
setMoveKey( spep_0 -3 + 302, 1, 477.9, 28.4 , 0 );
setMoveKey( spep_0 -3 + 304, 1, 679.2, 6.2 , 0 );

setScaleKey( spep_0 -3 + 200, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 204, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 206, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 207, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 208, 1, 3.597, 3.597 );
setScaleKey( spep_0 -3 + 209, 1, 3.597, 3.597 );
setScaleKey( spep_0 -3 + 210, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 211, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 212, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 214, 1, 2.079, 2.079 );
setScaleKey( spep_0 -3 + 216, 1, 2.134, 2.134 );
setScaleKey( spep_0 -3 + 218, 1, 2.178, 2.178 );
setScaleKey( spep_0 -3 + 220, 1, 2.233, 2.233 );
setScaleKey( spep_0 -3 + 222, 1, 2.277, 2.277 );
setScaleKey( spep_0 -3 + 224, 1, 2.321, 2.321 );
setScaleKey( spep_0 -3 + 226, 1, 2.376, 2.376 );
setScaleKey( spep_0 -3 + 228, 1, 2.420, 2.420 );
setScaleKey( spep_0 -3 + 230, 1, 2.475, 2.475 );
setScaleKey( spep_0 -3 + 232, 1, 2.519, 2.519 );
setScaleKey( spep_0 -3 + 234, 1, 2.574, 2.574 );
setScaleKey( spep_0 -3 + 236, 1, 2.618, 2.618 );
setScaleKey( spep_0 -3 + 238, 1, 2.596, 2.596 );
setScaleKey( spep_0 -3 + 240, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 242, 1, 2.409, 2.409 );
setScaleKey( spep_0 -3 + 244, 1, 2.244, 2.244 );
setScaleKey( spep_0 -3 + 246, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 275, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 276, 1, 1.375, 1.375 );
setScaleKey( spep_0 -3 + 277, 1, 1.375, 1.375 );
setScaleKey( spep_0 -3 + 278, 1, 1.837, 1.837 );
setScaleKey( spep_0 -3 + 279, 1, 1.837, 1.837 );
setScaleKey( spep_0 -3 + 280, 1, 1.386, 1.386 );
setScaleKey( spep_0 -3 + 281, 1, 1.386, 1.386 );
setScaleKey( spep_0 -3 + 282, 1, 0.924, 0.924 );
setScaleKey( spep_0 -3 + 284, 1, 0.935, 0.935 );
setScaleKey( spep_0 -3 + 286, 1, 0.946, 0.946 );
setScaleKey( spep_0 -3 + 288, 1, 0.957, 0.957 );
setScaleKey( spep_0 -3 + 290, 1, 0.968, 0.968 );
setScaleKey( spep_0 -3 + 292, 1, 0.979, 0.979 );
setScaleKey( spep_0 -3 + 294, 1, 0.979, 0.979 );
setScaleKey( spep_0 -3 + 296, 1, 0.990, 0.990 );
setScaleKey( spep_0 -3 + 298, 1, 1.221, 1.221 );
setScaleKey( spep_0 -3 + 300, 1, 1.452, 1.452 );
setScaleKey( spep_0 -3 + 302, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 304, 1, 1.628, 1.628 );

setRotateKey( spep_0 -3 + 200, 1, -19.4 );
setRotateKey( spep_0 -3 + 224, 1, -19.4 );
setRotateKey( spep_0 -3 + 226, 1, -19 );
setRotateKey( spep_0 -3 + 228, 1, -18.7 );
setRotateKey( spep_0 -3 + 230, 1, -18.3 );
setRotateKey( spep_0 -3 + 232, 1, -18 );
setRotateKey( spep_0 -3 + 234, 1, -17.7 );
setRotateKey( spep_0 -3 + 236, 1, -17.4 );
setRotateKey( spep_0 -3 + 238, 1, -17.1 );
setRotateKey( spep_0 -3 + 240, 1, -16.9 );
setRotateKey( spep_0 -3 + 242, 1, -16.6 );
setRotateKey( spep_0 -3 + 244, 1, -16.4 );
setRotateKey( spep_0 -3 + 246, 1, -16.2 );
setRotateKey( spep_0 -3 + 248, 1, -16 );
setRotateKey( spep_0 -3 + 250, 1, -15.8 );
setRotateKey( spep_0 -3 + 252, 1, -15.6 );
setRotateKey( spep_0 -3 + 254, 1, -15.5 );
setRotateKey( spep_0 -3 + 256, 1, -15.3 );
setRotateKey( spep_0 -3 + 258, 1, -15.2 );
setRotateKey( spep_0 -3 + 260, 1, -15.1 );
setRotateKey( spep_0 -3 + 262, 1, -15 );
setRotateKey( spep_0 -3 + 264, 1, -14.9 );
setRotateKey( spep_0 -3 + 266, 1, -14.8 );
setRotateKey( spep_0 -3 + 268, 1, -14.8 );
setRotateKey( spep_0 -3 + 270, 1, -14.7 );
setRotateKey( spep_0 -3 + 275, 1, -14.7 );
setRotateKey( spep_0 -3 + 276, 1, -36.3 );--
setRotateKey( spep_0 -3 + 278, 1, -36.2 );
setRotateKey( spep_0 -3 + 280, 1, -36.1 );
setRotateKey( spep_0 -3 + 282, 1, -36 );
setRotateKey( spep_0 -3 + 284, 1, -35.9 );
setRotateKey( spep_0 -3 + 286, 1, -35.8 );
setRotateKey( spep_0 -3 + 288, 1, -35.7 );
setRotateKey( spep_0 -3 + 290, 1, -35.6 );
setRotateKey( spep_0 -3 + 292, 1, -35.5 );
setRotateKey( spep_0 -3 + 294, 1, -35.4 );
setRotateKey( spep_0 -3 + 296, 1, -35.3 );
setRotateKey( spep_0 -3 + 298, 1, -30.2 );
setRotateKey( spep_0 -3 + 300, 1, -25.1 );
setRotateKey( spep_0 -3 + 304, 1, -25.1 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 -3 + 324, 1, 1 );
setDisp( spep_0 -3 + 532, 1, 0 );
changeAnime( spep_0 -3 + 324, 1, 5 );
changeAnime( spep_0 -3 + 344, 1, 106 );
changeAnime( spep_0 -3 + 470, 1, 108 );
changeAnime( spep_0 -3 + 522, 1, 106 );

setMoveKey( spep_0 -3 + 324, 1, -625.2, -572.9 , 0 );
setMoveKey( spep_0 -3 + 326, 1, -331.4, -306.7 , 0 );
setMoveKey( spep_0 -3 + 328, 1, -37.6, -40.5 , 0 );
setMoveKey( spep_0 -3 + 330, 1, -31.7, -34 , 0 );
setMoveKey( spep_0 -3 + 332, 1, -26.6, -28.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, -22.5, -24 , 0 );
setMoveKey( spep_0 -3 + 336, 1, -19.4, -20.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, -17.2, -18.3 , 0 );
setMoveKey( spep_0 -3 + 340, 1, -16, -17 , 0 );
setMoveKey( spep_0 -3 + 342, 1, -16.9, -15.9 , 0 );
setMoveKey( spep_0 -3 + 343, 1, -16.9, -15.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, -18.7, 4.9 , 0 );--
setMoveKey( spep_0 -3 + 346, 1, -26.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, -23.9, 10.1 , 0 );
setMoveKey( spep_0 -3 + 350, 1, -13, -3.5 , 0 );
setMoveKey( spep_0 -3 + 352, 1, -10.1, 8.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, -4.7, 0.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, -11.3, 8.1 , 0 );
setMoveKey( spep_0 -3 + 358, 1, -12.9, -3.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, -2.6, 7.3 , 0 );
setMoveKey( spep_0 -3 + 362, 1, -1.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 364, 1, -11.5, 8.1 , 0 );
setMoveKey( spep_0 -3 + 366, 1, -13.1, -3.4 , 0 );
setMoveKey( spep_0 -3 + 368, 1, -2.8, 7.3 , 0 );
setMoveKey( spep_0 -3 + 370, 1, -1.4, -0.4 , 0 );
setMoveKey( spep_0 -3 + 372, 1, -11.7, 8.1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, -13.3, -3.4 , 0 );
setMoveKey( spep_0 -3 + 376, 1, -3, 7.3 , 0 );
setMoveKey( spep_0 -3 + 378, 1, -4.5, 5.1 , 0 );
setMoveKey( spep_0 -3 + 380, 1, -9.7, 1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, -9.8, 5.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, -3.9, 1.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, -4.6, 5.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, -9.8, 1 , 0 );
setMoveKey( spep_0 -3 + 390, 1, -9.9, 5.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, -4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 394, 1, -4.8, 5.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, -10, 1 , 0 );
setMoveKey( spep_0 -3 + 398, 1, -10, 5.3 , 0 );
setMoveKey( spep_0 -3 + 400, 1, -4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, -6.4, 1.3 , 0 );
setMoveKey( spep_0 -3 + 404, 1, -8.6, 5.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, -10, 3.2 , 0 );
setMoveKey( spep_0 -3 + 408, 1, -6.9, 2.9 , 0 );
setMoveKey( spep_0 -3 + 410, 1, 122.5, -114.9 , 0 );
setMoveKey( spep_0 -3 + 412, 1, 121.5, -114.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, 120.9, -114.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, 120.7, -114.5 , 0 );
setMoveKey( spep_0 -3 + 418, 1, 120.9, -114.4 , 0 );
setMoveKey( spep_0 -3 + 420, 1, 121.5, -114.1 , 0 );
setMoveKey( spep_0 -3 + 422, 1, 122.5, -113.9 , 0 );
setMoveKey( spep_0 -3 + 424, 1, 123.9, -113.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, 125.7, -113.2 , 0 );
setMoveKey( spep_0 -3 + 428, 1, 127.8, -112.8 , 0 );
setMoveKey( spep_0 -3 + 430, 1, 130.4, -112.4 , 0 );
setMoveKey( spep_0 -3 + 432, 1, 133.4, -112 , 0 );
setMoveKey( spep_0 -3 + 434, 1, 136.7, -111.5 , 0 );
setMoveKey( spep_0 -3 + 436, 1, 140.5, -110.9 , 0 );
setMoveKey( spep_0 -3 + 438, 1, 144.3, -110.4 , 0 );
setMoveKey( spep_0 -3 + 440, 1, 147.8, -109.9 , 0 );
setMoveKey( spep_0 -3 + 442, 1, 151, -109.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, 153.8, -108.9 , 0 );
setMoveKey( spep_0 -3 + 446, 1, 156.3, -108.5 , 0 );
setMoveKey( spep_0 -3 + 448, 1, 158.5, -108.1 , 0 );
setMoveKey( spep_0 -3 + 450, 1, 160.4, -107.8 , 0 );
setMoveKey( spep_0 -3 + 452, 1, 162, -107.4 , 0 );
setMoveKey( spep_0 -3 + 454, 1, 163.2, -107.1 , 0 );
setMoveKey( spep_0 -3 + 456, 1, 164.1, -106.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, 164.7, -106.6 , 0 );
setMoveKey( spep_0 -3 + 460, 1, 165, -106.4 , 0 );
setMoveKey( spep_0 -3 + 462, 1, 164.9, -106.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, 164.5, -106.1 , 0 );
setMoveKey( spep_0 -3 + 466, 1, 163.8, -106 , 0 );
setMoveKey( spep_0 -3 + 468, 1, 162.8, -105.9 , 0 );
setMoveKey( spep_0 -3 + 469, 1, 162.8, -105.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, 89.2, -143.9 , 0 );--
setMoveKey( spep_0 -3 + 472, 1, 89.2, -55.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, 89.2, 32.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, 89.2, 66.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, 120.1, 89 , 0 );
setMoveKey( spep_0 -3 + 480, 1, 138.9, 115.4 , 0 );
setMoveKey( spep_0 -3 + 482, 1, 92.8, 76.8 , 0 );
setMoveKey( spep_0 -3 + 484, 1, 116.9, 107.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, 155.8, 132.5 , 0 );
setMoveKey( spep_0 -3 + 488, 1, 120.9, 108.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, 89.3, 80.2 , 0 );
setMoveKey( spep_0 -3 + 492, 1, 95.7, 92 , 0 );
setMoveKey( spep_0 -3 + 494, 1, 86.1, 79.1 , 0 );
setMoveKey( spep_0 -3 + 496, 1, 94.6, 82.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, 85, 94 , 0 );
setMoveKey( spep_0 -3 + 500, 1, 95.7, 100.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, 86, 87.4 , 0 );
setMoveKey( spep_0 -3 + 504, 1, 94.6, 90.6 , 0 );
setMoveKey( spep_0 -3 + 506, 1, 85, 102.4 , 0 );
setMoveKey( spep_0 -3 + 508, 1, 95.7, 108.6 , 0 );
setMoveKey( spep_0 -3 + 510, 1, 86, 95.7 , 0 );
setMoveKey( spep_0 -3 + 512, 1, 94.6, 98.9 , 0 );
setMoveKey( spep_0 -3 + 514, 1, 85, 110.7 , 0 );
setMoveKey( spep_0 -3 + 516, 1, 95.7, 117 , 0 );
setMoveKey( spep_0 -3 + 518, 1, 86, 104.1 , 0 );
setMoveKey( spep_0 -3 + 520, 1, 91, 186 , 0 );
setMoveKey( spep_0 -3 + 521, 1, 91, 186 , 0 );
setMoveKey( spep_0 -3 + 522, 1, 77.8, 276.6 , 0 );--
setMoveKey( spep_0 -3 + 524, 1, 81.4, 442 , 0 );
setMoveKey( spep_0 -3 + 526, 1, 64.7, 588.2 , 0 );
setMoveKey( spep_0 -3 + 528, 1, 73.2, 767.8 , 0 );
setMoveKey( spep_0 -3 + 530, 1, 63.6, 955.9 , 0 );
setMoveKey( spep_0 -3 + 532, 1, 74.3, 1138.6 , 0 );

setScaleKey( spep_0 -3 + 324, 1, 6.74, 6.74 );
setScaleKey( spep_0 -3 + 326, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 328, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 330, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 332, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 334, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 336, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 338, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 340, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 343, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 344, 1, 1.64, 1.64 );--
setScaleKey( spep_0 -3 + 345, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 346, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 347, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 348, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 349, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 350, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 351, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 352, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 353, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 354, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 355, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 356, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 358, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 360, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 364, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 366, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 372, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 374, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 382, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 384, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 402, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 404, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 408, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 409, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 410, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 468, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 469, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 470, 1, 1.86, 1.86 );--
setScaleKey( spep_0 -3 + 476, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 477, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 478, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 479, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 480, 1, 3.16, 3.16 );
setScaleKey( spep_0 -3 + 481, 1, 3.16, 3.16 );
setScaleKey( spep_0 -3 + 482, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 483, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 484, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 485, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 486, 1, 3.34, 3.34 );
setScaleKey( spep_0 -3 + 487, 1, 3.34, 3.34 );
setScaleKey( spep_0 -3 + 488, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 489, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 490, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 521, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 522, 1, 1.86, 1.86 );--
setScaleKey( spep_0 -3 + 532, 1, 1.86, 1.86 );

setRotateKey( spep_0 -3 + 324, 1, 29.8 );
setRotateKey( spep_0 -3 + 326, 1, 29.8 );
setRotateKey( spep_0 -3 + 328, 1, 29.9 );
setRotateKey( spep_0 -3 + 343, 1, 29.9 );
setRotateKey( spep_0 -3 + 344, 1, -44.7 );--
setRotateKey( spep_0 -3 + 408, 1, -44.7 );
setRotateKey( spep_0 -3 + 410, 1, -58.2 );
setRotateKey( spep_0 -3 + 412, 1, -58.5 );
setRotateKey( spep_0 -3 + 414, 1, -58.7 );
setRotateKey( spep_0 -3 + 416, 1, -59 );
setRotateKey( spep_0 -3 + 418, 1, -59.3 );
setRotateKey( spep_0 -3 + 420, 1, -59.6 );
setRotateKey( spep_0 -3 + 422, 1, -59.8 );
setRotateKey( spep_0 -3 + 424, 1, -60.1 );
setRotateKey( spep_0 -3 + 426, 1, -60.4 );
setRotateKey( spep_0 -3 + 428, 1, -60.7 );
setRotateKey( spep_0 -3 + 430, 1, -60.9 );
setRotateKey( spep_0 -3 + 432, 1, -61.2 );
setRotateKey( spep_0 -3 + 434, 1, -61.5 );
setRotateKey( spep_0 -3 + 436, 1, -61.8 );
setRotateKey( spep_0 -3 + 438, 1, -62.1 );
setRotateKey( spep_0 -3 + 440, 1, -62.3 );
setRotateKey( spep_0 -3 + 442, 1, -62.6 );
setRotateKey( spep_0 -3 + 444, 1, -62.9 );
setRotateKey( spep_0 -3 + 446, 1, -63.2 );
setRotateKey( spep_0 -3 + 448, 1, -63.4 );
setRotateKey( spep_0 -3 + 450, 1, -63.7 );
setRotateKey( spep_0 -3 + 452, 1, -64 );
setRotateKey( spep_0 -3 + 454, 1, -64.3 );
setRotateKey( spep_0 -3 + 456, 1, -64.5 );
setRotateKey( spep_0 -3 + 458, 1, -64.8 );
setRotateKey( spep_0 -3 + 460, 1, -65.1 );
setRotateKey( spep_0 -3 + 462, 1, -65.4 );
setRotateKey( spep_0 -3 + 464, 1, -65.7 );
setRotateKey( spep_0 -3 + 466, 1, -65.9 );
setRotateKey( spep_0 -3 + 468, 1, -66.2 );
setRotateKey( spep_0 -3 + 469, 1, -66.2 );
setRotateKey( spep_0 -3 + 470, 1, -50.9 );--
setRotateKey( spep_0 -3 + 518, 1, -50.9 );
setRotateKey( spep_0 -3 + 520, 1, -49.6 );
setRotateKey( spep_0 -3 + 521, 1, -49.6 );
setRotateKey( spep_0 -3 + 522, 1, -48.2 );--
setRotateKey( spep_0 -3 + 524, 1, -45.6 );
setRotateKey( spep_0 -3 + 526, 1, -42.9 );
setRotateKey( spep_0 -3 + 532, 1, -42.9 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 608, 1, 1 );
setDisp( spep_0 -3 + 635, 1, 0 );
changeAnime( spep_0 -3 + 608, 1, 107 );

setMoveKey( spep_0 -3 + 608, 1, 218.4, 25.2 , 0 );
setMoveKey( spep_0 -3 + 610, 1, 182.7, 13.8 , 0 );
setMoveKey( spep_0 -3 + 612, 1, 126, -3.6 , 0 );
setMoveKey( spep_0 -3 + 614, 1, 73.1, -13.1 , 0 );
setMoveKey( spep_0 -3 + 616, 1, 26.7, -31.8 , 0 );
setMoveKey( spep_0 -3 + 618, 1, -13.7, -51 , 0 );
setMoveKey( spep_0 -3 + 620, 1, -62.1, -64.9 , 0 );
setMoveKey( spep_0 -3 + 622, 1, -43.5, -55.5 , 0 );
setMoveKey( spep_0 -3 + 624, 1, -25, -37.6 , 0 );
setMoveKey( spep_0 -3 + 626, 1, 20.9, -18.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, 100.5, 15 , 0 );
setMoveKey( spep_0 -3 + 630, 1, 200.4, 67.8 , 0 );
setMoveKey( spep_0 -3 + 632, 1, 330.9, 142.3 , 0 );
setMoveKey( spep_0 -3 + 634, 1, 495.6, 221.8 , 0 );
setMoveKey( spep_0 -3 + 635, 1, 495.6, 221.8 , 0 );

setScaleKey( spep_0 -3 + 608, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 610, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 612, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 620, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 622, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 624, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 626, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 628, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 630, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 632, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 634, 1, 1.97, 1.97 );
setScaleKey( spep_0 -3 + 635, 1, 1.97, 1.97 );

setRotateKey( spep_0 -3 + 608, 1, -21.5 );
setRotateKey( spep_0 -3 + 610, 1, -21.6 );
setRotateKey( spep_0 -3 + 612, 1, -22.3 );
setRotateKey( spep_0 -3 + 614, 1, -23.1 );
setRotateKey( spep_0 -3 + 616, 1, -23.8 );
setRotateKey( spep_0 -3 + 618, 1, -24.6 );
setRotateKey( spep_0 -3 + 620, 1, -25.4 );
setRotateKey( spep_0 -3 + 634, 1, -25.4 );
setRotateKey( spep_0 -3 + 635, 1, -25.4 );

-- ** 音 ** --
SE006 = playSeVer2( spep_0 + 110, 1167, "",spep_0 + 164, 0, 8, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE006, 52 );

--振りかぶる
SE007 = playSeVer2( spep_0 + 156, 1116, "",spep_0 + 202, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 156, SE007, 164 );
setPitch( spep_0 + 156, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 164, 1004, "", 0, 0, 0, -1);			

--膝蹴り
SE009 = playSeVer2( spep_0 + 196, 1006, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 1049, "",spep_0 + 238, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 75 );
SE011 = playSeVer2( spep_0 + 198, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE011, 88 );
SE012 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 79 );

--蹴り飛ばし
SE013 = playSeVer2( spep_0 + 262, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 268, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 294, 1183, "",spep_0 + 358, 0, 22, -1);

--壁激突
SE016 = playSeVer2( spep_0 + 334, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE016, 79 );
SE017 = playSeVer2( spep_0 + 336, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE017, 79 );

--瞬間移動
SE018 = playSeVer2( spep_0 + 418, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE019 = playSeVer2( spep_0 + 458, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 466, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE020, 92 );
SE021 = playSeVer2( spep_0 + 466, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE021, 100 );
SE022 = playSeVer2( spep_0 + 466, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE022, 39 );
SE023 = playSeVer2( spep_0 + 466, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE023, 88 );

--壁削りながら上昇
SE024 = playSeVer2( spep_0 + 508, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 508, 1025, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 508, 1044, "",spep_0 + 626, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 532, SE026, 100 );
setSeVolumeByWorkId( spep_0 + 540, SE026, 116 );
setSeVolumeByWorkId( spep_0 + 548, SE026, 132 );
setSeVolumeByWorkId( spep_0 + 556, SE026, 148 );
setSeVolumeByWorkId( spep_0 + 564, SE026, 164 );
setSeVolumeByWorkId( spep_0 + 572, SE026, 180 );
setSeVolumeByWorkId( spep_0 + 580, SE026, 196 );
setSeVolumeByWorkId( spep_0 + 588, SE026, 212 );
setSeVolumeByWorkId( spep_0 + 596, SE026, 228 );
setSeVolumeByWorkId( spep_0 + 604, SE026, 244 );
setSeVolumeByWorkId( spep_0 + 612, SE026, 260 );

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 612, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 612, 1183, "",spep_0 + 682, 0, 26, -1);

--顔カットイン
SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_0 + 650, 1307, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 650, SE030, 309 );
SE031 = playSeVer2( spep_0 + 676, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE031,  167 );
SE032 = playSeVer2( spep_0 + 676, 1296, "",spep_0 +750 + 12, 0, 8, -1);
setPitch( spep_0 + 676, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_0 + 676, 1282, "",spep_0 +750 + 10, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 676, SE033, 65 );
setPitch( spep_0 + 676, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 754;

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
-- playSe( spep_1 + 0, SE_05 );

--発射前気弾溜め
SE035 = playSeVer2( spep_1 + 82, 1296, "",spep_1 +94 + 38, 20, 8, -1);
setStartTimeMs( SE035,  350 );
setPitch( spep_1 + 82, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_1 +90, 1328, "", 0, 30, 0, -1);
setStartTimeMs( SE036,  200 );
SE037 = playSeVer2( spep_1 + 86, 1282, "",spep_1 +94 + 96, 20, 8, -1);
setSeVolumeByWorkId( spep_1 + 86, SE037, 69 );
setStartTimeMs( SE037,  133 );
setPitch( spep_1 + 86, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_1 + 88, 1307, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾構え続き〜フィニッシュ(380F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾構え続き〜フィニッシュ   ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 380, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 380, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 380, finish_f, 255 );

-- ** 音 ** --
--発射前気弾溜め
SE039 = playSeVer2( spep_2 + 24, 1276, "",spep_2 + 62, 4, 6, -1);
setSeVolumeByWorkId( spep_2 + 24, SE039, 83 );
setStartTimeMs( SE039,  317 );
setPitch( spep_2 + 24, SE039, 100 );
setTimeStretch( SE039, 1.07, 30, 4 );
SE040 = playSeVer2( spep_2 + 48, 1276, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE040, 71 );
setStartTimeMs( SE040,  317 );
setPitch( spep_2 + 48, SE040, 800 );
setTimeStretch( SE040, 1.53, 30, 4 );

--気弾発射
SE041 = playSeVer2( spep_2 + 86, 1027, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 86, 1109, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 86, 1284, "", 0, 0, 0, 0.6);
SE044 = playSeVer2( spep_2 + 86, 1213, "",spep_2 + 334, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 86, SE044, 70 );

--縦気弾発射
SE045 = playSeVer2( spep_2 + 130, 1211, "",spep_2 + 338, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 130, SE045, 260 );
SE046 = playSeVer2( spep_2 + 136, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE046, 65 );

--気弾発射_背後
SE047 = playSeVer2( spep_2 + 170, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE047, 141 );
setPitch( spep_2 + 170, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_2 + 190, 1161, "",spep_2 + 342, 0, 50, -1);

--気弾撃ち終わり
SE049 = playSeVer2( spep_2 + 276, 1263, "", 0, 16, 0, -1);
setStartTimeMs( SE049,  467 );
SE050 = playSeVer2( spep_2 + 276, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE050, 168 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 380 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270 );
endPhase( spep_2 + 370 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- エフェクト(754F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01r, 754, 0x100, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 754, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 754, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 754, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 754 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 754, first_f, 0 );

first_b = entryEffectLife( spep_0 + 0, SP_02r, 754, 0x80, -1, 0, 0, 0 );  --正面突進 ef_001
setEffMoveKey( spep_0 + 0, first_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 754, first_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 754, first_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_b, 0 );
setEffRotateKey( spep_0 + 754, first_b, 0 );
setEffAlphaKey( spep_0 + 0, first_b, 255 );
setEffAlphaKey( spep_0 + 754 -1, first_b, 255 );
setEffAlphaKey( spep_0 + 754, first_b, 0 );

spep_x = spep_0 + 642;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 5, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 5, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 5, 515.5 , 0 );
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

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 -3 + 60, 1, 0 );
changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 142.9, -118.6 , 0 );
setMoveKey( spep_0 + 1, 1, 168.7, -143.1 , 0 );
setMoveKey( spep_0 + 2, 1, 168.7, -143.1 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 194.6, -167.6 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 194.6, -167.6 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 220.4, -192.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 220.4, -192.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 222.1, -193.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 223.7, -195.3 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 225.3, -196.8 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 226.8, -198.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 228.2, -199.6 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 229.5, -200.8 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 230.8, -202.1 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 232, -203.2 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 233.2, -204.3 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 234.2, -205.3 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 235.2, -206.3 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 236.2, -207.2 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 237, -208 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 237.8, -208.7 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 238.6, -209.4 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 239.2, -210 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 239.8, -210.6 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 240.3, -211.1 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 240.8, -211.5 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 241.1, -211.9 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 241.5, -212.2 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 241.7, -212.4 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 241.9, -212.6 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 242, -212.7 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 242, -212.7 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 242, -212.7 , 0 );

setScaleKey( spep_0 + 0, 1, 0.65, 0.65 );
setScaleKey( spep_0 + 1, 1, 0.61, 0.61 );
setScaleKey( spep_0 + 2, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 6, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 7, 1, 0.56, 0.56 );
setScaleKey( spep_0 -3 + 8, 1, 0.55, 0.55 );
setScaleKey( spep_0 -3 + 9, 1, 0.54, 0.54 );
--setScaleKey( spep_0 -3 + 8, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 10, 1, 0.53, 0.53 );
--setScaleKey( spep_0 -3 + 12, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 18, 1, 0.52, 0.52 );
setScaleKey( spep_0 -3 + 20, 1, 0.51, 0.51 );
--etScaleKey( spep_0 -3 + 30, 1, 0.51, 0.51 );
--setScaleKey( spep_0 -3 + 32, 1, 0.5, 0.5 );
--setScaleKey( spep_0 -3 + 59, 1, 0.5, 0.5 );
setScaleKey( spep_0 -3 + 60, 1, 0.5, 0.5 );

setRotateKey( spep_0 + 0, 1, -6.2 );
setRotateKey( spep_0 + 1, 1, -6.2 );
setRotateKey( spep_0 + 2, 1, -6.2 );
setRotateKey( spep_0 + 3, 1, -6.2 );
setRotateKey( spep_0 + 4, 1, -6.2 );
setRotateKey( spep_0 + 5, 1, -6.2 );
setRotateKey( spep_0 + 6, 1, -6.2 );
setRotateKey( spep_0 -3 + 60, 1, -6.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1232, "", 0, 0, 0, -1);

--向かってくる
SE003 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 58, 9, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 58, 1314, "",spep_0 + 200, 0, 8, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 754 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);

    pauseAll( SP_dodge, 67);   

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 敵キャラクター ** --
--敵の動き2
setDisp( spep_0 -3 + 200, 1, 1 );
setDisp( spep_0 -3 + 304, 1, 0 );
changeAnime( spep_0 -3 + 200, 1, 6 );
changeAnime( spep_0 -3 + 276, 1, 7 );

setMoveKey( spep_0 -3 + 200, 1, 378.3, -0.9 , 0 );
setMoveKey( spep_0 -3 + 202, 1, 181, 32.3 , 0 );
setMoveKey( spep_0 -3 + 204, 1, -12.3, 69.5 , 0 );
setMoveKey( spep_0 -3 + 206, 1, -24.9, 46.5 , 0 );
setMoveKey( spep_0 -3 + 208, 1, -23.1, 31.4 , 0 );
setMoveKey( spep_0 -3 + 210, 1, -31.2, 57.9 , 0 );
setMoveKey( spep_0 -3 + 212, 1, -21, 75 , 0 );
setMoveKey( spep_0 -3 + 214, 1, -29.8, 70.1 , 0 );
setMoveKey( spep_0 -3 + 216, 1, -22.5, 72.2 , 0 );
setMoveKey( spep_0 -3 + 218, 1, -21.1, 87.4 , 0 );
setMoveKey( spep_0 -3 + 220, 1, -37, 74.3 , 0 );
setMoveKey( spep_0 -3 + 222, 1, -25.2, 78.2 , 0 );
setMoveKey( spep_0 -3 + 224, 1, -40.8, 92.4 , 0 );
setMoveKey( spep_0 -3 + 226, 1, -36.6, 100.5 , 0 );
setMoveKey( spep_0 -3 + 228, 1, -60.6, 89.8 , 0 );
setMoveKey( spep_0 -3 + 230, 1, -56.7, 96.1 , 0 );
setMoveKey( spep_0 -3 + 232, 1, -80.2, 112.4 , 0 );
setMoveKey( spep_0 -3 + 234, 1, -89.7, 117.2 , 0 );
setMoveKey( spep_0 -3 + 236, 1, -99, 121.9 , 0 );
setMoveKey( spep_0 -3 + 238, 1, -106.3, 122.8 , 0 );
setMoveKey( spep_0 -3 + 240, 1, -110.3, 119.5 , 0 );
setMoveKey( spep_0 -3 + 242, 1, -110.9, 111.9 , 0 );
setMoveKey( spep_0 -3 + 244, 1, -107.6, 99.8 , 0 );
setMoveKey( spep_0 -3 + 246, 1, -100.1, 83.2 , 0 );
setMoveKey( spep_0 -3 + 248, 1, -102.7, 77.5 , 0 );
setMoveKey( spep_0 -3 + 250, 1, -105.4, 73.3 , 0 );
setMoveKey( spep_0 -3 + 252, 1, -108.2, 70.5 , 0 );
setMoveKey( spep_0 -3 + 254, 1, -111.1, 69.2 , 0 );
setMoveKey( spep_0 -3 + 256, 1, -114.1, 69.4 , 0 );
setMoveKey( spep_0 -3 + 258, 1, -116.8, 70.4 , 0 );
setMoveKey( spep_0 -3 + 260, 1, -118.9, 71.6 , 0 );
setMoveKey( spep_0 -3 + 262, 1, -120.4, 73 , 0 );
setMoveKey( spep_0 -3 + 264, 1, -121.3, 74.6 , 0 );
setMoveKey( spep_0 -3 + 266, 1, -121.5, 76.3 , 0 );
setMoveKey( spep_0 -3 + 268, 1, -121.2, 78.2 , 0 );
setMoveKey( spep_0 -3 + 270, 1, -120.2, 80.3 , 0 );
setMoveKey( spep_0 -3 + 272, 1, -118.7, 82.5 , 0 );
setMoveKey( spep_0 -3 + 274, 1, -116.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 275, 1, -116.4, 84.9 , 0 );
setMoveKey( spep_0 -3 + 276, 1, -102.9, -33.7 , 0 );--
setMoveKey( spep_0 -3 + 278, 1, -171.8, -58.5 , 0 );
setMoveKey( spep_0 -3 + 280, 1, -128.5, -26.3 , 0 );
setMoveKey( spep_0 -3 + 282, 1, -84.1, 6 , 0 );
setMoveKey( spep_0 -3 + 284, 1, -71.4, 15.2 , 0 );
setMoveKey( spep_0 -3 + 286, 1, -81.5, -0.1 , 0 );
setMoveKey( spep_0 -3 + 288, 1, -63.7, 1.5 , 0 );
setMoveKey( spep_0 -3 + 290, 1, -73.2, 13.3 , 0 );
setMoveKey( spep_0 -3 + 292, 1, -55.1, 16.8 , 0 );
setMoveKey( spep_0 -3 + 294, 1, -65.2, 1.5 , 0 );
setMoveKey( spep_0 -3 + 296, 1, -47.4, 3.1 , 0 );
setMoveKey( spep_0 -3 + 298, 1, -225.3, 32.4 , 0 );
setMoveKey( spep_0 -3 + 300, 1, -278.7, 50.4 , 0 );
setMoveKey( spep_0 -3 + 302, 1, -477.9, 28.4 , 0 );
setMoveKey( spep_0 -3 + 304, 1, -679.2, 6.2 , 0 );

setScaleKey( spep_0 -3 + 200, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 204, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 206, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 207, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 208, 1, 3.597, 3.597 );
setScaleKey( spep_0 -3 + 209, 1, 3.597, 3.597 );
setScaleKey( spep_0 -3 + 210, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 211, 1, 2.816, 2.816 );
setScaleKey( spep_0 -3 + 212, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 214, 1, 2.079, 2.079 );
setScaleKey( spep_0 -3 + 216, 1, 2.134, 2.134 );
setScaleKey( spep_0 -3 + 218, 1, 2.178, 2.178 );
setScaleKey( spep_0 -3 + 220, 1, 2.233, 2.233 );
setScaleKey( spep_0 -3 + 222, 1, 2.277, 2.277 );
setScaleKey( spep_0 -3 + 224, 1, 2.321, 2.321 );
setScaleKey( spep_0 -3 + 226, 1, 2.376, 2.376 );
setScaleKey( spep_0 -3 + 228, 1, 2.420, 2.420 );
setScaleKey( spep_0 -3 + 230, 1, 2.475, 2.475 );
setScaleKey( spep_0 -3 + 232, 1, 2.519, 2.519 );
setScaleKey( spep_0 -3 + 234, 1, 2.574, 2.574 );
setScaleKey( spep_0 -3 + 236, 1, 2.618, 2.618 );
setScaleKey( spep_0 -3 + 238, 1, 2.596, 2.596 );
setScaleKey( spep_0 -3 + 240, 1, 2.53, 2.53 );
setScaleKey( spep_0 -3 + 242, 1, 2.409, 2.409 );
setScaleKey( spep_0 -3 + 244, 1, 2.244, 2.244 );
setScaleKey( spep_0 -3 + 246, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 275, 1, 2.035, 2.035 );
setScaleKey( spep_0 -3 + 276, 1, 1.375, 1.375 );
setScaleKey( spep_0 -3 + 277, 1, 1.375, 1.375 );
setScaleKey( spep_0 -3 + 278, 1, 1.837, 1.837 );
setScaleKey( spep_0 -3 + 279, 1, 1.837, 1.837 );
setScaleKey( spep_0 -3 + 280, 1, 1.386, 1.386 );
setScaleKey( spep_0 -3 + 281, 1, 1.386, 1.386 );
setScaleKey( spep_0 -3 + 282, 1, 0.924, 0.924 );
setScaleKey( spep_0 -3 + 284, 1, 0.935, 0.935 );
setScaleKey( spep_0 -3 + 286, 1, 0.946, 0.946 );
setScaleKey( spep_0 -3 + 288, 1, 0.957, 0.957 );
setScaleKey( spep_0 -3 + 290, 1, 0.968, 0.968 );
setScaleKey( spep_0 -3 + 292, 1, 0.979, 0.979 );
setScaleKey( spep_0 -3 + 294, 1, 0.979, 0.979 );
setScaleKey( spep_0 -3 + 296, 1, 0.990, 0.990 );
setScaleKey( spep_0 -3 + 298, 1, 1.221, 1.221 );
setScaleKey( spep_0 -3 + 300, 1, 1.452, 1.452 );
setScaleKey( spep_0 -3 + 302, 1, 1.54, 1.54 );
setScaleKey( spep_0 -3 + 304, 1, 1.628, 1.628 );

setRotateKey( spep_0 -3 + 200, 1, 19.4 );
setRotateKey( spep_0 -3 + 224, 1, 19.4 );
setRotateKey( spep_0 -3 + 226, 1, 19 );
setRotateKey( spep_0 -3 + 228, 1, 18.7 );
setRotateKey( spep_0 -3 + 230, 1, 18.3 );
setRotateKey( spep_0 -3 + 232, 1, 18 );
setRotateKey( spep_0 -3 + 234, 1, 17.7 );
setRotateKey( spep_0 -3 + 236, 1, 17.4 );
setRotateKey( spep_0 -3 + 238, 1, 17.1 );
setRotateKey( spep_0 -3 + 240, 1, 16.9 );
setRotateKey( spep_0 -3 + 242, 1, 16.6 );
setRotateKey( spep_0 -3 + 244, 1, 16.4 );
setRotateKey( spep_0 -3 + 246, 1, 16.2 );
setRotateKey( spep_0 -3 + 248, 1, 16 );
setRotateKey( spep_0 -3 + 250, 1, 15.8 );
setRotateKey( spep_0 -3 + 252, 1, 15.6 );
setRotateKey( spep_0 -3 + 254, 1, 15.5 );
setRotateKey( spep_0 -3 + 256, 1, 15.3 );
setRotateKey( spep_0 -3 + 258, 1, 15.2 );
setRotateKey( spep_0 -3 + 260, 1, 15.1 );
setRotateKey( spep_0 -3 + 262, 1, 15 );
setRotateKey( spep_0 -3 + 264, 1, 14.9 );
setRotateKey( spep_0 -3 + 266, 1, 14.8 );
setRotateKey( spep_0 -3 + 268, 1, 14.8 );
setRotateKey( spep_0 -3 + 270, 1, 14.7 );
setRotateKey( spep_0 -3 + 275, 1, 14.7 );
setRotateKey( spep_0 -3 + 276, 1, 36.3 );--
setRotateKey( spep_0 -3 + 278, 1, 36.2 );
setRotateKey( spep_0 -3 + 280, 1, 36.1 );
setRotateKey( spep_0 -3 + 282, 1, 36 );
setRotateKey( spep_0 -3 + 284, 1, 35.9 );
setRotateKey( spep_0 -3 + 286, 1, 35.8 );
setRotateKey( spep_0 -3 + 288, 1, 35.7 );
setRotateKey( spep_0 -3 + 290, 1, 35.6 );
setRotateKey( spep_0 -3 + 292, 1, 35.5 );
setRotateKey( spep_0 -3 + 294, 1, 35.4 );
setRotateKey( spep_0 -3 + 296, 1, 35.3 );
setRotateKey( spep_0 -3 + 298, 1, 30.2 );
setRotateKey( spep_0 -3 + 300, 1, 25.1 );
setRotateKey( spep_0 -3 + 304, 1, 25.1 );

-- ** 敵キャラクター ** --
--敵の動き3
setDisp( spep_0 -3 + 324, 1, 1 );
setDisp( spep_0 -3 + 532, 1, 0 );
changeAnime( spep_0 -3 + 324, 1, 105 );
changeAnime( spep_0 -3 + 344, 1, 6 );
changeAnime( spep_0 -3 + 470, 1, 8 );
changeAnime( spep_0 -3 + 522, 1, 6 );

setMoveKey( spep_0 -3 + 324, 1, 625.2, -572.9 , 0 );
setMoveKey( spep_0 -3 + 326, 1, 331.4, -306.7 , 0 );
setMoveKey( spep_0 -3 + 328, 1, 37.6, -40.5 , 0 );
setMoveKey( spep_0 -3 + 330, 1, 31.7, -34 , 0 );
setMoveKey( spep_0 -3 + 332, 1, 26.6, -28.5 , 0 );
setMoveKey( spep_0 -3 + 334, 1, 22.5, -24 , 0 );
setMoveKey( spep_0 -3 + 336, 1, 19.4, -20.6 , 0 );
setMoveKey( spep_0 -3 + 338, 1, 17.2, -18.3 , 0 );
setMoveKey( spep_0 -3 + 340, 1, 16, -17 , 0 );
setMoveKey( spep_0 -3 + 342, 1, 16.9, -15.9 , 0 );
setMoveKey( spep_0 -3 + 343, 1, 16.9, -15.9 , 0 );
setMoveKey( spep_0 -3 + 344, 1, 18.7, 4.9 , 0 );--
setMoveKey( spep_0 -3 + 346, 1, 26.2, 3.6 , 0 );
setMoveKey( spep_0 -3 + 348, 1, 23.9, 10.1 , 0 );
setMoveKey( spep_0 -3 + 350, 1, 13, -3.5 , 0 );
setMoveKey( spep_0 -3 + 352, 1, 10.1, 8.6 , 0 );
setMoveKey( spep_0 -3 + 354, 1, 4.7, 0.2 , 0 );
setMoveKey( spep_0 -3 + 356, 1, 11.3, 8.1 , 0 );
setMoveKey( spep_0 -3 + 358, 1, 12.9, -3.4 , 0 );
setMoveKey( spep_0 -3 + 360, 1, 2.6, 7.3 , 0 );
setMoveKey( spep_0 -3 + 362, 1, 1.1, -0.4 , 0 );
setMoveKey( spep_0 -3 + 364, 1, 11.5, 8.1 , 0 );
setMoveKey( spep_0 -3 + 366, 1, 13.1, -3.4 , 0 );
setMoveKey( spep_0 -3 + 368, 1, 2.8, 7.3 , 0 );
setMoveKey( spep_0 -3 + 370, 1, 1.4, -0.4 , 0 );
setMoveKey( spep_0 -3 + 372, 1, 11.7, 8.1 , 0 );
setMoveKey( spep_0 -3 + 374, 1, 13.3, -3.4 , 0 );
setMoveKey( spep_0 -3 + 376, 1, 3, 7.3 , 0 );
setMoveKey( spep_0 -3 + 378, 1, 4.5, 5.1 , 0 );
setMoveKey( spep_0 -3 + 380, 1, 9.7, 1 , 0 );
setMoveKey( spep_0 -3 + 382, 1, 9.8, 5.3 , 0 );
setMoveKey( spep_0 -3 + 384, 1, 3.9, 1.1 , 0 );
setMoveKey( spep_0 -3 + 386, 1, 4.6, 5.1 , 0 );
setMoveKey( spep_0 -3 + 388, 1, 9.8, 1 , 0 );
setMoveKey( spep_0 -3 + 390, 1, 9.9, 5.3 , 0 );
setMoveKey( spep_0 -3 + 392, 1, 4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 394, 1, 4.8, 5.2 , 0 );
setMoveKey( spep_0 -3 + 396, 1, 10, 1 , 0 );
setMoveKey( spep_0 -3 + 398, 1, 10, 5.3 , 0 );
setMoveKey( spep_0 -3 + 400, 1, 4, 1.2 , 0 );
setMoveKey( spep_0 -3 + 402, 1, 6.4, 1.3 , 0 );
setMoveKey( spep_0 -3 + 404, 1, 8.6, 5.3 , 0 );
setMoveKey( spep_0 -3 + 406, 1, 10, 3.2 , 0 );
setMoveKey( spep_0 -3 + 408, 1, 6.9, 2.9 , 0 );
setMoveKey( spep_0 -3 + 410, 1, -122.5, -114.9 , 0 );
setMoveKey( spep_0 -3 + 412, 1, -121.5, -114.8 , 0 );
setMoveKey( spep_0 -3 + 414, 1, -120.9, -114.7 , 0 );
setMoveKey( spep_0 -3 + 416, 1, -120.7, -114.5 , 0 );
setMoveKey( spep_0 -3 + 418, 1, -120.9, -114.4 , 0 );
setMoveKey( spep_0 -3 + 420, 1, -121.5, -114.1 , 0 );
setMoveKey( spep_0 -3 + 422, 1, -122.5, -113.9 , 0 );
setMoveKey( spep_0 -3 + 424, 1, -123.9, -113.6 , 0 );
setMoveKey( spep_0 -3 + 426, 1, -125.7, -113.2 , 0 );
setMoveKey( spep_0 -3 + 428, 1, -127.8, -112.8 , 0 );
setMoveKey( spep_0 -3 + 430, 1, -130.4, -112.4 , 0 );
setMoveKey( spep_0 -3 + 432, 1, -133.4, -112 , 0 );
setMoveKey( spep_0 -3 + 434, 1, -136.7, -111.5 , 0 );
setMoveKey( spep_0 -3 + 436, 1, -140.5, -110.9 , 0 );
setMoveKey( spep_0 -3 + 438, 1, -144.3, -110.4 , 0 );
setMoveKey( spep_0 -3 + 440, 1, -147.8, -109.9 , 0 );
setMoveKey( spep_0 -3 + 442, 1, -151, -109.4 , 0 );
setMoveKey( spep_0 -3 + 444, 1, -153.8, -108.9 , 0 );
setMoveKey( spep_0 -3 + 446, 1, -156.3, -108.5 , 0 );
setMoveKey( spep_0 -3 + 448, 1, -158.5, -108.1 , 0 );
setMoveKey( spep_0 -3 + 450, 1, -160.4, -107.8 , 0 );
setMoveKey( spep_0 -3 + 452, 1, -162, -107.4 , 0 );
setMoveKey( spep_0 -3 + 454, 1, -163.2, -107.1 , 0 );
setMoveKey( spep_0 -3 + 456, 1, -164.1, -106.9 , 0 );
setMoveKey( spep_0 -3 + 458, 1, -164.7, -106.6 , 0 );
setMoveKey( spep_0 -3 + 460, 1, -165, -106.4 , 0 );
setMoveKey( spep_0 -3 + 462, 1, -164.9, -106.3 , 0 );
setMoveKey( spep_0 -3 + 464, 1, -164.5, -106.1 , 0 );
setMoveKey( spep_0 -3 + 466, 1, -163.8, -106 , 0 );
setMoveKey( spep_0 -3 + 468, 1, -162.8, -105.9 , 0 );
setMoveKey( spep_0 -3 + 469, 1, -162.8, -105.9 , 0 );
setMoveKey( spep_0 -3 + 470, 1, -89.2, -143.9 , 0 );--
setMoveKey( spep_0 -3 + 472, 1, -89.2, -55.8 , 0 );
setMoveKey( spep_0 -3 + 474, 1, -89.2, 32.2 , 0 );
setMoveKey( spep_0 -3 + 476, 1, -89.2, 66.5 , 0 );
setMoveKey( spep_0 -3 + 478, 1, -120.1, 89 , 0 );
setMoveKey( spep_0 -3 + 480, 1, -138.9, 115.4 , 0 );
setMoveKey( spep_0 -3 + 482, 1, -92.8, 76.8 , 0 );
setMoveKey( spep_0 -3 + 484, 1, -116.9, 107.5 , 0 );
setMoveKey( spep_0 -3 + 486, 1, -155.8, 132.5 , 0 );
setMoveKey( spep_0 -3 + 488, 1, -120.9, 108.6 , 0 );
setMoveKey( spep_0 -3 + 490, 1, -89.3, 80.2 , 0 );
setMoveKey( spep_0 -3 + 492, 1, -95.7, 92 , 0 );
setMoveKey( spep_0 -3 + 494, 1, -86.1, 79.1 , 0 );
setMoveKey( spep_0 -3 + 496, 1, -94.6, 82.2 , 0 );
setMoveKey( spep_0 -3 + 498, 1, -85, 94 , 0 );
setMoveKey( spep_0 -3 + 500, 1, -95.7, 100.3 , 0 );
setMoveKey( spep_0 -3 + 502, 1, -86, 87.4 , 0 );
setMoveKey( spep_0 -3 + 504, 1, -94.6, 90.6 , 0 );
setMoveKey( spep_0 -3 + 506, 1, -85, 102.4 , 0 );
setMoveKey( spep_0 -3 + 508, 1, -95.7, 108.6 , 0 );
setMoveKey( spep_0 -3 + 510, 1, -86, 95.7 , 0 );
setMoveKey( spep_0 -3 + 512, 1, -94.6, 98.9 , 0 );
setMoveKey( spep_0 -3 + 514, 1, -85, 110.7 , 0 );
setMoveKey( spep_0 -3 + 516, 1, -95.7, 117 , 0 );
setMoveKey( spep_0 -3 + 518, 1, -86, 104.1 , 0 );
setMoveKey( spep_0 -3 + 520, 1, -91, 186 , 0 );
setMoveKey( spep_0 -3 + 521, 1, -91, 186 , 0 );
setMoveKey( spep_0 -3 + 522, 1, -77.8, 276.6 , 0 );--
setMoveKey( spep_0 -3 + 524, 1, -81.4, 442 , 0 );
setMoveKey( spep_0 -3 + 526, 1, -64.7, 588.2 , 0 );
setMoveKey( spep_0 -3 + 528, 1, -73.2, 767.8 , 0 );
setMoveKey( spep_0 -3 + 530, 1, -63.6, 955.9 , 0 );
setMoveKey( spep_0 -3 + 532, 1, -74.3, 1138.6 , 0 );

setScaleKey( spep_0 -3 + 324, 1, 6.74, 6.74 );
setScaleKey( spep_0 -3 + 326, 1, 4.04, 4.04 );
setScaleKey( spep_0 -3 + 328, 1, 1.34, 1.34 );
setScaleKey( spep_0 -3 + 330, 1, 1.26, 1.26 );
setScaleKey( spep_0 -3 + 332, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 334, 1, 1.13, 1.13 );
setScaleKey( spep_0 -3 + 336, 1, 1.09, 1.09 );
setScaleKey( spep_0 -3 + 338, 1, 1.05, 1.05 );
setScaleKey( spep_0 -3 + 340, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 343, 1, 1.03, 1.03 );
setScaleKey( spep_0 -3 + 344, 1, 1.64, 1.64 );--
setScaleKey( spep_0 -3 + 345, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 346, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 347, 1, 2.35, 2.35 );
setScaleKey( spep_0 -3 + 348, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 349, 1, 1.64, 1.64 );
setScaleKey( spep_0 -3 + 350, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 351, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 352, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 353, 1, 1.36, 1.36 );
setScaleKey( spep_0 -3 + 354, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 355, 1, 1.14, 1.14 );
setScaleKey( spep_0 -3 + 356, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 358, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 360, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 364, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 366, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 372, 1, 0.95, 0.95 );
setScaleKey( spep_0 -3 + 374, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 382, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 384, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 402, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 404, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 408, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 409, 1, 0.98, 0.98 );
setScaleKey( spep_0 -3 + 410, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 468, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 469, 1, 4.24, 4.24 );
setScaleKey( spep_0 -3 + 470, 1, 1.86, 1.86 );--
setScaleKey( spep_0 -3 + 476, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 477, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 478, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 479, 1, 2.51, 2.51 );
setScaleKey( spep_0 -3 + 480, 1, 3.16, 3.16 );
setScaleKey( spep_0 -3 + 481, 1, 3.16, 3.16 );
setScaleKey( spep_0 -3 + 482, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 483, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 484, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 485, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 486, 1, 3.34, 3.34 );
setScaleKey( spep_0 -3 + 487, 1, 3.34, 3.34 );
setScaleKey( spep_0 -3 + 488, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 489, 1, 2.6, 2.6 );
setScaleKey( spep_0 -3 + 490, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 521, 1, 1.86, 1.86 );
setScaleKey( spep_0 -3 + 522, 1, 1.86, 1.86 );--
setScaleKey( spep_0 -3 + 532, 1, 1.86, 1.86 );

setRotateKey( spep_0 -3 + 324, 1, -29.8 );
setRotateKey( spep_0 -3 + 326, 1, -29.8 );
setRotateKey( spep_0 -3 + 328, 1, -29.9 );
setRotateKey( spep_0 -3 + 343, 1, -29.9 );
setRotateKey( spep_0 -3 + 344, 1, 44.7 );--
setRotateKey( spep_0 -3 + 408, 1, 44.7 );
setRotateKey( spep_0 -3 + 410, 1, 58.2 );
setRotateKey( spep_0 -3 + 412, 1, 58.5 );
setRotateKey( spep_0 -3 + 414, 1, 58.7 );
setRotateKey( spep_0 -3 + 416, 1, 59 );
setRotateKey( spep_0 -3 + 418, 1, 59.3 );
setRotateKey( spep_0 -3 + 420, 1, 59.6 );
setRotateKey( spep_0 -3 + 422, 1, 59.8 );
setRotateKey( spep_0 -3 + 424, 1, 60.1 );
setRotateKey( spep_0 -3 + 426, 1, 60.4 );
setRotateKey( spep_0 -3 + 428, 1, 60.7 );
setRotateKey( spep_0 -3 + 430, 1, 60.9 );
setRotateKey( spep_0 -3 + 432, 1, 61.2 );
setRotateKey( spep_0 -3 + 434, 1, 61.5 );
setRotateKey( spep_0 -3 + 436, 1, 61.8 );
setRotateKey( spep_0 -3 + 438, 1, 62.1 );
setRotateKey( spep_0 -3 + 440, 1, 62.3 );
setRotateKey( spep_0 -3 + 442, 1, 62.6 );
setRotateKey( spep_0 -3 + 444, 1, 62.9 );
setRotateKey( spep_0 -3 + 446, 1, 63.2 );
setRotateKey( spep_0 -3 + 448, 1, 63.4 );
setRotateKey( spep_0 -3 + 450, 1, 63.7 );
setRotateKey( spep_0 -3 + 452, 1, 64 );
setRotateKey( spep_0 -3 + 454, 1, 64.3 );
setRotateKey( spep_0 -3 + 456, 1, 64.5 );
setRotateKey( spep_0 -3 + 458, 1, 64.8 );
setRotateKey( spep_0 -3 + 460, 1, 65.1 );
setRotateKey( spep_0 -3 + 462, 1, 65.4 );
setRotateKey( spep_0 -3 + 464, 1, 65.7 );
setRotateKey( spep_0 -3 + 466, 1, 65.9 );
setRotateKey( spep_0 -3 + 468, 1, 66.2 );
setRotateKey( spep_0 -3 + 469, 1, 66.2 );
setRotateKey( spep_0 -3 + 470, 1, 50.9 );--
setRotateKey( spep_0 -3 + 518, 1, 50.9 );
setRotateKey( spep_0 -3 + 520, 1, 49.6 );
setRotateKey( spep_0 -3 + 521, 1, 49.6 );
setRotateKey( spep_0 -3 + 522, 1, 48.2 );--
setRotateKey( spep_0 -3 + 524, 1, 45.6 );
setRotateKey( spep_0 -3 + 526, 1, 42.9 );
setRotateKey( spep_0 -3 + 532, 1, 42.9 );

-- ** 敵キャラクター ** --
--敵の動き4
setDisp( spep_0 -3 + 608, 1, 1 );
setDisp( spep_0 -3 + 635, 1, 0 );
changeAnime( spep_0 -3 + 608, 1, 7 );

setMoveKey( spep_0 -3 + 608, 1, -218.4, 25.2 , 0 );
setMoveKey( spep_0 -3 + 610, 1, -182.7, 13.8 , 0 );
setMoveKey( spep_0 -3 + 612, 1, -126, -3.6 , 0 );
setMoveKey( spep_0 -3 + 614, 1, -73.1, -13.1 , 0 );
setMoveKey( spep_0 -3 + 616, 1, -26.7, -31.8 , 0 );
setMoveKey( spep_0 -3 + 618, 1, 13.7, -51 , 0 );
setMoveKey( spep_0 -3 + 620, 1, 62.1, -64.9 , 0 );
setMoveKey( spep_0 -3 + 622, 1, 43.5, -55.5 , 0 );
setMoveKey( spep_0 -3 + 624, 1, 25, -37.6 , 0 );
setMoveKey( spep_0 -3 + 626, 1, -20.9, -18.1 , 0 );
setMoveKey( spep_0 -3 + 628, 1, -100.5, 15 , 0 );
setMoveKey( spep_0 -3 + 630, 1, -200.4, 67.8 , 0 );
setMoveKey( spep_0 -3 + 632, 1, -330.9, 142.3 , 0 );
setMoveKey( spep_0 -3 + 634, 1, -495.6, 221.8 , 0 );
setMoveKey( spep_0 -3 + 635, 1, -495.6, 221.8 , 0 );

setScaleKey( spep_0 -3 + 608, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 610, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 612, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 620, 1, 0.25, 0.25 );
setScaleKey( spep_0 -3 + 622, 1, 0.27, 0.27 );
setScaleKey( spep_0 -3 + 624, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 626, 1, 0.44, 0.44 );
setScaleKey( spep_0 -3 + 628, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 630, 1, 1.01, 1.01 );
setScaleKey( spep_0 -3 + 632, 1, 1.44, 1.44 );
setScaleKey( spep_0 -3 + 634, 1, 1.97, 1.97 );
setScaleKey( spep_0 -3 + 635, 1, 1.97, 1.97 );

setRotateKey( spep_0 -3 + 608, 1, 21.5 );
setRotateKey( spep_0 -3 + 610, 1, 21.6 );
setRotateKey( spep_0 -3 + 612, 1, 22.3 );
setRotateKey( spep_0 -3 + 614, 1, 23.1 );
setRotateKey( spep_0 -3 + 616, 1, 23.8 );
setRotateKey( spep_0 -3 + 618, 1, 24.6 );
setRotateKey( spep_0 -3 + 620, 1, 25.4 );
setRotateKey( spep_0 -3 + 634, 1, 25.4 );
setRotateKey( spep_0 -3 + 635, 1, 25.4 );

-- ** 音 ** --
SE006 = playSeVer2( spep_0 + 110, 1167, "",spep_0 + 164, 0, 8, 0.5);
setSeVolumeByWorkId( spep_0 + 110, SE006, 52 );

--振りかぶる
SE007 = playSeVer2( spep_0 + 156, 1116, "",spep_0 + 202, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 156, SE007, 164 );
setPitch( spep_0 + 156, SE007, -400 );
setTimeStretch( SE007, 0.73, 30, 4 );
SE008 = playSeVer2( spep_0 + 164, 1004, "", 0, 0, 0, -1);			

--膝蹴り
SE009 = playSeVer2( spep_0 + 196, 1006, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 196, 1049, "",spep_0 + 238, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 196, SE010, 75 );
SE011 = playSeVer2( spep_0 + 198, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE011, 88 );
SE012 = playSeVer2( spep_0 + 206, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 206, SE012, 79 );

--蹴り飛ばし
SE013 = playSeVer2( spep_0 + 262, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 268, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE015 = playSeVer2( spep_0 + 294, 1183, "",spep_0 + 358, 0, 22, -1);

--壁激突
SE016 = playSeVer2( spep_0 + 334, 1023, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 334, SE016, 79 );
SE017 = playSeVer2( spep_0 + 336, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 336, SE017, 79 );

--瞬間移動
SE018 = playSeVer2( spep_0 + 418, 1109, "", 0, 0, 0, -1);

--蹴り上げ
SE019 = playSeVer2( spep_0 + 458, 1003, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 466, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE020, 92 );
SE021 = playSeVer2( spep_0 + 466, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE021, 100 );
SE022 = playSeVer2( spep_0 + 466, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE022, 39 );
SE023 = playSeVer2( spep_0 + 466, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 466, SE023, 88 );

--壁削りながら上昇
SE024 = playSeVer2( spep_0 + 508, 1011, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_0 + 508, 1025, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 508, 1044, "",spep_0 + 626, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 532, SE026, 100 );
setSeVolumeByWorkId( spep_0 + 540, SE026, 116 );
setSeVolumeByWorkId( spep_0 + 548, SE026, 132 );
setSeVolumeByWorkId( spep_0 + 556, SE026, 148 );
setSeVolumeByWorkId( spep_0 + 564, SE026, 164 );
setSeVolumeByWorkId( spep_0 + 572, SE026, 180 );
setSeVolumeByWorkId( spep_0 + 580, SE026, 196 );
setSeVolumeByWorkId( spep_0 + 588, SE026, 212 );
setSeVolumeByWorkId( spep_0 + 596, SE026, 228 );
setSeVolumeByWorkId( spep_0 + 604, SE026, 244 );
setSeVolumeByWorkId( spep_0 + 612, SE026, 260 );

--敵飛んでいく
SE027 = playSeVer2( spep_0 + 612, 1027, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 612, 1183, "",spep_0 + 682, 0, 26, -1);

--顔カットイン
--SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--気弾溜め
SE030 = playSeVer2( spep_0 + 650, 1307, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_0 + 650, SE030, 309 );
SE031 = playSeVer2( spep_0 + 676, 1328, "", 0, 4, 0, -1);
setStartTimeMs( SE031,  167 );
SE032 = playSeVer2( spep_0 + 676, 1296, "",spep_0 +750 + 12, 0, 8, -1);
setPitch( spep_0 + 676, SE032, -400 );
setTimeStretch( SE032, 0.73, 30, 4 );
SE033 = playSeVer2( spep_0 + 676, 1282, "",spep_0 +750 + 10, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 676, SE033, 65 );
setPitch( spep_0 + 676, SE033, -400 );
setTimeStretch( SE033, 0.73, 30, 4 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 754;

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

--発射前気弾溜め
SE035 = playSeVer2( spep_1 + 82, 1296, "",spep_1 +94 + 38, 20, 8, -1);
setStartTimeMs( SE035,  350 );
setPitch( spep_1 + 82, SE035, -400 );
setTimeStretch( SE035, 0.73, 30, 4 );
SE036 = playSeVer2( spep_1 +90, 1328, "", 0, 30, 0, -1);
setStartTimeMs( SE036,  200 );
SE037 = playSeVer2( spep_1 + 86, 1282, "",spep_1 +94 + 96, 20, 8, -1);
setSeVolumeByWorkId( spep_1 + 86, SE037, 69 );
setStartTimeMs( SE037,  133 );
setPitch( spep_1 + 86, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );
SE038 = playSeVer2( spep_1 + 88, 1307, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 気弾構え続き〜フィニッシュ(380F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --気弾構え続き〜フィニッシュ   ef_003
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 380, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 380, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 380, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 380, finish_f, 255 );

-- ** 音 ** --
--発射前気弾溜め
SE039 = playSeVer2( spep_2 + 24, 1276, "",spep_2 + 62, 4, 6, -1);
setSeVolumeByWorkId( spep_2 + 24, SE039, 83 );
setStartTimeMs( SE039,  317 );
setPitch( spep_2 + 24, SE039, 100 );
setTimeStretch( SE039, 1.07, 30, 4 );
SE040 = playSeVer2( spep_2 + 48, 1276, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE040, 71 );
setStartTimeMs( SE040,  317 );
setPitch( spep_2 + 48, SE040, 800 );
setTimeStretch( SE040, 1.53, 30, 4 );

--気弾発射
SE041 = playSeVer2( spep_2 + 86, 1027, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 86, 1109, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_2 + 86, 1284, "", 0, 0, 0, 0.6);
SE044 = playSeVer2( spep_2 + 86, 1213, "",spep_2 + 334, 0, 52, -1);
setSeVolumeByWorkId( spep_2 + 86, SE044, 70 );

--縦気弾発射
SE045 = playSeVer2( spep_2 + 130, 1211, "",spep_2 + 338, 0, 56, -1);
setSeVolumeByWorkId( spep_2 + 130, SE045, 260 );
SE046 = playSeVer2( spep_2 + 136, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 136, SE046, 65 );

--気弾発射_背後
SE047 = playSeVer2( spep_2 + 170, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 170, SE047, 141 );
setPitch( spep_2 + 170, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE048 = playSeVer2( spep_2 + 190, 1161, "",spep_2 + 342, 0, 50, -1);

--気弾撃ち終わり
SE049 = playSeVer2( spep_2 + 276, 1263, "", 0, 16, 0, -1);
setStartTimeMs( SE049,  467 );
SE050 = playSeVer2( spep_2 + 276, 1307, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 276, SE050, 168 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 380 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 270 );
endPhase( spep_2 + 370 );

end