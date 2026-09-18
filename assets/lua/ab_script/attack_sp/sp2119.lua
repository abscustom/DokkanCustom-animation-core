--1021290:ジャネンバ_イリュージョンスマッシュ
--sp_effect_b1_00137
--sp2119

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
SP_01= 156562;-- キャラ登場
SP_02= 156563;-- 横に向いて殴る
SP_03= 156564;-- 横に向いて殴る
SP_04= 156566;-- 横に向いて殴る
SP_05= 156569;-- 追撃のパンチ
SP_06= 156568;-- 追撃のパンチ
SP_07= 156573;-- 連打
SP_08= 156571;-- 連打
SP_09= 156575;-- フィニッシュ

--エフェクト(敵)
SP_01x= 156562;-- キャラ登場
SP_02x= 156563;-- 横に向いて殴る
SP_03x= 156564;-- 横に向いて殴る
SP_04x= 156567;-- 横に向いて殴る(敵)
SP_05x= 156570;-- 追撃のパンチ(敵)
SP_06x= 156568;-- 追撃のパンチ
SP_07x= 156574;-- 連打(敵)
SP_08x= 156571;-- 連打
SP_09x= 156575;-- フィニッシュ
------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.8);


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

--[[
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
]]--
kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 96, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 94, appearance, 255 );
setEffAlphaKey( spep_0 + 95, appearance, 255 );
setEffAlphaKey( spep_0 + 96, appearance, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 50, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 1, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 2, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 3, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 4, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 5, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 6, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0-3 + 12, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 232, 145.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 274.2, 160.9 , 0 );
setMoveKey( spep_0-3 + 18, 1, 313.9, 175.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 351.3, 189.8 , 0 );
setMoveKey( spep_0-3 + 22, 1, 386.2, 202.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 418.8, 215.1 , 0 );
setMoveKey( spep_0-3 + 26, 1, 448.9, 226.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 476.6, 236.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 501.9, 246.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 524.8, 254.8 , 0 );
setMoveKey( spep_0-3 + 34, 1, 545.2, 262.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 563.3, 269.3 , 0 );
setMoveKey( spep_0-3 + 38, 1, 579, 275.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 592.2, 280.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, 603.1, 284.2 , 0 );
setMoveKey( spep_0-3 + 44, 1, 611.5, 287.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, 617.5, 289.6 , 0 );
setMoveKey( spep_0-3 + 48, 1, 621.1, 290.9 , 0 );
setMoveKey( spep_0-3 + 50, 1, 622.4, 291.4 , 0 );

setScaleKey( spep_0 + 0,1,1.4,1.4);
setScaleKey( spep_0 + 1,1,1.4,1.4);
setScaleKey( spep_0 + 2,1,1.4,1.4);
setScaleKey( spep_0 + 3,1,1.4,1.4);
setScaleKey( spep_0 + 4,1,1.4,1.4);
setScaleKey( spep_0 + 5,1,1.4,1.4);
setScaleKey( spep_0 + 6,1,1.4,1.4);
setScaleKey( spep_0-3 + 12,1,1.4,1.4);
setScaleKey( spep_0-3 + 14,1,1.4,1.4);
setScaleKey( spep_0-3 + 16,1,1.39,1.39);
setScaleKey( spep_0-3 + 18,1,1.38,1.38);
setScaleKey( spep_0-3 + 20,1,1.36,1.36);
setScaleKey( spep_0-3 + 22,1,1.34,1.34);
setScaleKey( spep_0-3 + 24,1,1.31,1.31);
setScaleKey( spep_0-3 + 26,1,1.29,1.29);
setScaleKey( spep_0-3 + 28,1,1.26,1.26);
setScaleKey( spep_0-3 + 30,1,1.22,1.22);
setScaleKey( spep_0-3 + 32,1,1.19,1.19);
setScaleKey( spep_0-3 + 34,1,1.15,1.15);
setScaleKey( spep_0-3 + 36,1,1.1,1.1);
setScaleKey( spep_0-3 + 38,1,1.06,1.06);
setScaleKey( spep_0-3 + 40,1,1.01,1.01);
setScaleKey( spep_0-3 + 42,1,0.95,0.95);
setScaleKey( spep_0-3 + 44,1,0.89,0.89);
setScaleKey( spep_0-3 + 46,1,0.83,0.83);
setScaleKey( spep_0-3 + 48,1,0.76,0.76);
setScaleKey( spep_0-3 + 50,1,0.76,0.76);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 50, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+96;
------------------------------------------------------
-- 横に向いて殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 112, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 110, panting_f, 255 );
setEffAlphaKey( spep_1 + 111, panting_f, 255 );
setEffAlphaKey( spep_1 + 112, panting_f, 0 );

-- ** エフェクト等 ** --
ctpanting = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctpanting, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, ctpanting, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ctpanting, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, ctpanting, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctpanting, 0 );
setEffRotateKey( spep_1 + 112, ctpanting, 0 );
setEffAlphaKey( spep_1 + 0, ctpanting, 255 );
setEffAlphaKey( spep_1 + 110, ctpanting, 255 );
setEffAlphaKey( spep_1 + 111, ctpanting, 255 );
setEffAlphaKey( spep_1 + 112, ctpanting, 0 );


-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 112, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 110, panting_b, 255 );
setEffAlphaKey( spep_1 + 111, panting_b, 255 );
setEffAlphaKey( spep_1 + 112, panting_b, 0 );

--SE
--腕振りかぶる
SE003 = playSe( spep_1 + 6, 1116 );	
setPitch( spep_1 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );


    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
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
setDisp( spep_1-3 + 56, 1, 1 );
setDisp( spep_1-3 + 107, 1, 0 );

changeAnime( spep_1-3 + 56, 1, 117 );
changeAnime( spep_1-3 + 100, 1, 106 );
changeAnime( spep_1-3 + 104, 1, 108 );

setMoveKey( spep_1-3 + 56, 1, 39, -19.5 , 0 );
setMoveKey( spep_1-3 + 99, 1, 39, -19.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 156, -19.5 , 0 );
setMoveKey( spep_1-3 + 103, 1, 156, -19.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 186, -19.5 , 0 );
setMoveKey( spep_1-3 + 105, 1, 186, -19.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 400.5, -19.5 , 0 );
setMoveKey( spep_1-3 + 107, 1, 400.5, -19.5 , 0 );

setScaleKey( spep_1-3 + 56, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 99, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 100, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 103, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 104, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 107, 1, 1.73, 1.73 );

setRotateKey( spep_1-3 + 56, 1, 0 );
setRotateKey( spep_1-3 + 99, 1, 0 );
setRotateKey( spep_1-3 + 100, 1, -50 );
setRotateKey( spep_1-3 + 103, 1, -50 );
setRotateKey( spep_1-3 + 104, 1, 0 );
setRotateKey( spep_1-3 + 107, 1, 0 );

--SE
--腕振りかぶる
stopSe( spep_1 + 24, SE003, 18 );

--手がワープする
SE004 = playSe( spep_1 + 38, 1291 ,"",0.6);
SE005 = playSe( spep_1 + 64, 1291 ,"",0.6);

--パンチ
SE006 = playSe( spep_1 + 94, 1003 );
SE007 = playSe( spep_1 + 98, 1010 );
SE008 = playSe( spep_1 + 98, 1187 );
setSeVolumeByWorkId( spep_1 + 98, SE008, 78 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 114, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 + 98, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+112;
------------------------------------------------------
-- 追撃のパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_2 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, pursuit_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_f, 0 );
setEffRotateKey( spep_2 + 160, pursuit_f, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 158, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 159, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 160, pursuit_f, 0 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_2 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_b, 0 );
setEffRotateKey( spep_2 + 160, pursuit_b, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 158, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 159, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 160, pursuit_b, 0 );

--敵の動き
setDisp( spep_2-3 + 118, 1, 1 );
setDisp( spep_2-1 + 160, 1, 0 );

changeAnime( spep_2-3 + 118, 1, 105 );
changeAnime( spep_2-3 + 146, 1, 106 );

setMoveKey( spep_2-3 + 118, 1, -433.3, -444.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, -433.3, -444.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, -337.9, -417.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, -337.9, -417.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -290.7, -378 , 0 );
setMoveKey( spep_2-3 + 130, 1, -290.7, -378 , 0 );
setMoveKey( spep_2-3 + 132, 1, -11.5, -67.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, -11.5, -67.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 50.1, -32.7 , 0 );
setMoveKey( spep_2-3 + 140, 1, 50.1, -32.7 , 0 );
setMoveKey( spep_2-3 + 142, 1, 83.4, -9.9 , 0 );
setMoveKey( spep_2-3 + 145, 1, 83.4, -9.9 , 0 );
a=20;

setMoveKey( spep_2-3 + 146, 1, 54.3-a, -11 , 0 );
setMoveKey( spep_2-3 + 150, 1, 54.3-a, -11 , 0 );
setMoveKey( spep_2-3 + 152, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 156, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 157, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 158, 1, -15.8-a, -17.6 , 0 );
setMoveKey( spep_2-3 + 159, 1, -15.8-a, -17.6 , 0 );
setMoveKey( spep_2-3 + 160, 1, -337.3-a, -492.2 , 0 );
setMoveKey( spep_2-1 + 160, 1, -337.3-a, -492.2 , 0 );

setScaleKey( spep_2-3 + 118, 1, 14.12, 14.12 );
setScaleKey( spep_2-3 + 120, 1, 14.12, 14.12 );
setScaleKey( spep_2-3 + 122, 1, 13.49, 13.49 );
setScaleKey( spep_2-3 + 126, 1, 13.49, 13.49 );
setScaleKey( spep_2-3 + 128, 1, 12.55, 12.55 );
setScaleKey( spep_2-3 + 130, 1, 12.55, 12.55 );
setScaleKey( spep_2-3 + 132, 1, 3.14, 3.14 );
setScaleKey( spep_2-3 + 136, 1, 3.14, 3.14 );
setScaleKey( spep_2-3 + 138, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 140, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 142, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 145, 1, 1.88, 1.88 );

setScaleKey( spep_2-3 + 146, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 150, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 156, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 158, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 159, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 160, 1, 14.12, 14.12 );
setScaleKey( spep_2-1 + 160, 1, 14.12, 14.12 );

setRotateKey( spep_2-3 + 118, 1, 11 );
setRotateKey( spep_2-3 + 145, 1, 11 );

setRotateKey( spep_2-3 + 146, 1, -50 );
setRotateKey( spep_2-1 + 160, 1, -50 );

--SE
--足踏み
SE009 = playSe( spep_2 + 42, 1111 );
setSeVolumeByWorkId( spep_2 + 42, SE009, 158 );
stopSe( spep_2 + 58, SE009, 0 );
SE010 = playSe( spep_2 + 44, 1112 );
setSeVolumeByWorkId( spep_2 + 44, SE010, 68 );
setPitch( spep_2 + 44, SE010, -800 );
setTimeStretch( SE010, 0.47, 10, 1 );
stopSe( spep_2 + 60, SE010, 24 );
SE011 = playSe( spep_2 + 44, 1153 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 37 );
stopSe( spep_2 + 66, SE011, 18 );

--手がワープする
SE012 = playSe( spep_2 + 82, 1291 ,"",0.6);
SE013 = playSe( spep_2 + 130, 1291 ,"",0.6);

--正面パンチ
SE014 = playSe( spep_2 + 146, 1010 );
setSeVolumeByWorkId( spep_2 + 146, SE014, 87 );
SE015 = playSe( spep_2 + 146, 1187 );
setSeVolumeByWorkId( spep_2 + 146, SE015, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 162, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+160;
------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 180, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 180, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 180, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 168, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 40, 1, 8 );
changeAnime( spep_3-3 + 86, 1, 6 );
changeAnime( spep_3-3 + 98, 1, 108 );
changeAnime( spep_3-3 + 152, 1, 8 );

setMoveKey( spep_3 + 0, 1, -619.3, -73.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -554.9, -73.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -490.5, -73.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, -426.1, -73.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, -361.7, -73.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, -297.3, -73.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, -233, -73.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, -168.6, -73.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, -104.2, -73.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, -39.8, -73.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 24.6, -73.4 , 0 );
setMoveKey( spep_3-3 + 22, 1, 89, -73.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153.4, -73.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 217.7, -73.4 , 0 );
setMoveKey( spep_3-3 + 27, 1, 217.7, -73.4 , 0 );

c=50;

setMoveKey( spep_3-3 + 28, 1, 217.6-c, -51.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 207.9-c, -51.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 194.2-c, -51.9 , 0 );
--setMoveKey( spep_3-3 + 34, 1, 188.4-c, -51.9 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 184.5-c, -38.2 , 0 );
setMoveKey( spep_3-3 + 39, 1, 184.5-c, -51.9 , 0 );

setMoveKey( spep_3-3 + 40, 1, 184.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 184.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 179, -70.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 167.3, -70.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 124.7, -70.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 85.7, -70.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 50.4, -70.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 18.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, -9, -70.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, -33.1, -70.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, -53.5, -70.3 , 0 );
--setMoveKey( spep_3-3 + 62, 1, -70.2, -70.3 , 0 );
--setMoveKey( spep_3-3 + 64, 1, -83.2, -70.3 , 0 );
--setMoveKey( spep_3-3 + 66, 1, -92.5, -70.3 , 0 );
--setMoveKey( spep_3-3 + 68, 1, -98, -70.3 , 0 );
--setMoveKey( spep_3-3 + 70, 1, -99.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 85, 1, -169.9, -70.3 , 0 );

setMoveKey( spep_3-3 + 86, 1, -168.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, -168.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, -163.9, -50.7 , 0 );

setMoveKey( spep_3-3 + 98, 1, -159.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, -159.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, -78.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, -78.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, -12, -50.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, -12, -50.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 42.5, -50.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 42.5, -50.6 , 0 );
setMoveKey( spep_3-3 + 120, 1, 112.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 124, 1, 112.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 126, 1, 151.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, 151.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 132, 1, 198.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 136, 1, 198.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, 237.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 142, 1, 237.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 144, 1, 275.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 151, 1, 275.9, -50.6 , 0 );

setMoveKey( spep_3-3 + 152, 1, 236.9, 205.5 , 0 );
setMoveKey( spep_3-3 + 154, 1, 236.9, 205.5 , 0 );
setMoveKey( spep_3-3 + 156, 1, 236.9, 225.5 , 0 );
setMoveKey( spep_3-3 + 158, 1, 236.9, 303.1 , 0 );
setMoveKey( spep_3-3 + 160, 1, 236.9, 380.7 , 0 );
setMoveKey( spep_3-3 + 162, 1, 236.9, 458.3 , 0 );
setMoveKey( spep_3-3 + 164, 1, 236.9, 535.8 , 0 );
setMoveKey( spep_3-3 + 166, 1, 236.9, 613.4 , 0 );
setMoveKey( spep_3-3 + 168, 1, 236.9, 691 , 0 );

setScaleKey( spep_3 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 39, 1, 0.9, 0.9 );

setScaleKey( spep_3-3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 85, 1, 1.06, 1.06 );

setScaleKey( spep_3-3 + 86, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 97, 1, 0.9, 0.9 );

setScaleKey( spep_3-3 + 98, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 168, 1, 1.06, 1.06 );

setRotateKey( spep_3 + 0, 1, 32.2 );
setRotateKey( spep_3-3 + 27, 1, 32.2 );

setRotateKey( spep_3-3 + 28, 1, -60 );
setRotateKey( spep_3-3 + 39, 1, -60 );

setRotateKey( spep_3-3 + 40, 1, 0 );
setRotateKey( spep_3-3 + 43, 1, 0 );
setRotateKey( spep_3-3 + 44, 1, -10 );
setRotateKey( spep_3-3 + 53, 1, -10 );
setRotateKey( spep_3-3 + 54, 1, -20 );
--setRotateKey( spep_3-3 + 59, 1, -20 );
setRotateKey( spep_3-3 + 60, 1, -50 );
setRotateKey( spep_3-3 + 85, 1, -50 );
setRotateKey( spep_3-3 + 86, 1, 60 );
setRotateKey( spep_3-3 + 97, 1, 60 );
setRotateKey( spep_3-3 + 98, 1, 10 );
setRotateKey( spep_3-3 + 101, 1, 10 );
setRotateKey( spep_3-3 + 102, 1, 20 );
setRotateKey( spep_3-3 + 110, 1, 50 );
setRotateKey( spep_3-3 + 151, 1, 50 );

setRotateKey( spep_3-3 + 152, 1, 72.2 );
setRotateKey( spep_3-3 + 168, 1, 72.2 );

--SE
--手がワープする
SE016 = playSe( spep_3 + 24, 1291 ,"",0.6);
SE020 = playSe( spep_3 + 80, 1291 ,"",0.6);

--サイドパンチ１
SE017 = playSe( spep_3 + 32, 1009 );
SE018 = playSe( spep_3 + 34, 1110 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 83 );
SE019 = playSe( spep_3 + 34, 1060 );
setSeVolumeByWorkId( spep_3 + 34, SE019, 74 );
stopSe( spep_3 + 58, SE019, 20 );

--サイドパンチ２
SE021 = playSe( spep_3 + 88, 1009 );
SE022 = playSe( spep_3 + 88, 1110 );
setSeVolumeByWorkId( spep_3 + 88, SE022, 81 );
SE023 = playSe( spep_3 + 88, 1060 );
setSeVolumeByWorkId( spep_3 + 88, SE023, 81 );
stopSe( spep_3 + 112, SE023, 20 );

--足がワープする
SE024 = playSe( spep_3 + 144, 1291 ,"",0.6);

--蹴り上げ
SE025 = playSe( spep_3 + 150, 1060 );
setSeVolumeByWorkId( spep_3 + 150, SE025, 79 );
stopSe( spep_3 + 174, SE025, 20 );
SE026 = playSe( spep_3 + 150, 1190 );
SE027 = playSe( spep_3 + 152, 1169 );
setSeVolumeByWorkId( spep_3 + 152, SE027, 79 );
SE028 = playSe( spep_3 + 152, 1010 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3 + 172, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+180;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_4, SE_05);
    speff = entryEffect( spep_4, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_4 + 0, SE_05 );

--足がワープする
stopSe( spep_4 + 8, SE024, 12 );

--蹴り上げ
stopSe( spep_4 + 2, SE026, 8 );
stopSe( spep_4 + 2, SE027, 8 );
stopSe( spep_4 + 0, SE028, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 192, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_5 + 192, finish, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 192, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 192, finish, 255 );

--敵の動き
setDisp( spep_5-3 + 104, 1, 1 );

changeAnime( spep_5-3 + 104, 1, 105 );

setMoveKey( spep_5-3 + 104, 1, 0.1, 0.1 , 0 );
setMoveKey( spep_5-3 + 106, 1, -0.7, -3 , 0 );
setMoveKey( spep_5-3 + 108, 1, -1.5, -5.4 , 0 );
setMoveKey( spep_5-3 + 110, 1, -2.1, -6.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, -2.4, -7.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, 0.2, 1.2 , 0 );
setMoveKey( spep_5-3 + 116, 1, 22.1, 15.9 , 0 );
setMoveKey( spep_5-3 + 118, 1, 39.2, 27.4 , 0 );
setMoveKey( spep_5-3 + 120, 1, 51.4, 35.6 , 0 );
setMoveKey( spep_5-3 + 122, 1, 58.8, 40.5 , 0 );
setMoveKey( spep_5-3 + 124, 1, 61.2, 42.2 , 0 );
setMoveKey( spep_5-3 + 126, 1, 20.8, 38 , 0 );
setMoveKey( spep_5-3 + 128, 1, 2.5, 24.5 , 0 );
setMoveKey( spep_5-3 + 130, 1, -11.2, 15.5 , 0 );
setMoveKey( spep_5-3 + 132, 1, -19.7, 10.3 , 0 );
setMoveKey( spep_5-3 + 134, 1, -22.6, 8.6 , 0 );
setMoveKey( spep_5-3 + 136, 1, -14.4, 12.5 , 0 );
setMoveKey( spep_5-3 + 138, 1, -13.4, 11.9 , 0 );
setMoveKey( spep_5-3 + 140, 1, -12.4, 11.3 , 0 );
setMoveKey( spep_5-3 + 142, 1, -11.5, 10.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, -10.6, 10.3 , 0 );
setMoveKey( spep_5-3 + 146, 1, -9.7, 9.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, -8.9, 9.3 , 0 );
setMoveKey( spep_5-3 + 150, 1, -8.1, 8.9 , 0 );
setMoveKey( spep_5-3 + 152, 1, -7.4, 8.5 , 0 );
setMoveKey( spep_5-3 + 154, 1, -6.6, 8.1 , 0 );
setMoveKey( spep_5-3 + 156, 1, -6, 7.7 , 0 );
setMoveKey( spep_5-3 + 158, 1, -5.4, 7.4 , 0 );
setMoveKey( spep_5-3 + 160, 1, -4.8, 7 , 0 );
setMoveKey( spep_5-3 + 162, 1, -4.2, 6.7 , 0 );
setMoveKey( spep_5-3 + 164, 1, -3.7, 6.5 , 0 );
setMoveKey( spep_5-3 + 166, 1, -3.3, 6.2 , 0 );
setMoveKey( spep_5-3 + 168, 1, -2.9, 6 , 0 );
setMoveKey( spep_5-3 + 170, 1, -2.5, 5.7 , 0 );
setMoveKey( spep_5-3 + 172, 1, -2.1, 5.5 , 0 );
setMoveKey( spep_5-3 + 174, 1, -1.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 176, 1, -1.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 178, 1, -1.4, 5.1 , 0 );
setMoveKey( spep_5-3 + 180, 1, -1.2, 5 , 0 );
setMoveKey( spep_5-3 + 182, 1, -1, 4.9 , 0 );
setMoveKey( spep_5-3 + 184, 1, -0.9, 4.9 , 0 );
setMoveKey( spep_5-3 + 186, 1, -0.9, 4.8 , 0 );
setMoveKey( spep_5-3 + 188, 1, -0.4, 5 , 0 );

setScaleKey( spep_5-3 + 104, 1, 9.41, 9.41 );
setScaleKey( spep_5-3 + 106, 1, 5.98, 5.98 );
setScaleKey( spep_5-3 + 108, 1, 3.53, 3.53 );
setScaleKey( spep_5-3 + 110, 1, 2.06, 2.06 );
setScaleKey( spep_5-3 + 112, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 114, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 118, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 120, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 122, 1, 0.96, 0.96 );
setScaleKey( spep_5-3 + 124, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 126, 1, 0.75, 0.75 );
setScaleKey( spep_5-3 + 128, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_5-3 + 132, 1, 0.34, 0.34 );
setScaleKey( spep_5-3 + 134, 1, 0.31, 0.31 );
setScaleKey( spep_5-3 + 136, 1, 0.3, 0.3 );
setScaleKey( spep_5-3 + 138, 1, 0.28, 0.28 );
setScaleKey( spep_5-3 + 140, 1, 0.26, 0.26 );
setScaleKey( spep_5-3 + 142, 1, 0.24, 0.24 );
setScaleKey( spep_5-3 + 144, 1, 0.23, 0.23 );
setScaleKey( spep_5-3 + 146, 1, 0.21, 0.21 );
setScaleKey( spep_5-3 + 148, 1, 0.2, 0.2 );
setScaleKey( spep_5-3 + 150, 1, 0.19, 0.19 );
setScaleKey( spep_5-3 + 152, 1, 0.17, 0.17 );
setScaleKey( spep_5-3 + 154, 1, 0.16, 0.16 );
setScaleKey( spep_5-3 + 156, 1, 0.15, 0.15 );
setScaleKey( spep_5-3 + 158, 1, 0.14, 0.14 );
setScaleKey( spep_5-3 + 160, 1, 0.13, 0.13 );
setScaleKey( spep_5-3 + 162, 1, 0.12, 0.12 );
setScaleKey( spep_5-3 + 164, 1, 0.11, 0.11 );
setScaleKey( spep_5-3 + 166, 1, 0.1, 0.1 );
setScaleKey( spep_5-3 + 168, 1, 0.1, 0.1 );
setScaleKey( spep_5-3 + 170, 1, 0.09, 0.09 );
setScaleKey( spep_5-3 + 172, 1, 0.08, 0.08 );
setScaleKey( spep_5-3 + 176, 1, 0.08, 0.08 );
setScaleKey( spep_5-3 + 178, 1, 0.07, 0.07 );
setScaleKey( spep_5-3 + 182, 1, 0.07, 0.07 );
setScaleKey( spep_5-3 + 184, 1, 0.06, 0.06 );
setScaleKey( spep_5-3 + 188, 1, 0.06, 0.06 );

setRotateKey( spep_5-3 + 104, 1, -9.8 );
setRotateKey( spep_5-3 + 106, 1, 0.7 );
setRotateKey( spep_5-3 + 108, 1, 8.3 );
setRotateKey( spep_5-3 + 110, 1, 12.8 );
setRotateKey( spep_5-3 + 112, 1, 14.3 );
setRotateKey( spep_5-3 + 114, 1, 30.3 );
setRotateKey( spep_5-3 + 116, 1, 30.1 );
setRotateKey( spep_5-3 + 118, 1, 30 );
setRotateKey( spep_5-3 + 120, 1, 29.9 );
setRotateKey( spep_5-3 + 122, 1, 29.8 );
setRotateKey( spep_5-3 + 124, 1, 29.8 );
setRotateKey( spep_5-3 + 126, 1, -80 );
setRotateKey( spep_5-3 + 128, 1, -80.1 );
setRotateKey( spep_5-3 + 130, 1, -80.2 );
setRotateKey( spep_5-3 + 134, 1, -80.2 );
setRotateKey( spep_5-3 + 136, 1, 16.5 );
setRotateKey( spep_5-3 + 188, 1, 16.5 );

--SE
--腕ふりかぶる
SE030 = playSe( spep_5-4 + 18, 1285 );
setSeVolumeByWorkId( spep_5-4 + 18, SE030, 35 );
setPitch( spep_5-4 + 18, SE030, -1000 );
setTimeStretch( SE030, 0.33, 10, 1 );
stopSe( spep_5-4 + 34, SE030, 26 );
SE031 = playSe( spep_5-4 + 20, 1112 );
setPitch( spep_5-4 + 20, SE031, -1000 );
setTimeStretch( SE031, 0.33, 10, 1 );
SE032 = playSe( spep_5-4 + 20, 1246 );
setSeVolumeByWorkId( spep_5-4 + 20, SE032, 67 );
stopSe( spep_5-4 + 30, SE032, 4 );

--手がワープする
SE033 = playSe( spep_5 + 58, 1291 ,"",0.6);
setSeVolumeByWorkId( spep_5 + 58, SE033, 112 );
stopSe( spep_5 + 58 +36, SE033, 10 );
SE034 = playSe( spep_5 + 58, 1004 );
setSeVolumeByWorkId( spep_5 + 58, SE034, 68 );
setPitch( spep_5 + 58, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--ラストパンチ
SE035 = playSe( spep_5 + 72, 1120 );
setSeVolumeByWorkId( spep_5 + 72, SE035, 80 );
SE036 = playSe( spep_5 + 74, 1009 );
setSeVolumeByWorkId( spep_5 + 74, SE036, 87 );
stopSe( spep_5 + 74 +26, SE036, 8 );
SE037 = playSe( spep_5 + 74, 1190 );
setSeVolumeByWorkId( spep_5 + 74, SE037, 76 );
stopSe( spep_5 + 74 +26, SE037, 20 );
SE038 = playSe( spep_5 + 76, 1187 );
setSeVolumeByWorkId( spep_5 + 76, SE038, 72 );

--敵飛んでいく
SE039 = playSe( spep_5 + 100, 1183 );
stopSe( spep_5 + 144, SE039, 26 );
SE040 = playSe( spep_5 + 100, 1121 );
setSeVolumeByWorkId( spep_5 + 100, SE040, 42 );
stopSe( spep_5 + 144, SE040, 26 );

--ビーズに当たる
SE041 = playSe( spep_5-12 + 120, 1014 );
setSeVolumeByWorkId( spep_5-12 + 120, SE041, 89 );
SE042 = playSe( spep_5-12 + 120, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 120, SE042, 38 );
stopSe( spep_5-12 + 128, SE042, 4 );
SE043 = playSe( spep_5-12 + 132, 1014 );
setSeVolumeByWorkId( spep_5-12 + 132, SE043, 79 );
SE044 = playSe( spep_5-12 + 132, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 132, SE044, 37 );
stopSe( spep_5-12 + 140, SE044, 6 );
SE045 = playSe( spep_5-12 + 144, 1014 );
setSeVolumeByWorkId( spep_5-12 + 144, SE045, 78 );
SE046 = playSe( spep_5-12 + 144, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 144, SE046, 30 );
stopSe( spep_5-12 + 152, SE046, 6 );

--終わり
dealDamage( spep_5 +82 );
endPhase( spep_5 + 182 );
else
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
appearance = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, appearance, 0, 0, 0 );
setEffMoveKey( spep_0 + 96, appearance, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, appearance, 1.0, 1.0 );
setEffScaleKey( spep_0 + 96, appearance, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, appearance, 0 );
setEffRotateKey( spep_0 + 96, appearance, 0 );
setEffAlphaKey( spep_0 + 0, appearance, 255 );
setEffAlphaKey( spep_0 + 94, appearance, 255 );
setEffAlphaKey( spep_0 + 95, appearance, 255 );
setEffAlphaKey( spep_0 + 96, appearance, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-3 + 50, 1, 0 );

changeAnime( spep_0 + 0, 1, 118 );

setMoveKey( spep_0 + 0, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 1, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 2, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 3, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 4, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 5, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0 + 6, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0-3 + 12, 1, 187.5, 128.4 , 0 );
setMoveKey( spep_0-3 + 14, 1, 232, 145.2 , 0 );
setMoveKey( spep_0-3 + 16, 1, 274.2, 160.9 , 0 );
setMoveKey( spep_0-3 + 18, 1, 313.9, 175.8 , 0 );
setMoveKey( spep_0-3 + 20, 1, 351.3, 189.8 , 0 );
setMoveKey( spep_0-3 + 22, 1, 386.2, 202.9 , 0 );
setMoveKey( spep_0-3 + 24, 1, 418.8, 215.1 , 0 );
setMoveKey( spep_0-3 + 26, 1, 448.9, 226.4 , 0 );
setMoveKey( spep_0-3 + 28, 1, 476.6, 236.8 , 0 );
setMoveKey( spep_0-3 + 30, 1, 501.9, 246.3 , 0 );
setMoveKey( spep_0-3 + 32, 1, 524.8, 254.8 , 0 );
setMoveKey( spep_0-3 + 34, 1, 545.2, 262.5 , 0 );
setMoveKey( spep_0-3 + 36, 1, 563.3, 269.3 , 0 );
setMoveKey( spep_0-3 + 38, 1, 579, 275.2 , 0 );
setMoveKey( spep_0-3 + 40, 1, 592.2, 280.1 , 0 );
setMoveKey( spep_0-3 + 42, 1, 603.1, 284.2 , 0 );
setMoveKey( spep_0-3 + 44, 1, 611.5, 287.3 , 0 );
setMoveKey( spep_0-3 + 46, 1, 617.5, 289.6 , 0 );
setMoveKey( spep_0-3 + 48, 1, 621.1, 290.9 , 0 );
setMoveKey( spep_0-3 + 50, 1, 622.4, 291.4 , 0 );

setScaleKey( spep_0 + 0,1,1.4,1.4);
setScaleKey( spep_0 + 1,1,1.4,1.4);
setScaleKey( spep_0 + 2,1,1.4,1.4);
setScaleKey( spep_0 + 3,1,1.4,1.4);
setScaleKey( spep_0 + 4,1,1.4,1.4);
setScaleKey( spep_0 + 5,1,1.4,1.4);
setScaleKey( spep_0 + 6,1,1.4,1.4);
setScaleKey( spep_0-3 + 12,1,1.4,1.4);
setScaleKey( spep_0-3 + 14,1,1.4,1.4);
setScaleKey( spep_0-3 + 16,1,1.39,1.39);
setScaleKey( spep_0-3 + 18,1,1.38,1.38);
setScaleKey( spep_0-3 + 20,1,1.36,1.36);
setScaleKey( spep_0-3 + 22,1,1.34,1.34);
setScaleKey( spep_0-3 + 24,1,1.31,1.31);
setScaleKey( spep_0-3 + 26,1,1.29,1.29);
setScaleKey( spep_0-3 + 28,1,1.26,1.26);
setScaleKey( spep_0-3 + 30,1,1.22,1.22);
setScaleKey( spep_0-3 + 32,1,1.19,1.19);
setScaleKey( spep_0-3 + 34,1,1.15,1.15);
setScaleKey( spep_0-3 + 36,1,1.1,1.1);
setScaleKey( spep_0-3 + 38,1,1.06,1.06);
setScaleKey( spep_0-3 + 40,1,1.01,1.01);
setScaleKey( spep_0-3 + 42,1,0.95,0.95);
setScaleKey( spep_0-3 + 44,1,0.89,0.89);
setScaleKey( spep_0-3 + 46,1,0.83,0.83);
setScaleKey( spep_0-3 + 48,1,0.76,0.76);
setScaleKey( spep_0-3 + 50,1,0.76,0.76);

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0-3 + 50, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 160, 510, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  160,  510);
setEffMoveKey(  spep_x +84,  ctgogo,  160,  510);

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
setEffScaleKey(  spep_x +74,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--入り
SE001 = playSe( spep_0 + 0, 1072 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 100, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_1=spep_0+96;
------------------------------------------------------
-- 横に向いて殴る
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, panting_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_f, 0 );
setEffRotateKey( spep_1 + 112, panting_f, 0 );
setEffAlphaKey( spep_1 + 0, panting_f, 255 );
setEffAlphaKey( spep_1 + 110, panting_f, 255 );
setEffAlphaKey( spep_1 + 111, panting_f, 255 );
setEffAlphaKey( spep_1 + 112, panting_f, 0 );

-- ** エフェクト等 ** --
ctpanting = entryEffect( spep_1 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, ctpanting, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, ctpanting, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, ctpanting, -1.0, 1.0 );
setEffScaleKey( spep_1 + 112, ctpanting, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, ctpanting, 0 );
setEffRotateKey( spep_1 + 112, ctpanting, 0 );
setEffAlphaKey( spep_1 + 0, ctpanting, 255 );
setEffAlphaKey( spep_1 + 110, ctpanting, 255 );
setEffAlphaKey( spep_1 + 111, ctpanting, 255 );
setEffAlphaKey( spep_1 + 112, ctpanting, 0 );


-- ** エフェクト等 ** --
panting_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 112, panting_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 112, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, panting_b, 0 );
setEffRotateKey( spep_1 + 112, panting_b, 0 );
setEffAlphaKey( spep_1 + 0, panting_b, 255 );
setEffAlphaKey( spep_1 + 110, panting_b, 255 );
setEffAlphaKey( spep_1 + 111, panting_b, 255 );
setEffAlphaKey( spep_1 + 112, panting_b, 0 );

--SE
--腕振りかぶる
SE003 = playSe( spep_1 + 6, 1116 );	
setPitch( spep_1 + 6, SE003, -400 );
setTimeStretch( SE003, 0.73, 10, 1 );
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );

    pauseAll( SP_dodge, 67 );
    
    -- ** カットイン部分 ** --
    speff = entryEffectUnpausable( SP_dodge - 12,   1504,   0x100,    -1,  0,  0,  -350, 1000 );   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6 );                           -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge,   1575,  0x100,     -1,  0,  0,  350, 1100 );   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi, 255);
    
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
setDisp( spep_1-3 + 56, 1, 1 );
setDisp( spep_1-3 + 107, 1, 0 );

changeAnime( spep_1-3 + 56, 1, 117 );
changeAnime( spep_1-3 + 100, 1, 106 );
changeAnime( spep_1-3 + 104, 1, 108 );

setMoveKey( spep_1-3 + 56, 1, 39, -19.5 , 0 );
setMoveKey( spep_1-3 + 99, 1, 39, -19.5 , 0 );
setMoveKey( spep_1-3 + 100, 1, 156, -19.5 , 0 );
setMoveKey( spep_1-3 + 103, 1, 156, -19.5 , 0 );
setMoveKey( spep_1-3 + 104, 1, 186, -19.5 , 0 );
setMoveKey( spep_1-3 + 105, 1, 186, -19.5 , 0 );
setMoveKey( spep_1-3 + 106, 1, 400.5, -19.5 , 0 );
setMoveKey( spep_1-3 + 107, 1, 400.5, -19.5 , 0 );

setScaleKey( spep_1-3 + 56, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 99, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 100, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 103, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 104, 1, 1.73, 1.73 );
setScaleKey( spep_1-3 + 107, 1, 1.73, 1.73 );

setRotateKey( spep_1-3 + 56, 1, 0 );
setRotateKey( spep_1-3 + 99, 1, 0 );
setRotateKey( spep_1-3 + 100, 1, -50 );
setRotateKey( spep_1-3 + 103, 1, -50 );
setRotateKey( spep_1-3 + 104, 1, 0 );
setRotateKey( spep_1-3 + 107, 1, 0 );

--SE
--腕振りかぶる
stopSe( spep_1 + 24, SE003, 18 );

--手がワープする
SE004 = playSe( spep_1 + 38, 1291 ,"",0.6);
SE005 = playSe( spep_1 + 64, 1291 ,"",0.6);

--パンチ
SE006 = playSe( spep_1 + 94, 1003 );
SE007 = playSe( spep_1 + 98, 1010 );
SE008 = playSe( spep_1 + 98, 1187 );
setSeVolumeByWorkId( spep_1 + 98, SE008, 78 );


-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 114, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_1 + 98, 0, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_2=spep_1+112;
------------------------------------------------------
-- 追撃のパンチ
------------------------------------------------------
-- ** エフェクト等 ** --
pursuit_f = entryEffect( spep_2 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, pursuit_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 160, pursuit_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_f, 0 );
setEffRotateKey( spep_2 + 160, pursuit_f, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 158, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 159, pursuit_f, 255 );
setEffAlphaKey( spep_2 + 160, pursuit_f, 0 );

-- ** エフェクト等 ** --
pursuit_b = entryEffect( spep_2 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, pursuit_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 160, pursuit_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, pursuit_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 160, pursuit_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, pursuit_b, 0 );
setEffRotateKey( spep_2 + 160, pursuit_b, 0 );
setEffAlphaKey( spep_2 + 0, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 158, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 159, pursuit_b, 255 );
setEffAlphaKey( spep_2 + 160, pursuit_b, 0 );

--敵の動き
setDisp( spep_2-3 + 118, 1, 1 );
setDisp( spep_2-1 + 160, 1, 0 );

changeAnime( spep_2-3 + 118, 1, 105 );
changeAnime( spep_2-3 + 146, 1, 106 );

setMoveKey( spep_2-3 + 118, 1, -433.3, -444.2 , 0 );
setMoveKey( spep_2-3 + 120, 1, -433.3, -444.2 , 0 );
setMoveKey( spep_2-3 + 122, 1, -337.9, -417.7 , 0 );
setMoveKey( spep_2-3 + 126, 1, -337.9, -417.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -290.7, -378 , 0 );
setMoveKey( spep_2-3 + 130, 1, -290.7, -378 , 0 );
setMoveKey( spep_2-3 + 132, 1, -11.5, -67.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, -11.5, -67.5 , 0 );
setMoveKey( spep_2-3 + 138, 1, 50.1, -32.7 , 0 );
setMoveKey( spep_2-3 + 140, 1, 50.1, -32.7 , 0 );
setMoveKey( spep_2-3 + 142, 1, 83.4, -9.9 , 0 );
setMoveKey( spep_2-3 + 145, 1, 83.4, -9.9 , 0 );
a=20;

setMoveKey( spep_2-3 + 146, 1, 54.3-a, -11 , 0 );
setMoveKey( spep_2-3 + 150, 1, 54.3-a, -11 , 0 );
setMoveKey( spep_2-3 + 152, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 156, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 157, 1, 30.9-a, -23 , 0 );
setMoveKey( spep_2-3 + 158, 1, -15.8-a, -17.6 , 0 );
setMoveKey( spep_2-3 + 159, 1, -15.8-a, -17.6 , 0 );
setMoveKey( spep_2-3 + 160, 1, -337.3-a, -492.2 , 0 );
setMoveKey( spep_2-1 + 160, 1, -337.3-a, -492.2 , 0 );

setScaleKey( spep_2-3 + 118, 1, 14.12, 14.12 );
setScaleKey( spep_2-3 + 120, 1, 14.12, 14.12 );
setScaleKey( spep_2-3 + 122, 1, 13.49, 13.49 );
setScaleKey( spep_2-3 + 126, 1, 13.49, 13.49 );
setScaleKey( spep_2-3 + 128, 1, 12.55, 12.55 );
setScaleKey( spep_2-3 + 130, 1, 12.55, 12.55 );
setScaleKey( spep_2-3 + 132, 1, 3.14, 3.14 );
setScaleKey( spep_2-3 + 136, 1, 3.14, 3.14 );
setScaleKey( spep_2-3 + 138, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 140, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 142, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 145, 1, 1.88, 1.88 );

setScaleKey( spep_2-3 + 146, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 150, 1, 1.57, 1.57 );
setScaleKey( spep_2-3 + 152, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 156, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 158, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 159, 1, 3.61, 3.61 );
setScaleKey( spep_2-3 + 160, 1, 14.12, 14.12 );
setScaleKey( spep_2-1 + 160, 1, 14.12, 14.12 );

setRotateKey( spep_2-3 + 118, 1, 11 );
setRotateKey( spep_2-3 + 145, 1, 11 );

setRotateKey( spep_2-3 + 146, 1, -50 );
setRotateKey( spep_2-1 + 160, 1, -50 );

--SE
--足踏み
SE009 = playSe( spep_2 + 42, 1111 );
setSeVolumeByWorkId( spep_2 + 42, SE009, 158 );
stopSe( spep_2 + 58, SE009, 0 );
SE010 = playSe( spep_2 + 44, 1112 );
setSeVolumeByWorkId( spep_2 + 44, SE010, 68 );
setPitch( spep_2 + 44, SE010, -800 );
setTimeStretch( SE010, 0.47, 10, 1 );
stopSe( spep_2 + 60, SE010, 24 );
SE011 = playSe( spep_2 + 44, 1153 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 37 );
stopSe( spep_2 + 66, SE011, 18 );

--手がワープする
SE012 = playSe( spep_2 + 82, 1291 ,"",0.6);
SE013 = playSe( spep_2 + 130, 1291 ,"",0.6);

--正面パンチ
SE014 = playSe( spep_2 + 146, 1010 );
setSeVolumeByWorkId( spep_2 + 146, SE014, 87 );
SE015 = playSe( spep_2 + 146, 1187 );
setSeVolumeByWorkId( spep_2 + 146, SE015, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 162, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3=spep_2+160;
------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
fighting_f = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, fighting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_f, 0 );
setEffRotateKey( spep_3 + 180, fighting_f, 0 );
setEffAlphaKey( spep_3 + 0, fighting_f, 255 );
setEffAlphaKey( spep_3 + 180, fighting_f, 255 );

-- ** エフェクト等 ** --
fighting_b = entryEffect( spep_3 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fighting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 180, fighting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fighting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 180, fighting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fighting_b, 0 );
setEffRotateKey( spep_3 + 180, fighting_b, 0 );
setEffAlphaKey( spep_3 + 0, fighting_b, 255 );
setEffAlphaKey( spep_3 + 180, fighting_b, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-3 + 168, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 40, 1, 8 );
changeAnime( spep_3-3 + 86, 1, 6 );
changeAnime( spep_3-3 + 98, 1, 108 );
changeAnime( spep_3-3 + 152, 1, 8 );

setMoveKey( spep_3 + 0, 1, -619.3, -73.4 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -554.9, -73.4 , 0 );
setMoveKey( spep_3-3 + 4, 1, -490.5, -73.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, -426.1, -73.4 , 0 );
setMoveKey( spep_3-3 + 8, 1, -361.7, -73.4 , 0 );
setMoveKey( spep_3-3 + 10, 1, -297.3, -73.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, -233, -73.4 , 0 );
setMoveKey( spep_3-3 + 14, 1, -168.6, -73.4 , 0 );
setMoveKey( spep_3-3 + 16, 1, -104.2, -73.4 , 0 );
setMoveKey( spep_3-3 + 18, 1, -39.8, -73.4 , 0 );
setMoveKey( spep_3-3 + 20, 1, 24.6, -73.4 , 0 );
setMoveKey( spep_3-3 + 22, 1, 89, -73.4 , 0 );
setMoveKey( spep_3-3 + 24, 1, 153.4, -73.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 217.7, -73.4 , 0 );
setMoveKey( spep_3-3 + 27, 1, 217.7, -73.4 , 0 );

c=50;

setMoveKey( spep_3-3 + 28, 1, 217.6-c, -51.9 , 0 );
setMoveKey( spep_3-3 + 30, 1, 207.9-c, -51.9 , 0 );
setMoveKey( spep_3-3 + 32, 1, 194.2-c, -51.9 , 0 );
--setMoveKey( spep_3-3 + 34, 1, 188.4-c, -51.9 , 0 );
--setMoveKey( spep_3-3 + 36, 1, 184.5-c, -38.2 , 0 );
setMoveKey( spep_3-3 + 39, 1, 184.5-c, -51.9 , 0 );

setMoveKey( spep_3-3 + 40, 1, 184.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 184.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 44, 1, 179, -70.3 , 0 );
setMoveKey( spep_3-3 + 46, 1, 167.3, -70.3 , 0 );
setMoveKey( spep_3-3 + 48, 1, 124.7, -70.3 , 0 );
setMoveKey( spep_3-3 + 50, 1, 85.7, -70.3 , 0 );
setMoveKey( spep_3-3 + 52, 1, 50.4, -70.3 , 0 );
setMoveKey( spep_3-3 + 54, 1, 18.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 56, 1, -9, -70.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, -33.1, -70.3 , 0 );
setMoveKey( spep_3-3 + 60, 1, -53.5, -70.3 , 0 );
--setMoveKey( spep_3-3 + 62, 1, -70.2, -70.3 , 0 );
--setMoveKey( spep_3-3 + 64, 1, -83.2, -70.3 , 0 );
--setMoveKey( spep_3-3 + 66, 1, -92.5, -70.3 , 0 );
--setMoveKey( spep_3-3 + 68, 1, -98, -70.3 , 0 );
--setMoveKey( spep_3-3 + 70, 1, -99.9, -70.3 , 0 );
setMoveKey( spep_3-3 + 85, 1, -169.9, -70.3 , 0 );

setMoveKey( spep_3-3 + 86, 1, -168.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 90, 1, -168.4, -50.7 , 0 );
setMoveKey( spep_3-3 + 92, 1, -163.9, -50.7 , 0 );

setMoveKey( spep_3-3 + 98, 1, -159.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 100, 1, -159.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 102, 1, -78.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 106, 1, -78.6, -50.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, -12, -50.7 , 0 );
setMoveKey( spep_3-3 + 112, 1, -12, -50.7 , 0 );
setMoveKey( spep_3-3 + 114, 1, 42.5, -50.6 , 0 );
setMoveKey( spep_3-3 + 118, 1, 42.5, -50.6 , 0 );
setMoveKey( spep_3-3 + 120, 1, 112.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 124, 1, 112.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 126, 1, 151.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 130, 1, 151.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 132, 1, 198.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 136, 1, 198.4, -50.6 , 0 );
setMoveKey( spep_3-3 + 138, 1, 237.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 142, 1, 237.1, -50.6 , 0 );
setMoveKey( spep_3-3 + 144, 1, 275.9, -50.6 , 0 );
setMoveKey( spep_3-3 + 151, 1, 275.9, -50.6 , 0 );

setMoveKey( spep_3-3 + 152, 1, 236.9, 205.5 , 0 );
setMoveKey( spep_3-3 + 154, 1, 236.9, 205.5 , 0 );
setMoveKey( spep_3-3 + 156, 1, 236.9, 225.5 , 0 );
setMoveKey( spep_3-3 + 158, 1, 236.9, 303.1 , 0 );
setMoveKey( spep_3-3 + 160, 1, 236.9, 380.7 , 0 );
setMoveKey( spep_3-3 + 162, 1, 236.9, 458.3 , 0 );
setMoveKey( spep_3-3 + 164, 1, 236.9, 535.8 , 0 );
setMoveKey( spep_3-3 + 166, 1, 236.9, 613.4 , 0 );
setMoveKey( spep_3-3 + 168, 1, 236.9, 691 , 0 );

setScaleKey( spep_3 + 0, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 39, 1, 0.9, 0.9 );

setScaleKey( spep_3-3 + 40, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 85, 1, 1.06, 1.06 );

setScaleKey( spep_3-3 + 86, 1, 0.9, 0.9 );
setScaleKey( spep_3-3 + 97, 1, 0.9, 0.9 );

setScaleKey( spep_3-3 + 98, 1, 1.06, 1.06 );
setScaleKey( spep_3-3 + 168, 1, 1.06, 1.06 );

setRotateKey( spep_3 + 0, 1, 32.2 );
setRotateKey( spep_3-3 + 27, 1, 32.2 );

setRotateKey( spep_3-3 + 28, 1, -60 );
setRotateKey( spep_3-3 + 39, 1, -60 );

setRotateKey( spep_3-3 + 40, 1, 0 );
setRotateKey( spep_3-3 + 43, 1, 0 );
setRotateKey( spep_3-3 + 44, 1, -10 );
setRotateKey( spep_3-3 + 53, 1, -10 );
setRotateKey( spep_3-3 + 54, 1, -20 );
--setRotateKey( spep_3-3 + 59, 1, -20 );
setRotateKey( spep_3-3 + 60, 1, -50 );
setRotateKey( spep_3-3 + 85, 1, -50 );
setRotateKey( spep_3-3 + 86, 1, 60 );
setRotateKey( spep_3-3 + 97, 1, 60 );
setRotateKey( spep_3-3 + 98, 1, 10 );
setRotateKey( spep_3-3 + 101, 1, 10 );
setRotateKey( spep_3-3 + 102, 1, 20 );
setRotateKey( spep_3-3 + 110, 1, 50 );
setRotateKey( spep_3-3 + 151, 1, 50 );

setRotateKey( spep_3-3 + 152, 1, 72.2 );
setRotateKey( spep_3-3 + 168, 1, 72.2 );

--SE
--手がワープする
SE016 = playSe( spep_3 + 24, 1291 ,"",0.6);
SE020 = playSe( spep_3 + 80, 1291 ,"",0.6);

--サイドパンチ１
SE017 = playSe( spep_3 + 32, 1009 );
SE018 = playSe( spep_3 + 34, 1110 );
setSeVolumeByWorkId( spep_3 + 34, SE018, 83 );
SE019 = playSe( spep_3 + 34, 1060 );
setSeVolumeByWorkId( spep_3 + 34, SE019, 74 );
stopSe( spep_3 + 58, SE019, 20 );

--サイドパンチ２
SE021 = playSe( spep_3 + 88, 1009 );
SE022 = playSe( spep_3 + 88, 1110 );
setSeVolumeByWorkId( spep_3 + 88, SE022, 81 );
SE023 = playSe( spep_3 + 88, 1060 );
setSeVolumeByWorkId( spep_3 + 88, SE023, 81 );
stopSe( spep_3 + 112, SE023, 20 );

--足がワープする
SE024 = playSe( spep_3 + 144, 1291 ,"",0.6);

--蹴り上げ
SE025 = playSe( spep_3 + 150, 1060 );
setSeVolumeByWorkId( spep_3 + 150, SE025, 79 );
stopSe( spep_3 + 174, SE025, 20 );
SE026 = playSe( spep_3 + 150, 1190 );
SE027 = playSe( spep_3 + 152, 1169 );
setSeVolumeByWorkId( spep_3 + 152, SE027, 79 );
SE028 = playSe( spep_3 + 152, 1010 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_3 + 172, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_4=spep_3+180;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_4 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_4 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_4 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_4 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_4 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_4 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_4 + 0, shuchusen, 0 );
setEffRotateKey( spep_4 + 90, shuchusen, 0 );
setEffAlphaKey( spep_4 + 0, shuchusen, 255 );
setEffAlphaKey( spep_4 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_4 + 0, SE_05 );

--足がワープする
stopSe( spep_4 + 8, SE024, 12 );

--蹴り上げ
stopSe( spep_4 + 2, SE026, 8 );
stopSe( spep_4 + 2, SE027, 8 );
stopSe( spep_4 + 0, SE028, 8 );

-- ** 白背景 ** --
entryFadeBg( spep_4 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_4 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_4 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_5 = spep_4 + 94;
------------------------------------------------------
-- 連打
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_5 + 192, finish, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_5 + 192, finish, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish, 0 );
setEffRotateKey( spep_5 + 192, finish, 0 );
setEffAlphaKey( spep_5 + 0, finish, 255 );
setEffAlphaKey( spep_5 + 192, finish, 255 );

--敵の動き
setDisp( spep_5-3 + 104, 1, 1 );

changeAnime( spep_5-3 + 104, 1, 5 );

setMoveKey( spep_5-3 + 104, 1, -0.1, 0.1 , 0 );
setMoveKey( spep_5-3 + 106, 1, 0.7, -3 , 0 );
setMoveKey( spep_5-3 + 108, 1, 1.5, -5.4 , 0 );
setMoveKey( spep_5-3 + 110, 1, 2.1, -6.8 , 0 );
setMoveKey( spep_5-3 + 112, 1, 2.4, -7.3 , 0 );
setMoveKey( spep_5-3 + 114, 1, -0.2, 1.2 , 0 );
setMoveKey( spep_5-3 + 116, 1, -22.1, 15.9 , 0 );
setMoveKey( spep_5-3 + 118, 1, -39.2, 27.4 , 0 );
setMoveKey( spep_5-3 + 120, 1, -51.4, 35.6 , 0 );
setMoveKey( spep_5-3 + 122, 1, -58.8, 40.5 , 0 );
setMoveKey( spep_5-3 + 124, 1, -61.2, 42.2 , 0 );
setMoveKey( spep_5-3 + 126, 1, -20.8, 38 , 0 );
setMoveKey( spep_5-3 + 128, 1, -2.5, 24.5 , 0 );
setMoveKey( spep_5-3 + 130, 1, 11.2, 15.5 , 0 );
setMoveKey( spep_5-3 + 132, 1, 19.7, 10.3 , 0 );
setMoveKey( spep_5-3 + 134, 1, 22.6, 8.6 , 0 );
setMoveKey( spep_5-3 + 136, 1, 14.4, 12.5 , 0 );
setMoveKey( spep_5-3 + 138, 1, 13.4, 11.9 , 0 );
setMoveKey( spep_5-3 + 140, 1, 12.4, 11.3 , 0 );
setMoveKey( spep_5-3 + 142, 1, 11.5, 10.8 , 0 );
setMoveKey( spep_5-3 + 144, 1, 10.6, 10.3 , 0 );
setMoveKey( spep_5-3 + 146, 1, 9.7, 9.8 , 0 );
setMoveKey( spep_5-3 + 148, 1, 8.9, 9.3 , 0 );
setMoveKey( spep_5-3 + 150, 1, 8.1, 8.9 , 0 );
setMoveKey( spep_5-3 + 152, 1, 7.4, 8.5 , 0 );
setMoveKey( spep_5-3 + 154, 1, 6.6, 8.1 , 0 );
setMoveKey( spep_5-3 + 156, 1, 6, 7.7 , 0 );
setMoveKey( spep_5-3 + 158, 1, 5.4, 7.4 , 0 );
setMoveKey( spep_5-3 + 160, 1, 4.8, 7 , 0 );
setMoveKey( spep_5-3 + 162, 1, 4.2, 6.7 , 0 );
setMoveKey( spep_5-3 + 164, 1, 3.7, 6.5 , 0 );
setMoveKey( spep_5-3 + 166, 1, 3.3, 6.2 , 0 );
setMoveKey( spep_5-3 + 168, 1, 2.9, 6 , 0 );
setMoveKey( spep_5-3 + 170, 1, 2.5, 5.7 , 0 );
setMoveKey( spep_5-3 + 172, 1, 2.1, 5.5 , 0 );
setMoveKey( spep_5-3 + 174, 1, 1.8, 5.4 , 0 );
setMoveKey( spep_5-3 + 176, 1, 1.6, 5.2 , 0 );
setMoveKey( spep_5-3 + 178, 1, 1.4, 5.1 , 0 );
setMoveKey( spep_5-3 + 180, 1, 1.2, 5 , 0 );
setMoveKey( spep_5-3 + 182, 1, 1, 4.9 , 0 );
setMoveKey( spep_5-3 + 184, 1, 0.9, 4.9 , 0 );
setMoveKey( spep_5-3 + 186, 1, 0.9, 4.8 , 0 );
setMoveKey( spep_5-3 + 188, 1, 0.4, 5 , 0 );

setScaleKey( spep_5-3 + 104, 1, 9.41, 9.41 );
setScaleKey( spep_5-3 + 106, 1, 5.98, 5.98 );
setScaleKey( spep_5-3 + 108, 1, 3.53, 3.53 );
setScaleKey( spep_5-3 + 110, 1, 2.06, 2.06 );
setScaleKey( spep_5-3 + 112, 1, 1.57, 1.57 );
setScaleKey( spep_5-3 + 114, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 116, 1, 1.32, 1.32 );
setScaleKey( spep_5-3 + 118, 1, 1.16, 1.16 );
setScaleKey( spep_5-3 + 120, 1, 1.04, 1.04 );
setScaleKey( spep_5-3 + 122, 1, 0.96, 0.96 );
setScaleKey( spep_5-3 + 124, 1, 0.94, 0.94 );
setScaleKey( spep_5-3 + 126, 1, 0.75, 0.75 );
setScaleKey( spep_5-3 + 128, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 130, 1, 0.42, 0.42 );
setScaleKey( spep_5-3 + 132, 1, 0.34, 0.34 );
setScaleKey( spep_5-3 + 134, 1, 0.31, 0.31 );
setScaleKey( spep_5-3 + 136, 1, 0.3, 0.3 );
setScaleKey( spep_5-3 + 138, 1, 0.28, 0.28 );
setScaleKey( spep_5-3 + 140, 1, 0.26, 0.26 );
setScaleKey( spep_5-3 + 142, 1, 0.24, 0.24 );
setScaleKey( spep_5-3 + 144, 1, 0.23, 0.23 );
setScaleKey( spep_5-3 + 146, 1, 0.21, 0.21 );
setScaleKey( spep_5-3 + 148, 1, 0.2, 0.2 );
setScaleKey( spep_5-3 + 150, 1, 0.19, 0.19 );
setScaleKey( spep_5-3 + 152, 1, 0.17, 0.17 );
setScaleKey( spep_5-3 + 154, 1, 0.16, 0.16 );
setScaleKey( spep_5-3 + 156, 1, 0.15, 0.15 );
setScaleKey( spep_5-3 + 158, 1, 0.14, 0.14 );
setScaleKey( spep_5-3 + 160, 1, 0.13, 0.13 );
setScaleKey( spep_5-3 + 162, 1, 0.12, 0.12 );
setScaleKey( spep_5-3 + 164, 1, 0.11, 0.11 );
setScaleKey( spep_5-3 + 166, 1, 0.1, 0.1 );
setScaleKey( spep_5-3 + 168, 1, 0.1, 0.1 );
setScaleKey( spep_5-3 + 170, 1, 0.09, 0.09 );
setScaleKey( spep_5-3 + 172, 1, 0.08, 0.08 );
setScaleKey( spep_5-3 + 176, 1, 0.08, 0.08 );
setScaleKey( spep_5-3 + 178, 1, 0.07, 0.07 );
setScaleKey( spep_5-3 + 182, 1, 0.07, 0.07 );
setScaleKey( spep_5-3 + 184, 1, 0.06, 0.06 );
setScaleKey( spep_5-3 + 188, 1, 0.06, 0.06 );

setRotateKey( spep_5-3 + 104, 1, 9.8 );
setRotateKey( spep_5-3 + 106, 1, -0.7 );
setRotateKey( spep_5-3 + 108, 1, -8.3 );
setRotateKey( spep_5-3 + 110, 1, -12.8 );
setRotateKey( spep_5-3 + 112, 1, -14.3 );
setRotateKey( spep_5-3 + 114, 1, -30.3 );
setRotateKey( spep_5-3 + 116, 1, -30.1 );
setRotateKey( spep_5-3 + 118, 1, -30 );
setRotateKey( spep_5-3 + 120, 1, -29.9 );
setRotateKey( spep_5-3 + 122, 1, -29.8 );
setRotateKey( spep_5-3 + 124, 1, -29.8 );
setRotateKey( spep_5-3 + 126, 1, 80 );
setRotateKey( spep_5-3 + 128, 1, 80.1 );
setRotateKey( spep_5-3 + 130, 1, 80.2 );
setRotateKey( spep_5-3 + 134, 1, 80.2 );
setRotateKey( spep_5-3 + 136, 1, -16.5 );
setRotateKey( spep_5-3 + 188, 1, -16.5 );

--SE
--腕ふりかぶる
SE030 = playSe( spep_5-4 + 18, 1285 );
setSeVolumeByWorkId( spep_5-4 + 18, SE030, 35 );
setPitch( spep_5-4 + 18, SE030, -1000 );
setTimeStretch( SE030, 0.33, 10, 1 );
stopSe( spep_5-4 + 34, SE030, 26 );
SE031 = playSe( spep_5-4 + 20, 1112 );
setPitch( spep_5-4 + 20, SE031, -1000 );
setTimeStretch( SE031, 0.33, 10, 1 );
SE032 = playSe( spep_5-4 + 20, 1246 );
setSeVolumeByWorkId( spep_5-4 + 20, SE032, 67 );
stopSe( spep_5-4 + 30, SE032, 4 );

--手がワープする
SE033 = playSe( spep_5 + 58, 1291 ,"",0.6);
setSeVolumeByWorkId( spep_5 + 58, SE033, 112 );
stopSe( spep_5 + 58 +36, SE033, 10 );
SE034 = playSe( spep_5 + 58, 1004 );
setSeVolumeByWorkId( spep_5 + 58, SE034, 68 );
setPitch( spep_5 + 58, SE034, -600 );
setTimeStretch( SE034, 0.6, 10, 1 );

--ラストパンチ
SE035 = playSe( spep_5 + 72, 1120 );
setSeVolumeByWorkId( spep_5 + 72, SE035, 80 );
SE036 = playSe( spep_5 + 74, 1009 );
setSeVolumeByWorkId( spep_5 + 74, SE036, 87 );
stopSe( spep_5 + 74 +26, SE036, 8 );
SE037 = playSe( spep_5 + 74, 1190 );
setSeVolumeByWorkId( spep_5 + 74, SE037, 76 );
stopSe( spep_5 + 74 +26, SE037, 20 );
SE038 = playSe( spep_5 + 76, 1187 );
setSeVolumeByWorkId( spep_5 + 76, SE038, 72 );

--敵飛んでいく
SE039 = playSe( spep_5 + 100, 1183 );
stopSe( spep_5 + 144, SE039, 26 );
SE040 = playSe( spep_5 + 100, 1121 );
setSeVolumeByWorkId( spep_5 + 100, SE040, 42 );
stopSe( spep_5 + 144, SE040, 26 );

--ビーズに当たる
SE041 = playSe( spep_5-12 + 120, 1014 );
setSeVolumeByWorkId( spep_5-12 + 120, SE041, 89 );
SE042 = playSe( spep_5-12 + 120, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 120, SE042, 38 );
stopSe( spep_5-12 + 128, SE042, 4 );
SE043 = playSe( spep_5-12 + 132, 1014 );
setSeVolumeByWorkId( spep_5-12 + 132, SE043, 79 );
SE044 = playSe( spep_5-12 + 132, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 132, SE044, 37 );
stopSe( spep_5-12 + 140, SE044, 6 );
SE045 = playSe( spep_5-12 + 144, 1014 );
setSeVolumeByWorkId( spep_5-12 + 144, SE045, 78 );
SE046 = playSe( spep_5-12 + 144, 1237 ,"",0.5);
setSeVolumeByWorkId( spep_5-12 + 144, SE046, 30 );
stopSe( spep_5-12 + 152, SE046, 6 );

--終わり
dealDamage( spep_5 +82 );
endPhase( spep_5 + 182 );
end