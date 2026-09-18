--4022950:クリリン&孫悟飯(幼年期)_クイックコンビネーション(服装違い)
--sp_effect_b1_00169
--sp2260

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
SP_01= 158246 ;-- 対峙
SP_02= 158247 ;-- 二人突っ込む→クリリン背後に回り込む
SP_03= 158249 ;-- 二人突っ込む→クリリン背後に回り込む
SP_04= 158250 ;-- クリリン回し蹴り
SP_05= 158252 ;-- クリリン回し蹴り
SP_06= 158253 ;-- 悟飯パンチ
SP_07= 158255 ;-- 悟飯パンチ
SP_08= 158257 ;-- 斜め下に二人突っ込む
SP_09= 158258 ;-- 腕を振りかぶりながら画面手前へ
SP_10= 158259 ;-- ボディーブロー
SP_11= 158261 ;-- ボディーブロー
SP_12=158262 ;-- 前転
SP_13= 158264 ;-- 蹴り
SP_14= 158266 ;-- 蹴り
SP_15= 158267 ;-- 敵が岩に向かって吹っ飛ぶ
SP_16= 158268 ;-- フィニッシュ

--エフェクト(てき)
SP_01x= 158246 ;-- 対峙
SP_02x= 158248 ;-- 二人突っ込む→クリリン背後に回り込む(敵)
SP_03x= 158249 ;-- 二人突っ込む→クリリン背後に回り込む
SP_04x= 158251 ;-- クリリン回し蹴り(敵)
SP_05x= 158252 ;-- クリリン回し蹴り
SP_06x= 158254 ;-- 悟飯パンチ(敵)
SP_07x= 158256 ;-- 悟飯パンチ(敵)
SP_08x= 158257 ;-- 斜め下に二人突っ込む
SP_09x= 158258 ;-- 腕を振りかぶりながら画面手前へ
SP_10x= 158260 ;-- ボディーブロー(敵)
SP_11x= 158261 ;-- ボディーブロー
SP_12x= 158263 ;-- 前転(敵)
SP_13x= 158265 ;-- 蹴り(敵)
SP_14x= 158266 ;-- 蹴り
SP_15x= 158267 ;-- 敵が岩に向かって吹っ飛ぶ
SP_16x= 158268 ;-- フィニッシュ
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
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 86, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 84, confrontation, 255 );
setEffAlphaKey( spep_0 + 85, confrontation, 255 );
setEffAlphaKey( spep_0 + 86, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 18, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0-1 + 1, 1, 228.1, -230 , 0 );
setMoveKey( spep_0-1 + 2, 1, 238.9, -237.2 , 0 );
setMoveKey( spep_0-1 + 3, 1, 238.9, -237.2 , 0 );
setMoveKey( spep_0-1 + 4, 1, 272.9, -259.7 , 0 );
setMoveKey( spep_0-1 + 5, 1, 272.9, -259.7 , 0 );
setMoveKey( spep_0-1 + 6, 1, 333.9, -299.4 , 0 );
setMoveKey( spep_0-1 + 7, 1, 333.9, -299.4 , 0 );
setMoveKey( spep_0-1 + 8, 1, 426.3, -359.1 , 0 );
setMoveKey( spep_0-1 + 10, 1, 557, -442.2 , 0 );
setMoveKey( spep_0-1 + 12, 1, 736.4, -554.4 , 0 );
setMoveKey( spep_0-1 + 14, 1, 984.6, -705.6 , 0 );
setMoveKey( spep_0-1 + 16, 1, 1364, -925.2 , 0 );
setMoveKey( spep_0 + 18, 1, 1367.2, -927.2 , 0 );

setScaleKey( spep_0-1 + 1, 1, 4, 4 );
setScaleKey( spep_0-1 + 2, 1, 4.11, 4.13 );
setScaleKey( spep_0-1 + 3, 1, 4.11, 4.13 );
setScaleKey( spep_0-1 + 4, 1, 4.48, 4.53 );
setScaleKey( spep_0-1 + 5, 1, 4.48, 4.53 );
setScaleKey( spep_0-1 + 6, 1, 5.13, 5.23 );
setScaleKey( spep_0-1 + 7, 1, 5.13, 5.23 );
setScaleKey( spep_0-1 + 8, 1, 6.12, 6.29 );
setScaleKey( spep_0-1 + 10, 1, 7.53, 7.77 );
setScaleKey( spep_0-1 + 12, 1, 9.47, 9.76 );
setScaleKey( spep_0-1 + 14, 1, 12.17, 12.45 );
setScaleKey( spep_0-1 + 16, 1, 16.35, 16.35 );
setScaleKey( spep_0 + 18, 1, 16.39, 16.39 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 18, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

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
]]
--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE001, 0.91, 30, 4 );

--顔カットイン
SE002 = playSeVer2( spep_x + 10, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+86;
------------------------------------------------------
--二人突っ込む→クリリン背後に回り込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, plunge_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, plunge_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, plunge_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, plunge_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, plunge_f, 0 );
setEffRotateKey( spep_1 + 56, plunge_f, 0 );
setEffAlphaKey( spep_1 + 0, plunge_f, 255 );
setEffAlphaKey( spep_1 + 54, plunge_f, 255 );
setEffAlphaKey( spep_1 + 55, plunge_f, 255 );
setEffAlphaKey( spep_1 + 56, plunge_f, 0 );

-- ** エフェクト等 ** --
plunge_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, plunge_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, plunge_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, plunge_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, plunge_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, plunge_b, 0 );
setEffRotateKey( spep_1 + 56, plunge_b, 0 );
setEffAlphaKey( spep_1 + 0, plunge_b, 255 );
setEffAlphaKey( spep_1 + 54, plunge_b, 255 );
setEffAlphaKey( spep_1 + 55, plunge_b, 255 );
setEffAlphaKey( spep_1 + 56, plunge_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 214.3, -224 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 193, -203 , 0 );
setMoveKey( spep_1-3 + 4, 1, 171.8, -181.9 , 0 );
setMoveKey( spep_1-3 + 6, 1, 150.5, -160.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 129.2, -139.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 108, -118.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 86.8, -97.8 , 0 );
setMoveKey( spep_1-3 + 14, 1, 65.6, -76.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 44.3, -55.7 , 0 );
setMoveKey( spep_1-3 + 18, 1, 23, -34.7 , 0 );
setMoveKey( spep_1 + 40, 1, 23, -34.7 , 0 );

setScaleKey( spep_1 + 0, 1, 4.5, 4.5 );
--setScaleKey( spep_1-3 + 2, 1, 4.23, 4.23 );
setScaleKey( spep_1-3 + 4, 1, 3.97, 3.97 );
setScaleKey( spep_1-3 + 6, 1, 3.7, 3.7 );
setScaleKey( spep_1-3 + 8, 1, 3.44, 3.44 );
setScaleKey( spep_1-3 + 10, 1, 3.17, 3.17 );
setScaleKey( spep_1-3 + 12, 1, 2.91, 2.91 );
setScaleKey( spep_1-3 + 14, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 16, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 40, 1, 2.11, 2.11 );

setRotateKey( spep_1 + 0, 1, 12 );
setRotateKey( spep_1 + 40, 1, 12 );

--SE
--二人飛び込む
SE003 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 23, -34.7 , 0 );

    setScaleKey( SP_dodge + 9, 1, 2.11, 2.11 );

    setRotateKey( SP_dodge + 9, 1, 12 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_1-1 + 56, 1, 23, -34.7 , 0 );

setScaleKey( spep_1-1 + 56, 1, 2.11, 2.11 );

setRotateKey( spep_1-1 + 56, 1, 12 );

--SE
--クリリン瞬間移動
SE005 = playSeVer2( spep_1 + 32, 1109, "", 0, 0, 0, -1);

--次の準備 
spep_2=spep_1+56;
------------------------------------------------------
--クリリン回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 76, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 74, kick_f, 255 );
setEffAlphaKey( spep_2 + 75, kick_f, 255 );
setEffAlphaKey( spep_2 + 76, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 76, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 74, kick_b, 255 );
setEffAlphaKey( spep_2 + 75, kick_b, 255 );
setEffAlphaKey( spep_2 + 76, kick_b, 0 );

--敵の動き
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 20, 1, 7 );

setMoveKey( spep_2 + 0, 1, -102.4, -112.7 , 0 );
setMoveKey( spep_2-3 + 19, 1, -102.4, -112.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, -21.8, -13.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, -59.8, -43.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, -68.7, -69.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -119.6, -61 , 0 );
setMoveKey( spep_2-3 + 28, 1, -135.4, -94.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, -111.3, -77.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, -94.2, -55.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, -52, -48.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -14.7, -26.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 28.1, -1.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 76.6, 28 , 0 );
setMoveKey( spep_2-3 + 42, 1, 130.7, 61.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 125.4, 57.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 120.3, 54 , 0 );
setMoveKey( spep_2-3 + 48, 1, 115.2, 50.6 , 0 );
setMoveKey( spep_2-3 + 50, 1, 110.1, 47 , 0 );
setMoveKey( spep_2-3 + 52, 1, 105.2, 43.7 , 0 );
setMoveKey( spep_2-3 + 54, 1, 100.3, 40.4 , 0 );
setMoveKey( spep_2-3 + 56, 1, 95.5, 37.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 90.8, 33.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 86.1, 30.6 , 0 );
setMoveKey( spep_2-3 + 62, 1, 81.5, 27.5 , 0 );
setMoveKey( spep_2-3 + 64, 1, 77, 24.5 , 0 );
setMoveKey( spep_2-3 + 66, 1, 72.6, 21.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 68.3, 18.4 , 0 );
setMoveKey( spep_2-3 + 70, 1, 64.1, 15.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 60, 12.7 , 0 );
setMoveKey( spep_2-3 + 74, 1, 55.9, 9.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 51.8, 7.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 47.9, 4.5 , 0 );

setScaleKey( spep_2 + 0, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 19, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 26, 1, 1.49, 1.5 );
setScaleKey( spep_2-3 + 28, 1, 1.55, 1.56 );
setScaleKey( spep_2-3 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 32, 1, 1.29, 1.3 );
setScaleKey( spep_2-3 + 34, 1, 1.15, 1.16 );
setScaleKey( spep_2-3 + 36, 1, 0.99, 1 );
setScaleKey( spep_2-3 + 38, 1, 0.82, 0.83 );
setScaleKey( spep_2-3 + 40, 1, 0.63, 0.64 );
setScaleKey( spep_2-3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 44, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 46, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 48, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 50, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 52, 1, 0.48, 0.49 );
setScaleKey( spep_2-3 + 54, 1, 0.49, 0.5 );
setScaleKey( spep_2-3 + 56, 1, 0.5, 0.51 );
setScaleKey( spep_2-3 + 58, 1, 0.51, 0.52 );
setScaleKey( spep_2-3 + 60, 1, 0.52, 0.53 );
setScaleKey( spep_2-3 + 62, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 64, 1, 0.53, 0.54 );
setScaleKey( spep_2-3 + 66, 1, 0.54, 0.55 );
setScaleKey( spep_2-3 + 68, 1, 0.55, 0.56 );
setScaleKey( spep_2-3 + 70, 1, 0.56, 0.57 );
setScaleKey( spep_2-3 + 72, 1, 0.56, 0.57 );
setScaleKey( spep_2-3 + 74, 1, 0.57, 0.58 );
setScaleKey( spep_2-3 + 76, 1, 0.58, 0.59 );
setScaleKey( spep_2-3 + 78, 1, 0.58, 0.59 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 20, 1, 0 );
setRotateKey( spep_2-3 + 22, 1, -1 );
setRotateKey( spep_2-3 + 24, 1, -1.9 );
setRotateKey( spep_2-3 + 26, 1, -2.9 );
setRotateKey( spep_2-3 + 28, 1, -3.9 );
setRotateKey( spep_2-3 + 30, 1, -4.8 );
setRotateKey( spep_2-3 + 32, 1, -5.8 );
setRotateKey( spep_2-3 + 34, 1, -6.8 );
setRotateKey( spep_2-3 + 36, 1, -7.7 );
setRotateKey( spep_2-3 + 38, 1, -8.7 );
setRotateKey( spep_2-3 + 40, 1, -9.7 );
setRotateKey( spep_2-3 + 42, 1, -10.6 );
setRotateKey( spep_2-3 + 44, 1, -11.6 );
setRotateKey( spep_2-3 + 46, 1, -12.6 );
setRotateKey( spep_2-3 + 48, 1, -13.5 );
setRotateKey( spep_2-3 + 50, 1, -14.5 );
setRotateKey( spep_2-3 + 52, 1, -15.4 );
setRotateKey( spep_2-3 + 54, 1, -16.4 );
setRotateKey( spep_2-3 + 56, 1, -17.4 );
setRotateKey( spep_2-3 + 58, 1, -18.3 );
setRotateKey( spep_2-3 + 60, 1, -19.3 );
setRotateKey( spep_2-3 + 62, 1, -20.3 );
setRotateKey( spep_2-3 + 64, 1, -21.2 );
setRotateKey( spep_2-3 + 66, 1, -22.2 );
setRotateKey( spep_2-3 + 68, 1, -23.2 );
setRotateKey( spep_2-3 + 70, 1, -24.1 );
setRotateKey( spep_2-3 + 72, 1, -25.1 );
setRotateKey( spep_2-3 + 74, 1, -26.1 );
setRotateKey( spep_2-3 + 76, 1, -27 );
setRotateKey( spep_2-3 + 78, 1, -28 );

--SE
SE006 = playSeVer2( spep_2 + 18, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 24, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 24, 1187, "",spep_2 + 48, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 24, SE008, 93 );
SE009 = playSeVer2( spep_2 + 26, 19, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE010, 84 );

--敵飛んでいく
SE011 = playSeVer2( spep_2 + 34, 1183, "",spep_2 + 154, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 34, SE011, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_3=spep_2+76;
------------------------------------------------------
--悟飯パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 76, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 74, panting_f, 255 );
setEffAlphaKey( spep_3 + 75, panting_f, 255 );
setEffAlphaKey( spep_3 + 76, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 76, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 76, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 74, panting_b, 255 );
setEffAlphaKey( spep_3 + 75, panting_b, 255 );
setEffAlphaKey( spep_3 + 76, panting_b, 0 );

--敵の動き
setDisp( spep_3-3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3-3 + 30, 1, 107 );

setMoveKey( spep_3 + 0, 1, 546.4, -855 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 546.1, -839.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 542.3, -818.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 535.3, -792.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 525, -762 , 0 );
setMoveKey( spep_3-3 + 10, 1, 511.4, -726.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 494.6, -685.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 474.5, -640.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 451.3, -589.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 424.6, -534.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 394.6, -474.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 361.4, -408.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, 324.8, -338.6 , 0 );
setMoveKey( spep_3-3 + 26, 1, 285, -263.3 , 0 );
setMoveKey( spep_3-3 + 29, 1, 241.8, -183.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 277.6, 58.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 275.1, 32.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 314.6, 19.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 436.7, 50.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 474.3, 51.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 360.1, 46.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 117.3, 58.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 185.7, 55.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 254.1, 52.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 322.1, 49.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 389.8, 46.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 457.3, 44 , 0 );
setMoveKey( spep_3-3 + 54, 1, 524.6, 41.1 , 0 );
setMoveKey( spep_3-3 + 56, 1, 591.6, 38.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 658.3, 35.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 724.9, 32.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 791.1, 29.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 857.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 922.8, 24.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 988.4, 21.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 1053.5, 18.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 1118.6, 16 , 0 );
setMoveKey( spep_3-3 + 74, 1, 1183.3, 13.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 1247.9, 10.5 , 0 );
setMoveKey( spep_3-3 + 78, 1, 1312, 7.7 , 0 );

setScaleKey( spep_3 + 0, 1, 9.75, 9.75 );
--setScaleKey( spep_3-3 + 2, 1, 9.77, 9.77 );
setScaleKey( spep_3-3 + 4, 1, 9.75, 9.75 );
setScaleKey( spep_3-3 + 6, 1, 9.69, 9.69 );
setScaleKey( spep_3-3 + 8, 1, 9.59, 9.59 );
setScaleKey( spep_3-3 + 10, 1, 9.45, 9.45 );
setScaleKey( spep_3-3 + 12, 1, 9.27, 9.27 );
setScaleKey( spep_3-3 + 14, 1, 9.06, 9.06 );
setScaleKey( spep_3-3 + 16, 1, 8.8, 8.8 );
setScaleKey( spep_3-3 + 18, 1, 8.5, 8.5 );
setScaleKey( spep_3-3 + 20, 1, 8.17, 8.17 );
setScaleKey( spep_3-3 + 22, 1, 7.8, 7.8 );
setScaleKey( spep_3-3 + 24, 1, 7.38, 7.38 );
setScaleKey( spep_3-3 + 26, 1, 6.93, 6.93 );
setScaleKey( spep_3-3 + 29, 1, 6.44, 6.44 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );
setScaleKey( spep_3-3 + 32, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 34, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 48, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 52, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_3-3 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 58, 1, 2.27, 2.27 );
setScaleKey( spep_3-3 + 60, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 62, 1, 2.56, 2.56 );
setScaleKey( spep_3-3 + 64, 1, 2.71, 2.71 );
setScaleKey( spep_3-3 + 66, 1, 2.85, 2.85 );
setScaleKey( spep_3-3 + 68, 1, 3, 3 );
setScaleKey( spep_3-3 + 70, 1, 3.14, 3.14 );
setScaleKey( spep_3-3 + 72, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 74, 1, 3.43, 3.43 );
setScaleKey( spep_3-3 + 76, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 78, 1, 3.71, 3.71 );

setRotateKey( spep_3 + 0, 1, -55 );
setRotateKey( spep_3-3 + 29, 1, -55 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 34, 1, 21 );
setRotateKey( spep_3-3 + 36, 1, 19.6 );
setRotateKey( spep_3-3 + 38, 1, 18.2 );
setRotateKey( spep_3-3 + 40, 1, 16.8 );
setRotateKey( spep_3-3 + 42, 1, 15.4 );
setRotateKey( spep_3-3 + 44, 1, 14 );
setRotateKey( spep_3-3 + 46, 1, 12.5 );
setRotateKey( spep_3-3 + 48, 1, 11.1 );
setRotateKey( spep_3-3 + 50, 1, 9.7 );
setRotateKey( spep_3-3 + 52, 1, 8.3 );
setRotateKey( spep_3-3 + 54, 1, 6.9 );
setRotateKey( spep_3-3 + 56, 1, 5.5 );
setRotateKey( spep_3-3 + 58, 1, 4.1 );
setRotateKey( spep_3-3 + 60, 1, 2.7 );
setRotateKey( spep_3-3 + 62, 1, 1.3 );
setRotateKey( spep_3-3 + 64, 1, -0.1 );
setRotateKey( spep_3-3 + 66, 1, -1.5 );
setRotateKey( spep_3-3 + 68, 1, -3 );
setRotateKey( spep_3-3 + 70, 1, -4.4 );
setRotateKey( spep_3-3 + 72, 1, -5.8 );
setRotateKey( spep_3-3 + 74, 1, -7.2 );
setRotateKey( spep_3-3 + 76, 1, -8.6 );
setRotateKey( spep_3-3 + 78, 1, -10 );

--SE
--悟飯アッパー
SE012 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 34, 1011, "",spep_3 + 102, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 34, SE014, 89 );
SE015 = playSeVer2( spep_3 + 34, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 36, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 46, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE017, 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_4=spep_3+76;
------------------------------------------------------
--斜め下に二人突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge2 = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, plunge2, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, plunge2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, plunge2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, plunge2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, plunge2, 0 );
setEffRotateKey( spep_4 + 70, plunge2, 0 );
setEffAlphaKey( spep_4 + 0, plunge2, 255 );
setEffAlphaKey( spep_4 + 70, plunge2, 255 );
setEffAlphaKey( spep_4 + 71, plunge2, 0 );
setEffAlphaKey( spep_4 + 72, plunge2, 0 );

--SE
--二人横向き突っ込む
SE018 = playSeVer2( spep_4 + 0, 9, "",spep_4 + 94, 0, 4, -1);
SE019 = playSeVer2( spep_4 + 0, 1314, "",spep_4 + 94, 0, 4, -1);
SE020 = playSeVer2( spep_4 + 68, 1232, "",spep_4 + 94, 0, 4, -1);

--白フェード
entryFade( spep_4 + 62, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+70;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_5, SE_05);
    speff = entryEffect( spep_5, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94; 
------------------------------------------------------
--腕を振りかぶりながら画面手前へ
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle = entryEffect( spep_6 + 0, SP_09, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, sprinkle, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, sprinkle, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, sprinkle, 1.0, 1.0 );
setEffScaleKey( spep_6 + 44, sprinkle, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sprinkle, 0 );
setEffRotateKey( spep_6 + 44, sprinkle, 0 );
setEffAlphaKey( spep_6 + 0, sprinkle, 255 );
setEffAlphaKey( spep_6 + 42, sprinkle, 255 );
setEffAlphaKey( spep_6 + 43, sprinkle, 255 );
setEffAlphaKey( spep_6 + 44, sprinkle, 0 );

--SE
--二人向かってくる
SE022 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE022, 86 );
SE023 = playSeVer2( spep_6 + 0, 1314, "",spep_6 + 82, 0, 10, -1);
setSeVolumeByWorkId( spep_6 + 0, SE023, 83 );
SE024 = playSeVer2( spep_6 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE024, 51 );
setTimeStretch( SE024, 1.11, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 44; 
------------------------------------------------------
--ボディーブロー
------------------------------------------------------
-- ** エフェクト等 ** --
blow_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, blow_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, blow_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, blow_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, blow_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, blow_f, 0 );
setEffRotateKey( spep_7 + 46, blow_f, 0 );
setEffAlphaKey( spep_7 + 0, blow_f, 255 );
setEffAlphaKey( spep_7 + 44, blow_f, 255 );
setEffAlphaKey( spep_7 + 45, blow_f, 255 );
setEffAlphaKey( spep_7 + 46, blow_f, 0 );

-- ** エフェクト等 ** --
blow_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, blow_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, blow_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, blow_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 46, blow_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, blow_b, 0 );
setEffRotateKey( spep_7 + 46, blow_b, 0 );
setEffAlphaKey( spep_7 + 0, blow_b, 255 );
setEffAlphaKey( spep_7 + 44, blow_b, 255 );
setEffAlphaKey( spep_7 + 45, blow_b, 255 );
setEffAlphaKey( spep_7 + 46, blow_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 48, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 + 0, 1, 933.6, 558.3 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 797.1, 432.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 589.6, 398.4 , 0 );
setMoveKey( spep_7-3 + 6, 1, 479.1, 285.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, 276.4, 137 , 0 );
setMoveKey( spep_7-3 + 10, 1, 295.8, 189.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 313.7, 183.1 , 0 );
setMoveKey( spep_7-3 + 14, 1, 331.6, 177.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 324.3, 186.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 317, 197.6 , 0 );
setMoveKey( spep_7-3 + 20, 1, 323.9, 190.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, 330.7, 183.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 335.8, 188 , 0 );
setMoveKey( spep_7-3 + 26, 1, 341, 192.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 346.2, 197.2 , 0 );
setMoveKey( spep_7-3 + 30, 1, 342.1, 196 , 0 );
setMoveKey( spep_7-3 + 32, 1, 338.1, 195 , 0 );
setMoveKey( spep_7-3 + 34, 1, 344.8, 192.8 , 0 );
setMoveKey( spep_7-3 + 36, 1, 351.7, 190.6 , 0 );
setMoveKey( spep_7-3 + 38, 1, 347.6, 194.9 , 0 );
setMoveKey( spep_7-3 + 40, 1, 343.4, 199.2 , 0 );
setMoveKey( spep_7-3 + 42, 1, 347.5, 198 , 0 );
setMoveKey( spep_7-3 + 44, 1, 351.4, 196.9 , 0 );
setMoveKey( spep_7-3 + 46, 1, 353.5, 198 , 0 );
setMoveKey( spep_7-1 + 48, 1, 355.6, 199 , 0 );

setScaleKey( spep_7 + 0, 1, 19.21,19.21);
setScaleKey( spep_7-3 + 4, 1, 12.46,12.46);
setScaleKey( spep_7-3 + 6, 1, 9.09,9.09);
setScaleKey( spep_7-3 + 8, 1, 5.72,5.72);
setScaleKey( spep_7-3 + 10, 1, 5.71,5.71);
setScaleKey( spep_7-3 + 12, 1, 5.71,5.71);
setScaleKey( spep_7-3 + 14, 1, 5.7,5.7);
setScaleKey( spep_7-3 + 16, 1, 5.7,5.7);
setScaleKey( spep_7-3 + 18, 1, 5.69,5.69);
setScaleKey( spep_7-3 + 20, 1, 5.69,5.69);
setScaleKey( spep_7-3 + 22, 1, 5.68,5.68);
setScaleKey( spep_7-3 + 24, 1, 5.68,5.68);
setScaleKey( spep_7-3 + 26, 1, 5.66,5.66);
setScaleKey( spep_7-3 + 28, 1, 5.66,5.66);
setScaleKey( spep_7-3 + 30, 1, 5.65,5.65);
setScaleKey( spep_7-3 + 32, 1, 5.65,5.65);
setScaleKey( spep_7-3 + 34, 1, 5.64,5.64);
setScaleKey( spep_7-3 + 36, 1, 5.64,5.64);
setScaleKey( spep_7-3 + 38, 1, 5.63,5.63);
setScaleKey( spep_7-3 + 40, 1, 5.63,5.63);
setScaleKey( spep_7-3 + 42, 1, 5.62,5.62);
setScaleKey( spep_7-3 + 44, 1, 5.62,5.62);
setScaleKey( spep_7-1 + 48, 1, 5.61,5.61);

setRotateKey( spep_7 + 0, 1, -89 );
setRotateKey( spep_7-1 + 48, 1, -89 );

--SE
--二人パンチ
SE025 = playSeVer2( spep_7 + 0, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_7 + 8, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_7 + 8, 1052, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 46; 
------------------------------------------------------
--前転
------------------------------------------------------
-- ** エフェクト等 ** --
turn = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, turn, 0, 0, 0 );
setEffMoveKey( spep_8 + 16, turn, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, turn, 1.0, 1.0 );
setEffScaleKey( spep_8 + 16, turn, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, turn, 0 );
setEffRotateKey( spep_8 + 16, turn, 0 );
setEffAlphaKey( spep_8 + 0, turn, 255 );
setEffAlphaKey( spep_8 + 14, turn, 255 );
setEffAlphaKey( spep_8 + 15, turn, 255 );
setEffAlphaKey( spep_8 + 16, turn, 0 );

--SE
--二人回転
SE028 = playSeVer2( spep_8 + 0, 1116, "",spep_8 + 40, 0, 16, -1);
SE029 = playSeVer2( spep_8 + 0, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE029, 129 );
SE030 = playSeVer2( spep_8 + 2, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_8 + 4, 1117, "",spep_8 + 42, 0, 22, -1);
setSeVolumeByWorkId( spep_8 + 4, SE031, 124 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 20, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 16;
------------------------------------------------------
--蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 46, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_f, 0 );
setEffRotateKey( spep_9 + 46, kick2_f, 0 );
setEffAlphaKey( spep_9 + 0, kick2_f, 255 );
setEffAlphaKey( spep_9 + 44, kick2_f, 255 );
setEffAlphaKey( spep_9 + 45, kick2_f, 255 );
setEffAlphaKey( spep_9 + 46, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_9 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 46, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_b, 0 );
setEffRotateKey( spep_9 + 46, kick2_b, 0 );
setEffAlphaKey( spep_9 + 0, kick2_b, 255 );
setEffAlphaKey( spep_9 + 44, kick2_b, 255 );
setEffAlphaKey( spep_9 + 45, kick2_b, 255 );
setEffAlphaKey( spep_9 + 46, kick2_b, 0 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );

changeAnime( spep_9 + 0, 1, 108 );

setMoveKey( spep_9 + 0, 1, -119.4, 131 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -99.1, 147.1 , 0 );
setMoveKey( spep_9-3 + 4, 1, -87.7, 65.1 , 0 );
setMoveKey( spep_9-3 + 5, 1, -87.7, 65.1 , 0 );
setMoveKey( spep_9-3 + 6, 1, -20.3, -8.2 , 0 );
setMoveKey( spep_9-3 + 7, 1, -20.3, -8.2 , 0 );
setMoveKey( spep_9-3 + 8, 1, 86.9, -107.2 , 0 );
setMoveKey( spep_9-3 + 9, 1, 86.9, -107.2 , 0 );
setMoveKey( spep_9-3 + 10, 1, 70.7, -130.6 , 0 );
setMoveKey( spep_9-3 + 11, 1, 70.7, -130.6 , 0 );
setMoveKey( spep_9-3 + 12, 1, 125.9, -182.7 , 0 );
setMoveKey( spep_9-3 + 13, 1, 125.9, -182.7 , 0 );
setMoveKey( spep_9-3 + 14, 1, 152.7, -193.6 , 0 );
setMoveKey( spep_9-3 + 15, 1, 152.7, -193.6 , 0 );
setMoveKey( spep_9-3 + 16, 1, 175, -242.7 , 0 );
setMoveKey( spep_9-3 + 17, 1, 175, -242.7 , 0 );
setMoveKey( spep_9-3 + 18, 1, 218.7, -265.5 , 0 );
setMoveKey( spep_9-3 + 19, 1, 218.7, -265.5 , 0 );
setMoveKey( spep_9-3 + 20, 1, 233.9, -295 , 0 );
setMoveKey( spep_9-3 + 21, 1, 233.9, -295 , 0 );
setMoveKey( spep_9-3 + 22, 1, 259, -339.5 , 0 );
setMoveKey( spep_9-3 + 23, 1, 259, -339.5 , 0 );
setMoveKey( spep_9-3 + 24, 1, 281.3, -364.9 , 0 );
setMoveKey( spep_9-3 + 25, 1, 281.3, -364.9 , 0 );
setMoveKey( spep_9-3 + 26, 1, 312.7, -388.2 , 0 );
setMoveKey( spep_9-3 + 27, 1, 312.7, -388.2 , 0 );
setMoveKey( spep_9-3 + 28, 1, 328.4, -415.9 , 0 );
setMoveKey( spep_9-3 + 29, 1, 328.4, -415.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 360.6, -456.6 , 0 );
setMoveKey( spep_9-3 + 31, 1, 360.6, -456.6 , 0 );
setMoveKey( spep_9-3 + 32, 1, 379.6, -484 , 0 );
setMoveKey( spep_9-3 + 33, 1, 379.6, -484 , 0 );
setMoveKey( spep_9-3 + 34, 1, 406.4, -513.4 , 0 );
setMoveKey( spep_9-3 + 35, 1, 406.4, -513.4 , 0 );
setMoveKey( spep_9-3 + 36, 1, 442.1, -545.7 , 0 );
setMoveKey( spep_9-3 + 37, 1, 442.1, -545.7 , 0 );
setMoveKey( spep_9-3 + 38, 1, 460.1, -589.8 , 0 );
setMoveKey( spep_9-3 + 39, 1, 460.1, -589.8 , 0 );
setMoveKey( spep_9-3 + 40, 1, 486.3, -621.9 , 0 );
setMoveKey( spep_9-3 + 41, 1, 486.3, -621.9 , 0 );
setMoveKey( spep_9-3 + 42, 1, 512.6, -654.1 , 0 );
setMoveKey( spep_9-3 + 43, 1, 512.6, -654.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, 538.9, -686.2 , 0 );
setMoveKey( spep_9-1 + 46, 1, 538.9, -686.2 , 0 );

setScaleKey( spep_9 + 0, 1, 2.26,2.26);
setScaleKey( spep_9-3 + 4, 1, 2.44,2.44);
setScaleKey( spep_9-3 + 5, 1, 2.44,2.44);
setScaleKey( spep_9-3 + 6, 1, 2.87,2.87);
setScaleKey( spep_9-3 + 7, 1, 2.87,2.87);
setScaleKey( spep_9-3 + 8, 1, 3.29,3.29);
setScaleKey( spep_9-3 + 9, 1, 3.29,3.29);
setScaleKey( spep_9-3 + 10, 1, 3.38,3.38);
setScaleKey( spep_9-3 + 11, 1, 3.38,3.38);
setScaleKey( spep_9-3 + 12, 1, 3.46,3.46);
setScaleKey( spep_9-3 + 13, 1, 3.46,3.46);
setScaleKey( spep_9-3 + 14, 1, 3.55,3.55);
setScaleKey( spep_9-3 + 15, 1, 3.55,3.55);
setScaleKey( spep_9-3 + 16, 1, 3.63,3.63);
setScaleKey( spep_9-3 + 17, 1, 3.63,3.63);
setScaleKey( spep_9-3 + 18, 1, 3.72,3.72);
setScaleKey( spep_9-3 + 19, 1, 3.72,3.72);
setScaleKey( spep_9-3 + 20, 1, 3.81,3.81);
setScaleKey( spep_9-3 + 21, 1, 3.81,3.81);
setScaleKey( spep_9-3 + 22, 1, 3.89,3.89);
setScaleKey( spep_9-3 + 23, 1, 3.89,3.89);
setScaleKey( spep_9-3 + 24, 1, 3.98,3.98);
setScaleKey( spep_9-3 + 25, 1, 3.98,3.98);
setScaleKey( spep_9-3 + 26, 1, 4.08,4.08);
setScaleKey( spep_9-3 + 27, 1, 4.08,4.08);
setScaleKey( spep_9-3 + 28, 1, 4.16,4.16);
setScaleKey( spep_9-3 + 29, 1, 4.16,4.16);
setScaleKey( spep_9-3 + 30, 1, 4.25,4.25);
setScaleKey( spep_9-3 + 31, 1, 4.25,4.25);
setScaleKey( spep_9-3 + 32, 1, 4.34,4.34);
setScaleKey( spep_9-3 + 33, 1, 4.34,4.34);
setScaleKey( spep_9-3 + 34, 1, 4.42,4.42);
setScaleKey( spep_9-3 + 35, 1, 4.42,4.42);
setScaleKey( spep_9-3 + 36, 1, 4.51,4.51);
setScaleKey( spep_9-3 + 37, 1, 4.51,4.51);
setScaleKey( spep_9-3 + 38, 1, 4.6,4.6);
setScaleKey( spep_9-3 + 39, 1, 4.6,4.6);
setScaleKey( spep_9-3 + 40, 1, 4.68,4.68);
setScaleKey( spep_9-3 + 41, 1, 4.68,4.68);
setScaleKey( spep_9-3 + 42, 1, 4.77,4.77);
setScaleKey( spep_9-3 + 43, 1, 4.77,4.77);
setScaleKey( spep_9-3 + 44, 1, 4.86,4.86);
setScaleKey( spep_9-1 + 46, 1, 4.86,4.86);

setRotateKey( spep_9 + 0, 1, 48 );
setRotateKey( spep_9-1 + 46, 1, 48 );

--SE
--二人キック
SE032 = playSeVer2( spep_9 + 6, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 6, SE032, 91 );
SE033 = playSeVer2( spep_9 + 10, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE033, 75 );
SE034 = playSeVer2( spep_9 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE034, 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 46;
------------------------------------------------------
--敵が岩に向かって吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_10 + 0, SP_15, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_10 + 26, fly, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_10 + 26, fly, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fly, 0 );
setEffRotateKey( spep_10 + 26, fly, 0 );
setEffAlphaKey( spep_10 + 0, fly, 255 );
setEffAlphaKey( spep_10 + 24, fly, 255 );
setEffAlphaKey( spep_10 + 25, fly, 255 );
setEffAlphaKey( spep_10 + 26, fly, 0 );

--敵の動き
changeAnime( spep_10 + 0, 1, 5 );

setMoveKey( spep_10 + 0, 1, -429.2, -374.1 , 0 );
--setMoveKey( spep_10-3 + 2, 1, -398.3, -347.6 , 0 );
setMoveKey( spep_10-3 + 4, 1, -367.5, -321.1 , 0 );
setMoveKey( spep_10-3 + 6, 1, -336.6, -294.7 , 0 );
setMoveKey( spep_10-3 + 8, 1, -305.8, -268.2 , 0 );
setMoveKey( spep_10-3 + 10, 1, -274.9, -241.7 , 0 );
setMoveKey( spep_10-3 + 12, 1, -244.1, -215.2 , 0 );
setMoveKey( spep_10-3 + 14, 1, -213.2, -188.7 , 0 );
setMoveKey( spep_10-3 + 16, 1, -182.4, -162.3 , 0 );
setMoveKey( spep_10-3 + 18, 1, -151.6, -135.8 , 0 );
setMoveKey( spep_10-3 + 20, 1, -120.7, -109.3 , 0 );
setMoveKey( spep_10-3 + 22, 1, -89.9, -82.8 , 0 );
setMoveKey( spep_10-3 + 24, 1, -59, -56.3 , 0 );
setMoveKey( spep_10-1 + 26, 1, -28.2, -29.8 , 0 );

setScaleKey( spep_10 + 0, 1, 6.21, 6.21 );
--setScaleKey( spep_10-3 + 2, 1, 5.77, 5.77 );
setScaleKey( spep_10-3 + 4, 1, 5.34, 5.34 );
setScaleKey( spep_10-3 + 6, 1, 4.9, 4.9 );
setScaleKey( spep_10-3 + 8, 1, 4.46, 4.46 );
setScaleKey( spep_10-3 + 10, 1, 4.03, 4.03 );
setScaleKey( spep_10-3 + 12, 1, 3.59, 3.59 );
setScaleKey( spep_10-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_10-3 + 16, 1, 2.72, 2.72 );
setScaleKey( spep_10-3 + 18, 1, 2.28, 2.28 );
setScaleKey( spep_10-3 + 20, 1, 1.85, 1.85 );
setScaleKey( spep_10-3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_10-3 + 24, 1, 0.97, 0.97 );
setScaleKey( spep_10-3 + 26, 1, 0.54, 0.54 );
setScaleKey( spep_10-1 + 28, 1, 0.1, 0.1 );

setRotateKey( spep_10 + 0, 1, 86 );
setRotateKey( spep_10-1 + 0, 1, 86 );

--SE
--敵が飛んでいく
SE035 = playSeVer2( spep_10 + 0, 1121, "",spep_10 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 0, SE035, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 26, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11= spep_10 + 26;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_16, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 120, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 120, finish, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 16, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );

setMoveKey( spep_11 + 0, 1, -477.6, 224.8 , 0 );
setMoveKey( spep_11 + 2, 1, -410.5, 178.7 , 0 );
setMoveKey( spep_11 + 4, 1, -343.3, 132.7 , 0 );
setMoveKey( spep_11 + 6, 1, -276.2, 86.6 , 0 );
setMoveKey( spep_11 + 8, 1, -209, 40.6 , 0 );
setMoveKey( spep_11 + 10, 1, -141.9, -5.5 , 0 );
setMoveKey( spep_11 + 12, 1, -74.7, -51.5 , 0 );
setMoveKey( spep_11-1 + 16, 1, -7.6, -97.6 , 0 );

setScaleKey( spep_11-3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_11-1 + 16, 1, 0.5, 0.5 );

setRotateKey( spep_11 + 0, 1, 76 );
setRotateKey( spep_11-1 + 16, 1, 76 );

--SE
--爆発
SE036 = playSeVer2( spep_11 + 20, 1023, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_11 + 24, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 24, SE037, 79 );

--終わり
dealDamage(spep_11+16);
endPhase( spep_11 + 116 );
else 
------------------------------------------------------------------------------------------------------------
-- 　てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--対峙
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
confrontation = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_0 + 0, confrontation, 0, 0, 0 );
setEffMoveKey( spep_0 + 86, confrontation, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, confrontation, 1.0, 1.0 );
setEffScaleKey( spep_0 + 86, confrontation, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, confrontation, 0 );
setEffRotateKey( spep_0 + 86, confrontation, 0 );
setEffAlphaKey( spep_0 + 0, confrontation, 255 );
setEffAlphaKey( spep_0 + 84, confrontation, 255 );
setEffAlphaKey( spep_0 + 85, confrontation, 255 );
setEffAlphaKey( spep_0 + 86, confrontation, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0 + 18, 1, 0 );

changeAnime( spep_0 + 0, 1, 102 );

setMoveKey( spep_0-1 + 1, 1, 228.1, -230 , 0 );
setMoveKey( spep_0-1 + 2, 1, 238.9, -237.2 , 0 );
setMoveKey( spep_0-1 + 3, 1, 238.9, -237.2 , 0 );
setMoveKey( spep_0-1 + 4, 1, 272.9, -259.7 , 0 );
setMoveKey( spep_0-1 + 5, 1, 272.9, -259.7 , 0 );
setMoveKey( spep_0-1 + 6, 1, 333.9, -299.4 , 0 );
setMoveKey( spep_0-1 + 7, 1, 333.9, -299.4 , 0 );
setMoveKey( spep_0-1 + 8, 1, 426.3, -359.1 , 0 );
setMoveKey( spep_0-1 + 10, 1, 557, -442.2 , 0 );
setMoveKey( spep_0-1 + 12, 1, 736.4, -554.4 , 0 );
setMoveKey( spep_0-1 + 14, 1, 984.6, -705.6 , 0 );
setMoveKey( spep_0-1 + 16, 1, 1364, -925.2 , 0 );
setMoveKey( spep_0 + 18, 1, 1367.2, -927.2 , 0 );

setScaleKey( spep_0-1 + 1, 1, 4, 4 );
setScaleKey( spep_0-1 + 2, 1, 4.11, 4.13 );
setScaleKey( spep_0-1 + 3, 1, 4.11, 4.13 );
setScaleKey( spep_0-1 + 4, 1, 4.48, 4.53 );
setScaleKey( spep_0-1 + 5, 1, 4.48, 4.53 );
setScaleKey( spep_0-1 + 6, 1, 5.13, 5.23 );
setScaleKey( spep_0-1 + 7, 1, 5.13, 5.23 );
setScaleKey( spep_0-1 + 8, 1, 6.12, 6.29 );
setScaleKey( spep_0-1 + 10, 1, 7.53, 7.77 );
setScaleKey( spep_0-1 + 12, 1, 9.47, 9.76 );
setScaleKey( spep_0-1 + 14, 1, 12.17, 12.45 );
setScaleKey( spep_0-1 + 16, 1, 16.35, 16.35 );
setScaleKey( spep_0 + 18, 1, 16.39, 16.39 );


setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 18, 1, 0 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 150, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  150,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  150,  515);

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
]]
--SE
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, -1);
setTimeStretch( SE001, 0.91, 30, 4 );

--顔カットイン
SE002 = playSeVer2( spep_x + 10, 1018, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+86;
------------------------------------------------------
--二人突っ込む→クリリン背後に回り込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, plunge_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, plunge_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, plunge_f, -1.0, 1.0 );
setEffScaleKey( spep_1 + 56, plunge_f, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, plunge_f, 0 );
setEffRotateKey( spep_1 + 56, plunge_f, 0 );
setEffAlphaKey( spep_1 + 0, plunge_f, 255 );
setEffAlphaKey( spep_1 + 54, plunge_f, 255 );
setEffAlphaKey( spep_1 + 55, plunge_f, 255 );
setEffAlphaKey( spep_1 + 56, plunge_f, 0 );

-- ** エフェクト等 ** --
plunge_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_1 + 0, plunge_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, plunge_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, plunge_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, plunge_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, plunge_b, 0 );
setEffRotateKey( spep_1 + 56, plunge_b, 0 );
setEffAlphaKey( spep_1 + 0, plunge_b, 255 );
setEffAlphaKey( spep_1 + 54, plunge_b, 255 );
setEffAlphaKey( spep_1 + 55, plunge_b, 255 );
setEffAlphaKey( spep_1 + 56, plunge_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );

changeAnime( spep_1 + 0, 1, 102 );

setMoveKey( spep_1 + 0, 1, 214.3, -224 , 0 );
--setMoveKey( spep_1-3 + 2, 1, 193, -203 , 0 );
setMoveKey( spep_1-3 + 4, 1, 171.8, -181.9 , 0 );
setMoveKey( spep_1-3 + 6, 1, 150.5, -160.9 , 0 );
setMoveKey( spep_1-3 + 8, 1, 129.2, -139.8 , 0 );
setMoveKey( spep_1-3 + 10, 1, 108, -118.8 , 0 );
setMoveKey( spep_1-3 + 12, 1, 86.8, -97.8 , 0 );
setMoveKey( spep_1-3 + 14, 1, 65.6, -76.7 , 0 );
setMoveKey( spep_1-3 + 16, 1, 44.3, -55.7 , 0 );
setMoveKey( spep_1-3 + 18, 1, 23, -34.7 , 0 );
setMoveKey( spep_1 + 40, 1, 23, -34.7 , 0 );

setScaleKey( spep_1 + 0, 1, 4.5, 4.5 );
--setScaleKey( spep_1-3 + 2, 1, 4.23, 4.23 );
setScaleKey( spep_1-3 + 4, 1, 3.97, 3.97 );
setScaleKey( spep_1-3 + 6, 1, 3.7, 3.7 );
setScaleKey( spep_1-3 + 8, 1, 3.44, 3.44 );
setScaleKey( spep_1-3 + 10, 1, 3.17, 3.17 );
setScaleKey( spep_1-3 + 12, 1, 2.91, 2.91 );
setScaleKey( spep_1-3 + 14, 1, 2.64, 2.64 );
setScaleKey( spep_1-3 + 16, 1, 2.38, 2.38 );
setScaleKey( spep_1-3 + 18, 1, 2.11, 2.11 );
setScaleKey( spep_1 + 40, 1, 2.11, 2.11 );

setRotateKey( spep_1 + 0, 1, 12 );
setRotateKey( spep_1 + 40, 1, 12 );

--SE
--二人飛び込む
SE003 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_1 + 0, 44, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_1 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵位置の固定
    setMoveKey( SP_dodge + 9, 1, 23, -34.7 , 0 );

    setScaleKey( SP_dodge + 9, 1, 2.11, 2.11 );

    setRotateKey( SP_dodge + 9, 1, 12 );

    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setMoveKey( spep_1-1 + 56, 1, 23, -34.7 , 0 );

setScaleKey( spep_1-1 + 56, 1, 2.11, 2.11 );

setRotateKey( spep_1-1 + 56, 1, 12 );

--SE
--クリリン瞬間移動
SE005 = playSeVer2( spep_1 + 32, 1109, "", 0, 0, 0, -1);

--次の準備 
spep_2=spep_1+56;
------------------------------------------------------
--クリリン回し蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 76, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 74, kick_f, 255 );
setEffAlphaKey( spep_2 + 75, kick_f, 255 );
setEffAlphaKey( spep_2 + 76, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 76, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 76, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 76, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 74, kick_b, 255 );
setEffAlphaKey( spep_2 + 75, kick_b, 255 );
setEffAlphaKey( spep_2 + 76, kick_b, 0 );

--敵の動き
changeAnime( spep_2 + 0, 1, 100 );
changeAnime( spep_2-3 + 20, 1, 7 );

setMoveKey( spep_2 + 0, 1, -102.4, -112.7 , 0 );
setMoveKey( spep_2-3 + 19, 1, -102.4, -112.7 , 0 );
setMoveKey( spep_2-3 + 20, 1, -21.8, -13.5 , 0 );
setMoveKey( spep_2-3 + 22, 1, -59.8, -43.6 , 0 );
setMoveKey( spep_2-3 + 24, 1, -68.7, -69.8 , 0 );
setMoveKey( spep_2-3 + 26, 1, -119.6, -61 , 0 );
setMoveKey( spep_2-3 + 28, 1, -135.4, -94.9 , 0 );
setMoveKey( spep_2-3 + 30, 1, -111.3, -77.5 , 0 );
setMoveKey( spep_2-3 + 32, 1, -94.2, -55.1 , 0 );
setMoveKey( spep_2-3 + 34, 1, -52, -48.3 , 0 );
setMoveKey( spep_2-3 + 36, 1, -14.7, -26.8 , 0 );
setMoveKey( spep_2-3 + 38, 1, 28.1, -1.3 , 0 );
setMoveKey( spep_2-3 + 40, 1, 76.6, 28 , 0 );
setMoveKey( spep_2-3 + 42, 1, 130.7, 61.3 , 0 );
setMoveKey( spep_2-3 + 44, 1, 125.4, 57.6 , 0 );
setMoveKey( spep_2-3 + 46, 1, 120.3, 54 , 0 );
setMoveKey( spep_2-3 + 48, 1, 115.2, 50.6 , 0 );
setMoveKey( spep_2-3 + 50, 1, 110.1, 47 , 0 );
setMoveKey( spep_2-3 + 52, 1, 105.2, 43.7 , 0 );
setMoveKey( spep_2-3 + 54, 1, 100.3, 40.4 , 0 );
setMoveKey( spep_2-3 + 56, 1, 95.5, 37.1 , 0 );
setMoveKey( spep_2-3 + 58, 1, 90.8, 33.8 , 0 );
setMoveKey( spep_2-3 + 60, 1, 86.1, 30.6 , 0 );
setMoveKey( spep_2-3 + 62, 1, 81.5, 27.5 , 0 );
setMoveKey( spep_2-3 + 64, 1, 77, 24.5 , 0 );
setMoveKey( spep_2-3 + 66, 1, 72.6, 21.4 , 0 );
setMoveKey( spep_2-3 + 68, 1, 68.3, 18.4 , 0 );
setMoveKey( spep_2-3 + 70, 1, 64.1, 15.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 60, 12.7 , 0 );
setMoveKey( spep_2-3 + 74, 1, 55.9, 9.9 , 0 );
setMoveKey( spep_2-3 + 76, 1, 51.8, 7.2 , 0 );
setMoveKey( spep_2-3 + 78, 1, 47.9, 4.5 , 0 );

setScaleKey( spep_2 + 0, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 19, 1, 3.13, 3.13 );
setScaleKey( spep_2-3 + 20, 1, 1.32, 1.32 );
setScaleKey( spep_2-3 + 22, 1, 1.38, 1.38 );
setScaleKey( spep_2-3 + 24, 1, 1.44, 1.44 );
setScaleKey( spep_2-3 + 26, 1, 1.49, 1.5 );
setScaleKey( spep_2-3 + 28, 1, 1.55, 1.56 );
setScaleKey( spep_2-3 + 30, 1, 1.43, 1.43 );
setScaleKey( spep_2-3 + 32, 1, 1.29, 1.3 );
setScaleKey( spep_2-3 + 34, 1, 1.15, 1.16 );
setScaleKey( spep_2-3 + 36, 1, 0.99, 1 );
setScaleKey( spep_2-3 + 38, 1, 0.82, 0.83 );
setScaleKey( spep_2-3 + 40, 1, 0.63, 0.64 );
setScaleKey( spep_2-3 + 42, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 44, 1, 0.45, 0.45 );
setScaleKey( spep_2-3 + 46, 1, 0.46, 0.46 );
setScaleKey( spep_2-3 + 48, 1, 0.47, 0.47 );
setScaleKey( spep_2-3 + 50, 1, 0.48, 0.48 );
setScaleKey( spep_2-3 + 52, 1, 0.48, 0.49 );
setScaleKey( spep_2-3 + 54, 1, 0.49, 0.5 );
setScaleKey( spep_2-3 + 56, 1, 0.5, 0.51 );
setScaleKey( spep_2-3 + 58, 1, 0.51, 0.52 );
setScaleKey( spep_2-3 + 60, 1, 0.52, 0.53 );
setScaleKey( spep_2-3 + 62, 1, 0.53, 0.53 );
setScaleKey( spep_2-3 + 64, 1, 0.53, 0.54 );
setScaleKey( spep_2-3 + 66, 1, 0.54, 0.55 );
setScaleKey( spep_2-3 + 68, 1, 0.55, 0.56 );
setScaleKey( spep_2-3 + 70, 1, 0.56, 0.57 );
setScaleKey( spep_2-3 + 72, 1, 0.56, 0.57 );
setScaleKey( spep_2-3 + 74, 1, 0.57, 0.58 );
setScaleKey( spep_2-3 + 76, 1, 0.58, 0.59 );
setScaleKey( spep_2-3 + 78, 1, 0.58, 0.59 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 20, 1, 0 );
setRotateKey( spep_2-3 + 22, 1, -1 );
setRotateKey( spep_2-3 + 24, 1, -1.9 );
setRotateKey( spep_2-3 + 26, 1, -2.9 );
setRotateKey( spep_2-3 + 28, 1, -3.9 );
setRotateKey( spep_2-3 + 30, 1, -4.8 );
setRotateKey( spep_2-3 + 32, 1, -5.8 );
setRotateKey( spep_2-3 + 34, 1, -6.8 );
setRotateKey( spep_2-3 + 36, 1, -7.7 );
setRotateKey( spep_2-3 + 38, 1, -8.7 );
setRotateKey( spep_2-3 + 40, 1, -9.7 );
setRotateKey( spep_2-3 + 42, 1, -10.6 );
setRotateKey( spep_2-3 + 44, 1, -11.6 );
setRotateKey( spep_2-3 + 46, 1, -12.6 );
setRotateKey( spep_2-3 + 48, 1, -13.5 );
setRotateKey( spep_2-3 + 50, 1, -14.5 );
setRotateKey( spep_2-3 + 52, 1, -15.4 );
setRotateKey( spep_2-3 + 54, 1, -16.4 );
setRotateKey( spep_2-3 + 56, 1, -17.4 );
setRotateKey( spep_2-3 + 58, 1, -18.3 );
setRotateKey( spep_2-3 + 60, 1, -19.3 );
setRotateKey( spep_2-3 + 62, 1, -20.3 );
setRotateKey( spep_2-3 + 64, 1, -21.2 );
setRotateKey( spep_2-3 + 66, 1, -22.2 );
setRotateKey( spep_2-3 + 68, 1, -23.2 );
setRotateKey( spep_2-3 + 70, 1, -24.1 );
setRotateKey( spep_2-3 + 72, 1, -25.1 );
setRotateKey( spep_2-3 + 74, 1, -26.1 );
setRotateKey( spep_2-3 + 76, 1, -27 );
setRotateKey( spep_2-3 + 78, 1, -28 );

--SE
SE006 = playSeVer2( spep_2 + 18, 1004, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 24, 1010, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 24, 1187, "",spep_2 + 48, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 24, SE008, 93 );
SE009 = playSeVer2( spep_2 + 26, 19, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_2 + 26, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 26, SE010, 84 );

--敵飛んでいく
SE011 = playSeVer2( spep_2 + 34, 1183, "",spep_2 + 154, 0, 50, -1);
setSeVolumeByWorkId( spep_2 + 34, SE011, 68 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_3=spep_2+76;
------------------------------------------------------
--悟飯パンチ
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 76, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 74, panting_f, 255 );
setEffAlphaKey( spep_3 + 75, panting_f, 255 );
setEffAlphaKey( spep_3 + 76, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 76, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 76, panting_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 76, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 74, panting_b, 255 );
setEffAlphaKey( spep_3 + 75, panting_b, 255 );
setEffAlphaKey( spep_3 + 76, panting_b, 0 );

--敵の動き
setDisp( spep_3-3 + 78, 1, 0 );

changeAnime( spep_3 + 0, 1, 105 );
changeAnime( spep_3-3 + 30, 1, 107 );

setMoveKey( spep_3 + 0, 1, 546.4, -855 , 0 );
--setMoveKey( spep_3-3 + 2, 1, 546.1, -839.1 , 0 );
setMoveKey( spep_3-3 + 4, 1, 542.3, -818.4 , 0 );
setMoveKey( spep_3-3 + 6, 1, 535.3, -792.6 , 0 );
setMoveKey( spep_3-3 + 8, 1, 525, -762 , 0 );
setMoveKey( spep_3-3 + 10, 1, 511.4, -726.4 , 0 );
setMoveKey( spep_3-3 + 12, 1, 494.6, -685.8 , 0 );
setMoveKey( spep_3-3 + 14, 1, 474.5, -640.3 , 0 );
setMoveKey( spep_3-3 + 16, 1, 451.3, -589.9 , 0 );
setMoveKey( spep_3-3 + 18, 1, 424.6, -534.5 , 0 );
setMoveKey( spep_3-3 + 20, 1, 394.6, -474.2 , 0 );
setMoveKey( spep_3-3 + 22, 1, 361.4, -408.8 , 0 );
setMoveKey( spep_3-3 + 24, 1, 324.8, -338.6 , 0 );
setMoveKey( spep_3-3 + 26, 1, 285, -263.3 , 0 );
setMoveKey( spep_3-3 + 29, 1, 241.8, -183.2 , 0 );
setMoveKey( spep_3-3 + 30, 1, 277.6, 58.2 , 0 );
setMoveKey( spep_3-3 + 32, 1, 275.1, 32.3 , 0 );
setMoveKey( spep_3-3 + 34, 1, 314.6, 19.9 , 0 );
setMoveKey( spep_3-3 + 36, 1, 436.7, 50.6 , 0 );
setMoveKey( spep_3-3 + 38, 1, 474.3, 51.6 , 0 );
setMoveKey( spep_3-3 + 40, 1, 360.1, 46.3 , 0 );
setMoveKey( spep_3-3 + 42, 1, 117.3, 58.4 , 0 );
setMoveKey( spep_3-3 + 44, 1, 185.7, 55.5 , 0 );
setMoveKey( spep_3-3 + 46, 1, 254.1, 52.6 , 0 );
setMoveKey( spep_3-3 + 48, 1, 322.1, 49.7 , 0 );
setMoveKey( spep_3-3 + 50, 1, 389.8, 46.9 , 0 );
setMoveKey( spep_3-3 + 52, 1, 457.3, 44 , 0 );
setMoveKey( spep_3-3 + 54, 1, 524.6, 41.1 , 0 );
setMoveKey( spep_3-3 + 56, 1, 591.6, 38.3 , 0 );
setMoveKey( spep_3-3 + 58, 1, 658.3, 35.5 , 0 );
setMoveKey( spep_3-3 + 60, 1, 724.9, 32.7 , 0 );
setMoveKey( spep_3-3 + 62, 1, 791.1, 29.8 , 0 );
setMoveKey( spep_3-3 + 64, 1, 857.1, 27.1 , 0 );
setMoveKey( spep_3-3 + 66, 1, 922.8, 24.3 , 0 );
setMoveKey( spep_3-3 + 68, 1, 988.4, 21.5 , 0 );
setMoveKey( spep_3-3 + 70, 1, 1053.5, 18.7 , 0 );
setMoveKey( spep_3-3 + 72, 1, 1118.6, 16 , 0 );
setMoveKey( spep_3-3 + 74, 1, 1183.3, 13.2 , 0 );
setMoveKey( spep_3-3 + 76, 1, 1247.9, 10.5 , 0 );
setMoveKey( spep_3-3 + 78, 1, 1312, 7.7 , 0 );

setScaleKey( spep_3 + 0, 1, 9.75, 9.75 );
--setScaleKey( spep_3-3 + 2, 1, 9.77, 9.77 );
setScaleKey( spep_3-3 + 4, 1, 9.75, 9.75 );
setScaleKey( spep_3-3 + 6, 1, 9.69, 9.69 );
setScaleKey( spep_3-3 + 8, 1, 9.59, 9.59 );
setScaleKey( spep_3-3 + 10, 1, 9.45, 9.45 );
setScaleKey( spep_3-3 + 12, 1, 9.27, 9.27 );
setScaleKey( spep_3-3 + 14, 1, 9.06, 9.06 );
setScaleKey( spep_3-3 + 16, 1, 8.8, 8.8 );
setScaleKey( spep_3-3 + 18, 1, 8.5, 8.5 );
setScaleKey( spep_3-3 + 20, 1, 8.17, 8.17 );
setScaleKey( spep_3-3 + 22, 1, 7.8, 7.8 );
setScaleKey( spep_3-3 + 24, 1, 7.38, 7.38 );
setScaleKey( spep_3-3 + 26, 1, 6.93, 6.93 );
setScaleKey( spep_3-3 + 29, 1, 6.44, 6.44 );
setScaleKey( spep_3-3 + 30, 1, 2, 2 );
setScaleKey( spep_3-3 + 32, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 34, 1, 2.23, 2.23 );
setScaleKey( spep_3-3 + 36, 1, 2.38, 2.38 );
setScaleKey( spep_3-3 + 38, 1, 2.24, 2.24 );
setScaleKey( spep_3-3 + 40, 1, 1.8, 1.8 );
setScaleKey( spep_3-3 + 42, 1, 1.07, 1.07 );
setScaleKey( spep_3-3 + 44, 1, 1.23, 1.23 );
setScaleKey( spep_3-3 + 46, 1, 1.38, 1.38 );
setScaleKey( spep_3-3 + 48, 1, 1.53, 1.53 );
setScaleKey( spep_3-3 + 50, 1, 1.68, 1.68 );
setScaleKey( spep_3-3 + 52, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 54, 1, 1.97, 1.97 );
setScaleKey( spep_3-3 + 56, 1, 2.12, 2.12 );
setScaleKey( spep_3-3 + 58, 1, 2.27, 2.27 );
setScaleKey( spep_3-3 + 60, 1, 2.41, 2.41 );
setScaleKey( spep_3-3 + 62, 1, 2.56, 2.56 );
setScaleKey( spep_3-3 + 64, 1, 2.71, 2.71 );
setScaleKey( spep_3-3 + 66, 1, 2.85, 2.85 );
setScaleKey( spep_3-3 + 68, 1, 3, 3 );
setScaleKey( spep_3-3 + 70, 1, 3.14, 3.14 );
setScaleKey( spep_3-3 + 72, 1, 3.28, 3.28 );
setScaleKey( spep_3-3 + 74, 1, 3.43, 3.43 );
setScaleKey( spep_3-3 + 76, 1, 3.57, 3.57 );
setScaleKey( spep_3-3 + 78, 1, 3.71, 3.71 );

setRotateKey( spep_3 + 0, 1, -55 );
setRotateKey( spep_3-3 + 29, 1, -55 );
setRotateKey( spep_3-3 + 30, 1, 21 );
setRotateKey( spep_3-3 + 34, 1, 21 );
setRotateKey( spep_3-3 + 36, 1, 19.6 );
setRotateKey( spep_3-3 + 38, 1, 18.2 );
setRotateKey( spep_3-3 + 40, 1, 16.8 );
setRotateKey( spep_3-3 + 42, 1, 15.4 );
setRotateKey( spep_3-3 + 44, 1, 14 );
setRotateKey( spep_3-3 + 46, 1, 12.5 );
setRotateKey( spep_3-3 + 48, 1, 11.1 );
setRotateKey( spep_3-3 + 50, 1, 9.7 );
setRotateKey( spep_3-3 + 52, 1, 8.3 );
setRotateKey( spep_3-3 + 54, 1, 6.9 );
setRotateKey( spep_3-3 + 56, 1, 5.5 );
setRotateKey( spep_3-3 + 58, 1, 4.1 );
setRotateKey( spep_3-3 + 60, 1, 2.7 );
setRotateKey( spep_3-3 + 62, 1, 1.3 );
setRotateKey( spep_3-3 + 64, 1, -0.1 );
setRotateKey( spep_3-3 + 66, 1, -1.5 );
setRotateKey( spep_3-3 + 68, 1, -3 );
setRotateKey( spep_3-3 + 70, 1, -4.4 );
setRotateKey( spep_3-3 + 72, 1, -5.8 );
setRotateKey( spep_3-3 + 74, 1, -7.2 );
setRotateKey( spep_3-3 + 76, 1, -8.6 );
setRotateKey( spep_3-3 + 78, 1, -10 );

--SE
--悟飯アッパー
SE012 = playSeVer2( spep_3 + 28, 1003, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 34, 1009, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 34, 1011, "",spep_3 + 102, 0, 50, -1);
setSeVolumeByWorkId( spep_3 + 34, SE014, 89 );
SE015 = playSeVer2( spep_3 + 34, 1000, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 36, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 46, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 46, SE017, 60 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 80, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_4=spep_3+76;
------------------------------------------------------
--斜め下に二人突っ込む
------------------------------------------------------
-- ** エフェクト等 ** --
plunge2 = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_4 + 0, plunge2, 0, 0, 0 );
setEffMoveKey( spep_4 + 70, plunge2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, plunge2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 70, plunge2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, plunge2, 0 );
setEffRotateKey( spep_4 + 70, plunge2, 0 );
setEffAlphaKey( spep_4 + 0, plunge2, 255 );
setEffAlphaKey( spep_4 + 70, plunge2, 255 );
setEffAlphaKey( spep_4 + 71, plunge2, 0 );
setEffAlphaKey( spep_4 + 72, plunge2, 0 );

--SE
--二人横向き突っ込む
SE018 = playSeVer2( spep_4 + 0, 9, "",spep_4 + 94, 0, 4, -1);
SE019 = playSeVer2( spep_4 + 0, 1314, "",spep_4 + 94, 0, 4, -1);
SE020 = playSeVer2( spep_4 + 68, 1232, "",spep_4 + 94, 0, 4, -1);

--白フェード
entryFade( spep_4 + 62, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_5=spep_4+70;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_5 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_5 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_5 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_5 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_5 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_5 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_5 + 0, shuchusen, 0 );
setEffRotateKey( spep_5 + 90, shuchusen, 0 );
setEffAlphaKey( spep_5 + 0, shuchusen, 255 );
setEffAlphaKey( spep_5 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_5 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_5 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_5 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_5 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_6= spep_5 + 94; 
------------------------------------------------------
--腕を振りかぶりながら画面手前へ
------------------------------------------------------
-- ** エフェクト等 ** --
sprinkle = entryEffect( spep_6 + 0, SP_09x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_6 + 0, sprinkle, 0, 0, 0 );
setEffMoveKey( spep_6 + 44, sprinkle, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, sprinkle,  1.0, 1.0 );
setEffScaleKey( spep_6 + 44, sprinkle, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, sprinkle, 0 );
setEffRotateKey( spep_6 + 44, sprinkle, 0 );
setEffAlphaKey( spep_6 + 0, sprinkle, 255 );
setEffAlphaKey( spep_6 + 42, sprinkle, 255 );
setEffAlphaKey( spep_6 + 43, sprinkle, 255 );
setEffAlphaKey( spep_6 + 44, sprinkle, 0 );

--SE
--二人向かってくる
SE022 = playSeVer2( spep_6 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE022, 86 );
SE023 = playSeVer2( spep_6 + 0, 1314, "",spep_6 + 82, 0, 10, -1);
setSeVolumeByWorkId( spep_6 + 0, SE023, 83 );
SE024 = playSeVer2( spep_6 + 0, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_6 + 0, SE024, 51 );
setTimeStretch( SE024, 1.11, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 44; 
------------------------------------------------------
--ボディーブロー
------------------------------------------------------
-- ** エフェクト等 ** --
blow_f = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, blow_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, blow_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, blow_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 46, blow_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, blow_f, 0 );
setEffRotateKey( spep_7 + 46, blow_f, 0 );
setEffAlphaKey( spep_7 + 0, blow_f, 255 );
setEffAlphaKey( spep_7 + 44, blow_f, 255 );
setEffAlphaKey( spep_7 + 45, blow_f, 255 );
setEffAlphaKey( spep_7 + 46, blow_f, 0 );

-- ** エフェクト等 ** --
blow_b = entryEffect( spep_7 + 0, SP_11x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_7 + 0, blow_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 46, blow_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, blow_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 46, blow_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, blow_b, 0 );
setEffRotateKey( spep_7 + 46, blow_b, 0 );
setEffAlphaKey( spep_7 + 0, blow_b, 255 );
setEffAlphaKey( spep_7 + 44, blow_b, 255 );
setEffAlphaKey( spep_7 + 45, blow_b, 255 );
setEffAlphaKey( spep_7 + 46, blow_b, 0 );

--敵の動き
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7-1 + 48, 1, 0 );

changeAnime( spep_7 + 0, 1, 5 );

setMoveKey( spep_7 + 0, 1, 933.6, 558.3 , 0 );
--setMoveKey( spep_7-3 + 2, 1, 797.1, 432.7 , 0 );
setMoveKey( spep_7-3 + 4, 1, 589.6, 398.4 , 0 );
setMoveKey( spep_7-3 + 6, 1, 479.1, 285.3 , 0 );
setMoveKey( spep_7-3 + 8, 1, 276.4, 137 , 0 );
setMoveKey( spep_7-3 + 10, 1, 295.8, 189.2 , 0 );
setMoveKey( spep_7-3 + 12, 1, 313.7, 183.1 , 0 );
setMoveKey( spep_7-3 + 14, 1, 331.6, 177.1 , 0 );
setMoveKey( spep_7-3 + 16, 1, 324.3, 186.6 , 0 );
setMoveKey( spep_7-3 + 18, 1, 317, 197.6 , 0 );
setMoveKey( spep_7-3 + 20, 1, 323.9, 190.5 , 0 );
setMoveKey( spep_7-3 + 22, 1, 330.7, 183.4 , 0 );
setMoveKey( spep_7-3 + 24, 1, 335.8, 188 , 0 );
setMoveKey( spep_7-3 + 26, 1, 341, 192.6 , 0 );
setMoveKey( spep_7-3 + 28, 1, 346.2, 197.2 , 0 );
setMoveKey( spep_7-3 + 30, 1, 342.1, 196 , 0 );
setMoveKey( spep_7-3 + 32, 1, 338.1, 195 , 0 );
setMoveKey( spep_7-3 + 34, 1, 344.8, 192.8 , 0 );
setMoveKey( spep_7-3 + 36, 1, 351.7, 190.6 , 0 );
setMoveKey( spep_7-3 + 38, 1, 347.6, 194.9 , 0 );
setMoveKey( spep_7-3 + 40, 1, 343.4, 199.2 , 0 );
setMoveKey( spep_7-3 + 42, 1, 347.5, 198 , 0 );
setMoveKey( spep_7-3 + 44, 1, 351.4, 196.9 , 0 );
setMoveKey( spep_7-3 + 46, 1, 353.5, 198 , 0 );
setMoveKey( spep_7-1 + 48, 1, 355.6, 199 , 0 );

setScaleKey( spep_7 + 0, 1, 19.21,19.21);
setScaleKey( spep_7-3 + 4, 1, 12.46,12.46);
setScaleKey( spep_7-3 + 6, 1, 9.09,9.09);
setScaleKey( spep_7-3 + 8, 1, 5.72,5.72);
setScaleKey( spep_7-3 + 10, 1, 5.71,5.71);
setScaleKey( spep_7-3 + 12, 1, 5.71,5.71);
setScaleKey( spep_7-3 + 14, 1, 5.7,5.7);
setScaleKey( spep_7-3 + 16, 1, 5.7,5.7);
setScaleKey( spep_7-3 + 18, 1, 5.69,5.69);
setScaleKey( spep_7-3 + 20, 1, 5.69,5.69);
setScaleKey( spep_7-3 + 22, 1, 5.68,5.68);
setScaleKey( spep_7-3 + 24, 1, 5.68,5.68);
setScaleKey( spep_7-3 + 26, 1, 5.66,5.66);
setScaleKey( spep_7-3 + 28, 1, 5.66,5.66);
setScaleKey( spep_7-3 + 30, 1, 5.65,5.65);
setScaleKey( spep_7-3 + 32, 1, 5.65,5.65);
setScaleKey( spep_7-3 + 34, 1, 5.64,5.64);
setScaleKey( spep_7-3 + 36, 1, 5.64,5.64);
setScaleKey( spep_7-3 + 38, 1, 5.63,5.63);
setScaleKey( spep_7-3 + 40, 1, 5.63,5.63);
setScaleKey( spep_7-3 + 42, 1, 5.62,5.62);
setScaleKey( spep_7-3 + 44, 1, 5.62,5.62);
setScaleKey( spep_7-1 + 48, 1, 5.61,5.61);

setRotateKey( spep_7 + 0, 1, -89 );
setRotateKey( spep_7-1 + 48, 1, -89 );

--SE
--二人パンチ
SE025 = playSeVer2( spep_7 + 0, 1189, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_7 + 8, 1187, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_7 + 8, 1052, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_8= spep_7 + 46; 
------------------------------------------------------
--前転
------------------------------------------------------
-- ** エフェクト等 ** --
turn = entryEffect( spep_8 + 0, SP_12x, 0x100, -1, 0, 0, 0 );
setEffMoveKey( spep_8 + 0, turn, 0, 0, 0 );
setEffMoveKey( spep_8 + 16, turn, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, turn, -1.0, 1.0 );
setEffScaleKey( spep_8 + 16, turn, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, turn, 0 );
setEffRotateKey( spep_8 + 16, turn, 0 );
setEffAlphaKey( spep_8 + 0, turn, 255 );
setEffAlphaKey( spep_8 + 14, turn, 255 );
setEffAlphaKey( spep_8 + 15, turn, 255 );
setEffAlphaKey( spep_8 + 16, turn, 0 );

--SE
--二人回転
SE028 = playSeVer2( spep_8 + 0, 1116, "",spep_8 + 40, 0, 16, -1);
SE029 = playSeVer2( spep_8 + 0, 1013, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_8 + 0, SE029, 129 );
SE030 = playSeVer2( spep_8 + 2, 1003, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_8 + 4, 1117, "",spep_8 + 42, 0, 22, -1);
setSeVolumeByWorkId( spep_8 + 4, SE031, 124 );

-- ** くろ背景 ** --
entryFadeBg( spep_8 , 0, 20, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_9= spep_8 + 16;
------------------------------------------------------
--蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_9 + 0, SP_13x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_9 + 46, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_f, -1.0, 1.0 );
setEffScaleKey( spep_9 + 46, kick2_f, -1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_f, 0 );
setEffRotateKey( spep_9 + 46, kick2_f, 0 );
setEffAlphaKey( spep_9 + 0, kick2_f, 255 );
setEffAlphaKey( spep_9 + 44, kick2_f, 255 );
setEffAlphaKey( spep_9 + 45, kick2_f, 255 );
setEffAlphaKey( spep_9 + 46, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_9 + 0, SP_14x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_9 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_9 + 46, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_9 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, kick2_b, 0 );
setEffRotateKey( spep_9 + 46, kick2_b, 0 );
setEffAlphaKey( spep_9 + 0, kick2_b, 255 );
setEffAlphaKey( spep_9 + 44, kick2_b, 255 );
setEffAlphaKey( spep_9 + 45, kick2_b, 255 );
setEffAlphaKey( spep_9 + 46, kick2_b, 0 );

--敵の動き
setDisp( spep_9 + 0, 1, 1 );

changeAnime( spep_9 + 0, 1, 108 );

setMoveKey( spep_9 + 0, 1, -119.4, 131 , 0 );
--setMoveKey( spep_9-3 + 2, 1, -99.1, 147.1 , 0 );
setMoveKey( spep_9-3 + 4, 1, -87.7, 65.1 , 0 );
setMoveKey( spep_9-3 + 5, 1, -87.7, 65.1 , 0 );
setMoveKey( spep_9-3 + 6, 1, -20.3, -8.2 , 0 );
setMoveKey( spep_9-3 + 7, 1, -20.3, -8.2 , 0 );
setMoveKey( spep_9-3 + 8, 1, 86.9, -107.2 , 0 );
setMoveKey( spep_9-3 + 9, 1, 86.9, -107.2 , 0 );
setMoveKey( spep_9-3 + 10, 1, 70.7, -130.6 , 0 );
setMoveKey( spep_9-3 + 11, 1, 70.7, -130.6 , 0 );
setMoveKey( spep_9-3 + 12, 1, 125.9, -182.7 , 0 );
setMoveKey( spep_9-3 + 13, 1, 125.9, -182.7 , 0 );
setMoveKey( spep_9-3 + 14, 1, 152.7, -193.6 , 0 );
setMoveKey( spep_9-3 + 15, 1, 152.7, -193.6 , 0 );
setMoveKey( spep_9-3 + 16, 1, 175, -242.7 , 0 );
setMoveKey( spep_9-3 + 17, 1, 175, -242.7 , 0 );
setMoveKey( spep_9-3 + 18, 1, 218.7, -265.5 , 0 );
setMoveKey( spep_9-3 + 19, 1, 218.7, -265.5 , 0 );
setMoveKey( spep_9-3 + 20, 1, 233.9, -295 , 0 );
setMoveKey( spep_9-3 + 21, 1, 233.9, -295 , 0 );
setMoveKey( spep_9-3 + 22, 1, 259, -339.5 , 0 );
setMoveKey( spep_9-3 + 23, 1, 259, -339.5 , 0 );
setMoveKey( spep_9-3 + 24, 1, 281.3, -364.9 , 0 );
setMoveKey( spep_9-3 + 25, 1, 281.3, -364.9 , 0 );
setMoveKey( spep_9-3 + 26, 1, 312.7, -388.2 , 0 );
setMoveKey( spep_9-3 + 27, 1, 312.7, -388.2 , 0 );
setMoveKey( spep_9-3 + 28, 1, 328.4, -415.9 , 0 );
setMoveKey( spep_9-3 + 29, 1, 328.4, -415.9 , 0 );
setMoveKey( spep_9-3 + 30, 1, 360.6, -456.6 , 0 );
setMoveKey( spep_9-3 + 31, 1, 360.6, -456.6 , 0 );
setMoveKey( spep_9-3 + 32, 1, 379.6, -484 , 0 );
setMoveKey( spep_9-3 + 33, 1, 379.6, -484 , 0 );
setMoveKey( spep_9-3 + 34, 1, 406.4, -513.4 , 0 );
setMoveKey( spep_9-3 + 35, 1, 406.4, -513.4 , 0 );
setMoveKey( spep_9-3 + 36, 1, 442.1, -545.7 , 0 );
setMoveKey( spep_9-3 + 37, 1, 442.1, -545.7 , 0 );
setMoveKey( spep_9-3 + 38, 1, 460.1, -589.8 , 0 );
setMoveKey( spep_9-3 + 39, 1, 460.1, -589.8 , 0 );
setMoveKey( spep_9-3 + 40, 1, 486.3, -621.9 , 0 );
setMoveKey( spep_9-3 + 41, 1, 486.3, -621.9 , 0 );
setMoveKey( spep_9-3 + 42, 1, 512.6, -654.1 , 0 );
setMoveKey( spep_9-3 + 43, 1, 512.6, -654.1 , 0 );
setMoveKey( spep_9-3 + 44, 1, 538.9, -686.2 , 0 );
setMoveKey( spep_9-1 + 46, 1, 538.9, -686.2 , 0 );

setScaleKey( spep_9 + 0, 1, 2.26,2.26);
setScaleKey( spep_9-3 + 4, 1, 2.44,2.44);
setScaleKey( spep_9-3 + 5, 1, 2.44,2.44);
setScaleKey( spep_9-3 + 6, 1, 2.87,2.87);
setScaleKey( spep_9-3 + 7, 1, 2.87,2.87);
setScaleKey( spep_9-3 + 8, 1, 3.29,3.29);
setScaleKey( spep_9-3 + 9, 1, 3.29,3.29);
setScaleKey( spep_9-3 + 10, 1, 3.38,3.38);
setScaleKey( spep_9-3 + 11, 1, 3.38,3.38);
setScaleKey( spep_9-3 + 12, 1, 3.46,3.46);
setScaleKey( spep_9-3 + 13, 1, 3.46,3.46);
setScaleKey( spep_9-3 + 14, 1, 3.55,3.55);
setScaleKey( spep_9-3 + 15, 1, 3.55,3.55);
setScaleKey( spep_9-3 + 16, 1, 3.63,3.63);
setScaleKey( spep_9-3 + 17, 1, 3.63,3.63);
setScaleKey( spep_9-3 + 18, 1, 3.72,3.72);
setScaleKey( spep_9-3 + 19, 1, 3.72,3.72);
setScaleKey( spep_9-3 + 20, 1, 3.81,3.81);
setScaleKey( spep_9-3 + 21, 1, 3.81,3.81);
setScaleKey( spep_9-3 + 22, 1, 3.89,3.89);
setScaleKey( spep_9-3 + 23, 1, 3.89,3.89);
setScaleKey( spep_9-3 + 24, 1, 3.98,3.98);
setScaleKey( spep_9-3 + 25, 1, 3.98,3.98);
setScaleKey( spep_9-3 + 26, 1, 4.08,4.08);
setScaleKey( spep_9-3 + 27, 1, 4.08,4.08);
setScaleKey( spep_9-3 + 28, 1, 4.16,4.16);
setScaleKey( spep_9-3 + 29, 1, 4.16,4.16);
setScaleKey( spep_9-3 + 30, 1, 4.25,4.25);
setScaleKey( spep_9-3 + 31, 1, 4.25,4.25);
setScaleKey( spep_9-3 + 32, 1, 4.34,4.34);
setScaleKey( spep_9-3 + 33, 1, 4.34,4.34);
setScaleKey( spep_9-3 + 34, 1, 4.42,4.42);
setScaleKey( spep_9-3 + 35, 1, 4.42,4.42);
setScaleKey( spep_9-3 + 36, 1, 4.51,4.51);
setScaleKey( spep_9-3 + 37, 1, 4.51,4.51);
setScaleKey( spep_9-3 + 38, 1, 4.6,4.6);
setScaleKey( spep_9-3 + 39, 1, 4.6,4.6);
setScaleKey( spep_9-3 + 40, 1, 4.68,4.68);
setScaleKey( spep_9-3 + 41, 1, 4.68,4.68);
setScaleKey( spep_9-3 + 42, 1, 4.77,4.77);
setScaleKey( spep_9-3 + 43, 1, 4.77,4.77);
setScaleKey( spep_9-3 + 44, 1, 4.86,4.86);
setScaleKey( spep_9-1 + 46, 1, 4.86,4.86);

setRotateKey( spep_9 + 0, 1, 48 );
setRotateKey( spep_9-1 + 46, 1, 48 );

--SE
--二人キック
SE032 = playSeVer2( spep_9 + 6, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 6, SE032, 91 );
SE033 = playSeVer2( spep_9 + 10, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE033, 75 );
SE034 = playSeVer2( spep_9 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_9 + 10, SE034, 69 );

-- ** くろ背景 ** --
entryFadeBg( spep_9 , 0, 50, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_10= spep_9 + 46;
------------------------------------------------------
--敵が岩に向かって吹っ飛ぶ
------------------------------------------------------
-- ** エフェクト等 ** --
fly = entryEffect( spep_10 + 0, SP_15x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_10 + 0, fly, 0, 0, 0 );
setEffMoveKey( spep_10 + 26, fly, 0, 0, 0 );
setEffScaleKey( spep_10 + 0, fly, 1.0, 1.0 );
setEffScaleKey( spep_10 + 26, fly, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, fly, 0 );
setEffRotateKey( spep_10 + 26, fly, 0 );
setEffAlphaKey( spep_10 + 0, fly, 255 );
setEffAlphaKey( spep_10 + 24, fly, 255 );
setEffAlphaKey( spep_10 + 25, fly, 255 );
setEffAlphaKey( spep_10 + 26, fly, 0 );

--敵の動き
changeAnime( spep_10 + 0, 1, 5 );

setMoveKey( spep_10 + 0, 1, -429.2, -374.1 , 0 );
--setMoveKey( spep_10-3 + 2, 1, -398.3, -347.6 , 0 );
setMoveKey( spep_10-3 + 4, 1, -367.5, -321.1 , 0 );
setMoveKey( spep_10-3 + 6, 1, -336.6, -294.7 , 0 );
setMoveKey( spep_10-3 + 8, 1, -305.8, -268.2 , 0 );
setMoveKey( spep_10-3 + 10, 1, -274.9, -241.7 , 0 );
setMoveKey( spep_10-3 + 12, 1, -244.1, -215.2 , 0 );
setMoveKey( spep_10-3 + 14, 1, -213.2, -188.7 , 0 );
setMoveKey( spep_10-3 + 16, 1, -182.4, -162.3 , 0 );
setMoveKey( spep_10-3 + 18, 1, -151.6, -135.8 , 0 );
setMoveKey( spep_10-3 + 20, 1, -120.7, -109.3 , 0 );
setMoveKey( spep_10-3 + 22, 1, -89.9, -82.8 , 0 );
setMoveKey( spep_10-3 + 24, 1, -59, -56.3 , 0 );
setMoveKey( spep_10-1 + 26, 1, -28.2, -29.8 , 0 );

setScaleKey( spep_10 + 0, 1, 6.21, 6.21 );
--setScaleKey( spep_10-3 + 2, 1, 5.77, 5.77 );
setScaleKey( spep_10-3 + 4, 1, 5.34, 5.34 );
setScaleKey( spep_10-3 + 6, 1, 4.9, 4.9 );
setScaleKey( spep_10-3 + 8, 1, 4.46, 4.46 );
setScaleKey( spep_10-3 + 10, 1, 4.03, 4.03 );
setScaleKey( spep_10-3 + 12, 1, 3.59, 3.59 );
setScaleKey( spep_10-3 + 14, 1, 3.16, 3.16 );
setScaleKey( spep_10-3 + 16, 1, 2.72, 2.72 );
setScaleKey( spep_10-3 + 18, 1, 2.28, 2.28 );
setScaleKey( spep_10-3 + 20, 1, 1.85, 1.85 );
setScaleKey( spep_10-3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_10-3 + 24, 1, 0.97, 0.97 );
setScaleKey( spep_10-3 + 26, 1, 0.54, 0.54 );
setScaleKey( spep_10-1 + 28, 1, 0.1, 0.1 );

setRotateKey( spep_10 + 0, 1, 86 );
setRotateKey( spep_10-1 + 0, 1, 86 );

--SE
--敵が飛んでいく
SE035 = playSeVer2( spep_10 + 0, 1121, "",spep_10 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_10 + 0, SE035, 72 );

-- ** くろ背景 ** --
entryFadeBg( spep_10 , 0, 26, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_11= spep_10 + 26;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_11 + 0, SP_16x, 0x80, -1, 0, 0, 0 );
setEffMoveKey( spep_11 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_11 + 120, finish, 0, 0, 0 );
setEffScaleKey( spep_11 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_11 + 120, finish, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, finish, 0 );
setEffRotateKey( spep_11 + 120, finish, 0 );
setEffAlphaKey( spep_11 + 0, finish, 255 );
setEffAlphaKey( spep_11 + 120, finish, 255 );

--敵の動き
setDisp( spep_11 + 0, 1, 1 );
setDisp( spep_11-1 + 16, 1, 0 );

changeAnime( spep_11 + 0, 1, 106 );

setMoveKey( spep_11 + 0, 1, -477.6, 224.8 , 0 );
setMoveKey( spep_11 + 2, 1, -410.5, 178.7 , 0 );
setMoveKey( spep_11 + 4, 1, -343.3, 132.7 , 0 );
setMoveKey( spep_11 + 6, 1, -276.2, 86.6 , 0 );
setMoveKey( spep_11 + 8, 1, -209, 40.6 , 0 );
setMoveKey( spep_11 + 10, 1, -141.9, -5.5 , 0 );
setMoveKey( spep_11 + 12, 1, -74.7, -51.5 , 0 );
setMoveKey( spep_11-1 + 16, 1, -7.6, -97.6 , 0 );

setScaleKey( spep_11-3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_11-1 + 16, 1, 0.5, 0.5 );

setRotateKey( spep_11 + 0, 1, 76 );
setRotateKey( spep_11-1 + 16, 1, 76 );

--SE
--爆発
SE036 = playSeVer2( spep_11 + 20, 1023, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_11 + 24, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_11 + 24, SE037, 79 );

--終わり
dealDamage(spep_11+16);
endPhase( spep_11 + 116 );
end