--1021780:超サイヤ人孫悟天(幼年期)_かめかめ波
--sp_effect_a1_00283
--sp2162

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
SP_01= 157091;--冒頭〜回し蹴り：手前
SP_02= 157092;--冒頭〜回し蹴り：奥
SP_03= 157093;--かめかめ波構え
SP_04= 157094;--発射〜爆発：手前
SP_05= 157095;--発射〜爆発：奥
SP_06= 157096;--書き文字セット1
SP_07= 157097;--書き文字セット2

--エフェクト(てき)
SP_01x= 157098;--冒頭〜回し蹴り：手前(敵)
SP_02x= 157099;--冒頭〜回し蹴り：奥(敵)
SP_03x= 157093;--かめかめ波構え
SP_04x= 157100;--発射〜爆発：手前(敵)
SP_05x= 157095;--発射〜爆発：奥
SP_06x= 157102;--書き文字セット1(敵)
SP_07x= 157103;--書き文字セット2(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.9);


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
-- かめはめ波発射〜爆発
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 330, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 330, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 330, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 328, fighting_f, 255 );
setEffAlphaKey( spep_0 + 329, fighting_f, 255 );
setEffAlphaKey( spep_0 + 330, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 330, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 330, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 330, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 328, fighting_b, 255 );
setEffAlphaKey( spep_0 + 329, fighting_b, 255 );
setEffAlphaKey( spep_0 + 330, fighting_b, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 79 );

--悟天上空へ
SE003 = playSe( spep_0 + 40, 1116 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 58 );
stopSe( spep_0 + 66, SE003, 24 );
SE004 = playSe( spep_0 + 40, 1167 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 38 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 332, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
  
    pauseAll( SP_dodge, 67);

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

--敵の動き
setDisp( spep_0-3 + 110, 1, 1);
setDisp( spep_0-2 + 332, 1, 0);

changeAnime( spep_0-3 + 110, 1, 104);
changeAnime( spep_0-3 + 134, 1, 108);
changeAnime( spep_0-3 + 192, 1, 106);
changeAnime( spep_0-3 + 274, 1, 107);
changeAnime( spep_0-3 + 298, 1, 105);


setMoveKey( spep_0-3 + 110,1, 531.6, -798 , 0 );
setMoveKey( spep_0-3 + 112,1, 487.7, -730.2 , 0 );
setMoveKey( spep_0-3 + 114,1, 446.4, -666.6 , 0 );
setMoveKey( spep_0-3 + 116,1, 407.9, -607.3 , 0 );
setMoveKey( spep_0-3 + 118,1, 372.1, -552.2 , 0 );
setMoveKey( spep_0-3 + 120,1, 339.1, -501.3 , 0 );
setMoveKey( spep_0-3 + 122,1, 308.8, -454.7 , 0 );
setMoveKey( spep_0-3 + 124,1, 281.3, -412.3 , 0 );
setMoveKey( spep_0-3 + 126,1, 256.5, -374.1 , 0 );
setMoveKey( spep_0-3 + 128,1, 234.5, -340.2 , 0 );
setMoveKey( spep_0-3 + 130,1, 215.2, -310.5 , 0 );
setMoveKey( spep_0-3 + 132,1, 198.7, -285 , 0 );
setMoveKey( spep_0-3 + 133,1, 198.7, -285 , 0 );

setMoveKey( spep_0-3 + 134, 1, 20.5, -33.8 , 0 );
setMoveKey( spep_0-3 + 136, 1, 30.7, -10.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 21.6, -25.4 , 0 );
setMoveKey( spep_0-3 + 140, 1, 31.8, -21.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 13.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 144, 1, 32.9, -32 , 0 );
setMoveKey( spep_0-3 + 146, 1, 32.2, -51.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, 38, -52.5 , 0 );
setMoveKey( spep_0-3 + 150, 1, 27.7, -72.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 43.1, -73 , 0 );
setMoveKey( spep_0-3 + 154, 1, 45.6, -83.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 48.2, -93.5 , 0 );
setMoveKey( spep_0-3 + 158, 1, 50.7, -103.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 53.3, -114 , 0 );
setMoveKey( spep_0-3 + 162, 1, 55.8, -124.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 58.3, -134.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, 60.9, -144.7 , 0 );
setMoveKey( spep_0-3 + 168, 1, 63.4, -154.9 , 0 );
setMoveKey( spep_0-3 + 170, 1, 66, -165.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 68.5, -175.4 , 0 );
setMoveKey( spep_0-3 + 174, 1, 68.4, -201.8 , 0 );
setMoveKey( spep_0-3 + 176, 1, 74.8, -196.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 68.3, -213 , 0 );
setMoveKey( spep_0-3 + 180, 1, 78.3, -206.4 , 0 );
setMoveKey( spep_0-3 + 182, 1, 72.4, -196.6 , 0 );
setMoveKey( spep_0-3 + 184, 1, 79.2, -206 , 0 );
setMoveKey( spep_0-3 + 186, 1, 76.4, -218.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 80.1, -205.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, 70.9, -211.8 , 0 );
setMoveKey( spep_0-3 + 191, 1, 70.9, -211.8 , 0 );

setMoveKey( spep_0-3 + 192, 1, -15.4, -108.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, -64.2, -101.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, -102.9, -99.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, -139.8, -124.1 , 0 );
setMoveKey( spep_0-3 + 200, 1, -147, -124.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, -153.9, -126.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -160.4, -128.6 , 0 );
setMoveKey( spep_0-3 + 206, 1, -166.5, -131.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, -172.1, -135.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, -177.4, -140.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, -182.3, -146.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, -186.9, -153.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, -194.2, -166.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, -201.4, -179.4 , 0 );
setMoveKey( spep_0-3 + 220, 1, -211.3, -191.8 , 0 );
setMoveKey( spep_0-3 + 222, 1, -221.3, -204.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, -231.4, -216.7 , 0 );
setMoveKey( spep_0-3 + 226, 1, -241.4, -229.2 , 0 );
setMoveKey( spep_0-3 + 228, 1, -251.5, -241.7 , 0 );
setMoveKey( spep_0-3 + 230, 1, -261.6, -254.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, -271.6, -266.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, -281.6, -279 , 0 );
setMoveKey( spep_0-3 + 236, 1, -291.6, -291.4 , 0 );
setMoveKey( spep_0-3 + 238, 1, -301.4, -303.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -311.2, -316.1 , 0 );
setMoveKey( spep_0-3 + 242, 1, -334, -340 , 0 );
setMoveKey( spep_0-3 + 244, 1, -357.7, -364.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -382.4, -390.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, -408.3, -416.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -435.5, -444.4 , 0 );
setMoveKey( spep_0-3 + 252, 1, -463.7, -472.9 , 0 );
setMoveKey( spep_0-3 + 254, 1, -493.2, -502.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, -524.1, -533.2 , 0 );
setMoveKey( spep_0-3 + 258, 1, -556.2, -564.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, -589.4, -597.6 , 0 );
setMoveKey( spep_0-3 + 262, 1, -623.9, -631.2 , 0 );
setMoveKey( spep_0-3 + 264, 1, -659.7, -665.9 , 0 );
setMoveKey( spep_0-3 + 266, 1, -696.9, -701.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, -735.1, -738.4 , 0 );
setMoveKey( spep_0-3 + 270, 1, -774.7, -776.3 , 0 );
setMoveKey( spep_0-3 + 272, 1, -814.9, -815 , 0 );
setMoveKey( spep_0-3 + 273, 1, -814.9, -815 , 0 );

setMoveKey( spep_0-3 + 274, 1, -119.5, -391.3 , 0 );
setMoveKey( spep_0-3 + 276, 1, -110.8, -366.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, -118.1, -370.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, -99.9, -361.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, -107.2, -339.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, -89, -356.2 , 0 );
setMoveKey( spep_0-3 + 286, 1, -89.9, -369.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, -78.1, -351.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, -88.6, -355 , 0 );
setMoveKey( spep_0-3 + 292, 1, -67.2, -346 , 0 );
setMoveKey( spep_0-3 + 294, 1, -68.1, -353.1 , 0 );
setMoveKey( spep_0-3 + 296, 1, -56.3, -340.9 , 0 );
setMoveKey( spep_0-3 + 297, 1, -56.3, -340.9 , 0 );

setMoveKey( spep_0-3 + 298, 1, 56.1, -16.1 , 0 );
setMoveKey( spep_0-3 + 300, 1, 44.2, 16.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 32.3, 49.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, 20.5, 82 , 0 );
setMoveKey( spep_0-3 + 306, 1, 8.6, 114.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, 8.3, 115.2 , 0 );
setMoveKey( spep_0-3 + 310, 1, 8.1, 115.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, 7.9, 116.3 , 0 );
setMoveKey( spep_0-3 + 314, 1, 7.6, 116.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, 7.4, 117.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, 7.2, 117.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, 6.9, 118.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, 6.7, 119 , 0 );
setMoveKey( spep_0-3 + 324, 1, 6.5, 119.6 , 0 );
setMoveKey( spep_0-3 + 326, 1, 6.3, 120.2 , 0 );
setMoveKey( spep_0-3 + 328, 1, 6, 120.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 5.8, 121.3 , 0 );
setMoveKey( spep_0-3 + 332, 1, 5.6, 121.8 , 0 );


setScaleKey( spep_0-3 + 110,1, 8.54, 8.54 );
setScaleKey( spep_0-3 + 112,1, 8.05, 8.05 );
setScaleKey( spep_0-3 + 114,1, 7.6, 7.6 );
setScaleKey( spep_0-3 + 116,1, 7.18, 7.18 );
setScaleKey( spep_0-3 + 118,1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 120,1, 6.42, 6.42 );
setScaleKey( spep_0-3 + 122,1, 6.09, 6.09 );
setScaleKey( spep_0-3 + 124,1, 5.79, 5.79 );
setScaleKey( spep_0-3 + 126,1, 5.51, 5.51 );
setScaleKey( spep_0-3 + 128,1, 5.27, 5.27 );
setScaleKey( spep_0-3 + 130,1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 132,1, 4.88, 4.88 );
setScaleKey( spep_0-3 + 133,1, 4.88, 4.88 );

setScaleKey( spep_0-3 + 134, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 191, 1, 1.97, 1.97 );

setScaleKey( spep_0-3 + 192, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 194, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 196, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 198, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 200, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 202, 1, 2.37, 2.37 );
setScaleKey( spep_0-3 + 204, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 206, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 208, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 210, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 212, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 214, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 216, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 218, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 220, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 222, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 224, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 226, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 228, 1, 2.9, 2.9 );
setScaleKey( spep_0-3 + 230, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 232, 1, 3.06, 3.06 );
setScaleKey( spep_0-3 + 234, 1, 3.14, 3.14 );
setScaleKey( spep_0-3 + 236, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 238, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 240, 1, 3.37, 3.37 );
setScaleKey( spep_0-3 + 242, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 244, 1, 3.72, 3.72 );
setScaleKey( spep_0-3 + 246, 1, 3.95, 3.95 );
setScaleKey( spep_0-3 + 248, 1, 4.18, 4.18 );
setScaleKey( spep_0-3 + 250, 1, 4.42, 4.42 );
setScaleKey( spep_0-3 + 252, 1, 4.67, 4.67 );
setScaleKey( spep_0-3 + 254, 1, 4.93, 4.93 );
setScaleKey( spep_0-3 + 256, 1, 5.19, 5.19 );
setScaleKey( spep_0-3 + 258, 1, 5.46, 5.46 );
setScaleKey( spep_0-3 + 260, 1, 5.74, 5.74 );
setScaleKey( spep_0-3 + 262, 1, 6.02, 6.02 );
setScaleKey( spep_0-3 + 264, 1, 6.31, 6.31 );
setScaleKey( spep_0-3 + 266, 1, 6.61, 6.61 );
setScaleKey( spep_0-3 + 268, 1, 6.92, 6.92 );
setScaleKey( spep_0-3 + 270, 1, 7.23, 7.23 );
setScaleKey( spep_0-3 + 272, 1, 7.55, 7.55 );
setScaleKey( spep_0-3 + 273, 1, 7.55, 7.55 );

setScaleKey( spep_0-3 + 274, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 297, 1, 2.92, 2.92 );

setScaleKey( spep_0-3 + 298, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 300, 1, 3.99, 3.99 );
setScaleKey( spep_0-3 + 302, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 304, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 306, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 308, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 310, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 312, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 314, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 316, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 318, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 320, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 322, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 324, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 326, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 328, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 330, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 332, 1, 0.39, 0.39 );

setRotateKey( spep_0-3 + 110,1, 0 );
setRotateKey( spep_0-3 + 133,1, 0 );

setRotateKey( spep_0-3 + 134, 1, 60.7 );
setRotateKey( spep_0-3 + 191, 1, 60.7 );


setRotateKey( spep_0-3 + 192, 1, 13 );
setRotateKey( spep_0-3 + 194, 1, 4.7 );
setRotateKey( spep_0-3 + 196, 1, -1.6 );
setRotateKey( spep_0-3 + 198, 1, -6.1 );
setRotateKey( spep_0-3 + 200, 1, -5.6 );
setRotateKey( spep_0-3 + 202, 1, -5.1 );
setRotateKey( spep_0-3 + 204, 1, -4.6 );
setRotateKey( spep_0-3 + 206, 1, -4.2 );
setRotateKey( spep_0-3 + 208, 1, -3.9 );
setRotateKey( spep_0-3 + 210, 1, -3.6 );
setRotateKey( spep_0-3 + 212, 1, -3.4 );
setRotateKey( spep_0-3 + 214, 1, -3.2 );
setRotateKey( spep_0-3 + 216, 1, -3.4 );
setRotateKey( spep_0-3 + 218, 1, -3.5 );
setRotateKey( spep_0-3 + 220, 1, -3.7 );
setRotateKey( spep_0-3 + 222, 1, -3.9 );
setRotateKey( spep_0-3 + 224, 1, -4 );
setRotateKey( spep_0-3 + 226, 1, -4.2 );
setRotateKey( spep_0-3 + 228, 1, -4.3 );
setRotateKey( spep_0-3 + 230, 1, -4.5 );
setRotateKey( spep_0-3 + 232, 1, -4.6 );
setRotateKey( spep_0-3 + 234, 1, -4.7 );
setRotateKey( spep_0-3 + 236, 1, -4.8 );
setRotateKey( spep_0-3 + 238, 1, -4.9 );
setRotateKey( spep_0-3 + 240, 1, -5 );
setRotateKey( spep_0-3 + 242, 1, -4.9 );
setRotateKey( spep_0-3 + 244, 1, -4.8 );
setRotateKey( spep_0-3 + 246, 1, -4.7 );
setRotateKey( spep_0-3 + 248, 1, -4.6 );
setRotateKey( spep_0-3 + 250, 1, -4.5 );
setRotateKey( spep_0-3 + 252, 1, -4.5 );
setRotateKey( spep_0-3 + 254, 1, -4.4 );
setRotateKey( spep_0-3 + 256, 1, -4.3 );
setRotateKey( spep_0-3 + 258, 1, -4.2 );
setRotateKey( spep_0-3 + 260, 1, -4.1 );
setRotateKey( spep_0-3 + 262, 1, -4 );
setRotateKey( spep_0-3 + 264, 1, -3.9 );
setRotateKey( spep_0-3 + 266, 1, -3.8 );
setRotateKey( spep_0-3 + 268, 1, -3.7 );
setRotateKey( spep_0-3 + 270, 1, -3.6 );
setRotateKey( spep_0-3 + 272, 1, -3.5 );
setRotateKey( spep_0-3 + 273, 1, -3.5 );

setRotateKey( spep_0-3 + 274, 1, -104.2 );
setRotateKey( spep_0-3 + 276, 1, -103.5 );
setRotateKey( spep_0-3 + 278, 1, -102.7 );
setRotateKey( spep_0-3 + 280, 1, -101.9 );
setRotateKey( spep_0-3 + 282, 1, -101.1 );
setRotateKey( spep_0-3 + 284, 1, -100.4 );
setRotateKey( spep_0-3 + 286, 1, -99.6 );
setRotateKey( spep_0-3 + 288, 1, -98.8 );
setRotateKey( spep_0-3 + 290, 1, -98.1 );
setRotateKey( spep_0-3 + 292, 1, -97.3 );
setRotateKey( spep_0-3 + 294, 1, -96.5 );
setRotateKey( spep_0-3 + 296, 1, -95.8 );
setRotateKey( spep_0-3 + 297, 1, -95.8 );

setRotateKey( spep_0-3 + 298, 1, 0 );
setRotateKey( spep_0-3 + 332, 1, 0 );

--SE
--悟天飛んでくる
SE006 = playSe( spep_0 + 92, 1182 );
setSeVolumeByWorkId( spep_0 + 92, SE006, 112 );
SE007 = playSe( spep_0 + 92, 1183 );
stopSe( spep_0 + 176, SE007, 10 );
SE008 = playSe( spep_0 + 92, 9 );

--タックル
SE009 = playSe( spep_0 + 134, 1009 );
SE010 = playSe( spep_0 + 136, 1187 );
setSeVolumeByWorkId( spep_0 + 136, SE010, 46 );
stopSe( spep_0 + 148, SE010, 40 );
SE011 = playSe( spep_0 + 136, 1110 );
setSeVolumeByWorkId( spep_0 + 136, SE011, 3 );

--地面へ
SE012 = playSe( spep_0 + 172, 1159 );
setSeVolumeByWorkId( spep_0 + 172, SE012, 81 );
stopSe( spep_0 + 274, SE012, 36 );

--ジャンプ
SE013 = playSe( spep_0 + 190, 44 );
setSeVolumeByWorkId( spep_0 + 190, SE013, 112 );
setPitch( spep_0 + 190, SE013, 200 );
setTimeStretch( SE013, 1.13, 10, 1 );
stopSe( spep_0 + 214, SE013, 30 );

--蹴りふりかぶり
SE014 = playSe( spep_0 + 242, 1004 );

--蹴り
SE015 = playSe( spep_0 + 272, 1001 );
setSeVolumeByWorkId( spep_0 + 272, SE015, 55 );
SE016 = playSe( spep_0 + 274, 1120 );
setSeVolumeByWorkId( spep_0 + 274, SE016, 89 );

--敵吹っ飛ぶ
SE017 = playSe( spep_0 + 296, 1027 );
setSeVolumeByWorkId( spep_0 + 296, SE017, 65 );

--白フェード
--entryFade( spep_0 + 130, 0, 2, 2, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 330;
------------------------------------------------------
-- かめかめ波構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_1 + 142, tame, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 142, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 142, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +32;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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

--SE
--構える
SE018 = playSe( spep_1 + 0, 1003 );

--かめはめ波溜め
SE019 = playSe( spep_1 + 18, 1131 );
SE020 = playSe( spep_1 + 18, 1132 );

--顔カットイン
SE021 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 142, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 136, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 142;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_2 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_2 + 2, SE020, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.05, 1.05 );
setEffScaleKey( spep_3 + 290, finish_f, 1.05, 1.05 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 290, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 116, finish_f, 255 );
setEffAlphaKey( spep_3 + 117, finish_f, 0 );
setEffAlphaKey( spep_3 + 118, finish_f, 0 );
setEffAlphaKey( spep_3 + 290, finish_f, 0 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 290, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 290, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 290, finish_b, 255 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f2, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_f2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 290, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f2, 0 );
setEffRotateKey( spep_3 + 290, finish_f2, 0 );
setEffAlphaKey( spep_3 + 0, finish_f2, 0 );
setEffAlphaKey( spep_3 + 116, finish_f2, 0 );
setEffAlphaKey( spep_3 + 117, finish_f2, 255 );
setEffAlphaKey( spep_3 + 118, finish_f2, 255 );
setEffAlphaKey( spep_3 + 290, finish_f2, 255 );

--敵の動き
setDisp( spep_3-3 + 80, 1, 1);
setDisp( spep_3-3 + 138, 1, 0);

changeAnime( spep_3-3 + 80, 1, 105);

setBlendColor(spep_3-3 + 120,1,3,0,0,0,1);
setBlendColor(spep_3 + 138,1,3,0,0,0,1);
setBlendColor(spep_3 + 140,1,3,0,0,0,0);

setMoveKey( spep_3-3 + 80, 1, -669.8, 97.1 , 0 );
setMoveKey( spep_3-3 + 82, 1, -523.3, 90.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, -384, 83.5 , 0 );
setMoveKey( spep_3-3 + 86, 1, -252, 77 , 0 );
setMoveKey( spep_3-3 + 88, 1, -127.2, 70.8 , 0 );
setMoveKey( spep_3-3 + 90, 1, -9.6, 64.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 5.5, 62.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 20, 60 , 0 );
setMoveKey( spep_3-3 + 96, 1, 29.3, 59.4 , 0 );
setMoveKey( spep_3-3 + 98, 1, 38.5, 58.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, 47.5, 58.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 56.5, 57.5 , 0 );
setMoveKey( spep_3-3 + 104, 1, 65.3, 56.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 74.1, 56.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 82.8, 55.6 , 0 );
setMoveKey( spep_3-3 + 110, 1, 91.3, 55 , 0 );
setMoveKey( spep_3-3 + 112, 1, 99.8, 54.3 , 0 );
setMoveKey( spep_3-3 + 114, 1, 108.1, 53.7 , 0 );
setMoveKey( spep_3-3 + 116, 1, 116.4, 53.1 , 0 );
setMoveKey( spep_3-3 + 118, 1, 124.6, 52.5 , 0 );
setMoveKey( spep_3-3 + 120, 1, 134, 51.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 217.7, 50.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 290.7, 50.1 , 0 );
setMoveKey( spep_3-3 + 126, 1, 353.2, 49.3 , 0 );
setMoveKey( spep_3-3 + 128, 1, 405.3, 48.7 , 0 );
setMoveKey( spep_3-3 + 130, 1, 447.3, 48.1 , 0 );
setMoveKey( spep_3-3 + 132, 1, 479.4, 47.5 , 0 );
setMoveKey( spep_3-3 + 134, 1, 501.8, 47.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, 514.7, 46.7 , 0 );
setMoveKey( spep_3-3 + 138, 1, 518.2, 46.3 , 0 );


setScaleKey( spep_3-3 + 80, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 84, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 86, 1, 1.86, 1.86 );
setScaleKey( spep_3-3 + 88, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 90, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 92, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 94, 1, 1.02, 1.02 );
setScaleKey( spep_3-3 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 98, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 100, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 102, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 104, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 106, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 108, 1, 0.79, 0.79 );
setScaleKey( spep_3-3 + 110, 1, 0.76, 0.76 );
setScaleKey( spep_3-3 + 112, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 114, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 120, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 122, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 124, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 126, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 130, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 132, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 134, 1, 0.06, 0.06 );
setScaleKey( spep_3-3 + 136, 1, 0.04, 0.04 );
setScaleKey( spep_3-3 + 138, 1, 0.03, 0.03 );

setRotateKey( spep_3-3 + 80, 1, 52.6 );
setRotateKey( spep_3-3 + 82, 1, 52.5 );
setRotateKey( spep_3-3 + 84, 1, 52.4 );
setRotateKey( spep_3-3 + 86, 1, 52.3 );
setRotateKey( spep_3-3 + 88, 1, 52.2 );
setRotateKey( spep_3-3 + 90, 1, 52.1 );
setRotateKey( spep_3-3 + 98, 1, 52.1 );
setRotateKey( spep_3-3 + 100, 1, 52 );
setRotateKey( spep_3-3 + 112, 1, 52 );
setRotateKey( spep_3-3 + 114, 1, 51.9 );
setRotateKey( spep_3-3 + 120, 1, 51.9 );
setRotateKey( spep_3-3 + 122, 1, 54.4 );
setRotateKey( spep_3-3 + 124, 1, 56.6 );
setRotateKey( spep_3-3 + 126, 1, 58.6 );
setRotateKey( spep_3-3 + 128, 1, 60.2 );
setRotateKey( spep_3-3 + 130, 1, 61.5 );
setRotateKey( spep_3-3 + 132, 1, 62.6 );
setRotateKey( spep_3-3 + 134, 1, 63.3 );
setRotateKey( spep_3-3 + 136, 1, 63.7 );
setRotateKey( spep_3-3 + 138, 1, 63.9 );

--SE
--かめはめ波発射
SE023 = playSe( spep_3 + 28, 1027 );
SE024 = playSe( spep_3 + 28, 1022 );

--気弾飲み込まれる
SE025 = playSe( spep_3 + 108, 1021 ,"",0.6);

--気弾飛んでいく
SE026 = playSe( spep_3 + 132, 1202 ,"",0.6);

--爆発
SE027 = playSe( spep_3 + 180, 1024 );
SE028 = playSe( spep_3 + 182, 1159 );
setSeVolumeByWorkId( spep_3 + 182, SE028, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 280, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 180 );
endPhase( spep_3 + 280 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- かめはめ波発射〜爆発
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 330, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 330, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_f, 0 );
setEffRotateKey( spep_0 + 330, fighting_f, 0 );
setEffAlphaKey( spep_0 + 0, fighting_f, 255 );
setEffAlphaKey( spep_0 + 328, fighting_f, 255 );
setEffAlphaKey( spep_0 + 329, fighting_f, 255 );
setEffAlphaKey( spep_0 + 330, fighting_f, 0 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 330, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 330, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fighting_b, 0 );
setEffRotateKey( spep_0 + 330, fighting_b, 0 );
setEffAlphaKey( spep_0 + 0, fighting_b, 255 );
setEffAlphaKey( spep_0 + 328, fighting_b, 255 );
setEffAlphaKey( spep_0 + 329, fighting_b, 255 );
setEffAlphaKey( spep_0 + 330, fighting_b, 0 );

--SE
--オーラ
SE001 = playSe( spep_0 + 0, 1036 );
setSeVolumeByWorkId( spep_0 + 0, SE001, 79 );
SE002 = playSe( spep_0 + 24, 1036 );
setSeVolumeByWorkId( spep_0 + 24, SE002, 79 );

--悟天上空へ
SE003 = playSe( spep_0 + 40, 1116 );
setSeVolumeByWorkId( spep_0 + 40, SE003, 58 );
stopSe( spep_0 + 66, SE003, 24 );
SE004 = playSe( spep_0 + 40, 1167 );
setSeVolumeByWorkId( spep_0 + 40, SE004, 38 );

--オーラ
SE005 = playSe( spep_0 + 48, 1036 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 332, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 90 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
  
    pauseAll( SP_dodge, 67);

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

--敵の動き
setDisp( spep_0-3 + 110, 1, 1);
setDisp( spep_0-2 + 332, 1, 0);

changeAnime( spep_0-3 + 110, 1, 104);
changeAnime( spep_0-3 + 134, 1, 108);
changeAnime( spep_0-3 + 192, 1, 106);
changeAnime( spep_0-3 + 274, 1, 107);
changeAnime( spep_0-3 + 298, 1, 105);


setMoveKey( spep_0-3 + 110,1, 531.6, -798 , 0 );
setMoveKey( spep_0-3 + 112,1, 487.7, -730.2 , 0 );
setMoveKey( spep_0-3 + 114,1, 446.4, -666.6 , 0 );
setMoveKey( spep_0-3 + 116,1, 407.9, -607.3 , 0 );
setMoveKey( spep_0-3 + 118,1, 372.1, -552.2 , 0 );
setMoveKey( spep_0-3 + 120,1, 339.1, -501.3 , 0 );
setMoveKey( spep_0-3 + 122,1, 308.8, -454.7 , 0 );
setMoveKey( spep_0-3 + 124,1, 281.3, -412.3 , 0 );
setMoveKey( spep_0-3 + 126,1, 256.5, -374.1 , 0 );
setMoveKey( spep_0-3 + 128,1, 234.5, -340.2 , 0 );
setMoveKey( spep_0-3 + 130,1, 215.2, -310.5 , 0 );
setMoveKey( spep_0-3 + 132,1, 198.7, -285 , 0 );
setMoveKey( spep_0-3 + 133,1, 198.7, -285 , 0 );

setMoveKey( spep_0-3 + 134, 1, 20.5, -33.8 , 0 );
setMoveKey( spep_0-3 + 136, 1, 30.7, -10.4 , 0 );
setMoveKey( spep_0-3 + 138, 1, 21.6, -25.4 , 0 );
setMoveKey( spep_0-3 + 140, 1, 31.8, -21.2 , 0 );
setMoveKey( spep_0-3 + 142, 1, 13.1, -13.8 , 0 );
setMoveKey( spep_0-3 + 144, 1, 32.9, -32 , 0 );
setMoveKey( spep_0-3 + 146, 1, 32.2, -51.9 , 0 );
setMoveKey( spep_0-3 + 148, 1, 38, -52.5 , 0 );
setMoveKey( spep_0-3 + 150, 1, 27.7, -72.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 43.1, -73 , 0 );
setMoveKey( spep_0-3 + 154, 1, 45.6, -83.2 , 0 );
setMoveKey( spep_0-3 + 156, 1, 48.2, -93.5 , 0 );
setMoveKey( spep_0-3 + 158, 1, 50.7, -103.7 , 0 );
setMoveKey( spep_0-3 + 160, 1, 53.3, -114 , 0 );
setMoveKey( spep_0-3 + 162, 1, 55.8, -124.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 58.3, -134.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, 60.9, -144.7 , 0 );
setMoveKey( spep_0-3 + 168, 1, 63.4, -154.9 , 0 );
setMoveKey( spep_0-3 + 170, 1, 66, -165.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 68.5, -175.4 , 0 );
setMoveKey( spep_0-3 + 174, 1, 68.4, -201.8 , 0 );
setMoveKey( spep_0-3 + 176, 1, 74.8, -196.2 , 0 );
setMoveKey( spep_0-3 + 178, 1, 68.3, -213 , 0 );
setMoveKey( spep_0-3 + 180, 1, 78.3, -206.4 , 0 );
setMoveKey( spep_0-3 + 182, 1, 72.4, -196.6 , 0 );
setMoveKey( spep_0-3 + 184, 1, 79.2, -206 , 0 );
setMoveKey( spep_0-3 + 186, 1, 76.4, -218.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 80.1, -205.6 , 0 );
setMoveKey( spep_0-3 + 190, 1, 70.9, -211.8 , 0 );
setMoveKey( spep_0-3 + 191, 1, 70.9, -211.8 , 0 );

setMoveKey( spep_0-3 + 192, 1, -15.4, -108.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, -64.2, -101.9 , 0 );
setMoveKey( spep_0-3 + 196, 1, -102.9, -99.2 , 0 );
setMoveKey( spep_0-3 + 198, 1, -139.8, -124.1 , 0 );
setMoveKey( spep_0-3 + 200, 1, -147, -124.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, -153.9, -126.2 , 0 );
setMoveKey( spep_0-3 + 204, 1, -160.4, -128.6 , 0 );
setMoveKey( spep_0-3 + 206, 1, -166.5, -131.8 , 0 );
setMoveKey( spep_0-3 + 208, 1, -172.1, -135.7 , 0 );
setMoveKey( spep_0-3 + 210, 1, -177.4, -140.6 , 0 );
setMoveKey( spep_0-3 + 212, 1, -182.3, -146.3 , 0 );
setMoveKey( spep_0-3 + 214, 1, -186.9, -153.1 , 0 );
setMoveKey( spep_0-3 + 216, 1, -194.2, -166.3 , 0 );
setMoveKey( spep_0-3 + 218, 1, -201.4, -179.4 , 0 );
setMoveKey( spep_0-3 + 220, 1, -211.3, -191.8 , 0 );
setMoveKey( spep_0-3 + 222, 1, -221.3, -204.2 , 0 );
setMoveKey( spep_0-3 + 224, 1, -231.4, -216.7 , 0 );
setMoveKey( spep_0-3 + 226, 1, -241.4, -229.2 , 0 );
setMoveKey( spep_0-3 + 228, 1, -251.5, -241.7 , 0 );
setMoveKey( spep_0-3 + 230, 1, -261.6, -254.1 , 0 );
setMoveKey( spep_0-3 + 232, 1, -271.6, -266.6 , 0 );
setMoveKey( spep_0-3 + 234, 1, -281.6, -279 , 0 );
setMoveKey( spep_0-3 + 236, 1, -291.6, -291.4 , 0 );
setMoveKey( spep_0-3 + 238, 1, -301.4, -303.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -311.2, -316.1 , 0 );
setMoveKey( spep_0-3 + 242, 1, -334, -340 , 0 );
setMoveKey( spep_0-3 + 244, 1, -357.7, -364.5 , 0 );
setMoveKey( spep_0-3 + 246, 1, -382.4, -390.1 , 0 );
setMoveKey( spep_0-3 + 248, 1, -408.3, -416.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -435.5, -444.4 , 0 );
setMoveKey( spep_0-3 + 252, 1, -463.7, -472.9 , 0 );
setMoveKey( spep_0-3 + 254, 1, -493.2, -502.5 , 0 );
setMoveKey( spep_0-3 + 256, 1, -524.1, -533.2 , 0 );
setMoveKey( spep_0-3 + 258, 1, -556.2, -564.7 , 0 );
setMoveKey( spep_0-3 + 260, 1, -589.4, -597.6 , 0 );
setMoveKey( spep_0-3 + 262, 1, -623.9, -631.2 , 0 );
setMoveKey( spep_0-3 + 264, 1, -659.7, -665.9 , 0 );
setMoveKey( spep_0-3 + 266, 1, -696.9, -701.7 , 0 );
setMoveKey( spep_0-3 + 268, 1, -735.1, -738.4 , 0 );
setMoveKey( spep_0-3 + 270, 1, -774.7, -776.3 , 0 );
setMoveKey( spep_0-3 + 272, 1, -814.9, -815 , 0 );
setMoveKey( spep_0-3 + 273, 1, -814.9, -815 , 0 );

setMoveKey( spep_0-3 + 274, 1, -119.5, -391.3 , 0 );
setMoveKey( spep_0-3 + 276, 1, -110.8, -366.4 , 0 );
setMoveKey( spep_0-3 + 278, 1, -118.1, -370.3 , 0 );
setMoveKey( spep_0-3 + 280, 1, -99.9, -361.3 , 0 );
setMoveKey( spep_0-3 + 282, 1, -107.2, -339.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, -89, -356.2 , 0 );
setMoveKey( spep_0-3 + 286, 1, -89.9, -369.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, -78.1, -351.1 , 0 );
setMoveKey( spep_0-3 + 290, 1, -88.6, -355 , 0 );
setMoveKey( spep_0-3 + 292, 1, -67.2, -346 , 0 );
setMoveKey( spep_0-3 + 294, 1, -68.1, -353.1 , 0 );
setMoveKey( spep_0-3 + 296, 1, -56.3, -340.9 , 0 );
setMoveKey( spep_0-3 + 297, 1, -56.3, -340.9 , 0 );

setMoveKey( spep_0-3 + 298, 1, 56.1, -16.1 , 0 );
setMoveKey( spep_0-3 + 300, 1, 44.2, 16.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, 32.3, 49.3 , 0 );
setMoveKey( spep_0-3 + 304, 1, 20.5, 82 , 0 );
setMoveKey( spep_0-3 + 306, 1, 8.6, 114.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, 8.3, 115.2 , 0 );
setMoveKey( spep_0-3 + 310, 1, 8.1, 115.7 , 0 );
setMoveKey( spep_0-3 + 312, 1, 7.9, 116.3 , 0 );
setMoveKey( spep_0-3 + 314, 1, 7.6, 116.8 , 0 );
setMoveKey( spep_0-3 + 316, 1, 7.4, 117.4 , 0 );
setMoveKey( spep_0-3 + 318, 1, 7.2, 117.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, 6.9, 118.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, 6.7, 119 , 0 );
setMoveKey( spep_0-3 + 324, 1, 6.5, 119.6 , 0 );
setMoveKey( spep_0-3 + 326, 1, 6.3, 120.2 , 0 );
setMoveKey( spep_0-3 + 328, 1, 6, 120.7 , 0 );
setMoveKey( spep_0-3 + 330, 1, 5.8, 121.3 , 0 );
setMoveKey( spep_0-3 + 332, 1, 5.6, 121.8 , 0 );


setScaleKey( spep_0-3 + 110,1, 8.54, 8.54 );
setScaleKey( spep_0-3 + 112,1, 8.05, 8.05 );
setScaleKey( spep_0-3 + 114,1, 7.6, 7.6 );
setScaleKey( spep_0-3 + 116,1, 7.18, 7.18 );
setScaleKey( spep_0-3 + 118,1, 6.78, 6.78 );
setScaleKey( spep_0-3 + 120,1, 6.42, 6.42 );
setScaleKey( spep_0-3 + 122,1, 6.09, 6.09 );
setScaleKey( spep_0-3 + 124,1, 5.79, 5.79 );
setScaleKey( spep_0-3 + 126,1, 5.51, 5.51 );
setScaleKey( spep_0-3 + 128,1, 5.27, 5.27 );
setScaleKey( spep_0-3 + 130,1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 132,1, 4.88, 4.88 );
setScaleKey( spep_0-3 + 133,1, 4.88, 4.88 );

setScaleKey( spep_0-3 + 134, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 191, 1, 1.97, 1.97 );

setScaleKey( spep_0-3 + 192, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 194, 1, 2.12, 2.12 );
setScaleKey( spep_0-3 + 196, 1, 2.23, 2.23 );
setScaleKey( spep_0-3 + 198, 1, 2.34, 2.34 );
setScaleKey( spep_0-3 + 200, 1, 2.36, 2.36 );
setScaleKey( spep_0-3 + 202, 1, 2.37, 2.37 );
setScaleKey( spep_0-3 + 204, 1, 2.39, 2.39 );
setScaleKey( spep_0-3 + 206, 1, 2.41, 2.41 );
setScaleKey( spep_0-3 + 208, 1, 2.43, 2.43 );
setScaleKey( spep_0-3 + 210, 1, 2.44, 2.44 );
setScaleKey( spep_0-3 + 212, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 214, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 216, 1, 2.49, 2.49 );
setScaleKey( spep_0-3 + 218, 1, 2.51, 2.51 );
setScaleKey( spep_0-3 + 220, 1, 2.59, 2.59 );
setScaleKey( spep_0-3 + 222, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 224, 1, 2.74, 2.74 );
setScaleKey( spep_0-3 + 226, 1, 2.82, 2.82 );
setScaleKey( spep_0-3 + 228, 1, 2.9, 2.9 );
setScaleKey( spep_0-3 + 230, 1, 2.98, 2.98 );
setScaleKey( spep_0-3 + 232, 1, 3.06, 3.06 );
setScaleKey( spep_0-3 + 234, 1, 3.14, 3.14 );
setScaleKey( spep_0-3 + 236, 1, 3.21, 3.21 );
setScaleKey( spep_0-3 + 238, 1, 3.29, 3.29 );
setScaleKey( spep_0-3 + 240, 1, 3.37, 3.37 );
setScaleKey( spep_0-3 + 242, 1, 3.54, 3.54 );
setScaleKey( spep_0-3 + 244, 1, 3.72, 3.72 );
setScaleKey( spep_0-3 + 246, 1, 3.95, 3.95 );
setScaleKey( spep_0-3 + 248, 1, 4.18, 4.18 );
setScaleKey( spep_0-3 + 250, 1, 4.42, 4.42 );
setScaleKey( spep_0-3 + 252, 1, 4.67, 4.67 );
setScaleKey( spep_0-3 + 254, 1, 4.93, 4.93 );
setScaleKey( spep_0-3 + 256, 1, 5.19, 5.19 );
setScaleKey( spep_0-3 + 258, 1, 5.46, 5.46 );
setScaleKey( spep_0-3 + 260, 1, 5.74, 5.74 );
setScaleKey( spep_0-3 + 262, 1, 6.02, 6.02 );
setScaleKey( spep_0-3 + 264, 1, 6.31, 6.31 );
setScaleKey( spep_0-3 + 266, 1, 6.61, 6.61 );
setScaleKey( spep_0-3 + 268, 1, 6.92, 6.92 );
setScaleKey( spep_0-3 + 270, 1, 7.23, 7.23 );
setScaleKey( spep_0-3 + 272, 1, 7.55, 7.55 );
setScaleKey( spep_0-3 + 273, 1, 7.55, 7.55 );

setScaleKey( spep_0-3 + 274, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 297, 1, 2.92, 2.92 );

setScaleKey( spep_0-3 + 298, 1, 5.06, 5.06 );
setScaleKey( spep_0-3 + 300, 1, 3.99, 3.99 );
setScaleKey( spep_0-3 + 302, 1, 2.92, 2.92 );
setScaleKey( spep_0-3 + 304, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 306, 1, 0.78, 0.78 );
setScaleKey( spep_0-3 + 308, 1, 0.75, 0.75 );
setScaleKey( spep_0-3 + 310, 1, 0.72, 0.72 );
setScaleKey( spep_0-3 + 312, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 314, 1, 0.66, 0.66 );
setScaleKey( spep_0-3 + 316, 1, 0.63, 0.63 );
setScaleKey( spep_0-3 + 318, 1, 0.6, 0.6 );
setScaleKey( spep_0-3 + 320, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 322, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 324, 1, 0.51, 0.51 );
setScaleKey( spep_0-3 + 326, 1, 0.48, 0.48 );
setScaleKey( spep_0-3 + 328, 1, 0.45, 0.45 );
setScaleKey( spep_0-3 + 330, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 332, 1, 0.39, 0.39 );

setRotateKey( spep_0-3 + 110,1, 0 );
setRotateKey( spep_0-3 + 133,1, 0 );

setRotateKey( spep_0-3 + 134, 1, 60.7 );
setRotateKey( spep_0-3 + 191, 1, 60.7 );


setRotateKey( spep_0-3 + 192, 1, 13 );
setRotateKey( spep_0-3 + 194, 1, 4.7 );
setRotateKey( spep_0-3 + 196, 1, -1.6 );
setRotateKey( spep_0-3 + 198, 1, -6.1 );
setRotateKey( spep_0-3 + 200, 1, -5.6 );
setRotateKey( spep_0-3 + 202, 1, -5.1 );
setRotateKey( spep_0-3 + 204, 1, -4.6 );
setRotateKey( spep_0-3 + 206, 1, -4.2 );
setRotateKey( spep_0-3 + 208, 1, -3.9 );
setRotateKey( spep_0-3 + 210, 1, -3.6 );
setRotateKey( spep_0-3 + 212, 1, -3.4 );
setRotateKey( spep_0-3 + 214, 1, -3.2 );
setRotateKey( spep_0-3 + 216, 1, -3.4 );
setRotateKey( spep_0-3 + 218, 1, -3.5 );
setRotateKey( spep_0-3 + 220, 1, -3.7 );
setRotateKey( spep_0-3 + 222, 1, -3.9 );
setRotateKey( spep_0-3 + 224, 1, -4 );
setRotateKey( spep_0-3 + 226, 1, -4.2 );
setRotateKey( spep_0-3 + 228, 1, -4.3 );
setRotateKey( spep_0-3 + 230, 1, -4.5 );
setRotateKey( spep_0-3 + 232, 1, -4.6 );
setRotateKey( spep_0-3 + 234, 1, -4.7 );
setRotateKey( spep_0-3 + 236, 1, -4.8 );
setRotateKey( spep_0-3 + 238, 1, -4.9 );
setRotateKey( spep_0-3 + 240, 1, -5 );
setRotateKey( spep_0-3 + 242, 1, -4.9 );
setRotateKey( spep_0-3 + 244, 1, -4.8 );
setRotateKey( spep_0-3 + 246, 1, -4.7 );
setRotateKey( spep_0-3 + 248, 1, -4.6 );
setRotateKey( spep_0-3 + 250, 1, -4.5 );
setRotateKey( spep_0-3 + 252, 1, -4.5 );
setRotateKey( spep_0-3 + 254, 1, -4.4 );
setRotateKey( spep_0-3 + 256, 1, -4.3 );
setRotateKey( spep_0-3 + 258, 1, -4.2 );
setRotateKey( spep_0-3 + 260, 1, -4.1 );
setRotateKey( spep_0-3 + 262, 1, -4 );
setRotateKey( spep_0-3 + 264, 1, -3.9 );
setRotateKey( spep_0-3 + 266, 1, -3.8 );
setRotateKey( spep_0-3 + 268, 1, -3.7 );
setRotateKey( spep_0-3 + 270, 1, -3.6 );
setRotateKey( spep_0-3 + 272, 1, -3.5 );
setRotateKey( spep_0-3 + 273, 1, -3.5 );

setRotateKey( spep_0-3 + 274, 1, -104.2 );
setRotateKey( spep_0-3 + 276, 1, -103.5 );
setRotateKey( spep_0-3 + 278, 1, -102.7 );
setRotateKey( spep_0-3 + 280, 1, -101.9 );
setRotateKey( spep_0-3 + 282, 1, -101.1 );
setRotateKey( spep_0-3 + 284, 1, -100.4 );
setRotateKey( spep_0-3 + 286, 1, -99.6 );
setRotateKey( spep_0-3 + 288, 1, -98.8 );
setRotateKey( spep_0-3 + 290, 1, -98.1 );
setRotateKey( spep_0-3 + 292, 1, -97.3 );
setRotateKey( spep_0-3 + 294, 1, -96.5 );
setRotateKey( spep_0-3 + 296, 1, -95.8 );
setRotateKey( spep_0-3 + 297, 1, -95.8 );

setRotateKey( spep_0-3 + 298, 1, 0 );
setRotateKey( spep_0-3 + 332, 1, 0 );

--SE
--悟天飛んでくる
SE006 = playSe( spep_0 + 92, 1182 );
setSeVolumeByWorkId( spep_0 + 92, SE006, 112 );
SE007 = playSe( spep_0 + 92, 1183 );
stopSe( spep_0 + 176, SE007, 10 );
SE008 = playSe( spep_0 + 92, 9 );

--タックル
SE009 = playSe( spep_0 + 134, 1009 );
SE010 = playSe( spep_0 + 136, 1187 );
setSeVolumeByWorkId( spep_0 + 136, SE010, 46 );
stopSe( spep_0 + 148, SE010, 40 );
SE011 = playSe( spep_0 + 136, 1110 );
setSeVolumeByWorkId( spep_0 + 136, SE011, 3 );

--地面へ
SE012 = playSe( spep_0 + 172, 1159 );
setSeVolumeByWorkId( spep_0 + 172, SE012, 81 );
stopSe( spep_0 + 274, SE012, 36 );

--ジャンプ
SE013 = playSe( spep_0 + 190, 44 );
setSeVolumeByWorkId( spep_0 + 190, SE013, 112 );
setPitch( spep_0 + 190, SE013, 200 );
setTimeStretch( SE013, 1.13, 10, 1 );
stopSe( spep_0 + 214, SE013, 30 );

--蹴りふりかぶり
SE014 = playSe( spep_0 + 242, 1004 );

--蹴り
SE015 = playSe( spep_0 + 272, 1001 );
setSeVolumeByWorkId( spep_0 + 272, SE015, 55 );
SE016 = playSe( spep_0 + 274, 1120 );
setSeVolumeByWorkId( spep_0 + 274, SE016, 89 );

--敵吹っ飛ぶ
SE017 = playSe( spep_0 + 296, 1027 );
setSeVolumeByWorkId( spep_0 + 296, SE017, 65 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 330;
------------------------------------------------------
-- かめかめ波構え
------------------------------------------------------
-- ** エフェクト等 ** --
tame = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_1 + 142, tame, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_1 + 142, tame, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, tame, 0 );
setEffRotateKey( spep_1 + 142, tame, 0 );
setEffAlphaKey( spep_1 + 0, tame, 255 );
setEffAlphaKey( spep_1 + 142, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +32;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 0, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  0,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  510);

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

--SE
--構える
SE018 = playSe( spep_1 + 0, 1003 );

--かめはめ波溜め
SE019 = playSe( spep_1 + 18, 1131 );
SE020 = playSe( spep_1 + 18, 1132 );

--顔カットイン
SE021 = playSe( spep_x + 12, 1018 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 142, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 136, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 142;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 90, shuchusen, 0 );
setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

--かめはめ波溜め
stopSe( spep_2 + 2, SE020, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- 発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f, 1.05, 1.05 );
setEffScaleKey( spep_3 + 290, finish_f, 1.05, 1.05 );
setEffRotateKey( spep_3 + 0, finish_f, 0 );
setEffRotateKey( spep_3 + 290, finish_f, 0 );
setEffAlphaKey( spep_3 + 0, finish_f, 255 );
setEffAlphaKey( spep_3 + 116, finish_f, 255 );
setEffAlphaKey( spep_3 + 117, finish_f, 0 );
setEffAlphaKey( spep_3 + 118, finish_f, 0 );
setEffAlphaKey( spep_3 + 290, finish_f, 0 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 290, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_b, 0 );
setEffRotateKey( spep_3 + 290, finish_b, 0 );
setEffAlphaKey( spep_3 + 0, finish_b, 255 );
setEffAlphaKey( spep_3 + 290, finish_b, 255 );

-- ** エフェクト等 ** --
finish_f2 = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, finish_f2, 0, 0, 0 );
setEffMoveKey( spep_3 + 290, finish_f2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, finish_f2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 290, finish_f2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, finish_f2, 0 );
setEffRotateKey( spep_3 + 290, finish_f2, 0 );
setEffAlphaKey( spep_3 + 0, finish_f2, 0 );
setEffAlphaKey( spep_3 + 116, finish_f2, 0 );
setEffAlphaKey( spep_3 + 117, finish_f2, 255 );
setEffAlphaKey( spep_3 + 118, finish_f2, 255 );
setEffAlphaKey( spep_3 + 290, finish_f2, 255 );

--敵の動き
setDisp( spep_3-3 + 80, 1, 1);
setDisp( spep_3-3 + 138, 1, 0);

changeAnime( spep_3-3 + 80, 1, 105);

setBlendColor(spep_3-3 + 120,1,3,0,0,0,1);
setBlendColor(spep_3 + 138,1,3,0,0,0,1);
setBlendColor(spep_3 + 140,1,3,0,0,0,0);

setMoveKey( spep_3-3 + 80, 1, -669.8, 97.1 , 0 );
setMoveKey( spep_3-3 + 82, 1, -523.3, 90.2 , 0 );
setMoveKey( spep_3-3 + 84, 1, -384, 83.5 , 0 );
setMoveKey( spep_3-3 + 86, 1, -252, 77 , 0 );
setMoveKey( spep_3-3 + 88, 1, -127.2, 70.8 , 0 );
setMoveKey( spep_3-3 + 90, 1, -9.6, 64.9 , 0 );
setMoveKey( spep_3-3 + 92, 1, 5.5, 62.5 , 0 );
setMoveKey( spep_3-3 + 94, 1, 20, 60 , 0 );
setMoveKey( spep_3-3 + 96, 1, 29.3, 59.4 , 0 );
setMoveKey( spep_3-3 + 98, 1, 38.5, 58.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, 47.5, 58.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 56.5, 57.5 , 0 );
setMoveKey( spep_3-3 + 104, 1, 65.3, 56.8 , 0 );
setMoveKey( spep_3-3 + 106, 1, 74.1, 56.2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 82.8, 55.6 , 0 );
setMoveKey( spep_3-3 + 110, 1, 91.3, 55 , 0 );
setMoveKey( spep_3-3 + 112, 1, 99.8, 54.3 , 0 );
setMoveKey( spep_3-3 + 114, 1, 108.1, 53.7 , 0 );
setMoveKey( spep_3-3 + 116, 1, 116.4, 53.1 , 0 );
setMoveKey( spep_3-3 + 118, 1, 124.6, 52.5 , 0 );
setMoveKey( spep_3-3 + 120, 1, 134, 51.9 , 0 );
setMoveKey( spep_3-3 + 122, 1, 217.7, 50.9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 290.7, 50.1 , 0 );
setMoveKey( spep_3-3 + 126, 1, 353.2, 49.3 , 0 );
setMoveKey( spep_3-3 + 128, 1, 405.3, 48.7 , 0 );
setMoveKey( spep_3-3 + 130, 1, 447.3, 48.1 , 0 );
setMoveKey( spep_3-3 + 132, 1, 479.4, 47.5 , 0 );
setMoveKey( spep_3-3 + 134, 1, 501.8, 47.1 , 0 );
setMoveKey( spep_3-3 + 136, 1, 514.7, 46.7 , 0 );
setMoveKey( spep_3-3 + 138, 1, 518.2, 46.3 , 0 );


setScaleKey( spep_3-3 + 80, 1, 3.07, 3.07 );
setScaleKey( spep_3-3 + 82, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 84, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 86, 1, 1.86, 1.86 );
setScaleKey( spep_3-3 + 88, 1, 1.49, 1.49 );
setScaleKey( spep_3-3 + 90, 1, 1.15, 1.15 );
setScaleKey( spep_3-3 + 92, 1, 1.08, 1.08 );
setScaleKey( spep_3-3 + 94, 1, 1.02, 1.02 );
setScaleKey( spep_3-3 + 96, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 98, 1, 0.95, 0.95 );
setScaleKey( spep_3-3 + 100, 1, 0.92, 0.92 );
setScaleKey( spep_3-3 + 102, 1, 0.88, 0.88 );
setScaleKey( spep_3-3 + 104, 1, 0.85, 0.85 );
setScaleKey( spep_3-3 + 106, 1, 0.82, 0.82 );
setScaleKey( spep_3-3 + 108, 1, 0.79, 0.79 );
setScaleKey( spep_3-3 + 110, 1, 0.76, 0.76 );
setScaleKey( spep_3-3 + 112, 1, 0.72, 0.72 );
setScaleKey( spep_3-3 + 114, 1, 0.69, 0.69 );
setScaleKey( spep_3-3 + 116, 1, 0.66, 0.66 );
setScaleKey( spep_3-3 + 118, 1, 0.63, 0.63 );
setScaleKey( spep_3-3 + 120, 1, 0.48, 0.48 );
setScaleKey( spep_3-3 + 122, 1, 0.39, 0.39 );
setScaleKey( spep_3-3 + 124, 1, 0.3, 0.3 );
setScaleKey( spep_3-3 + 126, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 128, 1, 0.17, 0.17 );
setScaleKey( spep_3-3 + 130, 1, 0.12, 0.12 );
setScaleKey( spep_3-3 + 132, 1, 0.08, 0.08 );
setScaleKey( spep_3-3 + 134, 1, 0.06, 0.06 );
setScaleKey( spep_3-3 + 136, 1, 0.04, 0.04 );
setScaleKey( spep_3-3 + 138, 1, 0.03, 0.03 );

setRotateKey( spep_3-3 + 80, 1, 52.6 );
setRotateKey( spep_3-3 + 82, 1, 52.5 );
setRotateKey( spep_3-3 + 84, 1, 52.4 );
setRotateKey( spep_3-3 + 86, 1, 52.3 );
setRotateKey( spep_3-3 + 88, 1, 52.2 );
setRotateKey( spep_3-3 + 90, 1, 52.1 );
setRotateKey( spep_3-3 + 98, 1, 52.1 );
setRotateKey( spep_3-3 + 100, 1, 52 );
setRotateKey( spep_3-3 + 112, 1, 52 );
setRotateKey( spep_3-3 + 114, 1, 51.9 );
setRotateKey( spep_3-3 + 120, 1, 51.9 );
setRotateKey( spep_3-3 + 122, 1, 54.4 );
setRotateKey( spep_3-3 + 124, 1, 56.6 );
setRotateKey( spep_3-3 + 126, 1, 58.6 );
setRotateKey( spep_3-3 + 128, 1, 60.2 );
setRotateKey( spep_3-3 + 130, 1, 61.5 );
setRotateKey( spep_3-3 + 132, 1, 62.6 );
setRotateKey( spep_3-3 + 134, 1, 63.3 );
setRotateKey( spep_3-3 + 136, 1, 63.7 );
setRotateKey( spep_3-3 + 138, 1, 63.9 );

--SE
--かめはめ波発射
SE023 = playSe( spep_3 + 28, 1027 );
SE024 = playSe( spep_3 + 28, 1022 );

--気弾飲み込まれる
SE025 = playSe( spep_3 + 108, 1021 ,"",0.6);

--気弾飛んでいく
SE026 = playSe( spep_3 + 132, 1202 ,"",0.6);

--爆発
SE027 = playSe( spep_3 + 180, 1024 );
SE028 = playSe( spep_3 + 182, 1159 );
setSeVolumeByWorkId( spep_3 + 182, SE028, 84 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 280, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 180 );
endPhase( spep_3 + 280 );
end
