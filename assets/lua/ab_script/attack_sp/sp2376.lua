--1024510:ゴールデンフリーザ_ゴールデンデスブラスター
--sp_effect_b4_00238
--sp2376

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
SP_01=	159926	;--	開幕〜セリフカットイン
SP_02=	159928	;--	開幕〜セリフカットイン
SP_03=	159929	;--	腕振り〜フィニッシュ
SP_04=	159931	;--	腕振り〜フィニッシュ

--エフェクト(てき)
SP_01x=	159927	;--	開幕〜セリフカットイン	(敵)
SP_02x=	159928	;--	開幕〜セリフカットイン	
SP_03x=	159930	;--	腕振り〜フィニッシュ	(敵)
SP_04x=	159931	;--	腕振り〜フィニッシュ	

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

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
--開幕〜セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 658, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 658, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 658, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 658, opening_f, 255 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 658, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 658, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 658, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 658, opening_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 78, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );
changeAnime( spep_0-3 + 54, 1, 0 );

setMoveKey( spep_0 + 0, 1, 0.9, 67 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 0.6, 66.7 , 0 );
setMoveKey( spep_0-3 + 4, 1, -0.3, 66 , 0 );
setMoveKey( spep_0-3 + 6, 1, -1.8, 64.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, -3.9, 62.9 , 0 );
setMoveKey( spep_0-3 + 10, 1, -6.6, 60.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, -10, 57.8 , 0 );
setMoveKey( spep_0-3 + 14, 1, -13.9, 54.5 , 0 );
setMoveKey( spep_0-3 + 16, 1, -18.4, 50.7 , 0 );
setMoveKey( spep_0-3 + 18, 1, -23.5, 46.4 , 0 );
setMoveKey( spep_0-3 + 20, 1, -29.3, 41.5 , 0 );
setMoveKey( spep_0-3 + 22, 1, -35.6, 36.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, -42.6, 30.4 , 0 );
setMoveKey( spep_0-3 + 26, 1, -50.1, 24 , 0 );
setMoveKey( spep_0-3 + 28, 1, -58.3, 17.1 , 0 );
setMoveKey( spep_0-3 + 30, 1, -67, 9.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, -76.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 34, 1, -76.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 36, 1, -96.9, -15.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, -96.9, -15.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, -119.9, -34.9 , 0 );
setMoveKey( spep_0-3 + 42, 1, -132.3, -45.4 , 0 );
setMoveKey( spep_0-3 + 44, 1, -145.3, -56.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, -158.9, -67.8 , 0 );
setMoveKey( spep_0-3 + 48, 1, -173.1, -79.8 , 0 );
setMoveKey( spep_0-3 + 50, 1, -187.9, -92.3 , 0 );
setMoveKey( spep_0-3 + 53, 1, -203.3, -105.3 , 0 );
setMoveKey( spep_0-3 + 54, 1, -219.1, -118.5 , 0 );
setMoveKey( spep_0-3 + 56, 1, -241.7, -139.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, -264.2, -159.7 , 0 );
setMoveKey( spep_0-3 + 60, 1, -286.7, -180.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, -309.2, -200.8 , 0 );
setMoveKey( spep_0-3 + 64, 1, -331.7, -221.4 , 0 );
setMoveKey( spep_0-3 + 66, 1, -354.2, -241.9 , 0 );
setMoveKey( spep_0-3 + 68, 1, -376.7, -262.5 , 0 );
setMoveKey( spep_0-3 + 70, 1, -399.2, -283.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, -421.7, -303.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, -421.7, -303.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, -472.4, -349.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, -472.4, -349.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 10, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 12, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 16, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 26, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 34, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 40, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 46, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 50, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 53, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 54, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 56, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 58, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 60, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 62, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 64, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 66, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 70, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 72, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 76, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 78, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 0, 1, -0.2 );
setRotateKey( spep_0 + 1, 1, -0.2 );
setRotateKey( spep_0 + 2, 1, -0.2 );
setRotateKey( spep_0 + 3, 1, -0.2 );
setRotateKey( spep_0 + 4, 1, -0.2 );
setRotateKey( spep_0 + 5, 1, -0.2 );
setRotateKey( spep_0 + 6, 1, -0.2 );
setRotateKey( spep_0-3 + 54, 1, -0.2 );
setRotateKey( spep_0-3 + 56, 1, -1.3 );
setRotateKey( spep_0-3 + 58, 1, -2.4 );
setRotateKey( spep_0-3 + 60, 1, -3.5 );
setRotateKey( spep_0-3 + 62, 1, -4.6 );
setRotateKey( spep_0-3 + 64, 1, -5.7 );
setRotateKey( spep_0-3 + 66, 1, -6.8 );
setRotateKey( spep_0-3 + 68, 1, -7.9 );
setRotateKey( spep_0-3 + 70, 1, -9 );
setRotateKey( spep_0-3 + 72, 1, -10.1 );
setRotateKey( spep_0-3 + 74, 1, -10.1 );
setRotateKey( spep_0-3 + 76, 1, -12.6 );
setRotateKey( spep_0-3 + 78, 1, -12.6 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 670, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 35 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );

--向かっていく
SE003 = playSeVer2( spep_0 + 40, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 40, 1314, "",spep_0 + 162, 0, 48, -1);
SE005 = playSeVer2( spep_0 + 52, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 658, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    
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
spep_x=spep_0 +566;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, -105, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -105,  515);
setEffMoveKey(  spep_x +84,  ctgogo, -105,  515);

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

--敵の動き
setDisp( spep_0-3 + 128, 1, 1 );
setDisp( spep_0-1 + 154, 1, 0 );

changeAnime( spep_0-3 + 128, 1, 102 );

setMoveKey( spep_0-3 + 128, 1, 648.1, -447.2 , 0 );
setMoveKey( spep_0-3 + 130, 1, 648.1, -447.2 , 0 );
setMoveKey( spep_0-3 + 132, 1, 624.3, -423.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, 594.7, -393 , 0 );
setMoveKey( spep_0-3 + 136, 1, 553.1, -350.9 , 0 );
setMoveKey( spep_0-3 + 138, 1, 499.7, -296.7 , 0 );
setMoveKey( spep_0-3 + 140, 1, 434.4, -230.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 357.3, -152.3 , 0 );
setMoveKey( spep_0-3 + 144, 1, 348.4, -132.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 340.5, -115.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 333.7, -100.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, 328, -88.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 323.4, -78.2 , 0 );
setMoveKey( spep_0-1 + 154, 1, 319.9, -70.4 , 0 );

setScaleKey( spep_0-3 + 128, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 130, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 132, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 134, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 136, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 138, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 142, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 144, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 146, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 148, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 150, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 152, 1, 2.68, 2.68 );
setScaleKey( spep_0-1 + 154, 1, 2.69, 2.69 );

setRotateKey( spep_0-3 + 128, 1, -19.7 );
setRotateKey( spep_0-3 + 130, 1, -19.7 );
setRotateKey( spep_0-3 + 132, 1, -18.8 );
setRotateKey( spep_0-3 + 134, 1, -17.7 );
setRotateKey( spep_0-3 + 136, 1, -16 );
setRotateKey( spep_0-3 + 138, 1, -13.9 );
setRotateKey( spep_0-3 + 140, 1, -11.4 );
setRotateKey( spep_0-3 + 142, 1, -8.4 );
setRotateKey( spep_0-3 + 144, 1, -7.9 );
setRotateKey( spep_0-3 + 146, 1, -7.4 );
setRotateKey( spep_0-3 + 148, 1, -7 );
setRotateKey( spep_0-3 + 150, 1, -6.7 );
setRotateKey( spep_0-3 + 152, 1, -6.4 );
setRotateKey( spep_0-1 + 154, 1, -6.2 );

--敵の動き
setDisp( spep_0-3 + 252, 1, 1 );
setDisp( spep_0-1 + 434, 1, 0 );

changeAnime( spep_0-3 + 252, 1, 117 );
changeAnime( spep_0-3 + 264, 1, 108 );
changeAnime( spep_0-3 + 294, 1, 106 );
changeAnime( spep_0-3 + 310, 1, 108 );
changeAnime( spep_0-3 + 334, 1, 106 );
changeAnime( spep_0-3 + 376, 1, 105 );

setMoveKey( spep_0-3 + 252, 1, 1148.7, 77 , 0 );
setMoveKey( spep_0-3 + 253, 1, 1148.7, 77 , 0 );
setMoveKey( spep_0-3 + 254, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 255, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 256, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 257, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 258, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 259, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 261, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 262, 1, 209.2, 76.7 , 0 );
setMoveKey( spep_0-3 + 263, 1, 209.2, 76.7 , 0 );

setMoveKey( spep_0-3 + 264, 1, 91.4, 50.3 , 0 );
setMoveKey( spep_0-3 + 265, 1, 91.4, 50.3 , 0 );
setMoveKey( spep_0-3 + 266, 1, 129.6, 81.2 , 0 );
setMoveKey( spep_0-3 + 267, 1, 129.6, 81.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 177.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 269, 1, 177.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 156.1, 97.6 , 0 );
setMoveKey( spep_0-3 + 271, 1, 156.1, 97.6 , 0 );
setMoveKey( spep_0-3 + 272, 1, 106.2, 87.4 , 0 );
setMoveKey( spep_0-3 + 273, 1, 106.2, 87.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 169.7, 128.1 , 0 );
setMoveKey( spep_0-3 + 275, 1, 169.7, 128.1 , 0 );
setMoveKey( spep_0-3 + 276, 1, 105.5, 72.6 , 0 );
setMoveKey( spep_0-3 + 277, 1, 105.5, 72.6 , 0 );
setMoveKey( spep_0-3 + 278, 1, 121.5, 73.2 , 0 );
setMoveKey( spep_0-3 + 279, 1, 121.5, 73.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 108.5, 90.4 , 0 );
setMoveKey( spep_0-3 + 281, 1, 108.5, 90.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 121.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 283, 1, 121.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, 107.1, 74.9 , 0 );
setMoveKey( spep_0-3 + 285, 1, 107.1, 74.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, 123.1, 75.5 , 0 );
setMoveKey( spep_0-3 + 287, 1, 123.1, 75.5 , 0 );
setMoveKey( spep_0-3 + 288, 1, 109.6, 91.9 , 0 );
setMoveKey( spep_0-3 + 289, 1, 109.6, 91.9 , 0 );
setMoveKey( spep_0-3 + 290, 1, 112.2, 86.9 , 0 );
setMoveKey( spep_0-3 + 291, 1, 112.2, 86.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 114.9, 82.1 , 0 );
setMoveKey( spep_0-3 + 293, 1, 114.9, 82.1 , 0 );

setMoveKey( spep_0-3 + 294, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 295, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 296, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 297, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 299, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 301, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 303, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 304, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 305, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 307, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 309, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 309, 1, 134.8, 49.6 , 0 );

setMoveKey( spep_0-3 + 310, 1, 138.9, 16.2 , 0 );
setMoveKey( spep_0-3 + 311, 1, 138.9, 16.2 , 0 );
setMoveKey( spep_0-3 + 312, 1, 163.8, 30.5 , 0 );
setMoveKey( spep_0-3 + 313, 1, 163.8, 30.5 , 0 );
setMoveKey( spep_0-3 + 314, 1, 183.3, 34.1 , 0 );
setMoveKey( spep_0-3 + 315, 1, 183.3, 34.1 , 0 );
setMoveKey( spep_0-3 + 316, 1, 137, -1.5 , 0 );
setMoveKey( spep_0-3 + 317, 1, 137, -1.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 198.6, 4.9 , 0 );
setMoveKey( spep_0-3 + 319, 1, 198.6, 4.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, 157.9, 33.4 , 0 );
setMoveKey( spep_0-3 + 321, 1, 157.9, 33.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, 172.6, 11.3 , 0 );
setMoveKey( spep_0-3 + 323, 1, 172.6, 11.3 , 0 );
setMoveKey( spep_0-3 + 324, 1, 176.5, 22.9 , 0 );
setMoveKey( spep_0-3 + 325, 1, 176.5, 22.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 187, 35.7 , 0 );
setMoveKey( spep_0-3 + 327, 1, 187, 35.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, 190.9, 22.2 , 0 );
setMoveKey( spep_0-3 + 329, 1, 190.9, 22.2 , 0 );
setMoveKey( spep_0-3 + 330, 1, 193, 22.6 , 0 );
setMoveKey( spep_0-3 + 331, 1, 193, 22.6 , 0 );
setMoveKey( spep_0-3 + 332, 1, 218, 40.5 , 0 );
setMoveKey( spep_0-3 + 333, 1, 218, 40.5 , 0 );

setMoveKey( spep_0-3 + 334, 1, 129.2, 6.2 , 0 );
setMoveKey( spep_0-3 + 335, 1, 129.2, 6.2 , 0 );
setMoveKey( spep_0-3 + 336, 1, 175.6, 9.8 , 0 );
setMoveKey( spep_0-3 + 337, 1, 175.6, 9.8 , 0 );
setMoveKey( spep_0-3 + 338, 1, 185.8, 58.4 , 0 );
setMoveKey( spep_0-3 + 339, 1, 185.8, 58.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, 139.5, 22.7 , 0 );
setMoveKey( spep_0-3 + 341, 1, 139.5, 22.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, 170.2, 58.9 , 0 );
setMoveKey( spep_0-3 + 343, 1, 170.2, 58.9 , 0 );
setMoveKey( spep_0-3 + 344, 1, 170.2, 57.6 , 0 );
setMoveKey( spep_0-3 + 345, 1, 170.2, 57.6 , 0 );
setMoveKey( spep_0-3 + 346, 1, 178.4, 69.5 , 0 );
setMoveKey( spep_0-3 + 347, 1, 178.4, 69.5 , 0 );
setMoveKey( spep_0-3 + 348, 1, 178.4, 68.2 , 0 );
setMoveKey( spep_0-3 + 349, 1, 178.4, 68.2 , 0 );
setMoveKey( spep_0-3 + 350, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 351, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 352, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 353, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 354, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 355, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 356, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 357, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 358, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 359, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 360, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 361, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 362, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 363, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 364, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 365, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 366, 1, 203, 107.4 , 0 );
setMoveKey( spep_0-3 + 367, 1, 203, 107.4 , 0 );
setMoveKey( spep_0-3 + 368, 1, 203.9, 108.9 , 0 );
setMoveKey( spep_0-3 + 369, 1, 203.9, 108.9 , 0 );
setMoveKey( spep_0-3 + 370, 1, 204.6, 110 , 0 );
setMoveKey( spep_0-3 + 371, 1, 204.6, 110 , 0 );
setMoveKey( spep_0-3 + 372, 1, 205, 110.6 , 0 );
setMoveKey( spep_0-3 + 373, 1, 205, 110.6 , 0 );
setMoveKey( spep_0-3 + 374, 1, 205.2, 110.8 , 0 );
setMoveKey( spep_0-3 + 375, 1, 205.2, 110.8 , 0 );

setMoveKey( spep_0-3 + 376, 1, -97.4, -86.5 , 0 );
setMoveKey( spep_0-3 + 377, 1, -97.4, -86.5 , 0 );
setMoveKey( spep_0-3 + 378, 1, -81.7, -40.8 , 0 );
setMoveKey( spep_0-3 + 379, 1, -81.7, -40.8 , 0 );
setMoveKey( spep_0-3 + 380, 1, -12.8, 50.1 , 0 );
setMoveKey( spep_0-3 + 381, 1, -12.8, 50.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, -10.3, 116.7 , 0 );
setMoveKey( spep_0-3 + 383, 1, -10.3, 116.7 , 0 );
setMoveKey( spep_0-3 + 384, 1, 54.2, 149.7 , 0 );
setMoveKey( spep_0-3 + 385, 1, 54.2, 149.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 32, 151.8 , 0 );
setMoveKey( spep_0-3 + 387, 1, 32, 151.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, 117.2, 287.6 , 0 );
setMoveKey( spep_0-3 + 389, 1, 117.2, 287.6 , 0 );
setMoveKey( spep_0-3 + 390, 1, 104.1, 285.8 , 0 );
setMoveKey( spep_0-3 + 391, 1, 104.1, 285.8 , 0 );
setMoveKey( spep_0-3 + 392, 1, 181.2, 398.6 , 0 );
setMoveKey( spep_0-3 + 393, 1, 181.2, 398.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, 176.8, 397.7 , 0 );
setMoveKey( spep_0-3 + 395, 1, 176.8, 397.7 , 0 );
setMoveKey( spep_0-3 + 396, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 397, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 398, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 399, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 400, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 401, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 402, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 403, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 404, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 405, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 406, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 407, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 408, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 409, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 410, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 411, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 413, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 414, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 415, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 417, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 418, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 419, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 420, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 424, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 425, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 426, 1, 191.7, 445.8 , 0 );
setMoveKey( spep_0-3 + 430, 1, 191.7, 445.8 , 0 );
setMoveKey( spep_0-1 + 434, 1, 192.2, 447.5 , 0 );

setScaleKey( spep_0-3 + 252, 1, 10.35, 10.35 );
setScaleKey( spep_0-3 + 263, 1, 10.35, 10.35 );

setScaleKey( spep_0-3 + 264, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 265, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 266, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 267, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 268, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 269, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 270, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 271, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 272, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 273, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 274, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 275, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 276, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 293, 1, 1.79, 1.79 );

setScaleKey( spep_0-3 + 294, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 309, 1, 2.94, 2.94 );

setScaleKey( spep_0-3 + 310, 1, 3.5, 3.5 );
setScaleKey( spep_0-3 + 333, 1, 3.5, 3.5 );

setScaleKey( spep_0-3 + 334, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 375, 1, 2.97, 2.97 );

setScaleKey( spep_0-3 + 376, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 377, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 378, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 379, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 380, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 381, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 382, 1, 4.05, 4.05 );
setScaleKey( spep_0-3 + 383, 1, 4.05, 4.05 );
setScaleKey( spep_0-3 + 384, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 385, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 386, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 387, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 388, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 390, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 391, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 392, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 394, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 395, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 396, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 398, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 399, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 400, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 402, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 403, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 404, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 406, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 407, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 408, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 410, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 411, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 412, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 414, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 415, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 416, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 418, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 419, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 420, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 424, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 425, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 426, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 430, 1, 0.47, 0.47 );
setScaleKey( spep_0-1 + 434, 1, 0.46, 0.46 );

setRotateKey( spep_0-3 + 252, 1, 0 );
setRotateKey( spep_0-3 + 263, 1, 0 );

setRotateKey( spep_0-3 + 264, 1, -37.3 );
setRotateKey( spep_0-3 + 293, 1, -37.3 );

setRotateKey( spep_0-3 + 294, 1, -50.6 );
setRotateKey( spep_0-3 + 296, 1, -50.6 );
setRotateKey( spep_0-3 + 297, 1, -50.6 );
setRotateKey( spep_0-3 + 298, 1, -49.2 );
setRotateKey( spep_0-3 + 300, 1, -49.2 );
setRotateKey( spep_0-3 + 301, 1, -49.2 );
setRotateKey( spep_0-3 + 302, 1, -47.7 );
setRotateKey( spep_0-3 + 304, 1, -47.7 );
setRotateKey( spep_0-3 + 305, 1, -47.7 );
setRotateKey( spep_0-3 + 306, 1, -46.3 );
setRotateKey( spep_0-3 + 309, 1, -46.3 );

setRotateKey( spep_0-3 + 310, 1, -17.9 );
setRotateKey( spep_0-3 + 333, 1, -17.9 );

setRotateKey( spep_0-3 + 334, 1, -39.9 );
setRotateKey( spep_0-3 + 336, 1, -39.9 );
setRotateKey( spep_0-3 + 337, 1, -39.9 );
setRotateKey( spep_0-3 + 338, 1, -39.3 );
setRotateKey( spep_0-3 + 340, 1, -39.3 );
setRotateKey( spep_0-3 + 341, 1, -39.3 );
setRotateKey( spep_0-3 + 342, 1, -38.8 );
setRotateKey( spep_0-3 + 344, 1, -38.8 );
setRotateKey( spep_0-3 + 345, 1, -38.8 );
setRotateKey( spep_0-3 + 346, 1, -38.3 );
setRotateKey( spep_0-3 + 348, 1, -38.3 );
setRotateKey( spep_0-3 + 349, 1, -38.3 );
setRotateKey( spep_0-3 + 350, 1, -37.9 );
setRotateKey( spep_0-3 + 352, 1, -37.9 );
setRotateKey( spep_0-3 + 353, 1, -37.9 );
setRotateKey( spep_0-3 + 354, 1, -37.6 );
setRotateKey( spep_0-3 + 356, 1, -37.6 );
setRotateKey( spep_0-3 + 357, 1, -37.6 );
setRotateKey( spep_0-3 + 358, 1, -37.3 );
setRotateKey( spep_0-3 + 360, 1, -37.3 );
setRotateKey( spep_0-3 + 361, 1, -37.3 );
setRotateKey( spep_0-3 + 362, 1, -37.1 );
setRotateKey( spep_0-3 + 364, 1, -37.1 );
setRotateKey( spep_0-3 + 365, 1, -37.1 );
setRotateKey( spep_0-3 + 366, 1, -36.9 );
setRotateKey( spep_0-3 + 368, 1, -36.9 );
setRotateKey( spep_0-3 + 369, 1, -36.9 );
setRotateKey( spep_0-3 + 370, 1, -36.8 );
setRotateKey( spep_0-3 + 375, 1, -36.8 );

setRotateKey( spep_0-3 + 376, 1, 16 );
setRotateKey( spep_0-1 + 434, 1, 16 );

--敵の動き
setDisp( spep_0-3 + 438, 1, 1 );
setDisp( spep_0-1 + 464, 1, 0 );

changeAnime( spep_0-3 + 438, 1, 106 );

setMoveKey( spep_0-3 + 438, 1, -617.3, 112.7 , 0 );
setMoveKey( spep_0-3 + 439, 1, -617.3, 112.7 , 0 );
setMoveKey( spep_0-3 + 440, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 441, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 442, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 443, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 444, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 445, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 447, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 448, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 449, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 450, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 451, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 452, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 453, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 454, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 455, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 456, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 457, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 458, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 459, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 460, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 461, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 462, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 463, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-1 + 464, 1, -117.5, -27.9 , 0 );

setScaleKey( spep_0-3 + 438, 1, 1.56, 1.56 );
setScaleKey( spep_0-1 + 464, 1, 1.56, 1.56 );

setRotateKey( spep_0-3 + 438, 1, 32 );
setRotateKey( spep_0-1 + 464, 1, 32 );

--敵の動き
setDisp( spep_0-3 + 504, 1, 1 );
setDisp( spep_0-1 + 566, 1, 0 );

changeAnime( spep_0-3 + 504, 1, 106 );

setMoveKey( spep_0-3 + 504, 1, -9.7, 7.2 , 0 );
setMoveKey( spep_0-3 + 505, 1, -9.7, 7.2 , 0 );
setMoveKey( spep_0-3 + 506, 1, -20.4, 19.6 , 0 );
setMoveKey( spep_0-3 + 507, 1, -20.4, 19.6 , 0 );
setMoveKey( spep_0-3 + 508, 1, -77.7, 105.9 , 0 );
setMoveKey( spep_0-3 + 509, 1, -77.7, 105.9 , 0 );
setMoveKey( spep_0-3 + 510, 1, -65.2, 81.6 , 0 );
setMoveKey( spep_0-3 + 511, 1, -65.2, 81.6 , 0 );
setMoveKey( spep_0-3 + 512, 1, -42.7, 69.4 , 0 );
setMoveKey( spep_0-3 + 513, 1, -42.7, 69.4 , 0 );
setMoveKey( spep_0-3 + 514, 1, -76.2, 102.6 , 0 );
setMoveKey( spep_0-3 + 515, 1, -76.2, 102.6 , 0 );
setMoveKey( spep_0-3 + 516, 1, -43.5, 63.9 , 0 );
setMoveKey( spep_0-3 + 517, 1, -43.5, 63.9 , 0 );
setMoveKey( spep_0-3 + 518, 1, -50.8, 63.1 , 0 );
setMoveKey( spep_0-3 + 517, 1, -50.8, 63.1 , 0 );
setMoveKey( spep_0-3 + 520, 1, -48.2, 74.4 , 0 );
setMoveKey( spep_0-3 + 521, 1, -48.2, 74.4 , 0 );
setMoveKey( spep_0-3 + 522, 1, -53.9, 75 , 0 );
setMoveKey( spep_0-3 + 523, 1, -53.9, 75 , 0 );
setMoveKey( spep_0-3 + 524, 1, -49, 69 , 0 );
setMoveKey( spep_0-3 + 525, 1, -49, 69 , 0 );
setMoveKey( spep_0-3 + 526, 1, -56.3, 68.2 , 0 );
setMoveKey( spep_0-3 + 527, 1, -56.3, 68.2 , 0 );
setMoveKey( spep_0-3 + 528, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 529, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 530, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 531, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 532, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 534, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 535, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 536, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 538, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 539, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 540, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 542, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 543, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 544, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 546, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 547, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 548, 1, -69.6, 84.4 , 0 );
setMoveKey( spep_0-3 + 549, 1, -69.6, 84.4 , 0 );
setMoveKey( spep_0-3 + 550, 1, -71, 85.7 , 0 );
setMoveKey( spep_0-3 + 551, 1, -71, 85.7 , 0 );
setMoveKey( spep_0-3 + 552, 1, -72.3, 87 , 0 );
setMoveKey( spep_0-3 + 553, 1, -72.3, 87 , 0 );
setMoveKey( spep_0-3 + 554, 1, -73.7, 88.2 , 0 );
setMoveKey( spep_0-3 + 555, 1, -73.7, 88.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, -75, 89.5 , 0 );
setMoveKey( spep_0-3 + 557, 1, -75, 89.5 , 0 );
setMoveKey( spep_0-3 + 558, 1, -76.4, 90.8 , 0 );
setMoveKey( spep_0-3 + 559, 1, -76.4, 90.8 , 0 );
setMoveKey( spep_0-3 + 560, 1, -77.7, 92 , 0 );
setMoveKey( spep_0-3 + 561, 1, -77.7, 92 , 0 );
setMoveKey( spep_0-3 + 562, 1, -79.1, 93.3 , 0 );
setMoveKey( spep_0-3 + 563, 1, -79.1, 93.3 , 0 );
setMoveKey( spep_0-3 + 564, 1, -80.5, 94.5 , 0 );
setMoveKey( spep_0-3 + 565, 1, -80.5, 94.5 , 0 );
setMoveKey( spep_0-1 + 566, 1, -81.8, 95.8 , 0 );

setScaleKey( spep_0-3 + 504, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 505, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 506, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 507, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 508, 1, 3.6, 3.6 );
setScaleKey( spep_0-3 + 509, 1, 3.6, 3.6 );
setScaleKey( spep_0-3 + 510, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 511, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 512, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 513, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 514, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 515, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 516, 1, 2.06, 2.06 );
setScaleKey( spep_0-1 + 566, 1, 2.06, 2.06 );

setRotateKey( spep_0-3 + 504, 1, -45.4 );
setRotateKey( spep_0-3 + 506, 1, -45.4 );
setRotateKey( spep_0-3 + 507, 1, -45.4 );
setRotateKey( spep_0-3 + 508, 1, -51.9 );
setRotateKey( spep_0-3 + 514, 1, -51.9 );
setRotateKey( spep_0-3 + 515, 1, -51.9 );
setRotateKey( spep_0-3 + 516, 1, -52 );
setRotateKey( spep_0-3 + 526, 1, -52 );
setRotateKey( spep_0-3 + 527, 1, -52 );
setRotateKey( spep_0-3 + 528, 1, -52.1 );
setRotateKey( spep_0-3 + 538, 1, -52.1 );
setRotateKey( spep_0-3 + 539, 1, -52.1 );
setRotateKey( spep_0-3 + 540, 1, -52.2 );
setRotateKey( spep_0-3 + 548, 1, -52.2 );
setRotateKey( spep_0-3 + 539, 1, -52.1 );
setRotateKey( spep_0-3 + 550, 1, -52.3 );
setRotateKey( spep_0-3 + 560, 1, -52.3 );
setRotateKey( spep_0-3 + 561, 1, -52.3 );
setRotateKey( spep_0-3 + 562, 1, -52.4 );
setRotateKey( spep_0-1 + 566, 1, -52.4 );

--SE
--向かってきて振りかぶる
SE006 = playSeVer2( spep_0 + 118, 9, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 126, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1116, "",spep_0 + 184, 0, 22, -1);
SE009 = playSeVer2( spep_0 + 158, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE009,  100 );

--オーラ
SE010 = playSeVer2( spep_0 + 154, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 63 );
setPitch( spep_0 + 154, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );
SE011 = playSeVer2( spep_0 + 178, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE011, 63 );
setPitch( spep_0 + 178, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 202, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 63 );
setPitch( spep_0 + 202, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--振りかぶる
SE013 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 226, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE014, 63 );
setPitch( spep_0 + 226, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--ボディブロー
SE015 = playSeVer2( spep_0 + 252, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 252, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE016, 75 );
SE017 = playSeVer2( spep_0 + 252, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE017, 82 );

--肘打ち
SE018 = playSeVer2( spep_0 + 308, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 308, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );
SE019 = playSeVer2( spep_0 + 308, 1010, "", 0, 0, 0, -1);

--裏拳
SE020 = playSeVer2( spep_0 + 332, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 332, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE021, 79 );

--パンチ
SE022 = playSeVer2( spep_0 + 374, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 434, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE024 = playSeVer2( spep_0 + 464, 1116, "",spep_0 + 508, 0, 22, -1);
SE025 = playSeVer2( spep_0 + 480, 1004, "", 0, 0, 0, -1);

--蹴り飛ばし
SE026 = playSeVer2( spep_0 + 500, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 500, 1359, "", 0, 0, 0, 0.6);

--回り込む
SE028 = playSeVer2( spep_0 + 540, 1003, "", 0, 0, 0, -1);

--顔カットイン
SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_0 +650 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0 + 658;
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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_1 + 94;
------------------------------------------------------
--腕振り〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 354, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 354, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 354, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 354, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 354, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 354, finish_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 344, 0, 0, 0, 0, 255 );  --黒 背景

--敵の動き
setDisp( spep_2-3 + 28, 1, 1 );
setDisp( spep_2-1 + 94, 1, 0 );

changeAnime( spep_2-3 + 28, 1, 106 );

setMoveKey( spep_2-3 + 28, 1, -51, -196 , 0 );
setMoveKey( spep_2-3 + 29, 1, -51, -196 , 0 );
setMoveKey( spep_2-3 + 30, 1, -42.9, -155.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, -42.9, -155.4 , 0 );
setMoveKey( spep_2-3 + 32, 1, -34.8, -114.8 , 0 );
setMoveKey( spep_2-3 + 33, 1, -34.8, -114.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, -40.2, -110.9 , 0 );
setMoveKey( spep_2-3 + 35, 1, -40.2, -110.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, -28.1, -118 , 0 );
setMoveKey( spep_2-3 + 37, 1, -28.1, -118 , 0 );
setMoveKey( spep_2-3 + 38, 1, -37.9, -120.2 , 0 );
setMoveKey( spep_2-1 + 94, 1, -34.7, -113.6 , 0 );

setScaleKey( spep_2-3 + 28, 1, 20.82, 20.82 );
setScaleKey( spep_2-3 + 29, 1, 20.82, 20.82 );
setScaleKey( spep_2-3 + 30, 1, 16.42, 16.42 );
setScaleKey( spep_2-3 + 31, 1, 16.42, 16.42 );
setScaleKey( spep_2-3 + 32, 1, 12.02, 12.02 );
setScaleKey( spep_2-3 + 33, 1, 12.02, 12.02 );
setScaleKey( spep_2-3 + 34, 1, 11.96, 11.96 );
setScaleKey( spep_2-3 + 35, 1, 11.96, 11.96 );
setScaleKey( spep_2-3 + 36, 1, 11.9, 11.9 );
setScaleKey( spep_2-1 + 94, 1, 11.9, 11.9 );

setRotateKey( spep_2-3 + 28, 1, -46 );
setRotateKey( spep_2-1 + 94, 1, -46 );

--敵の動き
setDisp( spep_2-3 + 168, 1, 1 );
setDisp( spep_2-1 + 178, 1, 0 );

changeAnime( spep_2-3 + 168, 1, 106 );

setMoveKey( spep_2-3 + 168, 1, 184.5, -47.9 , 0 );
setMoveKey( spep_2-3 + 169, 1, 184.5, -47.9 , 0 );
setMoveKey( spep_2-3 + 170, 1, 183.2, -47.6 , 0 );
setMoveKey( spep_2-3 + 171, 1, 183.2, -47.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 326.4, -98 , 0 );
setMoveKey( spep_2-3 + 173, 1, 326.4, -98 , 0 );
setMoveKey( spep_2-3 + 174, 1, 324.8, -97.6 , 0 );
setMoveKey( spep_2-3 + 175, 1, 324.8, -97.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 467.2, -147.8 , 0 );
setMoveKey( spep_2-3 + 177, 1, 467.2, -147.8 , 0 );
setMoveKey( spep_2-1 + 178, 1, 465.3, -147.3 , 0 );

setScaleKey( spep_2-3 + 168, 1, 0.35, 0.35 );
setScaleKey( spep_2-1 + 178, 1, 0.35, 0.35 );

setRotateKey( spep_2-3 + 168, 1, 28.1 );
setRotateKey( spep_2-1 + 178, 1, 28.1 );

--敵の動き
setDisp( spep_2-3 + 196, 1, 1 );
setDisp( spep_2-1 + 232, 1, 0 );

changeAnime( spep_2-3 + 196, 1, 105 );

setMoveKey( spep_2-3 + 196, 1, -294.3, -144.7 , 0 );
setMoveKey( spep_2-3 + 197, 1, -294.3, -144.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -306.8, -144.7 , 0 );
setMoveKey( spep_2-3 + 199, 1, -306.8, -144.7 , 0 );
setMoveKey( spep_2-3 + 200, 1, -181.8, -122.6 , 0 );
setMoveKey( spep_2-3 + 201, 1, -181.8, -122.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, -194.4, -122.6 , 0 );
setMoveKey( spep_2-3 + 203, 1, -194.4, -122.6 , 0 );
setMoveKey( spep_2-3 + 204, 1, -58.1, -100.7 , 0 );
setMoveKey( spep_2-3 + 205, 1, -58.1, -100.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -59.4, -100.7 , 0 );
setMoveKey( spep_2-3 + 207, 1, -59.4, -100.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 11.1, -89.1 , 0 );
setMoveKey( spep_2-3 + 209, 1, 11.1, -89.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, 9.9, -89.1 , 0 );
setMoveKey( spep_2-3 + 211, 1, 9.9, -89.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 14.1, -87.9 , 0 );
setMoveKey( spep_2-3 + 213, 1, 14.1, -87.9 , 0 );
setMoveKey( spep_2-3 + 214, 1, 12.9, -87.9 , 0 );
setMoveKey( spep_2-3 + 215, 1, 12.9, -87.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 16.4, -87 , 0 );
setMoveKey( spep_2-3 + 217, 1, 16.4, -87 , 0 );
setMoveKey( spep_2-3 + 218, 1, 15.1, -87 , 0 );
setMoveKey( spep_2-3 + 219, 1, 15.1, -87 , 0 );
setMoveKey( spep_2-3 + 220, 1, 17.8, -86.1 , 0 );
setMoveKey( spep_2-3 + 221, 1, 17.8, -86.1 , 0 );
setMoveKey( spep_2-3 + 222, 1, 16.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 223, 1, 16.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 224, 1, 18.5, -85.5 , 0 );
setMoveKey( spep_2-3 + 225, 1, 18.5, -85.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 17.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 227, 1, 17.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 228, 1, 18.4, -85 , 0 );
setMoveKey( spep_2-3 + 229, 1, 18.4, -85 , 0 );
setMoveKey( spep_2-3 + 230, 1, 17.1, -85 , 0 );
setMoveKey( spep_2-3 + 231, 1, 17.1, -85 , 0 );
setMoveKey( spep_2-1 + 232, 1, 17.5, -84.6 , 0 );

setScaleKey( spep_2-3 + 198, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 199, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 201, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 202, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 203, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 204, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 205, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 206, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 207, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 208, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 211, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 212, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 214, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 215, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 216, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 218, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 219, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 220, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 222, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 223, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 224, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 226, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 227, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 228, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 231, 1, 0.11, 0.11 );
setScaleKey( spep_2-1 + 232, 1, 0.09, 0.09 );

setRotateKey( spep_2-3 + 196, 1, 44.9 );
setRotateKey( spep_2-3 + 202, 1, 44.9 );
setRotateKey( spep_2-3 + 203, 1, 44.9 );
setRotateKey( spep_2-3 + 204, 1, 45 );
setRotateKey( spep_2-1 + 232, 1, 45 );

--SE
--気弾溜め
SE030 = playSeVer2( spep_2 + 26, 1204, "",spep_2 + 100, 18, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 26, SE030, 178 );
setStartTimeMs( SE030,  2333 );
SE032 = playSeVer2( spep_2 + 16, 1266, "",spep_2 + 110, 18, 26, 0.6);
setStartTimeMs( SE032,  1900 );

--気弾発射
SE033 = playSeVer2( spep_2 + 94, 1212, "", 0, 18, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 94, SE033, 71 );
setStartTimeMs( SE033,  1533 );

--手をかざす
SE034 = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 16, 1312, "",spep_2 + 54, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 16, SE035, 80 );
SE036 = playSeVer2( spep_2 + 16, 1281, "",spep_2 + 116, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 16, SE036, 82 );
SE037 = playSeVer2( spep_2 + 16, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE038 = playSeVer2( spep_2 + 50, 1145, "",spep_2 + 118, 14, 22, -1);
setStartTimeMs( SE038,  433 );

--気弾発射
SE039 = playSeVer2( spep_2 + 94, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE039, 72 );
SE040 = playSeVer2( spep_2 + 94, 1146, "",spep_2 + 192, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 94, SE040, 84 );
SE041 = playSeVer2( spep_2 + 96, 1357, "",spep_2 + 148, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 96, SE041, 87 );

--敵吹き飛ぶ
SE042 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 250, 0, 18, -1);

--壁激突
SE044 = playSeVer2( spep_2 + 232, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 232, 1188, "", 0, 0, 0, -1);

--岩崩れる
SE046 = playSeVer2( spep_2 + 240, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE046, 91 );

--終わり
dealDamage(spep_2 +234);
endPhase( spep_2 + 344 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕〜セリフカットイン
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
opening_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 658, opening_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 658, opening_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_f, 0 );
setEffRotateKey( spep_0 + 658, opening_f, 0 );
setEffAlphaKey( spep_0 + 0, opening_f, 255 );
setEffAlphaKey( spep_0 + 658, opening_f, 255 );

-- ** エフェクト等 ** --
opening_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, opening_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 658, opening_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, opening_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 658, opening_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, opening_b, 0 );
setEffRotateKey( spep_0 + 658, opening_b, 0 );
setEffAlphaKey( spep_0 + 0, opening_b, 255 );
setEffAlphaKey( spep_0 + 658, opening_b, 255 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 78, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );
changeAnime( spep_0-3 + 54, 1, 0 );

setMoveKey( spep_0 + 0, 1, 0.9, 67 , 0 );
--setMoveKey( spep_0-3 + 2, 1, 0.6, 66.7 , 0 );
setMoveKey( spep_0-3 + 4, 1, -0.3, 66 , 0 );
setMoveKey( spep_0-3 + 6, 1, -1.8, 64.7 , 0 );
setMoveKey( spep_0-3 + 8, 1, -3.9, 62.9 , 0 );
setMoveKey( spep_0-3 + 10, 1, -6.6, 60.6 , 0 );
setMoveKey( spep_0-3 + 12, 1, -10, 57.8 , 0 );
setMoveKey( spep_0-3 + 14, 1, -13.9, 54.5 , 0 );
setMoveKey( spep_0-3 + 16, 1, -18.4, 50.7 , 0 );
setMoveKey( spep_0-3 + 18, 1, -23.5, 46.4 , 0 );
setMoveKey( spep_0-3 + 20, 1, -29.3, 41.5 , 0 );
setMoveKey( spep_0-3 + 22, 1, -35.6, 36.2 , 0 );
setMoveKey( spep_0-3 + 24, 1, -42.6, 30.4 , 0 );
setMoveKey( spep_0-3 + 26, 1, -50.1, 24 , 0 );
setMoveKey( spep_0-3 + 28, 1, -58.3, 17.1 , 0 );
setMoveKey( spep_0-3 + 30, 1, -67, 9.7 , 0 );
setMoveKey( spep_0-3 + 32, 1, -76.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 34, 1, -76.4, 1.8 , 0 );
setMoveKey( spep_0-3 + 36, 1, -96.9, -15.5 , 0 );
setMoveKey( spep_0-3 + 38, 1, -96.9, -15.5 , 0 );
setMoveKey( spep_0-3 + 40, 1, -119.9, -34.9 , 0 );
setMoveKey( spep_0-3 + 42, 1, -132.3, -45.4 , 0 );
setMoveKey( spep_0-3 + 44, 1, -145.3, -56.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, -158.9, -67.8 , 0 );
setMoveKey( spep_0-3 + 48, 1, -173.1, -79.8 , 0 );
setMoveKey( spep_0-3 + 50, 1, -187.9, -92.3 , 0 );
setMoveKey( spep_0-3 + 53, 1, -203.3, -105.3 , 0 );
setMoveKey( spep_0-3 + 54, 1, -219.1, -118.5 , 0 );
setMoveKey( spep_0-3 + 56, 1, -241.7, -139.1 , 0 );
setMoveKey( spep_0-3 + 58, 1, -264.2, -159.7 , 0 );
setMoveKey( spep_0-3 + 60, 1, -286.7, -180.2 , 0 );
setMoveKey( spep_0-3 + 62, 1, -309.2, -200.8 , 0 );
setMoveKey( spep_0-3 + 64, 1, -331.7, -221.4 , 0 );
setMoveKey( spep_0-3 + 66, 1, -354.2, -241.9 , 0 );
setMoveKey( spep_0-3 + 68, 1, -376.7, -262.5 , 0 );
setMoveKey( spep_0-3 + 70, 1, -399.2, -283.1 , 0 );
setMoveKey( spep_0-3 + 72, 1, -421.7, -303.6 , 0 );
setMoveKey( spep_0-3 + 74, 1, -421.7, -303.6 , 0 );
setMoveKey( spep_0-3 + 76, 1, -472.4, -349.8 , 0 );
setMoveKey( spep_0-3 + 78, 1, -472.4, -349.8 , 0 );

setScaleKey( spep_0 + 0, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 4, 1, 0.15, 0.15 );
setScaleKey( spep_0-3 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 10, 1, 0.16, 0.16 );
setScaleKey( spep_0-3 + 12, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 14, 1, 0.17, 0.17 );
setScaleKey( spep_0-3 + 16, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 18, 1, 0.18, 0.18 );
setScaleKey( spep_0-3 + 20, 1, 0.19, 0.19 );
setScaleKey( spep_0-3 + 22, 1, 0.2, 0.2 );
setScaleKey( spep_0-3 + 24, 1, 0.21, 0.21 );
setScaleKey( spep_0-3 + 26, 1, 0.22, 0.22 );
setScaleKey( spep_0-3 + 28, 1, 0.23, 0.23 );
setScaleKey( spep_0-3 + 30, 1, 0.24, 0.24 );
setScaleKey( spep_0-3 + 32, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 34, 1, 0.25, 0.25 );
setScaleKey( spep_0-3 + 36, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 38, 1, 0.28, 0.28 );
setScaleKey( spep_0-3 + 40, 1, 0.31, 0.31 );
setScaleKey( spep_0-3 + 42, 1, 0.33, 0.33 );
setScaleKey( spep_0-3 + 44, 1, 0.34, 0.34 );
setScaleKey( spep_0-3 + 46, 1, 0.36, 0.36 );
setScaleKey( spep_0-3 + 48, 1, 0.38, 0.38 );
setScaleKey( spep_0-3 + 50, 1, 0.4, 0.4 );
setScaleKey( spep_0-3 + 53, 1, 0.42, 0.42 );
setScaleKey( spep_0-3 + 54, 1, 0.44, 0.44 );
setScaleKey( spep_0-3 + 56, 1, 0.46, 0.46 );
setScaleKey( spep_0-3 + 58, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 60, 1, 0.49, 0.49 );
setScaleKey( spep_0-3 + 62, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 64, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 66, 1, 0.54, 0.54 );
setScaleKey( spep_0-3 + 68, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 70, 1, 0.57, 0.57 );
setScaleKey( spep_0-3 + 72, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 74, 1, 0.58, 0.58 );
setScaleKey( spep_0-3 + 76, 1, 0.62, 0.62 );
setScaleKey( spep_0-3 + 78, 1, 0.62, 0.62 );

setRotateKey( spep_0 + 0, 1, -0.2 );
setRotateKey( spep_0 + 1, 1, -0.2 );
setRotateKey( spep_0 + 2, 1, -0.2 );
setRotateKey( spep_0 + 3, 1, -0.2 );
setRotateKey( spep_0 + 4, 1, -0.2 );
setRotateKey( spep_0 + 5, 1, -0.2 );
setRotateKey( spep_0 + 6, 1, -0.2 );
setRotateKey( spep_0-3 + 54, 1, -0.2 );
setRotateKey( spep_0-3 + 56, 1, -1.3 );
setRotateKey( spep_0-3 + 58, 1, -2.4 );
setRotateKey( spep_0-3 + 60, 1, -3.5 );
setRotateKey( spep_0-3 + 62, 1, -4.6 );
setRotateKey( spep_0-3 + 64, 1, -5.7 );
setRotateKey( spep_0-3 + 66, 1, -6.8 );
setRotateKey( spep_0-3 + 68, 1, -7.9 );
setRotateKey( spep_0-3 + 70, 1, -9 );
setRotateKey( spep_0-3 + 72, 1, -10.1 );
setRotateKey( spep_0-3 + 74, 1, -10.1 );
setRotateKey( spep_0-3 + 76, 1, -12.6 );
setRotateKey( spep_0-3 + 78, 1, -12.6 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 670, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 35 );

--入り
SE002 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 60 );

--向かっていく
SE003 = playSeVer2( spep_0 + 40, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 40, 1314, "",spep_0 + 162, 0, 48, -1);
SE005 = playSeVer2( spep_0 + 52, 1277, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 658, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 108; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    
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
spep_x=spep_0 +566;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 105, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 105,  515);
setEffMoveKey(  spep_x +84,  ctgogo, 105,  515);

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

--敵の動き
setDisp( spep_0-3 + 128, 1, 1 );
setDisp( spep_0-1 + 154, 1, 0 );

changeAnime( spep_0-3 + 128, 1, 102 );

setMoveKey( spep_0-3 + 128, 1, 648.1, -447.2 , 0 );
setMoveKey( spep_0-3 + 130, 1, 648.1, -447.2 , 0 );
setMoveKey( spep_0-3 + 132, 1, 624.3, -423.1 , 0 );
setMoveKey( spep_0-3 + 134, 1, 594.7, -393 , 0 );
setMoveKey( spep_0-3 + 136, 1, 553.1, -350.9 , 0 );
setMoveKey( spep_0-3 + 138, 1, 499.7, -296.7 , 0 );
setMoveKey( spep_0-3 + 140, 1, 434.4, -230.5 , 0 );
setMoveKey( spep_0-3 + 142, 1, 357.3, -152.3 , 0 );
setMoveKey( spep_0-3 + 144, 1, 348.4, -132.7 , 0 );
setMoveKey( spep_0-3 + 146, 1, 340.5, -115.6 , 0 );
setMoveKey( spep_0-3 + 148, 1, 333.7, -100.7 , 0 );
setMoveKey( spep_0-3 + 150, 1, 328, -88.3 , 0 );
setMoveKey( spep_0-3 + 152, 1, 323.4, -78.2 , 0 );
setMoveKey( spep_0-1 + 154, 1, 319.9, -70.4 , 0 );

setScaleKey( spep_0-3 + 128, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 130, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 132, 1, 2.48, 2.48 );
setScaleKey( spep_0-3 + 134, 1, 2.5, 2.5 );
setScaleKey( spep_0-3 + 136, 1, 2.53, 2.53 );
setScaleKey( spep_0-3 + 138, 1, 2.56, 2.56 );
setScaleKey( spep_0-3 + 140, 1, 2.6, 2.6 );
setScaleKey( spep_0-3 + 142, 1, 2.65, 2.65 );
setScaleKey( spep_0-3 + 144, 1, 2.66, 2.66 );
setScaleKey( spep_0-3 + 146, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 148, 1, 2.67, 2.67 );
setScaleKey( spep_0-3 + 150, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 152, 1, 2.68, 2.68 );
setScaleKey( spep_0-1 + 154, 1, 2.69, 2.69 );

setRotateKey( spep_0-3 + 128, 1, -19.7 );
setRotateKey( spep_0-3 + 130, 1, -19.7 );
setRotateKey( spep_0-3 + 132, 1, -18.8 );
setRotateKey( spep_0-3 + 134, 1, -17.7 );
setRotateKey( spep_0-3 + 136, 1, -16 );
setRotateKey( spep_0-3 + 138, 1, -13.9 );
setRotateKey( spep_0-3 + 140, 1, -11.4 );
setRotateKey( spep_0-3 + 142, 1, -8.4 );
setRotateKey( spep_0-3 + 144, 1, -7.9 );
setRotateKey( spep_0-3 + 146, 1, -7.4 );
setRotateKey( spep_0-3 + 148, 1, -7 );
setRotateKey( spep_0-3 + 150, 1, -6.7 );
setRotateKey( spep_0-3 + 152, 1, -6.4 );
setRotateKey( spep_0-1 + 154, 1, -6.2 );

--敵の動き
setDisp( spep_0-3 + 252, 1, 1 );
setDisp( spep_0-1 + 434, 1, 0 );

changeAnime( spep_0-3 + 252, 1, 117 );
changeAnime( spep_0-3 + 264, 1, 108 );
changeAnime( spep_0-3 + 294, 1, 106 );
changeAnime( spep_0-3 + 310, 1, 108 );
changeAnime( spep_0-3 + 334, 1, 106 );
changeAnime( spep_0-3 + 376, 1, 105 );

setMoveKey( spep_0-3 + 252, 1, 1148.7, 77 , 0 );
setMoveKey( spep_0-3 + 253, 1, 1148.7, 77 , 0 );
setMoveKey( spep_0-3 + 254, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 255, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 256, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 257, 1, 960.8, 76.9 , 0 );
setMoveKey( spep_0-3 + 258, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 259, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 260, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 261, 1, 585, 76.8 , 0 );
setMoveKey( spep_0-3 + 262, 1, 209.2, 76.7 , 0 );
setMoveKey( spep_0-3 + 263, 1, 209.2, 76.7 , 0 );

setMoveKey( spep_0-3 + 264, 1, 91.4, 50.3 , 0 );
setMoveKey( spep_0-3 + 265, 1, 91.4, 50.3 , 0 );
setMoveKey( spep_0-3 + 266, 1, 129.6, 81.2 , 0 );
setMoveKey( spep_0-3 + 267, 1, 129.6, 81.2 , 0 );
setMoveKey( spep_0-3 + 268, 1, 177.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 269, 1, 177.4, 125.2 , 0 );
setMoveKey( spep_0-3 + 270, 1, 156.1, 97.6 , 0 );
setMoveKey( spep_0-3 + 271, 1, 156.1, 97.6 , 0 );
setMoveKey( spep_0-3 + 272, 1, 106.2, 87.4 , 0 );
setMoveKey( spep_0-3 + 273, 1, 106.2, 87.4 , 0 );
setMoveKey( spep_0-3 + 274, 1, 169.7, 128.1 , 0 );
setMoveKey( spep_0-3 + 275, 1, 169.7, 128.1 , 0 );
setMoveKey( spep_0-3 + 276, 1, 105.5, 72.6 , 0 );
setMoveKey( spep_0-3 + 277, 1, 105.5, 72.6 , 0 );
setMoveKey( spep_0-3 + 278, 1, 121.5, 73.2 , 0 );
setMoveKey( spep_0-3 + 279, 1, 121.5, 73.2 , 0 );
setMoveKey( spep_0-3 + 280, 1, 108.5, 90.4 , 0 );
setMoveKey( spep_0-3 + 281, 1, 108.5, 90.4 , 0 );
setMoveKey( spep_0-3 + 282, 1, 121.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 283, 1, 121.4, 92.6 , 0 );
setMoveKey( spep_0-3 + 284, 1, 107.1, 74.9 , 0 );
setMoveKey( spep_0-3 + 285, 1, 107.1, 74.9 , 0 );
setMoveKey( spep_0-3 + 286, 1, 123.1, 75.5 , 0 );
setMoveKey( spep_0-3 + 287, 1, 123.1, 75.5 , 0 );
setMoveKey( spep_0-3 + 288, 1, 109.6, 91.9 , 0 );
setMoveKey( spep_0-3 + 289, 1, 109.6, 91.9 , 0 );
setMoveKey( spep_0-3 + 290, 1, 112.2, 86.9 , 0 );
setMoveKey( spep_0-3 + 291, 1, 112.2, 86.9 , 0 );
setMoveKey( spep_0-3 + 292, 1, 114.9, 82.1 , 0 );
setMoveKey( spep_0-3 + 293, 1, 114.9, 82.1 , 0 );

setMoveKey( spep_0-3 + 294, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 295, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 296, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 297, 1, 134.9, 99.5 , 0 );
setMoveKey( spep_0-3 + 298, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 299, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 300, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 301, 1, 134.8, 82.9 , 0 );
setMoveKey( spep_0-3 + 302, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 303, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 304, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 305, 1, 134.8, 66.2 , 0 );
setMoveKey( spep_0-3 + 306, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 307, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 308, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 309, 1, 134.8, 49.6 , 0 );
setMoveKey( spep_0-3 + 309, 1, 134.8, 49.6 , 0 );

setMoveKey( spep_0-3 + 310, 1, 138.9, 16.2 , 0 );
setMoveKey( spep_0-3 + 311, 1, 138.9, 16.2 , 0 );
setMoveKey( spep_0-3 + 312, 1, 163.8, 30.5 , 0 );
setMoveKey( spep_0-3 + 313, 1, 163.8, 30.5 , 0 );
setMoveKey( spep_0-3 + 314, 1, 183.3, 34.1 , 0 );
setMoveKey( spep_0-3 + 315, 1, 183.3, 34.1 , 0 );
setMoveKey( spep_0-3 + 316, 1, 137, -1.5 , 0 );
setMoveKey( spep_0-3 + 317, 1, 137, -1.5 , 0 );
setMoveKey( spep_0-3 + 318, 1, 198.6, 4.9 , 0 );
setMoveKey( spep_0-3 + 319, 1, 198.6, 4.9 , 0 );
setMoveKey( spep_0-3 + 320, 1, 157.9, 33.4 , 0 );
setMoveKey( spep_0-3 + 321, 1, 157.9, 33.4 , 0 );
setMoveKey( spep_0-3 + 322, 1, 172.6, 11.3 , 0 );
setMoveKey( spep_0-3 + 323, 1, 172.6, 11.3 , 0 );
setMoveKey( spep_0-3 + 324, 1, 176.5, 22.9 , 0 );
setMoveKey( spep_0-3 + 325, 1, 176.5, 22.9 , 0 );
setMoveKey( spep_0-3 + 326, 1, 187, 35.7 , 0 );
setMoveKey( spep_0-3 + 327, 1, 187, 35.7 , 0 );
setMoveKey( spep_0-3 + 328, 1, 190.9, 22.2 , 0 );
setMoveKey( spep_0-3 + 329, 1, 190.9, 22.2 , 0 );
setMoveKey( spep_0-3 + 330, 1, 193, 22.6 , 0 );
setMoveKey( spep_0-3 + 331, 1, 193, 22.6 , 0 );
setMoveKey( spep_0-3 + 332, 1, 218, 40.5 , 0 );
setMoveKey( spep_0-3 + 333, 1, 218, 40.5 , 0 );

setMoveKey( spep_0-3 + 334, 1, 129.2, 6.2 , 0 );
setMoveKey( spep_0-3 + 335, 1, 129.2, 6.2 , 0 );
setMoveKey( spep_0-3 + 336, 1, 175.6, 9.8 , 0 );
setMoveKey( spep_0-3 + 337, 1, 175.6, 9.8 , 0 );
setMoveKey( spep_0-3 + 338, 1, 185.8, 58.4 , 0 );
setMoveKey( spep_0-3 + 339, 1, 185.8, 58.4 , 0 );
setMoveKey( spep_0-3 + 340, 1, 139.5, 22.7 , 0 );
setMoveKey( spep_0-3 + 341, 1, 139.5, 22.7 , 0 );
setMoveKey( spep_0-3 + 342, 1, 170.2, 58.9 , 0 );
setMoveKey( spep_0-3 + 343, 1, 170.2, 58.9 , 0 );
setMoveKey( spep_0-3 + 344, 1, 170.2, 57.6 , 0 );
setMoveKey( spep_0-3 + 345, 1, 170.2, 57.6 , 0 );
setMoveKey( spep_0-3 + 346, 1, 178.4, 69.5 , 0 );
setMoveKey( spep_0-3 + 347, 1, 178.4, 69.5 , 0 );
setMoveKey( spep_0-3 + 348, 1, 178.4, 68.2 , 0 );
setMoveKey( spep_0-3 + 349, 1, 178.4, 68.2 , 0 );
setMoveKey( spep_0-3 + 350, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 351, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 352, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 353, 1, 185.5, 79.5 , 0 );
setMoveKey( spep_0-3 + 354, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 355, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 356, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 357, 1, 191.5, 89.1 , 0 );
setMoveKey( spep_0-3 + 358, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 359, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 360, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 361, 1, 196.4, 96.9 , 0 );
setMoveKey( spep_0-3 + 362, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 363, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 364, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 365, 1, 200.3, 103 , 0 );
setMoveKey( spep_0-3 + 366, 1, 203, 107.4 , 0 );
setMoveKey( spep_0-3 + 367, 1, 203, 107.4 , 0 );
setMoveKey( spep_0-3 + 368, 1, 203.9, 108.9 , 0 );
setMoveKey( spep_0-3 + 369, 1, 203.9, 108.9 , 0 );
setMoveKey( spep_0-3 + 370, 1, 204.6, 110 , 0 );
setMoveKey( spep_0-3 + 371, 1, 204.6, 110 , 0 );
setMoveKey( spep_0-3 + 372, 1, 205, 110.6 , 0 );
setMoveKey( spep_0-3 + 373, 1, 205, 110.6 , 0 );
setMoveKey( spep_0-3 + 374, 1, 205.2, 110.8 , 0 );
setMoveKey( spep_0-3 + 375, 1, 205.2, 110.8 , 0 );

setMoveKey( spep_0-3 + 376, 1, -97.4, -86.5 , 0 );
setMoveKey( spep_0-3 + 377, 1, -97.4, -86.5 , 0 );
setMoveKey( spep_0-3 + 378, 1, -81.7, -40.8 , 0 );
setMoveKey( spep_0-3 + 379, 1, -81.7, -40.8 , 0 );
setMoveKey( spep_0-3 + 380, 1, -12.8, 50.1 , 0 );
setMoveKey( spep_0-3 + 381, 1, -12.8, 50.1 , 0 );
setMoveKey( spep_0-3 + 382, 1, -10.3, 116.7 , 0 );
setMoveKey( spep_0-3 + 383, 1, -10.3, 116.7 , 0 );
setMoveKey( spep_0-3 + 384, 1, 54.2, 149.7 , 0 );
setMoveKey( spep_0-3 + 385, 1, 54.2, 149.7 , 0 );
setMoveKey( spep_0-3 + 386, 1, 32, 151.8 , 0 );
setMoveKey( spep_0-3 + 387, 1, 32, 151.8 , 0 );
setMoveKey( spep_0-3 + 388, 1, 117.2, 287.6 , 0 );
setMoveKey( spep_0-3 + 389, 1, 117.2, 287.6 , 0 );
setMoveKey( spep_0-3 + 390, 1, 104.1, 285.8 , 0 );
setMoveKey( spep_0-3 + 391, 1, 104.1, 285.8 , 0 );
setMoveKey( spep_0-3 + 392, 1, 181.2, 398.6 , 0 );
setMoveKey( spep_0-3 + 393, 1, 181.2, 398.6 , 0 );
setMoveKey( spep_0-3 + 394, 1, 176.8, 397.7 , 0 );
setMoveKey( spep_0-3 + 395, 1, 176.8, 397.7 , 0 );
setMoveKey( spep_0-3 + 396, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 397, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 398, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 399, 1, 179.6, 406.8 , 0 );
setMoveKey( spep_0-3 + 400, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 401, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 402, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 403, 1, 182.2, 414.9 , 0 );
setMoveKey( spep_0-3 + 404, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 405, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 406, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 407, 1, 184.4, 422.1 , 0 );
setMoveKey( spep_0-3 + 408, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 409, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 410, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 411, 1, 186.4, 428.5 , 0 );
setMoveKey( spep_0-3 + 412, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 413, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 414, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 415, 1, 188, 433.9 , 0 );
setMoveKey( spep_0-3 + 416, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 417, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 418, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 419, 1, 189.4, 438.4 , 0 );
setMoveKey( spep_0-3 + 420, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 424, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 425, 1, 190.6, 442 , 0 );
setMoveKey( spep_0-3 + 426, 1, 191.7, 445.8 , 0 );
setMoveKey( spep_0-3 + 430, 1, 191.7, 445.8 , 0 );
setMoveKey( spep_0-1 + 434, 1, 192.2, 447.5 , 0 );

setScaleKey( spep_0-3 + 252, 1, 10.35, 10.35 );
setScaleKey( spep_0-3 + 263, 1, 10.35, 10.35 );

setScaleKey( spep_0-3 + 264, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 265, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 266, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 267, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 268, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 269, 1, 3.13, 3.13 );
setScaleKey( spep_0-3 + 270, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 271, 1, 2.46, 2.46 );
setScaleKey( spep_0-3 + 272, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 273, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 274, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 275, 1, 2.68, 2.68 );
setScaleKey( spep_0-3 + 276, 1, 1.79, 1.79 );
setScaleKey( spep_0-3 + 293, 1, 1.79, 1.79 );

setScaleKey( spep_0-3 + 294, 1, 2.94, 2.94 );
setScaleKey( spep_0-3 + 309, 1, 2.94, 2.94 );

setScaleKey( spep_0-3 + 310, 1, 3.5, 3.5 );
setScaleKey( spep_0-3 + 333, 1, 3.5, 3.5 );

setScaleKey( spep_0-3 + 334, 1, 2.97, 2.97 );
setScaleKey( spep_0-3 + 375, 1, 2.97, 2.97 );

setScaleKey( spep_0-3 + 376, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 377, 1, 5.99, 5.99 );
setScaleKey( spep_0-3 + 378, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 379, 1, 5.35, 5.35 );
setScaleKey( spep_0-3 + 380, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 381, 1, 4.7, 4.7 );
setScaleKey( spep_0-3 + 382, 1, 4.05, 4.05 );
setScaleKey( spep_0-3 + 383, 1, 4.05, 4.05 );
setScaleKey( spep_0-3 + 384, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 385, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 386, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 387, 1, 3.4, 3.4 );
setScaleKey( spep_0-3 + 388, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 390, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 391, 1, 2.1, 2.1 );
setScaleKey( spep_0-3 + 392, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 394, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 395, 1, 0.81, 0.81 );
setScaleKey( spep_0-3 + 396, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 398, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 399, 1, 0.74, 0.74 );
setScaleKey( spep_0-3 + 400, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 402, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 403, 1, 0.69, 0.69 );
setScaleKey( spep_0-3 + 404, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 406, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 407, 1, 0.64, 0.64 );
setScaleKey( spep_0-3 + 408, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 410, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 411, 1, 0.59, 0.59 );
setScaleKey( spep_0-3 + 412, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 414, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 415, 1, 0.55, 0.55 );
setScaleKey( spep_0-3 + 416, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 418, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 419, 1, 0.52, 0.52 );
setScaleKey( spep_0-3 + 420, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 424, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 425, 1, 0.5, 0.5 );
setScaleKey( spep_0-3 + 426, 1, 0.47, 0.47 );
setScaleKey( spep_0-3 + 430, 1, 0.47, 0.47 );
setScaleKey( spep_0-1 + 434, 1, 0.46, 0.46 );

setRotateKey( spep_0-3 + 252, 1, 0 );
setRotateKey( spep_0-3 + 263, 1, 0 );

setRotateKey( spep_0-3 + 264, 1, -37.3 );
setRotateKey( spep_0-3 + 293, 1, -37.3 );

setRotateKey( spep_0-3 + 294, 1, -50.6 );
setRotateKey( spep_0-3 + 296, 1, -50.6 );
setRotateKey( spep_0-3 + 297, 1, -50.6 );
setRotateKey( spep_0-3 + 298, 1, -49.2 );
setRotateKey( spep_0-3 + 300, 1, -49.2 );
setRotateKey( spep_0-3 + 301, 1, -49.2 );
setRotateKey( spep_0-3 + 302, 1, -47.7 );
setRotateKey( spep_0-3 + 304, 1, -47.7 );
setRotateKey( spep_0-3 + 305, 1, -47.7 );
setRotateKey( spep_0-3 + 306, 1, -46.3 );
setRotateKey( spep_0-3 + 309, 1, -46.3 );

setRotateKey( spep_0-3 + 310, 1, -17.9 );
setRotateKey( spep_0-3 + 333, 1, -17.9 );

setRotateKey( spep_0-3 + 334, 1, -39.9 );
setRotateKey( spep_0-3 + 336, 1, -39.9 );
setRotateKey( spep_0-3 + 337, 1, -39.9 );
setRotateKey( spep_0-3 + 338, 1, -39.3 );
setRotateKey( spep_0-3 + 340, 1, -39.3 );
setRotateKey( spep_0-3 + 341, 1, -39.3 );
setRotateKey( spep_0-3 + 342, 1, -38.8 );
setRotateKey( spep_0-3 + 344, 1, -38.8 );
setRotateKey( spep_0-3 + 345, 1, -38.8 );
setRotateKey( spep_0-3 + 346, 1, -38.3 );
setRotateKey( spep_0-3 + 348, 1, -38.3 );
setRotateKey( spep_0-3 + 349, 1, -38.3 );
setRotateKey( spep_0-3 + 350, 1, -37.9 );
setRotateKey( spep_0-3 + 352, 1, -37.9 );
setRotateKey( spep_0-3 + 353, 1, -37.9 );
setRotateKey( spep_0-3 + 354, 1, -37.6 );
setRotateKey( spep_0-3 + 356, 1, -37.6 );
setRotateKey( spep_0-3 + 357, 1, -37.6 );
setRotateKey( spep_0-3 + 358, 1, -37.3 );
setRotateKey( spep_0-3 + 360, 1, -37.3 );
setRotateKey( spep_0-3 + 361, 1, -37.3 );
setRotateKey( spep_0-3 + 362, 1, -37.1 );
setRotateKey( spep_0-3 + 364, 1, -37.1 );
setRotateKey( spep_0-3 + 365, 1, -37.1 );
setRotateKey( spep_0-3 + 366, 1, -36.9 );
setRotateKey( spep_0-3 + 368, 1, -36.9 );
setRotateKey( spep_0-3 + 369, 1, -36.9 );
setRotateKey( spep_0-3 + 370, 1, -36.8 );
setRotateKey( spep_0-3 + 375, 1, -36.8 );

setRotateKey( spep_0-3 + 376, 1, 16 );
setRotateKey( spep_0-1 + 434, 1, 16 );

--敵の動き
setDisp( spep_0-3 + 438, 1, 1 );
setDisp( spep_0-1 + 464, 1, 0 );

changeAnime( spep_0-3 + 438, 1, 106 );

setMoveKey( spep_0-3 + 438, 1, -617.3, 112.7 , 0 );
setMoveKey( spep_0-3 + 439, 1, -617.3, 112.7 , 0 );
setMoveKey( spep_0-3 + 440, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 441, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 442, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 443, 1, -478.9, 85.3 , 0 );
setMoveKey( spep_0-3 + 444, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 445, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 446, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 447, 1, -340.5, 57.8 , 0 );
setMoveKey( spep_0-3 + 448, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 449, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 450, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 451, 1, -145.3, -17.1 , 0 );
setMoveKey( spep_0-3 + 452, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 453, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 454, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 455, 1, -138.3, -19.8 , 0 );
setMoveKey( spep_0-3 + 456, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 457, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 458, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 459, 1, -131.4, -22.5 , 0 );
setMoveKey( spep_0-3 + 460, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 461, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 462, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-3 + 463, 1, -124.4, -25.2 , 0 );
setMoveKey( spep_0-1 + 464, 1, -117.5, -27.9 , 0 );

setScaleKey( spep_0-3 + 438, 1, 1.56, 1.56 );
setScaleKey( spep_0-1 + 464, 1, 1.56, 1.56 );

setRotateKey( spep_0-3 + 438, 1, 32 );
setRotateKey( spep_0-1 + 464, 1, 32 );

--敵の動き
setDisp( spep_0-3 + 504, 1, 1 );
setDisp( spep_0-1 + 566, 1, 0 );

changeAnime( spep_0-3 + 504, 1, 106 );

setMoveKey( spep_0-3 + 504, 1, -9.7, 7.2 , 0 );
setMoveKey( spep_0-3 + 505, 1, -9.7, 7.2 , 0 );
setMoveKey( spep_0-3 + 506, 1, -20.4, 19.6 , 0 );
setMoveKey( spep_0-3 + 507, 1, -20.4, 19.6 , 0 );
setMoveKey( spep_0-3 + 508, 1, -77.7, 105.9 , 0 );
setMoveKey( spep_0-3 + 509, 1, -77.7, 105.9 , 0 );
setMoveKey( spep_0-3 + 510, 1, -65.2, 81.6 , 0 );
setMoveKey( spep_0-3 + 511, 1, -65.2, 81.6 , 0 );
setMoveKey( spep_0-3 + 512, 1, -42.7, 69.4 , 0 );
setMoveKey( spep_0-3 + 513, 1, -42.7, 69.4 , 0 );
setMoveKey( spep_0-3 + 514, 1, -76.2, 102.6 , 0 );
setMoveKey( spep_0-3 + 515, 1, -76.2, 102.6 , 0 );
setMoveKey( spep_0-3 + 516, 1, -43.5, 63.9 , 0 );
setMoveKey( spep_0-3 + 517, 1, -43.5, 63.9 , 0 );
setMoveKey( spep_0-3 + 518, 1, -50.8, 63.1 , 0 );
setMoveKey( spep_0-3 + 517, 1, -50.8, 63.1 , 0 );
setMoveKey( spep_0-3 + 520, 1, -48.2, 74.4 , 0 );
setMoveKey( spep_0-3 + 521, 1, -48.2, 74.4 , 0 );
setMoveKey( spep_0-3 + 522, 1, -53.9, 75 , 0 );
setMoveKey( spep_0-3 + 523, 1, -53.9, 75 , 0 );
setMoveKey( spep_0-3 + 524, 1, -49, 69 , 0 );
setMoveKey( spep_0-3 + 525, 1, -49, 69 , 0 );
setMoveKey( spep_0-3 + 526, 1, -56.3, 68.2 , 0 );
setMoveKey( spep_0-3 + 527, 1, -56.3, 68.2 , 0 );
setMoveKey( spep_0-3 + 528, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 529, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 530, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 531, 1, -56.1, 71.8 , 0 );
setMoveKey( spep_0-3 + 532, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 534, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 535, 1, -58.8, 74.3 , 0 );
setMoveKey( spep_0-3 + 536, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 538, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 539, 1, -61.5, 76.8 , 0 );
setMoveKey( spep_0-3 + 540, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 542, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 543, 1, -64.2, 79.4 , 0 );
setMoveKey( spep_0-3 + 544, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 546, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 547, 1, -66.9, 81.9 , 0 );
setMoveKey( spep_0-3 + 548, 1, -69.6, 84.4 , 0 );
setMoveKey( spep_0-3 + 549, 1, -69.6, 84.4 , 0 );
setMoveKey( spep_0-3 + 550, 1, -71, 85.7 , 0 );
setMoveKey( spep_0-3 + 551, 1, -71, 85.7 , 0 );
setMoveKey( spep_0-3 + 552, 1, -72.3, 87 , 0 );
setMoveKey( spep_0-3 + 553, 1, -72.3, 87 , 0 );
setMoveKey( spep_0-3 + 554, 1, -73.7, 88.2 , 0 );
setMoveKey( spep_0-3 + 555, 1, -73.7, 88.2 , 0 );
setMoveKey( spep_0-3 + 556, 1, -75, 89.5 , 0 );
setMoveKey( spep_0-3 + 557, 1, -75, 89.5 , 0 );
setMoveKey( spep_0-3 + 558, 1, -76.4, 90.8 , 0 );
setMoveKey( spep_0-3 + 559, 1, -76.4, 90.8 , 0 );
setMoveKey( spep_0-3 + 560, 1, -77.7, 92 , 0 );
setMoveKey( spep_0-3 + 561, 1, -77.7, 92 , 0 );
setMoveKey( spep_0-3 + 562, 1, -79.1, 93.3 , 0 );
setMoveKey( spep_0-3 + 563, 1, -79.1, 93.3 , 0 );
setMoveKey( spep_0-3 + 564, 1, -80.5, 94.5 , 0 );
setMoveKey( spep_0-3 + 565, 1, -80.5, 94.5 , 0 );
setMoveKey( spep_0-1 + 566, 1, -81.8, 95.8 , 0 );

setScaleKey( spep_0-3 + 504, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 505, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 506, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 507, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 508, 1, 3.6, 3.6 );
setScaleKey( spep_0-3 + 509, 1, 3.6, 3.6 );
setScaleKey( spep_0-3 + 510, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 511, 1, 2.83, 2.83 );
setScaleKey( spep_0-3 + 512, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 513, 1, 2.06, 2.06 );
setScaleKey( spep_0-3 + 514, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 515, 1, 3.08, 3.08 );
setScaleKey( spep_0-3 + 516, 1, 2.06, 2.06 );
setScaleKey( spep_0-1 + 566, 1, 2.06, 2.06 );

setRotateKey( spep_0-3 + 504, 1, -45.4 );
setRotateKey( spep_0-3 + 506, 1, -45.4 );
setRotateKey( spep_0-3 + 507, 1, -45.4 );
setRotateKey( spep_0-3 + 508, 1, -51.9 );
setRotateKey( spep_0-3 + 514, 1, -51.9 );
setRotateKey( spep_0-3 + 515, 1, -51.9 );
setRotateKey( spep_0-3 + 516, 1, -52 );
setRotateKey( spep_0-3 + 526, 1, -52 );
setRotateKey( spep_0-3 + 527, 1, -52 );
setRotateKey( spep_0-3 + 528, 1, -52.1 );
setRotateKey( spep_0-3 + 538, 1, -52.1 );
setRotateKey( spep_0-3 + 539, 1, -52.1 );
setRotateKey( spep_0-3 + 540, 1, -52.2 );
setRotateKey( spep_0-3 + 548, 1, -52.2 );
setRotateKey( spep_0-3 + 539, 1, -52.1 );
setRotateKey( spep_0-3 + 550, 1, -52.3 );
setRotateKey( spep_0-3 + 560, 1, -52.3 );
setRotateKey( spep_0-3 + 561, 1, -52.3 );
setRotateKey( spep_0-3 + 562, 1, -52.4 );
setRotateKey( spep_0-1 + 566, 1, -52.4 );

--SE
--向かってきて振りかぶる
SE006 = playSeVer2( spep_0 + 118, 9, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 126, 1072, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 138, 1116, "",spep_0 + 184, 0, 22, -1);
SE009 = playSeVer2( spep_0 + 158, 1182, "", 0, 10, 0, -1);
setStartTimeMs( SE009,  100 );

--オーラ
SE010 = playSeVer2( spep_0 + 154, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 154, SE010, 63 );
setPitch( spep_0 + 154, SE010, -400 );
setTimeStretch( SE010, 0.73, 30, 4 );
SE011 = playSeVer2( spep_0 + 178, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 178, SE011, 63 );
setPitch( spep_0 + 178, SE011, -400 );
setTimeStretch( SE011, 0.73, 30, 4 );
SE012 = playSeVer2( spep_0 + 202, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 202, SE012, 63 );
setPitch( spep_0 + 202, SE012, -400 );
setTimeStretch( SE012, 0.73, 30, 4 );

--振りかぶる
SE013 = playSeVer2( spep_0 + 228, 1004, "", 0, 0, 0, -1);

--オーラ
SE014 = playSeVer2( spep_0 + 226, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 226, SE014, 63 );
setPitch( spep_0 + 226, SE014, -400 );
setTimeStretch( SE014, 0.73, 30, 4 );

--ボディブロー
SE015 = playSeVer2( spep_0 + 252, 1153, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 252, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE016, 75 );
SE017 = playSeVer2( spep_0 + 252, 1190, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 252, SE017, 82 );

--肘打ち
SE018 = playSeVer2( spep_0 + 308, 1110, "", 0, 0, 0, -1);
setPitch( spep_0 + 308, SE018, -300 );
setTimeStretch( SE018, 0.8, 30, 4 );
SE019 = playSeVer2( spep_0 + 308, 1010, "", 0, 0, 0, -1);

--裏拳
SE020 = playSeVer2( spep_0 + 332, 1110, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 332, 1169, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 332, SE021, 79 );

--パンチ
SE022 = playSeVer2( spep_0 + 374, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE023 = playSeVer2( spep_0 + 434, 1109, "", 0, 0, 0, -1);

--振りかぶる
SE024 = playSeVer2( spep_0 + 464, 1116, "",spep_0 + 508, 0, 22, -1);
SE025 = playSeVer2( spep_0 + 480, 1004, "", 0, 0, 0, -1);

--蹴り飛ばし
SE026 = playSeVer2( spep_0 + 500, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 500, 1359, "", 0, 0, 0, 0.6);

--回り込む
SE028 = playSeVer2( spep_0 + 540, 1003, "", 0, 0, 0, -1);

--顔カットイン
--SE029 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);


--白フェード
entryFade( spep_0 +650 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0 + 658;
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
--腕振り〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 354, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 354, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 354, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 354, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 354, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 354, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 354, finish_b, 255 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 344, 0, 0, 0, 0, 255 );  --黒 背景

--敵の動き
setDisp( spep_2-3 + 28, 1, 1 );
setDisp( spep_2-1 + 94, 1, 0 );

changeAnime( spep_2-3 + 28, 1, 106 );

setMoveKey( spep_2-3 + 28, 1, -51, -196 , 0 );
setMoveKey( spep_2-3 + 29, 1, -51, -196 , 0 );
setMoveKey( spep_2-3 + 30, 1, -42.9, -155.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, -42.9, -155.4 , 0 );
setMoveKey( spep_2-3 + 32, 1, -34.8, -114.8 , 0 );
setMoveKey( spep_2-3 + 33, 1, -34.8, -114.8 , 0 );
setMoveKey( spep_2-3 + 34, 1, -40.2, -110.9 , 0 );
setMoveKey( spep_2-3 + 35, 1, -40.2, -110.9 , 0 );
setMoveKey( spep_2-3 + 36, 1, -28.1, -118 , 0 );
setMoveKey( spep_2-3 + 37, 1, -28.1, -118 , 0 );
setMoveKey( spep_2-3 + 38, 1, -37.9, -120.2 , 0 );
setMoveKey( spep_2-1 + 94, 1, -34.7, -113.6 , 0 );

setScaleKey( spep_2-3 + 28, 1, 20.82, 20.82 );
setScaleKey( spep_2-3 + 29, 1, 20.82, 20.82 );
setScaleKey( spep_2-3 + 30, 1, 16.42, 16.42 );
setScaleKey( spep_2-3 + 31, 1, 16.42, 16.42 );
setScaleKey( spep_2-3 + 32, 1, 12.02, 12.02 );
setScaleKey( spep_2-3 + 33, 1, 12.02, 12.02 );
setScaleKey( spep_2-3 + 34, 1, 11.96, 11.96 );
setScaleKey( spep_2-3 + 35, 1, 11.96, 11.96 );
setScaleKey( spep_2-3 + 36, 1, 11.9, 11.9 );
setScaleKey( spep_2-1 + 94, 1, 11.9, 11.9 );

setRotateKey( spep_2-3 + 28, 1, -46 );
setRotateKey( spep_2-1 + 94, 1, -46 );

--敵の動き
setDisp( spep_2-3 + 168, 1, 1 );
setDisp( spep_2-1 + 178, 1, 0 );

changeAnime( spep_2-3 + 168, 1, 106 );

setMoveKey( spep_2-3 + 168, 1, 184.5, -47.9 , 0 );
setMoveKey( spep_2-3 + 169, 1, 184.5, -47.9 , 0 );
setMoveKey( spep_2-3 + 170, 1, 183.2, -47.6 , 0 );
setMoveKey( spep_2-3 + 171, 1, 183.2, -47.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 326.4, -98 , 0 );
setMoveKey( spep_2-3 + 173, 1, 326.4, -98 , 0 );
setMoveKey( spep_2-3 + 174, 1, 324.8, -97.6 , 0 );
setMoveKey( spep_2-3 + 175, 1, 324.8, -97.6 , 0 );
setMoveKey( spep_2-3 + 176, 1, 467.2, -147.8 , 0 );
setMoveKey( spep_2-3 + 177, 1, 467.2, -147.8 , 0 );
setMoveKey( spep_2-1 + 178, 1, 465.3, -147.3 , 0 );

setScaleKey( spep_2-3 + 168, 1, 0.35, 0.35 );
setScaleKey( spep_2-1 + 178, 1, 0.35, 0.35 );

setRotateKey( spep_2-3 + 168, 1, 28.1 );
setRotateKey( spep_2-1 + 178, 1, 28.1 );

--敵の動き
setDisp( spep_2-3 + 196, 1, 1 );
setDisp( spep_2-1 + 232, 1, 0 );

changeAnime( spep_2-3 + 196, 1, 105 );

setMoveKey( spep_2-3 + 196, 1, -294.3, -144.7 , 0 );
setMoveKey( spep_2-3 + 197, 1, -294.3, -144.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -306.8, -144.7 , 0 );
setMoveKey( spep_2-3 + 199, 1, -306.8, -144.7 , 0 );
setMoveKey( spep_2-3 + 200, 1, -181.8, -122.6 , 0 );
setMoveKey( spep_2-3 + 201, 1, -181.8, -122.6 , 0 );
setMoveKey( spep_2-3 + 202, 1, -194.4, -122.6 , 0 );
setMoveKey( spep_2-3 + 203, 1, -194.4, -122.6 , 0 );
setMoveKey( spep_2-3 + 204, 1, -58.1, -100.7 , 0 );
setMoveKey( spep_2-3 + 205, 1, -58.1, -100.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -59.4, -100.7 , 0 );
setMoveKey( spep_2-3 + 207, 1, -59.4, -100.7 , 0 );
setMoveKey( spep_2-3 + 208, 1, 11.1, -89.1 , 0 );
setMoveKey( spep_2-3 + 209, 1, 11.1, -89.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, 9.9, -89.1 , 0 );
setMoveKey( spep_2-3 + 211, 1, 9.9, -89.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 14.1, -87.9 , 0 );
setMoveKey( spep_2-3 + 213, 1, 14.1, -87.9 , 0 );
setMoveKey( spep_2-3 + 214, 1, 12.9, -87.9 , 0 );
setMoveKey( spep_2-3 + 215, 1, 12.9, -87.9 , 0 );
setMoveKey( spep_2-3 + 216, 1, 16.4, -87 , 0 );
setMoveKey( spep_2-3 + 217, 1, 16.4, -87 , 0 );
setMoveKey( spep_2-3 + 218, 1, 15.1, -87 , 0 );
setMoveKey( spep_2-3 + 219, 1, 15.1, -87 , 0 );
setMoveKey( spep_2-3 + 220, 1, 17.8, -86.1 , 0 );
setMoveKey( spep_2-3 + 221, 1, 17.8, -86.1 , 0 );
setMoveKey( spep_2-3 + 222, 1, 16.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 223, 1, 16.6, -86.1 , 0 );
setMoveKey( spep_2-3 + 224, 1, 18.5, -85.5 , 0 );
setMoveKey( spep_2-3 + 225, 1, 18.5, -85.5 , 0 );
setMoveKey( spep_2-3 + 226, 1, 17.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 227, 1, 17.2, -85.5 , 0 );
setMoveKey( spep_2-3 + 228, 1, 18.4, -85 , 0 );
setMoveKey( spep_2-3 + 229, 1, 18.4, -85 , 0 );
setMoveKey( spep_2-3 + 230, 1, 17.1, -85 , 0 );
setMoveKey( spep_2-3 + 231, 1, 17.1, -85 , 0 );
setMoveKey( spep_2-1 + 232, 1, 17.5, -84.6 , 0 );

setScaleKey( spep_2-3 + 198, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 199, 1, 2.56, 2.56 );
setScaleKey( spep_2-3 + 200, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 201, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 202, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 203, 1, 1.65, 1.65 );
setScaleKey( spep_2-3 + 204, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 205, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 206, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 207, 1, 0.75, 0.75 );
setScaleKey( spep_2-3 + 208, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 210, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 211, 1, 0.27, 0.27 );
setScaleKey( spep_2-3 + 212, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 214, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 215, 1, 0.22, 0.22 );
setScaleKey( spep_2-3 + 216, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 218, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 219, 1, 0.19, 0.19 );
setScaleKey( spep_2-3 + 220, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 222, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 223, 1, 0.15, 0.15 );
setScaleKey( spep_2-3 + 224, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 226, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 227, 1, 0.13, 0.13 );
setScaleKey( spep_2-3 + 228, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 230, 1, 0.11, 0.11 );
setScaleKey( spep_2-3 + 231, 1, 0.11, 0.11 );
setScaleKey( spep_2-1 + 232, 1, 0.09, 0.09 );

setRotateKey( spep_2-3 + 196, 1, 44.9 );
setRotateKey( spep_2-3 + 202, 1, 44.9 );
setRotateKey( spep_2-3 + 203, 1, 44.9 );
setRotateKey( spep_2-3 + 204, 1, 45 );
setRotateKey( spep_2-1 + 232, 1, 45 );

--SE
--気弾溜め
SE030 = playSeVer2( spep_2 + 26, 1204, "",spep_2 + 100, 18, 20, 0.6);
setSeVolumeByWorkId( spep_2 + 26, SE030, 178 );
setStartTimeMs( SE030,  2333 );
SE032 = playSeVer2( spep_2 + 16, 1266, "",spep_2 + 110, 18, 26, 0.6);
setStartTimeMs( SE032,  1900 );

--気弾発射
SE033 = playSeVer2( spep_2 + 94, 1212, "", 0, 18, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 94, SE033, 71 );
setStartTimeMs( SE033,  1533 );

--手をかざす
SE034 = playSeVer2( spep_2 + 10, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 16, 1312, "",spep_2 + 54, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 16, SE035, 80 );
SE036 = playSeVer2( spep_2 + 16, 1281, "",spep_2 + 116, 0, 18, 0.6);
setSeVolumeByWorkId( spep_2 + 16, SE036, 82 );
SE037 = playSeVer2( spep_2 + 16, 1006, "", 0, 0, 0, -1);

--気弾溜め
SE038 = playSeVer2( spep_2 + 50, 1145, "",spep_2 + 118, 14, 22, -1);
setStartTimeMs( SE038,  433 );

--気弾発射
SE039 = playSeVer2( spep_2 + 94, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE039, 72 );
SE040 = playSeVer2( spep_2 + 94, 1146, "",spep_2 + 192, 0, 62, -1);
setSeVolumeByWorkId( spep_2 + 94, SE040, 84 );
SE041 = playSeVer2( spep_2 + 96, 1357, "",spep_2 + 148, 0, 30, -1);
setSeVolumeByWorkId( spep_2 + 96, SE041, 87 );

--敵吹き飛ぶ
SE042 = playSeVer2( spep_2 + 156, 1027, "", 0, 0, 0, -1);

--敵飛んでいく
SE043 = playSeVer2( spep_2 + 166, 1121, "",spep_2 + 250, 0, 18, -1);

--壁激突
SE044 = playSeVer2( spep_2 + 232, 1159, "", 0, 0, 0, -1);
SE045 = playSeVer2( spep_2 + 232, 1188, "", 0, 0, 0, -1);

--岩崩れる
SE046 = playSeVer2( spep_2 + 240, 1168, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 240, SE046, 91 );

--終わり
dealDamage(spep_2 +234);
endPhase( spep_2 + 344 );
end