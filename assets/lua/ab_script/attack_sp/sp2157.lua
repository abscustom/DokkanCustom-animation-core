--1021550:ベクウ_ラッキーパンチ（簡易版）
--sp_effect_b1_00136

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
SP_01=	156595	;--	カメラに向かって走ってくるベクウ
SP_02=	156596	;--	横に走るベクウ
SP_03=	156597	;--	転んで地面に激突するベクウ
SP_04=	156598	;--	敵に向かって滑って進む_敵より手前
SP_05=	156599	;--	敵に向かって滑って進む_敵より奥
SP_06=	156600	;--	敵に当たる手のアップ_敵より手前
SP_07=	156601	;--	敵に当たる手のアップ_敵より奥
SP_08=	156602	;--	飛んでいく敵_敵より手前
SP_09=	156603	;--	飛んでいく敵_敵より奥
SP_10=	156604	;--	カメラに激突_敵より手前
SP_11=	156605	;--	カメラに激突_敵より奥	

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
-- カメラに向かって走ってくるベクウ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 104, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, 1.0, 1.0 );
setEffScaleKey( spep_0 + 104, rush, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 104, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 104, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 120, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  120,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  120,  515);

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
--ガッツポーズ
SE001 = playSe( spep_0 + 14, 31 );
setPitch( spep_0 + 14, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );
stopSe( spep_0 + 46, SE001, 14 );
SE003 = playSe( spep_0 + 16, 1012 );
setSeVolumeByWorkId( spep_0 + 16, SE003, 73 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--走り出し
SE004 = playSe( spep_0 + 74, 1111 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 216 );
stopSe( spep_0 + 92, SE004, 0 );
SE005 = playSe( spep_0 + 74, 1182 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 53 );
stopSe( spep_0 + 92, SE005, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 80, 18, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+104;
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 横に走るベクウ
------------------------------------------------------
-- ** エフェクト等 ** --
dassyu = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dassyu, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, dassyu, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dassyu, 1.0, 1.0 );
setEffScaleKey( spep_2 + 56, dassyu, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dassyu, 0 );
setEffRotateKey( spep_2 + 56, dassyu, 0 );
setEffAlphaKey( spep_2 + 0, dassyu, 255 );
setEffAlphaKey( spep_2 + 54, dassyu, 255 );
setEffAlphaKey( spep_2 + 55, dassyu, 255 );
setEffAlphaKey( spep_2 + 56, dassyu, 0 );

--SE
--走る
SE007 = playSe( spep_2 + 0, 1111 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 219 );
stopSe( spep_2 + 18, SE007, 0 );
SE008 = playSe( spep_2 + 0, 1182 );
setSeVolumeByWorkId( spep_2 + 0, SE008, 58 );
stopSe( spep_2 + 18, SE008, 10 );
SE009 = playSe( spep_2 + 20, 1111 );
setSeVolumeByWorkId( spep_2 + 20, SE009, 191 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );


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
--SE
--走る
stopSe( spep_2 + 38, SE009, 0 );
SE010 = playSe( spep_2 + 20, 1182 );
setSeVolumeByWorkId( spep_2 + 20, SE010, 55 );
stopSe( spep_2 + 38, SE010, 10 );
SE011 = playSe( spep_2 + 44, 1111 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 214 );
SE012 = playSe( spep_2 + 44, 1182 );
setSeVolumeByWorkId( spep_2 + 44, SE012, 54 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;
------------------------------------------------------
-- 転んで地面に激突するベクウ
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fall, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, fall, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fall, 1.0, 1.0 );
setEffScaleKey( spep_3 + 66, fall, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 66, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 64, fall, 255 );
setEffAlphaKey( spep_3 + 65, fall, 255 );
setEffAlphaKey( spep_3 + 66, fall, 0 );

--SE
--走る
stopSe( spep_3 + 2, SE011, 0 );
stopSe( spep_3 + 2, SE012, 10 );

--飛び込む
SE013 = playSe( spep_3 + 0, 37 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 140 );
SE015 = playSe( spep_3 + 14, 1190 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 41 );
SE017 = playSe( spep_3 + 20, 1192 );
setSeVolumeByWorkId( spep_3 + 20, SE017, 200 );

--滑り込み
SE014 = playSe( spep_3 + 10, 1219 );
SE016 = playSe( spep_3 + 18, 1044 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 47 );
setPitch( spep_3 + 18, SE016, 300 );
setTimeStretch( SE016, 1.2, 10, 1 );
stopSe( spep_3 +66 +36 + 18, SE016, 14 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 64;
------------------------------------------------------
-- 敵に向かって滑って進む
------------------------------------------------------
-- ** エフェクト等 ** --
slide_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slide_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, slide_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slide_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, slide_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slide_f, 0 );
setEffRotateKey( spep_4 + 36, slide_f, 0 );
setEffAlphaKey( spep_4 + 0, slide_f, 255 );
setEffAlphaKey( spep_4 + 34, slide_f, 255 );
setEffAlphaKey( spep_4 + 35, slide_f, 255 );
setEffAlphaKey( spep_4 + 36, slide_f, 0 );

-- ** エフェクト等 ** --
slide_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slide_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, slide_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slide_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 36, slide_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slide_b, 0 );
setEffRotateKey( spep_4 + 36, slide_b, 0 );
setEffAlphaKey( spep_4 + 0, slide_b, 255 );
setEffAlphaKey( spep_4 + 34, slide_b, 255 );
setEffAlphaKey( spep_4 + 35, slide_b, 255 );
setEffAlphaKey( spep_4 + 36, slide_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 36, 1, 0 );
changeAnime( spep_4 + 0, 1, 100 );

b3=20;
setMoveKey( spep_4    + 0, 1, 234, -21.5 +b3 , 0 );
setMoveKey( spep_4    + 2, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_4    + 4, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 234, -13.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 234, -17.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 234, -25.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 230, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 238, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 234, -17.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 234, -25.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 230, -21.5 +b3 , 0 );
--setMoveKey( spep_4 -3 + 39, 1, 230, -21.5 +b3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 38, 1, 0.87, 0.87 );
--setScaleKey( spep_4 -3 + 39, 1, 0.87, 0.87 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, 0 );
--setRotateKey( spep_4 -3 + 39, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;
------------------------------------------------------
-- 敵に当たる手のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 36, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 34, hit_f, 255 );
setEffAlphaKey( spep_5 + 35, hit_f, 255 );
setEffAlphaKey( spep_5 + 36, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 36, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 34, hit_b, 255 );
setEffAlphaKey( spep_5 + 35, hit_b, 255 );
setEffAlphaKey( spep_5 + 36, hit_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 100 );
changeAnime( spep_5 -3 + 14, 1, 108 );

a3=517;
b3=220;
c3=180;
setMoveKey( spep_5 + 0, 1, 128.1, -276.1 +b3, 0 );
setMoveKey( spep_5 -3 + 13, 1, 128.1, -276.1 +b3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -424.5 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -424.5 +a3, -164.6 +c3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -424.5 +a3, -4.8 +c3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -452.5 +a3, -216.3 +c3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -468.3 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -331.9 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -402.6 +a3, -58.8 +c3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -397.5 +a3, -174 +c3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -392.4 +a3, -107.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -387.3 +a3, -101.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -382.2 +a3, -95.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -377.2 +a3, -89.6 +c3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -372.1 +a3, -83.6 +c3 , 0 );
--setMoveKey( spep_5 -3 + 39, 1, -372.1 +a3, -83.6 +c3 , 0 );

s3=1;
setScaleKey( spep_5  + 0, 1, 14.82, 14.82 );
setScaleKey( spep_5 -3 + 13, 1, 14.82, 14.82 );
setScaleKey( spep_5 -3 + 14, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_5 -3 + 24, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_5 -3 + 26, 1, 13.64 -s3, 13.64 -s3 );
setScaleKey( spep_5 -3 + 28, 1, 13.34 -s3, 13.34 -s3 );
setScaleKey( spep_5 -3 + 30, 1, 13.04 -s3, 13.04 -s3 );
setScaleKey( spep_5 -3 + 32, 1, 12.74 -s3, 12.74 -s3 );
setScaleKey( spep_5 -3 + 34, 1, 12.38 -s3, 12.38 -s3 );
setScaleKey( spep_5 -3 + 36, 1, 12.08 -s3, 12.08 -s3 );
setScaleKey( spep_5 -3 + 38, 1, 11.78 -s3, 11.78 -s3 );
--setScaleKey( spep_5 -3 + 39, 1, 11.78 -s3, 11.78 -s3 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, 0 );

--SE
--滑り込み
stopSe( spep_5 +10, SE014, 28 );

--パンチ
SE018 = playSe( spep_5 + 0, 1110 );
setSeVolumeByWorkId( spep_5 + 0, SE018, 44 );
SE019 = playSe( spep_5 + 0, 1187 );
setSeVolumeByWorkId( spep_5 + 0, SE019, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;
------------------------------------------------------
-- 飛んでいく敵
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, fly_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_f, 0 );
setEffRotateKey( spep_6 + 56, fly_f, 0 );
setEffAlphaKey( spep_6 + 0, fly_f, 255 );
setEffAlphaKey( spep_6 + 54, fly_f, 255 );
setEffAlphaKey( spep_6 + 55, fly_f, 255 );
setEffAlphaKey( spep_6 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 56, fly_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_b, 0 );
setEffRotateKey( spep_6 + 56, fly_b, 0 );
setEffAlphaKey( spep_6 + 0, fly_b, 255 );
setEffAlphaKey( spep_6 + 54, fly_b, 255 );
setEffAlphaKey( spep_6 + 55, fly_b, 255 );
setEffAlphaKey( spep_6 + 56, fly_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_6 + 0, 1, 1 );--
--setDisp( spep_6 + 56, 1, 0 );--
changeAnime( spep_6 + 0, 1, 105 );

a4=10;
setMoveKey( spep_6    + 0, 1, 21.9 +a4, -37.5 , 0 );
setMoveKey( spep_6    + 1, 1, 20.9 +a4, -26 , 0 );
setMoveKey( spep_6    + 2, 1, 22.3 +a4, -3.7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 25.2 +a4, 24.2 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 28.8 +a4, 54.7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 32.9 +a4, 85.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 37 +a4, 115.9 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 40.9 +a4, 143.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 44.4 +a4, 167.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 47.3 +a4, 186.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 49.3 +a4, 200 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 50.1 +a4, 205.4 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 49.3 +a4, 207.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 47.5 +a4, 211.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 45.3 +a4, 216 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 42.8 +a4, 220.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 40.2 +a4, 225.4 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 37.5 +a4, 230.4 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 34.7 +a4, 235.3 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 31.9 +a4, 240.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 29 +a4, 245.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 26.1 +a4, 250.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 23.1 +a4, 254.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 20.2 +a4, 259.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 17.3 +a4, 263.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 14.5 +a4, 268.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 11.8 +a4, 271.8 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 9.2 +a4, 275 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 6.9 +a4, 277.1 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 5.2 +a4, 276.9 , 0 );
--setMoveKey( spep_6 -3 + 59, 1, 5.2 +a4, 276.9 , 0 );

setScaleKey( spep_6  + 0, 1, 1.98, 1.98 );
setScaleKey( spep_6  + 1, 1, 1.86, 1.86 );
setScaleKey( spep_6  + 2, 1, 1.74, 1.74 );
setScaleKey( spep_6 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_6 -3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 20, 1, 0.90, 0.90 );
setScaleKey( spep_6 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_6 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_6 -3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 36, 1, 0.60, 0.60 );
setScaleKey( spep_6 -3 + 38, 1, 0.60, 0.60 );
setScaleKey( spep_6 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_6 -3 + 46, 1, 0.48, 0.48 );
setScaleKey( spep_6 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 54, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 56, 1, 0.30, 0.30 );
setScaleKey( spep_6 -3 + 58, 1, 0.30, 0.30 );
--setScaleKey( spep_6 -3 + 59, 1, 0.325, 0.325 );

setRotateKey( spep_6    + 0, 1, -21.6 );
setRotateKey( spep_6    + 1, 1, -19.6 );
setRotateKey( spep_6    + 2, 1, -17.5 );
setRotateKey( spep_6 -3 + 6, 1, -15.4 );
setRotateKey( spep_6 -3 + 8, 1, -13.3 );
setRotateKey( spep_6 -3 + 10, 1, -11.2 );
setRotateKey( spep_6 -3 + 12, 1, -9.1 );
setRotateKey( spep_6 -3 + 14, 1, -7 );
setRotateKey( spep_6 -3 + 16, 1, -4.9 );
setRotateKey( spep_6 -3 + 18, 1, -2.9 );
setRotateKey( spep_6 -3 + 20, 1, -0.8 );
setRotateKey( spep_6 -3 + 22, 1, 1.3 );
setRotateKey( spep_6 -3 + 24, 1, 1.9 );
setRotateKey( spep_6 -3 + 26, 1, 2.5 );
setRotateKey( spep_6 -3 + 28, 1, 3.1 );
setRotateKey( spep_6 -3 + 30, 1, 3.6 );
setRotateKey( spep_6 -3 + 32, 1, 4.2 );
setRotateKey( spep_6 -3 + 34, 1, 4.8 );
setRotateKey( spep_6 -3 + 36, 1, 5.4 );
setRotateKey( spep_6 -3 + 38, 1, 6 );
setRotateKey( spep_6 -3 + 40, 1, 6.5 );
setRotateKey( spep_6 -3 + 42, 1, 7.1 );
setRotateKey( spep_6 -3 + 44, 1, 7.7 );
setRotateKey( spep_6 -3 + 46, 1, 8.3 );
setRotateKey( spep_6 -3 + 48, 1, 8.8 );
setRotateKey( spep_6 -3 + 50, 1, 9.4 );
setRotateKey( spep_6 -3 + 52, 1, 10 );
setRotateKey( spep_6 -3 + 54, 1, 10.6 );
setRotateKey( spep_6 -3 + 56, 1, 11.1 );
setRotateKey( spep_6 -3 + 58, 1, 11.7 );
--setRotateKey( spep_6 -3 + 59, 1, 11.7 );

--敵飛んでいく
SE020 = playSe( spep_6 + 0, 1121 );
setSeVolumeByWorkId( spep_6 + 0, SE020, 79,"",0.5 );
SE021 = playSe( spep_6 + 8, 1053 );
setSeVolumeByWorkId( spep_6 + 8, SE021, 87,"",0.5 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 100, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 100, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 100, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 100, 1, 0 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_7    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_7    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_7    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_7 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_7    + 0, 1, 0 );
setRotateKey( spep_7    + 1, 1, 105 );
setRotateKey( spep_7    + 2, 1, 240 );
setRotateKey( spep_7 -3 + 6, 1, 405 );
setRotateKey( spep_7 -3 + 8, 1, 600 );
setRotateKey( spep_7 -3 + 10, 1, 825 );
setRotateKey( spep_7 -3 + 12, 1, 1080 );
setRotateKey( spep_7 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_7 + 2, SE020, 16 );
--ガッ
playSe( spep_7 + 8, 1054 );


-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 98 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- カメラに向かって走ってくるベクウ
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
rush = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, rush, 0, 0, 0 );
setEffMoveKey( spep_0 + 104, rush, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, rush, -1.0, 1.0 );
setEffScaleKey( spep_0 + 104, rush, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, rush, 0 );
setEffRotateKey( spep_0 + 104, rush, 0 );
setEffAlphaKey( spep_0 + 0, rush, 255 );
setEffAlphaKey( spep_0 + 104, rush, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 120, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  120,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  120,  515);

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
--ガッツポーズ
SE001 = playSe( spep_0 + 14, 31 );
setPitch( spep_0 + 14, SE001, -400 );
setTimeStretch( SE001, 0.73, 10, 1 );
stopSe( spep_0 + 46, SE001, 14 );
SE003 = playSe( spep_0 + 16, 1012 );
setSeVolumeByWorkId( spep_0 + 16, SE003, 73 );

--顔カットイン
SE002 = playSe( spep_x +12, 1018 );

--走り出し
SE004 = playSe( spep_0 + 74, 1111 );
setSeVolumeByWorkId( spep_0 + 74, SE004, 216 );
stopSe( spep_0 + 92, SE004, 0 );
SE005 = playSe( spep_0 + 74, 1182 );
setSeVolumeByWorkId( spep_0 + 74, SE005, 53 );
stopSe( spep_0 + 92, SE005, 10 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 104, 0, 0, 0, 0, 255 );  --黒　背景

--白フェード
entryFade( spep_0 + 80, 18, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--はじめの準備
spep_1=spep_0+104;
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

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 98, 0,  0, 0, 0, 255 ); --くろ 背景

--白フェード
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
-- 横に走るベクウ
------------------------------------------------------
-- ** エフェクト等 ** --
dassyu = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, dassyu, 0, 0, 0 );
setEffMoveKey( spep_2 + 56, dassyu, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, dassyu, -1.0, 1.0 );
setEffScaleKey( spep_2 + 56, dassyu, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, dassyu, 0 );
setEffRotateKey( spep_2 + 56, dassyu, 0 );
setEffAlphaKey( spep_2 + 0, dassyu, 255 );
setEffAlphaKey( spep_2 + 54, dassyu, 255 );
setEffAlphaKey( spep_2 + 55, dassyu, 255 );
setEffAlphaKey( spep_2 + 56, dassyu, 0 );

--SE
--走る
SE007 = playSe( spep_2 + 0, 1111 );
setSeVolumeByWorkId( spep_2 + 0, SE007, 219 );
stopSe( spep_2 + 18, SE007, 0 );
SE008 = playSe( spep_2 + 0, 1182 );
setSeVolumeByWorkId( spep_2 + 0, SE008, 58 );
stopSe( spep_2 + 18, SE008, 10 );
SE009 = playSe( spep_2 + 20, 1111 );
setSeVolumeByWorkId( spep_2 + 20, SE009, 191 );


-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE007, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );


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
--SE
--走る
stopSe( spep_2 + 38, SE009, 0 );
SE010 = playSe( spep_2 + 20, 1182 );
setSeVolumeByWorkId( spep_2 + 20, SE010, 55 );
stopSe( spep_2 + 38, SE010, 10 );
SE011 = playSe( spep_2 + 44, 1111 );
setSeVolumeByWorkId( spep_2 + 44, SE011, 214 );
SE012 = playSe( spep_2 + 44, 1182 );
setSeVolumeByWorkId( spep_2 + 44, SE012, 54 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 56;
------------------------------------------------------
-- 転んで地面に激突するベクウ
------------------------------------------------------
-- ** エフェクト等 ** --
fall = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, fall, 0, 0, 0 );
setEffMoveKey( spep_3 + 66, fall, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, fall, -1.0, 1.0 );
setEffScaleKey( spep_3 + 66, fall, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, fall, 0 );
setEffRotateKey( spep_3 + 66, fall, 0 );
setEffAlphaKey( spep_3 + 0, fall, 255 );
setEffAlphaKey( spep_3 + 64, fall, 255 );
setEffAlphaKey( spep_3 + 65, fall, 255 );
setEffAlphaKey( spep_3 + 66, fall, 0 );

--SE
--走る
stopSe( spep_3 + 2, SE011, 0 );
stopSe( spep_3 + 2, SE012, 10 );

--飛び込む
SE013 = playSe( spep_3 + 0, 37 );
setSeVolumeByWorkId( spep_3 + 0, SE013, 140 );
SE015 = playSe( spep_3 + 14, 1190 );
setSeVolumeByWorkId( spep_3 + 14, SE015, 41 );
SE017 = playSe( spep_3 + 20, 1192 );
setSeVolumeByWorkId( spep_3 + 20, SE017, 200 );

--滑り込み
SE014 = playSe( spep_3 + 10, 1219 );
SE016 = playSe( spep_3 + 18, 1044 );
setSeVolumeByWorkId( spep_3 + 18, SE016, 47 );
setPitch( spep_3 + 18, SE016, 300 );
setTimeStretch( SE016, 1.2, 10, 1 );
stopSe( spep_3 +66 +36 + 18, SE016, 14 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 70, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 64;
------------------------------------------------------
-- 敵に向かって滑って進む
------------------------------------------------------
-- ** エフェクト等 ** --
slide_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slide_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, slide_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slide_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 36, slide_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slide_f, 0 );
setEffRotateKey( spep_4 + 36, slide_f, 0 );
setEffAlphaKey( spep_4 + 0, slide_f, 255 );
setEffAlphaKey( spep_4 + 34, slide_f, 255 );
setEffAlphaKey( spep_4 + 35, slide_f, 255 );
setEffAlphaKey( spep_4 + 36, slide_f, 0 );

-- ** エフェクト等 ** --
slide_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, slide_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 36, slide_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, slide_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 36, slide_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, slide_b, 0 );
setEffRotateKey( spep_4 + 36, slide_b, 0 );
setEffAlphaKey( spep_4 + 0, slide_b, 255 );
setEffAlphaKey( spep_4 + 34, slide_b, 255 );
setEffAlphaKey( spep_4 + 35, slide_b, 255 );
setEffAlphaKey( spep_4 + 36, slide_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
--setDisp( spep_4 + 36, 1, 0 );
changeAnime( spep_4 + 0, 1, 0 );

b3=20;
setMoveKey( spep_4    + 0, 1, -234, -21.5 +b3 , 0 );
setMoveKey( spep_4    + 2, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_4    + 4, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -234, -13.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -234, -29.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -226, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -242, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -234, -17.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -234, -25.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -230, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -238, -21.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -234, -17.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -234, -25.5 +b3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -230, -21.5 +b3 , 0 );
--setMoveKey( spep_4 -3 + 39, 1, -230, -21.5 +b3 , 0 );

setScaleKey( spep_4 + 0, 1, 0.87, 0.87 );
setScaleKey( spep_4 -3 + 38, 1, 0.87, 0.87 );
--setScaleKey( spep_4 -3 + 39, 1, 0.87, 0.87 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 38, 1, 0 );
--setRotateKey( spep_4 -3 + 39, 1, 0 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 36;
------------------------------------------------------
-- 敵に当たる手のアップ
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_5 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 36, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 34, hit_f, 255 );
setEffAlphaKey( spep_5 + 35, hit_f, 255 );
setEffAlphaKey( spep_5 + 36, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_5 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 36, hit_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 36, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 36, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 34, hit_b, 255 );
setEffAlphaKey( spep_5 + 35, hit_b, 255 );
setEffAlphaKey( spep_5 + 36, hit_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_5 + 0, 1, 1 );
--setDisp( spep_5 + 36, 1, 0 );
changeAnime( spep_5 + 0, 1, 0 );
changeAnime( spep_5 -3 + 14, 1, 8 );

a3=-517;
b3=220;
c3=180;
setMoveKey( spep_5 + 0, 1, -128.1, -276.1 +b3, 0 );
setMoveKey( spep_5 -3 + 13, 1, -128.1, -276.1 +b3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 424.5 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 424.5 +a3, -164.6 +c3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 424.5 +a3, -4.8 +c3 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 452.5 +a3, -216.3 +c3 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 468.3 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 331.9 +a3, -125.4 +c3 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 402.6 +a3, -58.8 +c3 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 397.5 +a3, -174 +c3 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 392.4 +a3, -107.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 387.3 +a3, -101.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 382.2 +a3, -95.5 +c3 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 377.2 +a3, -89.6 +c3 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 372.1 +a3, -83.6 +c3 , 0 );
--setMoveKey( spep_5 -3 + 39, 1, -372.1 +a3, -83.6 +c3 , 0 );

s3=1;
setScaleKey( spep_5  + 0, 1, 14.82, 14.82 );
setScaleKey( spep_5 -3 + 13, 1, 14.82, 14.82 );
setScaleKey( spep_5 -3 + 14, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_5 -3 + 24, 1, 14 -s3, 14 -s3 );
setScaleKey( spep_5 -3 + 26, 1, 13.64 -s3, 13.64 -s3 );
setScaleKey( spep_5 -3 + 28, 1, 13.34 -s3, 13.34 -s3 );
setScaleKey( spep_5 -3 + 30, 1, 13.04 -s3, 13.04 -s3 );
setScaleKey( spep_5 -3 + 32, 1, 12.74 -s3, 12.74 -s3 );
setScaleKey( spep_5 -3 + 34, 1, 12.38 -s3, 12.38 -s3 );
setScaleKey( spep_5 -3 + 36, 1, 12.08 -s3, 12.08 -s3 );
setScaleKey( spep_5 -3 + 38, 1, 11.78 -s3, 11.78 -s3 );
--setScaleKey( spep_5 -3 + 39, 1, 11.78 -s3, 11.78 -s3 );

setRotateKey( spep_5 -3 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, 0 );

--SE
--滑り込み
stopSe( spep_5 +10, SE014, 28 );

--パンチ
SE018 = playSe( spep_5 + 0, 1110 );
setSeVolumeByWorkId( spep_5 + 0, SE018, 44 );
SE019 = playSe( spep_5 + 0, 1187 );
setSeVolumeByWorkId( spep_5 + 0, SE019, 74 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 40, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 36;
------------------------------------------------------
-- 飛んでいく敵
------------------------------------------------------
-- ** エフェクト等 ** --
fly_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, fly_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, fly_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_f, 0 );
setEffRotateKey( spep_6 + 56, fly_f, 0 );
setEffAlphaKey( spep_6 + 0, fly_f, 255 );
setEffAlphaKey( spep_6 + 54, fly_f, 255 );
setEffAlphaKey( spep_6 + 55, fly_f, 255 );
setEffAlphaKey( spep_6 + 56, fly_f, 0 );

-- ** エフェクト等 ** --
fly_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, fly_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 56, fly_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, fly_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 56, fly_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, fly_b, 0 );
setEffRotateKey( spep_6 + 56, fly_b, 0 );
setEffAlphaKey( spep_6 + 0, fly_b, 255 );
setEffAlphaKey( spep_6 + 54, fly_b, 255 );
setEffAlphaKey( spep_6 + 55, fly_b, 255 );
setEffAlphaKey( spep_6 + 56, fly_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_6 + 0, 1, 1 );--
--setDisp( spep_6 + 56, 1, 0 );--
changeAnime( spep_6 + 0, 1, 5 );

a4=-10;
setMoveKey( spep_6    + 0, 1, -21.9 +a4, -37.5 , 0 );
setMoveKey( spep_6    + 1, 1, -20.9 +a4, -26 , 0 );
setMoveKey( spep_6    + 2, 1, -22.3 +a4, -3.7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -25.2 +a4, 24.2 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -28.8 +a4, 54.7 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -32.9 +a4, 85.8 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -37 +a4, 115.9 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -40.9 +a4, 143.6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -44.4 +a4, 167.7 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -47.3 +a4, 186.9 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -49.3 +a4, 200 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -50.1 +a4, 205.4 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -49.3 +a4, 207.9 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -47.5 +a4, 211.7 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -45.3 +a4, 216 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -42.8 +a4, 220.6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -40.2 +a4, 225.4 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -37.5 +a4, 230.4 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -34.7 +a4, 235.3 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -31.9 +a4, 240.3 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -29 +a4, 245.2 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -26.1 +a4, 250.1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -23.1 +a4, 254.9 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -20.2 +a4, 259.5 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -17.3 +a4, 263.9 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -14.5 +a4, 268.1 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -11.8 +a4, 271.8 , 0 );
setMoveKey( spep_6 -3 + 54, 1, -9.2 +a4, 275 , 0 );
setMoveKey( spep_6 -3 + 56, 1, -6.9 +a4, 277.1 , 0 );
setMoveKey( spep_6 -3 + 58, 1, -5.2 +a4, 276.9 , 0 );
--setMoveKey( spep_6 -3 + 59, 1, 5.2 +a4, 276.9 , 0 );

setScaleKey( spep_6  + 0, 1, 1.98, 1.98 );
setScaleKey( spep_6  + 1, 1, 1.86, 1.86 );
setScaleKey( spep_6  + 2, 1, 1.74, 1.74 );
setScaleKey( spep_6 -3 + 6, 1, 1.68, 1.68 );
setScaleKey( spep_6 -3 + 8, 1, 1.56, 1.56 );
setScaleKey( spep_6 -3 + 10, 1, 1.44, 1.44 );
setScaleKey( spep_6 -3 + 12, 1, 1.32, 1.32 );
setScaleKey( spep_6 -3 + 14, 1, 1.26, 1.26 );
setScaleKey( spep_6 -3 + 16, 1, 1.14, 1.14 );
setScaleKey( spep_6 -3 + 18, 1, 1.02, 1.02 );
setScaleKey( spep_6 -3 + 20, 1, 0.90, 0.90 );
setScaleKey( spep_6 -3 + 22, 1, 0.84, 0.84 );
setScaleKey( spep_6 -3 + 24, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 26, 1, 0.78, 0.78 );
setScaleKey( spep_6 -3 + 28, 1, 0.72, 0.72 );
setScaleKey( spep_6 -3 + 30, 1, 0.72, 0.72 );
setScaleKey( spep_6 -3 + 32, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 34, 1, 0.66, 0.66 );
setScaleKey( spep_6 -3 + 36, 1, 0.60, 0.60 );
setScaleKey( spep_6 -3 + 38, 1, 0.60, 0.60 );
setScaleKey( spep_6 -3 + 40, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 42, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 44, 1, 0.48, 0.48 );
setScaleKey( spep_6 -3 + 46, 1, 0.48, 0.48 );
setScaleKey( spep_6 -3 + 48, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 50, 1, 0.42, 0.42 );
setScaleKey( spep_6 -3 + 52, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 54, 1, 0.36, 0.36 );
setScaleKey( spep_6 -3 + 56, 1, 0.30, 0.30 );
setScaleKey( spep_6 -3 + 58, 1, 0.30, 0.30 );
--setScaleKey( spep_6 -3 + 59, 1, 0.325, 0.325 );

setRotateKey( spep_6    + 0, 1, 21.6 );
setRotateKey( spep_6    + 1, 1, 19.6 );
setRotateKey( spep_6    + 2, 1, 17.5 );
setRotateKey( spep_6 -3 + 6, 1, 15.4 );
setRotateKey( spep_6 -3 + 8, 1, 13.3 );
setRotateKey( spep_6 -3 + 10, 1, 11.2 );
setRotateKey( spep_6 -3 + 12, 1, 9.1 );
setRotateKey( spep_6 -3 + 14, 1, 7 );
setRotateKey( spep_6 -3 + 16, 1, 4.9 );
setRotateKey( spep_6 -3 + 18, 1, 2.9 );
setRotateKey( spep_6 -3 + 20, 1, 0.8 );
setRotateKey( spep_6 -3 + 22, 1, -1.3 );
setRotateKey( spep_6 -3 + 24, 1, -1.9 );
setRotateKey( spep_6 -3 + 26, 1, -2.5 );
setRotateKey( spep_6 -3 + 28, 1, -3.1 );
setRotateKey( spep_6 -3 + 30, 1, -3.6 );
setRotateKey( spep_6 -3 + 32, 1, -4.2 );
setRotateKey( spep_6 -3 + 34, 1, -4.8 );
setRotateKey( spep_6 -3 + 36, 1, -5.4 );
setRotateKey( spep_6 -3 + 38, 1, -6 );
setRotateKey( spep_6 -3 + 40, 1, -6.5 );
setRotateKey( spep_6 -3 + 42, 1, -7.1 );
setRotateKey( spep_6 -3 + 44, 1, -7.7 );
setRotateKey( spep_6 -3 + 46, 1, -8.3 );
setRotateKey( spep_6 -3 + 48, 1, -8.8 );
setRotateKey( spep_6 -3 + 50, 1, -9.4 );
setRotateKey( spep_6 -3 + 52, 1, -10 );
setRotateKey( spep_6 -3 + 54, 1, -10.6 );
setRotateKey( spep_6 -3 + 56, 1, -11.1 );
setRotateKey( spep_6 -3 + 58, 1, -11.7 );
--setRotateKey( spep_6 -3 + 59, 1, -11.7 );

--敵飛んでいく
SE020 = playSe( spep_6 + 0, 1121 );
setSeVolumeByWorkId( spep_6 + 0, SE020, 79,"",0.5 );
SE021 = playSe( spep_6 + 8, 1053 );
setSeVolumeByWorkId( spep_6 + 8, SE021, 87,"",0.5 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_7=spep_6+56;
------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(ef_005)(画面割れ)
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 100, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 100, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(ef_006)(背景)
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 100, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 100, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 100, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_7 + 100, 1, 0 );
changeAnime( spep_7 + 0, 1, 107 );

setMoveKey( spep_7    + 0, 1, 36.2, 265.9 , 0 );
setMoveKey( spep_7    + 1, 1, 32.5, 228 , 0 );
setMoveKey( spep_7    + 2, 1, 27.7, 179.3 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 21.9, 119.7 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 15, 49.3 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 7.1, -32 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -1.9, -124.1 , 0 );
setMoveKey( spep_7 -3 + 103, 1, -1.9, -124.1 , 0 );

setScaleKey( spep_7    + 0, 1, 0.22, 0.22 );
setScaleKey( spep_7    + 1, 1, 0.35, 0.35 );
setScaleKey( spep_7    + 2, 1, 0.51, 0.51 );
setScaleKey( spep_7 -3 + 6, 1, 0.7, 0.7 );
setScaleKey( spep_7 -3 + 8, 1, 0.93, 0.93 );
setScaleKey( spep_7 -3 + 10, 1, 1.2, 1.2 );
setScaleKey( spep_7 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 14, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 16, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 18, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 20, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 24, 1, 1.5, 1.5 );
setScaleKey( spep_7 -3 + 26, 1, 1.6, 1.6 );
setScaleKey( spep_7 -3 + 103, 1, 1.6, 1.6 );

setRotateKey( spep_7    + 0, 1, 0 );
setRotateKey( spep_7    + 1, 1, 105 );
setRotateKey( spep_7    + 2, 1, 240 );
setRotateKey( spep_7 -3 + 6, 1, 405 );
setRotateKey( spep_7 -3 + 8, 1, 600 );
setRotateKey( spep_7 -3 + 10, 1, 825 );
setRotateKey( spep_7 -3 + 12, 1, 1080 );
setRotateKey( spep_7 -3 + 103, 1, 1080 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_7 + 14,  906, 32, 0x100, -1, 0, 0, 0 );
setEffShake( spep_7 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_7 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_7 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_7 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_7 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_7 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_7 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_7 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_7 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_7 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_7 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_7 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_7 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_7 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_7 + 14,  1657, 86, 0x80, -1, 0, 0, 0 );  --黒い細い集中線
setEffMoveKey( spep_7 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_7 + 100, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_7 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_7 + 100, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_7 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_7 + 100, shuchusen_bl, 0 );

setEffAlphaKey( spep_7 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_7 + 100, shuchusen_bl, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_7 + 14,  10005, 86, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_7 + 14, ctga, 14, 20 );

setEffMoveKey( spep_7 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 28, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_7 + 100, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_7 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_7 + 100, ctga, 3.2, 3.2 );

setEffRotateKey( spep_7 + 14, ctga, -10.9 );
setEffRotateKey( spep_7 + 15, ctga, -10.9 );
setEffRotateKey( spep_7 + 16, ctga, -14.9 );
setEffRotateKey( spep_7 + 17, ctga, -14.9 );
setEffRotateKey( spep_7 + 18, ctga, -10.9 );
setEffRotateKey( spep_7 + 19, ctga, -10.9 );
setEffRotateKey( spep_7 + 20, ctga, -14.9 );
setEffRotateKey( spep_7 + 21, ctga, -14.9 );
setEffRotateKey( spep_7 + 22, ctga, -10.9 );
setEffRotateKey( spep_7 + 23, ctga, -10.9 );
setEffRotateKey( spep_7 + 24, ctga, -14.9 );
setEffRotateKey( spep_7 + 25, ctga, -14.9 );
setEffRotateKey( spep_7 + 26, ctga, -10.9 );
setEffRotateKey( spep_7 + 27, ctga, -10.9 );
setEffRotateKey( spep_7 + 28, ctga, -14.9 );
setEffRotateKey( spep_7 + 100, ctga, -14.9 );

setEffAlphaKey( spep_7 + 14, ctga, 255 );
setEffAlphaKey( spep_7 + 100, ctga, 255 );

-- ** 音 ** --
--敵飛んでいく
stopSe( spep_7 + 2, SE020, 16 );
--ガッ
playSe( spep_7 + 8, 1054 );


-- ** 背景 ** --
entryFadeBg( spep_7 + 0, 0, 100, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 10 );
endPhase( spep_7 + 98 );
end