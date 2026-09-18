--4024900:超サイヤ人孫悟空&超サイヤ人ベジータ_ライバル同士の共闘（衣装チェンジ後）
--sp_effect_b4_00257
--sp2411

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
SP_01=160522;
SP_02=	160523;--	悟空ラッシュ〜ベジータ気弾

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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 0);

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

   if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then
        spep_0 = 0;
        spep_1 = spep_0 + 112;
        spep_2 = spep_1 + 94;

        skipFrame(0, spep_2 + 664 );  -- スキップ先フレーム指定
        setupMovie(spep_2 + 664 , SP_01, spep_2 + 664 -1 + 2, 1);

        -- ** 音 ** --
        -- 再生させるSEを追加してください。

    else
        setupMovie(0, SP_01, 0, 1);
    end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;

--SE
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--悟空向かってくる
SE005 = playSeVer2( spep_0 + 52, 1182, "",spep_0 + 134, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 52, 9, "",spep_0 + 134, 0, 10, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  100,  515);

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
--顔カットイン
SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 134, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 134, 0, 10, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +118 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_c = spep_0+122;
--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
-- playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;
------------------------------------------------------
--悟空ラッシュ〜ベジータ気弾
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 810, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 810, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 810, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 808, panting_f, 255 );
setEffAlphaKey( spep_2 + 809, panting_f, 255 );
setEffAlphaKey( spep_2 + 810, panting_f, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 102, 1, 0);

changeAnime( spep_2 + 0, 1, 17);
changeAnime( spep_2-3 + 20, 1, 6);
changeAnime( spep_2-3 + 24, 1, 8);
changeAnime( spep_2-3 + 28, 1, 6);
changeAnime( spep_2-3 + 32, 1, 8);
changeAnime( spep_2-3 + 36, 1, 6);
changeAnime( spep_2-3 + 40, 1, 8);
changeAnime( spep_2-3 + 44, 1, 6);
changeAnime( spep_2-3 + 48, 1, 8);
changeAnime( spep_2-3 + 52, 1, 6);
changeAnime( spep_2-3 + 56, 1, 8);
changeAnime( spep_2-3 + 60, 1, 6);
changeAnime( spep_2-3 + 64, 1, 8);
changeAnime( spep_2-3 + 90, 1, 6);

setMoveKey( spep_2 + 0, 1, 9.4, -15.1 , 0 );
setMoveKey( spep_2-3 + 19, 1, 9.4, -15.1 , 0 );

setMoveKey( spep_2-3 + 20, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 23, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 24, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 27, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 28, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 32, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 36, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 39, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 40, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 43, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 44, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 48, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 51, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 52, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, -61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 56, 1, -101, 20.8 , 0 );
setMoveKey( spep_2-3 + 59, 1, -96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 60, 1, -69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 63, 1, -79.4, 54.3 , 0 );

setMoveKey( spep_2-3 + 64, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 65, 1, -118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 67, 1, -294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 69, 1, -272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 71, 1, -307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, -330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 75, 1, -371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 77, 1, -367, 10.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, -378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 81, 1, -377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 83, 1, -385.7, 14 , 0 );
setMoveKey( spep_2-3 + 84, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 85, 1, -388.6, 14 , 0 );
setMoveKey( spep_2-3 + 86, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 87, 1, -390.3, 14 , 0 );
setMoveKey( spep_2-3 + 88, 1, -390.8, 14 , 0 );
setMoveKey( spep_2-3 + 89, 1, -390.8, 14 , 0 );

a = -500 +200;
a1 = -500 +130;
a2 = -500 +370;

b1 = 30;
setMoveKey( spep_2-3 + 90, 1, 560.9+a1, -1149 , 0 );
setMoveKey( spep_2-3 + 92, 1, 538.3+a1, -1150.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 95, 1, 515.7+a1, -1152.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 97, 1, 493.1+a, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 98, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 99, 1, 716.1+a2, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 100, 1, 1196.8+a2, -1183.6 , 0 );
setMoveKey( spep_2-1 + 102, 1, 1203.8+a2, -1180.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 19, 1, 1.87, 1.87 );

setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 23, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 27, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 31, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 35, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 39, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 47, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 51, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 52, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 55, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 59, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 60, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 63, 1, 1.97, 1.97 );

setScaleKey( spep_2-3 + 64, 1, 2.66, 2.66 );
setScaleKey( spep_2-3 + 66, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 89, 1, 2.12, 2.12 );

setScaleKey( spep_2-3 + 90, 1, 12.99, 12.99 );
setScaleKey( spep_2-1 + 102, 1, 12.99, 12.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 19, 1, 0 );

setRotateKey( spep_2-3 + 20, 1, 14 );
setRotateKey( spep_2-3 + 23, 1, 14 );

setRotateKey( spep_2-3 + 24, 1, -8.6 );
setRotateKey( spep_2-3 + 27, 1, -8.6 );

setRotateKey( spep_2-3 + 28, 1, 14 );
setRotateKey( spep_2-3 + 31, 1, 14 );

setRotateKey( spep_2-3 + 32, 1, -8.6 );
setRotateKey( spep_2-3 + 35, 1, -8.6 );

setRotateKey( spep_2-3 + 36, 1, 14 );
setRotateKey( spep_2-3 + 39, 1, 14 );

setRotateKey( spep_2-3 + 40, 1, -8.6 );
setRotateKey( spep_2-3 + 43, 1, -8.6 );

setRotateKey( spep_2-3 + 44, 1, 14 );
setRotateKey( spep_2-3 + 47, 1, 14 );

setRotateKey( spep_2-3 + 48, 1, -8.6 );
setRotateKey( spep_2-3 + 51, 1, -8.6 );

setRotateKey( spep_2-3 + 52, 1, 14 );
setRotateKey( spep_2-3 + 55, 1, 14 );

setRotateKey( spep_2-3 + 56, 1, -8.6 );
setRotateKey( spep_2-3 + 59, 1, -8.6 );

setRotateKey( spep_2-3 + 60, 1, 14 );
setRotateKey( spep_2-3 + 63, 1, 14 );

setRotateKey( spep_2-3 + 64, 1, -8.6 );
setRotateKey( spep_2-3 + 66, 1, -10 );
setRotateKey( spep_2-3 + 89, 1, -10 );

setRotateKey( spep_2-3 + 90, 1, 75 );
setRotateKey( spep_2-3 + 92, 1, 74 );
setRotateKey( spep_2-3 + 94, 1, 73 );
setRotateKey( spep_2-3 + 96, 1, 72 );
setRotateKey( spep_2-1 + 102, 1, 72 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 116, 1, 6);

setMoveKey( spep_2-3 + 116, 1, -29.6, -22.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, -29.5, -22.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, -29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, -29.3, -22.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, -40.7, -21.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, -40.6, -21.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, -40.5, -21.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, -40.4, -21.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, -40.3, -21.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, -55.3, -21.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, -55.2, -21.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, -55.1, -21 , 0 );
setMoveKey( spep_2-3 + 142, 1, -54.9, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, -54.8, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, -54.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 148, 1, -70.3, -22.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, -70.2, -22.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, -70, -22.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, -69.9, -22.6 , 0 );
setMoveKey( spep_2-3 + 156, 1, -69.7, -22.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, -84.3, -22 , 0 );
setMoveKey( spep_2-3 + 160, 1, -87.7, -21.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, -282, -19.2 , 0 );
setMoveKey( spep_2-1 + 164, 1, -457.3, -19.3 , 0 );

setScaleKey( spep_2-3 + 116, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 120, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 126, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 128, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 130, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 136, 1, 2, 2 );
setScaleKey( spep_2-3 + 140, 1, 2, 2 );
setScaleKey( spep_2-3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 146, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 148, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 150, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 152, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 156, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 158, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 162, 1, 1.96, 1.96 );
setScaleKey( spep_2-1 + 164, 1, 1.95, 1.95 );

setRotateKey( spep_2-3 + 116, 1, 45 );
setRotateKey( spep_2-3 + 124, 1, 45 );
setRotateKey( spep_2-3 + 126, 1, 43 );
setRotateKey( spep_2-3 + 134, 1, 43 );
setRotateKey( spep_2-3 + 136, 1, 42.9 );
setRotateKey( spep_2-3 + 146, 1, 42.9 );
setRotateKey( spep_2-3 + 148, 1, 41.2 );
setRotateKey( spep_2-3 + 156, 1, 41.2 );
setRotateKey( spep_2-3 + 158, 1, 39.9 );
setRotateKey( spep_2-3 + 160, 1, 39.9 );
setRotateKey( spep_2-1 + 164, 1, 39.6 );

--敵の動き
setDisp( spep_2-3 + 170, 1, 1);
setDisp( spep_2-1 + 198, 1, 0);

changeAnime( spep_2-3 + 170, 1, 5);

setMoveKey( spep_2-3 + 170, 1, -2.5, 2.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, 0.1, 79.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, 0.7, 69.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, 1.2, 60.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, 1.6, 49.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, 2.1, 39.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, 2.6, 28.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, 3.1, 18 , 0 );
setMoveKey( spep_2-3 + 186, 1, 3.5, 7.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, 4, -3.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, 4.5, -13.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, 5, -24.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, 5.5, -35 , 0 );
setMoveKey( spep_2-3 + 196, 1, 6, -45.6 , 0 );
setMoveKey( spep_2-1 + 198, 1, 6.5, -56.2 , 0 );

setScaleKey( spep_2-3 + 170, 1, 3.59, 3.59 );
setScaleKey( spep_2-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 174, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 176, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 178, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 180, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 186, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 188, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 194, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 196, 1, 0.62, 0.62 );
setScaleKey( spep_2-1 + 198, 1, 0.53, 0.53 );

setRotateKey( spep_2-3 + 170, 1, 10.8 );
setRotateKey( spep_2-1 + 198, 1, 10.8 );

--敵の動き
setDisp( spep_2-3 + 204, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 204, 1, 6);

setMoveKey( spep_2-3 + 204, 1, 390.7, -32.1 , 0 );
setMoveKey( spep_2-3 + 206, 1, 320, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, 249.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, 181.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, 113.2, -32.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, 45, -32.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, -23.9, -31.5 , 0 );
setMoveKey( spep_2-1 + 218, 1, -21.5, -33.7 , 0 );

setScaleKey( spep_2-3 + 204, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 218, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 204, 1, -4.3 );
setRotateKey( spep_2-1 + 218, 1, -4.3 );

--敵の動き
setDisp( spep_2-3 + 276, 1, 1);
setDisp( spep_2-1 + 282, 1, 0);

changeAnime( spep_2-3 + 276, 1, 6);

setMoveKey( spep_2-3 + 276, 1, -252.6, -31.6 , 0 );
setMoveKey( spep_2-3 + 278, 1, -250.7, -33.7 , 0 );
setMoveKey( spep_2-3 + 280, 1, -375.9, -34 , 0 );
setMoveKey( spep_2-1 + 282, 1, -374.3, -32.9 , 0 );

setScaleKey( spep_2-3 + 276, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 282, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 276, 1, -4.3 );
setRotateKey( spep_2-1 + 282, 1, -4.3 );

--敵の動き
setDisp( spep_2-3 + 444, 1, 1);
setDisp( spep_2-1 + 608, 1, 0);

changeAnime( spep_2-3 + 444, 1, 6);
changeAnime( spep_2-3 + 490, 1, 7);
changeAnime( spep_2-3 + 550, 1, 5);

setMoveKey( spep_2-3 + 444, 1, 432, -80.7 , 0 );
setMoveKey( spep_2-3 + 446, 1, 329.2, -80.7 , 0 );
setMoveKey( spep_2-3 + 448, 1, 226.4, -80.7 , 0 );
setMoveKey( spep_2-3 + 450, 1, 118.7, -53.4 , 0 );
setMoveKey( spep_2-3 + 452, 1, -3, -25.6 , 0 );
setMoveKey( spep_2-3 + 454, 1, 118, -80.6 , 0 );
setMoveKey( spep_2-3 + 456, 1, 104.9, -81.7 , 0 );
setMoveKey( spep_2-3 + 458, 1, 92.5, -82.8 , 0 );
setMoveKey( spep_2-3 + 460, 1, 80.9, -83.8 , 0 );
setMoveKey( spep_2-3 + 462, 1, 70.2, -84.7 , 0 );
setMoveKey( spep_2-3 + 464, 1, 60.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 466, 1, 60.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 468, 1, 42.7, -87 , 0 );
setMoveKey( spep_2-3 + 470, 1, 42.7, -87 , 0 );
setMoveKey( spep_2-3 + 472, 1, 28.3, -88.3 , 0 );
setMoveKey( spep_2-3 + 474, 1, 28.3, -88.3 , 0 );
setMoveKey( spep_2-3 + 476, 1, 21.9, -88.9 , 0 );
setMoveKey( spep_2-3 + 478, 1, 21.9, -88.9 , 0 );
setMoveKey( spep_2-3 + 480, 1, 15.5, -89.4 , 0 );
setMoveKey( spep_2-3 + 482, 1, 15.5, -89.4 , 0 );
setMoveKey( spep_2-3 + 484, 1, 9.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 486, 1, 9.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 488, 1, 2.8, -90.4 , 0 );
setMoveKey( spep_2-3 + 489, 1, 2.8, -90.4 , 0 );

setMoveKey( spep_2-3 + 490, 1, 88.6, -36 , 0 );
setMoveKey( spep_2-3 + 492, 1, 89, -36 , 0 );
setMoveKey( spep_2-3 + 494, 1, 89.4, -36 , 0 );
setMoveKey( spep_2-3 + 496, 1, 89.8, -36.1 , 0 );
setMoveKey( spep_2-3 + 498, 1, 90.2, -38.2 , 0 );
setMoveKey( spep_2-3 + 500, 1, 90.6, -38.3 , 0 );
setMoveKey( spep_2-3 + 502, 1, 91, -38.3 , 0 );
setMoveKey( spep_2-3 + 504, 1, 91.6, -39.8 , 0 );
setMoveKey( spep_2-3 + 506, 1, 92, -39.9 , 0 );
setMoveKey( spep_2-3 + 508, 1, 92.4, -39.9 , 0 );
setMoveKey( spep_2-3 + 510, 1, 92.8, -40 , 0 );
setMoveKey( spep_2-3 + 512, 1, 93.2, -42 , 0 );
setMoveKey( spep_2-3 + 514, 1, 93.6, -42.1 , 0 );
setMoveKey( spep_2-3 + 516, 1, 94, -42.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, 94.5, -43.7 , 0 );
setMoveKey( spep_2-3 + 520, 1, 94.9, -43.7 , 0 );
setMoveKey( spep_2-3 + 522, 1, 95.3, -43.8 , 0 );
setMoveKey( spep_2-3 + 524, 1, 95.7, -43.8 , 0 );
setMoveKey( spep_2-3 + 526, 1, 96.1, -45.9 , 0 );
setMoveKey( spep_2-3 + 528, 1, 96.5, -45.9 , 0 );
setMoveKey( spep_2-3 + 530, 1, 96.9, -46 , 0 );
setMoveKey( spep_2-3 + 532, 1, 97.3, -47.6 , 0 );
setMoveKey( spep_2-3 + 534, 1, 97.7, -47.6 , 0 );
setMoveKey( spep_2-3 + 536, 1, 98.1, -47.7 , 0 );
setMoveKey( spep_2-3 + 538, 1, 98.5, -49.2 , 0 );
setMoveKey( spep_2-3 + 540, 1, 98.9, -49.3 , 0 );
setMoveKey( spep_2-3 + 542, 1, 99.3, -49.3 , 0 );
setMoveKey( spep_2-3 + 544, 1, 99.7, -50.8 , 0 );
setMoveKey( spep_2-3 + 546, 1, 100.1, -50.9 , 0 );
setMoveKey( spep_2-3 + 548, 1, 100.5, -50.9 , 0 );
setMoveKey( spep_2-3 + 549, 1, 100.5, -50.9 , 0 );

setMoveKey( spep_2-3 + 550, 1, -173.9, -11.3 , 0 );
setMoveKey( spep_2-3 + 552, 1, -173.7, -11.2 , 0 );
setMoveKey( spep_2-3 + 554, 1, -173.7, -15.4 , 0 );
setMoveKey( spep_2-3 + 556, 1, -173.5, -15.4 , 0 );
setMoveKey( spep_2-3 + 558, 1, -173.6, -19.4 , 0 );
setMoveKey( spep_2-3 + 560, 1, -173.4, -19.4 , 0 );
setMoveKey( spep_2-3 + 562, 1, -173.3, -23.6 , 0 );
setMoveKey( spep_2-3 + 564, 1, -173.1, -23.6 , 0 );
setMoveKey( spep_2-3 + 566, 1, -173, -27.6 , 0 );
setMoveKey( spep_2-3 + 568, 1, -172.8, -27.6 , 0 );
setMoveKey( spep_2-3 + 570, 1, -172.8, -31.6 , 0 );
setMoveKey( spep_2-3 + 572, 1, -172.7, -31.6 , 0 );
setMoveKey( spep_2-3 + 574, 1, -172.7, -35.6 , 0 );
setMoveKey( spep_2-3 + 576, 1, -172.5, -35.6 , 0 );
setMoveKey( spep_2-3 + 578, 1, -172.5, -39.7 , 0 );
setMoveKey( spep_2-3 + 580, 1, -172.3, -39.7 , 0 );
setMoveKey( spep_2-3 + 582, 1, -172.3, -43.6 , 0 );
setMoveKey( spep_2-3 + 584, 1, -172.1, -43.6 , 0 );
setMoveKey( spep_2-3 + 586, 1, -172.1, -47.6 , 0 );
setMoveKey( spep_2-3 + 588, 1, -171.9, -47.6 , 0 );
setMoveKey( spep_2-3 + 590, 1, -171.8, -51.7 , 0 );
setMoveKey( spep_2-3 + 592, 1, -171.6, -51.6 , 0 );
setMoveKey( spep_2-3 + 594, 1, -171.6, -55.6 , 0 );
setMoveKey( spep_2-3 + 596, 1, -171.4, -55.6 , 0 );
setMoveKey( spep_2-3 + 598, 1, -171.5, -59.5 , 0 );
setMoveKey( spep_2-3 + 600, 1, -171.3, -59.5 , 0 );
setMoveKey( spep_2-3 + 602, 1, -171.3, -63.4 , 0 );
setMoveKey( spep_2-3 + 604, 1, -171.1, -63.4 , 0 );
setMoveKey( spep_2-3 + 606, 1, -171.1, -67.3 , 0 );
setMoveKey( spep_2-1 + 608, 1, -171.1, -69.6 , 0 );

setScaleKey( spep_2-3 + 444, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 448, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 450, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 452, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 454, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 489, 1, 0.69, 0.69 );

setScaleKey( spep_2-3 + 490, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 496, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 498, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 500, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 502, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 504, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 510, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 512, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 516, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 518, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 524, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 526, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 530, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 532, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 536, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 538, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 542, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 544, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 548, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 549, 1, 0.44, 0.44 );

setScaleKey( spep_2-3 + 550, 1, 2.29, 2.29 );
setScaleKey( spep_2-3 + 552, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 554, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 556, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 558, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 560, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 562, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 564, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 566, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 568, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 570, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 572, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 574, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 576, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 578, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 580, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 582, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 584, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 586, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 588, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 590, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 592, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 594, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 596, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 598, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 600, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 602, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 604, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 606, 1, 1.67, 1.67 );
setScaleKey( spep_2-1 + 608, 1, 1.65, 1.65 );

setRotateKey( spep_2-3 + 444, 1, 33 );
setRotateKey( spep_2-3 + 448, 1, 33 );
setRotateKey( spep_2-3 + 450, 1, 16.3 );
setRotateKey( spep_2-3 + 452, 1, 12.2 );
setRotateKey( spep_2-3 + 454, 1, 8.1 );
setRotateKey( spep_2-3 + 456, 1, 6.2 );
setRotateKey( spep_2-3 + 458, 1, 4.3 );
setRotateKey( spep_2-3 + 460, 1, 2.6 );
setRotateKey( spep_2-3 + 462, 1, 1 );
setRotateKey( spep_2-3 + 464, 1, -0.5 );
setRotateKey( spep_2-3 + 466, 1, -0.5 );
setRotateKey( spep_2-3 + 468, 1, -3.2 );
setRotateKey( spep_2-3 + 470, 1, -3.2 );
setRotateKey( spep_2-3 + 472, 1, -5.3 );
setRotateKey( spep_2-3 + 474, 1, -5.3 );
setRotateKey( spep_2-3 + 476, 1, -6.3 );
setRotateKey( spep_2-3 + 478, 1, -6.3 );
setRotateKey( spep_2-3 + 480, 1, -7.2 );
setRotateKey( spep_2-3 + 482, 1, -7.2 );
setRotateKey( spep_2-3 + 484, 1, -8.2 );
setRotateKey( spep_2-3 + 486, 1, -8.2 );
setRotateKey( spep_2-3 + 489, 1, -9.1 );

setRotateKey( spep_2-3 + 490, 1, 81 );
setRotateKey( spep_2-3 + 549, 1, 81 );

setRotateKey( spep_2-3 + 550, 1, 33 );
setRotateKey( spep_2-3 + 552, 1, 33 );
setRotateKey( spep_2-3 + 554, 1, 34.4 );
setRotateKey( spep_2-3 + 556, 1, 34.4 );
setRotateKey( spep_2-3 + 558, 1, 35.8 );
setRotateKey( spep_2-3 + 560, 1, 35.8 );
setRotateKey( spep_2-3 + 562, 1, 37.1 );
setRotateKey( spep_2-3 + 564, 1, 37.1 );
setRotateKey( spep_2-3 + 566, 1, 38.5 );
setRotateKey( spep_2-3 + 568, 1, 38.5 );
setRotateKey( spep_2-3 + 570, 1, 39.9 );
setRotateKey( spep_2-3 + 572, 1, 39.9 );
setRotateKey( spep_2-3 + 574, 1, 41.3 );
setRotateKey( spep_2-3 + 576, 1, 41.3 );
setRotateKey( spep_2-3 + 578, 1, 42.7 );
setRotateKey( spep_2-3 + 580, 1, 42.7 );
setRotateKey( spep_2-3 + 582, 1, 44 );
setRotateKey( spep_2-3 + 584, 1, 44 );
setRotateKey( spep_2-3 + 586, 1, 45.4 );
setRotateKey( spep_2-3 + 588, 1, 45.4 );
setRotateKey( spep_2-3 + 590, 1, 46.8 );
setRotateKey( spep_2-3 + 592, 1, 46.8 );
setRotateKey( spep_2-3 + 594, 1, 48.2 );
setRotateKey( spep_2-3 + 596, 1, 48.2 );
setRotateKey( spep_2-3 + 598, 1, 49.6 );
setRotateKey( spep_2-3 + 600, 1, 49.6 );
setRotateKey( spep_2-3 + 602, 1, 50.9 );
setRotateKey( spep_2-3 + 604, 1, 50.9 );
setRotateKey( spep_2-3 + 606, 1, 52.3 );
setRotateKey( spep_2-1 + 608, 1, 53 );

--敵の動き
setDisp( spep_2-3 + 616, 1, 1);
setDisp( spep_2-1 + 654, 1, 0);

changeAnime( spep_2-3 + 616, 1, 8);
changeAnime( spep_2-3 + 648, 1, 6);

setMoveKey( spep_2-3 + 616, 1, 490.8, 680.7 , 0 );
setMoveKey( spep_2-3 + 618, 1, 459.3, 582.4 , 0 );
setMoveKey( spep_2-3 + 620, 1, 427.8, 484.1 , 0 );
setMoveKey( spep_2-3 + 622, 1, 396.3, 385.9 , 0 );
setMoveKey( spep_2-3 + 624, 1, 364.8, 287.6 , 0 );
setMoveKey( spep_2-3 + 626, 1, 333.3, 189.4 , 0 );
setMoveKey( spep_2-3 + 628, 1, 301.8, 91.1 , 0 );
setMoveKey( spep_2-3 + 630, 1, 270.3, -7.2 , 0 );
setMoveKey( spep_2-3 + 632, 1, 237.2, -99.4 , 0 );
setMoveKey( spep_2-3 + 634, 1, 215.1, -169.3 , 0 );
setMoveKey( spep_2-3 + 636, 1, 215.1, -169.3 , 0 );
setMoveKey( spep_2-3 + 638, 1, 210.1, -157.6 , 0 );
setMoveKey( spep_2-3 + 640, 1, 205, -146 , 0 );
setMoveKey( spep_2-3 + 642, 1, 201.4, -137.8 , 0 );
setMoveKey( spep_2-3 + 644, 1, 197.8, -129.6 , 0 );
setMoveKey( spep_2-3 + 646, 1, 194.2, -121.3 , 0 );
setMoveKey( spep_2-3 + 647, 1, 194.2, -121.3 , 0 );

setMoveKey( spep_2-3 + 648, 1, 178.9, -142.4 , 0 );
setMoveKey( spep_2-3 + 650, 1, 177.7, -149.3 , 0 );
setMoveKey( spep_2-3 + 652, 1, 176.4, -156.1 , 0 );
setMoveKey( spep_2-1 + 654, 1, 175.2, -162.9 , 0 );

setScaleKey( spep_2-3 + 616, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 647, 1, 2.5, 2.5 );

setScaleKey( spep_2-3 + 648, 1, 2, 2 );
setScaleKey( spep_2-1 + 654, 1, 2, 2 );

setRotateKey( spep_2-3 + 616, 1, -103 );
setRotateKey( spep_2-3 + 618, 1, -103.5 );
setRotateKey( spep_2-3 + 620, 1, -104 );
setRotateKey( spep_2-3 + 622, 1, -104.5 );
setRotateKey( spep_2-3 + 624, 1, -105 );
setRotateKey( spep_2-3 + 626, 1, -105.5 );
setRotateKey( spep_2-3 + 628, 1, -106 );
setRotateKey( spep_2-3 + 630, 1, -106.5 );
setRotateKey( spep_2-3 + 632, 1, -105.2 );
setRotateKey( spep_2-3 + 634, 1, -105.1 );
setRotateKey( spep_2-3 + 636, 1, -105.1 );
setRotateKey( spep_2-3 + 638, 1, -107 );
setRotateKey( spep_2-3 + 640, 1, -109 );
setRotateKey( spep_2-3 + 642, 1, -109.3 );
setRotateKey( spep_2-3 + 644, 1, -109.6 );
setRotateKey( spep_2-3 + 647, 1, -109.9 );

setRotateKey( spep_2-3 + 648, 1, -17 );
setRotateKey( spep_2-3 + 650, 1, -18 );
setRotateKey( spep_2-3 + 652, 1, -19 );
setRotateKey( spep_2-1 + 654, 1, -20 );

--敵の動き
setDisp( spep_2-3 + 704, 1, 1);
setDisp( spep_2-1 + 742, 1, 0);

changeAnime( spep_2-3 + 704, 1, 6);

setMoveKey( spep_2-3 + 704, 1, 188.2, -184.9 , 0 );
setMoveKey( spep_2-1 + 742, 1, 188.2, -184.9 , 0 );

setScaleKey( spep_2-3 + 704, 1, 2, 2 );
setScaleKey( spep_2-1 + 742, 1, 2, 2 );

setRotateKey( spep_2-3 + 704, 1, -16 );
setRotateKey( spep_2-1 + 742, 1, -16 );

--SE
--悟空ラッシュ
SE013 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 6, 1110, "",spep_2 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 6, SE014, 82 );
SE015 = playSeVer2( spep_2 + 6, 1009, "",spep_2 + 34, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 6, SE015, 89 );
SE016 = playSeVer2( spep_2 + 20, 1110, "",spep_2 + 44, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 20, SE016, 79 );
SE017 = playSeVer2( spep_2 + 20, 1009, "",spep_2 + 44, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 20, SE017, 80 );
SE018 = playSeVer2( spep_2 + 26, 1000, "",spep_2 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 26, SE018, 75 );
SE019 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE019, 84 );
SE020 = playSeVer2( spep_2 + 40, 1010, "",spep_2 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 40, SE020, 92 );
SE021 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 69 );
SE022 = playSeVer2( spep_2 + 52, 1009, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 52, SE022, 79 );
SE023 = playSeVer2( spep_2 + 58, 1000, "",spep_2 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 58, SE023, 67 );
SE024 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE024, 86 );

--ベジータ蹴り
SE025 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);	
SE026 = playSeVer2( spep_2 + 94, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE026, 86 );
SE027 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE027, 83 );
SE028 = playSeVer2( spep_2 + 100, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE028, 89 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 158, 1121, "",spep_2 + 224, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 158, 1183, "",spep_2 + 224, 0, 18, -1);

--岩場激突
SE032 = playSeVer2( spep_2 + 214, 1159, "",spep_2 + 294, 0, 20, -1);

--岩場中移動
SE033 = playSeVer2( spep_2 + 238, 1044, "",spep_2 + 288, 0, 10, -1);

--岩場から出る
SE034 = playSeVer2( spep_2 + 274, 1027, "", 0, 0, 0, -1);

--悟空向かってくる
SE035 = playSeVer2( spep_2 + 296, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 296, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE036, 60 );
SE037 = playSeVer2( spep_2 + 296, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE037, 136 );
SE038 = playSeVer2( spep_2 + 302, 1355, "",spep_2 + 364, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 302, SE038, 72 );
setPitch( spep_2 + 302, SE038, 300 );
setTimeStretch( SE038, 1.2, 30, 4 );

--岩壊す
SE039 = playSeVer2( spep_2 + 348, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 348, 1159, "",spep_2 + 468, 0, 18, -1);
SE041 = playSeVer2( spep_2 + 348, 1068, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 348, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE042, 71 );

--加速
SE043 = playSeVer2( spep_2 + 388, 1304, "",spep_2 + 460, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 388, SE043, 85 );
SE044 = playSeVer2( spep_2 + 388, 1067, "",spep_2 + 460, 0, 8, -1);

--悟空つらぬく
SE045 = playSeVer2( spep_2 + 448, 1110, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 448, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 456, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE047, 81 );
SE048 = playSeVer2( spep_2 + 458, 1072, "", 0, 0, 0, -1);

--瞬間移動
SE049 = playSeVer2( spep_2 + 628, 1109, "", 0, 0, 0, -1);

--敵地面落ちる
SE050 = playSeVer2( spep_2 + 632, 1012, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 632, 1008, "", 0, 0, 0, -1);

--腕前に出す
SE052 = playSeVer2( spep_2 + 662, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE053 = playSeVer2( spep_2 + 704, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 704, SE053, 170 );
SE054 = playSeVer2( spep_2 + 704, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 704, SE054, 150 );
SE055 = playSeVer2( spep_2 + 704, 1276, "",spep_2 + 738, 0, 8, -1);

--気弾発射
SE056 = playSeVer2( spep_2 + 730, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 730, 1213, "",spep_2 + 852, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 730, SE057, 66 );
SE058 = playSeVer2( spep_2 + 730, 1168, "",spep_2 + 852, 0, 10, -1);
SE059 = playSeVer2( spep_2 + 730, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 812, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2+810;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------

--SE
--爆発
SE060 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_3 + 30, 1159, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_3 + 30, 1188, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_3+0);
endPhase( spep_3 + 110 );
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------

setupMovie(0, SP_01, 0, 1);

------------------------------------------------------
--セリフカットイン〜画面手前ダッシュ
------------------------------------------------------
--はじめの準備
spep_0=0;

--SE
--オーラ
SE002 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 24, 1036, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 48, 1036, "", 0, 0, 0, -1);

--悟空向かってくる
SE005 = playSeVer2( spep_0 + 52, 1182, "",spep_0 + 134, 0, 10, -1);
SE006 = playSeVer2( spep_0 + 52, 9, "",spep_0 + 134, 0, 10, -1);

--ベジータ向かってくる
SE007 = playSeVer2( spep_0 + 56, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 56, SE007, 57 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 122, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 80; --エンドフェイズのフレーム数を置き換える

    pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
    pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
    stopMovie( SP_dodge + 9 );   -- 停止
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE002, 0 );
    stopSe( SP_dodge - 12, SE003, 0 );
    stopSe( SP_dodge - 12, SE004, 0 );
    stopSe( SP_dodge - 12, SE005, 0 );
    stopSe( SP_dodge - 12, SE006, 0 );
    stopSe( SP_dodge - 12, SE007, 0 );
    
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
spep_x=spep_0 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x100, -1, 0, -100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, -100,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -100,  515);

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
--顔カットイン
--SE001 = playSeVer2( spep_x +12, 1018, "", 0, 0, 0, -1);

--オーラ
SE008 = playSeVer2( spep_0 + 72, 1036, "", 0, 0, 0, -1);

--ベジータ向かってくる
SE009 = playSeVer2( spep_0 + 88, 1182, "",spep_0 + 134, 0, 10, -1);
SE010 = playSeVer2( spep_0 + 88, 9, "",spep_0 + 134, 0, 10, -1);

--オーラ
SE011 = playSeVer2( spep_0 + 96, 1036, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_0 +118 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

--次の準備
spep_c = spep_0+122;
--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_c + 94;
------------------------------------------------------
--悟空ラッシュ〜ベジータ気弾
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 810, panting_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, panting_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 810, panting_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, panting_f, 0 );
setEffRotateKey( spep_2 + 810, panting_f, 0 );
setEffAlphaKey( spep_2 + 0, panting_f, 255 );
setEffAlphaKey( spep_2 + 808, panting_f, 255 );
setEffAlphaKey( spep_2 + 809, panting_f, 255 );
setEffAlphaKey( spep_2 + 810, panting_f, 0 );

--敵の動き
setDisp( spep_2 + 0, 1, 1);
setDisp( spep_2-1 + 102, 1, 0);

changeAnime( spep_2 + 0, 1, 117);
changeAnime( spep_2-3 + 20, 1, 106);
changeAnime( spep_2-3 + 24, 1, 108);
changeAnime( spep_2-3 + 28, 1, 106);
changeAnime( spep_2-3 + 32, 1, 108);
changeAnime( spep_2-3 + 36, 1, 106);
changeAnime( spep_2-3 + 40, 1, 108);
changeAnime( spep_2-3 + 44, 1, 106);
changeAnime( spep_2-3 + 48, 1, 108);
changeAnime( spep_2-3 + 52, 1, 106);
changeAnime( spep_2-3 + 56, 1, 108);
changeAnime( spep_2-3 + 60, 1, 106);
changeAnime( spep_2-3 + 64, 1, 108);
changeAnime( spep_2-3 + 90, 1, 106);

setMoveKey( spep_2 + 0, 1, -9.4, -15.1 , 0 );
setMoveKey( spep_2-3 + 19, 1, -9.4, -15.1 , 0 );

setMoveKey( spep_2-3 + 20, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 23, 1, 61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 24, 1, 101, 20.8 , 0 );
setMoveKey( spep_2-3 + 27, 1, 96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 28, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 31, 1, 61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 32, 1, 101, 20.8 , 0 );
setMoveKey( spep_2-3 + 35, 1, 96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 36, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 39, 1, 61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 40, 1, 101, 20.8 , 0 );
setMoveKey( spep_2-3 + 43, 1, 96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 44, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 47, 1, 61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 48, 1, 101, 20.8 , 0 );
setMoveKey( spep_2-3 + 51, 1, 96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 52, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 55, 1, 61.8, 41.8 , 0 );

setMoveKey( spep_2-3 + 56, 1, 101, 20.8 , 0 );
setMoveKey( spep_2-3 + 59, 1, 96.4, 25.6 , 0 );

setMoveKey( spep_2-3 + 60, 1, 69.6, 50.4 , 0 );
setMoveKey( spep_2-3 + 63, 1, 79.4, 54.3 , 0 );

setMoveKey( spep_2-3 + 64, 1, 118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 65, 1, 118.8, 35.1 , 0 );
setMoveKey( spep_2-3 + 66, 1, 294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 67, 1, 294.3, 10.7 , 0 );
setMoveKey( spep_2-3 + 68, 1, 272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 69, 1, 272.9, 10.9 , 0 );
setMoveKey( spep_2-3 + 70, 1, 307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 71, 1, 307.6, 11.5 , 0 );
setMoveKey( spep_2-3 + 72, 1, 330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 73, 1, 330.4, 13.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, 371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 75, 1, 371.2, 8.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 367, 10.9 , 0 );
setMoveKey( spep_2-3 + 77, 1, 367, 10.9 , 0 );
setMoveKey( spep_2-3 + 78, 1, 378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 79, 1, 378.9, 11.5 , 0 );
setMoveKey( spep_2-3 + 80, 1, 377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 81, 1, 377.9, 13.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 385.7, 14 , 0 );
setMoveKey( spep_2-3 + 83, 1, 385.7, 14 , 0 );
setMoveKey( spep_2-3 + 84, 1, 388.6, 14 , 0 );
setMoveKey( spep_2-3 + 85, 1, 388.6, 14 , 0 );
setMoveKey( spep_2-3 + 86, 1, 390.3, 14 , 0 );
setMoveKey( spep_2-3 + 87, 1, 390.3, 14 , 0 );
setMoveKey( spep_2-3 + 88, 1, 390.8, 14 , 0 );
setMoveKey( spep_2-3 + 89, 1, 390.8, 14 , 0 );

a = -500 +200;
a1 = -500 +130;
a2 = -500 +370;

b1 = 30;
setMoveKey( spep_2-3 + 90, 1, -190.9, -1149 , 0 );
setMoveKey( spep_2-3 + 92, 1, -168.3, -1150.8 , 0 );
setMoveKey( spep_2-3 + 94, 1, -145.7, -1152.6 , 0 );
setMoveKey( spep_2-3 + 95, 1, -145.7, -1152.6 , 0 );
setMoveKey( spep_2-3 + 96, 1, -193.1, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 97, 1, -193.1, -1154.4 +b1 , 0 ); --足当たるところ
setMoveKey( spep_2-3 + 98, 1, -586.1, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 99, 1, -586.1, -1168.7 +b1 , 0 );
setMoveKey( spep_2-3 + 100, 1, -1066.8, -1183.6 , 0 );
setMoveKey( spep_2-1 + 102, 1, -1073.8, -1180.6 , 0 );

setScaleKey( spep_2 + 0, 1, 1.87, 1.87 );
setScaleKey( spep_2-3 + 19, 1, 1.87, 1.87 );

setScaleKey( spep_2-3 + 20, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 23, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 24, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 27, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 28, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 31, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 32, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 35, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 36, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 39, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 40, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 43, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 44, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 47, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 48, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 51, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 52, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 55, 1, 1.72, 1.72 );

setScaleKey( spep_2-3 + 56, 1, 2.05, 2.05 );
setScaleKey( spep_2-3 + 59, 1, 2.05, 2.05 );

setScaleKey( spep_2-3 + 60, 1, 1.72, 1.72 );
setScaleKey( spep_2-3 + 63, 1, 1.97, 1.97 );

setScaleKey( spep_2-3 + 64, 1, 2.66, 2.66 );
setScaleKey( spep_2-3 + 66, 1, 2.44, 2.44 );
setScaleKey( spep_2-3 + 68, 1, 2.12, 2.12 );
setScaleKey( spep_2-3 + 89, 1, 2.12, 2.12 );

setScaleKey( spep_2-3 + 90, 1, 12.99, 12.99 );
setScaleKey( spep_2-1 + 102, 1, 12.99, 12.99 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2-3 + 19, 1, 0 );

setRotateKey( spep_2-3 + 20, 1, -14 );
setRotateKey( spep_2-3 + 23, 1, -14 );

setRotateKey( spep_2-3 + 24, 1, 8.6 );
setRotateKey( spep_2-3 + 27, 1, 8.6 );

setRotateKey( spep_2-3 + 28, 1, -14 );
setRotateKey( spep_2-3 + 31, 1, -14 );

setRotateKey( spep_2-3 + 32, 1, 8.6 );
setRotateKey( spep_2-3 + 35, 1, 8.6 );

setRotateKey( spep_2-3 + 36, 1, -14 );
setRotateKey( spep_2-3 + 39, 1, -14 );

setRotateKey( spep_2-3 + 40, 1, 8.6 );
setRotateKey( spep_2-3 + 43, 1, 8.6 );

setRotateKey( spep_2-3 + 44, 1, -14 );
setRotateKey( spep_2-3 + 47, 1, -14 );

setRotateKey( spep_2-3 + 48, 1, 8.6 );
setRotateKey( spep_2-3 + 51, 1, 8.6 );

setRotateKey( spep_2-3 + 52, 1, -14 );
setRotateKey( spep_2-3 + 55, 1, -14 );

setRotateKey( spep_2-3 + 56, 1, 8.6 );
setRotateKey( spep_2-3 + 59, 1, 8.6 );

setRotateKey( spep_2-3 + 60, 1, -14 );
setRotateKey( spep_2-3 + 63, 1, -14 );

setRotateKey( spep_2-3 + 64, 1, 8.6 );
setRotateKey( spep_2-3 + 66, 1, 10 );
setRotateKey( spep_2-3 + 89, 1, 10 );

setRotateKey( spep_2-3 + 90, 1, -75 );
setRotateKey( spep_2-3 + 92, 1, -74 );
setRotateKey( spep_2-3 + 94, 1, -73 );
setRotateKey( spep_2-3 + 96, 1, -72 );
setRotateKey( spep_2-1 + 102, 1, -72 );

--敵の動き
setDisp( spep_2-3 + 116, 1, 1);
setDisp( spep_2-1 + 164, 1, 0);

changeAnime( spep_2-3 + 116, 1, 106);

setMoveKey( spep_2-3 + 116, 1, 29.6, -22.5 , 0 );
setMoveKey( spep_2-3 + 118, 1, 29.5, -22.4 , 0 );
setMoveKey( spep_2-3 + 120, 1, 29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 122, 1, 29.4, -22.4 , 0 );
setMoveKey( spep_2-3 + 124, 1, 29.3, -22.3 , 0 );
setMoveKey( spep_2-3 + 126, 1, 40.7, -21.7 , 0 );
setMoveKey( spep_2-3 + 128, 1, 40.6, -21.6 , 0 );
setMoveKey( spep_2-3 + 130, 1, 40.5, -21.6 , 0 );
setMoveKey( spep_2-3 + 132, 1, 40.4, -21.6 , 0 );
setMoveKey( spep_2-3 + 134, 1, 40.3, -21.5 , 0 );
setMoveKey( spep_2-3 + 136, 1, 55.3, -21.1 , 0 );
setMoveKey( spep_2-3 + 138, 1, 55.2, -21.1 , 0 );
setMoveKey( spep_2-3 + 140, 1, 55.1, -21 , 0 );
setMoveKey( spep_2-3 + 142, 1, 54.9, -21 , 0 );
setMoveKey( spep_2-3 + 144, 1, 54.8, -21 , 0 );
setMoveKey( spep_2-3 + 146, 1, 54.7, -20.9 , 0 );
setMoveKey( spep_2-3 + 148, 1, 70.3, -22.7 , 0 );
setMoveKey( spep_2-3 + 150, 1, 70.2, -22.6 , 0 );
setMoveKey( spep_2-3 + 152, 1, 70, -22.6 , 0 );
setMoveKey( spep_2-3 + 154, 1, 69.9, -22.6 , 0 );
setMoveKey( spep_2-3 + 156, 1, 69.7, -22.5 , 0 );
setMoveKey( spep_2-3 + 158, 1, 84.3, -22 , 0 );
setMoveKey( spep_2-3 + 160, 1, 87.7, -21.9 , 0 );
setMoveKey( spep_2-3 + 162, 1, 282, -19.2 , 0 );
setMoveKey( spep_2-1 + 164, 1, 457.3, -19.3 , 0 );

setScaleKey( spep_2-3 + 116, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 120, 1, 2.04, 2.04 );
setScaleKey( spep_2-3 + 122, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 126, 1, 2.03, 2.03 );
setScaleKey( spep_2-3 + 128, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 130, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 132, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 134, 1, 2.01, 2.01 );
setScaleKey( spep_2-3 + 136, 1, 2, 2 );
setScaleKey( spep_2-3 + 140, 1, 2, 2 );
setScaleKey( spep_2-3 + 142, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 146, 1, 1.99, 1.99 );
setScaleKey( spep_2-3 + 148, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 150, 1, 1.98, 1.98 );
setScaleKey( spep_2-3 + 152, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 156, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 158, 1, 1.96, 1.96 );
setScaleKey( spep_2-3 + 162, 1, 1.96, 1.96 );
setScaleKey( spep_2-1 + 164, 1, 1.95, 1.95 );

setRotateKey( spep_2-3 + 116, 1, -45 );
setRotateKey( spep_2-3 + 124, 1, -45 );
setRotateKey( spep_2-3 + 126, 1, -43 );
setRotateKey( spep_2-3 + 134, 1, -43 );
setRotateKey( spep_2-3 + 136, 1, -42.9 );
setRotateKey( spep_2-3 + 146, 1, -42.9 );
setRotateKey( spep_2-3 + 148, 1, -41.2 );
setRotateKey( spep_2-3 + 156, 1, -41.2 );
setRotateKey( spep_2-3 + 158, 1, -39.9 );
setRotateKey( spep_2-3 + 160, 1, -39.9 );
setRotateKey( spep_2-1 + 164, 1, -39.6 );

--敵の動き
setDisp( spep_2-3 + 170, 1, 1);
setDisp( spep_2-1 + 198, 1, 0);

changeAnime( spep_2-3 + 170, 1, 105);

setMoveKey( spep_2-3 + 170, 1, 2.5, 2.6 , 0 );
setMoveKey( spep_2-3 + 172, 1, -0.1, 79.3 , 0 );
setMoveKey( spep_2-3 + 174, 1, -0.7, 69.8 , 0 );
setMoveKey( spep_2-3 + 176, 1, -1.2, 60.3 , 0 );
setMoveKey( spep_2-3 + 178, 1, -1.6, 49.7 , 0 );
setMoveKey( spep_2-3 + 180, 1, -2.1, 39.1 , 0 );
setMoveKey( spep_2-3 + 182, 1, -2.6, 28.5 , 0 );
setMoveKey( spep_2-3 + 184, 1, -3.1, 18 , 0 );
setMoveKey( spep_2-3 + 186, 1, -3.5, 7.4 , 0 );
setMoveKey( spep_2-3 + 188, 1, -4, -3.2 , 0 );
setMoveKey( spep_2-3 + 190, 1, -4.5, -13.8 , 0 );
setMoveKey( spep_2-3 + 192, 1, -5, -24.4 , 0 );
setMoveKey( spep_2-3 + 194, 1, -5.5, -35 , 0 );
setMoveKey( spep_2-3 + 196, 1, -6, -45.6 , 0 );
setMoveKey( spep_2-1 + 198, 1, -6.5, -56.2 , 0 );

setScaleKey( spep_2-3 + 170, 1, 3.59, 3.59 );
setScaleKey( spep_2-3 + 172, 1, 1.68, 1.68 );
setScaleKey( spep_2-3 + 174, 1, 1.59, 1.59 );
setScaleKey( spep_2-3 + 176, 1, 1.51, 1.51 );
setScaleKey( spep_2-3 + 178, 1, 1.42, 1.42 );
setScaleKey( spep_2-3 + 180, 1, 1.33, 1.33 );
setScaleKey( spep_2-3 + 182, 1, 1.24, 1.24 );
setScaleKey( spep_2-3 + 184, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 186, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 188, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 190, 1, 0.89, 0.89 );
setScaleKey( spep_2-3 + 192, 1, 0.8, 0.8 );
setScaleKey( spep_2-3 + 194, 1, 0.71, 0.71 );
setScaleKey( spep_2-3 + 196, 1, 0.62, 0.62 );
setScaleKey( spep_2-1 + 198, 1, 0.53, 0.53 );

setRotateKey( spep_2-3 + 170, 1, -10.8 );
setRotateKey( spep_2-1 + 198, 1, -10.8 );

--敵の動き
setDisp( spep_2-3 + 204, 1, 1);
setDisp( spep_2-1 + 218, 1, 0);

changeAnime( spep_2-3 + 204, 1, 106);

setMoveKey( spep_2-3 + 204, 1, -390.7, -32.1 , 0 );
setMoveKey( spep_2-3 + 206, 1, -320, -32.1 , 0 );
setMoveKey( spep_2-3 + 208, 1, -249.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 210, 1, -181.3, -32.1 , 0 );
setMoveKey( spep_2-3 + 212, 1, -113.2, -32.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, -45, -32.1 , 0 );
setMoveKey( spep_2-3 + 216, 1, 23.9, -31.5 , 0 );
setMoveKey( spep_2-1 + 218, 1, 21.5, -33.7 , 0 );

setScaleKey( spep_2-3 + 204, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 218, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 204, 1, 4.3 );
setRotateKey( spep_2-1 + 218, 1, 4.3 );

--敵の動き
setDisp( spep_2-3 + 276, 1, 1);
setDisp( spep_2-1 + 282, 1, 0);

changeAnime( spep_2-3 + 276, 1, 106);

setMoveKey( spep_2-3 + 276, 1, 252.6, -31.6 , 0 );
setMoveKey( spep_2-3 + 278, 1, 250.7, -33.7 , 0 );
setMoveKey( spep_2-3 + 280, 1, 375.9, -34 , 0 );
setMoveKey( spep_2-1 + 282, 1, 374.3, -32.9 , 0 );

setScaleKey( spep_2-3 + 276, 1, 0.22, 0.22 );
setScaleKey( spep_2-1 + 282, 1, 0.22, 0.22 );

setRotateKey( spep_2-3 + 276, 1, 4.3 );
setRotateKey( spep_2-1 + 282, 1, 4.3 );

--敵の動き
setDisp( spep_2-3 + 444, 1, 1);
setDisp( spep_2-1 + 608, 1, 0);

changeAnime( spep_2-3 + 444, 1, 106);
changeAnime( spep_2-3 + 490, 1, 107);
changeAnime( spep_2-3 + 550, 1, 105);

setMoveKey( spep_2-3 + 444, 1, -432, -80.7 , 0 );
setMoveKey( spep_2-3 + 446, 1, -329.2, -80.7 , 0 );
setMoveKey( spep_2-3 + 448, 1, -226.4, -80.7 , 0 );
setMoveKey( spep_2-3 + 450, 1, -118.7, -53.4 , 0 );
setMoveKey( spep_2-3 + 452, 1, 3, -25.6 , 0 );
setMoveKey( spep_2-3 + 454, 1, -118, -80.6 , 0 );
setMoveKey( spep_2-3 + 456, 1, -104.9, -81.7 , 0 );
setMoveKey( spep_2-3 + 458, 1, -92.5, -82.8 , 0 );
setMoveKey( spep_2-3 + 460, 1, -80.9, -83.8 , 0 );
setMoveKey( spep_2-3 + 462, 1, -70.2, -84.7 , 0 );
setMoveKey( spep_2-3 + 464, 1, -60.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 466, 1, -60.2, -85.6 , 0 );
setMoveKey( spep_2-3 + 468, 1, -42.7, -87 , 0 );
setMoveKey( spep_2-3 + 470, 1, -42.7, -87 , 0 );
setMoveKey( spep_2-3 + 472, 1, -28.3, -88.3 , 0 );
setMoveKey( spep_2-3 + 474, 1, -28.3, -88.3 , 0 );
setMoveKey( spep_2-3 + 476, 1, -21.9, -88.9 , 0 );
setMoveKey( spep_2-3 + 478, 1, -21.9, -88.9 , 0 );
setMoveKey( spep_2-3 + 480, 1, -15.5, -89.4 , 0 );
setMoveKey( spep_2-3 + 482, 1, -15.5, -89.4 , 0 );
setMoveKey( spep_2-3 + 484, 1, -9.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 486, 1, -9.1, -89.9 , 0 );
setMoveKey( spep_2-3 + 488, 1, -2.8, -90.4 , 0 );
setMoveKey( spep_2-3 + 489, 1, -2.8, -90.4 , 0 );

setMoveKey( spep_2-3 + 490, 1, -88.6, -36 , 0 );
setMoveKey( spep_2-3 + 492, 1, -89, -36 , 0 );
setMoveKey( spep_2-3 + 494, 1, -89.4, -36 , 0 );
setMoveKey( spep_2-3 + 496, 1, -89.8, -36.1 , 0 );
setMoveKey( spep_2-3 + 498, 1, -90.2, -38.2 , 0 );
setMoveKey( spep_2-3 + 500, 1, -90.6, -38.3 , 0 );
setMoveKey( spep_2-3 + 502, 1, -91, -38.3 , 0 );
setMoveKey( spep_2-3 + 504, 1, -91.6, -39.8 , 0 );
setMoveKey( spep_2-3 + 506, 1, -92, -39.9 , 0 );
setMoveKey( spep_2-3 + 508, 1, -92.4, -39.9 , 0 );
setMoveKey( spep_2-3 + 510, 1, -92.8, -40 , 0 );
setMoveKey( spep_2-3 + 512, 1, -93.2, -42 , 0 );
setMoveKey( spep_2-3 + 514, 1, -93.6, -42.1 , 0 );
setMoveKey( spep_2-3 + 516, 1, -94, -42.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, -94.5, -43.7 , 0 );
setMoveKey( spep_2-3 + 520, 1, -94.9, -43.7 , 0 );
setMoveKey( spep_2-3 + 522, 1, -95.3, -43.8 , 0 );
setMoveKey( spep_2-3 + 524, 1, -95.7, -43.8 , 0 );
setMoveKey( spep_2-3 + 526, 1, -96.1, -45.9 , 0 );
setMoveKey( spep_2-3 + 528, 1, -96.5, -45.9 , 0 );
setMoveKey( spep_2-3 + 530, 1, -96.9, -46 , 0 );
setMoveKey( spep_2-3 + 532, 1, -97.3, -47.6 , 0 );
setMoveKey( spep_2-3 + 534, 1, -97.7, -47.6 , 0 );
setMoveKey( spep_2-3 + 536, 1, -98.1, -47.7 , 0 );
setMoveKey( spep_2-3 + 538, 1, -98.5, -49.2 , 0 );
setMoveKey( spep_2-3 + 540, 1, -98.9, -49.3 , 0 );
setMoveKey( spep_2-3 + 542, 1, -99.3, -49.3 , 0 );
setMoveKey( spep_2-3 + 544, 1, -99.7, -50.8 , 0 );
setMoveKey( spep_2-3 + 546, 1, -100.1, -50.9 , 0 );
setMoveKey( spep_2-3 + 548, 1, -100.5, -50.9 , 0 );
setMoveKey( spep_2-3 + 549, 1, -100.5, -50.9 , 0 );

setMoveKey( spep_2-3 + 550, 1, 173.9, -11.3 , 0 );
setMoveKey( spep_2-3 + 552, 1, 173.7, -11.2 , 0 );
setMoveKey( spep_2-3 + 554, 1, 173.7, -15.4 , 0 );
setMoveKey( spep_2-3 + 556, 1, 173.5, -15.4 , 0 );
setMoveKey( spep_2-3 + 558, 1, 173.6, -19.4 , 0 );
setMoveKey( spep_2-3 + 560, 1, 173.4, -19.4 , 0 );
setMoveKey( spep_2-3 + 562, 1, 173.3, -23.6 , 0 );
setMoveKey( spep_2-3 + 564, 1, 173.1, -23.6 , 0 );
setMoveKey( spep_2-3 + 566, 1, 173, -27.6 , 0 );
setMoveKey( spep_2-3 + 568, 1, 172.8, -27.6 , 0 );
setMoveKey( spep_2-3 + 570, 1, 172.8, -31.6 , 0 );
setMoveKey( spep_2-3 + 572, 1, 172.7, -31.6 , 0 );
setMoveKey( spep_2-3 + 574, 1, 172.7, -35.6 , 0 );
setMoveKey( spep_2-3 + 576, 1, 172.5, -35.6 , 0 );
setMoveKey( spep_2-3 + 578, 1, 172.5, -39.7 , 0 );
setMoveKey( spep_2-3 + 580, 1, 172.3, -39.7 , 0 );
setMoveKey( spep_2-3 + 582, 1, 172.3, -43.6 , 0 );
setMoveKey( spep_2-3 + 584, 1, 172.1, -43.6 , 0 );
setMoveKey( spep_2-3 + 586, 1, 172.1, -47.6 , 0 );
setMoveKey( spep_2-3 + 588, 1, 171.9, -47.6 , 0 );
setMoveKey( spep_2-3 + 590, 1, 171.8, -51.7 , 0 );
setMoveKey( spep_2-3 + 592, 1, 171.6, -51.6 , 0 );
setMoveKey( spep_2-3 + 594, 1, 171.6, -55.6 , 0 );
setMoveKey( spep_2-3 + 596, 1, 171.4, -55.6 , 0 );
setMoveKey( spep_2-3 + 598, 1, 171.5, -59.5 , 0 );
setMoveKey( spep_2-3 + 600, 1, 171.3, -59.5 , 0 );
setMoveKey( spep_2-3 + 602, 1, 171.3, -63.4 , 0 );
setMoveKey( spep_2-3 + 604, 1, 171.1, -63.4 , 0 );
setMoveKey( spep_2-3 + 606, 1, 171.1, -67.3 , 0 );
setMoveKey( spep_2-1 + 608, 1, 171.1, -69.6 , 0 );

setScaleKey( spep_2-3 + 444, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 448, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 450, 1, 0.86, 0.86 );
setScaleKey( spep_2-3 + 452, 1, 1.03, 1.03 );
setScaleKey( spep_2-3 + 454, 1, 0.69, 0.69 );
setScaleKey( spep_2-3 + 489, 1, 0.69, 0.69 );

setScaleKey( spep_2-3 + 490, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 496, 1, 0.34, 0.34 );
setScaleKey( spep_2-3 + 498, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 500, 1, 0.35, 0.35 );
setScaleKey( spep_2-3 + 502, 1, 0.36, 0.36 );
setScaleKey( spep_2-3 + 504, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 510, 1, 0.37, 0.37 );
setScaleKey( spep_2-3 + 512, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 516, 1, 0.38, 0.38 );
setScaleKey( spep_2-3 + 518, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 524, 1, 0.39, 0.39 );
setScaleKey( spep_2-3 + 526, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 530, 1, 0.41, 0.41 );
setScaleKey( spep_2-3 + 532, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 536, 1, 0.42, 0.42 );
setScaleKey( spep_2-3 + 538, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 542, 1, 0.43, 0.43 );
setScaleKey( spep_2-3 + 544, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 548, 1, 0.44, 0.44 );
setScaleKey( spep_2-3 + 549, 1, 0.44, 0.44 );

setScaleKey( spep_2-3 + 550, 1, 2.29, 2.29 );
setScaleKey( spep_2-3 + 552, 1, 2.28, 2.28 );
setScaleKey( spep_2-3 + 554, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 556, 1, 2.24, 2.24 );
setScaleKey( spep_2-3 + 558, 1, 2.2, 2.2 );
setScaleKey( spep_2-3 + 560, 1, 2.19, 2.19 );
setScaleKey( spep_2-3 + 562, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 564, 1, 2.15, 2.15 );
setScaleKey( spep_2-3 + 566, 1, 2.11, 2.11 );
setScaleKey( spep_2-3 + 568, 1, 2.1, 2.1 );
setScaleKey( spep_2-3 + 570, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 572, 1, 2.06, 2.06 );
setScaleKey( spep_2-3 + 574, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 576, 1, 2.02, 2.02 );
setScaleKey( spep_2-3 + 578, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 580, 1, 1.97, 1.97 );
setScaleKey( spep_2-3 + 582, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 584, 1, 1.93, 1.93 );
setScaleKey( spep_2-3 + 586, 1, 1.89, 1.89 );
setScaleKey( spep_2-3 + 588, 1, 1.88, 1.88 );
setScaleKey( spep_2-3 + 590, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 592, 1, 1.84, 1.84 );
setScaleKey( spep_2-3 + 594, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 596, 1, 1.8, 1.8 );
setScaleKey( spep_2-3 + 598, 1, 1.76, 1.76 );
setScaleKey( spep_2-3 + 600, 1, 1.75, 1.75 );
setScaleKey( spep_2-3 + 602, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 604, 1, 1.71, 1.71 );
setScaleKey( spep_2-3 + 606, 1, 1.67, 1.67 );
setScaleKey( spep_2-1 + 608, 1, 1.65, 1.65 );

setRotateKey( spep_2-3 + 444, 1, -33 );
setRotateKey( spep_2-3 + 448, 1, -33 );
setRotateKey( spep_2-3 + 450, 1, -16.3 );
setRotateKey( spep_2-3 + 452, 1, -12.2 );
setRotateKey( spep_2-3 + 454, 1, -8.1 );
setRotateKey( spep_2-3 + 456, 1, -6.2 );
setRotateKey( spep_2-3 + 458, 1, -4.3 );
setRotateKey( spep_2-3 + 460, 1, -2.6 );
setRotateKey( spep_2-3 + 462, 1, -1 );
setRotateKey( spep_2-3 + 464, 1, 0.5 );
setRotateKey( spep_2-3 + 466, 1, 0.5 );
setRotateKey( spep_2-3 + 468, 1, 3.2 );
setRotateKey( spep_2-3 + 470, 1, 3.2 );
setRotateKey( spep_2-3 + 472, 1, 5.3 );
setRotateKey( spep_2-3 + 474, 1, 5.3 );
setRotateKey( spep_2-3 + 476, 1, 6.3 );
setRotateKey( spep_2-3 + 478, 1, 6.3 );
setRotateKey( spep_2-3 + 480, 1, 7.2 );
setRotateKey( spep_2-3 + 482, 1, 7.2 );
setRotateKey( spep_2-3 + 484, 1, 8.2 );
setRotateKey( spep_2-3 + 486, 1, 8.2 );
setRotateKey( spep_2-3 + 489, 1, 9.1 );

setRotateKey( spep_2-3 + 490, 1, -81 );
setRotateKey( spep_2-3 + 549, 1, -81 );

setRotateKey( spep_2-3 + 550, 1, -33 );
setRotateKey( spep_2-3 + 552, 1, -33 );
setRotateKey( spep_2-3 + 554, 1, -34.4 );
setRotateKey( spep_2-3 + 556, 1, -34.4 );
setRotateKey( spep_2-3 + 558, 1, -35.8 );
setRotateKey( spep_2-3 + 560, 1, -35.8 );
setRotateKey( spep_2-3 + 562, 1, -37.1 );
setRotateKey( spep_2-3 + 564, 1, -37.1 );
setRotateKey( spep_2-3 + 566, 1, -38.5 );
setRotateKey( spep_2-3 + 568, 1, -38.5 );
setRotateKey( spep_2-3 + 570, 1, -39.9 );
setRotateKey( spep_2-3 + 572, 1, -39.9 );
setRotateKey( spep_2-3 + 574, 1, -41.3 );
setRotateKey( spep_2-3 + 576, 1, -41.3 );
setRotateKey( spep_2-3 + 578, 1, -42.7 );
setRotateKey( spep_2-3 + 580, 1, -42.7 );
setRotateKey( spep_2-3 + 582, 1, -44 );
setRotateKey( spep_2-3 + 584, 1, -44 );
setRotateKey( spep_2-3 + 586, 1, -45.4 );
setRotateKey( spep_2-3 + 588, 1, -45.4 );
setRotateKey( spep_2-3 + 590, 1, -46.8 );
setRotateKey( spep_2-3 + 592, 1, -46.8 );
setRotateKey( spep_2-3 + 594, 1, -48.2 );
setRotateKey( spep_2-3 + 596, 1, -48.2 );
setRotateKey( spep_2-3 + 598, 1, -49.6 );
setRotateKey( spep_2-3 + 600, 1, -49.6 );
setRotateKey( spep_2-3 + 602, 1, -50.9 );
setRotateKey( spep_2-3 + 604, 1, -50.9 );
setRotateKey( spep_2-3 + 606, 1, -52.3 );
setRotateKey( spep_2-1 + 608, 1, -53 );

--敵の動き
setDisp( spep_2-3 + 616, 1, 1);
setDisp( spep_2-1 + 654, 1, 0);

changeAnime( spep_2-3 + 616, 1, 108);
changeAnime( spep_2-3 + 648, 1, 106);

setMoveKey( spep_2-3 + 616, 1, -490.8, 680.7 , 0 );
setMoveKey( spep_2-3 + 618, 1, -459.3, 582.4 , 0 );
setMoveKey( spep_2-3 + 620, 1, -427.8, 484.1 , 0 );
setMoveKey( spep_2-3 + 622, 1, -396.3, 385.9 , 0 );
setMoveKey( spep_2-3 + 624, 1, -364.8, 287.6 , 0 );
setMoveKey( spep_2-3 + 626, 1, -333.3, 189.4 , 0 );
setMoveKey( spep_2-3 + 628, 1, -301.8, 91.1 , 0 );
setMoveKey( spep_2-3 + 630, 1, -270.3, -7.2 , 0 );
setMoveKey( spep_2-3 + 632, 1, -237.2, -99.4 , 0 );
setMoveKey( spep_2-3 + 634, 1, -215.1, -169.3 , 0 );
setMoveKey( spep_2-3 + 636, 1, -215.1, -169.3 , 0 );
setMoveKey( spep_2-3 + 638, 1, -210.1, -157.6 , 0 );
setMoveKey( spep_2-3 + 640, 1, -205, -146 , 0 );
setMoveKey( spep_2-3 + 642, 1, -201.4, -137.8 , 0 );
setMoveKey( spep_2-3 + 644, 1, -197.8, -129.6 , 0 );
setMoveKey( spep_2-3 + 646, 1, -194.2, -121.3 , 0 );
setMoveKey( spep_2-3 + 647, 1, -194.2, -121.3 , 0 );

setMoveKey( spep_2-3 + 648, 1, -178.9, -142.4 , 0 );
setMoveKey( spep_2-3 + 650, 1, -177.7, -149.3 , 0 );
setMoveKey( spep_2-3 + 652, 1, -176.4, -156.1 , 0 );
setMoveKey( spep_2-1 + 654, 1, -175.2, -162.9 , 0 );

setScaleKey( spep_2-3 + 616, 1, 2.5, 2.5 );
setScaleKey( spep_2-3 + 647, 1, 2.5, 2.5 );

setScaleKey( spep_2-3 + 648, 1, 2, 2 );
setScaleKey( spep_2-1 + 654, 1, 2, 2 );

setRotateKey( spep_2-3 + 616, 1, 103 );
setRotateKey( spep_2-3 + 618, 1, 103.5 );
setRotateKey( spep_2-3 + 620, 1, 104 );
setRotateKey( spep_2-3 + 622, 1, 104.5 );
setRotateKey( spep_2-3 + 624, 1, 105 );
setRotateKey( spep_2-3 + 626, 1, 105.5 );
setRotateKey( spep_2-3 + 628, 1, 106 );
setRotateKey( spep_2-3 + 630, 1, 106.5 );
setRotateKey( spep_2-3 + 632, 1, 105.2 );
setRotateKey( spep_2-3 + 634, 1, 105.1 );
setRotateKey( spep_2-3 + 636, 1, 105.1 );
setRotateKey( spep_2-3 + 638, 1, 107 );
setRotateKey( spep_2-3 + 640, 1, 109 );
setRotateKey( spep_2-3 + 642, 1, 109.3 );
setRotateKey( spep_2-3 + 644, 1, 109.6 );
setRotateKey( spep_2-3 + 647, 1, 109.9 );

setRotateKey( spep_2-3 + 648, 1, 17 );
setRotateKey( spep_2-3 + 650, 1, 18 );
setRotateKey( spep_2-3 + 652, 1, 19 );
setRotateKey( spep_2-1 + 654, 1, 20 );

--敵の動き
setDisp( spep_2-3 + 704, 1, 1);
setDisp( spep_2-1 + 742, 1, 0);

changeAnime( spep_2-3 + 704, 1, 106);

setMoveKey( spep_2-3 + 704, 1, -188.2, -184.9 , 0 );
setMoveKey( spep_2-1 + 742, 1, -188.2, -184.9 , 0 );

setScaleKey( spep_2-3 + 704, 1, 2, 2 );
setScaleKey( spep_2-1 + 742, 1, 2, 2 );

setRotateKey( spep_2-3 + 704, 1, 16 );
setRotateKey( spep_2-1 + 742, 1, 16 );

--SE
--悟空ラッシュ
SE013 = playSeVer2( spep_2 + 0, 1189, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 6, 1110, "",spep_2 + 32, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 6, SE014, 82 );
SE015 = playSeVer2( spep_2 + 6, 1009, "",spep_2 + 34, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 6, SE015, 89 );
SE016 = playSeVer2( spep_2 + 20, 1110, "",spep_2 + 44, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 20, SE016, 79 );
SE017 = playSeVer2( spep_2 + 20, 1009, "",spep_2 + 44, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 20, SE017, 80 );
SE018 = playSeVer2( spep_2 + 26, 1000, "",spep_2 + 56, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 26, SE018, 75 );
SE019 = playSeVer2( spep_2 + 30, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 30, SE019, 84 );
SE020 = playSeVer2( spep_2 + 40, 1010, "",spep_2 + 72, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 40, SE020, 92 );
SE021 = playSeVer2( spep_2 + 46, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 46, SE021, 69 );
SE022 = playSeVer2( spep_2 + 52, 1009, "",spep_2 + 78, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 52, SE022, 79 );
SE023 = playSeVer2( spep_2 + 58, 1000, "",spep_2 + 82, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 58, SE023, 67 );
SE024 = playSeVer2( spep_2 + 58, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 58, SE024, 86 );

--ベジータ蹴り
SE025 = playSeVer2( spep_2 + 88, 1004, "", 0, 0, 0, -1);	
SE026 = playSeVer2( spep_2 + 94, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE026, 86 );
SE027 = playSeVer2( spep_2 + 98, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 98, SE027, 83 );
SE028 = playSeVer2( spep_2 + 100, 1359, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 100, SE028, 89 );

--敵飛んでいく
SE029 = playSeVer2( spep_2 + 158, 1027, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 158, 1121, "",spep_2 + 224, 0, 18, -1);
SE031 = playSeVer2( spep_2 + 158, 1183, "",spep_2 + 224, 0, 18, -1);

--岩場激突
SE032 = playSeVer2( spep_2 + 214, 1159, "",spep_2 + 294, 0, 20, -1);

--岩場中移動
SE033 = playSeVer2( spep_2 + 238, 1044, "",spep_2 + 288, 0, 10, -1);

--岩場から出る
SE034 = playSeVer2( spep_2 + 274, 1027, "", 0, 0, 0, -1);

--悟空向かってくる
SE035 = playSeVer2( spep_2 + 296, 1019, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 296, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE036, 60 );
SE037 = playSeVer2( spep_2 + 296, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 296, SE037, 136 );
SE038 = playSeVer2( spep_2 + 302, 1355, "",spep_2 + 364, 0, 28, -1);
setSeVolumeByWorkId( spep_2 + 302, SE038, 72 );
setPitch( spep_2 + 302, SE038, 300 );
setTimeStretch( SE038, 1.2, 30, 4 );

--岩壊す
SE039 = playSeVer2( spep_2 + 348, 1024, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_2 + 348, 1159, "",spep_2 + 468, 0, 18, -1);
SE041 = playSeVer2( spep_2 + 348, 1068, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_2 + 348, 1258, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 348, SE042, 71 );

--加速
SE043 = playSeVer2( spep_2 + 388, 1304, "",spep_2 + 460, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 388, SE043, 85 );
SE044 = playSeVer2( spep_2 + 388, 1067, "",spep_2 + 460, 0, 8, -1);

--悟空つらぬく
SE045 = playSeVer2( spep_2 + 448, 1110, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_2 + 448, 1120, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_2 + 456, 1180, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 456, SE047, 81 );
SE048 = playSeVer2( spep_2 + 458, 1072, "", 0, 0, 0, -1);

--瞬間移動
SE049 = playSeVer2( spep_2 + 628, 1109, "", 0, 0, 0, -1);

--敵地面落ちる
SE050 = playSeVer2( spep_2 + 632, 1012, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_2 + 632, 1008, "", 0, 0, 0, -1);

--腕前に出す
SE052 = playSeVer2( spep_2 + 662, 1004, "", 0, 0, 0, -1);

--気弾溜め
SE053 = playSeVer2( spep_2 + 704, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 704, SE053, 170 );
SE054 = playSeVer2( spep_2 + 704, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 704, SE054, 150 );
SE055 = playSeVer2( spep_2 + 704, 1276, "",spep_2 + 738, 0, 8, -1);

--気弾発射
SE056 = playSeVer2( spep_2 + 730, 1067, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_2 + 730, 1213, "",spep_2 + 852, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 730, SE057, 66 );
SE058 = playSeVer2( spep_2 + 730, 1168, "",spep_2 + 852, 0, 10, -1);
SE059 = playSeVer2( spep_2 + 730, 1023, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 812, 0, 0, 0, 0, 255 );  --黒　背景

--次の準備
spep_3 = spep_2+810;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------

--SE
--爆発
SE060 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_3 + 30, 1159, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_3 + 30, 1188, "", 0, 0, 0, -1);

-- 終わり
dealDamage(spep_3+0);
endPhase( spep_3 + 110 );


end