--1024730:天津飯_さようなら天さん(アクティブ)
--sp_effect_b4_00240

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
SP_01 = 160038;  --開幕チャオズ飛びつき〜フィニッシュ
SP_02 = 160039;  --開幕チャオズ飛びつき〜フィニッシュ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);

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


ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;

if (_IS_PLAYER_SIDE_ == 1) then

    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 30 -12);        -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1220);      -- スキップ先フレーム指定

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--前半(540)
------------------------------------------------------
--はじめの準備
spep_0=0;
--エフェクト
extra_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1374, extra_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1374, extra_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_f, 0 );
setEffRotateKey( spep_0 + 1374, extra_f, 0 );
setEffAlphaKey( spep_0 + 0, extra_f, 255 );
setEffAlphaKey( spep_0 + 1374, extra_f, 255 );

--エフェクト
extra_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --中盤　奥    ef_003
setEffMoveKey( spep_0 + 0, extra_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + 1374, extra_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, extra_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 1374, extra_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, extra_b, 0 );
setEffRotateKey( spep_0 + 1374, extra_b, 0 );
setEffAlphaKey( spep_0 + 0, extra_b, 255 );
setEffAlphaKey( spep_0 + 1374, extra_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1);
setAlphaKey( spep_0 + 0, 1, 255 );

changeAnime( spep_0 + 0, 1, 100);

setMoveKey( spep_0 + 0, 1, -295.4, -307.3 , 0 );
--setMoveKey( spep_0-3 + 2, 1, -294.9, -306.9 , 0 );
setMoveKey( spep_0-3 + 4, 1, -293.5, -305.7 , 0 );
setMoveKey( spep_0-3 + 6, 1, -291.1, -303.6 , 0 );
setMoveKey( spep_0-3 + 8, 1, -287.7, -300.6 , 0 );
setMoveKey( spep_0-3 + 10, 1, -283.4, -296.8 , 0 );
setMoveKey( spep_0-3 + 12, 1, -278.1, -292.2 , 0 );
setMoveKey( spep_0-3 + 14, 1, -271.8, -286.7 , 0 );
setMoveKey( spep_0-3 + 16, 1, -264.6, -280.4 , 0 );
setMoveKey( spep_0-3 + 18, 1, -256.4, -273.2 , 0 );
setMoveKey( spep_0-3 + 20, 1, -247.3, -265.2 , 0 );
setMoveKey( spep_0-3 + 22, 1, -237.2, -256.3 , 0 );
setMoveKey( spep_0-3 + 24, 1, -226.2, -246.6 , 0 );
setMoveKey( spep_0-3 + 26, 1, -214.1, -236.1 , 0 );
setMoveKey( spep_0-3 + 28, 1, -201.2, -224.7 , 0 );
setMoveKey( spep_0-3 + 30, 1, -182.5, -208.2 , 0 );
setMoveKey( spep_0-3 + 32, 1, -163.8, -191.6 , 0 );
setMoveKey( spep_0-3 + 34, 1, -145.2, -175.1 , 0 );

setScaleKey( spep_0 + 0, 1, 3.27, 3.27 );
--setScaleKey( spep_0-3 + 4, 1, 3.27, 3.27 );
setScaleKey( spep_0-3 + 6, 1, 3.26, 3.26 );
setScaleKey( spep_0-3 + 8, 1, 3.25, 3.25 );
setScaleKey( spep_0-3 + 10, 1, 3.24, 3.24 );
setScaleKey( spep_0-3 + 12, 1, 3.22, 3.22 );
setScaleKey( spep_0-3 + 14, 1, 3.2, 3.2 );
setScaleKey( spep_0-3 + 16, 1, 3.18, 3.18 );
setScaleKey( spep_0-3 + 18, 1, 3.16, 3.16 );
setScaleKey( spep_0-3 + 20, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 22, 1, 3.1, 3.1 );
setScaleKey( spep_0-3 + 24, 1, 3.06, 3.06 );
setScaleKey( spep_0-3 + 26, 1, 3.03, 3.03 );
setScaleKey( spep_0-3 + 28, 1, 2.99, 2.99 );
setScaleKey( spep_0-3 + 30, 1, 2.93, 2.93 );
setScaleKey( spep_0-3 + 32, 1, 2.88, 2.88 );
setScaleKey( spep_0-3 + 34, 1, 2.82, 2.82 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 34, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 16 );

--餃子とびついてくる
SE002 = playSeVer2( spep_0 + 0, 1319, "",spep_0 + 74, 0, 14, -1);
setPitch( spep_0 + 0, SE002, -1200 );
setTimeStretch( SE002, 0.2, 30, 4 );
SE003 = playSeVer2( spep_0 + 12, 1117, "",spep_0 + 72, 0, 14, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 40 , 0, 0, 0, 0, 255);
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, -145.2, -175.1 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.82, 2.82 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-1 + 70, 1, 0);
changeAnime( spep_0-3 + 40, 1, 118);

setMoveKey( spep_0-3 + 36, 1, -126.5, -158.6 , 0 );
setMoveKey( spep_0-3 + 38, 1, -107.9, -142 , 0 );
setMoveKey( spep_0-3 + 39, 1, -107.9, -142 , 0 );

setMoveKey( spep_0-3 + 40, 1, -163.7, 4.3 , 0 );
setMoveKey( spep_0-3 + 42, 1, -121.8, 7.3 , 0 );
setMoveKey( spep_0-3 + 44, 1, -87.5, 9.7 , 0 );
setMoveKey( spep_0-3 + 46, 1, -60.8, 11.5 , 0 );
setMoveKey( spep_0-3 + 48, 1, -41.7, 12.8 , 0 );
setMoveKey( spep_0-3 + 50, 1, -30.3, 13.6 , 0 );
setMoveKey( spep_0-3 + 52, 1, -26.5, 13.9 , 0 );
setMoveKey( spep_0-1 + 70, 1, -26.5, 13.9 , 0 );

setScaleKey( spep_0-3 + 36, 1, 2.76, 2.76 );
setScaleKey( spep_0-3 + 38, 1, 2.71, 2.71 );
setScaleKey( spep_0-3 + 39, 1, 2.71, 2.71 );

setScaleKey( spep_0-3 + 40, 1, 1.64, 1.64 );
setScaleKey( spep_0-3 + 42, 1, 1.69, 1.69 );
setScaleKey( spep_0-3 + 44, 1, 1.74, 1.74 );
setScaleKey( spep_0-3 + 46, 1, 1.77, 1.77 );
setScaleKey( spep_0-3 + 48, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 50, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 52, 1, 1.82, 1.82 );
setScaleKey( spep_0-1 + 70, 1, 1.82, 1.82 );

setRotateKey( spep_0-1 + 70, 1, 0 );

--敵の動き
setDisp( spep_0-3 + 258, 1, 1);
setDisp( spep_0-1 + 664, 1, 0);
setAlphaKey( spep_0 + 0, 1, 255 );

setAlphaKey( spep_0-3 + 258, 1, 255 );
setAlphaKey( spep_0 + 644, 1, 255 );
setAlphaKey( spep_0-1 + 664, 1, 0 );

changeAnime( spep_0-3 + 258, 1, 118);

setMoveKey( spep_0-3 + 258, 1, 115.7, 723.8 , 0 );
setMoveKey( spep_0-3 + 259, 1, 115.7, 723.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 101.8, 667.7 , 0 );
setMoveKey( spep_0-3 + 261, 1, 101.8, 667.7 , 0 );
setMoveKey( spep_0-3 + 262, 1, 87.9, 611.6 , 0 );
setMoveKey( spep_0-3 + 263, 1, 87.9, 611.6 , 0 );
setMoveKey( spep_0-3 + 264, 1, 74, 555.5 , 0 );
setMoveKey( spep_0-3 + 265, 1, 74, 555.5 , 0 );
setMoveKey( spep_0-3 + 266, 1, 60.2, 499.4 , 0 );
setMoveKey( spep_0-3 + 267, 1, 60.2, 499.4 , 0 );
setMoveKey( spep_0-3 + 268, 1, 46.3, 443.4 , 0 );
setMoveKey( spep_0-3 + 269, 1, 46.3, 443.4 , 0 );
setMoveKey( spep_0-3 + 270, 1, 32.4, 387.3 , 0 );
setMoveKey( spep_0-3 + 271, 1, 32.4, 387.3 , 0 );
setMoveKey( spep_0-3 + 272, 1, 30.3, 378.6 , 0 );
setMoveKey( spep_0-3 + 273, 1, 30.3, 378.6 , 0 );
setMoveKey( spep_0-3 + 274, 1, 28.2, 370.5 , 0 );
setMoveKey( spep_0-3 + 275, 1, 28.2, 370.5 , 0 );
setMoveKey( spep_0-3 + 276, 1, 26.3, 362.8 , 0 );
setMoveKey( spep_0-3 + 277, 1, 26.3, 362.8 , 0 );
setMoveKey( spep_0-3 + 278, 1, 24.5, 355.6 , 0 );
setMoveKey( spep_0-3 + 279, 1, 24.5, 355.6 , 0 );
setMoveKey( spep_0-3 + 280, 1, 22.9, 348.8 , 0 );
setMoveKey( spep_0-3 + 281, 1, 22.9, 348.8 , 0 );
setMoveKey( spep_0-3 + 282, 1, 21.3, 342.5 , 0 );
setMoveKey( spep_0-3 + 283, 1, 21.3, 342.5 , 0 );
setMoveKey( spep_0-3 + 284, 1, 19.9, 336.7 , 0 );
setMoveKey( spep_0-3 + 285, 1, 19.9, 336.7 , 0 );
setMoveKey( spep_0-3 + 286, 1, 18.5, 331.4 , 0 );
setMoveKey( spep_0-3 + 287, 1, 18.5, 331.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, 17.3, 326.5 , 0 );
setMoveKey( spep_0-3 + 289, 1, 17.3, 326.5 , 0 );
setMoveKey( spep_0-3 + 290, 1, 16.2, 322 , 0 );
setMoveKey( spep_0-3 + 291, 1, 16.2, 322 , 0 );
setMoveKey( spep_0-3 + 292, 1, 15.2, 318.1 , 0 );
setMoveKey( spep_0-3 + 293, 1, 15.2, 318.1 , 0 );
setMoveKey( spep_0-3 + 294, 1, 14.4, 314.6 , 0 );
setMoveKey( spep_0-3 + 295, 1, 14.4, 314.6 , 0 );
setMoveKey( spep_0-3 + 296, 1, 13.6, 311.5 , 0 );
setMoveKey( spep_0-3 + 297, 1, 13.6, 311.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 13, 309 , 0 );
setMoveKey( spep_0-3 + 299, 1, 13, 309 , 0 );
setMoveKey( spep_0-3 + 300, 1, 12.4, 306.9 , 0 );
setMoveKey( spep_0-3 + 301, 1, 12.4, 306.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 12, 305.3 , 0 );
setMoveKey( spep_0-3 + 303, 1, 12, 305.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, 11.7, 304.1 , 0 );
setMoveKey( spep_0-3 + 305, 1, 11.7, 304.1 , 0 );
setMoveKey( spep_0-3 + 306, 1, 11.6, 303.4 , 0 );
setMoveKey( spep_0-3 + 307, 1, 11.6, 303.4 , 0 );
setMoveKey( spep_0-3 + 308, 1, 11.5, 303.2 , 0 );
setMoveKey( spep_0-3 + 309, 1, 11.5, 303.2 , 0 );

setMoveKey( spep_0-3 + 310, 1, -37.4, -64.3 , 0 );
setMoveKey( spep_0-3 + 312, 1, -36.2, -66 , 0 );
setMoveKey( spep_0-3 + 314, 1, -37.4, -66.6 , 0 );
setMoveKey( spep_0-3 + 316, 1, -37.2, -66.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, -38.6, -66.1 , 0 );
setMoveKey( spep_0-3 + 320, 1, -37.4, -67.9 , 0 );
setMoveKey( spep_0-3 + 322, 1, -38.6, -68.5 , 0 );
setMoveKey( spep_0-3 + 324, 1, -38.5, -68.4 , 0 );
setMoveKey( spep_0-3 + 326, 1, -40, -68.2 , 0 );
setMoveKey( spep_0-3 + 328, 1, -38.8, -70.1 , 0 );
setMoveKey( spep_0-3 + 330, 1, -40.1, -70.8 , 0 );
setMoveKey( spep_0-3 + 332, 1, -40, -70.7 , 0 );
setMoveKey( spep_0-3 + 334, 1, -41.5, -70.6 , 0 );
setMoveKey( spep_0-3 + 336, 1, -40.4, -72.5 , 0 );
setMoveKey( spep_0-3 + 338, 1, -41.7, -73.2 , 0 );
setMoveKey( spep_0-3 + 340, 1, -41.6, -73.2 , 0 );
setMoveKey( spep_0-3 + 342, 1, -43.2, -73.2 , 0 );
setMoveKey( spep_0-3 + 344, 1, -42.1, -75.2 , 0 );
setMoveKey( spep_0-3 + 346, 1, -43.4, -76 , 0 );
setMoveKey( spep_0-3 + 348, 1, -43.5, -76 , 0 );
setMoveKey( spep_0-3 + 350, 1, -45, -76.1 , 0 );
setMoveKey( spep_0-3 + 352, 1, -44, -78.1 , 0 );
setMoveKey( spep_0-3 + 354, 1, -45.4, -79 , 0 );
setMoveKey( spep_0-3 + 356, 1, -45.5, -79.1 , 0 );
setMoveKey( spep_0-3 + 358, 1, -47.1, -79.2 , 0 );
setMoveKey( spep_0-3 + 360, 1, -46.1, -81.3 , 0 );
setMoveKey( spep_0-3 + 362, 1, -47.5, -82.3 , 0 );
setMoveKey( spep_0-3 + 364, 1, -47.6, -82.4 , 0 );
setMoveKey( spep_0-3 + 366, 1, -49.3, -82.6 , 0 );
setMoveKey( spep_0-3 + 368, 1, -48.4, -84.8 , 0 );
setMoveKey( spep_0-3 + 370, 1, -49.8, -85.8 , 0 );
setMoveKey( spep_0-3 + 372, 1, -49.9, -86 , 0 );
setMoveKey( spep_0-3 + 374, 1, -51.6, -86.3 , 0 );
setMoveKey( spep_0-3 + 376, 1, -50.8, -88.5 , 0 );
setMoveKey( spep_0-3 + 378, 1, -52.2, -89.6 , 0 );
setMoveKey( spep_0-3 + 380, 1, -52.4, -89.9 , 0 );
setMoveKey( spep_0-3 + 382, 1, -54.2, -90.2 , 0 );
setMoveKey( spep_0-3 + 384, 1, -53.4, -92.5 , 0 );
setMoveKey( spep_0-3 + 386, 1, -54.9, -93.7 , 0 );
setMoveKey( spep_0-3 + 388, 1, -55.1, -94 , 0 );
setMoveKey( spep_0-3 + 390, 1, -56.9, -94.4 , 0 );
setMoveKey( spep_0-3 + 392, 1, -56.1, -96.8 , 0 );
setMoveKey( spep_0-3 + 394, 1, -57.7, -98 , 0 );
setMoveKey( spep_0-3 + 396, 1, -57.9, -98.4 , 0 );
setMoveKey( spep_0-3 + 398, 1, -59.8, -98.9 , 0 );
setMoveKey( spep_0-3 + 400, 1, -59, -101.3 , 0 );
setMoveKey( spep_0-3 + 402, 1, -60.6, -102.6 , 0 );
setMoveKey( spep_0-3 + 404, 1, -61, -103.1 , 0 );
setMoveKey( spep_0-3 + 406, 1, -62.8, -103.6 , 0 );
setMoveKey( spep_0-3 + 408, 1, -62.1, -106.1 , 0 );
setMoveKey( spep_0-3 + 410, 1, -63.8, -107.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, -64.1, -108 , 0 );
setMoveKey( spep_0-3 + 414, 1, -66.1, -108.6 , 0 );
setMoveKey( spep_0-3 + 416, 1, -65.4, -111.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -67.1, -112.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -67.5, -113.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -69.4, -113.9 , 0 );
setMoveKey( spep_0-3 + 424, 1, -68.8, -116.6 , 0 );
setMoveKey( spep_0-3 + 426, 1, -70.5, -118 , 0 );
setMoveKey( spep_0-3 + 428, 1, -70.9, -118.7 , 0 );
setMoveKey( spep_0-3 + 430, 1, -72.8, -119.4 , 0 );
setMoveKey( spep_0-3 + 432, 1, -72.1, -122 , 0 );
setMoveKey( spep_0-3 + 434, 1, -73.8, -123.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, -74.2, -124 , 0 );
setMoveKey( spep_0-3 + 438, 1, -76, -124.6 , 0 );
setMoveKey( spep_0-3 + 440, 1, -75.3, -127.2 , 0 );
setMoveKey( spep_0-3 + 442, 1, -76.9, -128.5 , 0 );
setMoveKey( spep_0-3 + 444, 1, -77.2, -129.1 , 0 );
setMoveKey( spep_0-3 + 446, 1, -79.1, -129.6 , 0 );
setMoveKey( spep_0-3 + 448, 1, -78.3, -132.1 , 0 );
setMoveKey( spep_0-3 + 450, 1, -79.9, -133.4 , 0 );
setMoveKey( spep_0-3 + 452, 1, -80.2, -133.8 , 0 );
setMoveKey( spep_0-3 + 454, 1, -82, -134.3 , 0 );
setMoveKey( spep_0-3 + 456, 1, -81.2, -136.7 , 0 );
setMoveKey( spep_0-3 + 458, 1, -82.7, -138 , 0 );
setMoveKey( spep_0-3 + 460, 1, -82.9, -138.3 , 0 );
setMoveKey( spep_0-3 + 462, 1, -84.7, -138.7 , 0 );
setMoveKey( spep_0-3 + 464, 1, -83.8, -141.1 , 0 );
setMoveKey( spep_0-3 + 466, 1, -85.3, -142.2 , 0 );
setMoveKey( spep_0-3 + 468, 1, -85.5, -142.6 , 0 );
setMoveKey( spep_0-3 + 470, 1, -87.2, -142.9 , 0 );
setMoveKey( spep_0-3 + 472, 1, -86.3, -145.2 , 0 );
setMoveKey( spep_0-3 + 474, 1, -87.8, -146.3 , 0 );
setMoveKey( spep_0-3 + 476, 1, -87.9, -146.5 , 0 );
setMoveKey( spep_0-3 + 478, 1, -89.6, -146.8 , 0 );
setMoveKey( spep_0-3 + 480, 1, -88.7, -149 , 0 );
setMoveKey( spep_0-3 + 482, 1, -90.1, -150 , 0 );
setMoveKey( spep_0-3 + 484, 1, -90.2, -150.2 , 0 );
setMoveKey( spep_0-3 + 486, 1, -91.8, -150.4 , 0 );
setMoveKey( spep_0-3 + 488, 1, -90.8, -152.6 , 0 );
setMoveKey( spep_0-3 + 490, 1, -92.2, -153.5 , 0 );
setMoveKey( spep_0-3 + 492, 1, -92.3, -153.6 , 0 );
setMoveKey( spep_0-3 + 494, 1, -93.9, -153.7 , 0 );
setMoveKey( spep_0-3 + 496, 1, -92.9, -155.8 , 0 );
setMoveKey( spep_0-3 + 498, 1, -94.2, -156.7 , 0 );
setMoveKey( spep_0-3 + 500, 1, -94.6, -156.5 , 0 );
setMoveKey( spep_0-3 + 502, 1, -94.9, -157.7 , 0 );
setMoveKey( spep_0-3 + 504, 1, -95.4, -158.5 , 0 );
setMoveKey( spep_0-3 + 506, 1, -96, -159.1 , 0 );
setMoveKey( spep_0-3 + 508, 1, -96.4, -159.3 , 0 );
setMoveKey( spep_0-3 + 510, 1, -96.7, -160.5 , 0 );
setMoveKey( spep_0-3 + 512, 1, -97.1, -161.3 , 0 );
setMoveKey( spep_0-3 + 514, 1, -97.6, -161.8 , 0 );
setMoveKey( spep_0-3 + 516, 1, -98, -161.9 , 0 );
setMoveKey( spep_0-3 + 518, 1, -98.2, -163 , 0 );
setMoveKey( spep_0-3 + 520, 1, -98.6, -163.7 , 0 );
setMoveKey( spep_0-3 + 522, 1, -99.1, -164.2 , 0 );
setMoveKey( spep_0-3 + 524, 1, -99.4, -164.3 , 0 );
setMoveKey( spep_0-3 + 526, 1, -99.6, -165.3 , 0 );
setMoveKey( spep_0-3 + 528, 1, -100, -165.9 , 0 );
setMoveKey( spep_0-3 + 530, 1, -100.4, -166.3 , 0 );
setMoveKey( spep_0-3 + 532, 1, -100.4, -166.8 , 0 );
setMoveKey( spep_0-3 + 534, 1, -100.7, -167.2 , 0 );
setMoveKey( spep_0-3 + 536, 1, -101, -167.7 , 0 );
setMoveKey( spep_0-3 + 538, 1, -101.3, -168.1 , 0 );
setMoveKey( spep_0-3 + 540, 1, -101.5, -168.5 , 0 );
setMoveKey( spep_0-3 + 542, 1, -101.8, -168.9 , 0 );
setMoveKey( spep_0-3 + 544, 1, -102, -169.3 , 0 );
setMoveKey( spep_0-3 + 546, 1, -102.2, -169.7 , 0 );
setMoveKey( spep_0-3 + 548, 1, -102.4, -170 , 0 );
setMoveKey( spep_0-3 + 550, 1, -102.6, -170.4 , 0 );
setMoveKey( spep_0-3 + 552, 1, -102.8, -170.7 , 0 );
setMoveKey( spep_0-3 + 554, 1, -103, -171 , 0 );
setMoveKey( spep_0-3 + 556, 1, -103.2, -171.3 , 0 );
setMoveKey( spep_0-3 + 558, 1, -103.3, -171.6 , 0 );
setMoveKey( spep_0-1 + 664, 1, -103.3, -171.6 , 0 );

setScaleKey( spep_0-3 + 258, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 309, 1, 1.82, 1.82 );

setScaleKey( spep_0-3 + 310, 1, 7.09, 7.09 );
setScaleKey( spep_0-3 + 312, 1, 7.11, 7.11 );
setScaleKey( spep_0-3 + 314, 1, 7.13, 7.13 );
setScaleKey( spep_0-3 + 316, 1, 7.14, 7.14 );
setScaleKey( spep_0-3 + 318, 1, 7.16, 7.16 );
setScaleKey( spep_0-3 + 320, 1, 7.19, 7.19 );
setScaleKey( spep_0-3 + 322, 1, 7.21, 7.21 );
setScaleKey( spep_0-3 + 324, 1, 7.23, 7.23 );
setScaleKey( spep_0-3 + 326, 1, 7.25, 7.25 );
setScaleKey( spep_0-3 + 328, 1, 7.27, 7.27 );
setScaleKey( spep_0-3 + 330, 1, 7.3, 7.3 );
setScaleKey( spep_0-3 + 332, 1, 7.32, 7.32 );
setScaleKey( spep_0-3 + 334, 1, 7.35, 7.35 );
setScaleKey( spep_0-3 + 336, 1, 7.37, 7.37 );
setScaleKey( spep_0-3 + 338, 1, 7.4, 7.4 );
setScaleKey( spep_0-3 + 340, 1, 7.43, 7.43 );
setScaleKey( spep_0-3 + 342, 1, 7.46, 7.46 );
setScaleKey( spep_0-3 + 344, 1, 7.48, 7.48 );
setScaleKey( spep_0-3 + 346, 1, 7.51, 7.51 );
setScaleKey( spep_0-3 + 348, 1, 7.54, 7.54 );
setScaleKey( spep_0-3 + 350, 1, 7.58, 7.58 );
setScaleKey( spep_0-3 + 352, 1, 7.61, 7.61 );
setScaleKey( spep_0-3 + 354, 1, 7.64, 7.64 );
setScaleKey( spep_0-3 + 356, 1, 7.67, 7.67 );
setScaleKey( spep_0-3 + 358, 1, 7.71, 7.71 );
setScaleKey( spep_0-3 + 360, 1, 7.74, 7.74 );
setScaleKey( spep_0-3 + 362, 1, 7.77, 7.77 );
setScaleKey( spep_0-3 + 364, 1, 7.81, 7.81 );
setScaleKey( spep_0-3 + 366, 1, 7.85, 7.85 );
setScaleKey( spep_0-3 + 368, 1, 7.88, 7.88 );
setScaleKey( spep_0-3 + 370, 1, 7.92, 7.92 );
setScaleKey( spep_0-3 + 372, 1, 7.96, 7.96 );
setScaleKey( spep_0-3 + 374, 1, 8, 8 );
setScaleKey( spep_0-3 + 376, 1, 8.04, 8.04 );
setScaleKey( spep_0-3 + 378, 1, 8.08, 8.08 );
setScaleKey( spep_0-3 + 380, 1, 8.12, 8.12 );
setScaleKey( spep_0-3 + 382, 1, 8.16, 8.16 );
setScaleKey( spep_0-3 + 384, 1, 8.2, 8.2 );
setScaleKey( spep_0-3 + 386, 1, 8.25, 8.25 );
setScaleKey( spep_0-3 + 388, 1, 8.29, 8.29 );
setScaleKey( spep_0-3 + 390, 1, 8.33, 8.33 );
setScaleKey( spep_0-3 + 392, 1, 8.38, 8.38 );
setScaleKey( spep_0-3 + 394, 1, 8.42, 8.42 );
setScaleKey( spep_0-3 + 396, 1, 8.47, 8.47 );
setScaleKey( spep_0-3 + 398, 1, 8.52, 8.52 );
setScaleKey( spep_0-3 + 400, 1, 8.57, 8.57 );
setScaleKey( spep_0-3 + 402, 1, 8.61, 8.61 );
setScaleKey( spep_0-3 + 404, 1, 8.66, 8.66 );
setScaleKey( spep_0-3 + 406, 1, 8.71, 8.71 );
setScaleKey( spep_0-3 + 408, 1, 8.76, 8.76 );
setScaleKey( spep_0-3 + 410, 1, 8.82, 8.82 );
setScaleKey( spep_0-3 + 412, 1, 8.87, 8.87 );
setScaleKey( spep_0-3 + 414, 1, 8.92, 8.92 );
setScaleKey( spep_0-3 + 416, 1, 8.97, 8.97 );
setScaleKey( spep_0-3 + 418, 1, 9.03, 9.03 );
setScaleKey( spep_0-3 + 420, 1, 9.08, 9.08 );
setScaleKey( spep_0-3 + 422, 1, 9.14, 9.14 );
setScaleKey( spep_0-3 + 424, 1, 9.19, 9.19 );
setScaleKey( spep_0-3 + 426, 1, 9.25, 9.25 );
setScaleKey( spep_0-3 + 428, 1, 9.31, 9.31 );
setScaleKey( spep_0-3 + 430, 1, 9.36, 9.36 );
setScaleKey( spep_0-3 + 432, 1, 9.42, 9.42 );
setScaleKey( spep_0-3 + 434, 1, 9.47, 9.47 );
setScaleKey( spep_0-3 + 436, 1, 9.52, 9.52 );
setScaleKey( spep_0-3 + 438, 1, 9.58, 9.58 );
setScaleKey( spep_0-3 + 440, 1, 9.63, 9.63 );
setScaleKey( spep_0-3 + 442, 1, 9.68, 9.68 );
setScaleKey( spep_0-3 + 444, 1, 9.73, 9.73 );
setScaleKey( spep_0-3 + 446, 1, 9.78, 9.78 );
setScaleKey( spep_0-3 + 448, 1, 9.83, 9.83 );
setScaleKey( spep_0-3 + 450, 1, 9.88, 9.88 );
setScaleKey( spep_0-3 + 452, 1, 9.93, 9.93 );
setScaleKey( spep_0-3 + 454, 1, 9.97, 9.97 );
setScaleKey( spep_0-3 + 456, 1, 10.02, 10.02 );
setScaleKey( spep_0-3 + 458, 1, 10.06, 10.06 );
setScaleKey( spep_0-3 + 460, 1, 10.11, 10.11 );
setScaleKey( spep_0-3 + 462, 1, 10.15, 10.15 );
setScaleKey( spep_0-3 + 464, 1, 10.2, 10.2 );
setScaleKey( spep_0-3 + 466, 1, 10.24, 10.24 );
setScaleKey( spep_0-3 + 468, 1, 10.28, 10.28 );
setScaleKey( spep_0-3 + 470, 1, 10.32, 10.32 );
setScaleKey( spep_0-3 + 472, 1, 10.36, 10.36 );
setScaleKey( spep_0-3 + 474, 1, 10.4, 10.4 );
setScaleKey( spep_0-3 + 476, 1, 10.44, 10.44 );
setScaleKey( spep_0-3 + 478, 1, 10.48, 10.48 );
setScaleKey( spep_0-3 + 480, 1, 10.52, 10.52 );
setScaleKey( spep_0-3 + 482, 1, 10.56, 10.56 );
setScaleKey( spep_0-3 + 484, 1, 10.59, 10.59 );
setScaleKey( spep_0-3 + 486, 1, 10.63, 10.63 );
setScaleKey( spep_0-3 + 488, 1, 10.67, 10.67 );
setScaleKey( spep_0-3 + 490, 1, 10.7, 10.7 );
setScaleKey( spep_0-3 + 492, 1, 10.73, 10.73 );
setScaleKey( spep_0-3 + 494, 1, 10.77, 10.77 );
setScaleKey( spep_0-3 + 496, 1, 10.8, 10.8 );
setScaleKey( spep_0-3 + 498, 1, 10.83, 10.83 );
setScaleKey( spep_0-3 + 500, 1, 10.86, 10.86 );
setScaleKey( spep_0-3 + 502, 1, 10.89, 10.89 );
setScaleKey( spep_0-3 + 504, 1, 10.92, 10.92 );
setScaleKey( spep_0-3 + 506, 1, 10.95, 10.95 );
setScaleKey( spep_0-3 + 508, 1, 10.98, 10.98 );
setScaleKey( spep_0-3 + 510, 1, 11.01, 11.01 );
setScaleKey( spep_0-3 + 512, 1, 11.03, 11.03 );
setScaleKey( spep_0-3 + 514, 1, 11.06, 11.06 );
setScaleKey( spep_0-3 + 516, 1, 11.09, 11.09 );
setScaleKey( spep_0-3 + 518, 1, 11.11, 11.11 );
setScaleKey( spep_0-3 + 520, 1, 11.13, 11.13 );
setScaleKey( spep_0-3 + 522, 1, 11.16, 11.16 );
setScaleKey( spep_0-3 + 524, 1, 11.18, 11.18 );
setScaleKey( spep_0-3 + 526, 1, 11.2, 11.2 );
setScaleKey( spep_0-3 + 528, 1, 11.22, 11.22 );
setScaleKey( spep_0-3 + 530, 1, 11.24, 11.24 );
setScaleKey( spep_0-3 + 532, 1, 11.26, 11.26 );
setScaleKey( spep_0-3 + 534, 1, 11.28, 11.28 );
setScaleKey( spep_0-3 + 536, 1, 11.3, 11.3 );
setScaleKey( spep_0-3 + 538, 1, 11.32, 11.32 );
setScaleKey( spep_0-3 + 540, 1, 11.34, 11.34 );
setScaleKey( spep_0-3 + 542, 1, 11.35, 11.35 );
setScaleKey( spep_0-3 + 544, 1, 11.37, 11.37 );
setScaleKey( spep_0-3 + 546, 1, 11.38, 11.38 );
setScaleKey( spep_0-3 + 548, 1, 11.4, 11.4 );
setScaleKey( spep_0-3 + 550, 1, 11.41, 11.41 );
setScaleKey( spep_0-3 + 552, 1, 11.42, 11.42 );
setScaleKey( spep_0-3 + 554, 1, 11.44, 11.44 );
setScaleKey( spep_0-3 + 556, 1, 11.45, 11.45 );
setScaleKey( spep_0-3 + 558, 1, 11.46, 11.46 );
setScaleKey( spep_0-1 + 664, 1, 11.46, 11.46 );

setRotateKey( spep_0-3 + 258, 1, 0 );
setRotateKey( spep_0-3 + 309, 1, 0 );

setRotateKey( spep_0-3 + 310, 1, 1 );
setRotateKey( spep_0-1 + 664, 1, 1 );

--敵の動き
setDisp( spep_0-3 + 910, 1, 1);
setDisp( spep_0-1 + 948, 1, 0);

changeAnime( spep_0-3 + 910, 1, 118);

setAlphaKey( spep_0-3 + 910, 1, 255 );
setBlendColor(spep_0-3 + 910, 1, 3, 0, 0, 0, 1.0);
setBlendColor(spep_0 + 918, 1, 3, 1, 1, 1, 1.0);

setMoveKey( spep_0-3 + 910, 1, 0, 146.6 , 0 );
setMoveKey( spep_0-3 + 912, 1, -0.1, 146.5 , 0 );
setMoveKey( spep_0-3 + 914, 1, -0.1, 146.4 , 0 );
setMoveKey( spep_0-1 + 948, 1, -0.1, 146.4 , 0 );

setScaleKey( spep_0-3 + 910, 1, 0.75, 0.75 );
setScaleKey( spep_0-1 + 948, 1, 0.75, 0.75 );

setRotateKey( spep_0-3 + 910, 1, 0 );
setRotateKey( spep_0-1 + 948, 1, 0 );

--SE
--餃子敵に抱きつく
SE004 = playSeVer2( spep_0 + 50, 1007, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 50, 1012, "", 0, 0, 0, -1);

--画面遷移
SE006 = playSeVer2( spep_0 + 220, 1264, "", 0, 24, 0, -1);
setSeVolumeByWorkId( spep_0 + 220, SE006, 56 );

--自爆前溜め
SE007 = playSeVer2( spep_0 + 306, 1329, "", 0, 22, 0, -1);
setStartTimeMs( SE007,  1183 );
setPitch( spep_0 + 306, SE007, 600 );
setTimeStretch( SE007, 1.4, 30, 4 );

--画面遷移
SE008 = playSeVer2( spep_0 + 228, 44, "", 0, 0, 0, -1);

--セリフカットイン
SE009 = playSeVer2( spep_0 + 310, 1018, "", 0, 0, 0, -1);

--自爆前溜め
SE010 = playSeVer2( spep_0 + 310, 1158, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 310, SE010, 59 );
setTimeStretch( SE010, 1.43, 30, 4 );

--自爆前ホワイトアウト
SE011 = playSeVer2( spep_0 + 598, 1157, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 598, SE011, 145 );
SE012 = playSeVer2( spep_0 + 598, 1263, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_0 + 930, 1069, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 948, 1024, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 948, 1159, "", 0, 0, 0, -1);

--ボイス
--何をする気だ餃子…！！！
playVoice( spep_0 + 67, 465 );
setVoiceVolume( spep_0 + 67, 465, 100 );

--さようなら天さん……どうか死なないで
playVoice( spep_0 + 301, 466 );
setVoiceVolume( spep_0 + 301, 466, 100 );

--やめろーっ！！餃子ーっ！！！！！
playVoice( spep_0 + 676, 467 );
setVoiceVolume( spep_0 + 676, 467, 100 );

--餃子ーっ！！！！！
playVoice( spep_0 + 1211, 468 );
setVoiceVolume( spep_0 + 1211, 468, 100 );

-- ** 白背景 ** --
entryFadeBg( spep_0 + 40, 0, 1360 , 0, 255, 255, 255, 255);

-- ** ダメージ表示 ** --
dealDamage(spep_0+1224);
endPhase( spep_0 + 1364 );
else end
