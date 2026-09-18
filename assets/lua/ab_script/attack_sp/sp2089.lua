--1020750:ターレス軍団_クラッシャージェノサイド
--sp_effect_b4_00159
--sp2089

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
SP_01=	156150 ;-- ターレス軍団登場〜ターレス登場
SP_02=	156151 ;-- ターレス軍団登場〜ターレス登場
SP_03=	156152 ;-- ターレス連続気弾〜フィニッシュ
SP_04=	156153 ;-- ターレス連続気弾〜フィニッシュ
SP_05=	156154 ;-- KO

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

adjustAttackerLabel( 0, 205);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ターレス軍団登場〜ターレス登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 408, appearance_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, appearance_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance_f, 0 );
setEffRotateKey( spep_0 + 408, appearance_f, 0 );
setEffAlphaKey( spep_0 + 0, appearance_f, 255 );
setEffAlphaKey( spep_0 + 408, appearance_f, 255 );

-- ** エフェクト等 ** --
appearance_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 408, appearance_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 408, appearance_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance_b, 0 );
setEffRotateKey( spep_0 + 408, appearance_b, 0 );
setEffAlphaKey( spep_0 + 0, appearance_b, 255 );
setEffAlphaKey( spep_0 + 408, appearance_b, 255 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 89 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 410, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 112.3, -188.6 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.54, 2.54 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 84, 1, 1);
setDisp( spep_0-3 + 172, 1, 0);

changeAnime( spep_0-3 + 84, 1, 1);
changeAnime( spep_0-3 + 108, 1, 3);
changeAnime( spep_0-3 + 114, 1, 104);
changeAnime( spep_0-3 + 140, 1, 106);

setMoveKey( spep_0-3 + 84, 1, -89.9, -45 , 0 );
setMoveKey( spep_0-3 + 107, 1, -89.9, -45 , 0 );
setMoveKey( spep_0-3 + 108, 1, -26.9, -43.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, -5, -37.2 , 0 );
setMoveKey( spep_0-3 + 112, 1, 15.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 113, 1, 15.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 114, 1, 22.5, -29.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, 26.5, -25.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, 30.1, -22.3 , 0 );
setMoveKey( spep_0-3 + 120, 1, 33.2, -19.1 , 0 );
setMoveKey( spep_0-3 + 122, 1, 35.9, -16.4 , 0 );
setMoveKey( spep_0-3 + 124, 1, 38.3, -14.1 , 0 );
setMoveKey( spep_0-3 + 126, 1, 40.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 128, 1, 41.6, -10.7 , 0 );
setMoveKey( spep_0-3 + 130, 1, 42.7, -9.7 , 0 );
setMoveKey( spep_0-3 + 132, 1, 43.3, -9.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, 43.5, -8.9 , 0 );
setMoveKey( spep_0-3 + 139, 1, 43.5, -8.9 , 0 );
setMoveKey( spep_0-3 + 140, 1, -130.5, -22.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, -154.3, -32.5 , 0 );
setMoveKey( spep_0-3 + 144, 1, -159.3, -37.3 , 0 );
setMoveKey( spep_0-3 + 146, 1, -170.6, -42.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, -186.2, -49.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, -185.1, -50.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, -194.1, -54.1 , 0 );
setMoveKey( spep_0-3 + 154, 1, -191.2, -52.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, -205.8, -60.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, -252.6, -84.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, -330.7, -124.9 , 0 );
setMoveKey( spep_0-3 + 162, 1, -439.9, -181 , 0 );
setMoveKey( spep_0-3 + 164, 1, -572.6, -249.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, -681.9, -305.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, -759.9, -345.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, -806.7, -369.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, -822.3, -377.5 , 0 );

setScaleKey( spep_0-3 + 84, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 107, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 108, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 110, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_0-3 + 114, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 139, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 172, 1, 2.6, 2.6 );

setRotateKey( spep_0-3 + 84, 1, 0 );
setRotateKey( spep_0-3 + 107, 1, 0 );
setRotateKey( spep_0-3 + 108, 1, -15 );
setRotateKey( spep_0-3 + 113, 1, -15 );
setRotateKey( spep_0-3 + 114, 1, 0 );
setRotateKey( spep_0-3 + 139, 1, 0 );
setRotateKey( spep_0-3 + 140, 1, -60 );
setRotateKey( spep_0-3 + 142, 1, -60.1 );
setRotateKey( spep_0-3 + 144, 1, -60.1 );
setRotateKey( spep_0-3 + 146, 1, -60.2 );
setRotateKey( spep_0-3 + 148, 1, -60.2 );
setRotateKey( spep_0-3 + 150, 1, -60.3 );
setRotateKey( spep_0-3 + 154, 1, -60.3 );
setRotateKey( spep_0-3 + 156, 1, -60.7 );
setRotateKey( spep_0-3 + 158, 1, -61.8 );
setRotateKey( spep_0-3 + 160, 1, -63.6 );
setRotateKey( spep_0-3 + 162, 1, -66.1 );
setRotateKey( spep_0-3 + 164, 1, -69.2 );
setRotateKey( spep_0-3 + 166, 1, -71.7 );
setRotateKey( spep_0-3 + 168, 1, -73.5 );
setRotateKey( spep_0-3 + 170, 1, -74.6 );
setRotateKey( spep_0-3 + 172, 1, -75 );

--敵の動き
setDisp( spep_0-3 + 174, 1, 1);
setDisp( spep_0-3 + 216, 1, 0);

changeAnime( spep_0-3 + 174, 1, 106);
changeAnime( spep_0-3 + 188, 1, 108);

setMoveKey( spep_0-3 + 174, 1, 699.8, 591.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, 596.6, 483.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, 493.5, 376.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, 390.4, 268.6 , 0 );
setMoveKey( spep_0-3 + 182, 1, 287.2, 161 , 0 );
setMoveKey( spep_0-3 + 184, 1, 184.1, 53.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, 81, -54.3 , 0 );
setMoveKey( spep_0-3 + 187, 1, 81, -54.3 , 0 );

setMoveKey( spep_0-3 + 188, 1, 164.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, 163.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, 171.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 194, 1, 186.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, 182.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 210.3, -53.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, 230.1, -53.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, 281.9, -53.8 , 0 );
setMoveKey( spep_0-3 + 204, 1, 325.5, -53.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, 391.2, -53.9 , 0 );
setMoveKey( spep_0-3 + 208, 1, 468.7, -53.9 , 0 );
setMoveKey( spep_0-3 + 210, 1, 558.2, -53.9 , 0 );
setMoveKey( spep_0-3 + 212, 1, 659.6, -53.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, 772.9, -53.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, 898.1, -53.9 , 0 );

setScaleKey( spep_0-3 + 174, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 187, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 188, 1, 3.0, 3.0 );
setScaleKey( spep_0-3 + 216, 1, 3.0, 3.0 );

setRotateKey( spep_0-3 + 174, 1, -70 );
setRotateKey( spep_0-3 + 187, 1, -70 );
setRotateKey( spep_0-3 + 188, 1, 15 );
setRotateKey( spep_0-3 + 216, 1, 15 );

--敵の動き
setDisp( spep_0-3 + 232, 1, 1);
setDisp( spep_0-3 + 326, 1, 0);

changeAnime( spep_0-3 + 254, 1, 5);
changeAnime( spep_0-3 + 296, 1, 107);

setMoveKey( spep_0-3 + 232, 1, -923.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, -899, -53.8 , 0 );
setMoveKey( spep_0-3 + 236, 1, -824.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 238, 1, -700.2, -53.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, -526.3, -53.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, -315.1, -53.8 , 0 );
setMoveKey( spep_0-3 + 244, 1, -141.2, -53.8 , 0 );
setMoveKey( spep_0-3 + 246, 1, -17, -53.8 , 0 );
setMoveKey( spep_0-3 + 248, 1, 57.6, -53.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, 82.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 253, 1, 82.4, -53.8 , 0 );

setMoveKey( spep_0-3 + 254, 1, -10, 3 , 0 );
setMoveKey( spep_0-3 + 256, 1, 0, -6.8 , 0 );
setMoveKey( spep_0-3 + 258, 1, -0.2, -13.9 , 0 );
setMoveKey( spep_0-3 + 260, 1, -10.7, -16.6 , 0 );
setMoveKey( spep_0-3 + 262, 1, -2.6, -25.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, -18.3, -5.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, -12.5, -20.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, -17.8, -15.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, -11.9, -11.9 , 0 );
setMoveKey( spep_0-3 + 272, 1, -20.3, -6.1 , 0 );
setMoveKey( spep_0-3 + 274, 1, -13.5, 0.6 , 0 );
setMoveKey( spep_0-3 + 276, 1, -17.5, -3.3 , 0 );
setMoveKey( spep_0-3 + 278, 1, -15.1, 8.5 , 0 );
setMoveKey( spep_0-3 + 280, 1, -20.6, 2.6 , 0 );
setMoveKey( spep_0-3 + 282, 1, -16.3, 10 , 0 );
setMoveKey( spep_0-3 + 284, 1, -15.7, 4.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, -18.9, 10.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, -18.5, 2.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, -14.4, 9.8 , 0 );
setMoveKey( spep_0-3 + 292, 1, -21, 8.5 , 0 );
setMoveKey( spep_0-3 + 294, 1, -15.6, 7 , 0 );
setMoveKey( spep_0-3 + 295, 1, -15.6, 7 , 0 );

setMoveKey( spep_0-3 + 296, 1, -100.9, -454.4 , 0 );
setMoveKey( spep_0-3 + 298, 1, -106.7, -446.2 , 0 );
setMoveKey( spep_0-3 + 300, 1, -106.2, -449.4 , 0 );
setMoveKey( spep_0-3 + 302, 1, -99.2, -461.5 , 0 );
setMoveKey( spep_0-3 + 304, 1, -103.7, -452.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, -96.8, -461.3 , 0 );
setMoveKey( spep_0-3 + 308, 1, -94.6, -458.1 , 0 );
setMoveKey( spep_0-3 + 310, 1, -93.9, -442.1 , 0 );
setMoveKey( spep_0-3 + 312, 1, -91, -442.5 , 0 );
setMoveKey( spep_0-3 + 314, 1, -87.9, -418.6 , 0 );
setMoveKey( spep_0-3 + 316, 1, -84.5, -409.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, -81.1, -373.6 , 0 );
setMoveKey( spep_0-3 + 320, 1, -77.7, -340.1 , 0 );
setMoveKey( spep_0-3 + 322, 1, -74.4, -297.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, -71.4, -244.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, -68.8, -179.7 , 0 );

setScaleKey( spep_0-3 + 232, 1, 3.0, 3.0 );
setScaleKey( spep_0-3 + 253, 1, 3.0, 3.0 );

setScaleKey( spep_0-3 + 254, 1, 2.8+0.2, 2.8+0.2 );
setScaleKey( spep_0-3 + 256, 1, 2.82+0.2, 2.82+0.2 );
setScaleKey( spep_0-3 + 258, 1, 2.85+0.2, 2.85+0.2 );
setScaleKey( spep_0-3 + 260, 1, 2.89+0.2, 2.89+0.2 );
setScaleKey( spep_0-3 + 262, 1, 2.9+0.2, 2.9+0.2 );
setScaleKey( spep_0-3 + 264, 1, 2.81+0.2, 2.81+0.2 );
setScaleKey( spep_0-3 + 266, 1, 2.85+0.2, 2.85+0.2 );
setScaleKey( spep_0-3 + 268, 1, 2.83+0.2, 2.83+0.2 );
setScaleKey( spep_0-3 + 270, 1, 2.8+0.2, 2.8+0.2 );
setScaleKey( spep_0-3 + 272, 1, 2.77+0.2, 2.77+0.2 );
setScaleKey( spep_0-3 + 274, 1, 2.75+0.2, 2.75+0.2 );
setScaleKey( spep_0-3 + 276, 1, 2.73+0.2, 2.73+0.2 );
setScaleKey( spep_0-3 + 278, 1, 2.72+0.2, 2.72+0.2 );
setScaleKey( spep_0-3 + 280, 1, 2.71+0.2, 2.71+0.2 );
setScaleKey( spep_0-3 + 282, 1, 2.71+0.2, 2.71+0.2 );
setScaleKey( spep_0-3 + 284, 1, 2.7+0.2, 2.7+0.2 );
setScaleKey( spep_0-3 + 295, 1, 2.7+0.2, 2.7+0.2 );

setScaleKey( spep_0-3 + 296, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 298, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 300, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 302, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 304, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 306, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 308, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 310, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 312, 1, 2, 2 );
setScaleKey( spep_0-3 + 314, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 316, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 318, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 320, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 322, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 324, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 326, 1, 1.68, 1.68 );

setRotateKey( spep_0-3 + 232, 1, 15 );
setRotateKey( spep_0-3 + 253, 1, 15 );

setRotateKey( spep_0-3 + 254, 1, 0 );
setRotateKey( spep_0-3 + 256, 1, 0 );
setRotateKey( spep_0-3 + 258, 1, -0.1 );
setRotateKey( spep_0-3 + 260, 1, -0.3 );
setRotateKey( spep_0-3 + 262, 1, -1 );
setRotateKey( spep_0-3 + 264, 1, -2.8 );
setRotateKey( spep_0-3 + 266, 1, -3.8 );
setRotateKey( spep_0-3 + 268, 1, -4.3 );
setRotateKey( spep_0-3 + 270, 1, -4.6 );
setRotateKey( spep_0-3 + 272, 1, -4.7 );
setRotateKey( spep_0-3 + 274, 1, -4.8 );
setRotateKey( spep_0-3 + 276, 1, -4.9 );
setRotateKey( spep_0-3 + 278, 1, -4.9 );
setRotateKey( spep_0-3 + 280, 1, -5 );
setRotateKey( spep_0-3 + 295, 1, -5 );

setRotateKey( spep_0-3 + 296, 1, -60.1 );
setRotateKey( spep_0-3 + 298, 1, -60.1 );
setRotateKey( spep_0-3 + 300, 1, -59.9 );
setRotateKey( spep_0-3 + 302, 1, -59.5 );
setRotateKey( spep_0-3 + 304, 1, -59.1 );
setRotateKey( spep_0-3 + 306, 1, -58.4 );
setRotateKey( spep_0-3 + 308, 1, -57.7 );
setRotateKey( spep_0-3 + 310, 1, -56.8 );
setRotateKey( spep_0-3 + 312, 1, -55.8 );
setRotateKey( spep_0-3 + 314, 1, -54.6 );
setRotateKey( spep_0-3 + 316, 1, -53.4 );
setRotateKey( spep_0-3 + 318, 1, -51.9 );
setRotateKey( spep_0-3 + 320, 1, -50.4 );
setRotateKey( spep_0-3 + 322, 1, -48.7 );
setRotateKey( spep_0-3 + 324, 1, -46.8 );
setRotateKey( spep_0-3 + 326, 1, -44.9 );

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 64,  10011, 18, 0x100, -1, 0, 19.1, 164.4 );--シュンッ
setEffShake( spep_0-3 + 64, ctsyun, 18, 10 );

setEffMoveKey( spep_0-3 + 64, ctsyun, 19.1, 164.4 , 0 );
setEffMoveKey( spep_0-3 + 66, ctsyun, 19.1, 168.9 , 0 );
setEffMoveKey( spep_0-3 + 68, ctsyun, 18.9, 204.7 , 0 );
setEffMoveKey( spep_0-3 + 70, ctsyun, 18.8, 217.4 , 0 );
setEffMoveKey( spep_0-3 + 72, ctsyun, 18.7, 221.3 , 0 );
setEffMoveKey( spep_0-3 + 74, ctsyun, 18.7, 222.7 , 0 );
setEffMoveKey( spep_0-3 + 76, ctsyun, 18.7, 223.2 , 0 );
setEffMoveKey( spep_0-3 + 78, ctsyun, 18.7, 223.5 , 0 );
setEffMoveKey( spep_0-3 + 80, ctsyun, 19.3, 229 , 0 );
setEffMoveKey( spep_0-3 + 82, ctsyun, 19.8, 234.5 , 0 );

setEffScaleKey( spep_0-3 + 64, ctsyun, 1.44, 1.43 );
setEffScaleKey( spep_0-3 + 66, ctsyun, 1.55, 1.51 );
setEffScaleKey( spep_0-3 + 68, ctsyun, 2.4, 2.13 );
setEffScaleKey( spep_0-3 + 70, ctsyun, 2.7, 2.35 );
setEffScaleKey( spep_0-3 + 72, ctsyun, 2.79, 2.41 );
setEffScaleKey( spep_0-3 + 74, ctsyun, 2.82, 2.44 );
setEffScaleKey( spep_0-3 + 76, ctsyun, 2.84, 2.45 );
setEffScaleKey( spep_0-3 + 78, ctsyun, 2.84, 2.45 );
setEffScaleKey( spep_0-3 + 80, ctsyun, 2.98, 2.56 );
setEffScaleKey( spep_0-3 + 82, ctsyun, 3.12, 2.67 );

setEffRotateKey( spep_0-3 + 64, ctsyun, 0 );
setEffRotateKey( spep_0-3 + 82, ctsyun, 0 );

setEffAlphaKey( spep_0-3 + 64, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 78, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 80, ctsyun, 140 );
setEffAlphaKey( spep_0-3 + 82, ctsyun, 26 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_0-3 + 92,  10000, 16, 0x100, -1, 0, 112.5, 130.4 );--!!
setEffShake( spep_0-3 + 92, ctbikkuri, 16, 10 );

setEffMoveKey( spep_0-3 + 92, ctbikkuri, 112.5, 130.4 , 0 );
setEffMoveKey( spep_0-3 + 94, ctbikkuri, 134.7, 232.1 , 0 );
setEffMoveKey( spep_0-3 + 96, ctbikkuri, 141.2, 220.8 , 0 );
setEffMoveKey( spep_0-3 + 98, ctbikkuri, 125.6, 211.2 , 0 );
setEffMoveKey( spep_0-3 + 100, ctbikkuri, 134.5, 204.2 , 0 );
setEffMoveKey( spep_0-3 + 102, ctbikkuri, 129.1, 213.7 , 0 );
setEffMoveKey( spep_0-3 + 104, ctbikkuri, 134.5, 204.2 , 0 );
setEffMoveKey( spep_0-3 + 106, ctbikkuri, 125.6, 211.2 , 0 );
setEffMoveKey( spep_0-3 + 108, ctbikkuri, 134.5, 204.2 , 0 );

setEffScaleKey( spep_0-3 + 92, ctbikkuri, 1.84, 1.85 );
setEffScaleKey( spep_0-3 + 94, ctbikkuri, 3.53, 3.55 );
setEffScaleKey( spep_0-3 + 96, ctbikkuri, 3.53, 3.55 );
setEffScaleKey( spep_0-3 + 98, ctbikkuri, 2.94, 2.95 );
setEffScaleKey( spep_0-3 + 108, ctbikkuri, 2.94, 2.95 );

setEffRotateKey( spep_0-3 + 92, ctbikkuri, 0 );
setEffRotateKey( spep_0-3 + 108, ctbikkuri, 0 );

setEffAlphaKey( spep_0-3 + 92, ctbikkuri, 255 );
setEffAlphaKey( spep_0-3 + 106, ctbikkuri, 255 );
setEffAlphaKey( spep_0-3 + 108, ctbikkuri, 77 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 140,  10019, 18, 0x100, -1, 0, 27.3, 178.3 );--ドンッ
setEffShake( spep_0-3 + 140, ctdon, 18, 10 );

setEffMoveKey( spep_0-3 + 140, ctdon, 27.3, 178.3 , 0 );
setEffMoveKey( spep_0-3 + 142, ctdon, 44.8, 220.9 , 0 );
setEffMoveKey( spep_0-3 + 144, ctdon, 69.2, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 146, ctdon, 69.7, 259.7 , 0 );
setEffMoveKey( spep_0-3 + 148, ctdon, 85.2, 260.7 , 0 );
setEffMoveKey( spep_0-3 + 150, ctdon, 76.2, 264.7 , 0 );
setEffMoveKey( spep_0-3 + 152, ctdon, 80.4, 268.3 , 0 );
setEffMoveKey( spep_0-3 + 154, ctdon, 88.5, 296.1 , 0 );
setEffMoveKey( spep_0-3 + 156, ctdon, 110.6, 302.7 , 0 );
setEffMoveKey( spep_0-3 + 158, ctdon, 112.5, 305.5 , 0 );

setEffScaleKey( spep_0-3 + 140, ctdon, 1.29, 1.3 );
setEffScaleKey( spep_0-3 + 142, ctdon, 1.62, 1.64 );
setEffScaleKey( spep_0-3 + 144, ctdon, 1.78, 1.81 );
setEffScaleKey( spep_0-3 + 146, ctdon, 1.89, 1.91 );
setEffScaleKey( spep_0-3 + 148, ctdon, 1.95, 1.98 );
setEffScaleKey( spep_0-3 + 150, ctdon, 1.99, 2.02 );
setEffScaleKey( spep_0-3 + 152, ctdon, 2.01, 2.04 );
setEffScaleKey( spep_0-3 + 154, ctdon, 2.19, 2.23 );
setEffScaleKey( spep_0-3 + 156, ctdon, 2.26, 2.29 );
setEffScaleKey( spep_0-3 + 158, ctdon, 2.28, 2.31 );

setEffRotateKey( spep_0-3 + 140, ctdon, 0 );
setEffRotateKey( spep_0-3 + 158, ctdon, 0 );

setEffAlphaKey( spep_0-3 + 140, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 152, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 154, ctdon, 80 );
setEffAlphaKey( spep_0-3 + 156, ctdon, 19 );
setEffAlphaKey( spep_0-3 + 158, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 188,  10005, 18, 0x100, -1, 0, 47.7, 195.9 );--ガッ
setEffShake( spep_0-3 + 188, ctga, 18, 10 );

setEffMoveKey( spep_0-3 + 188, ctga, 47.7, 195.9 , 0 );
setEffMoveKey( spep_0-3 + 190, ctga, 21.1, 237 , 0 );
setEffMoveKey( spep_0-3 + 192, ctga, 19, 256.4 , 0 );
setEffMoveKey( spep_0-3 + 194, ctga, 3.9, 272.1 , 0 );
setEffMoveKey( spep_0-3 + 196, ctga, 10.4, 276.2 , 0 );
setEffMoveKey( spep_0-3 + 198, ctga, -2.7, 287.2 , 0 );
setEffMoveKey( spep_0-3 + 200, ctga, 5.3, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 202, ctga, -40.9, 334 , 0 );
setEffMoveKey( spep_0-3 + 204, ctga, -37.5, 342.6 , 0 );
setEffMoveKey( spep_0-3 + 206, ctga, -41.2, 347.3 , 0 );

setEffScaleKey( spep_0-3 + 188, ctga, 1, 1 );
setEffScaleKey( spep_0-3 + 190, ctga, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 192, ctga, 1.75, 1.75 );
setEffScaleKey( spep_0-3 + 194, ctga, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 196, ctga, 2, 2 );
setEffScaleKey( spep_0-3 + 198, ctga, 2.06, 2.06 );
setEffScaleKey( spep_0-3 + 200, ctga, 2.08, 2.09 );
setEffScaleKey( spep_0-3 + 202, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 204, ctga, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 206, ctga, 2.47, 2.47 );

setEffRotateKey( spep_0-3 + 188, ctga, 0 );
setEffRotateKey( spep_0-3 + 206, ctga, 0 );

setEffAlphaKey( spep_0-3 + 188, ctga, 255 );
setEffAlphaKey( spep_0-3 + 200, ctga, 255 );
setEffAlphaKey( spep_0-3 + 202, ctga, 80 );
setEffAlphaKey( spep_0-3 + 204, ctga, 19 );
setEffAlphaKey( spep_0-3 + 206, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 254,  10020, 16, 0x100, -1, 0, -92.2, 154.7 );--バキッ
setEffShake( spep_0-3 + 254, ctbaki, 16, 10 );

setEffMoveKey( spep_0-3 + 254, ctbaki, -92.2, 154.7 , 0 );
setEffMoveKey( spep_0-3 + 256, ctbaki, -113.9, 191.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctbaki, -110.2, 200.6 , 0 );
setEffMoveKey( spep_0-3 + 260, ctbaki, -131.1, 217 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbaki, -117.9, 228.7 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbaki, -125.2, 224 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbaki, -146.4, 275.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbaki, -137, 285.3 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbaki, -139.9, 295.6 , 0 );

setEffScaleKey( spep_0-3 + 254, ctbaki, 1.47, 1.32 );
setEffScaleKey( spep_0-3 + 256, ctbaki, 2, 1.79 );
setEffScaleKey( spep_0-3 + 258, ctbaki, 2.23, 2.01 );
setEffScaleKey( spep_0-3 + 260, ctbaki, 2.38, 2.13 );
setEffScaleKey( spep_0-3 + 262, ctbaki, 2.46, 2.21 );
setEffScaleKey( spep_0-3 + 264, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_0-3 + 266, ctbaki, 2.73, 2.69 );
setEffScaleKey( spep_0-3 + 268, ctbaki, 2.83, 2.88 );
setEffScaleKey( spep_0-3 + 270, ctbaki, 2.88, 2.98 );

setEffRotateKey( spep_0-3 + 254, ctbaki, 0 );
setEffRotateKey( spep_0-3 + 270, ctbaki, 0 );

setEffAlphaKey( spep_0-3 + 254, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 264, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 266, ctbaki, 98 );
setEffAlphaKey( spep_0-3 + 268, ctbaki, 33 );
setEffAlphaKey( spep_0-3 + 270, ctbaki, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+4+316  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_0+4+316  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0+4 +328, 190006, 72, 0x102, -1, 0, 180, 0, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0+4 +328,  ctgogo,  0,  510);
setEffMoveKey(  spep_0+4 +400,  ctgogo,  0,  510);

setEffAlphaKey( spep_0+4 +328, ctgogo, 0 );
setEffAlphaKey( spep_0+4 + 329, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 330, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 394, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 396, ctgogo, 191 );
setEffAlphaKey( spep_0+4 + 398, ctgogo, 112 );
setEffAlphaKey( spep_0+4 + 400, ctgogo, 64 );

setEffRotateKey(  spep_0+4 +328,  ctgogo,  0);
setEffRotateKey(  spep_0+4 +400,  ctgogo,  0);

setEffScaleKey(  spep_0+4 +328,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+4 +390,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_0+4 +400,  ctgogo, 1.07, 1.07);

--SE

--瞬間移動
SE002 =playSe( spep_0 + 62 , 1109 );

--レズン通り過ぎる
SE003 =playSe( spep_0 + 110 , 63 );
setSeVolumeByWorkId( spep_0 + 110 , SE003 , 0 );
setSeVolumeByWorkId( spep_0 + 111 , SE003 , 10 );
setSeVolumeByWorkId( spep_0 + 112 , SE003 , 20 );
setSeVolumeByWorkId( spep_0 + 113 , SE003 , 30 );
setSeVolumeByWorkId( spep_0 + 114 , SE003 , 40 );
setSeVolumeByWorkId( spep_0 + 115 , SE003 , 50 );
setSeVolumeByWorkId( spep_0 + 116 , SE003 , 60 );
setSeVolumeByWorkId( spep_0 + 117 , SE003 , 70 );
setSeVolumeByWorkId( spep_0 + 118 , SE003 , 80 );
setSeVolumeByWorkId( spep_0 + 119 , SE003 , 90 );
setSeVolumeByWorkId( spep_0 + 120 , SE003 , 100 );
stopSe( spep_0 + 136, SE003, 12);
setStartTimeMs( SE003,  517 );
SE005 =playSe( spep_0 + 108 , 1277 );
setSeVolumeByWorkId( spep_0 + 108 , SE005 , 126 );
SE006 =playSe( spep_0 + 108 , 1117 );
stopSe( spep_0 + 136, SE006, 34);

--！！
SE004 =playSe( spep_0 + 90 , 1042 );
stopSe( spep_0 + 110, SE004, 24);

--ラカセイキック
SE007 =playSe( spep_0 + 138 , 1009 );
SE008 =playSe( spep_0 + 138 , 1110 );
setSeVolumeByWorkId( spep_0 + 138 , SE008 , 79 );

--ダイーズパンチ
SE009 =playSe( spep_0 + 180 , 1189 );
setSeVolumeByWorkId( spep_0 + 180 , SE009 , 82 );
SE010 =playSe( spep_0 + 186 , 1110 );
SE011 =playSe( spep_0 + 186 , 1010 );

--瞬間移動
SE012 =playSe( spep_0 + 226 , 1109 );
setSeVolumeByWorkId( spep_0 + 226 , SE012 , 80 );
SE016 =playSe( spep_0 + 268 , 1109 );
setSeVolumeByWorkId( spep_0 + 268 , SE016 , 84 );

--カカオパンチ
SE013 =playSe( spep_0 + 246 , 1003 );
SE014 =playSe( spep_0 + 252 , 1009 );
SE015 =playSe( spep_0 + 252 , 1187 );
setSeVolumeByWorkId( spep_0 + 252 , SE015 , 72 );
stopSe( spep_0 + 266, SE015, 28);

--アモンドパンチ
SE017 =playSe( spep_0 + 290 , 1004 );
setSeVolumeByWorkId( spep_0 + 290 , SE017 , 64 );
SE018 =playSe( spep_0 + 296 , 1110 );
setSeVolumeByWorkId( spep_0 + 296 , SE018 , 77 );
SE019 =playSe( spep_0 + 296 , 1187 );

--ターレス降りてくる
SE020 =playSe( spep_0 + 332 , 8 );

--顔カットイン
SE021 =playSe( spep_0+4 + 328 , 1018 );


--白フェード
entryFade( spep_0+404 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_1=spep_0+406;
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
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_1 + 0, SE_05);
speff2 = entryEffect( spep_1 + 0, 1121, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0); -- カード差し替え
setEffReplaceTexture( speff2, 5, 4); -- 技名テクスチャ差し替え
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
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ターレス連続気弾〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 718, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 718, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 718, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 718, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 718, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 718, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 718, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 718, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 78, 1, 1);
setDisp( spep_2-3 + 146, 1, 0);

changeAnime( spep_2-3 + 78, 1, 6);
changeAnime( spep_2-3 + 106, 1, 8);

setBlendColor(spep_2-3 + 106,1,1,1,1,1,1);
setBlendColor(spep_2-3 + 150,1,1,1,1,1,1);
setBlendColor(spep_2-3 + 152,1,1,1,1,1,0);

setMoveKey( spep_2-3 + 78, 1, 99, 75.6 , 0 );
setMoveKey( spep_2-3 + 80, 1, 100.1, 76.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, 103.2, 80.3 , 0 );
setMoveKey( spep_2-3 + 84, 1, 108.3, 86.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, 115.5, 94.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, 124.7, 105 , 0 );
setMoveKey( spep_2-3 + 90, 1, 136, 117.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, 148.9, 132.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, 160.2, 145.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 169.5, 156.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, 176.7, 164.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, 181.8, 170.3 , 0 );
setMoveKey( spep_2-3 + 102, 1, 184.9, 173.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, 185.9, 175 , 0 );
setMoveKey( spep_2-3 + 105, 1, 185.9, 175 , 0 );
setMoveKey( spep_2-3 + 106, 1, 109.3, -18 , 0 );
setMoveKey( spep_2-3 + 108, 1, 105.4, -21 , 0 );
setMoveKey( spep_2-3 + 110, 1, 100.3, -24.9 , 0 );
setMoveKey( spep_2-3 + 112, 1, 94.1, -29.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, 86.6, -35.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, 77.8, -42.2 , 0 );
setMoveKey( spep_2-3 + 118, 1, 67.6, -50 , 0 );
setMoveKey( spep_2-3 + 120, 1, 56, -58.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, 42.9, -68.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, 28.2, -80.2 , 0 );
setMoveKey( spep_2-3 + 126, 1, 11.8, -92.8 , 0 );
setMoveKey( spep_2-3 + 128, 1, -6.4, -106.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, -26.4, -122.1 , 0 );
setMoveKey( spep_2-3 + 132, 1, -48.5, -138.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, -72.5, -157.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, -98.5, -177.3 , 0 );
setMoveKey( spep_2-3 + 138, 1, -124.3, -197.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, -149.5, -216.4 , 0 );
setMoveKey( spep_2-3 + 142, 1, -181, -240.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, -242.9, -288 , 0 );
setMoveKey( spep_2-3 + 146, 1, -743.9, -672 , 0 );

setScaleKey( spep_2-3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 146, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 78, 1, -84 );
setRotateKey( spep_2-3 + 105, 1, -84 );
setRotateKey( spep_2-3 + 106, 1, -64 );
setRotateKey( spep_2-3 + 146, 1, -64 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2-3 + 194,  10014, 66, 0x100, -1, 0, -95.8, -17.5 );--ズドドドッ
setEffShake( spep_2-3 + 194, ctzudodo, 66, 10 );

setEffMoveKey( spep_2-3 + 194, ctzudodo, -95.8, -17.5 , 0 );
setEffMoveKey( spep_2-3 + 196, ctzudodo, -85.7, 22.1 , 0 );
setEffMoveKey( spep_2-3 + 198, ctzudodo, -33.7, 148.2 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzudodo, -24.1, 195.3 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzudodo, -19.4, 185.2 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzudodo, -17.4, 212.1 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzudodo, -13.1, 200.2 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzudodo, -11.6, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzudodo, -7.7, 213.1 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzudodo, -6.6, 239.3 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzudodo, -3.1, 224.1 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzudodo, -2.5, 249.8 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzudodo, 0.7, 233.1 , 0 );
setEffMoveKey( spep_2-3 + 220, ctzudodo, 0.8, 258.2 , 0 );
setEffMoveKey( spep_2-3 + 222, ctzudodo, 3.6, 240.1 , 0 );
setEffMoveKey( spep_2-3 + 224, ctzudodo, 3.3, 264.5 , 0 );
setEffMoveKey( spep_2-3 + 226, ctzudodo, 5.7, 245.1 , 0 );
setEffMoveKey( spep_2-3 + 228, ctzudodo, 5, 268.7 , 0 );
setEffMoveKey( spep_2-3 + 230, ctzudodo, 7, 248.1 , 0 );
setEffMoveKey( spep_2-3 + 232, ctzudodo, 5.8, 270.8 , 0 );
setEffMoveKey( spep_2-3 + 234, ctzudodo, 5.9, 271 , 0 );
setEffMoveKey( spep_2-3 + 236, ctzudodo, 7.6, 249.7 , 0 );
setEffMoveKey( spep_2-3 + 238, ctzudodo, 6.9, 273.4 , 0 );
setEffMoveKey( spep_2-3 + 240, ctzudodo, 9.6, 254.3 , 0 );
setEffMoveKey( spep_2-3 + 242, ctzudodo, 9.8, 280.7 , 0 );
setEffMoveKey( spep_2-3 + 244, ctzudodo, 13.4, 263.5 , 0 );
setEffMoveKey( spep_2-3 + 246, ctzudodo, 14.6, 292.9 , 0 );
setEffMoveKey( spep_2-3 + 248, ctzudodo, 19.2, 277.1 , 0 );
setEffMoveKey( spep_2-3 + 250, ctzudodo, 20.2, 307.1 , 0 );
setEffMoveKey( spep_2-3 + 252, ctzudodo, 24, 288.7 , 0 );
setEffMoveKey( spep_2-3 + 254, ctzudodo, 24.1, 316.8 , 0 );
setEffMoveKey( spep_2-3 + 256, ctzudodo, 26.9, 295.6 , 0 );
setEffMoveKey( spep_2-3 + 258, ctzudodo, 26, 321.7 , 0 );
setEffMoveKey( spep_2-3 + 260, ctzudodo, 26.3, 322.3 , 0 );

setEffScaleKey( spep_2-3 + 194, ctzudodo, 1.07, 1.07 );
setEffScaleKey( spep_2-3 + 196, ctzudodo, 1.22, 1.22 );
setEffScaleKey( spep_2-3 + 198, ctzudodo, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 200, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 202, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 204, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 206, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 208, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 210, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_2-3 + 212, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 214, ctzudodo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 216, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 218, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 220, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 222, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 224, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_2-3 + 226, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 228, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 230, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 234, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 236, ctzudodo, 2.47, 2.47 );
setEffScaleKey( spep_2-3 + 238, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_2-3 + 240, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_2-3 + 242, ctzudodo, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 244, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 246, ctzudodo, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 248, ctzudodo, 2.62, 2.62 );
setEffScaleKey( spep_2-3 + 250, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_2-3 + 252, ctzudodo, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 254, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_2-3 + 256, ctzudodo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 258, ctzudodo, 2.74, 2.74 );
setEffScaleKey( spep_2-3 + 260, ctzudodo, 2.74, 2.74 );

setEffRotateKey( spep_2-3 + 194, ctzudodo, 13.2 );
setEffRotateKey( spep_2-3 + 260, ctzudodo, 13.2 );

setEffAlphaKey( spep_2-3 + 194, ctzudodo, 77 );
setEffAlphaKey( spep_2-3 + 196, ctzudodo, 103 );
setEffAlphaKey( spep_2-3 + 198, ctzudodo, 229 );
setEffAlphaKey( spep_2-3 + 200, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 234, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 236, ctzudodo, 252 );
setEffAlphaKey( spep_2-3 + 238, ctzudodo, 243 );
setEffAlphaKey( spep_2-3 + 240, ctzudodo, 228 );
setEffAlphaKey( spep_2-3 + 242, ctzudodo, 207 );
setEffAlphaKey( spep_2-3 + 244, ctzudodo, 180 );
setEffAlphaKey( spep_2-3 + 246, ctzudodo, 146 );
setEffAlphaKey( spep_2-3 + 248, ctzudodo, 109 );
setEffAlphaKey( spep_2-3 + 250, ctzudodo, 75 );
setEffAlphaKey( spep_2-3 + 252, ctzudodo, 48 );
setEffAlphaKey( spep_2-3 + 254, ctzudodo, 27 );
setEffAlphaKey( spep_2-3 + 256, ctzudodo, 12 );
setEffAlphaKey( spep_2-3 + 258, ctzudodo, 3 );
setEffAlphaKey( spep_2-3 + 260, ctzudodo, 0 );

--K.O.演出
KO = entryEffect( spep_2 + 698, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出
setEffMoveKey( spep_2 + 698, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 820, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 698, KO, 1.0 , 1.0  );
setEffScaleKey( spep_2 + 820, KO, 1.0 , 1.0  );
setEffRotateKey( spep_2 + 698, KO, 0 );
setEffRotateKey( spep_2 + 820, KO, 0 );
setEffAlphaKey( spep_2 + 698, KO, 255 );
setEffAlphaKey( spep_2 + 820, KO, 255 );

--SE
--腕前に出す
SE023 =playSe( spep_2 + 12 , 1233 );
setPitch( spep_2 + 12, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );
SE024 =playSe( spep_2 + 16 , 1003 );

--気弾発射
SE025 =playSe( spep_2 + 36 , 1146 );
--setSeVolumeByWorkId( spep_2 + 36 , SE025 , 65 );
setPitch( spep_2 + 36, SE025, -100 );
setTimeStretch( SE025, 0.93, 10, 1 );
setBandpassFilter	( spep_2 + 36, SE025, 300, 24000 );
stopSe( spep_2 + 110, SE025, 28);
SE026 =playSe( spep_2 + 36 , 1201 );
setSeVolumeByWorkId( spep_2 + 36 , SE026 , 188 );
setPitch( spep_2 + 36, SE026, 400 );
setTimeStretch( SE026, 1.27, 10, 1 );
SE027 =playSe( spep_2 + 36 , 1046 );
setSeVolumeByWorkId( spep_2 + 36 , SE027 , 89 );
SE028 =playSe( spep_2 + 36 , 1177 );
setSeVolumeByWorkId( spep_2 + 36 , SE028 , 60 );
setPitch( spep_2 + 36, SE028, 200 );
setTimeStretch( SE028, 1.13, 10, 1 );
stopSe( spep_2 + 106, SE028, 16);

--気弾ヒット
SE029 =playSe( spep_2 + 112 , 1201 );
setPitch( spep_2 + 112, SE029, 400 );
setTimeStretch( SE029, 1.27, 10, 1 );
SE030 =playSe( spep_2 + 112 , 1025 );
setSeVolumeByWorkId( spep_2 + 112 , SE030 , 136 );
setBandpassFilter	( spep_2 + 112, SE030, 300, 24000 );
SE031 =playSe( spep_2 + 124 , 1201 );
setSeVolumeByWorkId( spep_2 + 124 , SE031 , 94 );
setPitch( spep_2 + 124, SE031, 400 );
setTimeStretch( SE031, 1.27, 10, 1 );
SE032 =playSe( spep_2 + 124 , 1025 );
setSeVolumeByWorkId( spep_2 + 124 , SE032 , 108 );
setBandpassFilter	( spep_2 + 124, SE032, 300, 24000 );
SE033 =playSe( spep_2 + 140 , 1201 );
setSeVolumeByWorkId( spep_2 + 140 , SE033 , 95 );
setPitch( spep_2 + 140, SE033, 400 );
setTimeStretch( SE033, 1.27, 10, 1 );
SE034 =playSe( spep_2 + 140 , 1025 );
setSeVolumeByWorkId( spep_2 + 140 , SE034 , 86 );
setBandpassFilter	( spep_2 + 140, SE034, 300, 24000 );
SE035 =playSe( spep_2 + 156 , 1201 );
setSeVolumeByWorkId( spep_2 + 156 , SE035 , 97 );
setPitch( spep_2 + 156, SE035, 400 );
setTimeStretch( SE035, 1.27, 10, 1 );
SE036 =playSe( spep_2 + 156 , 1025 );

--気弾降り注ぐ
SE037 =playSe( spep_2 + 166 , 1121 );
stopSe( spep_2 + 214, SE037, 26);
SE038 =playSe( spep_2 + 170 , 1021 );
SE039 =playSe( spep_2 + 200 , 1188 );
setSeVolumeByWorkId( spep_2 + 200 , SE039 , 82 );
SE040 =playSe( spep_2 + 208 , 1159 );
setSeVolumeByWorkId( spep_2 + 208 , SE040 , 94 );
SE041 =playSe( spep_2 + 228 , 1024 );

--手合わせる
SE042 =playSe( spep_2 + 322 , 1189 );
setSeVolumeByWorkId( spep_2 + 322 , SE042 , 108 );
SE043 =playSe( spep_2 + 326 , 1006 );
setSeVolumeByWorkId( spep_2 + 326 , SE043 , 117 );

--気弾溜める
SE044 =playSe( spep_2 + 334 , 1243 );
setSeVolumeByWorkId( spep_2 + 334 , SE044 , 119 );
stopSe( spep_2 + 378, SE044, 12);
SE045 =playSe( spep_2 + 334 , 1250 );
setSeVolumeByWorkId( spep_2 + 334 , SE045 , 120 );
stopSe( spep_2 + 376, SE045, 12);

--輪っか広がる
SE046 =playSe( spep_2 + 352 , 1130 );
setSeVolumeByWorkId( spep_2 + 352 , SE046 , 32 );
setPitch( spep_2 + 352, SE046, -800 );
setTimeStretch( SE046, 0.47, 10, 1 );
stopSe( spep_2 + 376, SE046, 16);

--輪っか持ち上げる
SE047 =playSe( spep_2 + 382 , 1276 );
setSeVolumeByWorkId( spep_2 + 382 , SE047 , 123 );
setPitch( spep_2 + 382, SE047, -200 );
setTimeStretch( SE047, 0.96, 10, 1 );
SE048 =playSe( spep_2 + 382 , 1132 );
setSeVolumeByWorkId( spep_2 + 382 , SE048 , 66 );
setPitch( spep_2 + 382, SE048, 400 );
setTimeStretch( SE048, 1.27, 10, 1 );
SE049 =playSe( spep_2 + 390 , 1262 );
setSeVolumeByWorkId( spep_2 + 390 , SE049 , 129 );
setPitch( spep_2 + 390, SE049, 300 );
setTimeStretch( SE049, 1.2, 10, 1 );

--ターレスアップ
SE050 =playSe( spep_2 + 448 , 9 );
setSeVolumeByWorkId( spep_2 + 448,SE050,0);
setSeVolumeByWorkId( spep_2 + 449,SE050,7.25);
setSeVolumeByWorkId( spep_2 + 450,SE050,14.5);
setSeVolumeByWorkId( spep_2 + 451,SE050,21.75);
setSeVolumeByWorkId( spep_2 + 452,SE050,29);
setSeVolumeByWorkId( spep_2 + 453,SE050,36.25);
setSeVolumeByWorkId( spep_2 + 454,SE050,43.5);
setSeVolumeByWorkId( spep_2 + 455,SE050,50.75);
setSeVolumeByWorkId( spep_2 + 456,SE050,58);
stopSe( spep_2 + 486, SE050, 56);
SE051 =playSe( spep_2 + 448 , 1182 );
setSeVolumeByWorkId( spep_2 + 448,SE051,0);
setSeVolumeByWorkId( spep_2 + 449,SE051,7.2);
setSeVolumeByWorkId( spep_2 + 450,SE051,14.4);
setSeVolumeByWorkId( spep_2 + 451,SE051,21.6);
setSeVolumeByWorkId( spep_2 + 452,SE051,28.8);
setSeVolumeByWorkId( spep_2 + 453,SE051,36);
setSeVolumeByWorkId( spep_2 + 454,SE051,43.2);
setSeVolumeByWorkId( spep_2 + 455,SE051,50.4);
setSeVolumeByWorkId( spep_2 + 456,SE051,57.6);
setSeVolumeByWorkId( spep_2 + 457,SE051,64.8);
setSeVolumeByWorkId( spep_2 + 458,SE051,72);
setSeVolumeByWorkId( spep_2 + 459,SE051,79.2);
setSeVolumeByWorkId( spep_2 + 460,SE051,86.4);
setSeVolumeByWorkId( spep_2 + 461,SE051,93.6);
setSeVolumeByWorkId( spep_2 + 462,SE051,100);

--輪っか飛んでいく
SE052 =playSe( spep_2 + 518 , 1193 );
setSeVolumeByWorkId( spep_2 + 518,SE052,0);
setSeVolumeByWorkId( spep_2 + 519,SE052,2.6);
setSeVolumeByWorkId( spep_2 + 520,SE052,5.2);
setSeVolumeByWorkId( spep_2 + 521,SE052,7.8);
setSeVolumeByWorkId( spep_2 + 522,SE052,10.4);
setSeVolumeByWorkId( spep_2 + 523,SE052,13);
setSeVolumeByWorkId( spep_2 + 524,SE052,15.6);
setSeVolumeByWorkId( spep_2 + 525,SE052,18.2);
setSeVolumeByWorkId( spep_2 + 526,SE052,20.8);
setSeVolumeByWorkId( spep_2 + 527,SE052,23.4);
setSeVolumeByWorkId( spep_2 + 528,SE052,26);
setSeVolumeByWorkId( spep_2 + 529,SE052,28.6);
setSeVolumeByWorkId( spep_2 + 530,SE052,31.2);
setSeVolumeByWorkId( spep_2 + 531,SE052,33.8);
setSeVolumeByWorkId( spep_2 + 532,SE052,36.4);
setSeVolumeByWorkId( spep_2 + 533,SE052,39);
setSeVolumeByWorkId( spep_2 + 534,SE052,41.6);
setSeVolumeByWorkId( spep_2 + 535,SE052,44.2);
setSeVolumeByWorkId( spep_2 + 536,SE052,46.8);
setSeVolumeByWorkId( spep_2 + 537,SE052,49.4);
setSeVolumeByWorkId( spep_2 + 538,SE052,52);
setSeVolumeByWorkId( spep_2 + 539,SE052,54.6);
setSeVolumeByWorkId( spep_2 + 540,SE052,57.2);
setSeVolumeByWorkId( spep_2 + 541,SE052,59.8);
setSeVolumeByWorkId( spep_2 + 542,SE052,62.4);
setSeVolumeByWorkId( spep_2 + 543,SE052,65);
setSeVolumeByWorkId( spep_2 + 544,SE052,67.6);
setSeVolumeByWorkId( spep_2 + 545,SE052,70.2);
setSeVolumeByWorkId( spep_2 + 546,SE052,72.8);
setSeVolumeByWorkId( spep_2 + 547,SE052,75.4);
setSeVolumeByWorkId( spep_2 + 548,SE052,78);
setSeVolumeByWorkId( spep_2 + 549,SE052,80.6);
setSeVolumeByWorkId( spep_2 + 550,SE052,83.2);
setSeVolumeByWorkId( spep_2 + 551,SE052,85.8);
setSeVolumeByWorkId( spep_2 + 552,SE052,88.4);
setSeVolumeByWorkId( spep_2 + 553,SE052,91);
setSeVolumeByWorkId( spep_2 + 554,SE052,93.6);
setSeVolumeByWorkId( spep_2 + 555,SE052,96.1);
setSeVolumeByWorkId( spep_2 + 556,SE052,100);
setStartTimeMs( SE052,  833 );
stopSe( spep_2 + 598, SE052, 24);

--輪っか発射
SE053 =playSe( spep_2 + 498 , 1146 );
SE054 =playSe( spep_2 + 498 , 20 );
setSeVolumeByWorkId( spep_2 + 498 , SE054 , 67 );
SE055 =playSe( spep_2 + 506 , 1109 );
setSeVolumeByWorkId( spep_2 + 506 , SE055 , 150 );

--爆発
SE056 =playSe( spep_2 + 586 , 1023 );
SE057 =playSe( spep_2 + 586 , 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 710, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 598 );
endPhase( spep_2 + 700 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- ターレス軍団登場〜ターレス登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 408, appearance_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 408, appearance_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance_f, 0 );
setEffRotateKey( spep_0 + 408, appearance_f, 0 );
setEffAlphaKey( spep_0 + 0, appearance_f, 255 );
setEffAlphaKey( spep_0 + 408, appearance_f, 255 );

-- ** エフェクト等 ** --
appearance_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, appearance_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 408, appearance_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 408, appearance_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance_b, 0 );
setEffRotateKey( spep_0 + 408, appearance_b, 0 );
setEffAlphaKey( spep_0 + 0, appearance_b, 255 );
setEffAlphaKey( spep_0 + 408, appearance_b, 255 );

--SE
--入り
SE001 =playSe( spep_0 + 0 , 8 );
setSeVolumeByWorkId( spep_0 + 0 , SE001 , 89 );
setPitch( spep_0 + 0, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 410, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
    --敵座標の固定
    setMoveKey( SP_dodge + 9, 1, 112.3, -188.6 , 0 );
    setScaleKey( SP_dodge + 9, 1, 2.54, 2.54 );
    setRotateKey( SP_dodge + 9, 1, 0 );

    -- ** 白フェード ** --
    entryFade( SP_dodge + 5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255 );     -- white fade
    setMoveKey( SP_dodge + 10,   0,    -2500, -250,   0 );
    
    endPhase( SP_dodge + 10 );
    
    do return end
    else end
    
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 84, 1, 1);
setDisp( spep_0-3 + 172, 1, 0);

changeAnime( spep_0-3 + 84, 1, 101);
changeAnime( spep_0-3 + 108, 1, 103);
changeAnime( spep_0-3 + 114, 1, 4);
changeAnime( spep_0-3 + 140, 1, 6);

setMoveKey( spep_0-3 + 84, 1, 89.9, -45 , 0 );
setMoveKey( spep_0-3 + 107, 1, 89.9, -45 , 0 );
setMoveKey( spep_0-3 + 108, 1, 26.9, -43.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, 5, -37.2 , 0 );
setMoveKey( spep_0-3 + 112, 1, -15.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 113, 1, -15.6, -31.6 , 0 );
setMoveKey( spep_0-3 + 114, 1, -22.5, -29.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, -26.5, -25.9 , 0 );
setMoveKey( spep_0-3 + 118, 1, -30.1, -22.3 , 0 );
setMoveKey( spep_0-3 + 120, 1, -33.2, -19.1 , 0 );
setMoveKey( spep_0-3 + 122, 1, -35.9, -16.4 , 0 );
setMoveKey( spep_0-3 + 124, 1, -38.3, -14.1 , 0 );
setMoveKey( spep_0-3 + 126, 1, -40.1, -12.2 , 0 );
setMoveKey( spep_0-3 + 128, 1, -41.6, -10.7 , 0 );
setMoveKey( spep_0-3 + 130, 1, -42.7, -9.7 , 0 );
setMoveKey( spep_0-3 + 132, 1, -43.3, -9.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, -43.5, -8.9 , 0 );
setMoveKey( spep_0-3 + 139, 1, -43.5, -8.9 , 0 );
setMoveKey( spep_0-3 + 140, 1, 130.5, -22.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 154.3, -32.5 , 0 );
setMoveKey( spep_0-3 + 144, 1, 159.3, -37.3 , 0 );
setMoveKey( spep_0-3 + 146, 1, 170.6, -42.8 , 0 );
setMoveKey( spep_0-3 + 148, 1, 186.2, -49.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, 185.1, -50.2 , 0 );
setMoveKey( spep_0-3 + 152, 1, 194.1, -54.1 , 0 );
setMoveKey( spep_0-3 + 154, 1, 191.2, -52.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, 205.8, -60.7 , 0 );
setMoveKey( spep_0-3 + 158, 1, 252.6, -84.8 , 0 );
setMoveKey( spep_0-3 + 160, 1, 330.7, -124.9 , 0 );
setMoveKey( spep_0-3 + 162, 1, 439.9, -181 , 0 );
setMoveKey( spep_0-3 + 164, 1, 572.6, -249.2 , 0 );
setMoveKey( spep_0-3 + 166, 1, 681.9, -305.3 , 0 );
setMoveKey( spep_0-3 + 168, 1, 759.9, -345.4 , 0 );
setMoveKey( spep_0-3 + 170, 1, 806.7, -369.5 , 0 );
setMoveKey( spep_0-3 + 172, 1, 822.3, -377.5 , 0 );

setScaleKey( spep_0-3 + 84, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 107, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 108, 1, 2.77, 2.77 );
setScaleKey( spep_0-3 + 110, 1, 2.7, 2.7 );
setScaleKey( spep_0-3 + 112, 1, 2.62, 2.62 );
setScaleKey( spep_0-3 + 114, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 139, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 172, 1, 2.6, 2.6 );

setRotateKey( spep_0-3 + 84, 1, 0 );
setRotateKey( spep_0-3 + 107, 1, 0 );
setRotateKey( spep_0-3 + 108, 1, 15 );
setRotateKey( spep_0-3 + 113, 1, 15 );
setRotateKey( spep_0-3 + 114, 1, 0 );
setRotateKey( spep_0-3 + 139, 1, 0 );
setRotateKey( spep_0-3 + 140, 1, 60 );
setRotateKey( spep_0-3 + 142, 1, 60.1 );
setRotateKey( spep_0-3 + 144, 1, 60.1 );
setRotateKey( spep_0-3 + 146, 1, 60.2 );
setRotateKey( spep_0-3 + 148, 1, 60.2 );
setRotateKey( spep_0-3 + 150, 1, 60.3 );
setRotateKey( spep_0-3 + 154, 1, 60.3 );
setRotateKey( spep_0-3 + 156, 1, 60.7 );
setRotateKey( spep_0-3 + 158, 1, 61.8 );
setRotateKey( spep_0-3 + 160, 1, 63.6 );
setRotateKey( spep_0-3 + 162, 1, 66.1 );
setRotateKey( spep_0-3 + 164, 1, 69.2 );
setRotateKey( spep_0-3 + 166, 1, 71.7 );
setRotateKey( spep_0-3 + 168, 1, 73.5 );
setRotateKey( spep_0-3 + 170, 1, 74.6 );
setRotateKey( spep_0-3 + 172, 1, 75 );

--敵の動き
setDisp( spep_0-3 + 174, 1, 1);
setDisp( spep_0-3 + 216, 1, 0);

changeAnime( spep_0-3 + 174, 1, 6);
changeAnime( spep_0-3 + 188, 1, 8);

setMoveKey( spep_0-3 + 174, 1, -699.8, 591.5 , 0 );
setMoveKey( spep_0-3 + 176, 1, -596.6, 483.8 , 0 );
setMoveKey( spep_0-3 + 178, 1, -493.5, 376.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, -390.4, 268.6 , 0 );
setMoveKey( spep_0-3 + 182, 1, -287.2, 161 , 0 );
setMoveKey( spep_0-3 + 184, 1, -184.1, 53.3 , 0 );
setMoveKey( spep_0-3 + 186, 1, -81, -54.3 , 0 );
setMoveKey( spep_0-3 + 187, 1, -81, -54.3 , 0 );

setMoveKey( spep_0-3 + 188, 1, -164.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 190, 1, -163.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 192, 1, -171.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 194, 1, -186.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 196, 1, -182.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, -210.3, -53.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, -230.1, -53.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, -281.9, -53.8 , 0 );
setMoveKey( spep_0-3 + 204, 1, -325.5, -53.9 , 0 );
setMoveKey( spep_0-3 + 206, 1, -391.2, -53.9 , 0 );
setMoveKey( spep_0-3 + 208, 1, -468.7, -53.9 , 0 );
setMoveKey( spep_0-3 + 210, 1, -558.2, -53.9 , 0 );
setMoveKey( spep_0-3 + 212, 1, -659.6, -53.9 , 0 );
setMoveKey( spep_0-3 + 214, 1, -772.9, -53.9 , 0 );
setMoveKey( spep_0-3 + 216, 1, -898.1, -53.9 , 0 );

setScaleKey( spep_0-3 + 174, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 187, 1, 2.8, 2.8 );
setScaleKey( spep_0-3 + 188, 1, 3.0, 3.0 );
setScaleKey( spep_0-3 + 216, 1, 3.0, 3.0 );

setRotateKey( spep_0-3 + 174, 1, 70 );
setRotateKey( spep_0-3 + 187, 1, 70 );
setRotateKey( spep_0-3 + 188, 1, -15 );
setRotateKey( spep_0-3 + 216, 1, -15 );

--敵の動き
setDisp( spep_0-3 + 232, 1, 1);
setDisp( spep_0-3 + 326, 1, 0);

changeAnime( spep_0-3 + 254, 1, 105);
changeAnime( spep_0-3 + 296, 1, 7);

setMoveKey( spep_0-3 + 232, 1, 923.8, -53.8 , 0 );
setMoveKey( spep_0-3 + 234, 1, 899, -53.8 , 0 );
setMoveKey( spep_0-3 + 236, 1, 824.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 238, 1, 700.2, -53.8 , 0 );
setMoveKey( spep_0-3 + 240, 1, 526.3, -53.8 , 0 );
setMoveKey( spep_0-3 + 242, 1, 315.1, -53.8 , 0 );
setMoveKey( spep_0-3 + 244, 1, 141.2, -53.8 , 0 );
setMoveKey( spep_0-3 + 246, 1, 17, -53.8 , 0 );
setMoveKey( spep_0-3 + 248, 1, -57.6, -53.8 , 0 );
setMoveKey( spep_0-3 + 250, 1, -82.4, -53.8 , 0 );
setMoveKey( spep_0-3 + 253, 1, -82.4, -53.8 , 0 );

setMoveKey( spep_0-3 + 254, 1, 10, 3 , 0 );
setMoveKey( spep_0-3 + 256, 1, 0, -6.8 , 0 );
setMoveKey( spep_0-3 + 258, 1, 0.2, -13.9 , 0 );
setMoveKey( spep_0-3 + 260, 1, 10.7, -16.6 , 0 );
setMoveKey( spep_0-3 + 262, 1, 2.6, -25.1 , 0 );
setMoveKey( spep_0-3 + 264, 1, 18.3, -5.8 , 0 );
setMoveKey( spep_0-3 + 266, 1, 12.5, -20.1 , 0 );
setMoveKey( spep_0-3 + 268, 1, 17.8, -15.1 , 0 );
setMoveKey( spep_0-3 + 270, 1, 11.9, -11.9 , 0 );
setMoveKey( spep_0-3 + 272, 1, 20.3, -6.1 , 0 );
setMoveKey( spep_0-3 + 274, 1, 13.5, 0.6 , 0 );
setMoveKey( spep_0-3 + 276, 1, 17.5, -3.3 , 0 );
setMoveKey( spep_0-3 + 278, 1, 15.1, 8.5 , 0 );
setMoveKey( spep_0-3 + 280, 1, 20.6, 2.6 , 0 );
setMoveKey( spep_0-3 + 282, 1, 16.3, 10 , 0 );
setMoveKey( spep_0-3 + 284, 1, 15.7, 4.3 , 0 );
setMoveKey( spep_0-3 + 286, 1, 18.9, 10.7 , 0 );
setMoveKey( spep_0-3 + 288, 1, 18.5, 2.7 , 0 );
setMoveKey( spep_0-3 + 290, 1, 14.4, 9.8 , 0 );
setMoveKey( spep_0-3 + 292, 1, 21, 8.5 , 0 );
setMoveKey( spep_0-3 + 294, 1, 15.6, 7 , 0 );
setMoveKey( spep_0-3 + 295, 1, 15.6, 7 , 0 );

setMoveKey( spep_0-3 + 296, 1, 100.9, -454.4 , 0 );
setMoveKey( spep_0-3 + 298, 1, 106.7, -446.2 , 0 );
setMoveKey( spep_0-3 + 300, 1, 106.2, -449.4 , 0 );
setMoveKey( spep_0-3 + 302, 1, 99.2, -461.5 , 0 );
setMoveKey( spep_0-3 + 304, 1, 103.7, -452.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 96.8, -461.3 , 0 );
setMoveKey( spep_0-3 + 308, 1, 94.6, -458.1 , 0 );
setMoveKey( spep_0-3 + 310, 1, 93.9, -442.1 , 0 );
setMoveKey( spep_0-3 + 312, 1, 91, -442.5 , 0 );
setMoveKey( spep_0-3 + 314, 1, 87.9, -418.6 , 0 );
setMoveKey( spep_0-3 + 316, 1, 84.5, -409.3 , 0 );
setMoveKey( spep_0-3 + 318, 1, 81.1, -373.6 , 0 );
setMoveKey( spep_0-3 + 320, 1, 77.7, -340.1 , 0 );
setMoveKey( spep_0-3 + 322, 1, 74.4, -297.7 , 0 );
setMoveKey( spep_0-3 + 324, 1, 71.4, -244.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 68.8, -179.7 , 0 );

setScaleKey( spep_0-3 + 232, 1, 3.0, 3.0 );
setScaleKey( spep_0-3 + 253, 1, 3.0, 3.0 );

setScaleKey( spep_0-3 + 254, 1, 2.8+0.2, 2.8+0.2 );
setScaleKey( spep_0-3 + 256, 1, 2.82+0.2, 2.82+0.2 );
setScaleKey( spep_0-3 + 258, 1, 2.85+0.2, 2.85+0.2 );
setScaleKey( spep_0-3 + 260, 1, 2.89+0.2, 2.89+0.2 );
setScaleKey( spep_0-3 + 262, 1, 2.9+0.2, 2.9+0.2 );
setScaleKey( spep_0-3 + 264, 1, 2.81+0.2, 2.81+0.2 );
setScaleKey( spep_0-3 + 266, 1, 2.85+0.2, 2.85+0.2 );
setScaleKey( spep_0-3 + 268, 1, 2.83+0.2, 2.83+0.2 );
setScaleKey( spep_0-3 + 270, 1, 2.8+0.2, 2.8+0.2 );
setScaleKey( spep_0-3 + 272, 1, 2.77+0.2, 2.77+0.2 );
setScaleKey( spep_0-3 + 274, 1, 2.75+0.2, 2.75+0.2 );
setScaleKey( spep_0-3 + 276, 1, 2.73+0.2, 2.73+0.2 );
setScaleKey( spep_0-3 + 278, 1, 2.72+0.2, 2.72+0.2 );
setScaleKey( spep_0-3 + 280, 1, 2.71+0.2, 2.71+0.2 );
setScaleKey( spep_0-3 + 282, 1, 2.71+0.2, 2.71+0.2 );
setScaleKey( spep_0-3 + 284, 1, 2.7+0.2, 2.7+0.2 );
setScaleKey( spep_0-3 + 295, 1, 2.7+0.2, 2.7+0.2 );

setScaleKey( spep_0-3 + 296, 1, 1.8, 1.8 );
setScaleKey( spep_0-3 + 298, 1, 1.81, 1.81 );
setScaleKey( spep_0-3 + 300, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 302, 1, 1.85, 1.85 );
setScaleKey( spep_0-3 + 304, 1, 1.88, 1.88 );
setScaleKey( spep_0-3 + 306, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 308, 1, 1.94, 1.94 );
setScaleKey( spep_0-3 + 310, 1, 1.97, 1.97 );
setScaleKey( spep_0-3 + 312, 1, 2, 2 );
setScaleKey( spep_0-3 + 314, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 316, 1, 2.02, 2.02 );
setScaleKey( spep_0-3 + 318, 1, 2.01, 2.01 );
setScaleKey( spep_0-3 + 320, 1, 1.98, 1.98 );
setScaleKey( spep_0-3 + 322, 1, 1.91, 1.91 );
setScaleKey( spep_0-3 + 324, 1, 1.82, 1.82 );
setScaleKey( spep_0-3 + 326, 1, 1.68, 1.68 );

setRotateKey( spep_0-3 + 232, 1, -15 );
setRotateKey( spep_0-3 + 253, 1, -15 );

setRotateKey( spep_0-3 + 254, 1, 0 );
setRotateKey( spep_0-3 + 256, 1, 0 );
setRotateKey( spep_0-3 + 258, 1, 0.1 );
setRotateKey( spep_0-3 + 260, 1, 0.3 );
setRotateKey( spep_0-3 + 262, 1, 1 );
setRotateKey( spep_0-3 + 264, 1, 2.8 );
setRotateKey( spep_0-3 + 266, 1, 3.8 );
setRotateKey( spep_0-3 + 268, 1, 4.3 );
setRotateKey( spep_0-3 + 270, 1, 4.6 );
setRotateKey( spep_0-3 + 272, 1, 4.7 );
setRotateKey( spep_0-3 + 274, 1, 4.8 );
setRotateKey( spep_0-3 + 276, 1, 4.9 );
setRotateKey( spep_0-3 + 278, 1, 4.9 );
setRotateKey( spep_0-3 + 280, 1, 5 );
setRotateKey( spep_0-3 + 295, 1, 5 );

setRotateKey( spep_0-3 + 296, 1, 60.1 );
setRotateKey( spep_0-3 + 298, 1, 60.1 );
setRotateKey( spep_0-3 + 300, 1, 59.9 );
setRotateKey( spep_0-3 + 302, 1, 59.5 );
setRotateKey( spep_0-3 + 304, 1, 59.1 );
setRotateKey( spep_0-3 + 306, 1, 58.4 );
setRotateKey( spep_0-3 + 308, 1, 57.7 );
setRotateKey( spep_0-3 + 310, 1, 56.8 );
setRotateKey( spep_0-3 + 312, 1, 55.8 );
setRotateKey( spep_0-3 + 314, 1, 54.6 );
setRotateKey( spep_0-3 + 316, 1, 53.4 );
setRotateKey( spep_0-3 + 318, 1, 51.9 );
setRotateKey( spep_0-3 + 320, 1, 50.4 );
setRotateKey( spep_0-3 + 322, 1, 48.7 );
setRotateKey( spep_0-3 + 324, 1, 46.8 );
setRotateKey( spep_0-3 + 326, 1, 44.9 );

--文字エントリー
ctsyun = entryEffectLife( spep_0-3 + 64,  10011, 18, 0x100, -1, 0, -19.1, 164.4 );--シュンッ
setEffShake( spep_0-3 + 64, ctsyun, 18, 10 );

setEffMoveKey( spep_0-3 + 64, ctsyun, -19.1, 164.4 , 0 );
setEffMoveKey( spep_0-3 + 66, ctsyun, -19.1, 168.9 , 0 );
setEffMoveKey( spep_0-3 + 68, ctsyun, -18.9, 204.7 , 0 );
setEffMoveKey( spep_0-3 + 70, ctsyun, -18.8, 217.4 , 0 );
setEffMoveKey( spep_0-3 + 72, ctsyun, -18.7, 221.3 , 0 );
setEffMoveKey( spep_0-3 + 74, ctsyun, -18.7, 222.7 , 0 );
setEffMoveKey( spep_0-3 + 76, ctsyun, -18.7, 223.2 , 0 );
setEffMoveKey( spep_0-3 + 78, ctsyun, -18.7, 223.5 , 0 );
setEffMoveKey( spep_0-3 + 80, ctsyun, -19.3, 229 , 0 );
setEffMoveKey( spep_0-3 + 82, ctsyun, -19.8, 234.5 , 0 );

setEffScaleKey( spep_0-3 + 64, ctsyun, 1.44, 1.43 );
setEffScaleKey( spep_0-3 + 66, ctsyun, 1.55, 1.51 );
setEffScaleKey( spep_0-3 + 68, ctsyun, 2.4, 2.13 );
setEffScaleKey( spep_0-3 + 70, ctsyun, 2.7, 2.35 );
setEffScaleKey( spep_0-3 + 72, ctsyun, 2.79, 2.41 );
setEffScaleKey( spep_0-3 + 74, ctsyun, 2.82, 2.44 );
setEffScaleKey( spep_0-3 + 76, ctsyun, 2.84, 2.45 );
setEffScaleKey( spep_0-3 + 78, ctsyun, 2.84, 2.45 );
setEffScaleKey( spep_0-3 + 80, ctsyun, 2.98, 2.56 );
setEffScaleKey( spep_0-3 + 82, ctsyun, 3.12, 2.67 );

setEffRotateKey( spep_0-3 + 64, ctsyun, 0 );
setEffRotateKey( spep_0-3 + 82, ctsyun, 0 );

setEffAlphaKey( spep_0-3 + 64, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 78, ctsyun, 255 );
setEffAlphaKey( spep_0-3 + 80, ctsyun, 140 );
setEffAlphaKey( spep_0-3 + 82, ctsyun, 26 );

--文字エントリー
ctbikkuri = entryEffectLife( spep_0-3 + 92,  10000, 16, 0x100, -1, 0, -112.5, 130.4 );--!!
setEffShake( spep_0-3 + 92, ctbikkuri, 16, 10 );

setEffMoveKey( spep_0-3 + 92, ctbikkuri, -112.5, 130.4 , 0 );
setEffMoveKey( spep_0-3 + 94, ctbikkuri, -134.7, 232.1 , 0 );
setEffMoveKey( spep_0-3 + 96, ctbikkuri, -141.2, 220.8 , 0 );
setEffMoveKey( spep_0-3 + 98, ctbikkuri, -125.6, 211.2 , 0 );
setEffMoveKey( spep_0-3 + 100, ctbikkuri, -134.5, 204.2 , 0 );
setEffMoveKey( spep_0-3 + 102, ctbikkuri, -129.1, 213.7 , 0 );
setEffMoveKey( spep_0-3 + 104, ctbikkuri, -134.5, 204.2 , 0 );
setEffMoveKey( spep_0-3 + 106, ctbikkuri, -125.6, 211.2 , 0 );
setEffMoveKey( spep_0-3 + 108, ctbikkuri, -134.5, 204.2 , 0 );

setEffScaleKey( spep_0-3 + 92, ctbikkuri, 1.84, 1.85 );
setEffScaleKey( spep_0-3 + 94, ctbikkuri, 3.53, 3.55 );
setEffScaleKey( spep_0-3 + 96, ctbikkuri, 3.53, 3.55 );
setEffScaleKey( spep_0-3 + 98, ctbikkuri, 2.94, 2.95 );
setEffScaleKey( spep_0-3 + 108, ctbikkuri, 2.94, 2.95 );

setEffRotateKey( spep_0-3 + 92, ctbikkuri, 0 );
setEffRotateKey( spep_0-3 + 108, ctbikkuri, 0 );

setEffAlphaKey( spep_0-3 + 92, ctbikkuri, 255 );
setEffAlphaKey( spep_0-3 + 106, ctbikkuri, 255 );
setEffAlphaKey( spep_0-3 + 108, ctbikkuri, 77 );

--文字エントリー
ctdon = entryEffectLife( spep_0-3 + 140,  10019, 18, 0x100, -1, 0, -27.3, 178.3 );--ドンッ
setEffShake( spep_0-3 + 140, ctdon, 18, 10 );

setEffMoveKey( spep_0-3 + 140, ctdon, -27.3, 178.3 , 0 );
setEffMoveKey( spep_0-3 + 142, ctdon, -44.8, 220.9 , 0 );
setEffMoveKey( spep_0-3 + 144, ctdon, -69.2, 239.6 , 0 );
setEffMoveKey( spep_0-3 + 146, ctdon, -69.7, 259.7 , 0 );
setEffMoveKey( spep_0-3 + 148, ctdon, -85.2, 260.7 , 0 );
setEffMoveKey( spep_0-3 + 150, ctdon, -76.2, 264.7 , 0 );
setEffMoveKey( spep_0-3 + 152, ctdon, -80.4, 268.3 , 0 );
setEffMoveKey( spep_0-3 + 154, ctdon, -88.5, 296.1 , 0 );
setEffMoveKey( spep_0-3 + 156, ctdon, -110.6, 302.7 , 0 );
setEffMoveKey( spep_0-3 + 158, ctdon, -112.5, 305.5 , 0 );

setEffScaleKey( spep_0-3 + 140, ctdon, 1.29, 1.3 );
setEffScaleKey( spep_0-3 + 142, ctdon, 1.62, 1.64 );
setEffScaleKey( spep_0-3 + 144, ctdon, 1.78, 1.81 );
setEffScaleKey( spep_0-3 + 146, ctdon, 1.89, 1.91 );
setEffScaleKey( spep_0-3 + 148, ctdon, 1.95, 1.98 );
setEffScaleKey( spep_0-3 + 150, ctdon, 1.99, 2.02 );
setEffScaleKey( spep_0-3 + 152, ctdon, 2.01, 2.04 );
setEffScaleKey( spep_0-3 + 154, ctdon, 2.19, 2.23 );
setEffScaleKey( spep_0-3 + 156, ctdon, 2.26, 2.29 );
setEffScaleKey( spep_0-3 + 158, ctdon, 2.28, 2.31 );

setEffRotateKey( spep_0-3 + 140, ctdon, 0 );
setEffRotateKey( spep_0-3 + 158, ctdon, 0 );

setEffAlphaKey( spep_0-3 + 140, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 152, ctdon, 255 );
setEffAlphaKey( spep_0-3 + 154, ctdon, 80 );
setEffAlphaKey( spep_0-3 + 156, ctdon, 19 );
setEffAlphaKey( spep_0-3 + 158, ctdon, 0 );

--文字エントリー
ctga = entryEffectLife( spep_0-3 + 188,  10005, 18, 0x100, -1, 0, -47.7, 195.9 );--ガッ
setEffShake( spep_0-3 + 188, ctga, 18, 10 );

setEffMoveKey( spep_0-3 + 188, ctga, -47.7, 195.9 , 0 );
setEffMoveKey( spep_0-3 + 190, ctga, -21.1, 237 , 0 );
setEffMoveKey( spep_0-3 + 192, ctga, -19, 256.4 , 0 );
setEffMoveKey( spep_0-3 + 194, ctga, -3.9, 272.1 , 0 );
setEffMoveKey( spep_0-3 + 196, ctga, -10.4, 276.2 , 0 );
setEffMoveKey( spep_0-3 + 198, ctga, 2.7, 287.2 , 0 );
setEffMoveKey( spep_0-3 + 200, ctga, -5.3, 283.8 , 0 );
setEffMoveKey( spep_0-3 + 202, ctga, 40.9, 334 , 0 );
setEffMoveKey( spep_0-3 + 204, ctga, 37.5, 342.6 , 0 );
setEffMoveKey( spep_0-3 + 206, ctga, 41.2, 347.3 , 0 );

setEffScaleKey( spep_0-3 + 188, ctga, 1, 1 );
setEffScaleKey( spep_0-3 + 190, ctga, 1.5, 1.5 );
setEffScaleKey( spep_0-3 + 192, ctga, 1.75, 1.75 );
setEffScaleKey( spep_0-3 + 194, ctga, 1.9, 1.9 );
setEffScaleKey( spep_0-3 + 196, ctga, 2, 2 );
setEffScaleKey( spep_0-3 + 198, ctga, 2.06, 2.06 );
setEffScaleKey( spep_0-3 + 200, ctga, 2.08, 2.09 );
setEffScaleKey( spep_0-3 + 202, ctga, 2.35, 2.35 );
setEffScaleKey( spep_0-3 + 204, ctga, 2.44, 2.44 );
setEffScaleKey( spep_0-3 + 206, ctga, 2.47, 2.47 );

setEffRotateKey( spep_0-3 + 188, ctga, 0 );
setEffRotateKey( spep_0-3 + 206, ctga, 0 );

setEffAlphaKey( spep_0-3 + 188, ctga, 255 );
setEffAlphaKey( spep_0-3 + 200, ctga, 255 );
setEffAlphaKey( spep_0-3 + 202, ctga, 80 );
setEffAlphaKey( spep_0-3 + 204, ctga, 19 );
setEffAlphaKey( spep_0-3 + 206, ctga, 0 );

--文字エントリー
ctbaki = entryEffectLife( spep_0-3 + 254,  10020, 16, 0x100, -1, 0, 92.2, 154.7 );--バキッ
setEffShake( spep_0-3 + 254, ctbaki, 16, 10 );

setEffMoveKey( spep_0-3 + 254, ctbaki, 92.2, 154.7 , 0 );
setEffMoveKey( spep_0-3 + 256, ctbaki, 113.9, 191.4 , 0 );
setEffMoveKey( spep_0-3 + 258, ctbaki, 110.2, 200.6 , 0 );
setEffMoveKey( spep_0-3 + 260, ctbaki, 131.1, 217 , 0 );
setEffMoveKey( spep_0-3 + 262, ctbaki, 117.9, 228.7 , 0 );
setEffMoveKey( spep_0-3 + 264, ctbaki, 125.2, 224 , 0 );
setEffMoveKey( spep_0-3 + 266, ctbaki, 146.4, 275.5 , 0 );
setEffMoveKey( spep_0-3 + 268, ctbaki, 137, 285.3 , 0 );
setEffMoveKey( spep_0-3 + 270, ctbaki, 139.9, 295.6 , 0 );

setEffScaleKey( spep_0-3 + 254, ctbaki, 1.47, 1.32 );
setEffScaleKey( spep_0-3 + 256, ctbaki, 2, 1.79 );
setEffScaleKey( spep_0-3 + 258, ctbaki, 2.23, 2.01 );
setEffScaleKey( spep_0-3 + 260, ctbaki, 2.38, 2.13 );
setEffScaleKey( spep_0-3 + 262, ctbaki, 2.46, 2.21 );
setEffScaleKey( spep_0-3 + 264, ctbaki, 2.48, 2.23 );
setEffScaleKey( spep_0-3 + 266, ctbaki, 2.73, 2.69 );
setEffScaleKey( spep_0-3 + 268, ctbaki, 2.83, 2.88 );
setEffScaleKey( spep_0-3 + 270, ctbaki, 2.88, 2.98 );

setEffRotateKey( spep_0-3 + 254, ctbaki, 0 );
setEffRotateKey( spep_0-3 + 270, ctbaki, 0 );

setEffAlphaKey( spep_0-3 + 254, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 264, ctbaki, 255 );
setEffAlphaKey( spep_0-3 + 266, ctbaki, 98 );
setEffAlphaKey( spep_0-3 + 268, ctbaki, 33 );
setEffAlphaKey( spep_0-3 + 270, ctbaki, 0 );

-- ** 顔カットイン ** --
--speff = entryEffect( spep_0+316  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_0+316  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_0+4 +328, 190006, 72, 0x102, -1, 0, 180, 0, 1200);-- ゴゴゴゴ

setEffMoveKey(  spep_0+4 +328,  ctgogo,  0,  510);
setEffMoveKey(  spep_0+4 +400,  ctgogo,  0,  510);

setEffAlphaKey( spep_0+4 +328, ctgogo, 0 );
setEffAlphaKey( spep_0+4 + 329, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 330, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 394, ctgogo, 255 );
setEffAlphaKey( spep_0+4 + 396, ctgogo, 191 );
setEffAlphaKey( spep_0+4 + 398, ctgogo, 112 );
setEffAlphaKey( spep_0+4 + 400, ctgogo, 64 );

setEffRotateKey(  spep_0+4 +328,  ctgogo,  0);
setEffRotateKey(  spep_0+4 +400,  ctgogo,  0);

setEffScaleKey(  spep_0+4 +328,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+4 +390,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_0+4 +400,  ctgogo, -1.07, 1.07);

--SE

--瞬間移動
SE002 =playSe( spep_0 + 62 , 1109 );

--レズン通り過ぎる
SE003 =playSe( spep_0 + 110 , 63 );
setSeVolumeByWorkId( spep_0 + 110 , SE003 , 0 );
setSeVolumeByWorkId( spep_0 + 111 , SE003 , 10 );
setSeVolumeByWorkId( spep_0 + 112 , SE003 , 20 );
setSeVolumeByWorkId( spep_0 + 113 , SE003 , 30 );
setSeVolumeByWorkId( spep_0 + 114 , SE003 , 40 );
setSeVolumeByWorkId( spep_0 + 115 , SE003 , 50 );
setSeVolumeByWorkId( spep_0 + 116 , SE003 , 60 );
setSeVolumeByWorkId( spep_0 + 117 , SE003 , 70 );
setSeVolumeByWorkId( spep_0 + 118 , SE003 , 80 );
setSeVolumeByWorkId( spep_0 + 119 , SE003 , 90 );
setSeVolumeByWorkId( spep_0 + 120 , SE003 , 100 );
stopSe( spep_0 + 136, SE003, 12);
setStartTimeMs( SE003,  517 );
SE005 =playSe( spep_0 + 108 , 1277 );
setSeVolumeByWorkId( spep_0 + 108 , SE005 , 126 );
SE006 =playSe( spep_0 + 108 , 1117 );
stopSe( spep_0 + 136, SE006, 34);

--！！
SE004 =playSe( spep_0 + 90 , 1042 );
stopSe( spep_0 + 110, SE004, 24);

--ラカセイキック
SE007 =playSe( spep_0 + 138 , 1009 );
SE008 =playSe( spep_0 + 138 , 1110 );
setSeVolumeByWorkId( spep_0 + 138 , SE008 , 79 );

--ダイーズパンチ
SE009 =playSe( spep_0 + 180 , 1189 );
setSeVolumeByWorkId( spep_0 + 180 , SE009 , 82 );
SE010 =playSe( spep_0 + 186 , 1110 );
SE011 =playSe( spep_0 + 186 , 1010 );

--瞬間移動
SE012 =playSe( spep_0 + 226 , 1109 );
setSeVolumeByWorkId( spep_0 + 226 , SE012 , 80 );
SE016 =playSe( spep_0 + 268 , 1109 );
setSeVolumeByWorkId( spep_0 + 268 , SE016 , 84 );

--カカオパンチ
SE013 =playSe( spep_0 + 246 , 1003 );
SE014 =playSe( spep_0 + 252 , 1009 );
SE015 =playSe( spep_0 + 252 , 1187 );
setSeVolumeByWorkId( spep_0 + 252 , SE015 , 72 );
stopSe( spep_0 + 266, SE015, 28);

--アモンドパンチ
SE017 =playSe( spep_0 + 290 , 1004 );
setSeVolumeByWorkId( spep_0 + 290 , SE017 , 64 );
SE018 =playSe( spep_0 + 296 , 1110 );
setSeVolumeByWorkId( spep_0 + 296 , SE018 , 77 );
SE019 =playSe( spep_0 + 296 , 1187 );

--ターレス降りてくる
SE020 =playSe( spep_0 + 332 , 8 );

--顔カットイン
SE021 =playSe( spep_0+4 + 328 , 1018 );

--白フェード
entryFade( spep_0+404 , 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


--次の準備
spep_1=spep_0+406;
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
spep_2 = spep_1 + 94;
------------------------------------------------------
-- ターレス連続気弾〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 718, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 718, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 718, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 718, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 718, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 718, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 718, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 718, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 78, 1, 1);
setDisp( spep_2-3 + 146, 1, 0);

changeAnime( spep_2-3 + 78, 1, 106);
changeAnime( spep_2-3 + 106, 1, 108);

setBlendColor(spep_2-3 + 106,1,1,1,1,1,1);
setBlendColor(spep_2-3 + 150,1,1,1,1,1,1);
setBlendColor(spep_2-3 + 152,1,1,1,1,1,0);

setMoveKey( spep_2-3 + 78, 1, -99, 75.6 , 0 );
setMoveKey( spep_2-3 + 80, 1, -100.1, 76.7 , 0 );
setMoveKey( spep_2-3 + 82, 1, -103.2, 80.3 , 0 );
setMoveKey( spep_2-3 + 84, 1, -108.3, 86.2 , 0 );
setMoveKey( spep_2-3 + 86, 1, -115.5, 94.4 , 0 );
setMoveKey( spep_2-3 + 88, 1, -124.7, 105 , 0 );
setMoveKey( spep_2-3 + 90, 1, -136, 117.9 , 0 );
setMoveKey( spep_2-3 + 92, 1, -148.9, 132.7 , 0 );
setMoveKey( spep_2-3 + 94, 1, -160.2, 145.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -169.5, 156.2 , 0 );
setMoveKey( spep_2-3 + 98, 1, -176.7, 164.4 , 0 );
setMoveKey( spep_2-3 + 100, 1, -181.8, 170.3 , 0 );
setMoveKey( spep_2-3 + 102, 1, -184.9, 173.9 , 0 );
setMoveKey( spep_2-3 + 104, 1, -185.9, 175 , 0 );
setMoveKey( spep_2-3 + 105, 1, -185.9, 175 , 0 );
setMoveKey( spep_2-3 + 106, 1, -109.3, -18 , 0 );
setMoveKey( spep_2-3 + 108, 1, -105.4, -21 , 0 );
setMoveKey( spep_2-3 + 110, 1, -100.3, -24.9 , 0 );
setMoveKey( spep_2-3 + 112, 1, -94.1, -29.7 , 0 );
setMoveKey( spep_2-3 + 114, 1, -86.6, -35.5 , 0 );
setMoveKey( spep_2-3 + 116, 1, -77.8, -42.2 , 0 );
setMoveKey( spep_2-3 + 118, 1, -67.6, -50 , 0 );
setMoveKey( spep_2-3 + 120, 1, -56, -58.9 , 0 );
setMoveKey( spep_2-3 + 122, 1, -42.9, -68.9 , 0 );
setMoveKey( spep_2-3 + 124, 1, -28.2, -80.2 , 0 );
setMoveKey( spep_2-3 + 126, 1, -11.8, -92.8 , 0 );
setMoveKey( spep_2-3 + 128, 1, 6.4, -106.7 , 0 );
setMoveKey( spep_2-3 + 130, 1, 26.4, -122.1 , 0 );
setMoveKey( spep_2-3 + 132, 1, 48.5, -138.9 , 0 );
setMoveKey( spep_2-3 + 134, 1, 72.5, -157.4 , 0 );
setMoveKey( spep_2-3 + 136, 1, 98.5, -177.3 , 0 );
setMoveKey( spep_2-3 + 138, 1, 124.3, -197.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 149.5, -216.4 , 0 );
setMoveKey( spep_2-3 + 142, 1, 181, -240.5 , 0 );
setMoveKey( spep_2-3 + 144, 1, 242.9, -288 , 0 );
setMoveKey( spep_2-3 + 146, 1, 743.9, -672 , 0 );

setScaleKey( spep_2-3 + 78, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 146, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 78, 1, 84 );
setRotateKey( spep_2-3 + 105, 1, 84 );
setRotateKey( spep_2-3 + 106, 1, 64 );
setRotateKey( spep_2-3 + 146, 1, 64 );

--文字エントリー
ctzudodo = entryEffectLife( spep_2-3 + 194,  10014, 66, 0x100, -1, 0, 95.8, -17.5 );--ズドドドッ
setEffShake( spep_2-3 + 194, ctzudodo, 66, 10 );

setEffMoveKey( spep_2-3 + 194, ctzudodo, 95.8, -17.5 , 0 );
setEffMoveKey( spep_2-3 + 196, ctzudodo, 85.7, 22.1 , 0 );
setEffMoveKey( spep_2-3 + 198, ctzudodo, 33.7, 148.2 , 0 );
setEffMoveKey( spep_2-3 + 200, ctzudodo, 24.1, 195.3 , 0 );
setEffMoveKey( spep_2-3 + 202, ctzudodo, 19.4, 185.2 , 0 );
setEffMoveKey( spep_2-3 + 204, ctzudodo, 17.4, 212.1 , 0 );
setEffMoveKey( spep_2-3 + 206, ctzudodo, 13.1, 200.2 , 0 );
setEffMoveKey( spep_2-3 + 208, ctzudodo, 11.6, 226.7 , 0 );
setEffMoveKey( spep_2-3 + 210, ctzudodo, 7.7, 213.1 , 0 );
setEffMoveKey( spep_2-3 + 212, ctzudodo, 6.6, 239.3 , 0 );
setEffMoveKey( spep_2-3 + 214, ctzudodo, 3.1, 224.1 , 0 );
setEffMoveKey( spep_2-3 + 216, ctzudodo, 2.5, 249.8 , 0 );
setEffMoveKey( spep_2-3 + 218, ctzudodo, -0.7, 233.1 , 0 );
setEffMoveKey( spep_2-3 + 220, ctzudodo, -0.8, 258.2 , 0 );
setEffMoveKey( spep_2-3 + 222, ctzudodo, -3.6, 240.1 , 0 );
setEffMoveKey( spep_2-3 + 224, ctzudodo, -3.3, 264.5 , 0 );
setEffMoveKey( spep_2-3 + 226, ctzudodo, -5.7, 245.1 , 0 );
setEffMoveKey( spep_2-3 + 228, ctzudodo, -5, 268.7 , 0 );
setEffMoveKey( spep_2-3 + 230, ctzudodo, -7, 248.1 , 0 );
setEffMoveKey( spep_2-3 + 232, ctzudodo, -5.8, 270.8 , 0 );
setEffMoveKey( spep_2-3 + 234, ctzudodo, -5.9, 271 , 0 );
setEffMoveKey( spep_2-3 + 236, ctzudodo, -7.6, 249.7 , 0 );
setEffMoveKey( spep_2-3 + 238, ctzudodo, -6.9, 273.4 , 0 );
setEffMoveKey( spep_2-3 + 240, ctzudodo, -9.6, 254.3 , 0 );
setEffMoveKey( spep_2-3 + 242, ctzudodo, -9.8, 280.7 , 0 );
setEffMoveKey( spep_2-3 + 244, ctzudodo, -13.4, 263.5 , 0 );
setEffMoveKey( spep_2-3 + 246, ctzudodo, -14.6, 292.9 , 0 );
setEffMoveKey( spep_2-3 + 248, ctzudodo, -19.2, 277.1 , 0 );
setEffMoveKey( spep_2-3 + 250, ctzudodo, -20.2, 307.1 , 0 );
setEffMoveKey( spep_2-3 + 252, ctzudodo, -24, 288.7 , 0 );
setEffMoveKey( spep_2-3 + 254, ctzudodo, -24.1, 316.8 , 0 );
setEffMoveKey( spep_2-3 + 256, ctzudodo, -26.9, 295.6 , 0 );
setEffMoveKey( spep_2-3 + 258, ctzudodo, -26, 321.7 , 0 );
setEffMoveKey( spep_2-3 + 260, ctzudodo, -26.3, 322.3 , 0 );

setEffScaleKey( spep_2-3 + 194, ctzudodo, 1.07, 1.07 );
setEffScaleKey( spep_2-3 + 196, ctzudodo, 1.22, 1.22 );
setEffScaleKey( spep_2-3 + 198, ctzudodo, 1.91, 1.91 );
setEffScaleKey( spep_2-3 + 200, ctzudodo, 2.06, 2.06 );
setEffScaleKey( spep_2-3 + 202, ctzudodo, 2.1, 2.1 );
setEffScaleKey( spep_2-3 + 204, ctzudodo, 2.15, 2.15 );
setEffScaleKey( spep_2-3 + 206, ctzudodo, 2.19, 2.19 );
setEffScaleKey( spep_2-3 + 208, ctzudodo, 2.23, 2.23 );
setEffScaleKey( spep_2-3 + 210, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_2-3 + 212, ctzudodo, 2.29, 2.29 );
setEffScaleKey( spep_2-3 + 214, ctzudodo, 2.32, 2.32 );
setEffScaleKey( spep_2-3 + 216, ctzudodo, 2.35, 2.35 );
setEffScaleKey( spep_2-3 + 218, ctzudodo, 2.37, 2.37 );
setEffScaleKey( spep_2-3 + 220, ctzudodo, 2.39, 2.39 );
setEffScaleKey( spep_2-3 + 222, ctzudodo, 2.41, 2.41 );
setEffScaleKey( spep_2-3 + 224, ctzudodo, 2.43, 2.43 );
setEffScaleKey( spep_2-3 + 226, ctzudodo, 2.44, 2.44 );
setEffScaleKey( spep_2-3 + 228, ctzudodo, 2.45, 2.45 );
setEffScaleKey( spep_2-3 + 230, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 234, ctzudodo, 2.46, 2.46 );
setEffScaleKey( spep_2-3 + 236, ctzudodo, 2.47, 2.47 );
setEffScaleKey( spep_2-3 + 238, ctzudodo, 2.48, 2.48 );
setEffScaleKey( spep_2-3 + 240, ctzudodo, 2.49, 2.49 );
setEffScaleKey( spep_2-3 + 242, ctzudodo, 2.52, 2.52 );
setEffScaleKey( spep_2-3 + 244, ctzudodo, 2.55, 2.55 );
setEffScaleKey( spep_2-3 + 246, ctzudodo, 2.58, 2.58 );
setEffScaleKey( spep_2-3 + 248, ctzudodo, 2.62, 2.62 );
setEffScaleKey( spep_2-3 + 250, ctzudodo, 2.66, 2.66 );
setEffScaleKey( spep_2-3 + 252, ctzudodo, 2.69, 2.69 );
setEffScaleKey( spep_2-3 + 254, ctzudodo, 2.71, 2.71 );
setEffScaleKey( spep_2-3 + 256, ctzudodo, 2.73, 2.73 );
setEffScaleKey( spep_2-3 + 258, ctzudodo, 2.74, 2.74 );
setEffScaleKey( spep_2-3 + 260, ctzudodo, 2.74, 2.74 );

setEffRotateKey( spep_2-3 + 194, ctzudodo, -13.2 );
setEffRotateKey( spep_2-3 + 260, ctzudodo, -13.2 );

setEffAlphaKey( spep_2-3 + 194, ctzudodo, 77 );
setEffAlphaKey( spep_2-3 + 196, ctzudodo, 103 );
setEffAlphaKey( spep_2-3 + 198, ctzudodo, 229 );
setEffAlphaKey( spep_2-3 + 200, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 234, ctzudodo, 255 );
setEffAlphaKey( spep_2-3 + 236, ctzudodo, 252 );
setEffAlphaKey( spep_2-3 + 238, ctzudodo, 243 );
setEffAlphaKey( spep_2-3 + 240, ctzudodo, 228 );
setEffAlphaKey( spep_2-3 + 242, ctzudodo, 207 );
setEffAlphaKey( spep_2-3 + 244, ctzudodo, 180 );
setEffAlphaKey( spep_2-3 + 246, ctzudodo, 146 );
setEffAlphaKey( spep_2-3 + 248, ctzudodo, 109 );
setEffAlphaKey( spep_2-3 + 250, ctzudodo, 75 );
setEffAlphaKey( spep_2-3 + 252, ctzudodo, 48 );
setEffAlphaKey( spep_2-3 + 254, ctzudodo, 27 );
setEffAlphaKey( spep_2-3 + 256, ctzudodo, 12 );
setEffAlphaKey( spep_2-3 + 258, ctzudodo, 3 );
setEffAlphaKey( spep_2-3 + 260, ctzudodo, 0 );

--K.O.演出
KO = entryEffect( spep_2 + 698, SP_05, 0x100, -1, 0, 0, 0 );  --KO演出
setEffMoveKey( spep_2 + 698, KO, 0, 0 , 0 );
setEffMoveKey( spep_2 + 820, KO, 0, 0 , 0 );
setEffScaleKey( spep_2 + 698, KO, -1.0 , 1.0  );
setEffScaleKey( spep_2 + 820, KO, -1.0 , 1.0  );
setEffRotateKey( spep_2 + 698, KO, 0 );
setEffRotateKey( spep_2 + 820, KO, 0 );
setEffAlphaKey( spep_2 + 698, KO, 255 );
setEffAlphaKey( spep_2 + 820, KO, 255 );

--SE
--腕前に出す
SE023 =playSe( spep_2 + 12 , 1233 );
setPitch( spep_2 + 12, SE023, -400 );
setTimeStretch( SE023, 0.73, 10, 1 );
SE024 =playSe( spep_2 + 16 , 1003 );

--気弾発射
SE025 =playSe( spep_2 + 36 , 1146 );
--setSeVolumeByWorkId( spep_2 + 36 , SE025 , 65 );
setPitch( spep_2 + 36, SE025, -100 );
setTimeStretch( SE025, 0.93, 10, 1 );
setBandpassFilter	( spep_2 + 36, SE025, 300, 24000 );
stopSe( spep_2 + 110, SE025, 28);
SE026 =playSe( spep_2 + 36 , 1201 );
setSeVolumeByWorkId( spep_2 + 36 , SE026 , 188 );
setPitch( spep_2 + 36, SE026, 400 );
setTimeStretch( SE026, 1.27, 10, 1 );
SE027 =playSe( spep_2 + 36 , 1046 );
setSeVolumeByWorkId( spep_2 + 36 , SE027 , 89 );
SE028 =playSe( spep_2 + 36 , 1177 );
setSeVolumeByWorkId( spep_2 + 36 , SE028 , 60 );
setPitch( spep_2 + 36, SE028, 200 );
setTimeStretch( SE028, 1.13, 10, 1 );
stopSe( spep_2 + 106, SE028, 16);

--気弾ヒット
SE029 =playSe( spep_2 + 112 , 1201 );
setPitch( spep_2 + 112, SE029, 400 );
setTimeStretch( SE029, 1.27, 10, 1 );
SE030 =playSe( spep_2 + 112 , 1025 );
setSeVolumeByWorkId( spep_2 + 112 , SE030 , 136 );
setBandpassFilter	( spep_2 + 112, SE030, 300, 24000 );
SE031 =playSe( spep_2 + 124 , 1201 );
setSeVolumeByWorkId( spep_2 + 124 , SE031 , 94 );
setPitch( spep_2 + 124, SE031, 400 );
setTimeStretch( SE031, 1.27, 10, 1 );
SE032 =playSe( spep_2 + 124 , 1025 );
setSeVolumeByWorkId( spep_2 + 124 , SE032 , 108 );
setBandpassFilter	( spep_2 + 124, SE032, 300, 24000 );
SE033 =playSe( spep_2 + 140 , 1201 );
setSeVolumeByWorkId( spep_2 + 140 , SE033 , 95 );
setPitch( spep_2 + 140, SE033, 400 );
setTimeStretch( SE033, 1.27, 10, 1 );
SE034 =playSe( spep_2 + 140 , 1025 );
setSeVolumeByWorkId( spep_2 + 140 , SE034 , 86 );
setBandpassFilter	( spep_2 + 140, SE034, 300, 24000 );
SE035 =playSe( spep_2 + 156 , 1201 );
setSeVolumeByWorkId( spep_2 + 156 , SE035 , 97 );
setPitch( spep_2 + 156, SE035, 400 );
setTimeStretch( SE035, 1.27, 10, 1 );
SE036 =playSe( spep_2 + 156 , 1025 );

--気弾降り注ぐ
SE037 =playSe( spep_2 + 166 , 1121 );
stopSe( spep_2 + 214, SE037, 26);
SE038 =playSe( spep_2 + 170 , 1021 );
SE039 =playSe( spep_2 + 200 , 1188 );
setSeVolumeByWorkId( spep_2 + 200 , SE039 , 82 );
SE040 =playSe( spep_2 + 208 , 1159 );
setSeVolumeByWorkId( spep_2 + 208 , SE040 , 94 );
SE041 =playSe( spep_2 + 228 , 1024 );

--手合わせる
SE042 =playSe( spep_2 + 322 , 1189 );
setSeVolumeByWorkId( spep_2 + 322 , SE042 , 108 );
SE043 =playSe( spep_2 + 326 , 1006 );
setSeVolumeByWorkId( spep_2 + 326 , SE043 , 117 );

--気弾溜める
SE044 =playSe( spep_2 + 334 , 1243 );
setSeVolumeByWorkId( spep_2 + 334 , SE044 , 119 );
stopSe( spep_2 + 378, SE044, 12);
SE045 =playSe( spep_2 + 334 , 1250 );
setSeVolumeByWorkId( spep_2 + 334 , SE045 , 120 );
stopSe( spep_2 + 376, SE045, 12);

--輪っか広がる
SE046 =playSe( spep_2 + 352 , 1130 );
setSeVolumeByWorkId( spep_2 + 352 , SE046 , 32 );
setPitch( spep_2 + 352, SE046, -800 );
setTimeStretch( SE046, 0.47, 10, 1 );
stopSe( spep_2 + 376, SE046, 16);

--輪っか持ち上げる
SE047 =playSe( spep_2 + 382 , 1276 );
setSeVolumeByWorkId( spep_2 + 382 , SE047 , 123 );
setPitch( spep_2 + 382, SE047, -200 );
setTimeStretch( SE047, 0.96, 10, 1 );
SE048 =playSe( spep_2 + 382 , 1132 );
setSeVolumeByWorkId( spep_2 + 382 , SE048 , 66 );
setPitch( spep_2 + 382, SE048, 400 );
setTimeStretch( SE048, 1.27, 10, 1 );
SE049 =playSe( spep_2 + 390 , 1262 );
setSeVolumeByWorkId( spep_2 + 390 , SE049 , 129 );
setPitch( spep_2 + 390, SE049, 300 );
setTimeStretch( SE049, 1.2, 10, 1 );

--ターレスアップ
SE050 =playSe( spep_2 + 448 , 9 );
setSeVolumeByWorkId( spep_2 + 448,SE050,0);
setSeVolumeByWorkId( spep_2 + 449,SE050,7.25);
setSeVolumeByWorkId( spep_2 + 450,SE050,14.5);
setSeVolumeByWorkId( spep_2 + 451,SE050,21.75);
setSeVolumeByWorkId( spep_2 + 452,SE050,29);
setSeVolumeByWorkId( spep_2 + 453,SE050,36.25);
setSeVolumeByWorkId( spep_2 + 454,SE050,43.5);
setSeVolumeByWorkId( spep_2 + 455,SE050,50.75);
setSeVolumeByWorkId( spep_2 + 456,SE050,58);
stopSe( spep_2 + 486, SE050, 56);
SE051 =playSe( spep_2 + 448 , 1182 );
setSeVolumeByWorkId( spep_2 + 448,SE051,0);
setSeVolumeByWorkId( spep_2 + 449,SE051,7.2);
setSeVolumeByWorkId( spep_2 + 450,SE051,14.4);
setSeVolumeByWorkId( spep_2 + 451,SE051,21.6);
setSeVolumeByWorkId( spep_2 + 452,SE051,28.8);
setSeVolumeByWorkId( spep_2 + 453,SE051,36);
setSeVolumeByWorkId( spep_2 + 454,SE051,43.2);
setSeVolumeByWorkId( spep_2 + 455,SE051,50.4);
setSeVolumeByWorkId( spep_2 + 456,SE051,57.6);
setSeVolumeByWorkId( spep_2 + 457,SE051,64.8);
setSeVolumeByWorkId( spep_2 + 458,SE051,72);
setSeVolumeByWorkId( spep_2 + 459,SE051,79.2);
setSeVolumeByWorkId( spep_2 + 460,SE051,86.4);
setSeVolumeByWorkId( spep_2 + 461,SE051,93.6);
setSeVolumeByWorkId( spep_2 + 462,SE051,100);

--輪っか飛んでいく
SE052 =playSe( spep_2 + 518 , 1193 );
setSeVolumeByWorkId( spep_2 + 518,SE052,0);
setSeVolumeByWorkId( spep_2 + 519,SE052,2.6);
setSeVolumeByWorkId( spep_2 + 520,SE052,5.2);
setSeVolumeByWorkId( spep_2 + 521,SE052,7.8);
setSeVolumeByWorkId( spep_2 + 522,SE052,10.4);
setSeVolumeByWorkId( spep_2 + 523,SE052,13);
setSeVolumeByWorkId( spep_2 + 524,SE052,15.6);
setSeVolumeByWorkId( spep_2 + 525,SE052,18.2);
setSeVolumeByWorkId( spep_2 + 526,SE052,20.8);
setSeVolumeByWorkId( spep_2 + 527,SE052,23.4);
setSeVolumeByWorkId( spep_2 + 528,SE052,26);
setSeVolumeByWorkId( spep_2 + 529,SE052,28.6);
setSeVolumeByWorkId( spep_2 + 530,SE052,31.2);
setSeVolumeByWorkId( spep_2 + 531,SE052,33.8);
setSeVolumeByWorkId( spep_2 + 532,SE052,36.4);
setSeVolumeByWorkId( spep_2 + 533,SE052,39);
setSeVolumeByWorkId( spep_2 + 534,SE052,41.6);
setSeVolumeByWorkId( spep_2 + 535,SE052,44.2);
setSeVolumeByWorkId( spep_2 + 536,SE052,46.8);
setSeVolumeByWorkId( spep_2 + 537,SE052,49.4);
setSeVolumeByWorkId( spep_2 + 538,SE052,52);
setSeVolumeByWorkId( spep_2 + 539,SE052,54.6);
setSeVolumeByWorkId( spep_2 + 540,SE052,57.2);
setSeVolumeByWorkId( spep_2 + 541,SE052,59.8);
setSeVolumeByWorkId( spep_2 + 542,SE052,62.4);
setSeVolumeByWorkId( spep_2 + 543,SE052,65);
setSeVolumeByWorkId( spep_2 + 544,SE052,67.6);
setSeVolumeByWorkId( spep_2 + 545,SE052,70.2);
setSeVolumeByWorkId( spep_2 + 546,SE052,72.8);
setSeVolumeByWorkId( spep_2 + 547,SE052,75.4);
setSeVolumeByWorkId( spep_2 + 548,SE052,78);
setSeVolumeByWorkId( spep_2 + 549,SE052,80.6);
setSeVolumeByWorkId( spep_2 + 550,SE052,83.2);
setSeVolumeByWorkId( spep_2 + 551,SE052,85.8);
setSeVolumeByWorkId( spep_2 + 552,SE052,88.4);
setSeVolumeByWorkId( spep_2 + 553,SE052,91);
setSeVolumeByWorkId( spep_2 + 554,SE052,93.6);
setSeVolumeByWorkId( spep_2 + 555,SE052,96.1);
setSeVolumeByWorkId( spep_2 + 556,SE052,100);
setStartTimeMs( SE052,  833 );
stopSe( spep_2 + 598, SE052, 24);

--輪っか発射
SE053 =playSe( spep_2 + 498 , 1146 );
SE054 =playSe( spep_2 + 498 , 20 );
setSeVolumeByWorkId( spep_2 + 498 , SE054 , 67 );
SE055 =playSe( spep_2 + 506 , 1109 );
setSeVolumeByWorkId( spep_2 + 506 , SE055 , 150 );

--爆発
SE056 =playSe( spep_2 + 586 , 1023 );
SE057 =playSe( spep_2 + 586 , 1159 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 710, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_2 + 598 );
endPhase( spep_2 + 700 );

end