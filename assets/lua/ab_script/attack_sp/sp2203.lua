--4021820:ビーデル_ジャスティスラッシュ
--sp_effect_b1_00148
--sp2203

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
SP_01= 157108;--冒頭飛び蹴り(ビーデル短髪)
SP_02= 157106;--冒頭飛び蹴り(悟飯)
SP_03= 157109;--冒頭飛び蹴り(背景)
SP_04= 157114;--蹴り引きずり(ビーデル短髪)
SP_05= 157112;--蹴り引きずり(悟飯)
SP_06= 157115;--蹴り引きずり(背景)
SP_07= 157120;--ラッシュ(ビーデル短髪)
SP_08= 157118;--ラッシュ(悟飯)
SP_09= 157121;--ラッシュ(背景)
SP_10= 157122;--ラッシュ(描き文字)
SP_11= 157127;--サマーソルト(ビーデル短髪)
SP_12= 157125;--サマーソルト(悟飯)
SP_13= 157128;--サマーソルト(背景)
SP_14= 157129;--サマーソルト(描き文字)
SP_15= 157130;--ライダーキック(悟飯前)
SP_16= 157131;--ライダーキック(悟飯後)
SP_17= 157132;--ライダーキック(背景)
SP_18= 157137;--サムズアップ(ビーデル短髪)
SP_19= 157135;--サムズアップ(悟飯)
SP_20= 157138;--サムズアップ(背景)

--エフェクト(てき)
SP_01x= 157108;--冒頭飛び蹴り(ビーデル短髪)	
SP_02x= 157107;--冒頭飛び蹴り(悟飯) (敵)
SP_03x= 157109;--冒頭飛び蹴り(背景)
SP_04x= 157114;--蹴り引きずり(ビーデル短髪)	
SP_05x= 157113;--蹴り引きずり(悟飯) (敵)
SP_06x= 157115;--蹴り引きずり(背景)
SP_07x= 157120;--ラッシュ(ビーデル短髪)
SP_08x= 157119;--ラッシュ(悟飯) (敵)
SP_09x= 157121;--ラッシュ(背景)
SP_10x= 157169;--ラッシュ(描き文字) (敵)
SP_11x= 157127;--サマーソルト(ビーデル短髪)
SP_12x= 157126;--サマーソルト(悟飯) (敵)
SP_13x= 157128;--サマーソルト(背景)
SP_14x= 157170;--サマーソルト(描き文字) (敵)
SP_15x= 157130;--ライダーキック(悟飯前)
SP_16x= 157168;--ライダーキック(悟飯後) (敵)
SP_17x= 157132;--ライダーキック(背景)
SP_18x= 157137;--サムズアップ(ビーデル短髪)
SP_19x= 157136;--サムズアップ(悟飯) (敵)
SP_20x= 157138;--サムズアップ(背景)


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

--adjustAttackerLabel( 0, 205);
ENABLE_AUTO_TIME_STRETCH(0.85);


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
-- 冒頭飛び蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast1 = entryEffect( spep_0 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast1, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast1, 0 );
setEffRotateKey( spep_0 + 206, fast1, 0 );
setEffAlphaKey( spep_0 + 0, fast1, 255 );
setEffAlphaKey( spep_0 + 204, fast1, 255 );
setEffAlphaKey( spep_0 + 205, fast1, 255 );
setEffAlphaKey( spep_0 + 206, fast1, 0 );

-- ** エフェクト等 ** --
fast2 = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast2, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast2, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast2, 0 );
setEffRotateKey( spep_0 + 206, fast2, 0 );
setEffAlphaKey( spep_0 + 0, fast2, 255 );
setEffAlphaKey( spep_0 + 204, fast2, 255 );
setEffAlphaKey( spep_0 + 205, fast2, 255 );
setEffAlphaKey( spep_0 + 206, fast2, 0 );

-- ** エフェクト等 ** --
fast_bg = entryEffect( spep_0 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_bg, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast_bg, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_bg, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast_bg, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_bg, 0 );
setEffRotateKey( spep_0 + 206, fast_bg, 0 );
setEffAlphaKey( spep_0 + 0, fast_bg, 255 );
setEffAlphaKey( spep_0 + 204, fast_bg, 255 );
setEffAlphaKey( spep_0 + 205, fast_bg, 255 );
setEffAlphaKey( spep_0 + 206, fast_bg, 0 );

--SE
--ヘリ上昇
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 106, SE001, 14 );
SE002 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
setTimeStretch( SE002, 1.11, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


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

--顔カットインのタイミング指定
spep_x=spep_0 +110;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, -130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  -130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  -130,  515);

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
--キックで降りてくる
SE003 = playSe( spep_0 + 108, 1121 );
setSeVolumeByWorkId( spep_0 + 108, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 109, SE003, 7.9 );
setSeVolumeByWorkId( spep_0 + 110, SE003, 15.8 );
setSeVolumeByWorkId( spep_0 + 111, SE003, 23.7 );
setSeVolumeByWorkId( spep_0 + 112, SE003, 31.6 );
setSeVolumeByWorkId( spep_0 + 113, SE003, 39.5 );
setSeVolumeByWorkId( spep_0 + 114, SE003, 47.4 );
setSeVolumeByWorkId( spep_0 + 115, SE003, 55.3 );
setSeVolumeByWorkId( spep_0 + 116, SE003, 63 );
setStartTimeMs( SE003,  1500 );


--フレア
SE004 = playSe( spep_0 + 38, 1179 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 123 );

--キックで降りてくる
SE005 = playSe( spep_0 + 106, 1182 );
stopSe( spep_0 + 166, SE005, 18 );
SE006 = playSe( spep_0 + 106, 9 );
stopSe( spep_0 + 170, SE006, 14 );
SE007 = playSe( spep_0 + 106, 1258 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 77 );
SE008 = playSe( spep_0 + 106, 1314 );

--顔カットイン
SE009 = playSe( spep_x + 12, 1018 );

--キックで降りてくる
SE010 = playSe( spep_0 + 164, 9 );

--次の準備
spep_1=spep_0+206;
------------------------------------------------------
-- 蹴り引きずり
------------------------------------------------------
-- ** エフェクト等 ** --
drag1 = entryEffect( spep_1 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag1, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag1, 0 );
setEffRotateKey( spep_1 + 56, drag1, 0 );
setEffAlphaKey( spep_1 + 0, drag1, 255 );
setEffAlphaKey( spep_1 + 54, drag1, 255 );
setEffAlphaKey( spep_1 + 55, drag1, 255 );
setEffAlphaKey( spep_1 + 56, drag1, 0 );

-- ** エフェクト等 ** --
drag2 = entryEffect( spep_1 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag2, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag2, 0 );
setEffRotateKey( spep_1 + 56, drag2, 0 );
setEffAlphaKey( spep_1 + 0, drag2, 255 );
setEffAlphaKey( spep_1 + 54, drag2, 255 );
setEffAlphaKey( spep_1 + 55, drag2, 255 );
setEffAlphaKey( spep_1 + 56, drag2, 0 );

-- ** エフェクト等 ** --
drag_bg = entryEffect( spep_1 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag_bg, 0 );
setEffRotateKey( spep_1 + 56, drag_bg, 0 );
setEffAlphaKey( spep_1 + 0, drag_bg, 255 );
setEffAlphaKey( spep_1 + 54, drag_bg, 255 );
setEffAlphaKey( spep_1 + 55, drag_bg, 255 );
setEffAlphaKey( spep_1 + 56, drag_bg, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1-3 + 22,  10014, 36, 0x100, -1, 0, 110.6, 130.9 );--ズドドドッ
setEffShake( spep_1-3 + 22,ctzudodo,36,10);
setEffMoveKey( spep_1-3 + 22, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzudodo, 110.6, 130.9 , 0 );

setEffScaleKey( spep_1-3 + 22, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 24, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 26, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 28, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 30, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 32, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 34, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 36, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 38, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 40, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 42, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 44, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 46, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 48, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 50, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 52, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 54, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 56, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 58, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_1-3 + 22, ctzudodo, 59.5 );
setEffRotateKey( spep_1-3 + 58, ctzudodo, 59.5 );

setEffAlphaKey( spep_1-3 + 22, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 58, ctzudodo, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 8, 1, 107 );
changeAnime( spep_1-3 + 22, 1, 108 );

setMoveKey( spep_1 + 0, 1, -0.9, 6.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -0.9, 7 , 0 );
setMoveKey( spep_1-3 + 7, 1, -0.9, 7 , 0 );
setMoveKey( spep_1-3 + 8, 1, -1.4, -35.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, -36.9, -64.2 , 0 );
setMoveKey( spep_1-3 + 12, 1, 59.7, -68.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 28.2, -181.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, 62.8, -195.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 87.3, -240.5 , 0 );
setMoveKey( spep_1-3 + 21, 1, 111.9, -285 , 0 );
setMoveKey( spep_1-3 + 22, 1, 160.9, -327 , 0 );
setMoveKey( spep_1-3 + 24, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 26, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 28, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 30, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 32, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 34, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 38, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 40, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 42, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 44, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 46, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 48, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 50, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 52, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 54, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 56, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-1 + 58, 1, 155.9, -317 , 0 );

setScaleKey( spep_1 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 7, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 21, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 22, 1, 2.14, 2.14 );
setScaleKey( spep_1-1 + 58, 1, 2.14, 2.14 );

setRotateKey( spep_1 + 0, 1, 20.3 );
setRotateKey( spep_1-3 + 7, 1, 20.3 );
setRotateKey( spep_1-3 + 8, 1, -5.2 );
setRotateKey( spep_1-3 + 21, 1, -5.2 );
setRotateKey( spep_1-3 + 22, 1, 75.7 );
setRotateKey( spep_1-3 + 58, 1, 75.7 );

--SE
--キックで降りてくる
stopSe( spep_1 + 8, SE003, 14 );
stopSe( spep_1 + 8, SE007, 12 );
stopSe( spep_1 + 10, SE008, 14 );
stopSe( spep_1 + 12, SE010, 10 );

--キックヒット
SE011 = playSe( spep_1 + 6, 1003 );
SE012 = playSe( spep_1 + 6, 1123 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 6, SE012, 81 );
stopSe( spep_1 + 26, SE012, 34 );

--地面衝突
SE013 = playSe( spep_1 + 6, 1148 );
setSeVolumeByWorkId( spep_1 + 6, SE013, 50 );

--キックヒット
SE014 = playSe( spep_1 + 10, 1010 );
SE015 = playSe( spep_1 + 10, 1187 );

--地面衝突
SE016 = playSe( spep_1 + 24, 1168 );
setSeVolumeByWorkId( spep_1 + 24, SE016, 141 );
SE017 = playSe( spep_1 + 28, 1159 );
setSeVolumeByWorkId( spep_1 + 28, SE017, 82 );


--白フェード
entryFade( spep_1 + 52, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
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

--地面衝突
stopSe( spep_2 + 2, SE013, 0 );
stopSe( spep_2 + 2, SE016, 0 );
stopSe( spep_2 + 2, SE017, 0 );

--キックヒット
stopSe( spep_2 + 2, SE015, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ラッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush2, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush2, 0 );
setEffRotateKey( spep_3 + 166, rush2, 0 );
setEffAlphaKey( spep_3 + 0, rush2, 255 );
setEffAlphaKey( spep_3 + 164, rush2, 255 );
setEffAlphaKey( spep_3 + 165, rush2, 255 );
setEffAlphaKey( spep_3 + 166, rush2, 0 );

-- ** エフェクト等 ** --
rush_ct = entryEffect( spep_3 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_ct, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush_ct, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_ct, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush_ct, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_ct, 0 );
setEffRotateKey( spep_3 + 166, rush_ct, 0 );
setEffAlphaKey( spep_3 + 0, rush_ct, 255 );
setEffAlphaKey( spep_3 + 164, rush_ct, 255 );
setEffAlphaKey( spep_3 + 165, rush_ct, 255 );
setEffAlphaKey( spep_3 + 166, rush_ct, 0 );

-- ** エフェクト等 ** --
rush_bg = entryEffect( spep_3 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush_bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush_bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_bg, 0 );
setEffRotateKey( spep_3 + 166, rush_bg, 0 );
setEffAlphaKey( spep_3 + 0, rush_bg, 255 );
setEffAlphaKey( spep_3 + 164, rush_bg, 255 );
setEffAlphaKey( spep_3 + 165, rush_bg, 255 );
setEffAlphaKey( spep_3 + 166, rush_bg, 0 );

-- ** エフェクト等 ** --
rush1 = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush1, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush1, 0 );
setEffRotateKey( spep_3 + 166, rush1, 0 );
setEffAlphaKey( spep_3 + 0, rush1, 255 );
setEffAlphaKey( spep_3 + 164, rush1, 255 );
setEffAlphaKey( spep_3 + 165, rush1, 255 );
setEffAlphaKey( spep_3 + 166, rush1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-3 + 146,  10021, 22, 0x100, -1, 0, 168.2, 285.2 );--バゴォッ
setEffShake( spep_3-3 + 146,ctbago,22,10);
setEffMoveKey( spep_3-3 + 146, ctbago, 168.2, 285.2 , 0 );
setEffMoveKey( spep_3-3 + 148, ctbago, 140.2, 271.2 , 0 );
setEffMoveKey( spep_3-3 + 150, ctbago, 148.2, 299.2 , 0 );
setEffMoveKey( spep_3-3 + 152, ctbago, 155.3, 287.7 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbago, 155.2, 295.8 , 0 );

setEffScaleKey( spep_3-3 + 146, ctbago, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 150, ctbago, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 152, ctbago, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 154, ctbago, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 168, ctbago, 1.63, 1.63 );

setEffRotateKey( spep_3-3 + 146, ctbago, -18.8 );
setEffRotateKey( spep_3-3 + 150, ctbago, -18.8 );
setEffRotateKey( spep_3-3 + 152, ctbago, -18.9 );
setEffRotateKey( spep_3-3 + 168, ctbago, -18.9 );

setEffAlphaKey( spep_3-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 168, ctbago, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 18, 1, 108 );

setMoveKey( spep_3 + 0, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 17, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 18, 1, 199, 15 , 0 );
setMoveKey( spep_3-3 + 20, 1, 170.9, -47 , 0 );
setMoveKey( spep_3-3 + 22, 1, 184.9, 1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 156.9, -1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 164.9, 12 , 0 );
setMoveKey( spep_3-3 + 28, 1, 191.9, -14 , 0 );
setMoveKey( spep_3-3 + 30, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 34, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 36, 1, 187.9, 5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 171.9, -8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 185.9, -5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 44, 1, 181.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, 177.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 177.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 179.9, 0.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 181.9, 2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 193.9, -30 , 0 );
setMoveKey( spep_3-3 + 56, 1, 163.9, 18 , 0 );
setMoveKey( spep_3-3 + 58, 1, 189.9, 8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 177.9, 2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 76, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 78, 1, 181.9, 2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 190.4, -9 , 0 );
setMoveKey( spep_3-3 + 82, 1, 156.4, -9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 178.4, -9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 163.4, 9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 90, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 92, 1, 181.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 94, 1, 177.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 96, 1, 177.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 181.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 179.9, 0.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 193.9, 16 , 0 );
setMoveKey( spep_3-3 + 104, 1, 165.9, -4 , 0 );
setMoveKey( spep_3-3 + 106, 1, 177.9, -2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 177.9, 2 , 0 );
setMoveKey( spep_3-3 + 110, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 112, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 120, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 122, 1, 200.9, 9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 176.9, 7 , 0 );
setMoveKey( spep_3-3 + 126, 1, 172.9, -7 , 0 );
setMoveKey( spep_3-3 + 128, 1, 172.9, 7 , 0 );
setMoveKey( spep_3-3 + 130, 1, 191.9, -7 , 0 );
setMoveKey( spep_3-3 + 132, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 144, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 146, 1, 202.9, 15 , 0 );
setMoveKey( spep_3-3 + 148, 1, 174.9, 1 , 0 );
setMoveKey( spep_3-3 + 150, 1, 182.9, 29 , 0 );
setMoveKey( spep_3-3 + 152, 1, 172.9, -7 , 0 );
setMoveKey( spep_3-3 + 154, 1, 172.9, 12 , 0 );
setMoveKey( spep_3-3 + 156, 1, 186.9, -7 , 0 );
setMoveKey( spep_3-1 + 166, 1, 179.9, 0 , 0 );

setScaleKey( spep_3 + 0, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 17, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 18, 1, 1.9, 1.9 );
setScaleKey( spep_3-1 + 166, 1, 1.9, 1.9 );

setRotateKey( spep_3 + 0, 1, -12 );
setRotateKey( spep_3-3 + 17, 1, -12 );
setRotateKey( spep_3-3 + 18, 1, -7.2 );
setRotateKey( spep_3-3 + 34, 1, -7.2 );
setRotateKey( spep_3-3 + 36, 1, 18.6 );
setRotateKey( spep_3-3 + 42, 1, 18.6 );
setRotateKey( spep_3-3 + 43, 1, 18.6 );
setRotateKey( spep_3-3 + 44, 1, 28.3 );
setRotateKey( spep_3-3 + 50, 1, 28.3 );
setRotateKey( spep_3-3 + 51, 1, 28.3 );
setRotateKey( spep_3-3 + 52, 1, -7.7 );
setRotateKey( spep_3-3 + 53, 1, -7.7 );
setRotateKey( spep_3-3 + 54, 1, -15.5 );
setRotateKey( spep_3-3 + 76, 1, -15.5 );
setRotateKey( spep_3-3 + 77, 1, -15.5 );
setRotateKey( spep_3-3 + 78, 1, 9.1 );
setRotateKey( spep_3-3 + 79, 1, 9.1 );
setRotateKey( spep_3-3 + 80, 1, 23.8 );
setRotateKey( spep_3-3 + 90, 1, 23.8 );
setRotateKey( spep_3-3 + 91, 1, 23.8 );
setRotateKey( spep_3-3 + 92, 1, 34.7 );
setRotateKey( spep_3-3 + 100, 1, 34.7 );
setRotateKey( spep_3-3 + 101, 1, 34.7 );
setRotateKey( spep_3-3 + 102, 1, -16.3 );
setRotateKey( spep_3-3 + 120, 1, -16.3 );
setRotateKey( spep_3-3 + 121, 1, -16.3 );
setRotateKey( spep_3-3 + 122, 1, 17.7 );
setRotateKey( spep_3-3 + 144, 1, 17.7 );
setRotateKey( spep_3-3 + 145, 1, 17.7 );
setRotateKey( spep_3-3 + 146, 1, -18.6 );
setRotateKey( spep_3-1 + 166, 1, -18.6 );

--SE
--ラッシュ
SE019 = playSe( spep_3 + 0, 1117 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 100 );
stopSe( spep_3 + 16, SE019, 8 );
SE020 = playSe( spep_3 + 14, 1003 );
setSeVolumeByWorkId( spep_3 + 14, SE020, 86 );
SE021 = playSe( spep_3 + 18, 1009 );
setSeVolumeByWorkId( spep_3 + 18, SE021, 97 );
SE022 = playSe( spep_3 + 20, 1000 );
setSeVolumeByWorkId( spep_3 + 20, SE022,110 );
SE023 = playSe( spep_3 + 20, 1001 );
setSeVolumeByWorkId( spep_3 + 20, SE023, 64 );
SE024 = playSe( spep_3 + 34, 1000 );
setSeVolumeByWorkId( spep_3 + 34, SE024,110 );
SE025 = playSe( spep_3 + 34, 1010 );
setSeVolumeByWorkId( spep_3 + 34, SE025,110 );
SE026 = playSe( spep_3 + 52, 1110 );
setSeVolumeByWorkId( spep_3 + 52, SE026,110 );
SE027 = playSe( spep_3 + 72, 1000 );
setSeVolumeByWorkId( spep_3 + 72, SE027,110 );
SE028 = playSe( spep_3 + 72, 1009 );
setSeVolumeByWorkId( spep_3 + 72, SE028,110 );
SE029 = playSe( spep_3 + 90, 1000 );
setSeVolumeByWorkId( spep_3 + 90, SE029,110 );
SE030 = playSe( spep_3 + 100, 1006 );
setSeVolumeByWorkId( spep_3 + 100, SE030,110 );
SE031 = playSe( spep_3 + 100, 1001 );
setSeVolumeByWorkId( spep_3 + 100, SE031, 87 );
SE032 = playSe( spep_3 + 122, 1189 );
setSeVolumeByWorkId( spep_3 + 122, SE032,110 );
SE033 = playSe( spep_3 + 126, 1009 );
setSeVolumeByWorkId( spep_3 + 126, SE033,110 );
SE034 = playSe( spep_3 + 126, 1000 );
setSeVolumeByWorkId( spep_3 + 126, SE034,110 );
SE035 = playSe( spep_3 + 144, 1110 );
setSeVolumeByWorkId( spep_3 + 144, SE035,110 );
SE036 = playSe( spep_3 + 144, 1010 );
setSeVolumeByWorkId( spep_3 + 144, SE036,110 );


-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;
------------------------------------------------------
-- サマーソルト
------------------------------------------------------
-- ** エフェクト等 ** --
Somersault2 = entryEffect( spep_4 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault2, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault2, 0 );
setEffRotateKey( spep_4 + 116, Somersault2, 0 );
setEffAlphaKey( spep_4 + 0, Somersault2, 255 );
setEffAlphaKey( spep_4 + 114, Somersault2, 255 );
setEffAlphaKey( spep_4 + 115, Somersault2, 255 );
setEffAlphaKey( spep_4 + 116, Somersault2, 0 );

-- ** エフェクト等 ** --
Somersault_ct = entryEffect( spep_4 + 0, SP_14, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault_ct, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault_ct, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault_ct, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault_ct, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault_ct, 0 );
setEffRotateKey( spep_4 + 116, Somersault_ct, 0 );
setEffAlphaKey( spep_4 + 0, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 114, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 115, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 116, Somersault_ct, 0 );

-- ** エフェクト等 ** --
Somersault_bg = entryEffect( spep_4 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault_bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault_bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault_bg, 0 );
setEffRotateKey( spep_4 + 116, Somersault_bg, 0 );
setEffAlphaKey( spep_4 + 0, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 114, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 115, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 116, Somersault_bg, 0 );

-- ** エフェクト等 ** --
Somersault1 = entryEffect( spep_4 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault1, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault1, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault1, 0 );
setEffRotateKey( spep_4 + 116, Somersault1, 0 );
setEffAlphaKey( spep_4 + 0, Somersault1, 255 );
setEffAlphaKey( spep_4 + 114, Somersault1, 255 );
setEffAlphaKey( spep_4 + 115, Somersault1, 255 );
setEffAlphaKey( spep_4 + 116, Somersault1, 0 );

--敵の動き
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 70, 1, 106 );

setMoveKey( spep_4 + 0, 1, 353.6, -31.2 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 366.6, -29.3 , 0 );
setMoveKey( spep_4-3 + 4, 1, 379.3, -27.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 392, -25.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 389.4, -25.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, 386.6, -26 , 0 );
setMoveKey( spep_4-3 + 12, 1, 383.4, -26.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 379.9, -26.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 375.9, -26.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 371.4, -27.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 366.4, -27.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, 360.7, -28.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 354.4, -29.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 347.4, -30.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 339.9, -31 , 0 );
setMoveKey( spep_4-3 + 30, 1, 331.9, -31.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 323.8, -32.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 315.7, -33.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 305.9, -34.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 302.4, -35.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 291.1, -36.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 288.3, -36.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 277.9, -37.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 275.9, -37.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, 266.1, -38 , 0 );
setMoveKey( spep_4-3 + 50, 1, 264.8, -38.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 255.6, -38.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 254.9, -38.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 246.2, -39.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 246, -39.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, 237.9, -39.3 , 0 );
setMoveKey( spep_4-3 + 62, 1, 238.1, -39.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 230.3, -39.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 230.9, -39.5 , 0 );
setMoveKey( spep_4-3 + 69, 1, 225.6, -39.5 , 0 );
setMoveKey( spep_4-3 + 70, 1, 154.7, 350 , 0 );
setMoveKey( spep_4-3 + 72, 1, 122.8, 470.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, 161.4, 615.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 118.5, 764 , 0 );
setMoveKey( spep_4-3 + 78, 1, 158, 807.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 127.6, 776.2 , 0 );
setMoveKey( spep_4-3 + 82, 1, 166.9, 793 , 0 );
setMoveKey( spep_4-3 + 84, 1, 123.8, 875.2 , 0 );
setMoveKey( spep_4-3 + 86, 1, 150.2, 910 , 0 );
setMoveKey( spep_4-3 + 88, 1, 150.4, 1002.1 , 0 );

setScaleKey( spep_4 + 0, 1,2.88,2.88);
setScaleKey( spep_4-3 + 4, 1, 2.89,2.89);
setScaleKey( spep_4-3 + 6, 1, 2.91,2.91);
setScaleKey( spep_4-3 + 8, 1, 2.92,2.92);
setScaleKey( spep_4-3 + 10, 1,2.96,2.96);
setScaleKey( spep_4-3 + 12, 1,3,3);
setScaleKey( spep_4-3 + 14, 1,3.05,3.05);
setScaleKey( spep_4-3 + 16, 1,3.1,3.1);
setScaleKey( spep_4-3 + 18, 1,3.17,3.17);
setScaleKey( spep_4-3 + 20, 1,3.25,3.25);
setScaleKey( spep_4-3 + 22, 1,3.36,3.36);
setScaleKey( spep_4-3 + 24, 1,3.47,3.47);
setScaleKey( spep_4-3 + 26, 1,3.59,3.59);
setScaleKey( spep_4-3 + 28, 1,3.73,3.73);
setScaleKey( spep_4-3 + 30, 1,3.87,3.87);
setScaleKey( spep_4-3 + 32, 1,4.01,4.01);
setScaleKey( spep_4-3 + 34, 1,4.15,4.15);
setScaleKey( spep_4-3 + 36, 1,4.27,4.27);
setScaleKey( spep_4-3 + 38, 1,4.38,4.38);
setScaleKey( spep_4-3 + 40, 1,4.49,4.49);
setScaleKey( spep_4-3 + 42, 1,4.58,4.58);
setScaleKey( spep_4-3 + 44, 1,4.66,4.66);
setScaleKey( spep_4-3 + 46, 1,4.72,4.72);
setScaleKey( spep_4-3 + 48, 1,4.78,4.78);
setScaleKey( spep_4-3 + 50, 1,4.85,4.85);
setScaleKey( spep_4-3 + 52, 1,4.88,4.88);
setScaleKey( spep_4-3 + 54, 1,4.92,4.92);
setScaleKey( spep_4-3 + 56, 1,4.94,4.94);
setScaleKey( spep_4-3 + 58, 1,4.97,4.97);
setScaleKey( spep_4-3 + 60, 1,4.99,4.99);
setScaleKey( spep_4-3 + 62, 1,5,5);
setScaleKey( spep_4-3 + 64, 1,5.02,5.02);
setScaleKey( spep_4-3 + 69, 1,5.02,5.02);

setScaleKey( spep_4-3 + 70, 1,3.08,3.08);
setScaleKey( spep_4-3 + 72, 1,3.05,3.05);
setScaleKey( spep_4-3 + 74, 1,2.97,2.97);
setScaleKey( spep_4-3 + 76, 1,2.8,2.8);
setScaleKey( spep_4-3 + 78, 1,2.57,2.57);
setScaleKey( spep_4-3 + 80, 1,2.32,2.32);
setScaleKey( spep_4-3 + 82, 1,2.11,2.11);
setScaleKey( spep_4-3 + 84, 1,1.98,1.98);
setScaleKey( spep_4-3 + 86, 1,1.91,1.91);
setScaleKey( spep_4-3 + 88, 1,1.89,1.89);

setRotateKey( spep_4 + 0, 1, -12.1 );
setRotateKey( spep_4 + 2, 1, -12.2 );
setRotateKey( spep_4-3 + 69, 1, -12.2 );
setRotateKey( spep_4-3 + 70, 1, -53.9 );
setRotateKey( spep_4-3 + 88, 1, -53.9 );

--SE
--ビーデル構中空力音
SE037 = playSe( spep_4 + 6, 1116 );
setSeVolumeByWorkId( spep_4 + 6, SE037, 85 );
stopSe( spep_4 + 40, SE037, 22 );
SE038 = playSe( spep_4 + 6, 1175 );
setSeVolumeByWorkId( spep_4 + 6, SE038, 39 );
stopSe( spep_4 + 72, SE038, 18 );

--瞬間移動
SE039 = playSe( spep_4 + 12, 1109 );

--ビーデルサマーソルト
SE040 = playSe( spep_4 + 64, 1004 );
SE041 = playSe( spep_4 + 72, 1110 );
SE042 = playSe( spep_4 + 72, 1187 );
setSeVolumeByWorkId( spep_4 + 72, SE042, 55 );
SE043 = playSe( spep_4 + 72, 1120 );
SE044 = playSe( spep_4 + 76, 1026 );
setSeVolumeByWorkId( spep_4 + 76, SE044, 0 );
setSeVolumeByWorkId( spep_4 + 77, SE044, 9.1 );
setSeVolumeByWorkId( spep_4 + 78, SE044, 18.2 );
setSeVolumeByWorkId( spep_4 + 79, SE044, 27.3 );
setSeVolumeByWorkId( spep_4 + 80, SE044, 36.4 );
setSeVolumeByWorkId( spep_4 + 81, SE044, 45.5 );
setSeVolumeByWorkId( spep_4 + 82, SE044, 54.6 );
setSeVolumeByWorkId( spep_4 + 83, SE044, 63.7 );
setSeVolumeByWorkId( spep_4 + 84, SE044, 72.8 );
setSeVolumeByWorkId( spep_4 + 85, SE044, 81.9 );
setSeVolumeByWorkId( spep_4 + 86, SE044, 91 );
stopSe( spep_4 + 100, SE044, 34 );
SE045 = playSe( spep_4 + 78, 1027 );
setSeVolumeByWorkId( spep_4 + 78, SE045, 69 );
SE046 = playSe( spep_4 + 102, 1183 );
setSeVolumeByWorkId( spep_4 + 102, SE046, 65 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
------------------------------------------------------
-- ライダーキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick1 = entryEffect( spep_5 + 0, SP_15, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick1, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick1, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick1, 0 );
setEffRotateKey( spep_5 + 94, kick1, 0 );
setEffAlphaKey( spep_5 + 0, kick1, 255 );
setEffAlphaKey( spep_5 + 92, kick1, 255 );
setEffAlphaKey( spep_5 + 93, kick1, 255 );
setEffAlphaKey( spep_5 + 94, kick1, 0 );

-- ** エフェクト等 ** --
kick_bg = entryEffect( spep_5 + 0, SP_17, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick_bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick_bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_bg, 0 );
setEffRotateKey( spep_5 + 94, kick_bg, 0 );
setEffAlphaKey( spep_5 + 0, kick_bg, 255 );
setEffAlphaKey( spep_5 + 92, kick_bg, 255 );
setEffAlphaKey( spep_5 + 93, kick_bg, 255 );
setEffAlphaKey( spep_5 + 94, kick_bg, 0 );

-- ** エフェクト等 ** --
kick2 = entryEffect( spep_5 + 0, SP_16, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick2, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 94, kick2, 0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 92, kick2, 255 );
setEffAlphaKey( spep_5 + 93, kick2, 255 );
setEffAlphaKey( spep_5 + 94, kick2, 0 );

--文字エントリー
ctbago2 = entryEffectLife( spep_5-3 + 54,  10021, 34, 0x100, -1, 0, -27.4, -114.6 );--バゴォッ
setEffShake( spep_5-3 + 54,ctbago2,34,10);
setEffMoveKey( spep_5-3 + 54, ctbago2, -27.4, -114.6 , 0 );
setEffMoveKey( spep_5-3 + 56, ctbago2, -47.1, -155.9 , 0 );
setEffMoveKey( spep_5-3 + 58, ctbago2, -75.1, -206.8 , 0 );
setEffMoveKey( spep_5-3 + 60, ctbago2, -70, -201.5 , 0 );
setEffMoveKey( spep_5-3 + 62, ctbago2, -77.2, -210.9 , 0 );
setEffMoveKey( spep_5-3 + 64, ctbago2, -71.9, -205.3 , 0 );
setEffMoveKey( spep_5-3 + 66, ctbago2, -79.3, -214.9 , 0 );
setEffMoveKey( spep_5-3 + 68, ctbago2, -73.9, -209.1 , 0 );
setEffMoveKey( spep_5-3 + 70, ctbago2, -81.5, -218.9 , 0 );
setEffMoveKey( spep_5-3 + 72, ctbago2, -75.8, -213 , 0 );
setEffMoveKey( spep_5-3 + 74, ctbago2, -83.6, -223 , 0 );
setEffMoveKey( spep_5-3 + 76, ctbago2, -77.8, -216.8 , 0 );
setEffMoveKey( spep_5-3 + 78, ctbago2, -85.7, -227.1 , 0 );
setEffMoveKey( spep_5-3 + 80, ctbago2, -79.7, -220.7 , 0 );
setEffMoveKey( spep_5-3 + 82, ctbago2, -87.8, -231.1 , 0 );
setEffMoveKey( spep_5-3 + 84, ctbago2, -81.6, -224.5 , 0 );
setEffMoveKey( spep_5-3 + 86, ctbago2, -89.9, -235.2 , 0 );
setEffMoveKey( spep_5-3 + 88, ctbago2, -91, -237.1 , 0 );

setEffScaleKey( spep_5-3 + 54, ctbago2, 0.94, 0.94 );
setEffScaleKey( spep_5-3 + 56, ctbago2, 1.82, 1.82 );
setEffScaleKey( spep_5-3 + 58, ctbago2, 2.7, 2.7 );
setEffScaleKey( spep_5-3 + 60, ctbago2, 2.74, 2.74 );
setEffScaleKey( spep_5-3 + 62, ctbago2, 2.78, 2.78 );
setEffScaleKey( spep_5-3 + 64, ctbago2, 2.81, 2.81 );
setEffScaleKey( spep_5-3 + 66, ctbago2, 2.85, 2.85 );
setEffScaleKey( spep_5-3 + 68, ctbago2, 2.89, 2.89 );
setEffScaleKey( spep_5-3 + 70, ctbago2, 2.93, 2.93 );
setEffScaleKey( spep_5-3 + 72, ctbago2, 2.97, 2.97 );
setEffScaleKey( spep_5-3 + 74, ctbago2, 3.01, 3.01 );
setEffScaleKey( spep_5-3 + 76, ctbago2, 3.05, 3.05 );
setEffScaleKey( spep_5-3 + 78, ctbago2, 3.08, 3.08 );
setEffScaleKey( spep_5-3 + 80, ctbago2, 3.12, 3.12 );
setEffScaleKey( spep_5-3 + 82, ctbago2, 3.16, 3.16 );
setEffScaleKey( spep_5-3 + 84, ctbago2, 3.2, 3.2 );
setEffScaleKey( spep_5-3 + 86, ctbago2, 3.24, 3.24 );
setEffScaleKey( spep_5-3 + 88, ctbago2, 3.28, 3.28 );

setEffRotateKey( spep_5-3 + 54, ctbago2, -32.4 );
setEffRotateKey( spep_5-3 + 56, ctbago2, -32.5 );
setEffRotateKey( spep_5-3 + 58, ctbago2, -32.5 );

setEffAlphaKey( spep_5-3 + 54, ctbago2, 255 );
setEffAlphaKey( spep_5-3 + 84, ctbago2, 255 );
setEffAlphaKey( spep_5-3 + 86, ctbago2, 128 );
setEffAlphaKey( spep_5-3 + 88, ctbago2, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 67, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 56, 1, 107 );

setMoveKey( spep_5 + 0, 1, 77, -784.8 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 77, -720.5 , 0 );
setMoveKey( spep_5-3 + 4, 1, 77, -656.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 77, -591.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 77, -527.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, 77, -463 , 0 );
setMoveKey( spep_5-3 + 12, 1, 77, -398.7 , 0 );
setMoveKey( spep_5-3 + 14, 1, 77, -334.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 77, -269.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 77, -205.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 77, -141.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 77, -76.8 , 0 );
setMoveKey( spep_5-3 + 24, 1, 77, -70.6 , 0 );
setMoveKey( spep_5-3 + 26, 1, 77, -64.4 , 0 );
setMoveKey( spep_5-3 + 28, 1, 77, -58.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 77, -51.9 , 0 );
setMoveKey( spep_5-3 + 32, 1, 77, -45.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 77, -39.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, 77, -33.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 77, -26.9 , 0 );
setMoveKey( spep_5-3 + 40, 1, 77, -20.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, 77, -14.4 , 0 );
setMoveKey( spep_5-3 + 44, 1, 77, -8.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 77, -1.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 77, 4.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, 77, 10.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 77, 16.9 , 0 );
setMoveKey( spep_5-3 + 55, 1, 95, 55.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, -6, -117.6 , 0 );
setMoveKey( spep_5-3 + 58, 1, 148.4, -231.2 , 0 );
setMoveKey( spep_5-3 + 60, 1, 166.8, -300.8 , 0 );
setMoveKey( spep_5-3 + 62, 1, 261.1, -442.4 , 0 );
setMoveKey( spep_5-3 + 64, 1, 317.5, -560 , 0 );
setMoveKey( spep_5-3 + 67, 1, 405.9, -663.6 , 0 );

setScaleKey( spep_5 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_5-3 + 55, 1, 2.35, 2.35 );

setScaleKey( spep_5-3 + 56, 1,1.08,1.08);
setScaleKey( spep_5-3 + 58, 1,1.19,1.19);
setScaleKey( spep_5-3 + 60, 1,1.3,1.3);
setScaleKey( spep_5-3 + 62, 1,1.42,1.42);
setScaleKey( spep_5-3 + 64, 1,1.53,1.53);
setScaleKey( spep_5-3 + 67, 1,1.65,1.65);

setRotateKey( spep_5 + 0, 1, -41.6 );
setRotateKey( spep_5 + 2, 1, -41.7 );
setRotateKey( spep_5-3 + 55, 1, -41.7 );
setRotateKey( spep_5-3 + 56, 1, 30 );
setRotateKey( spep_5-3 + 67, 1, 30 );

--SE
--敵飛んでいく
stopSe( spep_5 + 56, SE046, 12 );

--瞬間移動
SE047 = playSe( spep_5 + 28, 1109 );

--悟飯キック
SE048 = playSe( spep_5 + 52, 1189 ,"",0.7);
SE049 = playSe( spep_5 + 56, 1010 ,"",0.7);
SE050 = playSe( spep_5 + 58, 1187 ,"",0.6);
SE051 = playSe( spep_5 + 60, 1110 ,"",0.7);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 92;
------------------------------------------------------
-- サムズアップ
------------------------------------------------------
-- ** エフェクト等 ** --
finish1 = entryEffect( spep_6 + 0, SP_18, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish1, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish1, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish1, 0 );
setEffRotateKey( spep_6 + 180, finish1, 0 );
setEffAlphaKey( spep_6 + 0, finish1, 255 );
setEffAlphaKey( spep_6 + 180, finish1, 255 );

-- ** エフェクト等 ** --
finish2 = entryEffect( spep_6 + 0, SP_19, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish2, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish2, 0 );
setEffRotateKey( spep_6 + 180, finish2, 0 );
setEffAlphaKey( spep_6 + 0, finish2, 255 );
setEffAlphaKey( spep_6 + 180, finish2, 255 );

-- ** エフェクト等 ** --
finish_bg = entryEffect( spep_6 + 0, SP_20, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_bg, 0 );
setEffRotateKey( spep_6 + 180, finish_bg, 0 );
setEffAlphaKey( spep_6 + 0, finish_bg, 255 );
setEffAlphaKey( spep_6 + 180, finish_bg, 255 );

--SE
--着地
SE052 = playSe( spep_6 + 6, 44 )
setSeVolumeByWorkId( spep_6 + 6, SE052, 108 )
stopSe( spep_6 + 26, SE052, 6 );
SE053 = playSe( spep_6 + 28, 1108 )
setSeVolumeByWorkId( spep_6 + 28, SE053, 151 )
SE054 = playSe( spep_6 + 32, 1107 )
setSeVolumeByWorkId( spep_6 + 32, SE054, 209 )

--向き合ってサムズアップ
SE055 = playSe( spep_6 + 74, 1003 )
stopSe( spep_6 + 84, SE055, 4 );
SE056 = playSe( spep_6 + 76, 1003 )
setSeVolumeByWorkId( spep_6 + 76, SE056, 67 )
stopSe( spep_6 + 86, SE056, 4 );

--終わり
dealDamage( spep_6 +70 );
endPhase( spep_6 + 170 );
else
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- 冒頭飛び蹴り
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
fast1 = entryEffect( spep_0 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast1, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast1, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast1, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast1, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast1, 0 );
setEffRotateKey( spep_0 + 206, fast1, 0 );
setEffAlphaKey( spep_0 + 0, fast1, 255 );
setEffAlphaKey( spep_0 + 204, fast1, 255 );
setEffAlphaKey( spep_0 + 205, fast1, 255 );
setEffAlphaKey( spep_0 + 206, fast1, 0 );

-- ** エフェクト等 ** --
fast2 = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast2, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast2, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast2, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast2, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast2, 0 );
setEffRotateKey( spep_0 + 206, fast2, 0 );
setEffAlphaKey( spep_0 + 0, fast2, 255 );
setEffAlphaKey( spep_0 + 204, fast2, 255 );
setEffAlphaKey( spep_0 + 205, fast2, 255 );
setEffAlphaKey( spep_0 + 206, fast2, 0 );

-- ** エフェクト等 ** --
fast_bg = entryEffect( spep_0 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, fast_bg, 0, 0, 0 );
setEffMoveKey( spep_0 + 206, fast_bg, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, fast_bg, 1.0, 1.0 );
setEffScaleKey( spep_0 + 206, fast_bg, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, fast_bg, 0 );
setEffRotateKey( spep_0 + 206, fast_bg, 0 );
setEffAlphaKey( spep_0 + 0, fast_bg, 255 );
setEffAlphaKey( spep_0 + 204, fast_bg, 255 );
setEffAlphaKey( spep_0 + 205, fast_bg, 255 );
setEffAlphaKey( spep_0 + 206, fast_bg, 0 );

--SE
--ヘリ上昇
SE001 = playSe( spep_0 + 0, 1278 );
stopSe( spep_0 + 106, SE001, 14 );
SE002 = playSe( spep_0 + 0, 1167 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 47 );
setTimeStretch( SE002, 1.11, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 210, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 110; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042 );
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );


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

--顔カットインのタイミング指定
spep_x=spep_0 +110;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 130, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  130,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  130,  515);

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
--キックで降りてくる
SE003 = playSe( spep_0 + 108, 1121 );
setSeVolumeByWorkId( spep_0 + 108, SE003, 0 );
setSeVolumeByWorkId( spep_0 + 109, SE003, 7.9 );
setSeVolumeByWorkId( spep_0 + 110, SE003, 15.8 );
setSeVolumeByWorkId( spep_0 + 111, SE003, 23.7 );
setSeVolumeByWorkId( spep_0 + 112, SE003, 31.6 );
setSeVolumeByWorkId( spep_0 + 113, SE003, 39.5 );
setSeVolumeByWorkId( spep_0 + 114, SE003, 47.4 );
setSeVolumeByWorkId( spep_0 + 115, SE003, 55.3 );
setSeVolumeByWorkId( spep_0 + 116, SE003, 63 );
setStartTimeMs( SE003,  1500 );


--フレア
SE004 = playSe( spep_0 + 38, 1179 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 123 );

--キックで降りてくる
SE005 = playSe( spep_0 + 106, 1182 );
stopSe( spep_0 + 166, SE005, 18 );
SE006 = playSe( spep_0 + 106, 9 );
stopSe( spep_0 + 170, SE006, 14 );
SE007 = playSe( spep_0 + 106, 1258 );
setSeVolumeByWorkId( spep_0 + 106, SE007, 77 );
SE008 = playSe( spep_0 + 106, 1314 );

--顔カットイン
SE009 = playSe( spep_x + 12, 1018 );

--キックで降りてくる
SE010 = playSe( spep_0 + 164, 9 );

--次の準備
spep_1=spep_0+206;
------------------------------------------------------
-- 蹴り引きずり
------------------------------------------------------
-- ** エフェクト等 ** --
drag1 = entryEffect( spep_1 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag1, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag1, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag1, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag1, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag1, 0 );
setEffRotateKey( spep_1 + 56, drag1, 0 );
setEffAlphaKey( spep_1 + 0, drag1, 255 );
setEffAlphaKey( spep_1 + 54, drag1, 255 );
setEffAlphaKey( spep_1 + 55, drag1, 255 );
setEffAlphaKey( spep_1 + 56, drag1, 0 );

-- ** エフェクト等 ** --
drag2 = entryEffect( spep_1 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag2, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag2, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag2, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag2, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag2, 0 );
setEffRotateKey( spep_1 + 56, drag2, 0 );
setEffAlphaKey( spep_1 + 0, drag2, 255 );
setEffAlphaKey( spep_1 + 54, drag2, 255 );
setEffAlphaKey( spep_1 + 55, drag2, 255 );
setEffAlphaKey( spep_1 + 56, drag2, 0 );

-- ** エフェクト等 ** --
drag_bg = entryEffect( spep_1 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, drag_bg, 0, 0, 0 );
setEffMoveKey( spep_1 + 56, drag_bg, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, drag_bg, 1.0, 1.0 );
setEffScaleKey( spep_1 + 56, drag_bg, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, drag_bg, 0 );
setEffRotateKey( spep_1 + 56, drag_bg, 0 );
setEffAlphaKey( spep_1 + 0, drag_bg, 255 );
setEffAlphaKey( spep_1 + 54, drag_bg, 255 );
setEffAlphaKey( spep_1 + 55, drag_bg, 255 );
setEffAlphaKey( spep_1 + 56, drag_bg, 0 );

--文字エントリー
ctzudodo = entryEffectLife( spep_1-3 + 22,  10014, 36, 0x100, -1, 0, 110.6, 130.9 );--ズドドドッ
setEffShake( spep_1-3 + 22,ctzudodo,36,10);
setEffMoveKey( spep_1-3 + 22, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 24, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 26, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 28, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 30, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 32, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 34, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 36, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 38, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 40, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 42, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 44, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 46, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 48, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 50, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 52, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 54, ctzudodo, 110.6, 130.9 , 0 );
setEffMoveKey( spep_1-3 + 56, ctzudodo, 139.6, 124 , 0 );
setEffMoveKey( spep_1-3 + 58, ctzudodo, 110.6, 130.9 , 0 );

setEffScaleKey( spep_1-3 + 22, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 24, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 26, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 28, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 30, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 32, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 34, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 36, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 38, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 40, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 42, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 44, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 46, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 48, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 50, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 52, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 54, ctzudodo, 1.98, 1.98 );
setEffScaleKey( spep_1-3 + 56, ctzudodo, 2.26, 2.26 );
setEffScaleKey( spep_1-3 + 58, ctzudodo, 1.98, 1.98 );

setEffRotateKey( spep_1-3 + 22, ctzudodo, -29.5 );
setEffRotateKey( spep_1-3 + 58, ctzudodo, -29.5 );

setEffAlphaKey( spep_1-3 + 22, ctzudodo, 255 );
setEffAlphaKey( spep_1-3 + 58, ctzudodo, 255 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 58, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 8, 1, 107 );
changeAnime( spep_1-3 + 22, 1, 108 );

setMoveKey( spep_1 + 0, 1, -0.9, 6.9 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -0.9, 7 , 0 );
setMoveKey( spep_1-3 + 7, 1, -0.9, 7 , 0 );
setMoveKey( spep_1-3 + 8, 1, -1.4, -35.6 , 0 );
setMoveKey( spep_1-3 + 10, 1, -36.9, -64.2 , 0 );
setMoveKey( spep_1-3 + 12, 1, 59.7, -68.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 28.2, -181.3 , 0 );
setMoveKey( spep_1-3 + 16, 1, 62.8, -195.9 , 0 );
setMoveKey( spep_1-3 + 18, 1, 87.3, -240.5 , 0 );
setMoveKey( spep_1-3 + 21, 1, 111.9, -285 , 0 );
setMoveKey( spep_1-3 + 22, 1, 160.9, -327 , 0 );
setMoveKey( spep_1-3 + 24, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 26, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 28, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 30, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 32, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 34, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 36, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 38, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 40, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 42, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 44, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 46, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 48, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 50, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 52, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-3 + 54, 1, 155.9, -317 , 0 );
setMoveKey( spep_1-3 + 56, 1, 145.9, -317 , 0 );
setMoveKey( spep_1-1 + 58, 1, 155.9, -317 , 0 );

setScaleKey( spep_1 + 0, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 7, 1, 1.9, 1.9 );
setScaleKey( spep_1-3 + 8, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 21, 1, 0.62, 0.62 );
setScaleKey( spep_1-3 + 22, 1, 2.14, 2.14 );
setScaleKey( spep_1-1 + 58, 1, 2.14, 2.14 );

setRotateKey( spep_1 + 0, 1, 20.3 );
setRotateKey( spep_1-3 + 7, 1, 20.3 );
setRotateKey( spep_1-3 + 8, 1, -5.2 );
setRotateKey( spep_1-3 + 21, 1, -5.2 );
setRotateKey( spep_1-3 + 22, 1, 75.7 );
setRotateKey( spep_1-3 + 58, 1, 75.7 );

--SE
--キックで降りてくる
stopSe( spep_1 + 8, SE003, 14 );
stopSe( spep_1 + 8, SE007, 12 );
stopSe( spep_1 + 10, SE008, 14 );
stopSe( spep_1 + 12, SE010, 10 );

--キックヒット
SE011 = playSe( spep_1 + 6, 1003 );
SE012 = playSe( spep_1 + 6, 1123 ,"",0.6);
setSeVolumeByWorkId( spep_1 + 6, SE012, 81 );
stopSe( spep_1 + 26, SE012, 34 );

--地面衝突
SE013 = playSe( spep_1 + 6, 1148 );
setSeVolumeByWorkId( spep_1 + 6, SE013, 50 );

--キックヒット
SE014 = playSe( spep_1 + 10, 1010 );
SE015 = playSe( spep_1 + 10, 1187 );

--地面衝突
SE016 = playSe( spep_1 + 24, 1168 );
setSeVolumeByWorkId( spep_1 + 24, SE016, 141 );
SE017 = playSe( spep_1 + 28, 1159 );
setSeVolumeByWorkId( spep_1 + 28, SE017, 82 );


--白フェード
entryFade( spep_1 + 52, 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 60, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+56;
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

--地面衝突
stopSe( spep_2 + 2, SE013, 0 );
stopSe( spep_2 + 2, SE016, 0 );
stopSe( spep_2 + 2, SE017, 0 );

--キックヒット
stopSe( spep_2 + 2, SE015, 0 );

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;
------------------------------------------------------
-- ラッシュ
------------------------------------------------------

-- ** エフェクト等 ** --
rush2 = entryEffect( spep_3 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush2, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush2, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush2, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush2, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush2, 0 );
setEffRotateKey( spep_3 + 166, rush2, 0 );
setEffAlphaKey( spep_3 + 0, rush2, 255 );
setEffAlphaKey( spep_3 + 164, rush2, 255 );
setEffAlphaKey( spep_3 + 165, rush2, 255 );
setEffAlphaKey( spep_3 + 166, rush2, 0 );

-- ** エフェクト等 ** --
rush_ct = entryEffect( spep_3 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_ct, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush_ct, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_ct, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush_ct, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_ct, 0 );
setEffRotateKey( spep_3 + 166, rush_ct, 0 );
setEffAlphaKey( spep_3 + 0, rush_ct, 255 );
setEffAlphaKey( spep_3 + 164, rush_ct, 255 );
setEffAlphaKey( spep_3 + 165, rush_ct, 255 );
setEffAlphaKey( spep_3 + 166, rush_ct, 0 );

-- ** エフェクト等 ** --
rush_bg = entryEffect( spep_3 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush_bg, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush_bg, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush_bg, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush_bg, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush_bg, 0 );
setEffRotateKey( spep_3 + 166, rush_bg, 0 );
setEffAlphaKey( spep_3 + 0, rush_bg, 255 );
setEffAlphaKey( spep_3 + 164, rush_bg, 255 );
setEffAlphaKey( spep_3 + 165, rush_bg, 255 );
setEffAlphaKey( spep_3 + 166, rush_bg, 0 );

-- ** エフェクト等 ** --
rush1 = entryEffect( spep_3 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, rush1, 0, 0, 0 );
setEffMoveKey( spep_3 + 166, rush1, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, rush1, 1.0, 1.0 );
setEffScaleKey( spep_3 + 166, rush1, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, rush1, 0 );
setEffRotateKey( spep_3 + 166, rush1, 0 );
setEffAlphaKey( spep_3 + 0, rush1, 255 );
setEffAlphaKey( spep_3 + 164, rush1, 255 );
setEffAlphaKey( spep_3 + 165, rush1, 255 );
setEffAlphaKey( spep_3 + 166, rush1, 0 );

--文字エントリー
ctbago = entryEffectLife( spep_3-3 + 146,  10021, 22, 0x100, -1, 0, 168.2, 285.2 );--バゴォッ
setEffShake( spep_3-3 + 146,ctbago,22,10);
setEffMoveKey( spep_3-3 + 146, ctbago, 168.2, 285.2 , 0 );
setEffMoveKey( spep_3-3 + 148, ctbago, 140.2, 271.2 , 0 );
setEffMoveKey( spep_3-3 + 150, ctbago, 148.2, 299.2 , 0 );
setEffMoveKey( spep_3-3 + 152, ctbago, 155.3, 287.7 , 0 );
setEffMoveKey( spep_3-3 + 154, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 156, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 158, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 160, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 162, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 164, ctbago, 155.2, 295.8 , 0 );
setEffMoveKey( spep_3-3 + 166, ctbago, 150.7, 292.4 , 0 );
setEffMoveKey( spep_3-3 + 168, ctbago, 155.2, 295.8 , 0 );

setEffScaleKey( spep_3-3 + 146, ctbago, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 150, ctbago, 1.2, 1.2 );
setEffScaleKey( spep_3-3 + 152, ctbago, 1.41, 1.41 );
setEffScaleKey( spep_3-3 + 154, ctbago, 1.63, 1.63 );
setEffScaleKey( spep_3-3 + 168, ctbago, 1.63, 1.63 );

setEffRotateKey( spep_3-3 + 146, ctbago, -18.8 );
setEffRotateKey( spep_3-3 + 150, ctbago, -18.8 );
setEffRotateKey( spep_3-3 + 152, ctbago, -18.9 );
setEffRotateKey( spep_3-3 + 168, ctbago, -18.9 );

setEffAlphaKey( spep_3-3 + 146, ctbago, 255 );
setEffAlphaKey( spep_3-3 + 168, ctbago, 255 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );

changeAnime( spep_3 + 0, 1, 106 );
changeAnime( spep_3-3 + 18, 1, 108 );

setMoveKey( spep_3 + 0, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 17, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 18, 1, 199, 15 , 0 );
setMoveKey( spep_3-3 + 20, 1, 170.9, -47 , 0 );
setMoveKey( spep_3-3 + 22, 1, 184.9, 1 , 0 );
setMoveKey( spep_3-3 + 24, 1, 156.9, -1 , 0 );
setMoveKey( spep_3-3 + 26, 1, 164.9, 12 , 0 );
setMoveKey( spep_3-3 + 28, 1, 191.9, -14 , 0 );
setMoveKey( spep_3-3 + 30, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 34, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 36, 1, 187.9, 5 , 0 );
setMoveKey( spep_3-3 + 38, 1, 171.9, -8 , 0 );
setMoveKey( spep_3-3 + 40, 1, 185.9, -5 , 0 );
setMoveKey( spep_3-3 + 42, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 44, 1, 181.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 46, 1, 177.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 48, 1, 177.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 50, 1, 179.9, 0.1 , 0 );
setMoveKey( spep_3-3 + 52, 1, 181.9, 2 , 0 );
setMoveKey( spep_3-3 + 54, 1, 193.9, -30 , 0 );
setMoveKey( spep_3-3 + 56, 1, 163.9, 18 , 0 );
setMoveKey( spep_3-3 + 58, 1, 189.9, 8 , 0 );
setMoveKey( spep_3-3 + 60, 1, 177.9, 2 , 0 );
setMoveKey( spep_3-3 + 62, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 64, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 76, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 78, 1, 181.9, 2 , 0 );
setMoveKey( spep_3-3 + 80, 1, 190.4, -9 , 0 );
setMoveKey( spep_3-3 + 82, 1, 156.4, -9 , 0 );
setMoveKey( spep_3-3 + 84, 1, 178.4, -9 , 0 );
setMoveKey( spep_3-3 + 86, 1, 163.4, 9 , 0 );
setMoveKey( spep_3-3 + 88, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 90, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 92, 1, 181.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 94, 1, 177.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 96, 1, 177.9, 2.1 , 0 );
setMoveKey( spep_3-3 + 98, 1, 181.9, -1.9 , 0 );
setMoveKey( spep_3-3 + 100, 1, 179.9, 0.1 , 0 );
setMoveKey( spep_3-3 + 102, 1, 193.9, 16 , 0 );
setMoveKey( spep_3-3 + 104, 1, 165.9, -4 , 0 );
setMoveKey( spep_3-3 + 106, 1, 177.9, -2 , 0 );
setMoveKey( spep_3-3 + 108, 1, 177.9, 2 , 0 );
setMoveKey( spep_3-3 + 110, 1, 181.9, -2 , 0 );
setMoveKey( spep_3-3 + 112, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 120, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 122, 1, 200.9, 9 , 0 );
setMoveKey( spep_3-3 + 124, 1, 176.9, 7 , 0 );
setMoveKey( spep_3-3 + 126, 1, 172.9, -7 , 0 );
setMoveKey( spep_3-3 + 128, 1, 172.9, 7 , 0 );
setMoveKey( spep_3-3 + 130, 1, 191.9, -7 , 0 );
setMoveKey( spep_3-3 + 132, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 144, 1, 179.9, 0 , 0 );
setMoveKey( spep_3-3 + 146, 1, 202.9, 15 , 0 );
setMoveKey( spep_3-3 + 148, 1, 174.9, 1 , 0 );
setMoveKey( spep_3-3 + 150, 1, 182.9, 29 , 0 );
setMoveKey( spep_3-3 + 152, 1, 172.9, -7 , 0 );
setMoveKey( spep_3-3 + 154, 1, 172.9, 12 , 0 );
setMoveKey( spep_3-3 + 156, 1, 186.9, -7 , 0 );
setMoveKey( spep_3-1 + 166, 1, 179.9, 0 , 0 );

setScaleKey( spep_3 + 0, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 17, 1, 1.51, 1.51 );
setScaleKey( spep_3-3 + 18, 1, 1.9, 1.9 );
setScaleKey( spep_3-1 + 166, 1, 1.9, 1.9 );

setRotateKey( spep_3 + 0, 1, -12 );
setRotateKey( spep_3-3 + 17, 1, -12 );
setRotateKey( spep_3-3 + 18, 1, -7.2 );
setRotateKey( spep_3-3 + 34, 1, -7.2 );
setRotateKey( spep_3-3 + 36, 1, 18.6 );
setRotateKey( spep_3-3 + 42, 1, 18.6 );
setRotateKey( spep_3-3 + 43, 1, 18.6 );
setRotateKey( spep_3-3 + 44, 1, 28.3 );
setRotateKey( spep_3-3 + 50, 1, 28.3 );
setRotateKey( spep_3-3 + 51, 1, 28.3 );
setRotateKey( spep_3-3 + 52, 1, -7.7 );
setRotateKey( spep_3-3 + 53, 1, -7.7 );
setRotateKey( spep_3-3 + 54, 1, -15.5 );
setRotateKey( spep_3-3 + 76, 1, -15.5 );
setRotateKey( spep_3-3 + 77, 1, -15.5 );
setRotateKey( spep_3-3 + 78, 1, 9.1 );
setRotateKey( spep_3-3 + 79, 1, 9.1 );
setRotateKey( spep_3-3 + 80, 1, 23.8 );
setRotateKey( spep_3-3 + 90, 1, 23.8 );
setRotateKey( spep_3-3 + 91, 1, 23.8 );
setRotateKey( spep_3-3 + 92, 1, 34.7 );
setRotateKey( spep_3-3 + 100, 1, 34.7 );
setRotateKey( spep_3-3 + 101, 1, 34.7 );
setRotateKey( spep_3-3 + 102, 1, -16.3 );
setRotateKey( spep_3-3 + 120, 1, -16.3 );
setRotateKey( spep_3-3 + 121, 1, -16.3 );
setRotateKey( spep_3-3 + 122, 1, 17.7 );
setRotateKey( spep_3-3 + 144, 1, 17.7 );
setRotateKey( spep_3-3 + 145, 1, 17.7 );
setRotateKey( spep_3-3 + 146, 1, -18.6 );
setRotateKey( spep_3-1 + 166, 1, -18.6 );

--SE
--ラッシュ
SE019 = playSe( spep_3 + 0, 1117 );
setSeVolumeByWorkId( spep_3 + 0, SE019, 100 );
stopSe( spep_3 + 16, SE019, 8 );
SE020 = playSe( spep_3 + 14, 1003 );
setSeVolumeByWorkId( spep_3 + 14, SE020, 86 );
SE021 = playSe( spep_3 + 18, 1009 );
setSeVolumeByWorkId( spep_3 + 18, SE021, 97 );
SE022 = playSe( spep_3 + 20, 1000 );
setSeVolumeByWorkId( spep_3 + 20, SE022,110 );
SE023 = playSe( spep_3 + 20, 1001 );
setSeVolumeByWorkId( spep_3 + 20, SE023, 64 );
SE024 = playSe( spep_3 + 34, 1000 );
setSeVolumeByWorkId( spep_3 + 34, SE024,110 );
SE025 = playSe( spep_3 + 34, 1010 );
setSeVolumeByWorkId( spep_3 + 34, SE025,110 );
SE026 = playSe( spep_3 + 52, 1110 );
setSeVolumeByWorkId( spep_3 + 52, SE026,110 );
SE027 = playSe( spep_3 + 72, 1000 );
setSeVolumeByWorkId( spep_3 + 72, SE027,110 );
SE028 = playSe( spep_3 + 72, 1009 );
setSeVolumeByWorkId( spep_3 + 72, SE028,110 );
SE029 = playSe( spep_3 + 90, 1000 );
setSeVolumeByWorkId( spep_3 + 90, SE029,110 );
SE030 = playSe( spep_3 + 100, 1006 );
setSeVolumeByWorkId( spep_3 + 100, SE030,110 );
SE031 = playSe( spep_3 + 100, 1001 );
setSeVolumeByWorkId( spep_3 + 100, SE031, 87 );
SE032 = playSe( spep_3 + 122, 1189 );
setSeVolumeByWorkId( spep_3 + 122, SE032,110 );
SE033 = playSe( spep_3 + 126, 1009 );
setSeVolumeByWorkId( spep_3 + 126, SE033,110 );
SE034 = playSe( spep_3 + 126, 1000 );
setSeVolumeByWorkId( spep_3 + 126, SE034,110 );
SE035 = playSe( spep_3 + 144, 1110 );
setSeVolumeByWorkId( spep_3 + 144, SE035,110 );
SE036 = playSe( spep_3 + 144, 1010 );
setSeVolumeByWorkId( spep_3 + 144, SE036,110 );


-- ** くろ背景 ** --
entryFadeBg( spep_3 , 0, 170, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 166;
------------------------------------------------------
-- サマーソルト
------------------------------------------------------
-- ** エフェクト等 ** --
Somersault2 = entryEffect( spep_4 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault2, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault2, 0 );
setEffRotateKey( spep_4 + 116, Somersault2, 0 );
setEffAlphaKey( spep_4 + 0, Somersault2, 255 );
setEffAlphaKey( spep_4 + 114, Somersault2, 255 );
setEffAlphaKey( spep_4 + 115, Somersault2, 255 );
setEffAlphaKey( spep_4 + 116, Somersault2, 0 );

-- ** エフェクト等 ** --
Somersault_ct = entryEffect( spep_4 + 0, SP_14x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault_ct, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault_ct, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault_ct, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault_ct, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault_ct, 0 );
setEffRotateKey( spep_4 + 116, Somersault_ct, 0 );
setEffAlphaKey( spep_4 + 0, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 114, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 115, Somersault_ct, 255 );
setEffAlphaKey( spep_4 + 116, Somersault_ct, 0 );

-- ** エフェクト等 ** --
Somersault_bg = entryEffect( spep_4 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault_bg, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault_bg, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault_bg, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault_bg, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault_bg, 0 );
setEffRotateKey( spep_4 + 116, Somersault_bg, 0 );
setEffAlphaKey( spep_4 + 0, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 114, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 115, Somersault_bg, 255 );
setEffAlphaKey( spep_4 + 116, Somersault_bg, 0 );

-- ** エフェクト等 ** --
Somersault1 = entryEffect( spep_4 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, Somersault1, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, Somersault1, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, Somersault1, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, Somersault1, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, Somersault1, 0 );
setEffRotateKey( spep_4 + 116, Somersault1, 0 );
setEffAlphaKey( spep_4 + 0, Somersault1, 255 );
setEffAlphaKey( spep_4 + 114, Somersault1, 255 );
setEffAlphaKey( spep_4 + 115, Somersault1, 255 );
setEffAlphaKey( spep_4 + 116, Somersault1, 0 );

--敵の動き
setDisp( spep_4-3 + 88, 1, 0 );

changeAnime( spep_4 + 0, 1, 108 );
changeAnime( spep_4-3 + 70, 1, 106 );

setMoveKey( spep_4 + 0, 1, 353.6, -31.2 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 366.6, -29.3 , 0 );
setMoveKey( spep_4-3 + 4, 1, 379.3, -27.4 , 0 );
setMoveKey( spep_4-3 + 6, 1, 392, -25.6 , 0 );
setMoveKey( spep_4-3 + 8, 1, 389.4, -25.7 , 0 );
setMoveKey( spep_4-3 + 10, 1, 386.6, -26 , 0 );
setMoveKey( spep_4-3 + 12, 1, 383.4, -26.2 , 0 );
setMoveKey( spep_4-3 + 14, 1, 379.9, -26.5 , 0 );
setMoveKey( spep_4-3 + 16, 1, 375.9, -26.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 371.4, -27.4 , 0 );
setMoveKey( spep_4-3 + 20, 1, 366.4, -27.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, 360.7, -28.5 , 0 );
setMoveKey( spep_4-3 + 24, 1, 354.4, -29.3 , 0 );
setMoveKey( spep_4-3 + 26, 1, 347.4, -30.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 339.9, -31 , 0 );
setMoveKey( spep_4-3 + 30, 1, 331.9, -31.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 323.8, -32.8 , 0 );
setMoveKey( spep_4-3 + 34, 1, 315.7, -33.7 , 0 );
setMoveKey( spep_4-3 + 36, 1, 305.9, -34.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 302.4, -35.3 , 0 );
setMoveKey( spep_4-3 + 40, 1, 291.1, -36.1 , 0 );
setMoveKey( spep_4-3 + 42, 1, 288.3, -36.6 , 0 );
setMoveKey( spep_4-3 + 44, 1, 277.9, -37.1 , 0 );
setMoveKey( spep_4-3 + 46, 1, 275.9, -37.6 , 0 );
setMoveKey( spep_4-3 + 48, 1, 266.1, -38 , 0 );
setMoveKey( spep_4-3 + 50, 1, 264.8, -38.4 , 0 );
setMoveKey( spep_4-3 + 52, 1, 255.6, -38.6 , 0 );
setMoveKey( spep_4-3 + 54, 1, 254.9, -38.9 , 0 );
setMoveKey( spep_4-3 + 56, 1, 246.2, -39.1 , 0 );
setMoveKey( spep_4-3 + 58, 1, 246, -39.2 , 0 );
setMoveKey( spep_4-3 + 60, 1, 237.9, -39.3 , 0 );
setMoveKey( spep_4-3 + 62, 1, 238.1, -39.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, 230.3, -39.4 , 0 );
setMoveKey( spep_4-3 + 66, 1, 230.9, -39.5 , 0 );
setMoveKey( spep_4-3 + 69, 1, 225.6, -39.5 , 0 );
setMoveKey( spep_4-3 + 70, 1, 154.7, 350 , 0 );
setMoveKey( spep_4-3 + 72, 1, 122.8, 470.1 , 0 );
setMoveKey( spep_4-3 + 74, 1, 161.4, 615.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 118.5, 764 , 0 );
setMoveKey( spep_4-3 + 78, 1, 158, 807.8 , 0 );
setMoveKey( spep_4-3 + 80, 1, 127.6, 776.2 , 0 );
setMoveKey( spep_4-3 + 82, 1, 166.9, 793 , 0 );
setMoveKey( spep_4-3 + 84, 1, 123.8, 875.2 , 0 );
setMoveKey( spep_4-3 + 86, 1, 150.2, 910 , 0 );
setMoveKey( spep_4-3 + 88, 1, 150.4, 1002.1 , 0 );

setScaleKey( spep_4 + 0, 1,2.88,2.88);
setScaleKey( spep_4-3 + 4, 1, 2.89,2.89);
setScaleKey( spep_4-3 + 6, 1, 2.91,2.91);
setScaleKey( spep_4-3 + 8, 1, 2.92,2.92);
setScaleKey( spep_4-3 + 10, 1,2.96,2.96);
setScaleKey( spep_4-3 + 12, 1,3,3);
setScaleKey( spep_4-3 + 14, 1,3.05,3.05);
setScaleKey( spep_4-3 + 16, 1,3.1,3.1);
setScaleKey( spep_4-3 + 18, 1,3.17,3.17);
setScaleKey( spep_4-3 + 20, 1,3.25,3.25);
setScaleKey( spep_4-3 + 22, 1,3.36,3.36);
setScaleKey( spep_4-3 + 24, 1,3.47,3.47);
setScaleKey( spep_4-3 + 26, 1,3.59,3.59);
setScaleKey( spep_4-3 + 28, 1,3.73,3.73);
setScaleKey( spep_4-3 + 30, 1,3.87,3.87);
setScaleKey( spep_4-3 + 32, 1,4.01,4.01);
setScaleKey( spep_4-3 + 34, 1,4.15,4.15);
setScaleKey( spep_4-3 + 36, 1,4.27,4.27);
setScaleKey( spep_4-3 + 38, 1,4.38,4.38);
setScaleKey( spep_4-3 + 40, 1,4.49,4.49);
setScaleKey( spep_4-3 + 42, 1,4.58,4.58);
setScaleKey( spep_4-3 + 44, 1,4.66,4.66);
setScaleKey( spep_4-3 + 46, 1,4.72,4.72);
setScaleKey( spep_4-3 + 48, 1,4.78,4.78);
setScaleKey( spep_4-3 + 50, 1,4.85,4.85);
setScaleKey( spep_4-3 + 52, 1,4.88,4.88);
setScaleKey( spep_4-3 + 54, 1,4.92,4.92);
setScaleKey( spep_4-3 + 56, 1,4.94,4.94);
setScaleKey( spep_4-3 + 58, 1,4.97,4.97);
setScaleKey( spep_4-3 + 60, 1,4.99,4.99);
setScaleKey( spep_4-3 + 62, 1,5,5);
setScaleKey( spep_4-3 + 64, 1,5.02,5.02);
setScaleKey( spep_4-3 + 69, 1,5.02,5.02);

setScaleKey( spep_4-3 + 70, 1,3.08,3.08);
setScaleKey( spep_4-3 + 72, 1,3.05,3.05);
setScaleKey( spep_4-3 + 74, 1,2.97,2.97);
setScaleKey( spep_4-3 + 76, 1,2.8,2.8);
setScaleKey( spep_4-3 + 78, 1,2.57,2.57);
setScaleKey( spep_4-3 + 80, 1,2.32,2.32);
setScaleKey( spep_4-3 + 82, 1,2.11,2.11);
setScaleKey( spep_4-3 + 84, 1,1.98,1.98);
setScaleKey( spep_4-3 + 86, 1,1.91,1.91);
setScaleKey( spep_4-3 + 88, 1,1.89,1.89);

setRotateKey( spep_4 + 0, 1, -12.1 );
setRotateKey( spep_4 + 2, 1, -12.2 );
setRotateKey( spep_4-3 + 69, 1, -12.2 );
setRotateKey( spep_4-3 + 70, 1, -53.9 );
setRotateKey( spep_4-3 + 88, 1, -53.9 );

--SE
--ビーデル構中空力音
SE037 = playSe( spep_4 + 6, 1116 );
setSeVolumeByWorkId( spep_4 + 6, SE037, 85 );
stopSe( spep_4 + 40, SE037, 22 );
SE038 = playSe( spep_4 + 6, 1175 );
setSeVolumeByWorkId( spep_4 + 6, SE038, 39 );
stopSe( spep_4 + 72, SE038, 18 );

--瞬間移動
SE039 = playSe( spep_4 + 12, 1109 );

--ビーデルサマーソルト
SE040 = playSe( spep_4 + 64, 1004 );
SE041 = playSe( spep_4 + 72, 1110 );
SE042 = playSe( spep_4 + 72, 1187 );
setSeVolumeByWorkId( spep_4 + 72, SE042, 55 );
SE043 = playSe( spep_4 + 72, 1120 );
SE044 = playSe( spep_4 + 76, 1026 );
setSeVolumeByWorkId( spep_4 + 76, SE044, 0 );
setSeVolumeByWorkId( spep_4 + 77, SE044, 9.1 );
setSeVolumeByWorkId( spep_4 + 78, SE044, 18.2 );
setSeVolumeByWorkId( spep_4 + 79, SE044, 27.3 );
setSeVolumeByWorkId( spep_4 + 80, SE044, 36.4 );
setSeVolumeByWorkId( spep_4 + 81, SE044, 45.5 );
setSeVolumeByWorkId( spep_4 + 82, SE044, 54.6 );
setSeVolumeByWorkId( spep_4 + 83, SE044, 63.7 );
setSeVolumeByWorkId( spep_4 + 84, SE044, 72.8 );
setSeVolumeByWorkId( spep_4 + 85, SE044, 81.9 );
setSeVolumeByWorkId( spep_4 + 86, SE044, 91 );
stopSe( spep_4 + 100, SE044, 34 );
SE045 = playSe( spep_4 + 78, 1027 );
setSeVolumeByWorkId( spep_4 + 78, SE045, 69 );
SE046 = playSe( spep_4 + 102, 1183 );
setSeVolumeByWorkId( spep_4 + 102, SE046, 65 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 116;
------------------------------------------------------
-- ライダーキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick1 = entryEffect( spep_5 + 0, SP_15x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick1, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick1, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick1, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick1, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick1, 0 );
setEffRotateKey( spep_5 + 94, kick1, 0 );
setEffAlphaKey( spep_5 + 0, kick1, 255 );
setEffAlphaKey( spep_5 + 92, kick1, 255 );
setEffAlphaKey( spep_5 + 93, kick1, 255 );
setEffAlphaKey( spep_5 + 94, kick1, 0 );

-- ** エフェクト等 ** --
kick_bg = entryEffect( spep_5 + 0, SP_17x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick_bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick_bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick_bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick_bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick_bg, 0 );
setEffRotateKey( spep_5 + 94, kick_bg, 0 );
setEffAlphaKey( spep_5 + 0, kick_bg, 255 );
setEffAlphaKey( spep_5 + 92, kick_bg, 255 );
setEffAlphaKey( spep_5 + 93, kick_bg, 255 );
setEffAlphaKey( spep_5 + 94, kick_bg, 0 );

-- ** エフェクト等 ** --
kick2 = entryEffect( spep_5 + 0, SP_16x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, kick2, 0, 0, 0 );
setEffMoveKey( spep_5 + 94, kick2, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, kick2, 1.0, 1.0 );
setEffScaleKey( spep_5 + 94, kick2, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, kick2, 0 );
setEffRotateKey( spep_5 + 94, kick2, 0 );
setEffAlphaKey( spep_5 + 0, kick2, 255 );
setEffAlphaKey( spep_5 + 92, kick2, 255 );
setEffAlphaKey( spep_5 + 93, kick2, 255 );
setEffAlphaKey( spep_5 + 94, kick2, 0 );

--文字エントリー
ctbago2 = entryEffectLife( spep_5-3 + 54,  10021, 34, 0x100, -1, 0, -27.4, -114.6 );--バゴォッ
setEffShake( spep_5-3 + 54,ctbago2,34,10);
setEffMoveKey( spep_5-3 + 54, ctbago2, -27.4, -114.6 , 0 );
setEffMoveKey( spep_5-3 + 56, ctbago2, -47.1, -155.9 , 0 );
setEffMoveKey( spep_5-3 + 58, ctbago2, -75.1, -206.8 , 0 );
setEffMoveKey( spep_5-3 + 60, ctbago2, -70, -201.5 , 0 );
setEffMoveKey( spep_5-3 + 62, ctbago2, -77.2, -210.9 , 0 );
setEffMoveKey( spep_5-3 + 64, ctbago2, -71.9, -205.3 , 0 );
setEffMoveKey( spep_5-3 + 66, ctbago2, -79.3, -214.9 , 0 );
setEffMoveKey( spep_5-3 + 68, ctbago2, -73.9, -209.1 , 0 );
setEffMoveKey( spep_5-3 + 70, ctbago2, -81.5, -218.9 , 0 );
setEffMoveKey( spep_5-3 + 72, ctbago2, -75.8, -213 , 0 );
setEffMoveKey( spep_5-3 + 74, ctbago2, -83.6, -223 , 0 );
setEffMoveKey( spep_5-3 + 76, ctbago2, -77.8, -216.8 , 0 );
setEffMoveKey( spep_5-3 + 78, ctbago2, -85.7, -227.1 , 0 );
setEffMoveKey( spep_5-3 + 80, ctbago2, -79.7, -220.7 , 0 );
setEffMoveKey( spep_5-3 + 82, ctbago2, -87.8, -231.1 , 0 );
setEffMoveKey( spep_5-3 + 84, ctbago2, -81.6, -224.5 , 0 );
setEffMoveKey( spep_5-3 + 86, ctbago2, -89.9, -235.2 , 0 );
setEffMoveKey( spep_5-3 + 88, ctbago2, -91, -237.1 , 0 );

setEffScaleKey( spep_5-3 + 54, ctbago2, 0.94, 0.94 );
setEffScaleKey( spep_5-3 + 56, ctbago2, 1.82, 1.82 );
setEffScaleKey( spep_5-3 + 58, ctbago2, 2.7, 2.7 );
setEffScaleKey( spep_5-3 + 60, ctbago2, 2.74, 2.74 );
setEffScaleKey( spep_5-3 + 62, ctbago2, 2.78, 2.78 );
setEffScaleKey( spep_5-3 + 64, ctbago2, 2.81, 2.81 );
setEffScaleKey( spep_5-3 + 66, ctbago2, 2.85, 2.85 );
setEffScaleKey( spep_5-3 + 68, ctbago2, 2.89, 2.89 );
setEffScaleKey( spep_5-3 + 70, ctbago2, 2.93, 2.93 );
setEffScaleKey( spep_5-3 + 72, ctbago2, 2.97, 2.97 );
setEffScaleKey( spep_5-3 + 74, ctbago2, 3.01, 3.01 );
setEffScaleKey( spep_5-3 + 76, ctbago2, 3.05, 3.05 );
setEffScaleKey( spep_5-3 + 78, ctbago2, 3.08, 3.08 );
setEffScaleKey( spep_5-3 + 80, ctbago2, 3.12, 3.12 );
setEffScaleKey( spep_5-3 + 82, ctbago2, 3.16, 3.16 );
setEffScaleKey( spep_5-3 + 84, ctbago2, 3.2, 3.2 );
setEffScaleKey( spep_5-3 + 86, ctbago2, 3.24, 3.24 );
setEffScaleKey( spep_5-3 + 88, ctbago2, 3.28, 3.28 );

setEffRotateKey( spep_5-3 + 54, ctbago2, -32.4 );
setEffRotateKey( spep_5-3 + 56, ctbago2, -32.5 );
setEffRotateKey( spep_5-3 + 58, ctbago2, -32.5 );

setEffAlphaKey( spep_5-3 + 54, ctbago2, 255 );
setEffAlphaKey( spep_5-3 + 84, ctbago2, 255 );
setEffAlphaKey( spep_5-3 + 86, ctbago2, 128 );
setEffAlphaKey( spep_5-3 + 88, ctbago2, 0 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 67, 1, 0 );

changeAnime( spep_5 + 0, 1, 106 );
changeAnime( spep_5-3 + 56, 1, 107 );

setMoveKey( spep_5 + 0, 1, 77, -784.8 , 0 );
--setMoveKey( spep_5-3 + 2, 1, 77, -720.5 , 0 );
setMoveKey( spep_5-3 + 4, 1, 77, -656.1 , 0 );
setMoveKey( spep_5-3 + 6, 1, 77, -591.8 , 0 );
setMoveKey( spep_5-3 + 8, 1, 77, -527.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, 77, -463 , 0 );
setMoveKey( spep_5-3 + 12, 1, 77, -398.7 , 0 );
setMoveKey( spep_5-3 + 14, 1, 77, -334.3 , 0 );
setMoveKey( spep_5-3 + 16, 1, 77, -269.9 , 0 );
setMoveKey( spep_5-3 + 18, 1, 77, -205.6 , 0 );
setMoveKey( spep_5-3 + 20, 1, 77, -141.2 , 0 );
setMoveKey( spep_5-3 + 22, 1, 77, -76.8 , 0 );
setMoveKey( spep_5-3 + 24, 1, 77, -70.6 , 0 );
setMoveKey( spep_5-3 + 26, 1, 77, -64.4 , 0 );
setMoveKey( spep_5-3 + 28, 1, 77, -58.1 , 0 );
setMoveKey( spep_5-3 + 30, 1, 77, -51.9 , 0 );
setMoveKey( spep_5-3 + 32, 1, 77, -45.6 , 0 );
setMoveKey( spep_5-3 + 34, 1, 77, -39.4 , 0 );
setMoveKey( spep_5-3 + 36, 1, 77, -33.1 , 0 );
setMoveKey( spep_5-3 + 38, 1, 77, -26.9 , 0 );
setMoveKey( spep_5-3 + 40, 1, 77, -20.6 , 0 );
setMoveKey( spep_5-3 + 42, 1, 77, -14.4 , 0 );
setMoveKey( spep_5-3 + 44, 1, 77, -8.1 , 0 );
setMoveKey( spep_5-3 + 46, 1, 77, -1.9 , 0 );
setMoveKey( spep_5-3 + 48, 1, 77, 4.4 , 0 );
setMoveKey( spep_5-3 + 50, 1, 77, 10.6 , 0 );
setMoveKey( spep_5-3 + 52, 1, 77, 16.9 , 0 );
setMoveKey( spep_5-3 + 55, 1, 95, 55.2 , 0 );
setMoveKey( spep_5-3 + 56, 1, -6, -117.6 , 0 );
setMoveKey( spep_5-3 + 58, 1, 148.4, -231.2 , 0 );
setMoveKey( spep_5-3 + 60, 1, 166.8, -300.8 , 0 );
setMoveKey( spep_5-3 + 62, 1, 261.1, -442.4 , 0 );
setMoveKey( spep_5-3 + 64, 1, 317.5, -560 , 0 );
setMoveKey( spep_5-3 + 67, 1, 405.9, -663.6 , 0 );

setScaleKey( spep_5 + 0, 1, 2.35, 2.35 );
setScaleKey( spep_5-3 + 55, 1, 2.35, 2.35 );

setScaleKey( spep_5-3 + 56, 1,1.08,1.08);
setScaleKey( spep_5-3 + 58, 1,1.19,1.19);
setScaleKey( spep_5-3 + 60, 1,1.3,1.3);
setScaleKey( spep_5-3 + 62, 1,1.42,1.42);
setScaleKey( spep_5-3 + 64, 1,1.53,1.53);
setScaleKey( spep_5-3 + 67, 1,1.65,1.65);

setRotateKey( spep_5 + 0, 1, -41.6 );
setRotateKey( spep_5 + 2, 1, -41.7 );
setRotateKey( spep_5-3 + 55, 1, -41.7 );
setRotateKey( spep_5-3 + 56, 1, 30 );
setRotateKey( spep_5-3 + 67, 1, 30 );

--SE
--敵飛んでいく
stopSe( spep_5 + 56, SE046, 12 );

--瞬間移動
SE047 = playSe( spep_5 + 28, 1109 );

--悟飯キック
SE048 = playSe( spep_5 + 52, 1189 ,"",0.7);
SE049 = playSe( spep_5 + 56, 1010 ,"",0.7);
SE050 = playSe( spep_5 + 58, 1187 ,"",0.6);
SE051 = playSe( spep_5 + 60, 1110 ,"",0.7);

-- ** くろ背景 ** --
entryFadeBg( spep_5 , 0, 100, 0,  0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 92;
------------------------------------------------------
-- サムズアップ
------------------------------------------------------
-- ** エフェクト等 ** --
finish1 = entryEffect( spep_6 + 0, SP_18x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish1, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish1, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish1, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish1, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish1, 0 );
setEffRotateKey( spep_6 + 180, finish1, 0 );
setEffAlphaKey( spep_6 + 0, finish1, 255 );
setEffAlphaKey( spep_6 + 180, finish1, 255 );

-- ** エフェクト等 ** --
finish2 = entryEffect( spep_6 + 0, SP_19x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish2, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish2, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish2, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish2, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish2, 0 );
setEffRotateKey( spep_6 + 180, finish2, 0 );
setEffAlphaKey( spep_6 + 0, finish2, 255 );
setEffAlphaKey( spep_6 + 180, finish2, 255 );

-- ** エフェクト等 ** --
finish_bg = entryEffect( spep_6 + 0, SP_20x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, finish_bg, 0, 0, 0 );
setEffMoveKey( spep_6 + 180, finish_bg, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, finish_bg, 1.0, 1.0 );
setEffScaleKey( spep_6 + 180, finish_bg, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, finish_bg, 0 );
setEffRotateKey( spep_6 + 180, finish_bg, 0 );
setEffAlphaKey( spep_6 + 0, finish_bg, 255 );
setEffAlphaKey( spep_6 + 180, finish_bg, 255 );

--SE
--着地
SE052 = playSe( spep_6 + 6, 44 )
setSeVolumeByWorkId( spep_6 + 6, SE052, 108 )
stopSe( spep_6 + 26, SE052, 6 );
SE053 = playSe( spep_6 + 28, 1108 )
setSeVolumeByWorkId( spep_6 + 28, SE053, 151 )
SE054 = playSe( spep_6 + 32, 1107 )
setSeVolumeByWorkId( spep_6 + 32, SE054, 209 )

--向き合ってサムズアップ
SE055 = playSe( spep_6 + 74, 1003 )
stopSe( spep_6 + 84, SE055, 4 );
SE056 = playSe( spep_6 + 76, 1003 )
setSeVolumeByWorkId( spep_6 + 76, SE056, 67 )
stopSe( spep_6 + 86, SE056, 4 );

--終わり
dealDamage( spep_6 +70 );
endPhase( spep_6 + 170 );
end