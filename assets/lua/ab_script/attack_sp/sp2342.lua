--4023780:UR_ギニュー(孫悟空)_必殺技：ミルキーボンバー
--sp_effect_b4_00222
--sp2342

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
SP_01 = 159298; --ダッシュからセリフカットインまで　
SP_02 = 159300; --ダッシュからセリフカットインまで　
SP_03 = 159302; --気弾を作るからフィニッシュまで
SP_04 = 159304; --気弾を作るからフィニッシュまで

--エフェクト(てき)
SP_01x = 159299; --ダッシュからセリフカットインまで(敵)
SP_02x = 159301; --ダッシュからセリフカットインまで(敵)
SP_03x = 159303; --気弾を作るからフィニッシュまで(敵)
SP_04x = 159305; --気弾を作るからフィニッシュまで(敵)

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
--ダッシュからセリフカットインまで　
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, dash_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 620, dash_f, 0 );
setEffAlphaKey( spep_0 + 0, dash_f, 255 );
setEffAlphaKey( spep_0 + 620, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, dash_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 620, dash_b, 0 );
setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 620, dash_b, 255 );

-- ** 音 ** --
--走る
SE001 = playSeVer2( spep_0 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 200 );

--走る空気音
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );

--走る
SE003 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 200 );
SE004 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 200 );
SE005 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 200 );
SE006 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 200 );
SE007 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE007, 200 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255 );  --黒 背景


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--顔カットインのタイミング指定
spep_x=spep_0 +524;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -18,  515);
setEffMoveKey(  spep_x +84,  ctgogo, -18,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0-3 + 132, 1, 1);
setDisp( spep_0-1 + 192, 1, 0);

changeAnime( spep_0-3 + 132, 1, 101);
changeAnime( spep_0-3 + 160, 1, 108);

setMoveKey( spep_0-3 + 132, 1, -4.2, -34.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 37.6, -34.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 79.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 138, 1, 121.1, -34.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 127.4, -34.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, 133.1, -34.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 138.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, 142.9, -34.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 146.9, -34.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, 150.4, -34.6 , 0 );
setMoveKey( spep_0-3 + 152, 1, 153.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, 155.7, -34.6 , 0 );
setMoveKey( spep_0-3 + 156, 1, 157.5, -34.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, 158.7, -34.6 , 0 );
setMoveKey( spep_0-3 + 159, 1, 158.7, -34.6 , 0 );

setMoveKey( spep_0-3 + 160, 1, 148.5, 69.8 , 0 );
setMoveKey( spep_0-3 + 162, 1, 219, 139.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, 196.1, 125.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 170.2, 102.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 253.5, 172.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, 205, 137.1 , 0 );
setMoveKey( spep_0-3 + 172, 1, 195.7, 126 , 0 );
setMoveKey( spep_0-3 + 174, 1, 199.9, 125.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 189.8, 130.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 195.6, 131.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 185.8, 119.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, 190.2, 118.7 , 0 );
setMoveKey( spep_0-3 + 184, 1, 180.8, 124.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, 181.9, 121.7 , 0 );
setMoveKey( spep_0-3 + 188, 1, 183.7, 118.5 , 0 );
setMoveKey( spep_0-1 + 192, 1, 182.4, 118.7 , 0 );

setScaleKey( spep_0-3 + 132, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 159, 1, 1.95, 1.95 );

setScaleKey( spep_0-3 + 160, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 162, 1, 3.9, 3.9 );
setScaleKey( spep_0-3 + 164, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 166, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 168, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 170, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 174, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 176, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 178, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 180, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_0-3 + 184, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 186, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 188, 1, 1.57, 1.57 );
setScaleKey( spep_0-1 + 192, 1, 1.56, 1.56 );

setRotateKey( spep_0-3 + 132, 1, 0 );
setRotateKey( spep_0-3 + 159, 1, 0 );

setRotateKey( spep_0-3 + 160, 1, -39.2 );
setRotateKey( spep_0-1 + 192, 1, -39.2 );

--敵の動き2
setDisp( spep_0-3 + 312, 1, 1);
setDisp( spep_0-3 + 446, 1, 0);

changeAnime( spep_0-3 + 312, 1, 6);
changeAnime( spep_0-3 + 354, 1, 106);
changeAnime( spep_0-3 + 424, 1, 108);

setMoveKey( spep_0-3 + 312, 1, -75.9, -387.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, -67.2, -377.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, -38.4, -348.7 , 0 );
setMoveKey( spep_0-3 + 318, 1, 11.8, -301 , 0 );
setMoveKey( spep_0-3 + 320, 1, 23.6, -401.6 , 0 );
setMoveKey( spep_0-3 + 322, 1, 14.7, -530.4 , 0 );
setMoveKey( spep_0-3 + 324, 1, 33.1, -416.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 13.2, -285.5 , 0 );
setMoveKey( spep_0-3 + 328, 1, 36.6, -358.5 , 0 );
setMoveKey( spep_0-3 + 330, 1, 27.9, -449.5 , 0 );
setMoveKey( spep_0-3 + 332, 1, 38.5, -301.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, 27.3, -275.2 , 0 );
setMoveKey( spep_0-3 + 336, 1, 44.1, -279.1 , 0 );
setMoveKey( spep_0-3 + 338, 1, 43.1, -269.6 , 0 );
setMoveKey( spep_0-3 + 340, 1, 59.2, -272.3 , 0 );
setMoveKey( spep_0-3 + 342, 1, 69.1, -260.8 , 0 );
setMoveKey( spep_0-3 + 344, 1, 59.8, -263.2 , 0 );
setMoveKey( spep_0-3 + 346, 1, 69.7, -261.6 , 0 );
setMoveKey( spep_0-3 + 348, 1, 77.4, -252.5 , 0 );
setMoveKey( spep_0-3 + 350, 1, 65.6, -257.3 , 0 );
setMoveKey( spep_0-3 + 352, 1, 69.2, -253.7 , 0 );
setMoveKey( spep_0-3 + 353, 1, 69.2, -253.7 , 0 );

setMoveKey( spep_0-3 + 354, 1, 3.7, -289.8 , 0 );
setMoveKey( spep_0-3 + 356, 1, 27, -407.9 , 0 );
setMoveKey( spep_0-3 + 358, 1, 81.7, -559.9 , 0 );
setMoveKey( spep_0-3 + 360, 1, 45.9, -439.8 , 0 );
setMoveKey( spep_0-3 + 362, 1, 50.5, -299.5 , 0 );
setMoveKey( spep_0-3 + 364, 1, 29.8, -372.7 , 0 );
setMoveKey( spep_0-3 + 366, 1, 52.9, -469.7 , 0 );
setMoveKey( spep_0-3 + 368, 1, 21.3, -315.5 , 0 );
setMoveKey( spep_0-3 + 370, 1, 31.6, -295.6 , 0 );
setMoveKey( spep_0-3 + 372, 1, 11.2, -307.7 , 0 );
setMoveKey( spep_0-3 + 374, 1, -3, -308.9 , 0 );
setMoveKey( spep_0-3 + 376, 1, -1.9, -305.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, -8.3, -313.4 , 0 );
setMoveKey( spep_0-3 + 380, 1, -22.1, -313.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, -24.4, -312.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, -26.3, -308.9 , 0 );
setMoveKey( spep_0-3 + 386, 1, -30, -316.5 , 0 );
setMoveKey( spep_0-3 + 388, 1, -41.1, -315.8 , 0 );
setMoveKey( spep_0-3 + 390, 1, -40.7, -315.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, -43, -315.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, -44.7, -315.8 , 0 );
setMoveKey( spep_0-3 + 396, 1, -45.8, -315.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, -46.1, -316 , 0 );
setMoveKey( spep_0-3 + 399, 1, -46.1, -316 , 0 );
setMoveKey( spep_0-3 + 400, 1, 198.5, 54.4 , 0 );
setMoveKey( spep_0-3 + 402, 1, 196.5, 57 , 0 );
setMoveKey( spep_0-3 + 404, 1, 193.7, 58.5 , 0 );
setMoveKey( spep_0-3 + 406, 1, 190.4, 58.9 , 0 );
setMoveKey( spep_0-3 + 408, 1, 186.3, 58.2 , 0 );
setMoveKey( spep_0-3 + 410, 1, 181.6, 56.4 , 0 );
setMoveKey( spep_0-3 + 412, 1, 176.1, 53.4 , 0 );
setMoveKey( spep_0-3 + 414, 1, 170, 49.3 , 0 );
setMoveKey( spep_0-3 + 416, 1, 163.3, 44.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, 155.8, 37.7 , 0 );
setMoveKey( spep_0-3 + 420, 1, 147.7, 30.3 , 0 );
setMoveKey( spep_0-3 + 422, 1, 138.9, 21.7 , 0 );
setMoveKey( spep_0-3 + 423, 1, 138.9, 21.7 , 0 );

setMoveKey( spep_0-3 + 424, 1, 157.8, 86.1 , 0 );
setMoveKey( spep_0-3 + 426, 1, 225.7, 132.1 , 0 );
setMoveKey( spep_0-3 + 428, 1, 261.4, 151.7 , 0 );
setMoveKey( spep_0-3 + 430, 1, 205.1, 143.5 , 0 );
setMoveKey( spep_0-3 + 432, 1, 170.7, 88.4 , 0 );
setMoveKey( spep_0-3 + 434, 1, 248.3, 162.5 , 0 );
setMoveKey( spep_0-3 + 436, 1, 190.4, 121.5 , 0 );
setMoveKey( spep_0-3 + 438, 1, 151.8, 120.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, 281.9, 266.5 , 0 );
setMoveKey( spep_0-3 + 442, 1, 383.4, 445.7 , 0 );
setMoveKey( spep_0-3 + 444, 1, 492.9, 528.1 , 0 );
setMoveKey( spep_0-3 + 446, 1, 608, 606.8 , 0 );

setScaleKey( spep_0-3 + 312, 1, 6.99, 6.99 );
setScaleKey( spep_0-3 + 318, 1, 6.99, 6.99 );
setScaleKey( spep_0-3 + 320, 1, 9.53, 9.53 );
setScaleKey( spep_0-3 + 322, 1, 12.04, 12.04 );
setScaleKey( spep_0-3 + 324, 1, 9.39, 9.39 );
setScaleKey( spep_0-3 + 326, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 328, 1, 8.42, 8.42 );
setScaleKey( spep_0-3 + 330, 1, 10.05, 10.05 );
setScaleKey( spep_0-3 + 332, 1, 6.66, 6.66 );
setScaleKey( spep_0-3 + 334, 1, 6.63, 6.63 );
setScaleKey( spep_0-3 + 336, 1, 6.6, 6.6 );
setScaleKey( spep_0-3 + 338, 1, 6.57, 6.57 );
setScaleKey( spep_0-3 + 340, 1, 6.55, 6.55 );
setScaleKey( spep_0-3 + 342, 1, 6.53, 6.53 );
setScaleKey( spep_0-3 + 344, 1, 6.52, 6.52 );
setScaleKey( spep_0-3 + 346, 1, 6.51, 6.51 );
setScaleKey( spep_0-3 + 348, 1, 6.5, 6.5 );
setScaleKey( spep_0-3 + 350, 1, 6.49, 6.49 );
setScaleKey( spep_0-3 + 353, 1, 6.49, 6.49 );

setScaleKey( spep_0-3 + 354, 1, 6.49, 6.49 );
setScaleKey( spep_0-3 + 356, 1, 8.86, 8.86 );
setScaleKey( spep_0-3 + 358, 1, 11.21, 11.21 );
setScaleKey( spep_0-3 + 360, 1, 8.75, 8.75 );
setScaleKey( spep_0-3 + 362, 1, 6.33, 6.33 );
setScaleKey( spep_0-3 + 364, 1, 7.86, 7.86 );
setScaleKey( spep_0-3 + 366, 1, 9.38, 9.38 );
setScaleKey( spep_0-3 + 368, 1, 6.22, 6.22 );
setScaleKey( spep_0-3 + 370, 1, 6.19, 6.19 );
setScaleKey( spep_0-3 + 372, 1, 6.17, 6.17 );
setScaleKey( spep_0-3 + 374, 1, 6.14, 6.14 );
setScaleKey( spep_0-3 + 376, 1, 6.12, 6.12 );
setScaleKey( spep_0-3 + 378, 1, 6.09, 6.09 );
setScaleKey( spep_0-3 + 380, 1, 6.07, 6.07 );
setScaleKey( spep_0-3 + 382, 1, 6.06, 6.06 );
setScaleKey( spep_0-3 + 384, 1, 6.04, 6.04 );
setScaleKey( spep_0-3 + 386, 1, 6.03, 6.03 );
setScaleKey( spep_0-3 + 388, 1, 6.02, 6.02 );
setScaleKey( spep_0-3 + 390, 1, 6.01, 6.01 );
setScaleKey( spep_0-3 + 392, 1, 6, 6 );
setScaleKey( spep_0-3 + 394, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 398, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 399, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 400, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 423, 1, 1.85, 1.85 );

setScaleKey( spep_0-3 + 424, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 426, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 428, 1, 3.74, 3.74 );
setScaleKey( spep_0-3 + 430, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 432, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 434, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 436, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 438, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 446, 1, 2.13, 2.13 );

setRotateKey( spep_0-3 + 312, 1, 57.7 );
setRotateKey( spep_0-3 + 332, 1, 57.7 );
setRotateKey( spep_0-3 + 333, 1, 57.7 );
setRotateKey( spep_0-3 + 334, 1, 57.6 );
setRotateKey( spep_0-3 + 353, 1, 57.6 );

setRotateKey( spep_0-3 + 354, 1, -58.4 );
setRotateKey( spep_0-3 + 356, 1, -58.5 );
setRotateKey( spep_0-3 + 358, 1, -58.6 );
setRotateKey( spep_0-3 + 360, 1, -58.7 );
setRotateKey( spep_0-3 + 362, 1, -58.8 );
setRotateKey( spep_0-3 + 364, 1, -58.8 );
setRotateKey( spep_0-3 + 366, 1, -58.9 );
setRotateKey( spep_0-3 + 368, 1, -59 );
setRotateKey( spep_0-3 + 370, 1, -59 );
setRotateKey( spep_0-3 + 372, 1, -59.1 );
setRotateKey( spep_0-3 + 374, 1, -59.1 );
setRotateKey( spep_0-3 + 376, 1, -59.2 );
setRotateKey( spep_0-3 + 378, 1, -59.2 );
setRotateKey( spep_0-3 + 380, 1, -59.3 );
setRotateKey( spep_0-3 + 384, 1, -59.3 );
setRotateKey( spep_0-3 + 386, 1, -59.4 );
setRotateKey( spep_0-3 + 398, 1, -59.4 );
setRotateKey( spep_0-3 + 399, 1, -59.4 );
setRotateKey( spep_0-3 + 400, 1, -60.9 );
setRotateKey( spep_0-3 + 423, 1, -60.9 );

setRotateKey( spep_0-3 + 424, 1, -35.7 );
setRotateKey( spep_0-3 + 446, 1, -35.7 );

--敵の動き3
setDisp( spep_0-3 + 460, 1, 1);
setDisp( spep_0-1 + 518, 1, 0);

changeAnime( spep_0-1 + 460, 1, 105);

setMoveKey( spep_0-3 + 460, 1, -27, -67.4 , 0 );
setMoveKey( spep_0-3 + 462, 1, -22.2, -48.9 , 0 );
setMoveKey( spep_0-3 + 464, 1, -22, -5.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, -12.5, 11.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, -13.3, 39.1 , 0 );
setMoveKey( spep_0-3 + 470, 1, -4.3, 52.3 , 0 );
setMoveKey( spep_0-3 + 472, 1, -1.9, 73.3 , 0 );
setMoveKey( spep_0-3 + 474, 1, -4.6, 78.8 , 0 );
setMoveKey( spep_0-3 + 476, 1, 0.6, 73.6 , 0 );
setMoveKey( spep_0-3 + 478, 1, -0.8, 76.2 , 0 );
setMoveKey( spep_0-3 + 480, 1, -0.5, 77.1 , 0 );
setMoveKey( spep_0-3 + 482, 1, -0.2, 77.9 , 0 );
setMoveKey( spep_0-3 + 484, 1, 0.1, 78.7 , 0 );
setMoveKey( spep_0-3 + 486, 1, 0.4, 79.5 , 0 );
setMoveKey( spep_0-3 + 488, 1, 0.6, 80.3 , 0 );
setMoveKey( spep_0-3 + 490, 1, 0.9, 81 , 0 );
setMoveKey( spep_0-3 + 492, 1, 1.1, 81.6 , 0 );
setMoveKey( spep_0-3 + 494, 1, 1.4, 82.2 , 0 );
setMoveKey( spep_0-3 + 496, 1, 1.6, 82.8 , 0 );
setMoveKey( spep_0-3 + 498, 1, 1.8, 83.4 , 0 );
setMoveKey( spep_0-3 + 500, 1, 2, 83.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, 2.1, 84.3 , 0 );
setMoveKey( spep_0-3 + 504, 1, 2.3, 84.7 , 0 );
setMoveKey( spep_0-3 + 506, 1, 2.4, 85.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, 2.5, 85.5 , 0 );
setMoveKey( spep_0-3 + 510, 1, 2.7, 85.8 , 0 );
setMoveKey( spep_0-3 + 512, 1, 2.8, 86 , 0 );
setMoveKey( spep_0-3 + 514, 1, 2.8, 86.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 2.9, 86.4 , 0 );
setMoveKey( spep_0-1 + 518, 1, 3, 86.6 , 0 );

setScaleKey( spep_0-3 + 460, 1, 5, 5 );
setScaleKey( spep_0-3 + 462, 1, 4.43, 4.43 );
setScaleKey( spep_0-3 + 464, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 466, 1, 2.25, 2.25 );
setScaleKey( spep_0-3 + 468, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 470, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 472, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 474, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 476, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 478, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 480, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 482, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 484, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 486, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 488, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 490, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 492, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 494, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 496, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 498, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 500, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 502, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 504, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 506, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 508, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 510, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 512, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 514, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 516, 1, 0.33, 0.33 );
setScaleKey( spep_0-1 + 518, 1, 0.32, 0.32 );

setRotateKey( spep_0-3 + 460, 1, -14.3 );
setRotateKey( spep_0-3 + 462, 1, -14.4 );
setRotateKey( spep_0-3 + 464, 1, -14.5 );
setRotateKey( spep_0-3 + 466, 1, -14.2 );
setRotateKey( spep_0-3 + 468, 1, -14 );
setRotateKey( spep_0-3 + 470, 1, -13.7 );
setRotateKey( spep_0-3 + 472, 1, -13.4 );
setRotateKey( spep_0-3 + 476, 1, -13.4 );
setRotateKey( spep_0-3 + 478, 1, -13.3 );
setRotateKey( spep_0-3 + 482, 1, -13.3 );
setRotateKey( spep_0-3 + 484, 1, -13.2 );
setRotateKey( spep_0-3 + 490, 1, -13.2 );
setRotateKey( spep_0-3 + 492, 1, -13.1 );
setRotateKey( spep_0-3 + 498, 1, -13.1 );
setRotateKey( spep_0-3 + 500, 1, -13 );
setRotateKey( spep_0-3 + 516, 1, -13 );
setRotateKey( spep_0-1 + 518, 1, -12.9 );

-- ** 音 ** --
--走る２
SE008 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 200 );

--横向きダッシュ音
SE009 = playSeVer2( spep_0 + 60, 1314, "",spep_0 + 160, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE009, 94 );

--走る２
SE010 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE010, 200 );
SE011 = playSeVer2( spep_0 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE011, 200 );
SE012 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE012, 200 );
SE013 = playSeVer2( spep_0 + 100, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE013, 200 );
SE014 = playSeVer2( spep_0 + 110, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE014, 200 );
SE015 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE015, 200 );
SE016 = playSeVer2( spep_0 + 130, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE016, 200 );

--ボディブロー
SE017 = playSeVer2( spep_0 + 152, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 158, 1190, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 158, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 160, 1110, "", 0, 0, 0, -1);

--パンチ１
SE021 = playSeVer2( spep_0 + 196, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 204, 1359, "",spep_0 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 204, SE022, 80 );
SE023 = playSeVer2( spep_0 + 204, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE023, 81 );
SE024 = playSeVer2( spep_0 + 204, 1187, "",spep_0 + 234, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 204, SE024, 76 );

--パンチ２
SE025 = playSeVer2( spep_0 + 258, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 262, 1359, "",spep_0 + 314, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 262, SE026, 81 );
SE027 = playSeVer2( spep_0 + 262, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE027, 83 );
SE028 = playSeVer2( spep_0 + 262, 1187, "",spep_0 + 290, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 262, SE028, 76 );

--主観パンチ１
SE029 = playSeVer2( spep_0 + 316, 1189, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 322, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE030, 79 );
SE031 = playSeVer2( spep_0 + 322, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE031, 62 );
SE032 = playSeVer2( spep_0 + 322, 1110, "", 0, 0, 0, -1);

--主観パンチ２
SE033 = playSeVer2( spep_0 + 352, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE033, 75 );
SE034 = playSeVer2( spep_0 + 352, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE034, 77 );
SE035 = playSeVer2( spep_0 + 352, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE035, 77 );

--蹴り飛ばし
SE036 = playSeVer2( spep_0 + 416, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 422, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE038 = playSeVer2( spep_0 + 458, 1183, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 458, 1121, "",spep_0 + 630, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 458, SE039, 57 );

--顔カットイン
SE040 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +612 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 620;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_1, SE_05);
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;


------------------------------------------------------
--気弾を作るからフィニッシュまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 344, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 344, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 344, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 344, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 344, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 344, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 344, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 344, finish_b, 255 );


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 144, 1, 1);
setDisp( spep_2-1 + 208, 1, 0);

changeAnime( spep_2-3 + 144, 1, 107);

setMoveKey( spep_2-3 + 144, 1, 53.2, -166.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, 51, -193.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 60.1, -210.6 , 0 );
setMoveKey( spep_2-3 + 150, 1, 61.5, -240 , 0 );
setMoveKey( spep_2-3 + 152, 1, 58.1, -256.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, 59.6, -289 , 0 );
setMoveKey( spep_2-3 + 156, 1, 68.8, -306.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 70.3, -336.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 65.1, -332 , 0 );
setMoveKey( spep_2-3 + 162, 1, 64.9, -343.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, 72.4, -339.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, 72.1, -348.3 , 0 );
setMoveKey( spep_2-3 + 168, 1, 64, -342 , 0 );
setMoveKey( spep_2-3 + 170, 1, 73.7, -348.2 , 0 );
setMoveKey( spep_2-3 + 172, 1, 77.6, -359.1 , 0 );
setMoveKey( spep_2-3 + 174, 1, 65.8, -363.2 , 0 );
setMoveKey( spep_2-3 + 176, 1, 77.9, -351.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 66, -355.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 79.2, -369.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 67.4, -373.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, 79.5, -360.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, 67.5, -364.5 , 0 );
setMoveKey( spep_2-3 + 188, 1, 80.6, -378.3 , 0 );
setMoveKey( spep_2-3 + 190, 1, 68.8, -382.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 68.6, -371.7 , 0 );
setMoveKey( spep_2-3 + 194, 1, 81.7, -385.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 82.1, -387.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 70.2, -391 , 0 );
setMoveKey( spep_2-3 + 200, 1, 69.9, -379.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, 83, -392.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 83.2, -394.3 , 0 );
setMoveKey( spep_2-1 + 208, 1, 77.2, -390.4 , 0 );

setScaleKey( spep_2-3 + 144, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 146, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 148, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 150, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 152, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 154, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 156, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 160, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 162, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 164, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 166, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 168, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 170, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 172, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 174, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 178, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 180, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 182, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 184, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 186, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 188, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 190, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 192, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 194, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 196, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 198, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 204, 1, 1.47, 1.47 );
setScaleKey( spep_2-1 + 208, 1, 1.48, 1.48 );

setRotateKey( spep_2-3 + 144, 1, 95 );
setRotateKey( spep_2-1 + 208, 1, 95 );

-- ** 音 ** --
--気弾溜める
SE043 = playSeVer2( spep_2 + 10, 1271, "", 0, 6, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 10, SE043, 173 );
setStartTimeMs( SE043,  567 );
setPitch( spep_2 + 10, SE043, -400 );
setTimeStretch( SE043, 0.73, 30, 4 );
SE044 = playSeVer2( spep_2 + 4, 1295, "",spep_2 + 110, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE044, 177 );
setPitch( spep_2 + 4, SE044, -700 );
setTimeStretch( SE044, 0.53, 30, 4 );
SE045 = playSeVer2( spep_2 + 4, 1200, "",spep_2 + 108, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE045, 172 );
SE046 = playSeVer2( spep_2 + 4, 1291, "",spep_2 + 30, 0, 4, -1);
SE047 = playSeVer2( spep_2 + 8, 1130, "",spep_2 + 50, 0, 12, 0.6);
setSeVolumeByWorkId( spep_2 + 8, SE047, 86 );
setPitch( spep_2 + 8, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE041 = playSeVer2( spep_2 + 6, 1204, "", 0, 10, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE041, 153 );
setStartTimeMs( SE041,  2767 );

--気弾大きくなる
SE048 = playSeVer2( spep_2 + 30, 1008, "",spep_2 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 30, SE048, 74 );
SE049 = playSeVer2( spep_2 + 30, 1064, "",spep_2 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 30, SE049, 76 );
SE050 = playSeVer2( spep_2 + 32, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE050, 224 );
setPitch( spep_2 + 32, SE050, -400 );
setTimeStretch( SE050, 0.73, 30, 4 );

--気弾投げる
SE051 = playSeVer2( spep_2 + 88, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE051, 47 );
setStartTimeMs( SE051,  367 );
SE052 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE053, 62 );
SE054 = playSeVer2( spep_2 + 88, 1235, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE055, 158 );
setPitch( spep_2 + 92, SE055, -200 );
setTimeStretch( SE055, 0.87, 30, 4 );

--気弾飛んでいく
SE056 = playSeVer2( spep_2 + 122, 1215, "",spep_2 + 274, 0, 52, 0.6);
SE057 = playSeVer2( spep_2 + 142, 1021, "", 0, 0, 0, 0.6);
SE058 = playSeVer2( spep_2 + 142, 1175, "",spep_2 + 274, 0, 52, 0.6);
setSeVolumeByWorkId( spep_2 + 142, SE058, 61 );

--連続爆発
SE059 = playSeVer2( spep_2 + 222, 1011, "", 0, 0, 0, 0.6);
SE060 = playSeVer2( spep_2 + 234, 1017, "", 0, 0, 0, 0.6);
SE061 = playSeVer2( spep_2 + 244, 1023, "", 0, 0, 0, 0.6);
SE062 = playSeVer2( spep_2 + 258, 1025, "", 0, 0, 0, 0.6);
SE063 = playSeVer2( spep_2 + 270, 1024, "", 0, 0, 0, 0.6);
SE064 = playSeVer2( spep_2 + 288, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE064, 77 );
SE065 = playSeVer2( spep_2 + 298, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 230, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage(spep_2+224);
endPhase( spep_2 + 334 );

else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ダッシュからセリフカットインまで　
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
dash_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, dash_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, dash_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_f, 0 );
setEffRotateKey( spep_0 + 620, dash_f, 0 );
setEffAlphaKey( spep_0 + 0, dash_f, 255 );
setEffAlphaKey( spep_0 + 620, dash_f, 255 );

-- ** エフェクト等 ** --
dash_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, dash_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 620, dash_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, dash_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 620, dash_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, dash_b, 0 );
setEffRotateKey( spep_0 + 620, dash_b, 0 );
setEffAlphaKey( spep_0 + 0, dash_b, 255 );
setEffAlphaKey( spep_0 + 620, dash_b, 255 );

-- ** 音 ** --
--走る
SE001 = playSeVer2( spep_0 + 0, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 200 );

--走る空気音
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 74 );

--走る
SE003 = playSeVer2( spep_0 + 10, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 200 );
SE004 = playSeVer2( spep_0 + 20, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20, SE004, 200 );
SE005 = playSeVer2( spep_0 + 30, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 30, SE005, 200 );
SE006 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE006, 200 );
SE007 = playSeVer2( spep_0 + 50, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE007, 200 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255 );  --黒 背景


------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 70; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--顔カットインのタイミング指定
spep_x=spep_0 +524;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -18,  515);
setEffMoveKey(  spep_x +84,  ctgogo, -18,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0-3 + 132, 1, 1);
setDisp( spep_0-1 + 192, 1, 0);

changeAnime( spep_0-3 + 132, 1, 101);
changeAnime( spep_0-3 + 160, 1, 108);

setMoveKey( spep_0-3 + 132, 1, -4.2, -34.6 , 0 );
setMoveKey( spep_0-3 + 134, 1, 37.6, -34.6 , 0 );
setMoveKey( spep_0-3 + 136, 1, 79.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 138, 1, 121.1, -34.6 , 0 );
setMoveKey( spep_0-3 + 140, 1, 127.4, -34.6 , 0 );
setMoveKey( spep_0-3 + 142, 1, 133.1, -34.6 , 0 );
setMoveKey( spep_0-3 + 144, 1, 138.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, 142.9, -34.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 146.9, -34.6 , 0 );
setMoveKey( spep_0-3 + 150, 1, 150.4, -34.6 , 0 );
setMoveKey( spep_0-3 + 152, 1, 153.3, -34.6 , 0 );
setMoveKey( spep_0-3 + 154, 1, 155.7, -34.6 , 0 );
setMoveKey( spep_0-3 + 156, 1, 157.5, -34.6 , 0 );
setMoveKey( spep_0-3 + 158, 1, 158.7, -34.6 , 0 );
setMoveKey( spep_0-3 + 159, 1, 158.7, -34.6 , 0 );

setMoveKey( spep_0-3 + 160, 1, 148.5, 69.8 , 0 );
setMoveKey( spep_0-3 + 162, 1, 219, 139.1 , 0 );
setMoveKey( spep_0-3 + 164, 1, 196.1, 125.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 170.2, 102.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 253.5, 172.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, 205, 137.1 , 0 );
setMoveKey( spep_0-3 + 172, 1, 195.7, 126 , 0 );
setMoveKey( spep_0-3 + 174, 1, 199.9, 125.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 189.8, 130.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 195.6, 131.7 , 0 );
setMoveKey( spep_0-3 + 180, 1, 185.8, 119.7 , 0 );
setMoveKey( spep_0-3 + 182, 1, 190.2, 118.7 , 0 );
setMoveKey( spep_0-3 + 184, 1, 180.8, 124.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, 181.9, 121.7 , 0 );
setMoveKey( spep_0-3 + 188, 1, 183.7, 118.5 , 0 );
setMoveKey( spep_0-1 + 192, 1, 182.4, 118.7 , 0 );

setScaleKey( spep_0-3 + 132, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 159, 1, 1.95, 1.95 );

setScaleKey( spep_0-3 + 160, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 162, 1, 3.9, 3.9 );
setScaleKey( spep_0-3 + 164, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 166, 1, 1.95, 1.95 );
setScaleKey( spep_0-3 + 168, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 170, 1, 2.14, 2.14 );
setScaleKey( spep_0-3 + 172, 1, 2.03, 2.03 );
setScaleKey( spep_0-3 + 174, 1, 1.93, 1.93 );
setScaleKey( spep_0-3 + 176, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 178, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 180, 1, 1.71, 1.71 );
setScaleKey( spep_0-3 + 182, 1, 1.65, 1.65 );
setScaleKey( spep_0-3 + 184, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 186, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 188, 1, 1.57, 1.57 );
setScaleKey( spep_0-1 + 192, 1, 1.56, 1.56 );

setRotateKey( spep_0-3 + 132, 1, 0 );
setRotateKey( spep_0-3 + 159, 1, 0 );

setRotateKey( spep_0-3 + 160, 1, -39.2 );
setRotateKey( spep_0-1 + 192, 1, -39.2 );

--敵の動き2
setDisp( spep_0-3 + 312, 1, 1);
setDisp( spep_0-3 + 446, 1, 0);

changeAnime( spep_0-3 + 312, 1, 6);
changeAnime( spep_0-3 + 354, 1, 106);
changeAnime( spep_0-3 + 424, 1, 108);

setMoveKey( spep_0-3 + 312, 1, -75.9, -387.2 , 0 );
setMoveKey( spep_0-3 + 314, 1, -67.2, -377.5 , 0 );
setMoveKey( spep_0-3 + 316, 1, -38.4, -348.7 , 0 );
setMoveKey( spep_0-3 + 318, 1, 11.8, -301 , 0 );
setMoveKey( spep_0-3 + 320, 1, 23.6, -401.6 , 0 );
setMoveKey( spep_0-3 + 322, 1, 14.7, -530.4 , 0 );
setMoveKey( spep_0-3 + 324, 1, 33.1, -416.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 13.2, -285.5 , 0 );
setMoveKey( spep_0-3 + 328, 1, 36.6, -358.5 , 0 );
setMoveKey( spep_0-3 + 330, 1, 27.9, -449.5 , 0 );
setMoveKey( spep_0-3 + 332, 1, 38.5, -301.5 , 0 );
setMoveKey( spep_0-3 + 334, 1, 27.3, -275.2 , 0 );
setMoveKey( spep_0-3 + 336, 1, 44.1, -279.1 , 0 );
setMoveKey( spep_0-3 + 338, 1, 43.1, -269.6 , 0 );
setMoveKey( spep_0-3 + 340, 1, 59.2, -272.3 , 0 );
setMoveKey( spep_0-3 + 342, 1, 69.1, -260.8 , 0 );
setMoveKey( spep_0-3 + 344, 1, 59.8, -263.2 , 0 );
setMoveKey( spep_0-3 + 346, 1, 69.7, -261.6 , 0 );
setMoveKey( spep_0-3 + 348, 1, 77.4, -252.5 , 0 );
setMoveKey( spep_0-3 + 350, 1, 65.6, -257.3 , 0 );
setMoveKey( spep_0-3 + 352, 1, 69.2, -253.7 , 0 );
setMoveKey( spep_0-3 + 353, 1, 69.2, -253.7 , 0 );

setMoveKey( spep_0-3 + 354, 1, 3.7, -289.8 , 0 );
setMoveKey( spep_0-3 + 356, 1, 27, -407.9 , 0 );
setMoveKey( spep_0-3 + 358, 1, 81.7, -559.9 , 0 );
setMoveKey( spep_0-3 + 360, 1, 45.9, -439.8 , 0 );
setMoveKey( spep_0-3 + 362, 1, 50.5, -299.5 , 0 );
setMoveKey( spep_0-3 + 364, 1, 29.8, -372.7 , 0 );
setMoveKey( spep_0-3 + 366, 1, 52.9, -469.7 , 0 );
setMoveKey( spep_0-3 + 368, 1, 21.3, -315.5 , 0 );
setMoveKey( spep_0-3 + 370, 1, 31.6, -295.6 , 0 );
setMoveKey( spep_0-3 + 372, 1, 11.2, -307.7 , 0 );
setMoveKey( spep_0-3 + 374, 1, -3, -308.9 , 0 );
setMoveKey( spep_0-3 + 376, 1, -1.9, -305.4 , 0 );
setMoveKey( spep_0-3 + 378, 1, -8.3, -313.4 , 0 );
setMoveKey( spep_0-3 + 380, 1, -22.1, -313.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, -24.4, -312.8 , 0 );
setMoveKey( spep_0-3 + 384, 1, -26.3, -308.9 , 0 );
setMoveKey( spep_0-3 + 386, 1, -30, -316.5 , 0 );
setMoveKey( spep_0-3 + 388, 1, -41.1, -315.8 , 0 );
setMoveKey( spep_0-3 + 390, 1, -40.7, -315.2 , 0 );
setMoveKey( spep_0-3 + 392, 1, -43, -315.5 , 0 );
setMoveKey( spep_0-3 + 394, 1, -44.7, -315.8 , 0 );
setMoveKey( spep_0-3 + 396, 1, -45.8, -315.9 , 0 );
setMoveKey( spep_0-3 + 398, 1, -46.1, -316 , 0 );
setMoveKey( spep_0-3 + 399, 1, -46.1, -316 , 0 );
setMoveKey( spep_0-3 + 400, 1, 198.5, 54.4 , 0 );
setMoveKey( spep_0-3 + 402, 1, 196.5, 57 , 0 );
setMoveKey( spep_0-3 + 404, 1, 193.7, 58.5 , 0 );
setMoveKey( spep_0-3 + 406, 1, 190.4, 58.9 , 0 );
setMoveKey( spep_0-3 + 408, 1, 186.3, 58.2 , 0 );
setMoveKey( spep_0-3 + 410, 1, 181.6, 56.4 , 0 );
setMoveKey( spep_0-3 + 412, 1, 176.1, 53.4 , 0 );
setMoveKey( spep_0-3 + 414, 1, 170, 49.3 , 0 );
setMoveKey( spep_0-3 + 416, 1, 163.3, 44.1 , 0 );
setMoveKey( spep_0-3 + 418, 1, 155.8, 37.7 , 0 );
setMoveKey( spep_0-3 + 420, 1, 147.7, 30.3 , 0 );
setMoveKey( spep_0-3 + 422, 1, 138.9, 21.7 , 0 );
setMoveKey( spep_0-3 + 423, 1, 138.9, 21.7 , 0 );

setMoveKey( spep_0-3 + 424, 1, 157.8, 86.1 , 0 );
setMoveKey( spep_0-3 + 426, 1, 225.7, 132.1 , 0 );
setMoveKey( spep_0-3 + 428, 1, 261.4, 151.7 , 0 );
setMoveKey( spep_0-3 + 430, 1, 205.1, 143.5 , 0 );
setMoveKey( spep_0-3 + 432, 1, 170.7, 88.4 , 0 );
setMoveKey( spep_0-3 + 434, 1, 248.3, 162.5 , 0 );
setMoveKey( spep_0-3 + 436, 1, 190.4, 121.5 , 0 );
setMoveKey( spep_0-3 + 438, 1, 151.8, 120.5 , 0 );
setMoveKey( spep_0-3 + 440, 1, 281.9, 266.5 , 0 );
setMoveKey( spep_0-3 + 442, 1, 383.4, 445.7 , 0 );
setMoveKey( spep_0-3 + 444, 1, 492.9, 528.1 , 0 );
setMoveKey( spep_0-3 + 446, 1, 608, 606.8 , 0 );

setScaleKey( spep_0-3 + 312, 1, 6.99, 6.99 );
setScaleKey( spep_0-3 + 318, 1, 6.99, 6.99 );
setScaleKey( spep_0-3 + 320, 1, 9.53, 9.53 );
setScaleKey( spep_0-3 + 322, 1, 12.04, 12.04 );
setScaleKey( spep_0-3 + 324, 1, 9.39, 9.39 );
setScaleKey( spep_0-3 + 326, 1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 328, 1, 8.42, 8.42 );
setScaleKey( spep_0-3 + 330, 1, 10.05, 10.05 );
setScaleKey( spep_0-3 + 332, 1, 6.66, 6.66 );
setScaleKey( spep_0-3 + 334, 1, 6.63, 6.63 );
setScaleKey( spep_0-3 + 336, 1, 6.6, 6.6 );
setScaleKey( spep_0-3 + 338, 1, 6.57, 6.57 );
setScaleKey( spep_0-3 + 340, 1, 6.55, 6.55 );
setScaleKey( spep_0-3 + 342, 1, 6.53, 6.53 );
setScaleKey( spep_0-3 + 344, 1, 6.52, 6.52 );
setScaleKey( spep_0-3 + 346, 1, 6.51, 6.51 );
setScaleKey( spep_0-3 + 348, 1, 6.5, 6.5 );
setScaleKey( spep_0-3 + 350, 1, 6.49, 6.49 );
setScaleKey( spep_0-3 + 353, 1, 6.49, 6.49 );

setScaleKey( spep_0-3 + 354, 1, 6.49, 6.49 );
setScaleKey( spep_0-3 + 356, 1, 8.86, 8.86 );
setScaleKey( spep_0-3 + 358, 1, 11.21, 11.21 );
setScaleKey( spep_0-3 + 360, 1, 8.75, 8.75 );
setScaleKey( spep_0-3 + 362, 1, 6.33, 6.33 );
setScaleKey( spep_0-3 + 364, 1, 7.86, 7.86 );
setScaleKey( spep_0-3 + 366, 1, 9.38, 9.38 );
setScaleKey( spep_0-3 + 368, 1, 6.22, 6.22 );
setScaleKey( spep_0-3 + 370, 1, 6.19, 6.19 );
setScaleKey( spep_0-3 + 372, 1, 6.17, 6.17 );
setScaleKey( spep_0-3 + 374, 1, 6.14, 6.14 );
setScaleKey( spep_0-3 + 376, 1, 6.12, 6.12 );
setScaleKey( spep_0-3 + 378, 1, 6.09, 6.09 );
setScaleKey( spep_0-3 + 380, 1, 6.07, 6.07 );
setScaleKey( spep_0-3 + 382, 1, 6.06, 6.06 );
setScaleKey( spep_0-3 + 384, 1, 6.04, 6.04 );
setScaleKey( spep_0-3 + 386, 1, 6.03, 6.03 );
setScaleKey( spep_0-3 + 388, 1, 6.02, 6.02 );
setScaleKey( spep_0-3 + 390, 1, 6.01, 6.01 );
setScaleKey( spep_0-3 + 392, 1, 6, 6 );
setScaleKey( spep_0-3 + 394, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 398, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 399, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 400, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 423, 1, 1.85, 1.85 );

setScaleKey( spep_0-3 + 424, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 426, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 428, 1, 3.74, 3.74 );
setScaleKey( spep_0-3 + 430, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 432, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 434, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 436, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 438, 1, 2.13, 2.13 );
setScaleKey( spep_0-3 + 446, 1, 2.13, 2.13 );

setRotateKey( spep_0-3 + 312, 1, 57.7 );
setRotateKey( spep_0-3 + 332, 1, 57.7 );
setRotateKey( spep_0-3 + 333, 1, 57.7 );
setRotateKey( spep_0-3 + 334, 1, 57.6 );
setRotateKey( spep_0-3 + 353, 1, 57.6 );

setRotateKey( spep_0-3 + 354, 1, -58.4 );
setRotateKey( spep_0-3 + 356, 1, -58.5 );
setRotateKey( spep_0-3 + 358, 1, -58.6 );
setRotateKey( spep_0-3 + 360, 1, -58.7 );
setRotateKey( spep_0-3 + 362, 1, -58.8 );
setRotateKey( spep_0-3 + 364, 1, -58.8 );
setRotateKey( spep_0-3 + 366, 1, -58.9 );
setRotateKey( spep_0-3 + 368, 1, -59 );
setRotateKey( spep_0-3 + 370, 1, -59 );
setRotateKey( spep_0-3 + 372, 1, -59.1 );
setRotateKey( spep_0-3 + 374, 1, -59.1 );
setRotateKey( spep_0-3 + 376, 1, -59.2 );
setRotateKey( spep_0-3 + 378, 1, -59.2 );
setRotateKey( spep_0-3 + 380, 1, -59.3 );
setRotateKey( spep_0-3 + 384, 1, -59.3 );
setRotateKey( spep_0-3 + 386, 1, -59.4 );
setRotateKey( spep_0-3 + 398, 1, -59.4 );
setRotateKey( spep_0-3 + 399, 1, -59.4 );
setRotateKey( spep_0-3 + 400, 1, -60.9 );
setRotateKey( spep_0-3 + 423, 1, -60.9 );

setRotateKey( spep_0-3 + 424, 1, -35.7 );
setRotateKey( spep_0-3 + 446, 1, -35.7 );

--敵の動き3
setDisp( spep_0-3 + 460, 1, 1);
setDisp( spep_0-1 + 518, 1, 0);

changeAnime( spep_0-1 + 460, 1, 105);

setMoveKey( spep_0-3 + 460, 1, -27, -67.4 , 0 );
setMoveKey( spep_0-3 + 462, 1, -22.2, -48.9 , 0 );
setMoveKey( spep_0-3 + 464, 1, -22, -5.8 , 0 );
setMoveKey( spep_0-3 + 466, 1, -12.5, 11.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, -13.3, 39.1 , 0 );
setMoveKey( spep_0-3 + 470, 1, -4.3, 52.3 , 0 );
setMoveKey( spep_0-3 + 472, 1, -1.9, 73.3 , 0 );
setMoveKey( spep_0-3 + 474, 1, -4.6, 78.8 , 0 );
setMoveKey( spep_0-3 + 476, 1, 0.6, 73.6 , 0 );
setMoveKey( spep_0-3 + 478, 1, -0.8, 76.2 , 0 );
setMoveKey( spep_0-3 + 480, 1, -0.5, 77.1 , 0 );
setMoveKey( spep_0-3 + 482, 1, -0.2, 77.9 , 0 );
setMoveKey( spep_0-3 + 484, 1, 0.1, 78.7 , 0 );
setMoveKey( spep_0-3 + 486, 1, 0.4, 79.5 , 0 );
setMoveKey( spep_0-3 + 488, 1, 0.6, 80.3 , 0 );
setMoveKey( spep_0-3 + 490, 1, 0.9, 81 , 0 );
setMoveKey( spep_0-3 + 492, 1, 1.1, 81.6 , 0 );
setMoveKey( spep_0-3 + 494, 1, 1.4, 82.2 , 0 );
setMoveKey( spep_0-3 + 496, 1, 1.6, 82.8 , 0 );
setMoveKey( spep_0-3 + 498, 1, 1.8, 83.4 , 0 );
setMoveKey( spep_0-3 + 500, 1, 2, 83.9 , 0 );
setMoveKey( spep_0-3 + 502, 1, 2.1, 84.3 , 0 );
setMoveKey( spep_0-3 + 504, 1, 2.3, 84.7 , 0 );
setMoveKey( spep_0-3 + 506, 1, 2.4, 85.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, 2.5, 85.5 , 0 );
setMoveKey( spep_0-3 + 510, 1, 2.7, 85.8 , 0 );
setMoveKey( spep_0-3 + 512, 1, 2.8, 86 , 0 );
setMoveKey( spep_0-3 + 514, 1, 2.8, 86.2 , 0 );
setMoveKey( spep_0-3 + 516, 1, 2.9, 86.4 , 0 );
setMoveKey( spep_0-1 + 518, 1, 3, 86.6 , 0 );

setScaleKey( spep_0-3 + 460, 1, 5, 5 );
setScaleKey( spep_0-3 + 462, 1, 4.43, 4.43 );
setScaleKey( spep_0-3 + 464, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 466, 1, 2.25, 2.25 );
setScaleKey( spep_0-3 + 468, 1, 1.76, 1.76 );
setScaleKey( spep_0-3 + 470, 1, 1.27, 1.27 );
setScaleKey( spep_0-3 + 472, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 474, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 476, 1, 0.71, 0.71 );
setScaleKey( spep_0-3 + 478, 1, 0.68, 0.68 );
setScaleKey( spep_0-3 + 480, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 482, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 484, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 486, 1, 0.56, 0.56 );
setScaleKey( spep_0-3 + 488, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 490, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 492, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 494, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 496, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 498, 1, 0.43, 0.43 );
setScaleKey( spep_0-3 + 500, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 502, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 504, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 506, 1, 0.37, 0.37 );
setScaleKey( spep_0-3 + 508, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 510, 1, 0.35, 0.35 );
setScaleKey( spep_0-3 + 512, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 514, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 516, 1, 0.33, 0.33 );
setScaleKey( spep_0-1 + 518, 1, 0.32, 0.32 );

setRotateKey( spep_0-3 + 460, 1, -14.3 );
setRotateKey( spep_0-3 + 462, 1, -14.4 );
setRotateKey( spep_0-3 + 464, 1, -14.5 );
setRotateKey( spep_0-3 + 466, 1, -14.2 );
setRotateKey( spep_0-3 + 468, 1, -14 );
setRotateKey( spep_0-3 + 470, 1, -13.7 );
setRotateKey( spep_0-3 + 472, 1, -13.4 );
setRotateKey( spep_0-3 + 476, 1, -13.4 );
setRotateKey( spep_0-3 + 478, 1, -13.3 );
setRotateKey( spep_0-3 + 482, 1, -13.3 );
setRotateKey( spep_0-3 + 484, 1, -13.2 );
setRotateKey( spep_0-3 + 490, 1, -13.2 );
setRotateKey( spep_0-3 + 492, 1, -13.1 );
setRotateKey( spep_0-3 + 498, 1, -13.1 );
setRotateKey( spep_0-3 + 500, 1, -13 );
setRotateKey( spep_0-3 + 516, 1, -13 );
setRotateKey( spep_0-1 + 518, 1, -12.9 );

-- ** 音 ** --
--走る２
SE008 = playSeVer2( spep_0 + 60, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE008, 200 );

--横向きダッシュ音
SE009 = playSeVer2( spep_0 + 60, 1314, "",spep_0 + 160, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 60, SE009, 94 );

--走る２
SE010 = playSeVer2( spep_0 + 70, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 70, SE010, 200 );
SE011 = playSeVer2( spep_0 + 80, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 80, SE011, 200 );
SE012 = playSeVer2( spep_0 + 90, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE012, 200 );
SE013 = playSeVer2( spep_0 + 100, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 100, SE013, 200 );
SE014 = playSeVer2( spep_0 + 110, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 110, SE014, 200 );
SE015 = playSeVer2( spep_0 + 120, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 120, SE015, 200 );
SE016 = playSeVer2( spep_0 + 130, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130, SE016, 200 );

--ボディブロー
SE017 = playSeVer2( spep_0 + 152, 1189, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 158, 1190, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 158, 1153, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_0 + 160, 1110, "", 0, 0, 0, -1);

--パンチ１
SE021 = playSeVer2( spep_0 + 196, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 204, 1359, "",spep_0 + 260, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 204, SE022, 80 );
SE023 = playSeVer2( spep_0 + 204, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 204, SE023, 81 );
SE024 = playSeVer2( spep_0 + 204, 1187, "",spep_0 + 234, 0, 20, -1);
setSeVolumeByWorkId( spep_0 + 204, SE024, 76 );

--パンチ２
SE025 = playSeVer2( spep_0 + 258, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 262, 1359, "",spep_0 + 314, 0, 24, -1);
setSeVolumeByWorkId( spep_0 + 262, SE026, 81 );
SE027 = playSeVer2( spep_0 + 262, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 262, SE027, 83 );
SE028 = playSeVer2( spep_0 + 262, 1187, "",spep_0 + 290, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 262, SE028, 76 );

--主観パンチ１
SE029 = playSeVer2( spep_0 + 316, 1189, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 322, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE030, 79 );
SE031 = playSeVer2( spep_0 + 322, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 322, SE031, 62 );
SE032 = playSeVer2( spep_0 + 322, 1110, "", 0, 0, 0, -1);

--主観パンチ２
SE033 = playSeVer2( spep_0 + 352, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE033, 75 );
SE034 = playSeVer2( spep_0 + 352, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE034, 77 );
SE035 = playSeVer2( spep_0 + 352, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE035, 77 );

--蹴り飛ばし
SE036 = playSeVer2( spep_0 + 416, 1004, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 422, 1123, "", 0, 0, 0, -1);

--敵飛んでいく
SE038 = playSeVer2( spep_0 + 458, 1183, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_0 + 458, 1121, "",spep_0 + 630, 0, 82, -1);
setSeVolumeByWorkId( spep_0 + 458, SE039, 57 );

--顔カットイン
--SE040 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +612 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1= spep_0 + 620;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;


------------------------------------------------------
--気弾を作るからフィニッシュまで
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 344, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 344, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 344, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 344, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 344, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 344, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 344, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 344, finish_b, 255 );


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 144, 1, 1);
setDisp( spep_2-1 + 208, 1, 0);

changeAnime( spep_2-3 + 144, 1, 107);

setMoveKey( spep_2-3 + 144, 1, 53.2, -166.8 , 0 );
setMoveKey( spep_2-3 + 146, 1, 51, -193.8 , 0 );
setMoveKey( spep_2-3 + 148, 1, 60.1, -210.6 , 0 );
setMoveKey( spep_2-3 + 150, 1, 61.5, -240 , 0 );
setMoveKey( spep_2-3 + 152, 1, 58.1, -256.4 , 0 );
setMoveKey( spep_2-3 + 154, 1, 59.6, -289 , 0 );
setMoveKey( spep_2-3 + 156, 1, 68.8, -306.4 , 0 );
setMoveKey( spep_2-3 + 158, 1, 70.3, -336.4 , 0 );
setMoveKey( spep_2-3 + 160, 1, 65.1, -332 , 0 );
setMoveKey( spep_2-3 + 162, 1, 64.9, -343.6 , 0 );
setMoveKey( spep_2-3 + 164, 1, 72.4, -339.8 , 0 );
setMoveKey( spep_2-3 + 166, 1, 72.1, -348.3 , 0 );
setMoveKey( spep_2-3 + 168, 1, 64, -342 , 0 );
setMoveKey( spep_2-3 + 170, 1, 73.7, -348.2 , 0 );
setMoveKey( spep_2-3 + 172, 1, 77.6, -359.1 , 0 );
setMoveKey( spep_2-3 + 174, 1, 65.8, -363.2 , 0 );
setMoveKey( spep_2-3 + 176, 1, 77.9, -351.1 , 0 );
setMoveKey( spep_2-3 + 178, 1, 66, -355.1 , 0 );
setMoveKey( spep_2-3 + 180, 1, 79.2, -369.2 , 0 );
setMoveKey( spep_2-3 + 182, 1, 67.4, -373.1 , 0 );
setMoveKey( spep_2-3 + 184, 1, 79.5, -360.8 , 0 );
setMoveKey( spep_2-3 + 186, 1, 67.5, -364.5 , 0 );
setMoveKey( spep_2-3 + 188, 1, 80.6, -378.3 , 0 );
setMoveKey( spep_2-3 + 190, 1, 68.8, -382.3 , 0 );
setMoveKey( spep_2-3 + 192, 1, 68.6, -371.7 , 0 );
setMoveKey( spep_2-3 + 194, 1, 81.7, -385.5 , 0 );
setMoveKey( spep_2-3 + 196, 1, 82.1, -387.6 , 0 );
setMoveKey( spep_2-3 + 198, 1, 70.2, -391 , 0 );
setMoveKey( spep_2-3 + 200, 1, 69.9, -379.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, 83, -392.9 , 0 );
setMoveKey( spep_2-3 + 204, 1, 83.2, -394.3 , 0 );
setMoveKey( spep_2-1 + 208, 1, 77.2, -390.4 , 0 );

setScaleKey( spep_2-3 + 144, 1, 0.82, 0.82 );
setScaleKey( spep_2-3 + 146, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 148, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 150, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 152, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 154, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 156, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 158, 1, 1.31, 1.31 );
setScaleKey( spep_2-3 + 160, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 162, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 164, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 166, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 168, 1, 1.35, 1.35 );
setScaleKey( spep_2-3 + 170, 1, 1.36, 1.36 );
setScaleKey( spep_2-3 + 172, 1, 1.37, 1.37 );
setScaleKey( spep_2-3 + 174, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 176, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 178, 1, 1.39, 1.39 );
setScaleKey( spep_2-3 + 180, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 182, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 184, 1, 1.41, 1.41 );
setScaleKey( spep_2-3 + 186, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 188, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 190, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 192, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 194, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 196, 1, 1.45, 1.45 );
setScaleKey( spep_2-3 + 198, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 200, 1, 1.46, 1.46 );
setScaleKey( spep_2-3 + 202, 1, 1.47, 1.47 );
setScaleKey( spep_2-3 + 204, 1, 1.47, 1.47 );
setScaleKey( spep_2-1 + 208, 1, 1.48, 1.48 );

setRotateKey( spep_2-3 + 144, 1, 95 );
setRotateKey( spep_2-1 + 208, 1, 95 );

-- ** 音 ** --
--気弾溜める
SE043 = playSeVer2( spep_2 + 10, 1271, "", 0, 6, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 10, SE043, 173 );
setStartTimeMs( SE043,  567 );
setPitch( spep_2 + 10, SE043, -400 );
setTimeStretch( SE043, 0.73, 30, 4 );
SE044 = playSeVer2( spep_2 + 4, 1295, "",spep_2 + 110, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE044, 177 );
setPitch( spep_2 + 4, SE044, -700 );
setTimeStretch( SE044, 0.53, 30, 4 );
SE045 = playSeVer2( spep_2 + 4, 1200, "",spep_2 + 108, 0, 24, 0.6);
setSeVolumeByWorkId( spep_2 + 4, SE045, 172 );
SE046 = playSeVer2( spep_2 + 4, 1291, "",spep_2 + 30, 0, 4, -1);
SE047 = playSeVer2( spep_2 + 8, 1130, "",spep_2 + 50, 0, 12, 0.6);
setSeVolumeByWorkId( spep_2 + 8, SE047, 86 );
setPitch( spep_2 + 8, SE047, -400 );
setTimeStretch( SE047, 0.73, 30, 4 );
SE041 = playSeVer2( spep_2 + 6, 1204, "", 0, 10, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 6, SE041, 153 );
setStartTimeMs( SE041,  2767 );

--気弾大きくなる
SE048 = playSeVer2( spep_2 + 30, 1008, "",spep_2 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 30, SE048, 74 );
SE049 = playSeVer2( spep_2 + 30, 1064, "",spep_2 + 64, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 30, SE049, 76 );
SE050 = playSeVer2( spep_2 + 32, 1225, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 32, SE050, 224 );
setPitch( spep_2 + 32, SE050, -400 );
setTimeStretch( SE050, 0.73, 30, 4 );

--気弾投げる
SE051 = playSeVer2( spep_2 + 88, 1145, "", 0, 6, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE051, 47 );
setStartTimeMs( SE051,  367 );
SE052 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE053, 62 );
SE054 = playSeVer2( spep_2 + 88, 1235, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 92, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 92, SE055, 158 );
setPitch( spep_2 + 92, SE055, -200 );
setTimeStretch( SE055, 0.87, 30, 4 );

--気弾飛んでいく
SE056 = playSeVer2( spep_2 + 122, 1215, "",spep_2 + 274, 0, 52, 0.6);
SE057 = playSeVer2( spep_2 + 142, 1021, "", 0, 0, 0, 0.6);
SE058 = playSeVer2( spep_2 + 142, 1175, "",spep_2 + 274, 0, 52, 0.6);
setSeVolumeByWorkId( spep_2 + 142, SE058, 61 );

--連続爆発
SE059 = playSeVer2( spep_2 + 222, 1011, "", 0, 0, 0, 0.6);
SE060 = playSeVer2( spep_2 + 234, 1017, "", 0, 0, 0, 0.6);
SE061 = playSeVer2( spep_2 + 244, 1023, "", 0, 0, 0, 0.6);
SE062 = playSeVer2( spep_2 + 258, 1025, "", 0, 0, 0, 0.6);
SE063 = playSeVer2( spep_2 + 270, 1024, "", 0, 0, 0, 0.6);
SE064 = playSeVer2( spep_2 + 288, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 288, SE064, 77 );
SE065 = playSeVer2( spep_2 + 298, 1159, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 230, 0, 0, 0, 0, 255 );  --黒　背景

--終わり
dealDamage(spep_2+224);
endPhase( spep_2 + 334 );

end