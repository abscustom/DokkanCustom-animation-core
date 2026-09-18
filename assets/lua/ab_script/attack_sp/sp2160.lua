--1021690:超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_ダブルかめはめ波
--sp_effect_a1_00280
--sp2160

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
SP_01= 156956;-- トランクス悟天登場〜かめはめ波溜め
SP_02= 156957;-- トランクス悟天登場〜かめはめ波溜め
SP_03= 156958;-- かめはめ波発射〜爆発
SP_04= 156959;-- かめはめ波発射〜爆発


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
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 530, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0+6 + 530, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0+6 + 530, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0+6 + 530, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 530, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0+6 + 530, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0+6 + 530, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0+6 + 530, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0+6 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 2, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 4, 1, 0.2, 35.7 , 0 );
setMoveKey( spep_0 + 6, 1, 0.2, 29.5 , 0 );
setMoveKey( spep_0 + 8, 1, 0.2, 23.3 , 0 );
setMoveKey( spep_0 + 10, 1, 0.2, 17.2 , 0 );
setMoveKey( spep_0 + 12, 1, 0.2, 11 , 0 );
setMoveKey( spep_0 + 14, 1, 0.2, 4.8 , 0 );
setMoveKey( spep_0 + 16, 1, 0.2, -1.3 , 0 );
setMoveKey( spep_0 + 18, 1, 0.2, -7.5 , 0 );
setMoveKey( spep_0 + 20, 1, 0.2, -13.7 , 0 );
setMoveKey( spep_0 + 22, 1, 0.2, -19.8 , 0 );
setMoveKey( spep_0 + 24, 1, 0.2, -26 , 0 );
setMoveKey( spep_0 + 26, 1, 0.2, -32.2 , 0 );
setMoveKey( spep_0 + 28, 1, 0.2, -38.3 , 0 );
setMoveKey( spep_0 + 30, 1, 0.2, -44.5 , 0 );
setMoveKey( spep_0 + 32, 1, 0.2, -50.7 , 0 );
setMoveKey( spep_0 + 34, 1, 0.2, -56.8 , 0 );
setMoveKey( spep_0 + 36, 1, 0.2, -63 , 0 );
setMoveKey( spep_0 + 38, 1, 0.2, -69.2 , 0 );
setMoveKey( spep_0 + 40, 1, 0.2, -75.3 , 0 );
setMoveKey( spep_0 + 42, 1, 0.2, -81.5 , 0 );
setMoveKey( spep_0 + 44, 1, 0.2, -87.7 , 0 );
setMoveKey( spep_0 + 46, 1, 0.2, -93.8 , 0 );
setMoveKey( spep_0+6 + 48, 1, 0.2, -100 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0+6 + 48, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0+6 + 48, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0+6 + 52, SE001, 24 );
SE002 = playSe( spep_0 + 0, 44 );

--二人ジャンプ
SE003 = playSe( spep_0 + 52, 1004 );
SE004 = playSe( spep_0 + 52, 1116 );
stopSe( spep_0 + 88, SE004, 26 );
SE005 = playSe( spep_0 + 52, 1241 );
setSeVolumeByWorkId( spep_0 + 52, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 53, SE005, 1.6 );
setSeVolumeByWorkId( spep_0 + 54, SE005, 3.2 );
setSeVolumeByWorkId( spep_0 + 55, SE005, 4.8 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 6.4 );
setSeVolumeByWorkId( spep_0 + 57, SE005, 8 );
setSeVolumeByWorkId( spep_0 + 58, SE005, 9.6 );
setSeVolumeByWorkId( spep_0 + 59, SE005, 11.2 );
setSeVolumeByWorkId( spep_0 + 60, SE005, 12.8 );
setSeVolumeByWorkId( spep_0 + 61, SE005, 14.4 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 16 );
setSeVolumeByWorkId( spep_0 + 63, SE005, 17.6 );
setSeVolumeByWorkId( spep_0 + 64, SE005, 19.2 );
setSeVolumeByWorkId( spep_0 + 65, SE005, 20.8 );
setSeVolumeByWorkId( spep_0 + 66, SE005, 22.4 );
setSeVolumeByWorkId( spep_0 + 67, SE005, 24 );
setSeVolumeByWorkId( spep_0 + 68, SE005, 25.6 );
setSeVolumeByWorkId( spep_0 + 69, SE005, 27.2 );
setSeVolumeByWorkId( spep_0 + 70, SE005, 28.8 );
setSeVolumeByWorkId( spep_0 + 71, SE005, 30.4 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 32 );
setSeVolumeByWorkId( spep_0 + 73, SE005, 33.6 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 35.2 );
setSeVolumeByWorkId( spep_0 + 75, SE005, 36.8 );
setSeVolumeByWorkId( spep_0 + 76, SE005, 39 );
setPitch( spep_0 + 52, SE005, -800 );
setTimeStretch( SE005, 0.47, 10, 1 );
SE006 = playSe( spep_0 + 52, 1183 );
setSeVolumeByWorkId( spep_0 + 52, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 536, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+6 + 90 ; --エンドフェイズのフレーム数を置き換える
    
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
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--敵の動き
setDisp( spep_0+6 -3 + 208, 1, 1 );
setDisp( spep_0+6 -1 + 346, 1, 0 );

changeAnime( spep_0+6 -3 + 208, 1, 108 );
changeAnime( spep_0+6 -3 + 234, 1, 106 );
changeAnime( spep_0+6 -3 + 260, 1, 108 );
changeAnime( spep_0+6 -3 + 286, 1, 106 );
changeAnime( spep_0+6 -3 + 292, 1, 108 );
changeAnime( spep_0+6 -3 + 296, 1, 106 );

setMoveKey( spep_0+6 -3 + 208, 1, -1094.9, 68.1 , 0 );
setMoveKey( spep_0+6 -3 + 210, 1, -481.8, 42.9 , 0 );
setMoveKey( spep_0+6 -3 + 212, 1, -293, 88.2 , 0 );
setMoveKey( spep_0+6 -3 + 214, 1, -162.5, 57.1 , 0 );
setMoveKey( spep_0+6 -3 + 216, 1, -115.7, 63.4 , 0 );
setMoveKey( spep_0+6 -3 + 218, 1, -48.7, 52.3 , 0 );
setMoveKey( spep_0+6 -3 + 220, 1, -36.8, 52.2 , 0 );
setMoveKey( spep_0+6 -3 + 222, 1, -14.1, 52.5 , 0 );
setMoveKey( spep_0+6 -3 + 224, 1, 1.8, 52.9 , 0 );
setMoveKey( spep_0+6 -3 + 226, 1, 13.1, 53.3 , 0 );
setMoveKey( spep_0+6 -3 + 228, 1, 21.3, 53.8 , 0 );
setMoveKey( spep_0+6 -3 + 230, 1, 27.4, 54.3 , 0 );
setMoveKey( spep_0+6 -3 + 232, 1, 32.4, 54.8 , 0 );
setMoveKey( spep_0+6 -3 + 233, 1, 32.4, 54.8 , 0 );

setMoveKey( spep_0+6 -3 + 234, 1, 3.3, 64.8 , 0 );
setMoveKey( spep_0+6 -3 + 236, 1, -7.8, 57.6 , 0 );
setMoveKey( spep_0+6 -3 + 238, 1, 3.8, 61.4 , 0 );
setMoveKey( spep_0+6 -3 + 240, 1, -1, 60.3 , 0 );
setMoveKey( spep_0+6 -3 + 242, 1, 4.3, 62.7 , 0 );
setMoveKey( spep_0+6 -3 + 244, 1, 5.8, 64.1 , 0 );
setMoveKey( spep_0+6 -3 + 246, 1, 7, 65.4 , 0 );
setMoveKey( spep_0+6 -3 + 248, 1, 8.1, 66.5 , 0 );
setMoveKey( spep_0+6 -3 + 250, 1, 9, 67.3 , 0 );
setMoveKey( spep_0+6 -3 + 252, 1, 9.7, 68 , 0 );
setMoveKey( spep_0+6 -3 + 254, 1, 10.1, 68.5 , 0 );
setMoveKey( spep_0+6 -3 + 256, 1, 10.4, 68.8 , 0 );
setMoveKey( spep_0+6 -3 + 258, 1, 10.5, 68.9 , 0 );
setMoveKey( spep_0+6 -3 + 259, 1, 10.5, 68.9 , 0 );

setMoveKey( spep_0+6 -3 + 260, 1, 79.7, -23.8 , 0 );
setMoveKey( spep_0+6 -3 + 262, 1, 82.1, -13 , 0 );
setMoveKey( spep_0+6 -3 + 264, 1, 79.4, -20.1 , 0 );
setMoveKey( spep_0+6 -3 + 266, 1, 74.8, -18 , 0 );
setMoveKey( spep_0+6 -3 + 268, 1, 81.1, -18.7 , 0 );
setMoveKey( spep_0+6 -3 + 270, 1, 73.4, -23.7 , 0 );
setMoveKey( spep_0+6 -3 + 272, 1, 76.2, -24.8 , 0 );
setMoveKey( spep_0+6 -3 + 274, 1, 75.4, -26.3 , 0 );
setMoveKey( spep_0+6 -3 + 276, 1, 74.8, -27.6 , 0 );
setMoveKey( spep_0+6 -3 + 278, 1, 74.3, -28.5 , 0 );
setMoveKey( spep_0+6 -3 + 280, 1, 74, -29.2 , 0 );
setMoveKey( spep_0+6 -3 + 282, 1, 73.8, -29.7 , 0 );
setMoveKey( spep_0+6 -3 + 284, 1, 73.7, -29.8 , 0 );
setMoveKey( spep_0+6 -3 + 285, 1, 73.7, -29.8 , 0 );

setMoveKey( spep_0+6 -3 + 286, 1, 51.9, -6.2 , 0 );
setMoveKey( spep_0+6 -3 + 288, 1, 34.6, -7.3 , 0 );
setMoveKey( spep_0+6 -3 + 290, 1, 42, -5.4 , 0 );
setMoveKey( spep_0+6 -3 + 291, 1, 42, -5.4 , 0 );

setMoveKey( spep_0+6 -3 + 292, 1, 17.9, 15.2 , 0 );
setMoveKey( spep_0+6 -3 + 295, 1, 22.1, 32.9 , 0 );

setMoveKey( spep_0+6 -3 + 296, 1, -45.8, 58.1 , 0 );
setMoveKey( spep_0+6 -3 + 298, 1, -50.4, 48.7 , 0 );
setMoveKey( spep_0+6 -3 + 300, 1, -40.4, 28.7 , 0 );
setMoveKey( spep_0+6 -3 + 302, 1, -50, 50.1 , 0 );
setMoveKey( spep_0+6 -3 + 304, 1, -39, 49.9 , 0 );
setMoveKey( spep_0+6 -3 + 306, 1, -43.3, 62.3 , 0 );
setMoveKey( spep_0+6 -3 + 308, 1, -37.4, 54.7 , 0 );
setMoveKey( spep_0+6 -3 + 310, 1, -39.9, 68.6 , 0 );
setMoveKey( spep_0+6 -3 + 312, 1, -34.7, 66.7 , 0 );
setMoveKey( spep_0+6 -3 + 314, 1, -33.1, 69.4 , 0 );
setMoveKey( spep_0+6 -3 + 316, 1, -31.6, 71.9 , 0 );
setMoveKey( spep_0+6 -3 + 318, 1, -30.2, 74.3 , 0 );
setMoveKey( spep_0+6 -3 + 320, 1, -28.9, 76.5 , 0 );
setMoveKey( spep_0+6 -3 + 322, 1, -27.7, 78.5 , 0 );
setMoveKey( spep_0+6 -3 + 324, 1, -26.5, 80.4 , 0 );
setMoveKey( spep_0+6 -3 + 326, 1, -25.5, 82.1 , 0 );
setMoveKey( spep_0+6 -3 + 328, 1, -24.6, 83.6 , 0 );
setMoveKey( spep_0+6 -3 + 330, 1, -23.7, 85 , 0 );
setMoveKey( spep_0+6 -3 + 332, 1, -23, 86.2 , 0 );
setMoveKey( spep_0+6 -3 + 334, 1, -22.3, 87.2 , 0 );
setMoveKey( spep_0+6 -3 + 336, 1, -21.8, 88.1 , 0 );
setMoveKey( spep_0+6 -3 + 338, 1, -21.4, 88.8 , 0 );
setMoveKey( spep_0+6 -3 + 340, 1, -21, 89.4 , 0 );
setMoveKey( spep_0+6 -3 + 342, 1, -20.8, 89.8 , 0 );
setMoveKey( spep_0+6 -1 + 346, 1, -20.6, 90.1 , 0 );

setScaleKey( spep_0+6 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0+6 -1 + 346, 1, 1.5, 1.5 );

setRotateKey( spep_0+6 -3 + 208, 1, 0 );
setRotateKey( spep_0+6 -3 + 233, 1, 0 );

setRotateKey( spep_0+6 -3 + 234, 1, -30 );
setRotateKey( spep_0+6 -3 + 259, 1, -30 );

setRotateKey( spep_0+6 -3 + 260, 1, -20 );
setRotateKey( spep_0+6 -3 + 285, 1, -20 );


setRotateKey( spep_0+6 -3 + 286, 1, -30 );
setRotateKey( spep_0+6 -3 + 291, 1, -30 );

setRotateKey( spep_0+6 -3 + 292, 1, -20 );
setRotateKey( spep_0+6 -3 + 295, 1, -20 );

setRotateKey( spep_0+6 -3 + 296, 1, -45 );
setRotateKey( spep_0+6 -3 + 298, 1, -44.2 );
setRotateKey( spep_0+6 -3 + 300, 1, -43.5 );
setRotateKey( spep_0+6 -3 + 302, 1, -42.7 );
setRotateKey( spep_0+6 -3 + 304, 1, -42.1 );
setRotateKey( spep_0+6 -3 + 306, 1, -41.4 );
setRotateKey( spep_0+6 -3 + 308, 1, -40.8 );
setRotateKey( spep_0+6 -3 + 310, 1, -40.2 );
setRotateKey( spep_0+6 -3 + 312, 1, -39.6 );
setRotateKey( spep_0+6 -3 + 314, 1, -39.1 );
setRotateKey( spep_0+6 -3 + 316, 1, -38.6 );
setRotateKey( spep_0+6 -3 + 318, 1, -38.1 );
setRotateKey( spep_0+6 -3 + 320, 1, -37.7 );
setRotateKey( spep_0+6 -3 + 322, 1, -37.3 );
setRotateKey( spep_0+6 -3 + 324, 1, -36.9 );
setRotateKey( spep_0+6 -3 + 326, 1, -36.6 );
setRotateKey( spep_0+6 -3 + 328, 1, -36.3 );
setRotateKey( spep_0+6 -3 + 330, 1, -36 );
setRotateKey( spep_0+6 -3 + 332, 1, -35.8 );
setRotateKey( spep_0+6 -3 + 334, 1, -35.6 );
setRotateKey( spep_0+6 -3 + 336, 1, -35.4 );
setRotateKey( spep_0+6 -3 + 338, 1, -35.2 );
setRotateKey( spep_0+6 -3 + 340, 1, -35.1 );
setRotateKey( spep_0+6 -3 + 342, 1, -35.1 );
setRotateKey( spep_0+6 -1 + 346, 1, -35 );

--顔カットインのタイミング指定
spep_x=spep_0+6 +440;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 80, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  80,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  80,  510);

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
--空中クロス
SE007 = playSe( spep_0+6 + 72, 1179 );
setSeVolumeByWorkId( spep_0+6 + 72, SE007, 0 );
setSeVolumeByWorkId( spep_0+6 + 73, SE007, 4 );
setSeVolumeByWorkId( spep_0+6 + 74, SE007, 8 );
setSeVolumeByWorkId( spep_0+6 + 75, SE007, 12 );
setSeVolumeByWorkId( spep_0+6 + 76, SE007, 16 );
setSeVolumeByWorkId( spep_0+6 + 77, SE007, 20 );
setSeVolumeByWorkId( spep_0+6 + 78, SE007, 24 );
setSeVolumeByWorkId( spep_0+6 + 79, SE007, 28 );
setSeVolumeByWorkId( spep_0+6 + 80, SE007, 32 );
setSeVolumeByWorkId( spep_0+6 + 81, SE007, 36 );
setSeVolumeByWorkId( spep_0+6 + 82, SE007, 40 );
setSeVolumeByWorkId( spep_0+6 + 83, SE007, 44 );
setSeVolumeByWorkId( spep_0+6 + 84, SE007, 48 );
setSeVolumeByWorkId( spep_0+6 + 85, SE007, 52 );
setSeVolumeByWorkId( spep_0+6 + 86, SE007, 56 );
setSeVolumeByWorkId( spep_0+6 + 87, SE007, 60 );
setSeVolumeByWorkId( spep_0+6 + 88, SE007, 64 );
setSeVolumeByWorkId( spep_0+6 + 89, SE007, 68 );
setSeVolumeByWorkId( spep_0+6 + 90, SE007, 72 );
setSeVolumeByWorkId( spep_0+6 + 91, SE007, 76 );
setSeVolumeByWorkId( spep_0+6 + 92, SE007, 80 );
setSeVolumeByWorkId( spep_0+6 + 93, SE007, 84 );
setSeVolumeByWorkId( spep_0+6 + 94, SE007, 88 );
setSeVolumeByWorkId( spep_0+6 + 95, SE007, 92 );
setSeVolumeByWorkId( spep_0+6 + 96, SE007, 96 );
setSeVolumeByWorkId( spep_0+6 + 97, SE007, 100 );
setSeVolumeByWorkId( spep_0+6 + 98, SE007, 104 );
setSeVolumeByWorkId( spep_0+6 + 99, SE007, 108 );
setSeVolumeByWorkId( spep_0+6 + 100, SE007, 111 );
setPitch( spep_0+6 + 72, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--悟天アップ
SE008 = playSe( spep_0+6 + 138, 1142 );
setSeVolumeByWorkId( spep_0+6 + 138, SE008, 69 );
setPitch( spep_0+6 + 138, SE008, 100 );
setTimeStretch( SE008, 1.07, 10, 1 );

--トランクスアップ
SE009 = playSe( spep_0+6 + 160, 1142 );
setSeVolumeByWorkId( spep_0+6 + 160, SE009, 75 );
stopSe( spep_0+6 + 174, SE009, 12 );
setPitch( spep_0+6 + 160, SE009, 100 );
setTimeStretch( SE009, 1.07, 10, 1 );

--二人パンチ
SE010 = playSe( spep_0+6 + 176, 1189 );
setSeVolumeByWorkId( spep_0+6 + 176, SE010, 141 );
SE011 = playSe( spep_0+6 + 182, 1110 );
setSeVolumeByWorkId( spep_0+6 + 182, SE011, 83 );
SE012 = playSe( spep_0+6 + 184, 1187 );
setSeVolumeByWorkId( spep_0+6 + 184, SE012, 79 );
SE013 = playSe( spep_0+6 + 184, 1109 );
setSeVolumeByWorkId( spep_0+6 + 186, SE013, 0 );
setSeVolumeByWorkId( spep_0+6 + 187, SE013, 13.4 );
setSeVolumeByWorkId( spep_0+6 + 188, SE013, 26.8 );
setSeVolumeByWorkId( spep_0+6 + 189, SE013, 40.2 );
setSeVolumeByWorkId( spep_0+6 + 190, SE013, 53.6 );
setSeVolumeByWorkId( spep_0+6 + 191, SE013, 67 );
setSeVolumeByWorkId( spep_0+6 + 192, SE013, 80.4 );
setSeVolumeByWorkId( spep_0+6 + 193, SE013, 93.8 );
setSeVolumeByWorkId( spep_0+6 + 194, SE013, 107 );
SE014 = playSe( spep_0+6 + 184, 1190 );
setSeVolumeByWorkId( spep_0+6 + 186, SE014, 79 );

--トランクスパンチ
SE015 = playSe( spep_0+6 + 226, 1189 );
SE016 = playSe( spep_0+6 + 232, 1110 );
SE017 = playSe( spep_0+6 + 232, 1000 );
setSeVolumeByWorkId( spep_0+6 + 232, SE017, 86 );

--悟天キック
SE018 = playSe( spep_0+6 + 252, 1189 );
SE019 = playSe( spep_0+6 + 254, 1001 );
setSeVolumeByWorkId( spep_0+6 + 254, SE019, 68 );
SE020 = playSe( spep_0+6 + 254, 1110 );

--二人でラッシュ
SE021 = playSe( spep_0+6 + 284, 1110 );
stopSe( spep_0+6 + 292, SE021, 14 );
SE022 = playSe( spep_0+6 + 284, 1006,"",0.5  );
setSeVolumeByWorkId( spep_0+6 + 284, SE022, 77 );
SE023 = playSe( spep_0+6 + 292, 1000 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 292, SE023, 68 );
SE024 = playSe( spep_0+6 + 292, 1110 );
stopSe( spep_0+6 + 300, SE024, 14 );
SE025 = playSe( spep_0+6 + 300, 1110 );
SE026 = playSe( spep_0+6 + 300, 1010 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 300, SE026, 64 );

--かめはめ波溜め始まり
SE027 = playSe( spep_0+6 + 346, 1148 );
setSeVolumeByWorkId( spep_0+6 + 346, SE027, 47 );
stopSe( spep_0+6 + 432, SE027, 20 );
SE028 = playSe( spep_0+6 + 346, 1199 );
setSeVolumeByWorkId( spep_0+6 + 346, SE028, 77 );
setPitch( spep_0+6 + 346, SE028, 700 );
setTimeStretch( SE028, 1.47, 10, 1 );

--かめはめ波溜め２
SE029 = playSe( spep_0+6 + 360, 1252 );
setSeVolumeByWorkId( spep_0+6 + 360, SE029, 0 );
setSeVolumeByWorkId( spep_0+6 + 361, SE029, 4.5 );
setSeVolumeByWorkId( spep_0+6 + 362, SE029, 9 );
setSeVolumeByWorkId( spep_0+6 + 363, SE029, 13.5 );
setSeVolumeByWorkId( spep_0+6 + 364, SE029, 18 );
setSeVolumeByWorkId( spep_0+6 + 365, SE029, 22.5 );
setSeVolumeByWorkId( spep_0+6 + 366, SE029, 27 );
setSeVolumeByWorkId( spep_0+6 + 367, SE029, 31.5 );
setSeVolumeByWorkId( spep_0+6 + 368, SE029, 36 );
setSeVolumeByWorkId( spep_0+6 + 369, SE029, 40.5 );
setSeVolumeByWorkId( spep_0+6 + 370, SE029, 45 );
setSeVolumeByWorkId( spep_0+6 + 371, SE029, 49.5 );
setSeVolumeByWorkId( spep_0+6 + 372, SE029, 54 );
setSeVolumeByWorkId( spep_0+6 + 373, SE029, 58.5 );
setSeVolumeByWorkId( spep_0+6 + 374, SE029, 63 );
setSeVolumeByWorkId( spep_0+6 + 375, SE029, 67.5 );
setSeVolumeByWorkId( spep_0+6 + 376, SE029, 72 );
setSeVolumeByWorkId( spep_0+6 + 377, SE029, 76.5 );
setSeVolumeByWorkId( spep_0+6 + 378, SE029, 81 );
setSeVolumeByWorkId( spep_0+6 + 379, SE029, 85.5 );
setSeVolumeByWorkId( spep_0+6 + 380, SE029, 90 );
setSeVolumeByWorkId( spep_0+6 + 381, SE029, 94.5 );
setSeVolumeByWorkId( spep_0+6 + 382, SE029, 100 );
SE030 = playSe( spep_0+6 + 376, 1265 );
stopSe( spep_0+6 + 460, SE030, 60 );
SE031 = playSe( spep_0+6 + 406, 1209 );
setSeVolumeByWorkId( spep_0+6 + 406, SE031, 52 );

--かめはめ波溜め３
SE032 = playSe( spep_0+6 + 438, 1296 );
setSeVolumeByWorkId( spep_0+6 + 438, SE032, 126 );

--顔カットイン
SE033 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_0+6 + 526, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0+6 + 530;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
--playSe( spep_1 + 0, SE_05 );

--かめはめ波溜め２
stopSe( spep_1 + 6, SE029, 0 );

--かめはめ波溜め３
stopSe( spep_1 + 6, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 86, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 86, 1, 104 );
changeAnime( spep_2-3 + 104, 1, 105 );

setBlendColor(spep_2-3 + 86,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 95,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 96,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 121,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 122,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 123,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 124,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 148,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 150,1,3,0.57,0.83,1,0);

setMoveKey( spep_2-3 + 86, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 103, 1, 0, 73.9 , 0 );

setMoveKey( spep_2-3 + 104, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 111, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 115, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 119, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 120, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 123, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 129, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 135, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 137, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 139, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 143, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-3 + 147, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-1 + 148, 1, 0.5, 49.6 , 0 );

setScaleKey( spep_2-3 + 86, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 103, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 111, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 115, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 119, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 123, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 128, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 129, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 136, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 137, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 138, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 140, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 141, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 142, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 143, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 144, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 146, 1, 0.07, 0.07 );
setScaleKey( spep_2-1 + 148, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 86, 1, 0 );
setRotateKey( spep_2-1 + 148, 1, 0 );

--SE
--かめはめ波発射
SE035 = playSe( spep_2 + 8, 1177 );
stopSe( spep_2 + 100, SE035, 30 );
SE036 = playSe( spep_2 + 10, 1213 );
setSeVolumeByWorkId( spep_2 + 10, SE036, 60 );
stopSe( spep_2 + 154, SE036, 22 );
SE037 = playSe( spep_2 + 10, 1133 );
SE038 = playSe( spep_2 + 10, 1022 );

--かめはめ波ヒット
SE040 = playSe( spep_2 + 100, 1027 );
setSeVolumeByWorkId( spep_2 + 100, SE040, 87 );
SE041 = playSe( spep_2 + 102, 1258 );
setSeVolumeByWorkId( spep_2 + 102, SE041, 67 );
SE039 = playSe( spep_2 + 130, 1198 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 130, SE039, 0 );
setSeVolumeByWorkId( spep_2 + 131, SE039, 10.8 );
setSeVolumeByWorkId( spep_2 + 132, SE039, 21.6 );
setSeVolumeByWorkId( spep_2 + 133, SE039, 32.4 );
setSeVolumeByWorkId( spep_2 + 134, SE039, 43.2 );
setSeVolumeByWorkId( spep_2 + 135, SE039, 54 );
setSeVolumeByWorkId( spep_2 + 136, SE039, 64.8 );
setSeVolumeByWorkId( spep_2 + 137, SE039, 75.6 );
setSeVolumeByWorkId( spep_2 + 138, SE039, 86 );
setStartTimeMs( SE039,  567 );

--爆発
SE042 = playSe( spep_2 + 158, 1024 );
setSeVolumeByWorkId( spep_2 + 158, SE042, 80 );
SE043 = playSe( spep_2 + 158, 1159 );
setSeVolumeByWorkId( spep_2 + 158, SE043, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 162 );
endPhase( spep_2 + 270 );
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
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 530, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 46, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 47, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 530, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0+6 + 530, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0+6 + 530, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 530, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 46, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 47, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 530, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0+6 + 530, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0+6 + 530, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0+6 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 2, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 4, 1, 0.2, 35.7 , 0 );
setMoveKey( spep_0 + 6, 1, 0.2, 29.5 , 0 );
setMoveKey( spep_0 + 8, 1, 0.2, 23.3 , 0 );
setMoveKey( spep_0 + 10, 1, 0.2, 17.2 , 0 );
setMoveKey( spep_0 + 12, 1, 0.2, 11 , 0 );
setMoveKey( spep_0 + 14, 1, 0.2, 4.8 , 0 );
setMoveKey( spep_0 + 16, 1, 0.2, -1.3 , 0 );
setMoveKey( spep_0 + 18, 1, 0.2, -7.5 , 0 );
setMoveKey( spep_0 + 20, 1, 0.2, -13.7 , 0 );
setMoveKey( spep_0 + 22, 1, 0.2, -19.8 , 0 );
setMoveKey( spep_0 + 24, 1, 0.2, -26 , 0 );
setMoveKey( spep_0 + 26, 1, 0.2, -32.2 , 0 );
setMoveKey( spep_0 + 28, 1, 0.2, -38.3 , 0 );
setMoveKey( spep_0 + 30, 1, 0.2, -44.5 , 0 );
setMoveKey( spep_0 + 32, 1, 0.2, -50.7 , 0 );
setMoveKey( spep_0 + 34, 1, 0.2, -56.8 , 0 );
setMoveKey( spep_0 + 36, 1, 0.2, -63 , 0 );
setMoveKey( spep_0 + 38, 1, 0.2, -69.2 , 0 );
setMoveKey( spep_0 + 40, 1, 0.2, -75.3 , 0 );
setMoveKey( spep_0 + 42, 1, 0.2, -81.5 , 0 );
setMoveKey( spep_0 + 44, 1, 0.2, -87.7 , 0 );
setMoveKey( spep_0 + 46, 1, 0.2, -93.8 , 0 );
setMoveKey( spep_0+6 + 48, 1, 0.2, -100 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0+6 + 48, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0+6 + 48, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0+6 + 52, SE001, 24 );
SE002 = playSe( spep_0 + 0, 44 );

--二人ジャンプ
SE003 = playSe( spep_0 + 52, 1004 );
SE004 = playSe( spep_0 + 52, 1116 );
stopSe( spep_0 + 88, SE004, 26 );
SE005 = playSe( spep_0 + 52, 1241 );
setSeVolumeByWorkId( spep_0 + 52, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 53, SE005, 1.6 );
setSeVolumeByWorkId( spep_0 + 54, SE005, 3.2 );
setSeVolumeByWorkId( spep_0 + 55, SE005, 4.8 );
setSeVolumeByWorkId( spep_0 + 56, SE005, 6.4 );
setSeVolumeByWorkId( spep_0 + 57, SE005, 8 );
setSeVolumeByWorkId( spep_0 + 58, SE005, 9.6 );
setSeVolumeByWorkId( spep_0 + 59, SE005, 11.2 );
setSeVolumeByWorkId( spep_0 + 60, SE005, 12.8 );
setSeVolumeByWorkId( spep_0 + 61, SE005, 14.4 );
setSeVolumeByWorkId( spep_0 + 62, SE005, 16 );
setSeVolumeByWorkId( spep_0 + 63, SE005, 17.6 );
setSeVolumeByWorkId( spep_0 + 64, SE005, 19.2 );
setSeVolumeByWorkId( spep_0 + 65, SE005, 20.8 );
setSeVolumeByWorkId( spep_0 + 66, SE005, 22.4 );
setSeVolumeByWorkId( spep_0 + 67, SE005, 24 );
setSeVolumeByWorkId( spep_0 + 68, SE005, 25.6 );
setSeVolumeByWorkId( spep_0 + 69, SE005, 27.2 );
setSeVolumeByWorkId( spep_0 + 70, SE005, 28.8 );
setSeVolumeByWorkId( spep_0 + 71, SE005, 30.4 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 32 );
setSeVolumeByWorkId( spep_0 + 73, SE005, 33.6 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 35.2 );
setSeVolumeByWorkId( spep_0 + 75, SE005, 36.8 );
setSeVolumeByWorkId( spep_0 + 76, SE005, 39 );
setPitch( spep_0 + 52, SE005, -800 );
setTimeStretch( SE005, 0.47, 10, 1 );
SE006 = playSe( spep_0 + 52, 1183 );
setSeVolumeByWorkId( spep_0 + 52, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 536, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0+6 + 90 ; --エンドフェイズのフレーム数を置き換える
    
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
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------
--敵の動き
setDisp( spep_0+6 -3 + 208, 1, 1 );
setDisp( spep_0+6 -1 + 346, 1, 0 );

changeAnime( spep_0+6 -3 + 208, 1, 8 );
changeAnime( spep_0+6 -3 + 234, 1, 6 );
changeAnime( spep_0+6 -3 + 260, 1, 8 );
changeAnime( spep_0+6 -3 + 286, 1, 6 );
changeAnime( spep_0+6 -3 + 292, 1, 8 );
changeAnime( spep_0+6 -3 + 296, 1, 6 );

setMoveKey( spep_0+6 -3 + 208, 1, 1094.9, 68.1 , 0 );
setMoveKey( spep_0+6 -3 + 210, 1, 481.8, 42.9 , 0 );
setMoveKey( spep_0+6 -3 + 212, 1, 293, 88.2 , 0 );
setMoveKey( spep_0+6 -3 + 214, 1, 162.5, 57.1 , 0 );
setMoveKey( spep_0+6 -3 + 216, 1, 115.7, 63.4 , 0 );
setMoveKey( spep_0+6 -3 + 218, 1, 48.7, 52.3 , 0 );
setMoveKey( spep_0+6 -3 + 220, 1, 36.8, 52.2 , 0 );
setMoveKey( spep_0+6 -3 + 222, 1, 14.1, 52.5 , 0 );
setMoveKey( spep_0+6 -3 + 224, 1, -1.8, 52.9 , 0 );
setMoveKey( spep_0+6 -3 + 226, 1, -13.1, 53.3 , 0 );
setMoveKey( spep_0+6 -3 + 228, 1, -21.3, 53.8 , 0 );
setMoveKey( spep_0+6 -3 + 230, 1, -27.4, 54.3 , 0 );
setMoveKey( spep_0+6 -3 + 232, 1, -32.4, 54.8 , 0 );
setMoveKey( spep_0+6 -3 + 233, 1, -32.4, 54.8 , 0 );

setMoveKey( spep_0+6 -3 + 234, 1, -3.3, 64.8 , 0 );
setMoveKey( spep_0+6 -3 + 236, 1, 7.8, 57.6 , 0 );
setMoveKey( spep_0+6 -3 + 238, 1, -3.8, 61.4 , 0 );
setMoveKey( spep_0+6 -3 + 240, 1, 1, 60.3 , 0 );
setMoveKey( spep_0+6 -3 + 242, 1, -4.3, 62.7 , 0 );
setMoveKey( spep_0+6 -3 + 244, 1, -5.8, 64.1 , 0 );
setMoveKey( spep_0+6 -3 + 246, 1, -7, 65.4 , 0 );
setMoveKey( spep_0+6 -3 + 248, 1, -8.1, 66.5 , 0 );
setMoveKey( spep_0+6 -3 + 250, 1, -9, 67.3 , 0 );
setMoveKey( spep_0+6 -3 + 252, 1, -9.7, 68 , 0 );
setMoveKey( spep_0+6 -3 + 254, 1, -10.1, 68.5 , 0 );
setMoveKey( spep_0+6 -3 + 256, 1, -10.4, 68.8 , 0 );
setMoveKey( spep_0+6 -3 + 258, 1, -10.5, 68.9 , 0 );
setMoveKey( spep_0+6 -3 + 259, 1, -10.5, 68.9 , 0 );

setMoveKey( spep_0+6 -3 + 260, 1, -79.7, -23.8 , 0 );
setMoveKey( spep_0+6 -3 + 262, 1, -82.1, -13 , 0 );
setMoveKey( spep_0+6 -3 + 264, 1, -79.4, -20.1 , 0 );
setMoveKey( spep_0+6 -3 + 266, 1, -74.8, -18 , 0 );
setMoveKey( spep_0+6 -3 + 268, 1, -81.1, -18.7 , 0 );
setMoveKey( spep_0+6 -3 + 270, 1, -73.4, -23.7 , 0 );
setMoveKey( spep_0+6 -3 + 272, 1, -76.2, -24.8 , 0 );
setMoveKey( spep_0+6 -3 + 274, 1, -75.4, -26.3 , 0 );
setMoveKey( spep_0+6 -3 + 276, 1, -74.8, -27.6 , 0 );
setMoveKey( spep_0+6 -3 + 278, 1, -74.3, -28.5 , 0 );
setMoveKey( spep_0+6 -3 + 280, 1, -74, -29.2 , 0 );
setMoveKey( spep_0+6 -3 + 282, 1, -73.8, -29.7 , 0 );
setMoveKey( spep_0+6 -3 + 284, 1, -73.7, -29.8 , 0 );
setMoveKey( spep_0+6 -3 + 285, 1, -73.7, -29.8 , 0 );

setMoveKey( spep_0+6 -3 + 286, 1, -51.9, -6.2 , 0 );
setMoveKey( spep_0+6 -3 + 288, 1, -34.6, -7.3 , 0 );
setMoveKey( spep_0+6 -3 + 290, 1, -42, -5.4 , 0 );
setMoveKey( spep_0+6 -3 + 291, 1, -42, -5.4 , 0 );

setMoveKey( spep_0+6 -3 + 292, 1, -17.9, 15.2 , 0 );
setMoveKey( spep_0+6 -3 + 295, 1, -22.1, 32.9 , 0 );

setMoveKey( spep_0+6 -3 + 296, 1, 45.8, 58.1 , 0 );
setMoveKey( spep_0+6 -3 + 298, 1, 50.4, 48.7 , 0 );
setMoveKey( spep_0+6 -3 + 300, 1, 40.4, 28.7 , 0 );
setMoveKey( spep_0+6 -3 + 302, 1, 50, 50.1 , 0 );
setMoveKey( spep_0+6 -3 + 304, 1, 39, 49.9 , 0 );
setMoveKey( spep_0+6 -3 + 306, 1, 43.3, 62.3 , 0 );
setMoveKey( spep_0+6 -3 + 308, 1, 37.4, 54.7 , 0 );
setMoveKey( spep_0+6 -3 + 310, 1, 39.9, 68.6 , 0 );
setMoveKey( spep_0+6 -3 + 312, 1, 34.7, 66.7 , 0 );
setMoveKey( spep_0+6 -3 + 314, 1, 33.1, 69.4 , 0 );
setMoveKey( spep_0+6 -3 + 316, 1, 31.6, 71.9 , 0 );
setMoveKey( spep_0+6 -3 + 318, 1, 30.2, 74.3 , 0 );
setMoveKey( spep_0+6 -3 + 320, 1, 28.9, 76.5 , 0 );
setMoveKey( spep_0+6 -3 + 322, 1, 27.7, 78.5 , 0 );
setMoveKey( spep_0+6 -3 + 324, 1, 26.5, 80.4 , 0 );
setMoveKey( spep_0+6 -3 + 326, 1, 25.5, 82.1 , 0 );
setMoveKey( spep_0+6 -3 + 328, 1, 24.6, 83.6 , 0 );
setMoveKey( spep_0+6 -3 + 330, 1, 23.7, 85 , 0 );
setMoveKey( spep_0+6 -3 + 332, 1, 23, 86.2 , 0 );
setMoveKey( spep_0+6 -3 + 334, 1, 22.3, 87.2 , 0 );
setMoveKey( spep_0+6 -3 + 336, 1, 21.8, 88.1 , 0 );
setMoveKey( spep_0+6 -3 + 338, 1, 21.4, 88.8 , 0 );
setMoveKey( spep_0+6 -3 + 340, 1, 21, 89.4 , 0 );
setMoveKey( spep_0+6 -3 + 342, 1, 20.8, 89.8 , 0 );
setMoveKey( spep_0+6 -1 + 346, 1, 20.6, 90.1 , 0 );

setScaleKey( spep_0+6 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0+6 -1 + 346, 1, 1.5, 1.5 );

setRotateKey( spep_0+6 -3 + 208, 1, 0 );
setRotateKey( spep_0+6 -3 + 233, 1, 0 );

setRotateKey( spep_0+6 -3 + 234, 1, 30 );
setRotateKey( spep_0+6 -3 + 259, 1, 30 );

setRotateKey( spep_0+6 -3 + 260, 1, 20 );
setRotateKey( spep_0+6 -3 + 285, 1, 20 );


setRotateKey( spep_0+6 -3 + 286, 1, 30 );
setRotateKey( spep_0+6 -3 + 291, 1, 30 );

setRotateKey( spep_0+6 -3 + 292, 1, 20 );
setRotateKey( spep_0+6 -3 + 295, 1, 20 );

setRotateKey( spep_0+6 -3 + 296, 1, 45 );
setRotateKey( spep_0+6 -3 + 298, 1, 44.2 );
setRotateKey( spep_0+6 -3 + 300, 1, 43.5 );
setRotateKey( spep_0+6 -3 + 302, 1, 42.7 );
setRotateKey( spep_0+6 -3 + 304, 1, 42.1 );
setRotateKey( spep_0+6 -3 + 306, 1, 41.4 );
setRotateKey( spep_0+6 -3 + 308, 1, 40.8 );
setRotateKey( spep_0+6 -3 + 310, 1, 40.2 );
setRotateKey( spep_0+6 -3 + 312, 1, 39.6 );
setRotateKey( spep_0+6 -3 + 314, 1, 39.1 );
setRotateKey( spep_0+6 -3 + 316, 1, 38.6 );
setRotateKey( spep_0+6 -3 + 318, 1, 38.1 );
setRotateKey( spep_0+6 -3 + 320, 1, 37.7 );
setRotateKey( spep_0+6 -3 + 322, 1, 37.3 );
setRotateKey( spep_0+6 -3 + 324, 1, 36.9 );
setRotateKey( spep_0+6 -3 + 326, 1, 36.6 );
setRotateKey( spep_0+6 -3 + 328, 1, 36.3 );
setRotateKey( spep_0+6 -3 + 330, 1, 36 );
setRotateKey( spep_0+6 -3 + 332, 1, 35.8 );
setRotateKey( spep_0+6 -3 + 334, 1, 35.6 );
setRotateKey( spep_0+6 -3 + 336, 1, 35.4 );
setRotateKey( spep_0+6 -3 + 338, 1, 35.2 );
setRotateKey( spep_0+6 -3 + 340, 1, 35.1 );
setRotateKey( spep_0+6 -3 + 342, 1, 35.1 );
setRotateKey( spep_0+6 -1 + 346, 1, 35 );

--顔カットインのタイミング指定
spep_x=spep_0+6 +440;

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
--空中クロス
SE007 = playSe( spep_0+6 + 72, 1179 );
setSeVolumeByWorkId( spep_0+6 + 72, SE007, 0 );
setSeVolumeByWorkId( spep_0+6 + 73, SE007, 4 );
setSeVolumeByWorkId( spep_0+6 + 74, SE007, 8 );
setSeVolumeByWorkId( spep_0+6 + 75, SE007, 12 );
setSeVolumeByWorkId( spep_0+6 + 76, SE007, 16 );
setSeVolumeByWorkId( spep_0+6 + 77, SE007, 20 );
setSeVolumeByWorkId( spep_0+6 + 78, SE007, 24 );
setSeVolumeByWorkId( spep_0+6 + 79, SE007, 28 );
setSeVolumeByWorkId( spep_0+6 + 80, SE007, 32 );
setSeVolumeByWorkId( spep_0+6 + 81, SE007, 36 );
setSeVolumeByWorkId( spep_0+6 + 82, SE007, 40 );
setSeVolumeByWorkId( spep_0+6 + 83, SE007, 44 );
setSeVolumeByWorkId( spep_0+6 + 84, SE007, 48 );
setSeVolumeByWorkId( spep_0+6 + 85, SE007, 52 );
setSeVolumeByWorkId( spep_0+6 + 86, SE007, 56 );
setSeVolumeByWorkId( spep_0+6 + 87, SE007, 60 );
setSeVolumeByWorkId( spep_0+6 + 88, SE007, 64 );
setSeVolumeByWorkId( spep_0+6 + 89, SE007, 68 );
setSeVolumeByWorkId( spep_0+6 + 90, SE007, 72 );
setSeVolumeByWorkId( spep_0+6 + 91, SE007, 76 );
setSeVolumeByWorkId( spep_0+6 + 92, SE007, 80 );
setSeVolumeByWorkId( spep_0+6 + 93, SE007, 84 );
setSeVolumeByWorkId( spep_0+6 + 94, SE007, 88 );
setSeVolumeByWorkId( spep_0+6 + 95, SE007, 92 );
setSeVolumeByWorkId( spep_0+6 + 96, SE007, 96 );
setSeVolumeByWorkId( spep_0+6 + 97, SE007, 100 );
setSeVolumeByWorkId( spep_0+6 + 98, SE007, 104 );
setSeVolumeByWorkId( spep_0+6 + 99, SE007, 108 );
setSeVolumeByWorkId( spep_0+6 + 100, SE007, 111 );
setPitch( spep_0+6 + 72, SE007, 200 );
setTimeStretch( SE007, 1.13, 10, 1 );

--悟天アップ
SE008 = playSe( spep_0+6 + 138, 1142 );
setSeVolumeByWorkId( spep_0+6 + 138, SE008, 69 );
setPitch( spep_0+6 + 138, SE008, 100 );
setTimeStretch( SE008, 1.07, 10, 1 );

--トランクスアップ
SE009 = playSe( spep_0+6 + 160, 1142 );
setSeVolumeByWorkId( spep_0+6 + 160, SE009, 75 );
stopSe( spep_0+6 + 174, SE009, 12 );
setPitch( spep_0+6 + 160, SE009, 100 );
setTimeStretch( SE009, 1.07, 10, 1 );

--二人パンチ
SE010 = playSe( spep_0+6 + 176, 1189 );
setSeVolumeByWorkId( spep_0+6 + 176, SE010, 141 );
SE011 = playSe( spep_0+6 + 182, 1110 );
setSeVolumeByWorkId( spep_0+6 + 182, SE011, 83 );
SE012 = playSe( spep_0+6 + 184, 1187 );
setSeVolumeByWorkId( spep_0+6 + 184, SE012, 79 );
SE013 = playSe( spep_0+6 + 184, 1109 );
setSeVolumeByWorkId( spep_0+6 + 186, SE013, 0 );
setSeVolumeByWorkId( spep_0+6 + 187, SE013, 13.4 );
setSeVolumeByWorkId( spep_0+6 + 188, SE013, 26.8 );
setSeVolumeByWorkId( spep_0+6 + 189, SE013, 40.2 );
setSeVolumeByWorkId( spep_0+6 + 190, SE013, 53.6 );
setSeVolumeByWorkId( spep_0+6 + 191, SE013, 67 );
setSeVolumeByWorkId( spep_0+6 + 192, SE013, 80.4 );
setSeVolumeByWorkId( spep_0+6 + 193, SE013, 93.8 );
setSeVolumeByWorkId( spep_0+6 + 194, SE013, 107 );
SE014 = playSe( spep_0+6 + 184, 1190 );
setSeVolumeByWorkId( spep_0+6 + 186, SE014, 79 );

--トランクスパンチ
SE015 = playSe( spep_0+6 + 226, 1189 );
SE016 = playSe( spep_0+6 + 232, 1110 );
SE017 = playSe( spep_0+6 + 232, 1000 );
setSeVolumeByWorkId( spep_0+6 + 232, SE017, 86 );

--悟天キック
SE018 = playSe( spep_0+6 + 252, 1189 );
SE019 = playSe( spep_0+6 + 254, 1001 );
setSeVolumeByWorkId( spep_0+6 + 254, SE019, 68 );
SE020 = playSe( spep_0+6 + 254, 1110 );

--二人でラッシュ
SE021 = playSe( spep_0+6 + 284, 1110 );
stopSe( spep_0+6 + 292, SE021, 14 );
SE022 = playSe( spep_0+6 + 284, 1006,"",0.5  );
setSeVolumeByWorkId( spep_0+6 + 284, SE022, 77 );
SE023 = playSe( spep_0+6 + 292, 1000 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 292, SE023, 68 );
SE024 = playSe( spep_0+6 + 292, 1110 );
stopSe( spep_0+6 + 300, SE024, 14 );
SE025 = playSe( spep_0+6 + 300, 1110 );
SE026 = playSe( spep_0+6 + 300, 1010 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 300, SE026, 64 );

--かめはめ波溜め始まり
SE027 = playSe( spep_0+6 + 346, 1148 );
setSeVolumeByWorkId( spep_0+6 + 346, SE027, 47 );
stopSe( spep_0+6 + 432, SE027, 20 );
SE028 = playSe( spep_0+6 + 346, 1199 );
setSeVolumeByWorkId( spep_0+6 + 346, SE028, 77 );
setPitch( spep_0+6 + 346, SE028, 700 );
setTimeStretch( SE028, 1.47, 10, 1 );

--かめはめ波溜め２
SE029 = playSe( spep_0+6 + 360, 1252 );
setSeVolumeByWorkId( spep_0+6 + 360, SE029, 0 );
setSeVolumeByWorkId( spep_0+6 + 361, SE029, 4.5 );
setSeVolumeByWorkId( spep_0+6 + 362, SE029, 9 );
setSeVolumeByWorkId( spep_0+6 + 363, SE029, 13.5 );
setSeVolumeByWorkId( spep_0+6 + 364, SE029, 18 );
setSeVolumeByWorkId( spep_0+6 + 365, SE029, 22.5 );
setSeVolumeByWorkId( spep_0+6 + 366, SE029, 27 );
setSeVolumeByWorkId( spep_0+6 + 367, SE029, 31.5 );
setSeVolumeByWorkId( spep_0+6 + 368, SE029, 36 );
setSeVolumeByWorkId( spep_0+6 + 369, SE029, 40.5 );
setSeVolumeByWorkId( spep_0+6 + 370, SE029, 45 );
setSeVolumeByWorkId( spep_0+6 + 371, SE029, 49.5 );
setSeVolumeByWorkId( spep_0+6 + 372, SE029, 54 );
setSeVolumeByWorkId( spep_0+6 + 373, SE029, 58.5 );
setSeVolumeByWorkId( spep_0+6 + 374, SE029, 63 );
setSeVolumeByWorkId( spep_0+6 + 375, SE029, 67.5 );
setSeVolumeByWorkId( spep_0+6 + 376, SE029, 72 );
setSeVolumeByWorkId( spep_0+6 + 377, SE029, 76.5 );
setSeVolumeByWorkId( spep_0+6 + 378, SE029, 81 );
setSeVolumeByWorkId( spep_0+6 + 379, SE029, 85.5 );
setSeVolumeByWorkId( spep_0+6 + 380, SE029, 90 );
setSeVolumeByWorkId( spep_0+6 + 381, SE029, 94.5 );
setSeVolumeByWorkId( spep_0+6 + 382, SE029, 100 );
SE030 = playSe( spep_0+6 + 376, 1265 );
stopSe( spep_0+6 + 460, SE030, 60 );
SE031 = playSe( spep_0+6 + 406, 1209 );
setSeVolumeByWorkId( spep_0+6 + 406, SE031, 52 );

--かめはめ波溜め３
SE032 = playSe( spep_0+6 + 438, 1296 );
setSeVolumeByWorkId( spep_0+6 + 438, SE032, 126 );

--顔カットイン
SE033 = playSe( spep_x +12, 1018 );

--白フェード
entryFade( spep_0+6 + 526, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0+6 + 530;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_1 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_1 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_1 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_1 + 0, shuchusen, 0 );
setEffRotateKey( spep_1 + 86, shuchusen, 0 );

setEffAlphaKey( spep_1 + 0, shuchusen, 255 );
setEffAlphaKey( spep_1 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

--かめはめ波溜め２
stopSe( spep_1 + 6, SE029, 0 );

--かめはめ波溜め３
stopSe( spep_1 + 6, SE032, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 87, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 280, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 280, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 280, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 86, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 87, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 280, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 280, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 280, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 86, 1, 1 );
setDisp( spep_2-1 + 148, 1, 0 );

changeAnime( spep_2-3 + 86, 1, 104 );
changeAnime( spep_2-3 + 104, 1, 105 );

setBlendColor(spep_2-3 + 86,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 95,1,3,0.57,0.83,1,0.36);
setBlendColor(spep_2-3 + 96,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 121,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2-3 + 122,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 123,1,3,0.46,0.86,0.89,1);
setBlendColor(spep_2-3 + 124,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 148,1,3,0.57,0.83,1,0.64);
setBlendColor(spep_2 + 150,1,3,0.57,0.83,1,0);

setMoveKey( spep_2-3 + 86, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 102, 1, 0, 73.9 , 0 );
setMoveKey( spep_2-3 + 103, 1, 0, 73.9 , 0 );

setMoveKey( spep_2-3 + 104, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 106, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 107, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 108, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 110, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 111, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 112, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 114, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 115, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 116, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 118, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 119, 1, 12.6, 130.1 , 0 );
setMoveKey( spep_2-3 + 120, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 123, 1, 13.5, 136.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 129, 1, 5.4, 143.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 134, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 135, 1, 2.7, 94.8 , 0 );
setMoveKey( spep_2-3 + 136, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 137, 1, 0.9, 39.4 , 0 );
setMoveKey( spep_2-3 + 138, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 139, 1, 0.8, 41.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 141, 1, 0.8, 42.8 , 0 );
setMoveKey( spep_2-3 + 142, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 143, 1, 0.7, 44.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 145, 1, 0.7, 46.2 , 0 );
setMoveKey( spep_2-3 + 146, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-3 + 147, 1, 0.6, 47.9 , 0 );
setMoveKey( spep_2-1 + 148, 1, 0.5, 49.6 , 0 );

setScaleKey( spep_2-3 + 86, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 102, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 103, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 104, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 106, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 107, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 108, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 110, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 111, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 112, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 114, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 115, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 116, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 118, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 119, 1, 1.4, 1.4 );
setScaleKey( spep_2-3 + 120, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 122, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 123, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 124, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 128, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 129, 1, 0.6, 0.6 );
setScaleKey( spep_2-3 + 130, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 134, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 135, 1, 0.3, 0.3 );
setScaleKey( spep_2-3 + 136, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 137, 1, 0.1, 0.1 );
setScaleKey( spep_2-3 + 138, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 140, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 141, 1, 0.09, 0.09 );
setScaleKey( spep_2-3 + 142, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 143, 1, 0.08, 0.08 );
setScaleKey( spep_2-3 + 144, 1, 0.07, 0.07 );
setScaleKey( spep_2-3 + 146, 1, 0.07, 0.07 );
setScaleKey( spep_2-1 + 148, 1, 0.06, 0.06 );

setRotateKey( spep_2-3 + 86, 1, 0 );
setRotateKey( spep_2-1 + 148, 1, 0 );

--SE
--かめはめ波発射
SE035 = playSe( spep_2 + 8, 1177 );
stopSe( spep_2 + 100, SE035, 30 );
SE036 = playSe( spep_2 + 10, 1213 );
setSeVolumeByWorkId( spep_2 + 10, SE036, 60 );
stopSe( spep_2 + 154, SE036, 22 );
SE037 = playSe( spep_2 + 10, 1133 );
SE038 = playSe( spep_2 + 10, 1022 );

--かめはめ波ヒット
SE040 = playSe( spep_2 + 100, 1027 );
setSeVolumeByWorkId( spep_2 + 100, SE040, 87 );
SE041 = playSe( spep_2 + 102, 1258 );
setSeVolumeByWorkId( spep_2 + 102, SE041, 67 );
SE039 = playSe( spep_2 + 130, 1198 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 130, SE039, 0 );
setSeVolumeByWorkId( spep_2 + 131, SE039, 10.8 );
setSeVolumeByWorkId( spep_2 + 132, SE039, 21.6 );
setSeVolumeByWorkId( spep_2 + 133, SE039, 32.4 );
setSeVolumeByWorkId( spep_2 + 134, SE039, 43.2 );
setSeVolumeByWorkId( spep_2 + 135, SE039, 54 );
setSeVolumeByWorkId( spep_2 + 136, SE039, 64.8 );
setSeVolumeByWorkId( spep_2 + 137, SE039, 75.6 );
setSeVolumeByWorkId( spep_2 + 138, SE039, 86 );
setStartTimeMs( SE039,  567 );

--爆発
SE042 = playSe( spep_2 + 158, 1024 );
setSeVolumeByWorkId( spep_2 + 158, SE042, 80 );
SE043 = playSe( spep_2 + 158, 1159 );
setSeVolumeByWorkId( spep_2 + 158, SE043, 76 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 270, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 162 );
endPhase( spep_2 + 270 );
end