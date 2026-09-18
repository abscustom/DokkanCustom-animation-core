--1021690:超サイヤ人トランクス(幼年期)&超サイヤ人孫悟天(幼年期)_トリプルかめはめ波
--sp_effect_a1_00281
--sp2159

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
SP_01= 156960;-- トランクス悟天登場〜かめはめ波溜め
SP_02= 156961;-- トランクス悟天登場〜かめはめ波溜め
SP_03= 156962;-- かめはめ波発射〜爆発
SP_04= 156963;-- かめはめ波発射〜爆発

--エフェクト(敵)
SP_01x= 156990;-- トランクス悟天登場〜かめはめ波溜め
SP_02x= 156961;-- トランクス悟天登場〜かめはめ波溜め
SP_03x= 156964;-- かめはめ波発射〜爆発	(敵)
SP_04x= 156965;-- かめはめ波発射〜爆発	(敵)

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
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 830, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, 1.0, 1.0 );
setEffScaleKey( spep_0+6 + 830, tame_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0+6 + 830, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0+6 + 830, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 830, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, 1.0, 1.0 );
setEffScaleKey( spep_0+6 + 830, tame_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0+6 + 830, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0+6 + 830, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 +6 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 1, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 2, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 3, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 4, 1, 0.2, 35.7 , 0 );
setMoveKey( spep_0 + 5, 1, 0.2, 35.7 , 0 );
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
setMoveKey( spep_0 + 6 + 48, 1, 0.2, -100 , 0 );

setScaleKey( spep_0 + 0, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 1, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 2, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 3, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 5, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6, 1, 1.5, 1.5 );
setScaleKey( spep_0 + 6 + 48, 1, 1.5, 1.5 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 6 + 48, 1, 0 );

--SE
--入り
SE001 = playSe( spep_0 + 0, 1117 );
stopSe( spep_0+6 + 52, SE001, 24 );
SE002 = playSe( spep_0 + 0, 44 );

--二人ジャンプ
SE003 = playSe( spep_0+6 + 52, 1004 );
SE004 = playSe( spep_0+6 + 52, 1116 );
stopSe( spep_0+6 + 88, SE004, 26 );
SE005 = playSe( spep_0+6 + 52, 1241 );
setSeVolumeByWorkId( spep_0+6 + 52, SE005, 0 );
setSeVolumeByWorkId( spep_0+6 + 53, SE005, 1.6 );
setSeVolumeByWorkId( spep_0+6 + 54, SE005, 3.2 );
setSeVolumeByWorkId( spep_0+6 + 55, SE005, 4.8 );
setSeVolumeByWorkId( spep_0+6 + 56, SE005, 6.4 );
setSeVolumeByWorkId( spep_0+6 + 57, SE005, 8 );
setSeVolumeByWorkId( spep_0+6 + 58, SE005, 9.6 );
setSeVolumeByWorkId( spep_0+6 + 59, SE005, 11.2 );
setSeVolumeByWorkId( spep_0+6 + 60, SE005, 12.8 );
setSeVolumeByWorkId( spep_0+6 + 61, SE005, 14.4 );
setSeVolumeByWorkId( spep_0+6 + 62, SE005, 16 );
setSeVolumeByWorkId( spep_0+6 + 63, SE005, 17.6 );
setSeVolumeByWorkId( spep_0+6 + 64, SE005, 19.2 );
setSeVolumeByWorkId( spep_0+6 + 65, SE005, 20.8 );
setSeVolumeByWorkId( spep_0+6 + 66, SE005, 22.4 );
setSeVolumeByWorkId( spep_0+6 + 67, SE005, 24 );
setSeVolumeByWorkId( spep_0+6 + 68, SE005, 25.6 );
setSeVolumeByWorkId( spep_0+6 + 69, SE005, 27.2 );
setSeVolumeByWorkId( spep_0+6 + 70, SE005, 28.8 );
setSeVolumeByWorkId( spep_0+6 + 71, SE005, 30.4 );
setSeVolumeByWorkId( spep_0+6 + 72, SE005, 32 );
setSeVolumeByWorkId( spep_0+6 + 73, SE005, 33.6 );
setSeVolumeByWorkId( spep_0+6 + 74, SE005, 35.2 );
setSeVolumeByWorkId( spep_0+6 + 75, SE005, 36.8 );
setSeVolumeByWorkId( spep_0+6 + 76, SE005, 39 );
setPitch( spep_0+6 + 52, SE005, -800 );
setTimeStretch( SE005, 0.47, 10, 1 );
SE006 = playSe( spep_0+6 + 52, 1183 );
setSeVolumeByWorkId( spep_0+6 + 52, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 836, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 96 ; --エンドフェイズのフレーム数を置き換える
    
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
setDisp( spep_0+8 + 346, 1, 0 );

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
setMoveKey( spep_0+8 + 346, 1, -20.6, 90.1 , 0 );

setScaleKey( spep_0+6 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0+8 + 346, 1, 1.5, 1.5 );

setRotateKey( spep_0+6 -3 + 208, 1, 0 );
setRotateKey( spep_0+6 -3 + 233, 1, 0 );
setRotateKey( spep_0+6 -3 + 234, 1, -30 );
setRotateKey( spep_0+6 -3 + 259, 1, -30 );
setRotateKey( spep_0+6 -3 + 260, 1, -20 );
setRotateKey( spep_0+6 -3 + 285, 1, -20 );
setRotateKey( spep_0+6 -3 + 286, 1, -30 );
setRotateKey( spep_0+6 -3 + 291, 1, -30 );
setRotateKey( spep_0+6 -3 + 292, 1, -20 );
setRotateKey( spep_0+6 -3 + 295, 1, -20 )
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
setRotateKey( spep_0+8 + 346, 1, -35 );

--敵の動き
setDisp( spep_0+6 -3 + 398, 1, 1 );
setDisp( spep_0+6 -1 + 458, 1, 0 );

changeAnime( spep_0+6 -3 + 398, 1, 106 );
changeAnime( spep_0+6 -3 + 416, 1, 108 );
changeAnime( spep_0+6 -3 + 420, 1, 105 );

setMoveKey( spep_0+6-3 + 398, 1, -22.5, 86.9 , 0 );
setMoveKey( spep_0+6-3 + 400, 1, -20.5, 84.7 , 0 );
setMoveKey( spep_0+6-3 + 402, 1, -18.5, 82.5 , 0 );
setMoveKey( spep_0+6-3 + 404, 1, -16.5, 80.3 , 0 );
setMoveKey( spep_0+6-3 + 406, 1, -14.5, 78.1 , 0 );
setMoveKey( spep_0+6-3 + 408, 1, -12.5, 75.9 , 0 );
setMoveKey( spep_0+6-3 + 410, 1, -10.5, 73.7 , 0 );
setMoveKey( spep_0+6-3 + 412, 1, -8.5, 71.5 , 0 );
setMoveKey( spep_0+6-3 + 414, 1, -6.5, 69.3 , 0 );
setMoveKey( spep_0+6-3 + 415, 1, -6.5, 69.3 , 0 );
setMoveKey( spep_0+6-3 + 416, 1, 53, 41.8 , 0 );
setMoveKey( spep_0+6-3 + 419, 1, 44.1, 50.7 , 0 );
setMoveKey( spep_0+6-3 + 420, 1, 72.7, 33.8 , 0 );
setMoveKey( spep_0+6-3 + 422, 1, 102, 37.7 , 0 );
setMoveKey( spep_0+6-3 + 424, 1, 107, 24.6 , 0 );
setMoveKey( spep_0+6-3 + 426, 1, 115, 34.2 , 0 );
setMoveKey( spep_0+6-3 + 428, 1, 125.2, 24.3 , 0 );
setMoveKey( spep_0+6-3 + 430, 1, 117.5, 32.5 , 0 );
setMoveKey( spep_0+6-3 + 432, 1, 121.2, 31.9 , 0 );
setMoveKey( spep_0+6-3 + 434, 1, 124.3, 31.5 , 0 );
setMoveKey( spep_0+6-3 + 436, 1, 126.8, 31.1 , 0 );
setMoveKey( spep_0+6-3 + 438, 1, 128.9, 30.8 , 0 );
setMoveKey( spep_0+6-3 + 440, 1, 130.5, 30.5 , 0 );
setMoveKey( spep_0+6-3 + 442, 1, 131.9, 30.4 , 0 );
setMoveKey( spep_0+6-3 + 444, 1, 132.9, 30.2 , 0 );
setMoveKey( spep_0+6-3 + 446, 1, 133.6, 30.1 , 0 );
setMoveKey( spep_0+6-3 + 448, 1, 134.2, 30 , 0 );
setMoveKey( spep_0+6-3 + 450, 1, 134.5, 30 , 0 );
setMoveKey( spep_0+6-3 + 452, 1, 134.7, 29.9 , 0 );
setMoveKey( spep_0+6-3 + 454, 1, 134.8, 29.9 , 0 );
setMoveKey( spep_0+6-1 + 458, 1, 134.8, 29.9 , 0 );

setScaleKey( spep_0+6-3 + 398, 1, 1.4, 1.4 );
setScaleKey( spep_0+6-3 + 415, 1, 1.4, 1.4 );
setScaleKey( spep_0+6-3 + 416, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 419, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 420, 1, 0.63, 0.63 );
setScaleKey( spep_0+6-3 + 422, 1, 0.5, 0.5 );
setScaleKey( spep_0+6-3 + 424, 1, 0.42, 0.42 );
setScaleKey( spep_0+6-3 + 426, 1, 0.36, 0.36 );
setScaleKey( spep_0+6-3 + 428, 1, 0.31, 0.31 );
setScaleKey( spep_0+6-3 + 430, 1, 0.27, 0.27 );
setScaleKey( spep_0+6-3 + 432, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 434, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 436, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 438, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 440, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 442, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 444, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 446, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 448, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-1 + 458, 1, 0.13, 0.13 );

setRotateKey( spep_0+6-3 + 398, 1, -30 );
setRotateKey( spep_0+6-3 + 415, 1, -30 );
setRotateKey( spep_0+6-3 + 416, 1, 45 );
setRotateKey( spep_0+6-3 + 417, 1, 45 );
setRotateKey( spep_0+6-3 + 418, 1, 55.2 );
setRotateKey( spep_0+6-3 + 419, 1, 55.2 );
setRotateKey( spep_0+6-3 + 420, 1, 45 );
setRotateKey( spep_0+6-3 + 448, 1, 45 );
setRotateKey( spep_0+6-1 + 458, 1, 45 );

--敵の動き
setDisp( spep_0+6 -3 + 580, 1, 1 );
setDisp( spep_0+6 -1 + 624, 1, 0 );

changeAnime( spep_0+6 -3 + 580, 1, 105 );

setMoveKey( spep_0+6-3 + 580, 1, 122.5, 88.8 , 0 );
setMoveKey( spep_0+6-3 + 582, 1, 124.1, 89.1 , 0 );
setMoveKey( spep_0+6-3 + 584, 1, 125.7, 89.5 , 0 );
setMoveKey( spep_0+6-3 + 586, 1, 127.2, 89.8 , 0 );
setMoveKey( spep_0+6-3 + 588, 1, 128.6, 90.2 , 0 );
setMoveKey( spep_0+6-3 + 590, 1, 130, 90.5 , 0 );
setMoveKey( spep_0+6-3 + 592, 1, 131.2, 90.8 , 0 );
setMoveKey( spep_0+6-3 + 594, 1, 132.4, 91.1 , 0 );
setMoveKey( spep_0+6-3 + 596, 1, 133.5, 91.4 , 0 );
setMoveKey( spep_0+6-3 + 598, 1, 134.5, 91.7 , 0 );
setMoveKey( spep_0+6-3 + 600, 1, 135.4, 91.9 , 0 );
setMoveKey( spep_0+6-3 + 602, 1, 136.3, 92.2 , 0 );
setMoveKey( spep_0+6-3 + 604, 1, 137.1, 92.4 , 0 );
setMoveKey( spep_0+6-3 + 606, 1, 137.8, 92.6 , 0 );
setMoveKey( spep_0+6-3 + 608, 1, 138.4, 92.8 , 0 );
setMoveKey( spep_0+6-3 + 610, 1, 139, 92.9 , 0 );
setMoveKey( spep_0+6-3 + 612, 1, 139.5, 93.1 , 0 );
setMoveKey( spep_0+6-3 + 614, 1, 139.9, 93.2 , 0 );
setMoveKey( spep_0+6-3 + 616, 1, 140.2, 93.3 , 0 );
setMoveKey( spep_0+6-3 + 618, 1, 140.5, 93.3 , 0 );
setMoveKey( spep_0+6-3 + 620, 1, 140.6, 93.4 , 0 );
setMoveKey( spep_0+6-1 + 624, 1, 140.8, 93.4 , 0 );

setScaleKey( spep_0+6-3 + 580, 1, 0.26, 0.26 );
setScaleKey( spep_0+6-3 + 582, 1, 0.25, 0.25 );
setScaleKey( spep_0+6-3 + 584, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 586, 1, 0.22, 0.22 );
setScaleKey( spep_0+6-3 + 588, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 590, 1, 0.2, 0.2 );
setScaleKey( spep_0+6-3 + 592, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 594, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 596, 1, 0.17, 0.17 );
setScaleKey( spep_0+6-3 + 598, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 600, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 602, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 604, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 606, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 608, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 610, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 614, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 616, 1, 0.11, 0.11 );
setScaleKey( spep_0+6-1 + 624, 1, 0.11, 0.11 );

setRotateKey( spep_0+6-3 + 580, 1, 28 );
setRotateKey( spep_0+6-3 + 582, 1, 28.2 );
setRotateKey( spep_0+6-3 + 584, 1, 28.3 );
setRotateKey( spep_0+6-3 + 586, 1, 28.5 );
setRotateKey( spep_0+6-3 + 588, 1, 28.7 );
setRotateKey( spep_0+6-3 + 590, 1, 28.8 );
setRotateKey( spep_0+6-3 + 592, 1, 28.9 );
setRotateKey( spep_0+6-3 + 594, 1, 29.1 );
setRotateKey( spep_0+6-3 + 596, 1, 29.2 );
setRotateKey( spep_0+6-3 + 598, 1, 29.3 );
setRotateKey( spep_0+6-3 + 600, 1, 29.4 );
setRotateKey( spep_0+6-3 + 602, 1, 29.5 );
setRotateKey( spep_0+6-3 + 604, 1, 29.6 );
setRotateKey( spep_0+6-3 + 606, 1, 29.7 );
setRotateKey( spep_0+6-3 + 608, 1, 29.7 );
setRotateKey( spep_0+6-3 + 610, 1, 29.8 );
setRotateKey( spep_0+6-3 + 612, 1, 29.9 );
setRotateKey( spep_0+6-3 + 616, 1, 29.9 );
setRotateKey( spep_0+6-3 + 618, 1, 30 );
setRotateKey( spep_0+6-1 + 624, 1, 30 );

--顔カットインのタイミング指定
spep_x=spep_0+6 +742;

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
SE016 = playSe( spep_0+6 + 226, 1189 );
SE017 = playSe( spep_0+6 + 232, 1110 );
SE018 = playSe( spep_0+6 + 232, 1000 );
setSeVolumeByWorkId( spep_0+6 + 232, SE018, 86 );

--悟天キック
SE019 = playSe( spep_0+6 + 252, 1189 );
SE020 = playSe( spep_0+6 + 254, 1001 );
setSeVolumeByWorkId( spep_0+6 + 254, SE020, 68 );
SE021 = playSe( spep_0+6 + 254, 1110 );

--二人でラッシュ
SE022 = playSe( spep_0+6 + 284, 1110 );
stopSe( spep_0+6 + 292, SE022, 14 );
SE023 = playSe( spep_0+6 + 284, 1006,"",0.5  );
setSeVolumeByWorkId( spep_0+6 + 284, SE023, 77 );
SE024 = playSe( spep_0+6 + 292, 1000 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 292, SE024, 68 );
SE025 = playSe( spep_0+6 + 292, 1110 );
stopSe( spep_0+6 + 300, SE025, 14 );
SE026 = playSe( spep_0+6 + 300, 1110 );
SE027 = playSe( spep_0+6 + 300, 1010 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 300, SE027, 64 );

--クリリン登場
SE028 = playSe( spep_0+6 + 348, 1004 );
SE029 = playSe( spep_0+6 + 348, 1207 );
setSeVolumeByWorkId( spep_0+6 + 348, SE029, 0 );
setSeVolumeByWorkId( spep_0+6 + 349, SE029, 5.3 );
setSeVolumeByWorkId( spep_0+6 + 350, SE029, 10.6 );
setSeVolumeByWorkId( spep_0+6 + 351, SE029, 15.9 );
setSeVolumeByWorkId( spep_0+6 + 352, SE029, 21.2 );
setSeVolumeByWorkId( spep_0+6 + 353, SE029, 26.5 );
setSeVolumeByWorkId( spep_0+6 + 354, SE029, 31.8 );
setSeVolumeByWorkId( spep_0+6 + 355, SE029, 37.1 );
setSeVolumeByWorkId( spep_0+6 + 356, SE029, 42.4 );
setSeVolumeByWorkId( spep_0+6 + 357, SE029, 47.7 );
setSeVolumeByWorkId( spep_0+6 + 358, SE029, 53 );
setSeVolumeByWorkId( spep_0+6 + 359, SE029, 58.3 );
setSeVolumeByWorkId( spep_0+6 + 360, SE029, 64 );
stopSe( spep_0+6 + 416, SE029, 10 );
setStartTimeMs( SE029,  0 );
SE015 = playSe( spep_0+6 + 350, 1255 );
setSeVolumeByWorkId( spep_0+6 + 350, SE015, 0 );
setSeVolumeByWorkId( spep_0+6 + 351, SE015, 16.7 );
setSeVolumeByWorkId( spep_0+6 + 352, SE015, 33.4 );
setSeVolumeByWorkId( spep_0+6 + 353, SE015, 50.1 );
setSeVolumeByWorkId( spep_0+6 + 354, SE015, 66.8 );
setSeVolumeByWorkId( spep_0+6 + 355, SE015, 83.5 );
setSeVolumeByWorkId( spep_0+6 + 356, SE015, 100 );
stopSe( spep_0+6 + 396, SE015, 20 );
setStartTimeMs( SE015,  2600 );
SE030 = playSe( spep_0+6 + 354, 1117 );
setSeVolumeByWorkId( spep_0+6 + 354, SE030, 126 );
stopSe( spep_0+6 + 416, SE030, 10 );

--クリリンキック
SE031 = playSe( spep_0+6 + 404, 1003 );
SE032 = playSe( spep_0+6 + 414, 1120 );

--顔カットイン
SE033 = playSe( spep_0+6 + 490, 1018 );

--挨拶
SE034 = playSe( spep_0+6 + 512, 1004 );
setPitch( spep_0+6 + 512, SE034, 200 );
setTimeStretch( SE034, 1.13, 10, 1 );
stopSe( spep_0+6 + 520, SE034, 6 );

--オーラ
SE035 = playSe( spep_0+6 + 578, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 578, SE035, 79 );
SE036 = playSe( spep_0+6 + 602, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 602, SE036, 79 );
SE037 = playSe( spep_0+6 + 626, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 626, SE037, 79 );

--トランクス構え
SE038 = playSe( spep_0+6 + 634, 1003 );
setSeVolumeByWorkId( spep_0+6 + 634, SE038, 65 );

--オーラ
SE039 = playSe( spep_0+6 + 650, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 650, SE039, 79 );

--クリリン構え
SE040 = playSe( spep_0+6 + 666, 1004 );
setSeVolumeByWorkId( spep_0+6 + 666, SE040, 65 );

--オーラ
SE041 = playSe( spep_0+6 + 674, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 674, SE041, 79 );
SE042 = playSe( spep_0+6 + 698, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 698, SE042, 79 );

--悟天構え
SE043 = playSe( spep_0+6 + 712, 1003 );
setSeVolumeByWorkId( spep_0+6 + 712, SE043, 78 );
setPitch( spep_0+6 + 712, SE043, 100 );
setTimeStretch( SE043, 1.07, 10, 1 );

--オーラ
SE044 = playSe( spep_0+6 + 722, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 722, SE044, 79 );
SE045 = playSe( spep_0+6 + 746, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 746, SE045, 63 );

--かめはめ波溜め
SE046 = playSe( spep_0+6 + 746, 1209 ,"",0.6);
SE047 = playSe( spep_0+6 + 746, 1210 ,"",0.6);

--オーラ
SE048 = playSe( spep_0+6 + 770, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 770, SE048, 63 );
SE050 = playSe( spep_0+6 + 794, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 794, SE050, 63 );
SE051 = playSe( spep_0+6 + 818, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 818, SE051, 63 );

--白フェード
entryFade( spep_0+6 + 826, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 836;
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

--かめはめ波溜め
stopSe( spep_1 + 4, SE046, 16 );
stopSe( spep_1 + 4, SE047, 6 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- かめはめ波発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2+6 +290, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2+6 +290, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2+6 +290, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2+6 +290, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2+6 +290, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2+6 +290, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2+6 +290, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2+6 +290, finish_b, 255 );

-- ** 黒フェード ** --
entryFade( spep_2 + 0, 0, 6, 0, 0.0, 0.0, 0.0, 255 );  --black fade

--敵の動き
setDisp( spep_2+6-3 + 138, 1, 1 );
setDisp( spep_2+6-1 + 174, 1, 0 );

changeAnime( spep_2+6-3 + 138, 1, 105 );

setMoveKey( spep_2+6-3 + 138, 1, 428.2, -100.9 , 0 );
setMoveKey( spep_2+6-3 + 139, 1, 428.2, -100.9 , 0 );
setMoveKey( spep_2+6-3 + 140, 1, 263.8, -114.6 , 0 );
setMoveKey( spep_2+6-3 + 141, 1, 263.8, -114.6 , 0 );
setMoveKey( spep_2+6-3 + 142, 1, 165.1, -122.9 , 0 );
setMoveKey( spep_2+6-3 + 143, 1, 165.1, -122.9 , 0 );
setMoveKey( spep_2+6-3 + 144, 1, 132.2, -125.5 , 0 );
setMoveKey( spep_2+6-3 + 145, 1, 132.2, -125.5 , 0 );
setMoveKey( spep_2+6-3 + 146, 1, 126.9, -123.6 , 0 );
setMoveKey( spep_2+6-3 + 147, 1, 126.9, -123.6 , 0 );
setMoveKey( spep_2+6-3 + 148, 1, 119.5, -121 , 0 );
setMoveKey( spep_2+6-3 + 149, 1, 119.5, -121 , 0 );
setMoveKey( spep_2+6-3 + 150, 1, 109.8, -117.6 , 0 );
setMoveKey( spep_2+6-3 + 151, 1, 109.8, -117.6 , 0 );
setMoveKey( spep_2+6-3 + 152, 1, 97.8, -113.5 , 0 );
setMoveKey( spep_2+6-3 + 153, 1, 97.8, -113.5 , 0 );
setMoveKey( spep_2+6-3 + 154, 1, 84, -108.8 , 0 );
setMoveKey( spep_2+6-3 + 155, 1, 84, -108.8 , 0 );
setMoveKey( spep_2+6-3 + 156, 1, 69.1, -103.7 , 0 );
setMoveKey( spep_2+6-3 + 157, 1, 69.1, -103.7 , 0 );
setMoveKey( spep_2+6-3 + 158, 1, 54.2, -98.5 , 0 );
setMoveKey( spep_2+6-3 + 159, 1, 54.2, -98.5 , 0 );
setMoveKey( spep_2+6-3 + 160, 1, 40, -93.7 , 0 );
setMoveKey( spep_2+6-3 + 161, 1, 40, -93.7 , 0 );
setMoveKey( spep_2+6-3 + 162, 1, 27.3, -89.3 , 0 );
setMoveKey( spep_2+6-3 + 162, 1, 27.3, -89.3 , 0 );
setMoveKey( spep_2+6-3 + 164, 1, 16.3, -85.5 , 0 );
setMoveKey( spep_2+6-3 + 165, 1, 16.3, -85.5 , 0 );
setMoveKey( spep_2+6-3 + 166, 1, 7.1, -82.3 , 0 );
setMoveKey( spep_2+6-3 + 167, 1, 7.1, -82.3 , 0 );
setMoveKey( spep_2+6-3 + 168, 1, -0.4, -79.7 , 0 );
setMoveKey( spep_2+6-3 + 169, 1, -0.4, -79.7 , 0 );
setMoveKey( spep_2+6-3 + 170, 1, -6.3, -77.6 , 0 );
setMoveKey( spep_2+6-3 + 171, 1, -6.3, -77.6 , 0 );
setMoveKey( spep_2+6-3 + 172, 1, -10.8, -50.3 , 0 );
setMoveKey( spep_2+6-3 + 173, 1, -10.8, -50.3 , 0 );
setMoveKey( spep_2+6-1 + 174, 1, -14.8, -84.9 , 0 );

setScaleKey( spep_2+6-3 + 138, 1, 0.3, 0.3 );
setScaleKey( spep_2+6-3 + 140, 1, 0.2, 0.2 );
setScaleKey( spep_2+6-3 + 142, 1, 0.14, 0.14 );
setScaleKey( spep_2+6-3 + 144, 1, 0.12, 0.12 );
setScaleKey( spep_2+6-3 + 148, 1, 0.12, 0.12 );
setScaleKey( spep_2+6-3 + 150, 1, 0.11, 0.11 );
setScaleKey( spep_2+6-3 + 154, 1, 0.11, 0.11 );
setScaleKey( spep_2+6-3 + 156, 1, 0.1, 0.1 );
setScaleKey( spep_2+6-3 + 158, 1, 0.1, 0.1 );
setScaleKey( spep_2+6-3 + 160, 1, 0.09, 0.09 );
setScaleKey( spep_2+6-3 + 164, 1, 0.09, 0.09 );
setScaleKey( spep_2+6-3 + 166, 1, 0.08, 0.08 );
setScaleKey( spep_2+6-1 + 174, 1, 0.08, 0.08 );

setRotateKey( spep_2+6-3 + 138, 1, 14.8 );
setRotateKey( spep_2+6-3 + 140, 1, 17.6 );
setRotateKey( spep_2+6-3 + 142, 1, 19.2 );
setRotateKey( spep_2+6-3 + 144, 1, 19.8 );
setRotateKey( spep_2+6-3 + 146, 1, 20.2 );
setRotateKey( spep_2+6-3 + 148, 1, 20.7 );
setRotateKey( spep_2+6-3 + 150, 1, 21.4 );
setRotateKey( spep_2+6-3 + 152, 1, 22.2 );
setRotateKey( spep_2+6-3 + 154, 1, 23.2 );
setRotateKey( spep_2+6-3 + 156, 1, 24.2 );
setRotateKey( spep_2+6-3 + 158, 1, 25.3 );
setRotateKey( spep_2+6-3 + 160, 1, 26.3 );
setRotateKey( spep_2+6-3 + 162, 1, 27.2 );
setRotateKey( spep_2+6-3 + 164, 1, 27.9 );
setRotateKey( spep_2+6-3 + 166, 1, 28.6 );
setRotateKey( spep_2+6-3 + 168, 1, 29.1 );
setRotateKey( spep_2+6-3 + 170, 1, 29.5 );
setRotateKey( spep_2+6-3 + 172, 1, 29.8 );
setRotateKey( spep_2+6-1 + 174, 1, 29.8 );

--SE
--発射前溜め
SE049 = playSe( spep_2 + 0, 1210 );
setSeVolumeByWorkId( spep_2 + 0, SE049, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE049, 50 );
setSeVolumeByWorkId( spep_2 + 2, SE049, 100 );
setStartTimeMs( SE049,  2167 );
stopSe( spep_2 + 38, SE049, 14 );

--かめはめ波発射
SE053 = playSe( spep_2+6 + 30, 1258 );
setSeVolumeByWorkId( spep_2+6 + 30, SE053, 59 );
SE054 = playSe( spep_2+6 + 34, 1213 );
setSeVolumeByWorkId( spep_2+6 + 34, SE054, 67 );
stopSe( spep_2+6 + 178, SE054, -90 );
SE055 = playSe( spep_2+6 + 34, 1024 ,"",0.6);

--かめはめ波発射２
SE056 = playSe( spep_2+6 + 114, 1284 ,"",0.6);
setSeVolumeByWorkId( spep_2+6 + 114, SE056, 112 );
stopSe( spep_2+6 + 180, SE056, 16 );
SE057 = playSe( spep_2+6 + 114, 1285 ,"",0.6);
setSeVolumeByWorkId( spep_2+6 + 114, SE057, 100 );
setPitch( spep_2+6 + 114, SE057, 900 );
setTimeStretch( SE057, 1.6, 10, 1 );
stopSe( spep_2+6 + 154, SE057, 26 );
SE058 = playSe( spep_2+6 + 114, 1027 );
setSeVolumeByWorkId( spep_2+6 + 114, SE058, 68 );

--水面爆発
SE059 = playSe( spep_2+6 + 170, 1023 );
setSeVolumeByWorkId( spep_2+6 + 170, SE059, 64 );
SE060 = playSe( spep_2+6 + 170, 1068 );
setSeVolumeByWorkId( spep_2+6 + 170, SE060, 84 );
SE061 = playSe( spep_2+6 + 170, 1168 );
setSeVolumeByWorkId( spep_2+6 + 170, SE061, 79 );
stopSe( spep_2+6 + 210, SE061, 30 );

--ラスト爆発
SE062 = playSe( spep_2+6 + 222, 1202 );
setSeVolumeByWorkId( spep_2+6 + 222, SE062, 126 );
SE063 = playSe( spep_2+6 + 222, 1201 );
setSeVolumeByWorkId( spep_2+6 + 222, SE063, 126 );
SE064 = playSe( spep_2+6 + 222, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 );
endPhase( spep_2 + 286 );
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- トランクス悟天登場〜かめはめ波溜め
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
tame_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_f, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 830, tame_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_f, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 830, tame_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_f, 0 );
setEffRotateKey( spep_0+6 + 830, tame_f, 0 );
setEffAlphaKey( spep_0 + 0, tame_f, 255 );
setEffAlphaKey( spep_0+6 + 830, tame_f, 255 );

-- ** エフェクト等 ** --
tame_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, tame_b, 0, 0, 0 );
setEffMoveKey( spep_0+6 + 830, tame_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame_b, -1.0, 1.0 );
setEffScaleKey( spep_0+6 + 830, tame_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame_b, 0 );
setEffRotateKey( spep_0+6 + 830, tame_b, 0 );
setEffAlphaKey( spep_0 + 0, tame_b, 255 );
setEffAlphaKey( spep_0+6 + 830, tame_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0+6 + 48, 1, 0 );

changeAnime( spep_0 + 0, 1, 117 );

setMoveKey( spep_0 + 0, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 1, 1, 0.2, 48 , 0 );
setMoveKey( spep_0 + 2, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 3, 1, 0.2, 41.8 , 0 );
setMoveKey( spep_0 + 4, 1, 0.2, 35.7 , 0 );
setMoveKey( spep_0 + 5, 1, 0.2, 35.7 , 0 );
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
SE003 = playSe( spep_0+6 + 52, 1004 );
SE004 = playSe( spep_0+6 + 52, 1116 );
stopSe( spep_0+6 + 88, SE004, 26 );
SE005 = playSe( spep_0+6 + 52, 1241 );
setSeVolumeByWorkId( spep_0+6 + 52, SE005, 0 );
setSeVolumeByWorkId( spep_0+6 + 53, SE005, 1.6 );
setSeVolumeByWorkId( spep_0+6 + 54, SE005, 3.2 );
setSeVolumeByWorkId( spep_0+6 + 55, SE005, 4.8 );
setSeVolumeByWorkId( spep_0+6 + 56, SE005, 6.4 );
setSeVolumeByWorkId( spep_0+6 + 57, SE005, 8 );
setSeVolumeByWorkId( spep_0+6 + 58, SE005, 9.6 );
setSeVolumeByWorkId( spep_0+6 + 59, SE005, 11.2 );
setSeVolumeByWorkId( spep_0+6 + 60, SE005, 12.8 );
setSeVolumeByWorkId( spep_0+6 + 61, SE005, 14.4 );
setSeVolumeByWorkId( spep_0+6 + 62, SE005, 16 );
setSeVolumeByWorkId( spep_0+6 + 63, SE005, 17.6 );
setSeVolumeByWorkId( spep_0+6 + 64, SE005, 19.2 );
setSeVolumeByWorkId( spep_0+6 + 65, SE005, 20.8 );
setSeVolumeByWorkId( spep_0+6 + 66, SE005, 22.4 );
setSeVolumeByWorkId( spep_0+6 + 67, SE005, 24 );
setSeVolumeByWorkId( spep_0+6 + 68, SE005, 25.6 );
setSeVolumeByWorkId( spep_0+6 + 69, SE005, 27.2 );
setSeVolumeByWorkId( spep_0+6 + 70, SE005, 28.8 );
setSeVolumeByWorkId( spep_0+6 + 71, SE005, 30.4 );
setSeVolumeByWorkId( spep_0+6 + 72, SE005, 32 );
setSeVolumeByWorkId( spep_0+6 + 73, SE005, 33.6 );
setSeVolumeByWorkId( spep_0+6 + 74, SE005, 35.2 );
setSeVolumeByWorkId( spep_0+6 + 75, SE005, 36.8 );
setSeVolumeByWorkId( spep_0+6 + 76, SE005, 39 );
setPitch( spep_0+6 + 52, SE005, -800 );
setTimeStretch( SE005, 0.47, 10, 1 );
SE006 = playSe( spep_0+6 + 52, 1183 );
setSeVolumeByWorkId( spep_0+6 + 52, SE006, 79 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 836, 0,  0, 0, 0, 255 ); --くろ 背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 96 ; --エンドフェイズのフレーム数を置き換える
    
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
setDisp( spep_0+8  + 346, 1, 0 );

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
setMoveKey( spep_0+8  + 346, 1, 20.6, 90.1 , 0 );

setScaleKey( spep_0+6 -3 + 208, 1, 1.5, 1.5 );
setScaleKey( spep_0+8 + 346, 1, 1.5, 1.5 );

setRotateKey( spep_0+6 -3 + 208, 1, 0 );
setRotateKey( spep_0+6 -3 + 233, 1, 0 );
setRotateKey( spep_0+6 -3 + 234, 1, 30 );
setRotateKey( spep_0+6 -3 + 259, 1, 30 );
setRotateKey( spep_0+6 -3 + 260, 1, 20 );
setRotateKey( spep_0+6 -3 + 285, 1, 20 );
setRotateKey( spep_0+6 -3 + 286, 1, 30 );
setRotateKey( spep_0+6 -3 + 291, 1, 30 );
setRotateKey( spep_0+6 -3 + 292, 1, 20 );
setRotateKey( spep_0+6 -3 + 295, 1, 20 )
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
setRotateKey( spep_0+8  + 346, 1, 35 );

--敵の動き
setDisp( spep_0+6 -3 + 398, 1, 1 );
setDisp( spep_0+6 -1 + 458, 1, 0 );

changeAnime( spep_0+6 -3 + 398, 1, 6 );
changeAnime( spep_0+6 -3 + 416, 1, 8 );
changeAnime( spep_0+6 -3 + 420, 1, 5 );

setMoveKey( spep_0+6-3 + 398, 1, 22.5, 86.9 , 0 );
setMoveKey( spep_0+6-3 + 400, 1, 20.5, 84.7 , 0 );
setMoveKey( spep_0+6-3 + 402, 1, 18.5, 82.5 , 0 );
setMoveKey( spep_0+6-3 + 404, 1, 16.5, 80.3 , 0 );
setMoveKey( spep_0+6-3 + 406, 1, 14.5, 78.1 , 0 );
setMoveKey( spep_0+6-3 + 408, 1, 12.5, 75.9 , 0 );
setMoveKey( spep_0+6-3 + 410, 1, 10.5, 73.7 , 0 );
setMoveKey( spep_0+6-3 + 412, 1, 8.5, 71.5 , 0 );
setMoveKey( spep_0+6-3 + 414, 1, 6.5, 69.3 , 0 );
setMoveKey( spep_0+6-3 + 415, 1, 6.5, 69.3 , 0 );
setMoveKey( spep_0+6-3 + 416, 1, -53, 41.8 , 0 );
setMoveKey( spep_0+6-3 + 419, 1, -44.1, 50.7 , 0 );
setMoveKey( spep_0+6-3 + 420, 1, -72.7, 33.8 , 0 );
setMoveKey( spep_0+6-3 + 422, 1, -102, 37.7 , 0 );
setMoveKey( spep_0+6-3 + 424, 1, -107, 24.6 , 0 );
setMoveKey( spep_0+6-3 + 426, 1, -115, 34.2 , 0 );
setMoveKey( spep_0+6-3 + 428, 1, -125.2, 24.3 , 0 );
setMoveKey( spep_0+6-3 + 430, 1, -117.5, 32.5 , 0 );
setMoveKey( spep_0+6-3 + 432, 1, -121.2, 31.9 , 0 );
setMoveKey( spep_0+6-3 + 434, 1, -124.3, 31.5 , 0 );
setMoveKey( spep_0+6-3 + 436, 1, -126.8, 31.1 , 0 );
setMoveKey( spep_0+6-3 + 438, 1, -128.9, 30.8 , 0 );
setMoveKey( spep_0+6-3 + 440, 1, -130.5, 30.5 , 0 );
setMoveKey( spep_0+6-3 + 442, 1, -131.9, 30.4 , 0 );
setMoveKey( spep_0+6-3 + 444, 1, -132.9, 30.2 , 0 );
setMoveKey( spep_0+6-3 + 446, 1, -133.6, 30.1 , 0 );
setMoveKey( spep_0+6-3 + 448, 1, -134.2, 30 , 0 );
setMoveKey( spep_0+6-3 + 450, 1, -134.5, 30 , 0 );
setMoveKey( spep_0+6-3 + 452, 1, -134.7, 29.9 , 0 );
setMoveKey( spep_0+6-3 + 454, 1, -134.8, 29.9 , 0 );
setMoveKey( spep_0+6-1 + 458, 1, -134.8, 29.9 , 0 );

setScaleKey( spep_0+6-3 + 398, 1, 1.4, 1.4 );
setScaleKey( spep_0+6-3 + 415, 1, 1.4, 1.4 );
setScaleKey( spep_0+6-3 + 416, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 419, 1, 1, 1 );
setScaleKey( spep_0+6-3 + 420, 1, 0.63, 0.63 );
setScaleKey( spep_0+6-3 + 422, 1, 0.5, 0.5 );
setScaleKey( spep_0+6-3 + 424, 1, 0.42, 0.42 );
setScaleKey( spep_0+6-3 + 426, 1, 0.36, 0.36 );
setScaleKey( spep_0+6-3 + 428, 1, 0.31, 0.31 );
setScaleKey( spep_0+6-3 + 430, 1, 0.27, 0.27 );
setScaleKey( spep_0+6-3 + 432, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 434, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 436, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 438, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 440, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 442, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 444, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 446, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 448, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-1 + 458, 1, 0.13, 0.13 );

setRotateKey( spep_0+6-3 + 398, 1, 30 );
setRotateKey( spep_0+6-3 + 415, 1, 30 );
setRotateKey( spep_0+6-3 + 416, 1, -45 );
setRotateKey( spep_0+6-3 + 417, 1, -45 );
setRotateKey( spep_0+6-3 + 418, 1, -55.2 );
setRotateKey( spep_0+6-3 + 419, 1, -55.2 );
setRotateKey( spep_0+6-3 + 420, 1, -45 );
setRotateKey( spep_0+6-3 + 448, 1, -45 );
setRotateKey( spep_0+6-1 + 458, 1, -45 );

--敵の動き
setDisp( spep_0+6 -3 + 580, 1, 1 );
setDisp( spep_0+6 -1 + 624, 1, 0 );

changeAnime( spep_0+6 -3 + 580, 1, 5 );

setMoveKey( spep_0+6-3 + 580, 1, -122.5, 88.8 , 0 );
setMoveKey( spep_0+6-3 + 582, 1, -124.1, 89.1 , 0 );
setMoveKey( spep_0+6-3 + 584, 1, -125.7, 89.5 , 0 );
setMoveKey( spep_0+6-3 + 586, 1, -127.2, 89.8 , 0 );
setMoveKey( spep_0+6-3 + 588, 1, -128.6, 90.2 , 0 );
setMoveKey( spep_0+6-3 + 590, 1, -130, 90.5 , 0 );
setMoveKey( spep_0+6-3 + 592, 1, -131.2, 90.8 , 0 );
setMoveKey( spep_0+6-3 + 594, 1, -132.4, 91.1 , 0 );
setMoveKey( spep_0+6-3 + 596, 1, -133.5, 91.4 , 0 );
setMoveKey( spep_0+6-3 + 598, 1, -134.5, 91.7 , 0 );
setMoveKey( spep_0+6-3 + 600, 1, -135.4, 91.9 , 0 );
setMoveKey( spep_0+6-3 + 602, 1, -136.3, 92.2 , 0 );
setMoveKey( spep_0+6-3 + 604, 1, -137.1, 92.4 , 0 );
setMoveKey( spep_0+6-3 + 606, 1, -137.8, 92.6 , 0 );
setMoveKey( spep_0+6-3 + 608, 1, -138.4, 92.8 , 0 );
setMoveKey( spep_0+6-3 + 610, 1, -139, 92.9 , 0 );
setMoveKey( spep_0+6-3 + 612, 1, -139.5, 93.1 , 0 );
setMoveKey( spep_0+6-3 + 614, 1, -139.9, 93.2 , 0 );
setMoveKey( spep_0+6-3 + 616, 1, -140.2, 93.3 , 0 );
setMoveKey( spep_0+6-3 + 618, 1, -140.5, 93.3 , 0 );
setMoveKey( spep_0+6-3 + 620, 1, -140.6, 93.4 , 0 );
setMoveKey( spep_0+6-1 + 624, 1, -140.8, 93.4 , 0 );

setScaleKey( spep_0+6-3 + 580, 1, 0.26, 0.26 );
setScaleKey( spep_0+6-3 + 582, 1, 0.25, 0.25 );
setScaleKey( spep_0+6-3 + 584, 1, 0.24, 0.24 );
setScaleKey( spep_0+6-3 + 586, 1, 0.22, 0.22 );
setScaleKey( spep_0+6-3 + 588, 1, 0.21, 0.21 );
setScaleKey( spep_0+6-3 + 590, 1, 0.2, 0.2 );
setScaleKey( spep_0+6-3 + 592, 1, 0.19, 0.19 );
setScaleKey( spep_0+6-3 + 594, 1, 0.18, 0.18 );
setScaleKey( spep_0+6-3 + 596, 1, 0.17, 0.17 );
setScaleKey( spep_0+6-3 + 598, 1, 0.16, 0.16 );
setScaleKey( spep_0+6-3 + 600, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 602, 1, 0.15, 0.15 );
setScaleKey( spep_0+6-3 + 604, 1, 0.14, 0.14 );
setScaleKey( spep_0+6-3 + 606, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 608, 1, 0.13, 0.13 );
setScaleKey( spep_0+6-3 + 610, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 614, 1, 0.12, 0.12 );
setScaleKey( spep_0+6-3 + 616, 1, 0.11, 0.11 );
setScaleKey( spep_0+6-1 + 624, 1, 0.11, 0.11 );

setRotateKey( spep_0+6-3 + 580, 1, -28 );
setRotateKey( spep_0+6-3 + 582, 1, -28.2 );
setRotateKey( spep_0+6-3 + 584, 1, -28.3 );
setRotateKey( spep_0+6-3 + 586, 1, -28.5 );
setRotateKey( spep_0+6-3 + 588, 1, -28.7 );
setRotateKey( spep_0+6-3 + 590, 1, -28.8 );
setRotateKey( spep_0+6-3 + 592, 1, -28.9 );
setRotateKey( spep_0+6-3 + 594, 1, -29.1 );
setRotateKey( spep_0+6-3 + 596, 1, -29.2 );
setRotateKey( spep_0+6-3 + 598, 1, -29.3 );
setRotateKey( spep_0+6-3 + 600, 1, -29.4 );
setRotateKey( spep_0+6-3 + 602, 1, -29.5 );
setRotateKey( spep_0+6-3 + 604, 1, -29.6 );
setRotateKey( spep_0+6-3 + 606, 1, -29.7 );
setRotateKey( spep_0+6-3 + 608, 1, -29.7 );
setRotateKey( spep_0+6-3 + 610, 1, -29.8 );
setRotateKey( spep_0+6-3 + 612, 1, -29.9 );
setRotateKey( spep_0+6-3 + 616, 1, -29.9 );
setRotateKey( spep_0+6-3 + 618, 1, -30 );
setRotateKey( spep_0+6-1 + 624, 1, -30 );

--顔カットインのタイミング指定
spep_x=spep_0+6 +742;

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
SE016 = playSe( spep_0+6 + 226, 1189 );
SE017 = playSe( spep_0+6 + 232, 1110 );
SE018 = playSe( spep_0+6 + 232, 1000 );
setSeVolumeByWorkId( spep_0+6 + 232, SE018, 86 );

--悟天キック
SE019 = playSe( spep_0+6 + 252, 1189 );
SE020 = playSe( spep_0+6 + 254, 1001 );
setSeVolumeByWorkId( spep_0+6 + 254, SE020, 68 );
SE021 = playSe( spep_0+6 + 254, 1110 );

--二人でラッシュ
SE022 = playSe( spep_0+6 + 284, 1110 );
stopSe( spep_0+6 + 292, SE022, 14 );
SE023 = playSe( spep_0+6 + 284, 1006,"",0.5  );
setSeVolumeByWorkId( spep_0+6 + 284, SE023, 77 );
SE024 = playSe( spep_0+6 + 292, 1000 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 292, SE024, 68 );
SE025 = playSe( spep_0+6 + 292, 1110 );
stopSe( spep_0+6 + 300, SE025, 14 );
SE026 = playSe( spep_0+6 + 300, 1110 );
SE027 = playSe( spep_0+6 + 300, 1010 ,"",0.5);
setSeVolumeByWorkId( spep_0+6 + 300, SE027, 64 );

--クリリン登場
SE028 = playSe( spep_0+6 + 348, 1004 );
SE029 = playSe( spep_0+6 + 348, 1207 );
setSeVolumeByWorkId( spep_0+6 + 348, SE029, 0 );
setSeVolumeByWorkId( spep_0+6 + 349, SE029, 5.3 );
setSeVolumeByWorkId( spep_0+6 + 350, SE029, 10.6 );
setSeVolumeByWorkId( spep_0+6 + 351, SE029, 15.9 );
setSeVolumeByWorkId( spep_0+6 + 352, SE029, 21.2 );
setSeVolumeByWorkId( spep_0+6 + 353, SE029, 26.5 );
setSeVolumeByWorkId( spep_0+6 + 354, SE029, 31.8 );
setSeVolumeByWorkId( spep_0+6 + 355, SE029, 37.1 );
setSeVolumeByWorkId( spep_0+6 + 356, SE029, 42.4 );
setSeVolumeByWorkId( spep_0+6 + 357, SE029, 47.7 );
setSeVolumeByWorkId( spep_0+6 + 358, SE029, 53 );
setSeVolumeByWorkId( spep_0+6 + 359, SE029, 58.3 );
setSeVolumeByWorkId( spep_0+6 + 360, SE029, 64 );
stopSe( spep_0+6 + 416, SE029, 10 );
setStartTimeMs( SE029,  0 );
SE015 = playSe( spep_0+6 + 350, 1255 );
setSeVolumeByWorkId( spep_0+6 + 350, SE015, 0 );
setSeVolumeByWorkId( spep_0+6 + 351, SE015, 16.7 );
setSeVolumeByWorkId( spep_0+6 + 352, SE015, 33.4 );
setSeVolumeByWorkId( spep_0+6 + 353, SE015, 50.1 );
setSeVolumeByWorkId( spep_0+6 + 354, SE015, 66.8 );
setSeVolumeByWorkId( spep_0+6 + 355, SE015, 83.5 );
setSeVolumeByWorkId( spep_0+6 + 356, SE015, 100 );
stopSe( spep_0+6 + 396, SE015, 20 );
setStartTimeMs( SE015,  2600 );
SE030 = playSe( spep_0+6 + 354, 1117 );
setSeVolumeByWorkId( spep_0+6 + 354, SE030, 126 );
stopSe( spep_0+6 + 416, SE030, 10 );

--クリリンキック
SE031 = playSe( spep_0+6 + 404, 1003 );
SE032 = playSe( spep_0+6 + 414, 1120 );

--顔カットイン
SE033 = playSe( spep_0+6 + 490, 1018 );

--挨拶
SE034 = playSe( spep_0+6 + 512, 1004 );
setPitch( spep_0+6 + 512, SE034, 200 );
setTimeStretch( SE034, 1.13, 10, 1 );
stopSe( spep_0+6 + 520, SE034, 6 );

--オーラ
SE035 = playSe( spep_0+6 + 578, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 578, SE035, 79 );
SE036 = playSe( spep_0+6 + 602, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 602, SE036, 79 );
SE037 = playSe( spep_0+6 + 626, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 626, SE037, 79 );

--トランクス構え
SE038 = playSe( spep_0+6 + 634, 1003 );
setSeVolumeByWorkId( spep_0+6 + 634, SE038, 65 );

--オーラ
SE039 = playSe( spep_0+6 + 650, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 650, SE039, 79 );

--クリリン構え
SE040 = playSe( spep_0+6 + 666, 1004 );
setSeVolumeByWorkId( spep_0+6 + 666, SE040, 65 );

--オーラ
SE041 = playSe( spep_0+6 + 674, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 674, SE041, 79 );
SE042 = playSe( spep_0+6 + 698, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 698, SE042, 79 );

--悟天構え
SE043 = playSe( spep_0+6 + 712, 1003 );
setSeVolumeByWorkId( spep_0+6 + 712, SE043, 78 );
setPitch( spep_0+6 + 712, SE043, 100 );
setTimeStretch( SE043, 1.07, 10, 1 );

--オーラ
SE044 = playSe( spep_0+6 + 722, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 722, SE044, 79 );
SE045 = playSe( spep_0+6 + 746, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 746, SE045, 63 );

--かめはめ波溜め
SE046 = playSe( spep_0+6 + 746, 1209 ,"",0.6);
SE047 = playSe( spep_0+6 + 746, 1210 ,"",0.6);

--オーラ
SE048 = playSe( spep_0+6 + 770, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 770, SE048, 63 );
SE050 = playSe( spep_0+6 + 794, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 794, SE050, 63 );
SE051 = playSe( spep_0+6 + 818, 1036 ,"",0.6);
setSeVolumeByWorkId( spep_0+6 + 818, SE051, 63 );

--白フェード
entryFade( spep_0+6 + 826, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 836;
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

--かめはめ波溜め
stopSe( spep_1 + 4, SE046, 16 );
stopSe( spep_1 + 4, SE047, 6 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- かめはめ波発射〜爆発
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2+6 +290, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2+6 +290, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2+6 +290, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2+6 +290, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2+6 +290, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2+6 +290, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2+6 +290, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2+6 +290, finish_b, 255 );

-- ** 黒フェード ** --
entryFade( spep_2 + 0, 0, 6, 0, 0.0, 0.0, 0.0, 255 );  --black fade

--敵の動き
setDisp( spep_2+6-3 + 138, 1, 1 );
setDisp( spep_2+6-1 + 174, 1, 0 );

changeAnime( spep_2+6-3 + 138, 1, 105 );

setMoveKey( spep_2+6-3 + 138, 1, 428.2, -100.9 , 0 );
setMoveKey( spep_2+6-3 + 139, 1, 428.2, -100.9 , 0 );
setMoveKey( spep_2+6-3 + 140, 1, 263.8, -114.6 , 0 );
setMoveKey( spep_2+6-3 + 141, 1, 263.8, -114.6 , 0 );
setMoveKey( spep_2+6-3 + 142, 1, 165.1, -122.9 , 0 );
setMoveKey( spep_2+6-3 + 143, 1, 165.1, -122.9 , 0 );
setMoveKey( spep_2+6-3 + 144, 1, 132.2, -125.5 , 0 );
setMoveKey( spep_2+6-3 + 145, 1, 132.2, -125.5 , 0 );
setMoveKey( spep_2+6-3 + 146, 1, 126.9, -123.6 , 0 );
setMoveKey( spep_2+6-3 + 147, 1, 126.9, -123.6 , 0 );
setMoveKey( spep_2+6-3 + 148, 1, 119.5, -121 , 0 );
setMoveKey( spep_2+6-3 + 149, 1, 119.5, -121 , 0 );
setMoveKey( spep_2+6-3 + 150, 1, 109.8, -117.6 , 0 );
setMoveKey( spep_2+6-3 + 151, 1, 109.8, -117.6 , 0 );
setMoveKey( spep_2+6-3 + 152, 1, 97.8, -113.5 , 0 );
setMoveKey( spep_2+6-3 + 153, 1, 97.8, -113.5 , 0 );
setMoveKey( spep_2+6-3 + 154, 1, 84, -108.8 , 0 );
setMoveKey( spep_2+6-3 + 155, 1, 84, -108.8 , 0 );
setMoveKey( spep_2+6-3 + 156, 1, 69.1, -103.7 , 0 );
setMoveKey( spep_2+6-3 + 157, 1, 69.1, -103.7 , 0 );
setMoveKey( spep_2+6-3 + 158, 1, 54.2, -98.5 , 0 );
setMoveKey( spep_2+6-3 + 159, 1, 54.2, -98.5 , 0 );
setMoveKey( spep_2+6-3 + 160, 1, 40, -93.7 , 0 );
setMoveKey( spep_2+6-3 + 161, 1, 40, -93.7 , 0 );
setMoveKey( spep_2+6-3 + 162, 1, 27.3, -89.3 , 0 );
setMoveKey( spep_2+6-3 + 162, 1, 27.3, -89.3 , 0 );
setMoveKey( spep_2+6-3 + 164, 1, 16.3, -85.5 , 0 );
setMoveKey( spep_2+6-3 + 165, 1, 16.3, -85.5 , 0 );
setMoveKey( spep_2+6-3 + 166, 1, 7.1, -82.3 , 0 );
setMoveKey( spep_2+6-3 + 167, 1, 7.1, -82.3 , 0 );
setMoveKey( spep_2+6-3 + 168, 1, -0.4, -79.7 , 0 );
setMoveKey( spep_2+6-3 + 169, 1, -0.4, -79.7 , 0 );
setMoveKey( spep_2+6-3 + 170, 1, -6.3, -77.6 , 0 );
setMoveKey( spep_2+6-3 + 171, 1, -6.3, -77.6 , 0 );
setMoveKey( spep_2+6-3 + 172, 1, -10.8, -50.3 , 0 );
setMoveKey( spep_2+6-3 + 173, 1, -10.8, -50.3 , 0 );
setMoveKey( spep_2+6-1 + 174, 1, -14.8, -84.9 , 0 );

setScaleKey( spep_2+6-3 + 138, 1, 0.3, 0.3 );
setScaleKey( spep_2+6-3 + 140, 1, 0.2, 0.2 );
setScaleKey( spep_2+6-3 + 142, 1, 0.14, 0.14 );
setScaleKey( spep_2+6-3 + 144, 1, 0.12, 0.12 );
setScaleKey( spep_2+6-3 + 148, 1, 0.12, 0.12 );
setScaleKey( spep_2+6-3 + 150, 1, 0.11, 0.11 );
setScaleKey( spep_2+6-3 + 154, 1, 0.11, 0.11 );
setScaleKey( spep_2+6-3 + 156, 1, 0.1, 0.1 );
setScaleKey( spep_2+6-3 + 158, 1, 0.1, 0.1 );
setScaleKey( spep_2+6-3 + 160, 1, 0.09, 0.09 );
setScaleKey( spep_2+6-3 + 164, 1, 0.09, 0.09 );
setScaleKey( spep_2+6-3 + 166, 1, 0.08, 0.08 );
setScaleKey( spep_2+6-1 + 174, 1, 0.08, 0.08 );

setRotateKey( spep_2+6-3 + 138, 1, 14.8 );
setRotateKey( spep_2+6-3 + 140, 1, 17.6 );
setRotateKey( spep_2+6-3 + 142, 1, 19.2 );
setRotateKey( spep_2+6-3 + 144, 1, 19.8 );
setRotateKey( spep_2+6-3 + 146, 1, 20.2 );
setRotateKey( spep_2+6-3 + 148, 1, 20.7 );
setRotateKey( spep_2+6-3 + 150, 1, 21.4 );
setRotateKey( spep_2+6-3 + 152, 1, 22.2 );
setRotateKey( spep_2+6-3 + 154, 1, 23.2 );
setRotateKey( spep_2+6-3 + 156, 1, 24.2 );
setRotateKey( spep_2+6-3 + 158, 1, 25.3 );
setRotateKey( spep_2+6-3 + 160, 1, 26.3 );
setRotateKey( spep_2+6-3 + 162, 1, 27.2 );
setRotateKey( spep_2+6-3 + 164, 1, 27.9 );
setRotateKey( spep_2+6-3 + 166, 1, 28.6 );
setRotateKey( spep_2+6-3 + 168, 1, 29.1 );
setRotateKey( spep_2+6-3 + 170, 1, 29.5 );
setRotateKey( spep_2+6-3 + 172, 1, 29.8 );
setRotateKey( spep_2+6-1 + 174, 1, 29.8 );

--SE
--発射前溜め
SE049 = playSe( spep_2 + 0, 1210 );
setSeVolumeByWorkId( spep_2 + 0, SE049, 0 );
setSeVolumeByWorkId( spep_2 + 1, SE049, 50 );
setSeVolumeByWorkId( spep_2 + 2, SE049, 100 );
setStartTimeMs( SE049,  2167 );
stopSe( spep_2 + 38, SE049, 14 );

--かめはめ波発射
SE053 = playSe( spep_2+6 + 30, 1258 );
setSeVolumeByWorkId( spep_2+6 + 30, SE053, 59 );
SE054 = playSe( spep_2+6 + 34, 1213 );
setSeVolumeByWorkId( spep_2+6 + 34, SE054, 67 );
stopSe( spep_2+6 + 178, SE054, -90 );
SE055 = playSe( spep_2+6 + 34, 1024 ,"",0.6);

--かめはめ波発射２
SE056 = playSe( spep_2+6 + 114, 1284 ,"",0.6);
setSeVolumeByWorkId( spep_2+6 + 114, SE056, 112 );
stopSe( spep_2+6 + 180, SE056, 16 );
SE057 = playSe( spep_2+6 + 114, 1285 ,"",0.6);
setSeVolumeByWorkId( spep_2+6 + 114, SE057, 100 );
setPitch( spep_2+6 + 114, SE057, 900 );
setTimeStretch( SE057, 1.6, 10, 1 );
stopSe( spep_2+6 + 154, SE057, 26 );
SE058 = playSe( spep_2+6 + 114, 1027 );
setSeVolumeByWorkId( spep_2+6 + 114, SE058, 68 );

--水面爆発
SE059 = playSe( spep_2+6 + 170, 1023 );
setSeVolumeByWorkId( spep_2+6 + 170, SE059, 64 );
SE060 = playSe( spep_2+6 + 170, 1068 );
setSeVolumeByWorkId( spep_2+6 + 170, SE060, 84 );
SE061 = playSe( spep_2+6 + 170, 1168 );
setSeVolumeByWorkId( spep_2+6 + 170, SE061, 79 );
stopSe( spep_2+6 + 210, SE061, 30 );

--ラスト爆発
SE062 = playSe( spep_2+6 + 222, 1202 );
setSeVolumeByWorkId( spep_2+6 + 222, SE062, 126 );
SE063 = playSe( spep_2+6 + 222, 1201 );
setSeVolumeByWorkId( spep_2+6 + 222, SE063, 126 );
SE064 = playSe( spep_2+6 + 222, 1159 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 176 );
endPhase( spep_2 + 286 );
end