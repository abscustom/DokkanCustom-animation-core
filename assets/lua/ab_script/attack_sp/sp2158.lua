--1021670:伝説の超サイヤ人ブロリー_必殺技：ギガンティックミーティア
--sp_effect_a2_00154
--sp2158

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
SP_01  = 157005;  --ef_001  前半　手前
SP_02  = 157006;  --ef_002  前半　奥
SP_03  = 157007;  --ef_003  後半　手前
SP_04  = 157008;  --ef_004  後半　奥

--エフェクト(敵)
SP_01x  = 157009;  --ef_001r  敵：前半　手前
SP_02x  = 157010;  --ef_002r  敵：前半　奥
SP_03x  = 157011;  --ef_003r  敵：後半　手前
SP_04x  = 157012;  --ef_004r  敵：後半　奥

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
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
before_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, before_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 626, before_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, before_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 626, before_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, before_f, 0 );
setEffRotateKey( spep_0 + 626, before_f, 0 );
setEffAlphaKey( spep_0 + 0, before_f, 255 );
setEffAlphaKey( spep_0 + 626, before_f, 255 );
setEffAlphaKey( spep_0 + 627, before_f, 0 );
setEffAlphaKey( spep_0 + 628, before_f, 0 );

-- ** エフェクト等 ** --
before_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, before_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 626, before_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, before_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 626, before_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, before_b, 0 );
setEffRotateKey( spep_0 + 626, before_b, 0 );
setEffAlphaKey( spep_0 + 0, before_b, 255 );
setEffAlphaKey( spep_0 + 626, before_b, 255 );
setEffAlphaKey( spep_0 + 627, before_b, 0 );
setEffAlphaKey( spep_0 + 628, before_b, 0 );

--敵の動き
setDisp( spep_0-3 + 62, 1, 1);

changeAnime( spep_0-3 + 62, 1, 103);

setMoveKey( spep_0-3 + 62, 1, 249.4, -73.6 , 0 );
setMoveKey( spep_0-3 + 64, 1, 222.4, -62.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 199.1, -52.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 179.3, -43.8 , 0 );

setScaleKey( spep_0-3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 64, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 66, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 68, 1, 1.6, 1.6 );

setRotateKey( spep_0-3 + 62, 1, 21.7 );
setRotateKey( spep_0-3 + 64, 1, 23.2 );
setRotateKey( spep_0-3 + 66, 1, 24.6 );
setRotateKey( spep_0-3 + 68, 1, 25.7 );

--SE
--ダッシュで近づいてくる
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSe( spep_0 + 0, 1314 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 84 );
SE004 = playSe( spep_0 + 10, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 66 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
   
    pauseAll( SP_dodge, 67);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 179.3, -43.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.6, 1.6 );
    setRotateKey( SP_dodge + 9, 1, 25.7 );

        
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
--文字エントリー
ctga = entryEffectLife( spep_0-3 + 400,  10005, 8,0x100 , -1, 0, -67.6, 219.8 );--ガッ
setEffShake( spep_0-3 + 400, ctga, 8, 10 );
setEffMoveKey( spep_0-3 + 400, ctga, -67.6, 219.8 , 0 );
setEffMoveKey( spep_0-3 + 402, ctga, -74.9, 222.4 , 0 );
setEffMoveKey( spep_0-3 + 404, ctga, -71.4, 241.7 , 0 );
setEffMoveKey( spep_0-3 + 406, ctga, -85.7, 256.3 , 0 );
setEffMoveKey( spep_0-3 + 408, ctga, -86.5, 302.3 , 0 );

setEffScaleKey( spep_0-3 + 400, ctga, 3.46, 3.46 );
setEffScaleKey( spep_0-3 + 402, ctga, 3.55, 3.55 );
setEffScaleKey( spep_0-3 + 404, ctga, 3.82, 3.82 );
setEffScaleKey( spep_0-3 + 406, ctga, 4.26, 4.26 );
setEffScaleKey( spep_0-3 + 408, ctga, 4.88, 4.88 );

setEffRotateKey( spep_0-3 + 400, ctga, -20.2 );
setEffRotateKey( spep_0-3 + 408, ctga, -20.2 );

setEffAlphaKey( spep_0-3 + 400, ctga, 255 );
setEffAlphaKey( spep_0-3 + 408, ctga, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 454,  10013, 44, 0x100, -1, 0, 11.6, 301.5 );--ズズズンッ
setEffShake( spep_0-3 + 454, ctzuzuzun, 44, 10 );
setEffMoveKey( spep_0-3 + 454, ctzuzuzun, 11.6, 301.5 , 0 );
setEffMoveKey( spep_0-3 + 456, ctzuzuzun, 18.5, 308.2 , 0 );
setEffMoveKey( spep_0-3 + 458, ctzuzuzun, 13.6, 306.8 , 0 );
setEffMoveKey( spep_0-3 + 460, ctzuzuzun, 16.6, 317.1 , 0 );
setEffMoveKey( spep_0-3 + 462, ctzuzuzun, 14.5, 310.1 , 0 );
setEffMoveKey( spep_0-3 + 464, ctzuzuzun, 11.6, 320.1 , 0 );
setEffMoveKey( spep_0-3 + 466, ctzuzuzun, 19.6, 315.9 , 0 );
setEffMoveKey( spep_0-3 + 468, ctzuzuzun, 11.2, 318.9 , 0 );
setEffMoveKey( spep_0-3 + 470, ctzuzuzun, 20.2, 321.8 , 0 );
setEffMoveKey( spep_0-3 + 472, ctzuzuzun, 11.2, 325.3 , 0 );
setEffMoveKey( spep_0-3 + 474, ctzuzuzun, 18.4, 326.1 , 0 );
setEffMoveKey( spep_0-3 + 476, ctzuzuzun, 11.2, 327.9 , 0 );
setEffMoveKey( spep_0-3 + 478, ctzuzuzun, 18.1, 326.7 , 0 );
setEffMoveKey( spep_0-3 + 480, ctzuzuzun, 11.7, 329.2 , 0 );
setEffMoveKey( spep_0-3 + 482, ctzuzuzun, 18.6, 334.4 , 0 );
setEffMoveKey( spep_0-3 + 484, ctzuzuzun, 12.1, 330.8 , 0 );
setEffMoveKey( spep_0-3 + 486, ctzuzuzun, 17.7, 335.1 , 0 );
setEffMoveKey( spep_0-3 + 488, ctzuzuzun, 11.5, 339.4 , 0 );
setEffMoveKey( spep_0-3 + 490, ctzuzuzun, 14.2, 333.6 , 0 );
setEffMoveKey( spep_0-3 + 492, ctzuzuzun, 14.2, 335.2 , 0 );
setEffMoveKey( spep_0-3 + 494, ctzuzuzun, 14.8, 343.8 , 0 );
setEffMoveKey( spep_0-3 + 496, ctzuzuzun, 11.6, 345.5 , 0 );
setEffMoveKey( spep_0-3 + 498, ctzuzuzun, 11.6, 349.5 , 0 );

setEffScaleKey( spep_0-3 + 454, ctzuzuzun, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 498, ctzuzuzun, 2.81, 2.81 );

setEffRotateKey( spep_0-3 + 454, ctzuzuzun, -5.2 );
setEffRotateKey( spep_0-3 + 498, ctzuzuzun, -5.2 );

setEffAlphaKey( spep_0-3 + 454, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 456, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 458, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 492, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 494, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 496, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 498, ctzuzuzun, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +532;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_0-1 + 332, 1, 0);

changeAnime( spep_0-3 + 80, 1, 104);
changeAnime( spep_0-3 + 82, 1, 108);
changeAnime( spep_0-3 + 140, 1, 106);
changeAnime( spep_0-3 + 272, 1, 107);
changeAnime( spep_0-3 + 276, 1, 6);
changeAnime( spep_0-3 + 286, 1, 5);
changeAnime( spep_0-3 + 300, 1, 106);
changeAnime( spep_0-3 + 314, 1, 8);

setMoveKey( spep_0-3 + 70, 1, 163.1, -36.9 , 0 );
setMoveKey( spep_0-3 + 72, 1, 150.5, -31.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 141.5, -27.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 136.1, -25.4 , 0 );
setMoveKey( spep_0-3 + 78, 1, 134.3, -24.6 , 0 );
setMoveKey( spep_0-3 + 79, 1, 134.3, -24.6 , 0 );

setMoveKey( spep_0-3 + 80, 1, 128.3, -36.7 , 0 );
setMoveKey( spep_0-3 + 81, 1, 128.3, -36.7 , 0 );

setMoveKey( spep_0-3 + 82, 1, 115.3, -17.7 , 0 );
setMoveKey( spep_0-3 + 84, 1, 117.3, -21.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 119.3, -25.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 120.2, -27.6 , 0 );
setMoveKey( spep_0-3 + 90, 1, 121, -29.3 , 0 );
setMoveKey( spep_0-3 + 92, 1, 121.8, -31 , 0 );
setMoveKey( spep_0-3 + 94, 1, 122.5, -32.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, 123.2, -34.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, 123.9, -35.6 , 0 );
setMoveKey( spep_0-3 + 100, 1, 124.5, -37 , 0 );
setMoveKey( spep_0-3 + 102, 1, 125.1, -38.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 125.6, -39.5 , 0 );
setMoveKey( spep_0-3 + 106, 1, 126.1, -40.6 , 0 );
setMoveKey( spep_0-3 + 108, 1, 126.6, -41.7 , 0 );
setMoveKey( spep_0-3 + 110, 1, 127, -42.6 , 0 );
setMoveKey( spep_0-3 + 112, 1, 127.4, -43.5 , 0 );
setMoveKey( spep_0-3 + 114, 1, 127.8, -44.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 128.1, -45 , 0 );
setMoveKey( spep_0-3 + 118, 1, 128.4, -45.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, 128.6, -46.1 , 0 );
setMoveKey( spep_0-3 + 122, 1, 128.8, -46.6 , 0 );
setMoveKey( spep_0-3 + 124, 1, 129, -47 , 0 );
setMoveKey( spep_0-3 + 126, 1, 129.1, -47.3 , 0 );
setMoveKey( spep_0-3 + 128, 1, 129.2, -47.5 , 0 );
setMoveKey( spep_0-3 + 130, 1, 129.3, -47.6 , 0 );
setMoveKey( spep_0-3 + 139, 1, 129.3, -47.6 , 0 );

setMoveKey( spep_0-3 + 140, 1, 422, -1130.9 , 0 );
setMoveKey( spep_0-3 + 142, 1, 443.5, -1069.9 , 0 );
setMoveKey( spep_0-3 + 144, 1, 463.4, -1008.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, 481.6, -947 , 0 );
setMoveKey( spep_0-3 + 148, 1, 498.1, -885.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, 512.9, -823.1 , 0 );
setMoveKey( spep_0-3 + 152, 1, 526.1, -761 , 0 );
setMoveKey( spep_0-3 + 154, 1, 537.6, -698.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, 547.5, -636.4 , 0 );
setMoveKey( spep_0-3 + 158, 1, 555.7, -574.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, 562.2, -512.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 567.1, -450.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 599, -307.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, 615.2, -163.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 616.1, -20.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, 601.8, 120.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 573.1, 256.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 530.7, 386.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 422.5, 609.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 260.3, 797.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, 247.9, 808.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 235.2, 819 , 0 );
setMoveKey( spep_0-3 + 184, 1, 222.4, 829.5 , 0 );
setMoveKey( spep_0-3 + 185, 1, 222.4, 829.5 , 0 );

setMoveKey( spep_0-3 + 186, 1, 25.1, 125.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 23, 127.3 , 0 );
setMoveKey( spep_0-3 + 190, 1, 20.9, 128.9 , 0 );
setMoveKey( spep_0-3 + 192, 1, 18.8, 130.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, 16.8, 131.6 , 0 );
setMoveKey( spep_0-3 + 196, 1, 15, 132.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 13.1, 133.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, 11.4, 134.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, 9.8, 135.7 , 0 );
setMoveKey( spep_0-3 + 204, 1, 8.3, 136.5 , 0 );
setMoveKey( spep_0-3 + 206, 1, 6.8, 137.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, 5.5, 137.8 , 0 );
setMoveKey( spep_0-3 + 210, 1, 4.3, 138.3 , 0 );
setMoveKey( spep_0-3 + 212, 1, 3.2, 138.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, 2.2, 139.2 , 0 );
setMoveKey( spep_0-3 + 216, 1, 1.3, 139.6 , 0 );
setMoveKey( spep_0-3 + 218, 1, 0.5, 139.9 , 0 );
setMoveKey( spep_0-3 + 220, 1, -0.1, 140.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, -0.7, 140.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, -1.1, 140.5 , 0 );
setMoveKey( spep_0-3 + 226, 1, -1.4, 140.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, -1.6, 140.7 , 0 );
setMoveKey( spep_0-3 + 230, 1, -1.6, 140.7 , 0 );
setMoveKey( spep_0-3 + 232, 1, -2.2, 141.4 , 0 );
setMoveKey( spep_0-3 + 234, 1, -2.7, 142 , 0 );
setMoveKey( spep_0-3 + 236, 1, -3.3, 142.7 , 0 );
setMoveKey( spep_0-3 + 238, 1, -3.8, 143.3 , 0 );
setMoveKey( spep_0-3 + 240, 1, -4.4, 143.9 , 0 );
setMoveKey( spep_0-3 + 242, 1, -4.9, 144.6 , 0 );
setMoveKey( spep_0-3 + 244, 1, -5.5, 145.2 , 0 );
setMoveKey( spep_0-3 + 246, 1, -6, 145.8 , 0 );
setMoveKey( spep_0-3 + 248, 1, -6.6, 146.5 , 0 );
setMoveKey( spep_0-3 + 250, 1, -7.1, 147.1 , 0 );
setMoveKey( spep_0-3 + 252, 1, -7.7, 147.7 , 0 );
setMoveKey( spep_0-3 + 254, 1, -8.1, 147.9 , 0 );
setMoveKey( spep_0-3 + 256, 1, -8.5, 148 , 0 );
setMoveKey( spep_0-3 + 258, 1, -8.9, 148.2 , 0 );
setMoveKey( spep_0-3 + 260, 1, -9.3, 148.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -9.7, 148.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, -10.1, 148.6 , 0 );
setMoveKey( spep_0-3 + 266, 1, -10.5, 148.8 , 0 );
setMoveKey( spep_0-3 + 271, 1, -10.5, 148.8 , 0 );

setMoveKey( spep_0-3 + 272, 1, 636.6, 560.5 , 0 );
setMoveKey( spep_0-3 + 275, 1, 636.6, 560.5 , 0 );

setMoveKey( spep_0-3 + 276, 1, 365, 444.5 , 0 );
setMoveKey( spep_0-3 + 278, 1, 365, 444.5 , 0 );
--setMoveKey( spep_0-3 + 280, 1, 233.9, 152.1 , 0 );
setMoveKey( spep_0-3 + 285, 1, 233.9, 152.1 , 0 );

setMoveKey( spep_0-3 + 286, 1, -50.5, 78.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, -50.5, 78.4 , 0 );
setMoveKey( spep_0-3 + 290, 1, -72.7, 96.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, -72.7, 96.3 , 0 );
--setMoveKey( spep_0-3 + 294, 1, -86.9, 134.6 , 0 );
setMoveKey( spep_0-3 + 299, 1, -86.9, 134.6 , 0 );

setMoveKey( spep_0-3 + 300, 1, -104.9, 116.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, -90.2, 116.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, -77.3, 116.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, -66.5, 116.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, -57.6, 116.5 , 0 );
setMoveKey( spep_0-3 + 310, 1, -50.7, 116.5 , 0 );
--setMoveKey( spep_0-3 + 312, 1, -45.8, 116.5 , 0 );
setMoveKey( spep_0-3 + 313, 1, -45.8, 116.5 , 0 );

setMoveKey( spep_0-3 + 314, 1, -43.5, 113.2 , 0 );
setMoveKey( spep_0-3 + 316, 1, -42, 116 , 0 );
setMoveKey( spep_0-3 + 318, 1, -40.7, 118.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, -39.6, 120.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, -38.7, 122.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, -38, 123.6 , 0 );
setMoveKey( spep_0-3 + 326, 1, -37.5, 124.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, -37.1, 125.5 , 0 );
setMoveKey( spep_0-3 + 330, 1, -36.9, 126 , 0 );
setMoveKey( spep_0-1 + 332, 1, -36.8, 126.1 , 0 );

setScaleKey( spep_0-3 + 70, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 72, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 74, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 76, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 81, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 139, 1, 1.72, 1.72 );

setScaleKey( spep_0-3 + 140, 1, 8.69, 8.69 );
setScaleKey( spep_0-3 + 142, 1, 8.59, 8.59 );
setScaleKey( spep_0-3 + 144, 1, 8.49, 8.49 );
setScaleKey( spep_0-3 + 146, 1, 8.39, 8.39 );
setScaleKey( spep_0-3 + 148, 1, 8.28, 8.28 );
setScaleKey( spep_0-3 + 150, 1, 8.18, 8.18 );
setScaleKey( spep_0-3 + 152, 1, 8.08, 8.08 );
setScaleKey( spep_0-3 + 154, 1, 7.98, 7.98 );
setScaleKey( spep_0-3 + 156, 1, 7.88, 7.88 );
setScaleKey( spep_0-3 + 158, 1, 7.77, 7.77 );
setScaleKey( spep_0-3 + 160, 1, 7.67, 7.67 );
setScaleKey( spep_0-3 + 162, 1, 7.57, 7.57 );
setScaleKey( spep_0-3 + 164, 1, 7.47, 7.47 );
setScaleKey( spep_0-3 + 166, 1, 7.37, 7.37 );
setScaleKey( spep_0-3 + 168, 1, 7.26, 7.26 );
setScaleKey( spep_0-3 + 170, 1, 7.16, 7.16 );
setScaleKey( spep_0-3 + 172, 1, 7.06, 7.06 );
setScaleKey( spep_0-3 + 174, 1, 6.96, 6.96 );
setScaleKey( spep_0-3 + 176, 1, 6.89, 6.89 );
setScaleKey( spep_0-3 + 178, 1, 6.81, 6.81 );
setScaleKey( spep_0-3 + 180, 1, 6.74, 6.74 );
setScaleKey( spep_0-3 + 182, 1, 6.67, 6.67 );
--setScaleKey( spep_0-3 + 184, 1, 6.59, 6.59 );
setScaleKey( spep_0-3 + 185, 1, 6.59, 6.59 );

setScaleKey( spep_0-3 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 271, 1, 0.76, 0.76 );

setScaleKey( spep_0-3 + 272, 1, 5.39, 5.39 );
setScaleKey( spep_0-3 + 275, 1, 5.39, 5.39 );

setScaleKey( spep_0-3 + 276, 1, 7.89, 7.89 );
setScaleKey( spep_0-3 + 278, 1, 7.89, 7.89 );
--setScaleKey( spep_0-3 + 280, 1, 4.49, 4.49 );
setScaleKey( spep_0-3 + 285, 1, 4.49, 4.49 );

setScaleKey( spep_0-3 + 286, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 288, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 290, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 292, 1, 1.7, 1.7 );
--setScaleKey( spep_0-3 + 294, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 299, 1, 1.15, 1.15 );

setScaleKey( spep_0-3 + 300, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 302, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 304, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 306, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 308, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 310, 1, 0.62, 0.62 );
--setScaleKey( spep_0-3 + 312, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 313, 1, 0.59, 0.59 );

setScaleKey( spep_0-3 + 314, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 316, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 318, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 320, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 322, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 324, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 326, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 328, 1, 0.35, 0.35 );
setScaleKey( spep_0-1 + 332, 1, 0.35, 0.35 );

setRotateKey( spep_0-3 + 70, 1, 26.7 );
setRotateKey( spep_0-3 + 72, 1, 27.4 );
setRotateKey( spep_0-3 + 74, 1, 27.9 );
setRotateKey( spep_0-3 + 76, 1, 28.2 );
setRotateKey( spep_0-3 + 78, 1, 28.3 );
setRotateKey( spep_0-3 + 79, 1, 28.3 );

setRotateKey( spep_0-3 + 80, 1, 0.9 );
setRotateKey( spep_0-3 + 81, 1, 0.9 );

setRotateKey( spep_0-3 + 82, 1, 0.9 );
setRotateKey( spep_0-3 + 84, 1, 4.5 );
setRotateKey( spep_0-3 + 86, 1, 8.2 );
setRotateKey( spep_0-3 + 88, 1, 8.6 );
setRotateKey( spep_0-3 + 90, 1, 9 );
setRotateKey( spep_0-3 + 92, 1, 9.4 );
setRotateKey( spep_0-3 + 94, 1, 9.7 );
setRotateKey( spep_0-3 + 96, 1, 10.1 );
setRotateKey( spep_0-3 + 98, 1, 10.4 );
setRotateKey( spep_0-3 + 100, 1, 10.7 );
setRotateKey( spep_0-3 + 102, 1, 11 );
setRotateKey( spep_0-3 + 104, 1, 11.3 );
setRotateKey( spep_0-3 + 106, 1, 11.5 );
setRotateKey( spep_0-3 + 108, 1, 11.8 );
setRotateKey( spep_0-3 + 110, 1, 12 );
setRotateKey( spep_0-3 + 112, 1, 12.2 );
setRotateKey( spep_0-3 + 114, 1, 12.4 );
setRotateKey( spep_0-3 + 116, 1, 12.5 );
setRotateKey( spep_0-3 + 118, 1, 12.7 );
setRotateKey( spep_0-3 + 120, 1, 12.8 );
setRotateKey( spep_0-3 + 122, 1, 12.9 );
setRotateKey( spep_0-3 + 124, 1, 13 );
setRotateKey( spep_0-3 + 126, 1, 13 );
setRotateKey( spep_0-3 + 128, 1, 13.1 );
setRotateKey( spep_0-3 + 139, 1, 13.1 );

setRotateKey( spep_0-3 + 140, 1, -21 );
setRotateKey( spep_0-3 + 142, 1, -23.1 );
setRotateKey( spep_0-3 + 144, 1, -25.2 );
setRotateKey( spep_0-3 + 146, 1, -27.3 );
setRotateKey( spep_0-3 + 148, 1, -29.4 );
setRotateKey( spep_0-3 + 150, 1, -31.5 );
setRotateKey( spep_0-3 + 152, 1, -33.5 );
setRotateKey( spep_0-3 + 154, 1, -35.6 );
setRotateKey( spep_0-3 + 156, 1, -37.7 );
setRotateKey( spep_0-3 + 158, 1, -39.8 );
setRotateKey( spep_0-3 + 160, 1, -41.9 );
setRotateKey( spep_0-3 + 162, 1, -44 );
setRotateKey( spep_0-3 + 164, 1, -47.8 );
setRotateKey( spep_0-3 + 166, 1, -51.6 );
setRotateKey( spep_0-3 + 168, 1, -55.5 );
setRotateKey( spep_0-3 + 170, 1, -59.3 );
setRotateKey( spep_0-3 + 172, 1, -63.1 );
setRotateKey( spep_0-3 + 174, 1, -66.9 );
setRotateKey( spep_0-3 + 176, 1, -83.9 );
setRotateKey( spep_0-3 + 178, 1, -100.9 );
setRotateKey( spep_0-3 + 180, 1, -104 );
setRotateKey( spep_0-3 + 182, 1, -107 );
setRotateKey( spep_0-3 + 184, 1, -110 );
setRotateKey( spep_0-3 + 185, 1, -110 );

setRotateKey( spep_0-3 + 186, 1, -104.5 );
setRotateKey( spep_0-3 + 188, 1, -106.2 );
setRotateKey( spep_0-3 + 190, 1, -107.8 );
setRotateKey( spep_0-3 + 192, 1, -109.4 );
setRotateKey( spep_0-3 + 194, 1, -110.8 );
setRotateKey( spep_0-3 + 196, 1, -112.2 );
setRotateKey( spep_0-3 + 198, 1, -113.5 );
setRotateKey( spep_0-3 + 200, 1, -114.8 );
setRotateKey( spep_0-3 + 202, 1, -115.9 );
setRotateKey( spep_0-3 + 204, 1, -117 );
setRotateKey( spep_0-3 + 206, 1, -118 );
setRotateKey( spep_0-3 + 208, 1, -118.9 );
setRotateKey( spep_0-3 + 210, 1, -119.7 );
setRotateKey( spep_0-3 + 212, 1, -120.5 );
setRotateKey( spep_0-3 + 214, 1, -121.2 );
setRotateKey( spep_0-3 + 216, 1, -121.7 );
setRotateKey( spep_0-3 + 218, 1, -122.3 );
setRotateKey( spep_0-3 + 220, 1, -122.7 );
setRotateKey( spep_0-3 + 222, 1, -123.1 );
setRotateKey( spep_0-3 + 224, 1, -123.3 );
setRotateKey( spep_0-3 + 226, 1, -123.5 );
setRotateKey( spep_0-3 + 228, 1, -123.7 );
setRotateKey( spep_0-3 + 230, 1, -123.7 );
setRotateKey( spep_0-3 + 232, 1, -124.1 );
setRotateKey( spep_0-3 + 234, 1, -124.4 );
setRotateKey( spep_0-3 + 236, 1, -124.8 );
setRotateKey( spep_0-3 + 238, 1, -125.1 );
setRotateKey( spep_0-3 + 240, 1, -125.5 );
setRotateKey( spep_0-3 + 242, 1, -125.9 );
setRotateKey( spep_0-3 + 244, 1, -126.2 );
setRotateKey( spep_0-3 + 246, 1, -126.6 );
setRotateKey( spep_0-3 + 248, 1, -127 );
setRotateKey( spep_0-3 + 250, 1, -127.3 );
setRotateKey( spep_0-3 + 252, 1, -127.7 );
setRotateKey( spep_0-3 + 254, 1, -128.1 );
setRotateKey( spep_0-3 + 256, 1, -128.5 );
setRotateKey( spep_0-3 + 258, 1, -128.9 );
setRotateKey( spep_0-3 + 260, 1, -129.3 );
setRotateKey( spep_0-3 + 262, 1, -129.7 );
setRotateKey( spep_0-3 + 264, 1, -130.1 );
--setRotateKey( spep_0-3 + 266, 1, -130.5 );
setRotateKey( spep_0-3 + 271, 1, -130.5 );

setRotateKey( spep_0-3 + 272, 1, 110 );
setRotateKey( spep_0-3 + 275, 1, 110 );

setRotateKey( spep_0-3 + 276, 1, -64.7 );
setRotateKey( spep_0-3 + 278, 1, -64.7 );
--setRotateKey( spep_0-3 + 280, 1, -31.1 );
setRotateKey( spep_0-3 + 285, 1, -31.1 );

setRotateKey( spep_0-3 + 286, 1, -50.8 );
setRotateKey( spep_0-3 + 288, 1, -50.8 );
setRotateKey( spep_0-3 + 290, 1, -29 );
setRotateKey( spep_0-3 + 292, 1, -29 );
--setRotateKey( spep_0-3 + 294, 1, -22.1 );
setRotateKey( spep_0-3 + 299, 1, -22.1 );

setRotateKey( spep_0-3 + 300, 1, -22 );
setRotateKey( spep_0-3 + 302, 1, 6.7 );
setRotateKey( spep_0-3 + 304, 1, 31.6 );
setRotateKey( spep_0-3 + 306, 1, 52.7 );
setRotateKey( spep_0-3 + 308, 1, 70 );
setRotateKey( spep_0-3 + 310, 1, 83.4 );
--setRotateKey( spep_0-3 + 312, 1, 93 );
setRotateKey( spep_0-3 + 313, 1, 93 );

setRotateKey( spep_0-3 + 314, 1, 174.7 );
setRotateKey( spep_0-3 + 316, 1, 189.1 );
setRotateKey( spep_0-3 + 318, 1, 201.7 );
setRotateKey( spep_0-3 + 320, 1, 212.7 );
setRotateKey( spep_0-3 + 322, 1, 222 );
setRotateKey( spep_0-3 + 324, 1, 229.6 );
setRotateKey( spep_0-3 + 326, 1, 235.5 );
setRotateKey( spep_0-3 + 328, 1, 239.8 );
setRotateKey( spep_0-3 + 330, 1, 242.3 );
setRotateKey( spep_0-1 + 332, 1, 243.1 );

--敵の動き
setDisp( spep_0-3 + 390, 1, 1);
setDisp( spep_0-1 + 452, 1, 0);

changeAnime( spep_0-3 + 390, 1, 6);
changeAnime( spep_0-3 + 400, 1, 7);
changeAnime( spep_0-3 + 404, 1, 8);
changeAnime( spep_0-3 + 408, 1, 5);

setMoveKey( spep_0-3 + 390, 1, -140.9, -223.6 , 0 );
setMoveKey( spep_0-3 + 392, 1, -140.9, -223.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, -151.8, -622.2 , 0 );
setMoveKey( spep_0-3 + 399, 1, -151.8, -622.2 , 0 );

setMoveKey( spep_0-3 + 400, 1, -100.4, -233 , 0 );
setMoveKey( spep_0-3 + 403, 1, -100.4, -233 , 0 );

setMoveKey( spep_0-3 + 404, 1, -72.3, -49.9 , 0 );
setMoveKey( spep_0-3 + 407, 1, -72.3, -49.9 , 0 );

setMoveKey( spep_0-3 + 408, 1, -15.5, -1.3 , 0 );
setMoveKey( spep_0-3 + 410, 1, -12.8, 1.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, -11.6, 2.7 , 0 );
setMoveKey( spep_0-3 + 414, 1, -10.8, 3.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, -10.2, 4.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -9.6, 4.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -9.2, 4.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -8.9, 3.9 , 0 );
setMoveKey( spep_0-3 + 424, 1, -8.6, 3.7 , 0 );
setMoveKey( spep_0-3 + 426, 1, -8.4, 3.5 , 0 );
setMoveKey( spep_0-3 + 428, 1, -8, 3.2 , 0 );
setMoveKey( spep_0-3 + 430, 1, -7.8, 2.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, -7.6, 2.6 , 0 );
setMoveKey( spep_0-3 + 434, 1, -7.4, 2.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, -7.2, 2.2 , 0 );
setMoveKey( spep_0-3 + 438, 1, -7.1, 2 , 0 );
setMoveKey( spep_0-3 + 440, 1, -7, 1.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, -7, 1.7 , 0 );
setMoveKey( spep_0-3 + 444, 1, -6.9, 1.6 , 0 );
setMoveKey( spep_0-3 + 446, 1, -6.9, 1.8 , 0 );
setMoveKey( spep_0-3 + 448, 1, -6.9, 1.9 , 0 );
setMoveKey( spep_0-3 + 450, 1, -6.9, 2 , 0 );
setMoveKey( spep_0-1 + 452, 1, -6.9, 1.9 , 0 );

setScaleKey( spep_0-3 + 390, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 392, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 394, 1, 9.03, 9.03 );
setScaleKey( spep_0-3 + 399, 1, 9.03, 9.03 );

setScaleKey( spep_0-3 + 400, 1, 2.72, 2.72 );
setScaleKey( spep_0-3 + 403, 1, 2.72, 2.72 );

setScaleKey( spep_0-3 + 404, 1, 2.72, 2.72 );
setScaleKey( spep_0-3 + 407, 1, 2.72, 2.72 );

setScaleKey( spep_0-3 + 408, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 410, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 412, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 414, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 416, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 418, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 420, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 422, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 424, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 426, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 428, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 430, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 432, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 434, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 436, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 440, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 442, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 444, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 446, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 450, 1, 0.02, 0.02 );
setScaleKey( spep_0-1 + 452, 1, 0.01, 0.01 );

setRotateKey( spep_0-3 + 390, 1, 82 );
setRotateKey( spep_0-3 + 392, 1, 82 );
setRotateKey( spep_0-3 + 394, 1, 74 );
setRotateKey( spep_0-3 + 399, 1, 74 );

setRotateKey( spep_0-3 + 400, 1, 129.9 );
setRotateKey( spep_0-3 + 403, 1, 129.9 );

setRotateKey( spep_0-3 + 404, 1, 5 );
setRotateKey( spep_0-3 + 407, 1, 5 );

setRotateKey( spep_0-3 + 408, 1, 24.2 );
setRotateKey( spep_0-1 + 452, 1, 24.2 );

--敵の動き
setDisp( spep_0-3 + 550, 1, 1);
setDisp( spep_0-1 + 626, 1, 0);

changeAnime( spep_0-3 + 550, 1, 106);

a=-15;
b=0;

setMoveKey( spep_0-3 + 550, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 558, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 560, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 562, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 564, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 566, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 568, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 570, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 572, 1, 132.3+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 574, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 576, 1, 132.5+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 578, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 580, 1, 132.3+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 582, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 584, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 586, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 588, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 590, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 592, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 594, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 606, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 608, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 610, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 612, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 614, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 616, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 618, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 620, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 622, 1, 132.5+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 624, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-1 + 626, 1, 132.3+b, -31.1+a , 0 );

setScaleKey( spep_0-3 + 550, 1, 0.55, 0.55 );
setScaleKey( spep_0-1 + 626, 1, 0.55, 0.55 );

setRotateKey( spep_0-3 + 550, 1, -42 );
setRotateKey( spep_0-3 + 558, 1, -42 );
setRotateKey( spep_0-3 + 560, 1, -41.9 );
setRotateKey( spep_0-3 + 564, 1, -41.9 );
setRotateKey( spep_0-3 + 566, 1, -41.8 );
setRotateKey( spep_0-3 + 570, 1, -41.8 );
setRotateKey( spep_0-3 + 572, 1, -41.7 );
setRotateKey( spep_0-3 + 574, 1, -41.7 );
setRotateKey( spep_0-3 + 576, 1, -41.6 );
setRotateKey( spep_0-3 + 578, 1, -41.7 );
setRotateKey( spep_0-3 + 580, 1, -41.7 );
setRotateKey( spep_0-3 + 582, 1, -41.8 );
setRotateKey( spep_0-3 + 586, 1, -41.8 );
setRotateKey( spep_0-3 + 588, 1, -41.9 );
setRotateKey( spep_0-3 + 592, 1, -41.9 );
setRotateKey( spep_0-3 + 594, 1, -42 );
setRotateKey( spep_0-3 + 606, 1, -42 );
setRotateKey( spep_0-3 + 608, 1, -41.9 );
setRotateKey( spep_0-3 + 612, 1, -41.9 );
setRotateKey( spep_0-3 + 614, 1, -41.8 );
setRotateKey( spep_0-3 + 618, 1, -41.8 );
setRotateKey( spep_0-1 + 620, 1, -41.7 );
setRotateKey( spep_0-1 + 626, 1, -41.7 );

--SE
--ダッシュで近づいてくる
stopSe( spep_0 + 62, SE001, 16 );
stopSe( spep_0 + 70, SE002, 20 );
stopSe( spep_0 + 82, SE003, 18 );

--つかむ
SE005 = playSe( spep_0 + 80, 1188 );
setSeVolumeByWorkId( spep_0 + 80, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 81, SE005, 16.7 );
setSeVolumeByWorkId( spep_0 + 82, SE005, 33.4 );
setSeVolumeByWorkId( spep_0 + 83, SE005, 50.1 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 67 );
setStartTimeMs( SE005,  450 );
SE006 = playSe( spep_0 + 78, 1009 );
setSeVolumeByWorkId( spep_0 + 78, SE006, 75 );
SE007 = playSe( spep_0 + 80, 1153 );
setSeVolumeByWorkId( spep_0 + 80, SE007, 84 );
SE008 = playSe( spep_0 + 82, 19 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 83 );
SE009 = playSe( spep_0 + 86, 1168 );
setSeVolumeByWorkId( spep_0 + 86, SE009, 56 );
stopSe( spep_0 + 132, SE009, 38 );

--敵を持ち上げる
SE010 = playSe( spep_0 + 154, 1116 ,"",0.5);
stopSe( spep_0 + 182, SE010, 14 );
SE011 = playSe( spep_0 + 154, 1004 );
setSeVolumeByWorkId( spep_0 + 154, SE011, 75 );
setPitch( spep_0 + 154, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );
SE012 = playSe( spep_0 + 160, 1278 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 160, SE012, 81 );
stopSe( spep_0 + 194, SE012, 58 );

--蹴り上げ
SE013 = playSe( spep_0 + 262, 1003 );
SE014 = playSe( spep_0 + 270, 1010 );
SE015 = playSe( spep_0 + 272, 1110 );
setSeVolumeByWorkId( spep_0 + 272, SE015, 88 );
SE016 = playSe( spep_0 + 274, 1187 );
setSeVolumeByWorkId( spep_0 + 274, SE016, 70 );

--敵飛んでいく
SE017 = playSe( spep_0 + 288, 1183 );
stopSe( spep_0 + 336, SE017, 26 );

--敵に向かっていく
SE019 = playSe( spep_0 + 332, 1167 );
setSeVolumeByWorkId( spep_0 + 332, SE019, 36 );
SE020 = playSe( spep_0 + 332, 1182 );
SE021 = playSe( spep_0 + 332, 1117 );

--エルボー
SE022 = playSe( spep_0 + 398, 1190 );
stopSe( spep_0 + 418, SE022, 12 );
SE023 = playSe( spep_0 + 398, 1010 );
SE024 = playSe( spep_0 + 398, 1110 );
setSeVolumeByWorkId( spep_0 + 398, SE024, 120 );
stopSe( spep_0 + 416, SE024, 10 );

--敵と共に岩へ
SE018 = playSe( spep_0 + 406, 1121 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 406, SE018, 0 );
setSeVolumeByWorkId( spep_0 + 407, SE018, 16.9 );
setSeVolumeByWorkId( spep_0 + 408, SE018, 33.8 );
setSeVolumeByWorkId( spep_0 + 409, SE018, 50.7 );
setSeVolumeByWorkId( spep_0 + 410, SE018, 68 );
setStartTimeMs( SE018,  1567 );
setPitch( spep_0 + 410, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 5 );

--岩激突
SE026 = playSe( spep_0 + 450, 1025 );
setSeVolumeByWorkId( spep_0 + 450, SE026, 89 );
SE027 = playSe( spep_0 + 452, 1159 );
setSeVolumeByWorkId( spep_0 + 452, SE027, 55 );

--岩落ちる
SE025 = playSe( spep_0 + 538, 1168 );
setSeVolumeByWorkId( spep_0 + 538, SE025, 0 );
setSeVolumeByWorkId( spep_0 + 539, SE025, 5.7 );
setSeVolumeByWorkId( spep_0 + 540, SE025, 11.4 );
setSeVolumeByWorkId( spep_0 + 541, SE025, 17.1 );
setSeVolumeByWorkId( spep_0 + 542, SE025, 22.8 );
setSeVolumeByWorkId( spep_0 + 543, SE025, 28.5 );
setSeVolumeByWorkId( spep_0 + 544, SE025, 34.2 );
setSeVolumeByWorkId( spep_0 + 545, SE025, 39.9 );
setSeVolumeByWorkId( spep_0 + 546, SE025, 45.6 );
setSeVolumeByWorkId( spep_0 + 547, SE025, 51.3 );
setSeVolumeByWorkId( spep_0 + 548, SE025, 57 );
setSeVolumeByWorkId( spep_0 + 549, SE025, 62.7 );
setSeVolumeByWorkId( spep_0 + 550, SE025, 68 );
setStartTimeMs( SE025,  2000 );

--顔カットイン
SE028 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_0 + 614, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 626;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffect( spep_1 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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

--岩落ちる
stopSe( spep_1 + 00, SE025, 10 );
--岩激突
stopSe( spep_1 + 00, SE027, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 320, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 320, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 320, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 320, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 320, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 320, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 320, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 320, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 62, 1, 1);
setDisp( spep_2-1 + 226, 1, 0);

changeAnime( spep_2-3 + 62, 1, 106);

setMoveKey( spep_2-3 + 134, 1, 288.3, -7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 288.3, -7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 300.8, -6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 284.3, -6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 284.3, -6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 299.3, -5.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, 281.3, -5.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 303.8, -7 , 0 );
setMoveKey( spep_2-3 + 194, 1, 285.8, -6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 285.8, -6.5 , 0 );
setMoveKey( spep_2-3 + 198, 1, 298.3, -6.5 , 0 );
setMoveKey( spep_2-3 + 200, 1, 282.3, -7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 301.3, -6.5 , 0 );
setMoveKey( spep_2-3 + 204, 1, 276.3, -6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 276.8, -6.5 , 0 );
setMoveKey( spep_2-3 + 208, 1, 297.3, -4.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 279.3, -5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 299.8, -7 , 0 );
setMoveKey( spep_2-3 + 214, 1, 279.8, -6 , 0 );
setMoveKey( spep_2-3 + 216, 1, 278.3, -7.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 297.8, -7.5 , 0 );
setMoveKey( spep_2-3 + 220, 1, 281.3, -6 , 0 );
setMoveKey( spep_2-3 + 222, 1, 299.8, -4.5 , 0 );
setMoveKey( spep_2-3 + 224, 1, 283.8, -5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 283.3, -6 , 0 );

setScaleKey( spep_2-3 + 134, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 226, 1, 0.28, 0.28 );

setRotateKey( spep_2-3 + 134, 1, -45 );
setRotateKey( spep_2-3 + 226, 1, -45 );

--SE
--少し下がる
SE030 = playSe( spep_2 + 0, 1116 );
stopSe( spep_2 + 32, SE030, 48 );

--気弾溜め
SE031 = playSe( spep_2 + 26, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 26, SE031, 178 );
stopSe( spep_2 + 74, SE031, 14 );
SE032 = playSe( spep_2 + 30, 1262 );
setPitch( spep_2 + 30, SE032, 300 );
setTimeStretch( SE032, 1.2, 10, 1 );
stopSe( spep_2 + 84, SE032, 16 );
SE033 = playSe( spep_2 + 30, 1204 );
stopSe( spep_2 + 84, SE033, 16 );

--気弾投げる
SE035 = playSe( spep_2 + 74, 1003 );
setSeVolumeByWorkId( spep_2 + 74, SE035, 74 );
SE036 = playSe( spep_2 + 78, 1021 );
SE037 = playSe( spep_2 + 78, 1277 );
stopSe( spep_2 + 136, SE037, 22 );
SE038 = playSe( spep_2 + 78, 1027 );
setSeVolumeByWorkId( spep_2 + 78, SE038, 62 );
SE039 = playSe( spep_2 + 78, 1121 );
setSeVolumeByWorkId( spep_2 + 78, SE039, 46 )
setPitch( spep_2 + 78, SE039, -700 );
setTimeStretch( SE039, 0.53, 10, 1 );
stopSe( spep_2 + 186, SE039, 30 );
SE034 = playSe( spep_2 + 82, 1145 );
setSeVolumeByWorkId( spep_2 + 82, SE034, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE034, 7.1 );
setSeVolumeByWorkId( spep_2 + 84, SE034, 14.2 );
setSeVolumeByWorkId( spep_2 + 85, SE034, 21.3 );
setSeVolumeByWorkId( spep_2 + 86, SE034, 28.4 );
setSeVolumeByWorkId( spep_2 + 87, SE034, 35.5 );
setSeVolumeByWorkId( spep_2 + 88, SE034, 42.6 );
setSeVolumeByWorkId( spep_2 + 89, SE034, 49.7 );
setSeVolumeByWorkId( spep_2 + 90, SE034, 56.8 );
setSeVolumeByWorkId( spep_2 + 91, SE034, 63.9 );
setSeVolumeByWorkId( spep_2 + 92, SE034, 71 );
setSeVolumeByWorkId( spep_2 + 93, SE034, 78.1 );
setSeVolumeByWorkId( spep_2 + 94, SE034, 85.2 );
setSeVolumeByWorkId( spep_2 + 95, SE034, 92.3 );
setSeVolumeByWorkId( spep_2 + 96, SE034, 100 );
setStartTimeMs( SE034,  300 );
setPitch( spep_2 + 82, SE034, 400 );
setTimeStretch( SE034, 1.27, 10, 1 );
stopSe( spep_2 + 186, SE034, 30 );

--気弾道
SE040 = playSe( spep_2 + 140, 1177 );
setSeVolumeByWorkId( spep_2 + 140, SE040, 0 );
setSeVolumeByWorkId( spep_2 + 141, SE040, 2.8 );
setSeVolumeByWorkId( spep_2 + 142, SE040, 5.6 );
setSeVolumeByWorkId( spep_2 + 143, SE040, 8.4 );
setSeVolumeByWorkId( spep_2 + 144, SE040, 11.2 );
setSeVolumeByWorkId( spep_2 + 145, SE040, 14 );
setSeVolumeByWorkId( spep_2 + 146, SE040, 16.8 );
setSeVolumeByWorkId( spep_2 + 147, SE040, 19.6 );
setSeVolumeByWorkId( spep_2 + 148, SE040, 22.4 );
setSeVolumeByWorkId( spep_2 + 149, SE040, 25.2 );
setSeVolumeByWorkId( spep_2 + 150, SE040, 28 );
setSeVolumeByWorkId( spep_2 + 151, SE040, 30.8 );
setSeVolumeByWorkId( spep_2 + 152, SE040, 33.6 );
setSeVolumeByWorkId( spep_2 + 153, SE040, 36.4 );
setSeVolumeByWorkId( spep_2 + 154, SE040, 39.2 );
setSeVolumeByWorkId( spep_2 + 155, SE040, 42 );
setSeVolumeByWorkId( spep_2 + 156, SE040, 44.8 );
setSeVolumeByWorkId( spep_2 + 157, SE040, 47.6 );
setSeVolumeByWorkId( spep_2 + 158, SE040, 50.4 );
setSeVolumeByWorkId( spep_2 + 159, SE040, 53.2 );
setSeVolumeByWorkId( spep_2 + 160, SE040, 56 );
setSeVolumeByWorkId( spep_2 + 161, SE040, 58.8 );
setSeVolumeByWorkId( spep_2 + 162, SE040, 61.6 );
setSeVolumeByWorkId( spep_2 + 163, SE040, 64.4 );
setSeVolumeByWorkId( spep_2 + 164, SE040, 67.2 );
setSeVolumeByWorkId( spep_2 + 165, SE040, 70 );
setSeVolumeByWorkId( spep_2 + 166, SE040, 72.8 );
setSeVolumeByWorkId( spep_2 + 167, SE040, 75.6 );
setSeVolumeByWorkId( spep_2 + 168, SE040, 78 );
setPitch( spep_2 + 140, SE040, 400 );
setTimeStretch( SE040, 1.27, 10, 1 );
SE041 = playSe( spep_2 + 170, 1201 );

--敵ヒット
SE042 = playSe( spep_2 + 176, 1024 );
setSeVolumeByWorkId( spep_2 + 176, SE042, 85 );
SE043 = playSe( spep_2 + 176, 1159 );
setSeVolumeByWorkId( spep_2 + 176, SE043, 75 );

--岩激突
SE044 = playSe( spep_2 + 220, 1160 );
setSeVolumeByWorkId( spep_2 + 220, SE044, 76 );

--岩貫いて爆発して出る
SE045 = playSe( spep_2 + 254, 1068 );
SE046 = playSe( spep_2 + 254, 1067 );
setSeVolumeByWorkId( spep_2 + 254, SE046, 89 );
SE047 = playSe( spep_2 + 254, 1023 );
setSeVolumeByWorkId( spep_2 + 254, SE047, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 330, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + 320 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 前半
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
before_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, before_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 626, before_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, before_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 626, before_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, before_f, 0 );
setEffRotateKey( spep_0 + 626, before_f, 0 );
setEffAlphaKey( spep_0 + 0, before_f, 255 );
setEffAlphaKey( spep_0 + 626, before_f, 255 );
setEffAlphaKey( spep_0 + 627, before_f, 0 );
setEffAlphaKey( spep_0 + 628, before_f, 0 );

-- ** エフェクト等 ** --
before_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, before_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 626, before_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, before_b, -1.0, 1.0 );
setEffScaleKey( spep_0 + 626, before_b, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, before_b, 0 );
setEffRotateKey( spep_0 + 626, before_b, 0 );
setEffAlphaKey( spep_0 + 0, before_b, 255 );
setEffAlphaKey( spep_0 + 626, before_b, 255 );
setEffAlphaKey( spep_0 + 627, before_b, 0 );
setEffAlphaKey( spep_0 + 628, before_b, 0 );

--敵の動き
setDisp( spep_0-3 + 62, 1, 1);

changeAnime( spep_0-3 + 62, 1, 103);

setMoveKey( spep_0-3 + 62, 1, 249.4, -73.6 , 0 );
setMoveKey( spep_0-3 + 64, 1, 222.4, -62.1 , 0 );
setMoveKey( spep_0-3 + 66, 1, 199.1, -52.2 , 0 );
setMoveKey( spep_0-3 + 68, 1, 179.3, -43.8 , 0 );

setScaleKey( spep_0-3 + 62, 1, 1.57, 1.57 );
setScaleKey( spep_0-3 + 64, 1, 1.58, 1.58 );
setScaleKey( spep_0-3 + 66, 1, 1.59, 1.59 );
setScaleKey( spep_0-3 + 68, 1, 1.6, 1.6 );

setRotateKey( spep_0-3 + 62, 1, 21.7 );
setRotateKey( spep_0-3 + 64, 1, 23.2 );
setRotateKey( spep_0-3 + 66, 1, 24.6 );
setRotateKey( spep_0-3 + 68, 1, 25.7 );

--SE
--ダッシュで近づいてくる
SE001 = playSe( spep_0 + 0, 1182 );
SE002 = playSe( spep_0 + 0, 9 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 77 );
SE003 = playSe( spep_0 + 0, 1314 );
setSeVolumeByWorkId( spep_0 + 0, SE003, 84 );
SE004 = playSe( spep_0 + 10, 1072 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 630, 0, 0, 0, 0, 255);       -- ベース暗め　背景
--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 66 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 179.3, -43.8 , 0 );
    setScaleKey( SP_dodge + 9, 1, 1.6, 1.6 );
    setRotateKey( SP_dodge + 9, 1, 25.7 );
   
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
--文字エントリー
ctga = entryEffectLife( spep_0-3 + 400,  10005, 8,0x100 , -1, 0, -67.6, 219.8 );--ガッ
setEffShake( spep_0-3 + 400, ctga, 8, 10 );
setEffMoveKey( spep_0-3 + 400, ctga, -67.6, 219.8 , 0 );
setEffMoveKey( spep_0-3 + 402, ctga, -74.9, 222.4 , 0 );
setEffMoveKey( spep_0-3 + 404, ctga, -71.4, 241.7 , 0 );
setEffMoveKey( spep_0-3 + 406, ctga, -85.7, 256.3 , 0 );
setEffMoveKey( spep_0-3 + 408, ctga, -86.5, 302.3 , 0 );

setEffScaleKey( spep_0-3 + 400, ctga, 3.46, 3.46 );
setEffScaleKey( spep_0-3 + 402, ctga, 3.55, 3.55 );
setEffScaleKey( spep_0-3 + 404, ctga, 3.82, 3.82 );
setEffScaleKey( spep_0-3 + 406, ctga, 4.26, 4.26 );
setEffScaleKey( spep_0-3 + 408, ctga, 4.88, 4.88 );

setEffRotateKey( spep_0-3 + 400, ctga, -20.2 );
setEffRotateKey( spep_0-3 + 408, ctga, -20.2 );

setEffAlphaKey( spep_0-3 + 400, ctga, 255 );
setEffAlphaKey( spep_0-3 + 408, ctga, 255 );

--文字エントリー
ctzuzuzun = entryEffectLife( spep_0-3 + 454,  10013, 44, 0x100, -1, 0, 11.6, 301.5 );--ズズズンッ
setEffShake( spep_0-3 + 454, ctzuzuzun, 44, 10 );
setEffMoveKey( spep_0-3 + 454, ctzuzuzun, 11.6, 301.5 , 0 );
setEffMoveKey( spep_0-3 + 456, ctzuzuzun, 18.5, 308.2 , 0 );
setEffMoveKey( spep_0-3 + 458, ctzuzuzun, 13.6, 306.8 , 0 );
setEffMoveKey( spep_0-3 + 460, ctzuzuzun, 16.6, 317.1 , 0 );
setEffMoveKey( spep_0-3 + 462, ctzuzuzun, 14.5, 310.1 , 0 );
setEffMoveKey( spep_0-3 + 464, ctzuzuzun, 11.6, 320.1 , 0 );
setEffMoveKey( spep_0-3 + 466, ctzuzuzun, 19.6, 315.9 , 0 );
setEffMoveKey( spep_0-3 + 468, ctzuzuzun, 11.2, 318.9 , 0 );
setEffMoveKey( spep_0-3 + 470, ctzuzuzun, 20.2, 321.8 , 0 );
setEffMoveKey( spep_0-3 + 472, ctzuzuzun, 11.2, 325.3 , 0 );
setEffMoveKey( spep_0-3 + 474, ctzuzuzun, 18.4, 326.1 , 0 );
setEffMoveKey( spep_0-3 + 476, ctzuzuzun, 11.2, 327.9 , 0 );
setEffMoveKey( spep_0-3 + 478, ctzuzuzun, 18.1, 326.7 , 0 );
setEffMoveKey( spep_0-3 + 480, ctzuzuzun, 11.7, 329.2 , 0 );
setEffMoveKey( spep_0-3 + 482, ctzuzuzun, 18.6, 334.4 , 0 );
setEffMoveKey( spep_0-3 + 484, ctzuzuzun, 12.1, 330.8 , 0 );
setEffMoveKey( spep_0-3 + 486, ctzuzuzun, 17.7, 335.1 , 0 );
setEffMoveKey( spep_0-3 + 488, ctzuzuzun, 11.5, 339.4 , 0 );
setEffMoveKey( spep_0-3 + 490, ctzuzuzun, 14.2, 333.6 , 0 );
setEffMoveKey( spep_0-3 + 492, ctzuzuzun, 14.2, 335.2 , 0 );
setEffMoveKey( spep_0-3 + 494, ctzuzuzun, 14.8, 343.8 , 0 );
setEffMoveKey( spep_0-3 + 496, ctzuzuzun, 11.6, 345.5 , 0 );
setEffMoveKey( spep_0-3 + 498, ctzuzuzun, 11.6, 349.5 , 0 );

setEffScaleKey( spep_0-3 + 454, ctzuzuzun, 2.81, 2.81 );
setEffScaleKey( spep_0-3 + 498, ctzuzuzun, 2.81, 2.81 );

setEffRotateKey( spep_0-3 + 454, ctzuzuzun, -5.2 );
setEffRotateKey( spep_0-3 + 498, ctzuzuzun, -5.2 );

setEffAlphaKey( spep_0-3 + 454, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 456, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 458, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 492, ctzuzuzun, 255 );
setEffAlphaKey( spep_0-3 + 494, ctzuzuzun, 170 );
setEffAlphaKey( spep_0-3 + 496, ctzuzuzun, 85 );
setEffAlphaKey( spep_0-3 + 498, ctzuzuzun, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +538;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

--敵の動き
setDisp( spep_0-1 + 332, 1, 0);

changeAnime( spep_0-3 + 80, 1, 104);
changeAnime( spep_0-3 + 82, 1, 108);
changeAnime( spep_0-3 + 140, 1, 106);
changeAnime( spep_0-3 + 272, 1, 107);
changeAnime( spep_0-3 + 276, 1, 6);
changeAnime( spep_0-3 + 286, 1, 5);
changeAnime( spep_0-3 + 300, 1, 106);
changeAnime( spep_0-3 + 314, 1, 8);

setMoveKey( spep_0-3 + 70, 1, 163.1, -36.9 , 0 );
setMoveKey( spep_0-3 + 72, 1, 150.5, -31.5 , 0 );
setMoveKey( spep_0-3 + 74, 1, 141.5, -27.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, 136.1, -25.4 , 0 );
setMoveKey( spep_0-3 + 78, 1, 134.3, -24.6 , 0 );
setMoveKey( spep_0-3 + 79, 1, 134.3, -24.6 , 0 );

setMoveKey( spep_0-3 + 80, 1, 128.3, -36.7 , 0 );
setMoveKey( spep_0-3 + 81, 1, 128.3, -36.7 , 0 );

setMoveKey( spep_0-3 + 82, 1, 115.3, -17.7 , 0 );
setMoveKey( spep_0-3 + 84, 1, 117.3, -21.7 , 0 );
setMoveKey( spep_0-3 + 86, 1, 119.3, -25.7 , 0 );
setMoveKey( spep_0-3 + 88, 1, 120.2, -27.6 , 0 );
setMoveKey( spep_0-3 + 90, 1, 121, -29.3 , 0 );
setMoveKey( spep_0-3 + 92, 1, 121.8, -31 , 0 );
setMoveKey( spep_0-3 + 94, 1, 122.5, -32.7 , 0 );
setMoveKey( spep_0-3 + 96, 1, 123.2, -34.2 , 0 );
setMoveKey( spep_0-3 + 98, 1, 123.9, -35.6 , 0 );
setMoveKey( spep_0-3 + 100, 1, 124.5, -37 , 0 );
setMoveKey( spep_0-3 + 102, 1, 125.1, -38.3 , 0 );
setMoveKey( spep_0-3 + 104, 1, 125.6, -39.5 , 0 );
setMoveKey( spep_0-3 + 106, 1, 126.1, -40.6 , 0 );
setMoveKey( spep_0-3 + 108, 1, 126.6, -41.7 , 0 );
setMoveKey( spep_0-3 + 110, 1, 127, -42.6 , 0 );
setMoveKey( spep_0-3 + 112, 1, 127.4, -43.5 , 0 );
setMoveKey( spep_0-3 + 114, 1, 127.8, -44.3 , 0 );
setMoveKey( spep_0-3 + 116, 1, 128.1, -45 , 0 );
setMoveKey( spep_0-3 + 118, 1, 128.4, -45.6 , 0 );
setMoveKey( spep_0-3 + 120, 1, 128.6, -46.1 , 0 );
setMoveKey( spep_0-3 + 122, 1, 128.8, -46.6 , 0 );
setMoveKey( spep_0-3 + 124, 1, 129, -47 , 0 );
setMoveKey( spep_0-3 + 126, 1, 129.1, -47.3 , 0 );
setMoveKey( spep_0-3 + 128, 1, 129.2, -47.5 , 0 );
setMoveKey( spep_0-3 + 130, 1, 129.3, -47.6 , 0 );
setMoveKey( spep_0-3 + 139, 1, 129.3, -47.6 , 0 );

setMoveKey( spep_0-3 + 140, 1, 422, -1130.9 , 0 );
setMoveKey( spep_0-3 + 142, 1, 443.5, -1069.9 , 0 );
setMoveKey( spep_0-3 + 144, 1, 463.4, -1008.6 , 0 );
setMoveKey( spep_0-3 + 146, 1, 481.6, -947 , 0 );
setMoveKey( spep_0-3 + 148, 1, 498.1, -885.2 , 0 );
setMoveKey( spep_0-3 + 150, 1, 512.9, -823.1 , 0 );
setMoveKey( spep_0-3 + 152, 1, 526.1, -761 , 0 );
setMoveKey( spep_0-3 + 154, 1, 537.6, -698.7 , 0 );
setMoveKey( spep_0-3 + 156, 1, 547.5, -636.4 , 0 );
setMoveKey( spep_0-3 + 158, 1, 555.7, -574.2 , 0 );
setMoveKey( spep_0-3 + 160, 1, 562.2, -512.1 , 0 );
setMoveKey( spep_0-3 + 162, 1, 567.1, -450.2 , 0 );
setMoveKey( spep_0-3 + 164, 1, 599, -307.4 , 0 );
setMoveKey( spep_0-3 + 166, 1, 615.2, -163.5 , 0 );
setMoveKey( spep_0-3 + 168, 1, 616.1, -20.3 , 0 );
setMoveKey( spep_0-3 + 170, 1, 601.8, 120.2 , 0 );
setMoveKey( spep_0-3 + 172, 1, 573.1, 256.3 , 0 );
setMoveKey( spep_0-3 + 174, 1, 530.7, 386.2 , 0 );
setMoveKey( spep_0-3 + 176, 1, 422.5, 609.5 , 0 );
setMoveKey( spep_0-3 + 178, 1, 260.3, 797.2 , 0 );
setMoveKey( spep_0-3 + 180, 1, 247.9, 808.2 , 0 );
setMoveKey( spep_0-3 + 182, 1, 235.2, 819 , 0 );
setMoveKey( spep_0-3 + 184, 1, 222.4, 829.5 , 0 );
setMoveKey( spep_0-3 + 185, 1, 222.4, 829.5 , 0 );

setMoveKey( spep_0-3 + 186, 1, 25.1, 125.6 , 0 );
setMoveKey( spep_0-3 + 188, 1, 23, 127.3 , 0 );
setMoveKey( spep_0-3 + 190, 1, 20.9, 128.9 , 0 );
setMoveKey( spep_0-3 + 192, 1, 18.8, 130.3 , 0 );
setMoveKey( spep_0-3 + 194, 1, 16.8, 131.6 , 0 );
setMoveKey( spep_0-3 + 196, 1, 15, 132.8 , 0 );
setMoveKey( spep_0-3 + 198, 1, 13.1, 133.8 , 0 );
setMoveKey( spep_0-3 + 200, 1, 11.4, 134.8 , 0 );
setMoveKey( spep_0-3 + 202, 1, 9.8, 135.7 , 0 );
setMoveKey( spep_0-3 + 204, 1, 8.3, 136.5 , 0 );
setMoveKey( spep_0-3 + 206, 1, 6.8, 137.2 , 0 );
setMoveKey( spep_0-3 + 208, 1, 5.5, 137.8 , 0 );
setMoveKey( spep_0-3 + 210, 1, 4.3, 138.3 , 0 );
setMoveKey( spep_0-3 + 212, 1, 3.2, 138.8 , 0 );
setMoveKey( spep_0-3 + 214, 1, 2.2, 139.2 , 0 );
setMoveKey( spep_0-3 + 216, 1, 1.3, 139.6 , 0 );
setMoveKey( spep_0-3 + 218, 1, 0.5, 139.9 , 0 );
setMoveKey( spep_0-3 + 220, 1, -0.1, 140.2 , 0 );
setMoveKey( spep_0-3 + 222, 1, -0.7, 140.4 , 0 );
setMoveKey( spep_0-3 + 224, 1, -1.1, 140.5 , 0 );
setMoveKey( spep_0-3 + 226, 1, -1.4, 140.6 , 0 );
setMoveKey( spep_0-3 + 228, 1, -1.6, 140.7 , 0 );
setMoveKey( spep_0-3 + 230, 1, -1.6, 140.7 , 0 );
setMoveKey( spep_0-3 + 232, 1, -2.2, 141.4 , 0 );
setMoveKey( spep_0-3 + 234, 1, -2.7, 142 , 0 );
setMoveKey( spep_0-3 + 236, 1, -3.3, 142.7 , 0 );
setMoveKey( spep_0-3 + 238, 1, -3.8, 143.3 , 0 );
setMoveKey( spep_0-3 + 240, 1, -4.4, 143.9 , 0 );
setMoveKey( spep_0-3 + 242, 1, -4.9, 144.6 , 0 );
setMoveKey( spep_0-3 + 244, 1, -5.5, 145.2 , 0 );
setMoveKey( spep_0-3 + 246, 1, -6, 145.8 , 0 );
setMoveKey( spep_0-3 + 248, 1, -6.6, 146.5 , 0 );
setMoveKey( spep_0-3 + 250, 1, -7.1, 147.1 , 0 );
setMoveKey( spep_0-3 + 252, 1, -7.7, 147.7 , 0 );
setMoveKey( spep_0-3 + 254, 1, -8.1, 147.9 , 0 );
setMoveKey( spep_0-3 + 256, 1, -8.5, 148 , 0 );
setMoveKey( spep_0-3 + 258, 1, -8.9, 148.2 , 0 );
setMoveKey( spep_0-3 + 260, 1, -9.3, 148.3 , 0 );
setMoveKey( spep_0-3 + 262, 1, -9.7, 148.5 , 0 );
setMoveKey( spep_0-3 + 264, 1, -10.1, 148.6 , 0 );
setMoveKey( spep_0-3 + 266, 1, -10.5, 148.8 , 0 );
setMoveKey( spep_0-3 + 271, 1, -10.5, 148.8 , 0 );

setMoveKey( spep_0-3 + 272, 1, 636.6, 560.5 , 0 );
setMoveKey( spep_0-3 + 275, 1, 636.6, 560.5 , 0 );

setMoveKey( spep_0-3 + 276, 1, 365, 444.5 , 0 );
setMoveKey( spep_0-3 + 278, 1, 365, 444.5 , 0 );
--setMoveKey( spep_0-3 + 280, 1, 233.9, 152.1 , 0 );
setMoveKey( spep_0-3 + 285, 1, 233.9, 152.1 , 0 );

setMoveKey( spep_0-3 + 286, 1, -50.5, 78.4 , 0 );
setMoveKey( spep_0-3 + 288, 1, -50.5, 78.4 , 0 );
setMoveKey( spep_0-3 + 290, 1, -72.7, 96.3 , 0 );
setMoveKey( spep_0-3 + 292, 1, -72.7, 96.3 , 0 );
--setMoveKey( spep_0-3 + 294, 1, -86.9, 134.6 , 0 );
setMoveKey( spep_0-3 + 299, 1, -86.9, 134.6 , 0 );

setMoveKey( spep_0-3 + 300, 1, -104.9, 116.6 , 0 );
setMoveKey( spep_0-3 + 302, 1, -90.2, 116.6 , 0 );
setMoveKey( spep_0-3 + 304, 1, -77.3, 116.6 , 0 );
setMoveKey( spep_0-3 + 306, 1, -66.5, 116.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, -57.6, 116.5 , 0 );
setMoveKey( spep_0-3 + 310, 1, -50.7, 116.5 , 0 );
--setMoveKey( spep_0-3 + 312, 1, -45.8, 116.5 , 0 );
setMoveKey( spep_0-3 + 313, 1, -45.8, 116.5 , 0 );

setMoveKey( spep_0-3 + 314, 1, -43.5, 113.2 , 0 );
setMoveKey( spep_0-3 + 316, 1, -42, 116 , 0 );
setMoveKey( spep_0-3 + 318, 1, -40.7, 118.5 , 0 );
setMoveKey( spep_0-3 + 320, 1, -39.6, 120.5 , 0 );
setMoveKey( spep_0-3 + 322, 1, -38.7, 122.2 , 0 );
setMoveKey( spep_0-3 + 324, 1, -38, 123.6 , 0 );
setMoveKey( spep_0-3 + 326, 1, -37.5, 124.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, -37.1, 125.5 , 0 );
setMoveKey( spep_0-3 + 330, 1, -36.9, 126 , 0 );
setMoveKey( spep_0-1 + 332, 1, -36.8, 126.1 , 0 );

setScaleKey( spep_0-3 + 70, 1, 1.6, 1.6 );
setScaleKey( spep_0-3 + 72, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 74, 1, 1.61, 1.61 );
setScaleKey( spep_0-3 + 76, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 81, 1, 1.62, 1.62 );
setScaleKey( spep_0-3 + 82, 1, 1.72, 1.72 );
setScaleKey( spep_0-3 + 139, 1, 1.72, 1.72 );

setScaleKey( spep_0-3 + 140, 1, 8.69, 8.69 );
setScaleKey( spep_0-3 + 142, 1, 8.59, 8.59 );
setScaleKey( spep_0-3 + 144, 1, 8.49, 8.49 );
setScaleKey( spep_0-3 + 146, 1, 8.39, 8.39 );
setScaleKey( spep_0-3 + 148, 1, 8.28, 8.28 );
setScaleKey( spep_0-3 + 150, 1, 8.18, 8.18 );
setScaleKey( spep_0-3 + 152, 1, 8.08, 8.08 );
setScaleKey( spep_0-3 + 154, 1, 7.98, 7.98 );
setScaleKey( spep_0-3 + 156, 1, 7.88, 7.88 );
setScaleKey( spep_0-3 + 158, 1, 7.77, 7.77 );
setScaleKey( spep_0-3 + 160, 1, 7.67, 7.67 );
setScaleKey( spep_0-3 + 162, 1, 7.57, 7.57 );
setScaleKey( spep_0-3 + 164, 1, 7.47, 7.47 );
setScaleKey( spep_0-3 + 166, 1, 7.37, 7.37 );
setScaleKey( spep_0-3 + 168, 1, 7.26, 7.26 );
setScaleKey( spep_0-3 + 170, 1, 7.16, 7.16 );
setScaleKey( spep_0-3 + 172, 1, 7.06, 7.06 );
setScaleKey( spep_0-3 + 174, 1, 6.96, 6.96 );
setScaleKey( spep_0-3 + 176, 1, 6.89, 6.89 );
setScaleKey( spep_0-3 + 178, 1, 6.81, 6.81 );
setScaleKey( spep_0-3 + 180, 1, 6.74, 6.74 );
setScaleKey( spep_0-3 + 182, 1, 6.67, 6.67 );
--setScaleKey( spep_0-3 + 184, 1, 6.59, 6.59 );
setScaleKey( spep_0-3 + 185, 1, 6.59, 6.59 );

setScaleKey( spep_0-3 + 186, 1, 0.76, 0.76 );
setScaleKey( spep_0-3 + 271, 1, 0.76, 0.76 );

setScaleKey( spep_0-3 + 272, 1, 5.39, 5.39 );
setScaleKey( spep_0-3 + 275, 1, 5.39, 5.39 );

setScaleKey( spep_0-3 + 276, 1, 7.89, 7.89 );
setScaleKey( spep_0-3 + 278, 1, 7.89, 7.89 );
--setScaleKey( spep_0-3 + 280, 1, 4.49, 4.49 );
setScaleKey( spep_0-3 + 285, 1, 4.49, 4.49 );

setScaleKey( spep_0-3 + 286, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 288, 1, 2.54, 2.54 );
setScaleKey( spep_0-3 + 290, 1, 1.7, 1.7 );
setScaleKey( spep_0-3 + 292, 1, 1.7, 1.7 );
--setScaleKey( spep_0-3 + 294, 1, 1.15, 1.15 );
setScaleKey( spep_0-3 + 299, 1, 1.15, 1.15 );

setScaleKey( spep_0-3 + 300, 1, 0.88, 0.88 );
setScaleKey( spep_0-3 + 302, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 304, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 306, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 308, 1, 0.65, 0.65 );
setScaleKey( spep_0-3 + 310, 1, 0.62, 0.62 );
--setScaleKey( spep_0-3 + 312, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 313, 1, 0.59, 0.59 );

setScaleKey( spep_0-3 + 314, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 316, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 318, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 320, 1, 0.41, 0.41 );
setScaleKey( spep_0-3 + 322, 1, 0.39, 0.39 );
setScaleKey( spep_0-3 + 324, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 326, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 328, 1, 0.35, 0.35 );
setScaleKey( spep_0-1 + 332, 1, 0.35, 0.35 );

setRotateKey( spep_0-3 + 70, 1, 26.7 );
setRotateKey( spep_0-3 + 72, 1, 27.4 );
setRotateKey( spep_0-3 + 74, 1, 27.9 );
setRotateKey( spep_0-3 + 76, 1, 28.2 );
setRotateKey( spep_0-3 + 78, 1, 28.3 );
setRotateKey( spep_0-3 + 79, 1, 28.3 );

setRotateKey( spep_0-3 + 80, 1, 0.9 );
setRotateKey( spep_0-3 + 81, 1, 0.9 );

setRotateKey( spep_0-3 + 82, 1, 0.9 );
setRotateKey( spep_0-3 + 84, 1, 4.5 );
setRotateKey( spep_0-3 + 86, 1, 8.2 );
setRotateKey( spep_0-3 + 88, 1, 8.6 );
setRotateKey( spep_0-3 + 90, 1, 9 );
setRotateKey( spep_0-3 + 92, 1, 9.4 );
setRotateKey( spep_0-3 + 94, 1, 9.7 );
setRotateKey( spep_0-3 + 96, 1, 10.1 );
setRotateKey( spep_0-3 + 98, 1, 10.4 );
setRotateKey( spep_0-3 + 100, 1, 10.7 );
setRotateKey( spep_0-3 + 102, 1, 11 );
setRotateKey( spep_0-3 + 104, 1, 11.3 );
setRotateKey( spep_0-3 + 106, 1, 11.5 );
setRotateKey( spep_0-3 + 108, 1, 11.8 );
setRotateKey( spep_0-3 + 110, 1, 12 );
setRotateKey( spep_0-3 + 112, 1, 12.2 );
setRotateKey( spep_0-3 + 114, 1, 12.4 );
setRotateKey( spep_0-3 + 116, 1, 12.5 );
setRotateKey( spep_0-3 + 118, 1, 12.7 );
setRotateKey( spep_0-3 + 120, 1, 12.8 );
setRotateKey( spep_0-3 + 122, 1, 12.9 );
setRotateKey( spep_0-3 + 124, 1, 13 );
setRotateKey( spep_0-3 + 126, 1, 13 );
setRotateKey( spep_0-3 + 128, 1, 13.1 );
setRotateKey( spep_0-3 + 139, 1, 13.1 );

setRotateKey( spep_0-3 + 140, 1, -21 );
setRotateKey( spep_0-3 + 142, 1, -23.1 );
setRotateKey( spep_0-3 + 144, 1, -25.2 );
setRotateKey( spep_0-3 + 146, 1, -27.3 );
setRotateKey( spep_0-3 + 148, 1, -29.4 );
setRotateKey( spep_0-3 + 150, 1, -31.5 );
setRotateKey( spep_0-3 + 152, 1, -33.5 );
setRotateKey( spep_0-3 + 154, 1, -35.6 );
setRotateKey( spep_0-3 + 156, 1, -37.7 );
setRotateKey( spep_0-3 + 158, 1, -39.8 );
setRotateKey( spep_0-3 + 160, 1, -41.9 );
setRotateKey( spep_0-3 + 162, 1, -44 );
setRotateKey( spep_0-3 + 164, 1, -47.8 );
setRotateKey( spep_0-3 + 166, 1, -51.6 );
setRotateKey( spep_0-3 + 168, 1, -55.5 );
setRotateKey( spep_0-3 + 170, 1, -59.3 );
setRotateKey( spep_0-3 + 172, 1, -63.1 );
setRotateKey( spep_0-3 + 174, 1, -66.9 );
setRotateKey( spep_0-3 + 176, 1, -83.9 );
setRotateKey( spep_0-3 + 178, 1, -100.9 );
setRotateKey( spep_0-3 + 180, 1, -104 );
setRotateKey( spep_0-3 + 182, 1, -107 );
setRotateKey( spep_0-3 + 184, 1, -110 );
setRotateKey( spep_0-3 + 185, 1, -110 );

setRotateKey( spep_0-3 + 186, 1, -104.5 );
setRotateKey( spep_0-3 + 188, 1, -106.2 );
setRotateKey( spep_0-3 + 190, 1, -107.8 );
setRotateKey( spep_0-3 + 192, 1, -109.4 );
setRotateKey( spep_0-3 + 194, 1, -110.8 );
setRotateKey( spep_0-3 + 196, 1, -112.2 );
setRotateKey( spep_0-3 + 198, 1, -113.5 );
setRotateKey( spep_0-3 + 200, 1, -114.8 );
setRotateKey( spep_0-3 + 202, 1, -115.9 );
setRotateKey( spep_0-3 + 204, 1, -117 );
setRotateKey( spep_0-3 + 206, 1, -118 );
setRotateKey( spep_0-3 + 208, 1, -118.9 );
setRotateKey( spep_0-3 + 210, 1, -119.7 );
setRotateKey( spep_0-3 + 212, 1, -120.5 );
setRotateKey( spep_0-3 + 214, 1, -121.2 );
setRotateKey( spep_0-3 + 216, 1, -121.7 );
setRotateKey( spep_0-3 + 218, 1, -122.3 );
setRotateKey( spep_0-3 + 220, 1, -122.7 );
setRotateKey( spep_0-3 + 222, 1, -123.1 );
setRotateKey( spep_0-3 + 224, 1, -123.3 );
setRotateKey( spep_0-3 + 226, 1, -123.5 );
setRotateKey( spep_0-3 + 228, 1, -123.7 );
setRotateKey( spep_0-3 + 230, 1, -123.7 );
setRotateKey( spep_0-3 + 232, 1, -124.1 );
setRotateKey( spep_0-3 + 234, 1, -124.4 );
setRotateKey( spep_0-3 + 236, 1, -124.8 );
setRotateKey( spep_0-3 + 238, 1, -125.1 );
setRotateKey( spep_0-3 + 240, 1, -125.5 );
setRotateKey( spep_0-3 + 242, 1, -125.9 );
setRotateKey( spep_0-3 + 244, 1, -126.2 );
setRotateKey( spep_0-3 + 246, 1, -126.6 );
setRotateKey( spep_0-3 + 248, 1, -127 );
setRotateKey( spep_0-3 + 250, 1, -127.3 );
setRotateKey( spep_0-3 + 252, 1, -127.7 );
setRotateKey( spep_0-3 + 254, 1, -128.1 );
setRotateKey( spep_0-3 + 256, 1, -128.5 );
setRotateKey( spep_0-3 + 258, 1, -128.9 );
setRotateKey( spep_0-3 + 260, 1, -129.3 );
setRotateKey( spep_0-3 + 262, 1, -129.7 );
setRotateKey( spep_0-3 + 264, 1, -130.1 );
--setRotateKey( spep_0-3 + 266, 1, -130.5 );
setRotateKey( spep_0-3 + 271, 1, -130.5 );

setRotateKey( spep_0-3 + 272, 1, 110 );
setRotateKey( spep_0-3 + 275, 1, 110 );

setRotateKey( spep_0-3 + 276, 1, -64.7 );
setRotateKey( spep_0-3 + 278, 1, -64.7 );
--setRotateKey( spep_0-3 + 280, 1, -31.1 );
setRotateKey( spep_0-3 + 285, 1, -31.1 );

setRotateKey( spep_0-3 + 286, 1, -50.8 );
setRotateKey( spep_0-3 + 288, 1, -50.8 );
setRotateKey( spep_0-3 + 290, 1, -29 );
setRotateKey( spep_0-3 + 292, 1, -29 );
--setRotateKey( spep_0-3 + 294, 1, -22.1 );
setRotateKey( spep_0-3 + 299, 1, -22.1 );

setRotateKey( spep_0-3 + 300, 1, -22 );
setRotateKey( spep_0-3 + 302, 1, 6.7 );
setRotateKey( spep_0-3 + 304, 1, 31.6 );
setRotateKey( spep_0-3 + 306, 1, 52.7 );
setRotateKey( spep_0-3 + 308, 1, 70 );
setRotateKey( spep_0-3 + 310, 1, 83.4 );
--setRotateKey( spep_0-3 + 312, 1, 93 );
setRotateKey( spep_0-3 + 313, 1, 93 );

setRotateKey( spep_0-3 + 314, 1, 174.7 );
setRotateKey( spep_0-3 + 316, 1, 189.1 );
setRotateKey( spep_0-3 + 318, 1, 201.7 );
setRotateKey( spep_0-3 + 320, 1, 212.7 );
setRotateKey( spep_0-3 + 322, 1, 222 );
setRotateKey( spep_0-3 + 324, 1, 229.6 );
setRotateKey( spep_0-3 + 326, 1, 235.5 );
setRotateKey( spep_0-3 + 328, 1, 239.8 );
setRotateKey( spep_0-3 + 330, 1, 242.3 );
setRotateKey( spep_0-1 + 332, 1, 243.1 );

--敵の動き
setDisp( spep_0-3 + 390, 1, 1);
setDisp( spep_0-1 + 452, 1, 0);

changeAnime( spep_0-3 + 390, 1, 6);
changeAnime( spep_0-3 + 400, 1, 7);
changeAnime( spep_0-3 + 404, 1, 8);
changeAnime( spep_0-3 + 408, 1, 5);

setMoveKey( spep_0-3 + 390, 1, -140.9, -223.6 , 0 );
setMoveKey( spep_0-3 + 392, 1, -140.9, -223.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, -151.8, -622.2 , 0 );
setMoveKey( spep_0-3 + 399, 1, -151.8, -622.2 , 0 );

setMoveKey( spep_0-3 + 400, 1, -100.4, -233 , 0 );
setMoveKey( spep_0-3 + 403, 1, -100.4, -233 , 0 );

setMoveKey( spep_0-3 + 404, 1, -72.3, -49.9 , 0 );
setMoveKey( spep_0-3 + 407, 1, -72.3, -49.9 , 0 );

setMoveKey( spep_0-3 + 408, 1, -15.5, -1.3 , 0 );
setMoveKey( spep_0-3 + 410, 1, -12.8, 1.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, -11.6, 2.7 , 0 );
setMoveKey( spep_0-3 + 414, 1, -10.8, 3.5 , 0 );
setMoveKey( spep_0-3 + 416, 1, -10.2, 4.2 , 0 );
setMoveKey( spep_0-3 + 418, 1, -9.6, 4.6 , 0 );
setMoveKey( spep_0-3 + 420, 1, -9.2, 4.2 , 0 );
setMoveKey( spep_0-3 + 422, 1, -8.9, 3.9 , 0 );
setMoveKey( spep_0-3 + 424, 1, -8.6, 3.7 , 0 );
setMoveKey( spep_0-3 + 426, 1, -8.4, 3.5 , 0 );
setMoveKey( spep_0-3 + 428, 1, -8, 3.2 , 0 );
setMoveKey( spep_0-3 + 430, 1, -7.8, 2.9 , 0 );
setMoveKey( spep_0-3 + 432, 1, -7.6, 2.6 , 0 );
setMoveKey( spep_0-3 + 434, 1, -7.4, 2.4 , 0 );
setMoveKey( spep_0-3 + 436, 1, -7.2, 2.2 , 0 );
setMoveKey( spep_0-3 + 438, 1, -7.1, 2 , 0 );
setMoveKey( spep_0-3 + 440, 1, -7, 1.9 , 0 );
setMoveKey( spep_0-3 + 442, 1, -7, 1.7 , 0 );
setMoveKey( spep_0-3 + 444, 1, -6.9, 1.6 , 0 );
setMoveKey( spep_0-3 + 446, 1, -6.9, 1.8 , 0 );
setMoveKey( spep_0-3 + 448, 1, -6.9, 1.9 , 0 );
setMoveKey( spep_0-3 + 450, 1, -6.9, 2 , 0 );
setMoveKey( spep_0-1 + 452, 1, -6.9, 1.9 , 0 );

setScaleKey( spep_0-3 + 390, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 392, 1, 4.45, 4.45 );
setScaleKey( spep_0-3 + 394, 1, 9.03, 9.03 );
setScaleKey( spep_0-3 + 399, 1, 9.03, 9.03 );

setScaleKey( spep_0-3 + 400, 1, 2.72, 2.72 );
setScaleKey( spep_0-3 + 403, 1, 2.72, 2.72 );

setScaleKey( spep_0-3 + 404, 1, 2.72, 2.72 );
setScaleKey( spep_0-3 + 407, 1, 2.72, 2.72 );

setScaleKey( spep_0-3 + 408, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 410, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 412, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 414, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 416, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 418, 1, 0.13, 0.13 );
setScaleKey( spep_0-3 + 420, 1, 0.12, 0.12 );
setScaleKey( spep_0-3 + 422, 1, 0.1, 0.1 );
setScaleKey( spep_0-3 + 424, 1, 0.09, 0.09 );
setScaleKey( spep_0-3 + 426, 1, 0.08, 0.08 );
setScaleKey( spep_0-3 + 428, 1, 0.07, 0.07 );
setScaleKey( spep_0-3 + 430, 1, 0.06, 0.06 );
setScaleKey( spep_0-3 + 432, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 434, 1, 0.05, 0.05 );
setScaleKey( spep_0-3 + 436, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 440, 1, 0.04, 0.04 );
setScaleKey( spep_0-3 + 442, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 444, 1, 0.03, 0.03 );
setScaleKey( spep_0-3 + 446, 1, 0.02, 0.02 );
setScaleKey( spep_0-3 + 450, 1, 0.02, 0.02 );
setScaleKey( spep_0-1 + 452, 1, 0.01, 0.01 );

setRotateKey( spep_0-3 + 390, 1, 82 );
setRotateKey( spep_0-3 + 392, 1, 82 );
setRotateKey( spep_0-3 + 394, 1, 74 );
setRotateKey( spep_0-3 + 399, 1, 74 );

setRotateKey( spep_0-3 + 400, 1, 129.9 );
setRotateKey( spep_0-3 + 403, 1, 129.9 );

setRotateKey( spep_0-3 + 404, 1, 5 );
setRotateKey( spep_0-3 + 407, 1, 5 );

setRotateKey( spep_0-3 + 408, 1, 24.2 );
setRotateKey( spep_0-1 + 452, 1, 24.2 );

--敵の動き
setDisp( spep_0-3 + 550, 1, 1);
setDisp( spep_0-1 + 626, 1, 0);

changeAnime( spep_0-3 + 550, 1, 106);

a=-15;
b=0;

setMoveKey( spep_0-3 + 550, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 558, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 560, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 562, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 564, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 566, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 568, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 570, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 572, 1, 132.3+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 574, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 576, 1, 132.5+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 578, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 580, 1, 132.3+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 582, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 584, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 586, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 588, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 590, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 592, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 594, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 606, 1, 131.6+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 608, 1, 131.7+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 610, 1, 131.8+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 612, 1, 131.9+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 614, 1, 132+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 616, 1, 132.1+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 618, 1, 132.2+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 620, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 622, 1, 132.5+b, -31.1+a , 0 );
setMoveKey( spep_0-3 + 624, 1, 132.4+b, -31.1+a , 0 );
setMoveKey( spep_0-1 + 626, 1, 132.3+b, -31.1+a , 0 );

setScaleKey( spep_0-3 + 550, 1, 0.55, 0.55 );
setScaleKey( spep_0-1 + 626, 1, 0.55, 0.55 );

setRotateKey( spep_0-3 + 550, 1, -42 );
setRotateKey( spep_0-3 + 558, 1, -42 );
setRotateKey( spep_0-3 + 560, 1, -41.9 );
setRotateKey( spep_0-3 + 564, 1, -41.9 );
setRotateKey( spep_0-3 + 566, 1, -41.8 );
setRotateKey( spep_0-3 + 570, 1, -41.8 );
setRotateKey( spep_0-3 + 572, 1, -41.7 );
setRotateKey( spep_0-3 + 574, 1, -41.7 );
setRotateKey( spep_0-3 + 576, 1, -41.6 );
setRotateKey( spep_0-3 + 578, 1, -41.7 );
setRotateKey( spep_0-3 + 580, 1, -41.7 );
setRotateKey( spep_0-3 + 582, 1, -41.8 );
setRotateKey( spep_0-3 + 586, 1, -41.8 );
setRotateKey( spep_0-3 + 588, 1, -41.9 );
setRotateKey( spep_0-3 + 592, 1, -41.9 );
setRotateKey( spep_0-3 + 594, 1, -42 );
setRotateKey( spep_0-3 + 606, 1, -42 );
setRotateKey( spep_0-3 + 608, 1, -41.9 );
setRotateKey( spep_0-3 + 612, 1, -41.9 );
setRotateKey( spep_0-3 + 614, 1, -41.8 );
setRotateKey( spep_0-3 + 618, 1, -41.8 );
setRotateKey( spep_0-1 + 620, 1, -41.7 );
setRotateKey( spep_0-1 + 626, 1, -41.7 );

--SE
--ダッシュで近づいてくる
stopSe( spep_0 + 62, SE001, 16 );
stopSe( spep_0 + 70, SE002, 20 );
stopSe( spep_0 + 82, SE003, 18 );

--つかむ
SE005 = playSe( spep_0 + 80, 1188 );
setSeVolumeByWorkId( spep_0 + 80, SE005, 0 );
setSeVolumeByWorkId( spep_0 + 81, SE005, 16.7 );
setSeVolumeByWorkId( spep_0 + 82, SE005, 33.4 );
setSeVolumeByWorkId( spep_0 + 83, SE005, 50.1 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 67 );
setStartTimeMs( SE005,  450 );
SE006 = playSe( spep_0 + 78, 1009 );
setSeVolumeByWorkId( spep_0 + 78, SE006, 75 );
SE007 = playSe( spep_0 + 80, 1153 );
setSeVolumeByWorkId( spep_0 + 80, SE007, 84 );
SE008 = playSe( spep_0 + 82, 19 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 83 );
SE009 = playSe( spep_0 + 86, 1168 );
setSeVolumeByWorkId( spep_0 + 86, SE009, 56 );
stopSe( spep_0 + 132, SE009, 38 );

--敵を持ち上げる
SE010 = playSe( spep_0 + 154, 1116 ,"",0.5);
stopSe( spep_0 + 182, SE010, 14 );
SE011 = playSe( spep_0 + 154, 1004 );
setSeVolumeByWorkId( spep_0 + 154, SE011, 75 );
setPitch( spep_0 + 154, SE011, -400 );
setTimeStretch( SE011, 0.73, 10, 1 );
SE012 = playSe( spep_0 + 160, 1278 ,"",0.5);
setSeVolumeByWorkId( spep_0 + 160, SE012, 81 );
stopSe( spep_0 + 194, SE012, 58 );

--蹴り上げ
SE013 = playSe( spep_0 + 262, 1003 );
SE014 = playSe( spep_0 + 270, 1010 );
SE015 = playSe( spep_0 + 272, 1110 );
setSeVolumeByWorkId( spep_0 + 272, SE015, 88 );
SE016 = playSe( spep_0 + 274, 1187 );
setSeVolumeByWorkId( spep_0 + 274, SE016, 70 );

--敵飛んでいく
SE017 = playSe( spep_0 + 288, 1183 );
stopSe( spep_0 + 336, SE017, 26 );

--敵に向かっていく
SE019 = playSe( spep_0 + 332, 1167 );
setSeVolumeByWorkId( spep_0 + 332, SE019, 36 );
SE020 = playSe( spep_0 + 332, 1182 );
SE021 = playSe( spep_0 + 332, 1117 );

--エルボー
SE022 = playSe( spep_0 + 398, 1190 );
stopSe( spep_0 + 418, SE022, 12 );
SE023 = playSe( spep_0 + 398, 1010 );
SE024 = playSe( spep_0 + 398, 1110 );
setSeVolumeByWorkId( spep_0 + 398, SE024, 120 );
stopSe( spep_0 + 416, SE024, 10 );

--敵と共に岩へ
SE018 = playSe( spep_0 + 406, 1121 ,"",0.6);
setSeVolumeByWorkId( spep_0 + 406, SE018, 0 );
setSeVolumeByWorkId( spep_0 + 407, SE018, 16.9 );
setSeVolumeByWorkId( spep_0 + 408, SE018, 33.8 );
setSeVolumeByWorkId( spep_0 + 409, SE018, 50.7 );
setSeVolumeByWorkId( spep_0 + 410, SE018, 68 );
setStartTimeMs( SE018,  1567 );
setPitch( spep_0 + 410, SE018, -200 );
setTimeStretch( SE018, 0.87, 30, 5 );

--岩激突
SE026 = playSe( spep_0 + 450, 1025 );
setSeVolumeByWorkId( spep_0 + 450, SE026, 89 );
SE027 = playSe( spep_0 + 452, 1159 );
setSeVolumeByWorkId( spep_0 + 452, SE027, 55 );

--岩落ちる
SE025 = playSe( spep_0 + 538, 1168 );
setSeVolumeByWorkId( spep_0 + 538, SE025, 0 );
setSeVolumeByWorkId( spep_0 + 539, SE025, 5.7 );
setSeVolumeByWorkId( spep_0 + 540, SE025, 11.4 );
setSeVolumeByWorkId( spep_0 + 541, SE025, 17.1 );
setSeVolumeByWorkId( spep_0 + 542, SE025, 22.8 );
setSeVolumeByWorkId( spep_0 + 543, SE025, 28.5 );
setSeVolumeByWorkId( spep_0 + 544, SE025, 34.2 );
setSeVolumeByWorkId( spep_0 + 545, SE025, 39.9 );
setSeVolumeByWorkId( spep_0 + 546, SE025, 45.6 );
setSeVolumeByWorkId( spep_0 + 547, SE025, 51.3 );
setSeVolumeByWorkId( spep_0 + 548, SE025, 57 );
setSeVolumeByWorkId( spep_0 + 549, SE025, 62.7 );
setSeVolumeByWorkId( spep_0 + 550, SE025, 68 );
setStartTimeMs( SE025,  2000 );

--顔カットイン
SE028 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_0 + 614, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_1 = spep_0 + 626;
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

--岩落ちる
stopSe( spep_1 + 00, SE025, 10 );
--岩激突
stopSe( spep_1 + 00, SE027, 10 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 後半
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 320, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 320, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 320, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 320, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 320, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 320, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 320, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 320, finish_b, 255 );

--敵の動き
setDisp( spep_2-3 + 62, 1, 1);
setDisp( spep_2-1 + 226, 1, 0);

changeAnime( spep_2-3 + 62, 1, 106);

setMoveKey( spep_2-3 + 134, 1, 288.3, -7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 288.3, -7 , 0 );
setMoveKey( spep_2-3 + 182, 1, 300.8, -6 , 0 );
setMoveKey( spep_2-3 + 184, 1, 284.3, -6 , 0 );
setMoveKey( spep_2-3 + 186, 1, 284.3, -6 , 0 );
setMoveKey( spep_2-3 + 188, 1, 299.3, -5.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, 281.3, -5.5 , 0 );
setMoveKey( spep_2-3 + 192, 1, 303.8, -7 , 0 );
setMoveKey( spep_2-3 + 194, 1, 285.8, -6 , 0 );
setMoveKey( spep_2-3 + 196, 1, 285.8, -6.5 , 0 );
setMoveKey( spep_2-3 + 198, 1, 298.3, -6.5 , 0 );
setMoveKey( spep_2-3 + 200, 1, 282.3, -7 , 0 );
setMoveKey( spep_2-3 + 202, 1, 301.3, -6.5 , 0 );
setMoveKey( spep_2-3 + 204, 1, 276.3, -6 , 0 );
setMoveKey( spep_2-3 + 206, 1, 276.8, -6.5 , 0 );
setMoveKey( spep_2-3 + 208, 1, 297.3, -4.5 , 0 );
setMoveKey( spep_2-3 + 210, 1, 279.3, -5 , 0 );
setMoveKey( spep_2-3 + 212, 1, 299.8, -7 , 0 );
setMoveKey( spep_2-3 + 214, 1, 279.8, -6 , 0 );
setMoveKey( spep_2-3 + 216, 1, 278.3, -7.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, 297.8, -7.5 , 0 );
setMoveKey( spep_2-3 + 220, 1, 281.3, -6 , 0 );
setMoveKey( spep_2-3 + 222, 1, 299.8, -4.5 , 0 );
setMoveKey( spep_2-3 + 224, 1, 283.8, -5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 283.3, -6 , 0 );

setScaleKey( spep_2-3 + 134, 1, 0.28, 0.28 );
setScaleKey( spep_2-3 + 226, 1, 0.28, 0.28 );

setRotateKey( spep_2-3 + 134, 1, -45 );
setRotateKey( spep_2-3 + 226, 1, -45 );

--SE
--少し下がる
SE030 = playSe( spep_2 + 0, 1116 );
stopSe( spep_2 + 32, SE030, 48 );

--気弾溜め
SE031 = playSe( spep_2 + 26, 1191 ,"",0.6);
setSeVolumeByWorkId( spep_2 + 26, SE031, 178 );
stopSe( spep_2 + 74, SE031, 14 );
SE032 = playSe( spep_2 + 30, 1262 );
setPitch( spep_2 + 30, SE032, 300 );
setTimeStretch( SE032, 1.2, 10, 1 );
stopSe( spep_2 + 84, SE032, 16 );
SE033 = playSe( spep_2 + 30, 1204 );
stopSe( spep_2 + 84, SE033, 16 );

--気弾投げる
SE035 = playSe( spep_2 + 74, 1003 );
setSeVolumeByWorkId( spep_2 + 74, SE035, 74 );
SE036 = playSe( spep_2 + 78, 1021 );
SE037 = playSe( spep_2 + 78, 1277 );
stopSe( spep_2 + 136, SE037, 22 );
SE038 = playSe( spep_2 + 78, 1027 );
setSeVolumeByWorkId( spep_2 + 78, SE038, 62 );
SE039 = playSe( spep_2 + 78, 1121 );
setSeVolumeByWorkId( spep_2 + 78, SE039, 46 )
setPitch( spep_2 + 78, SE039, -700 );
setTimeStretch( SE039, 0.53, 10, 1 );
stopSe( spep_2 + 186, SE039, 30 );
SE034 = playSe( spep_2 + 82, 1145 );
setSeVolumeByWorkId( spep_2 + 82, SE034, 0 );
setSeVolumeByWorkId( spep_2 + 83, SE034, 7.1 );
setSeVolumeByWorkId( spep_2 + 84, SE034, 14.2 );
setSeVolumeByWorkId( spep_2 + 85, SE034, 21.3 );
setSeVolumeByWorkId( spep_2 + 86, SE034, 28.4 );
setSeVolumeByWorkId( spep_2 + 87, SE034, 35.5 );
setSeVolumeByWorkId( spep_2 + 88, SE034, 42.6 );
setSeVolumeByWorkId( spep_2 + 89, SE034, 49.7 );
setSeVolumeByWorkId( spep_2 + 90, SE034, 56.8 );
setSeVolumeByWorkId( spep_2 + 91, SE034, 63.9 );
setSeVolumeByWorkId( spep_2 + 92, SE034, 71 );
setSeVolumeByWorkId( spep_2 + 93, SE034, 78.1 );
setSeVolumeByWorkId( spep_2 + 94, SE034, 85.2 );
setSeVolumeByWorkId( spep_2 + 95, SE034, 92.3 );
setSeVolumeByWorkId( spep_2 + 96, SE034, 100 );
setStartTimeMs( SE034,  300 );
setPitch( spep_2 + 82, SE034, 400 );
setTimeStretch( SE034, 1.27, 10, 1 );
stopSe( spep_2 + 186, SE034, 30 );

--気弾道
SE040 = playSe( spep_2 + 140, 1177 );
setSeVolumeByWorkId( spep_2 + 140, SE040, 0 );
setSeVolumeByWorkId( spep_2 + 141, SE040, 2.8 );
setSeVolumeByWorkId( spep_2 + 142, SE040, 5.6 );
setSeVolumeByWorkId( spep_2 + 143, SE040, 8.4 );
setSeVolumeByWorkId( spep_2 + 144, SE040, 11.2 );
setSeVolumeByWorkId( spep_2 + 145, SE040, 14 );
setSeVolumeByWorkId( spep_2 + 146, SE040, 16.8 );
setSeVolumeByWorkId( spep_2 + 147, SE040, 19.6 );
setSeVolumeByWorkId( spep_2 + 148, SE040, 22.4 );
setSeVolumeByWorkId( spep_2 + 149, SE040, 25.2 );
setSeVolumeByWorkId( spep_2 + 150, SE040, 28 );
setSeVolumeByWorkId( spep_2 + 151, SE040, 30.8 );
setSeVolumeByWorkId( spep_2 + 152, SE040, 33.6 );
setSeVolumeByWorkId( spep_2 + 153, SE040, 36.4 );
setSeVolumeByWorkId( spep_2 + 154, SE040, 39.2 );
setSeVolumeByWorkId( spep_2 + 155, SE040, 42 );
setSeVolumeByWorkId( spep_2 + 156, SE040, 44.8 );
setSeVolumeByWorkId( spep_2 + 157, SE040, 47.6 );
setSeVolumeByWorkId( spep_2 + 158, SE040, 50.4 );
setSeVolumeByWorkId( spep_2 + 159, SE040, 53.2 );
setSeVolumeByWorkId( spep_2 + 160, SE040, 56 );
setSeVolumeByWorkId( spep_2 + 161, SE040, 58.8 );
setSeVolumeByWorkId( spep_2 + 162, SE040, 61.6 );
setSeVolumeByWorkId( spep_2 + 163, SE040, 64.4 );
setSeVolumeByWorkId( spep_2 + 164, SE040, 67.2 );
setSeVolumeByWorkId( spep_2 + 165, SE040, 70 );
setSeVolumeByWorkId( spep_2 + 166, SE040, 72.8 );
setSeVolumeByWorkId( spep_2 + 167, SE040, 75.6 );
setSeVolumeByWorkId( spep_2 + 168, SE040, 78 );
setPitch( spep_2 + 140, SE040, 400 );
setTimeStretch( SE040, 1.27, 10, 1 );
SE041 = playSe( spep_2 + 170, 1201 );

--敵ヒット
SE042 = playSe( spep_2 + 176, 1024 );
setSeVolumeByWorkId( spep_2 + 176, SE042, 85 );
SE043 = playSe( spep_2 + 176, 1159 );
setSeVolumeByWorkId( spep_2 + 176, SE043, 75 );

--岩激突
SE044 = playSe( spep_2 + 220, 1160 );
setSeVolumeByWorkId( spep_2 + 220, SE044, 76 );

--岩貫いて爆発して出る
SE045 = playSe( spep_2 + 254, 1068 );
SE046 = playSe( spep_2 + 254, 1067 );
setSeVolumeByWorkId( spep_2 + 254, SE046, 89 );
SE047 = playSe( spep_2 + 254, 1023 );
setSeVolumeByWorkId( spep_2 + 254, SE047, 89 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 330, 0, 0, 0, 0, 255);       -- ベース暗め　背景


-- ** ダメージ表示 ** --
dealDamage( spep_2 + 200 );
endPhase( spep_2 + 320 );
end