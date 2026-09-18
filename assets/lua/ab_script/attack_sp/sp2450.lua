--1025070:孫悟空(少年期)_ドラゴンチーム大集合！(ユニット必殺技)
--sp_effect_b1_00218
--sp2450

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
SP_01= 160676 ;-- 全員登場
SP_02= 160677 ;-- 悟空着地
SP_03= 160678 ;-- 如意棒で攻撃
SP_04= 160679 ;-- 如意棒で攻撃
SP_05= 160682 ;-- ヤムチャ攻撃～亀仙人発射
SP_06= 160683 ;-- ヤムチャ攻撃～亀仙人発射
SP_07= 160684 ;-- 亀仙人 発射後
SP_08= 160686 ;-- 攻撃HIT
SP_09= 160687 ;-- 攻撃HIT
SP_10= 160688 ;-- フィニッシュ 全員いる

--エフェクト(敵)
SP_01x= 160676 ;-- 全員登場 
SP_02x= 160677 ;-- 悟空着地 
SP_03x= 160680 ;-- 如意棒で攻撃 (敵)
SP_04x= 160681 ;-- 如意棒で攻撃 (敵)
SP_05x= 160682 ;-- ヤムチャ攻撃～亀仙人発射 
SP_06x= 160683 ;-- ヤムチャ攻撃～亀仙人発射 
SP_07x= 160685 ;-- 亀仙人 発射後 (敵)
SP_08x= 160686 ;-- 攻撃HIT 
SP_09x= 160687 ;-- 攻撃HIT 
SP_10x= 160688 ;-- フィニッシュ 全員いる 

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--全員登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
entry = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, entry, 0, 0, 0 );
setEffMoveKey( spep_0 + 144, entry, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, entry, 1.0, 1.0 );
setEffScaleKey( spep_0 + 144, entry, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry, 0 );
setEffRotateKey( spep_0 + 144, entry, 0 );
setEffAlphaKey( spep_0 + 0, entry, 255 );
setEffAlphaKey( spep_0 + 144, entry, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +54;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]

--SE
--筋斗雲飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1327, "",spep_0 + 200, 0, 70, -1);
setPitch( spep_0 + 0, SE001, 200 );
setTimeStretch( SE001, 1.13, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 178, 74, 48, -1);
SE003 = playSeVer2( spep_0 + 0, 1186, "", 0, 74, 0, -1);
setPitch( spep_0 + 0, SE003, -1200 );
setTimeStretch( SE003, 0.2, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 0, 1311, "", 0, 40, 0, -1);
setPitch( spep_0 + 0, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );

--仲間走ってくる
SE006 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 156, 0, 10, -1);
SE007 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE007, 60 );

--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--筋斗雲飛んでいく
SE009 = playSeVer2( spep_0 + 100, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 44, "", 0, 0, 0, -1);

--筋斗雲飛んでくる
SE011 = playSeVer2( spep_0 + 120, 1186, "",spep_0 + 162, 0, 20, -1);
setPitch( spep_0 + 120, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );

--白フェード
entryFade( spep_0 +136 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 144;
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
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟空着地
------------------------------------------------------
-- ** エフェクト等 ** --
landing = entryEffect( spep_2 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, landing, 0, 0, 0 );
setEffMoveKey( spep_2 + 168, landing, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, landing, 1.0, 1.0 );
setEffScaleKey( spep_2 + 168, landing, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing, 0 );
setEffRotateKey( spep_2 + 168, landing, 0 );
setEffAlphaKey( spep_2 + 0, landing, 255 );
setEffAlphaKey( spep_2 + 166, landing, 255 );
setEffAlphaKey( spep_2 + 167, landing, 255 );
setEffAlphaKey( spep_2 + 168, landing, 0 );

--SE
--ジャンプ
SE013 = playSeVer2( spep_2 + 18, 1007, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 18, 1117, "",spep_2 + 86, 0, 14, -1);

--着地
SE015 = playSeVer2( spep_2 + 68, 1192, "",spep_2 + 96, 0, 10, -1);
SE016 = playSeVer2( spep_2 + 70, 1108, "", 0, 0, 0, -1);

--突っ込んでくる
SE017 = playSeVer2( spep_2 + 80, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 80, 44, "",spep_2 + 124, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+ 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
--SE
--如意棒回す
SE019 = playSeVer2( spep_2 + 124, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 124, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_2 + 130, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 130, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_2 + 138, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 138, SE021, 400 );
setTimeStretch( SE021, 1.27, 30, 4 );
SE022 = playSeVer2( spep_2 + 144, 1151, "", 0, 0, 0, 1.0);

--如意棒握る
SE023 = playSeVer2( spep_2 + 152, 1006, "",spep_2 + 164, 0, 4, -1);

-- ** 次の準備 ** --
spep_3= spep_2 + 168;
------------------------------------------------------
--如意棒で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, attack_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 40, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 38, attack_f, 255 );
setEffAlphaKey( spep_3 + 39, attack_f, 255 );
setEffAlphaKey( spep_3 + 40, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, attack_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 40, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 38, attack_b, 255 );
setEffAlphaKey( spep_3 + 39, attack_b, 255 );
setEffAlphaKey( spep_3 + 40, attack_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 42, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 12, 1, 108 );

setMoveKey( spep_3 + 0, 1, 0, 0 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -0.7, -6 , 0 );
setMoveKey( spep_3-3 + 4, 1, -1.5, -12 , 0 );
setMoveKey( spep_3-3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_3-3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_3-3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_3-3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_3-1 + 42, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_3-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_3-3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_3-1 + 42, 1, 0.17, 0.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 42, 1, 0 );

--SE
--振りかぶる
SE024 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 36, 0, 12, -1);

--敵ヒット
SE026 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE026, 89 );
SE027 = playSeVer2( spep_3 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 40;
------------------------------------------------------
--ヤムチャ攻撃～亀仙人発射
------------------------------------------------------
-- ** エフェクト等 ** --
cut_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_f, 0 );
setEffRotateKey( spep_4 + 572, cut_f, 0 );
setEffAlphaKey( spep_4 + 0, cut_f, 255 );
setEffAlphaKey( spep_4 + 570, cut_f, 255 );
setEffAlphaKey( spep_4 + 571, cut_f, 255 );
setEffAlphaKey( spep_4 + 572, cut_f, 0 );

-- ** エフェクト等 ** --
cut_b = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_b, 0 );
setEffRotateKey( spep_4 + 572, cut_b, 0 );
setEffAlphaKey( spep_4 + 0, cut_b, 255 );
setEffAlphaKey( spep_4 + 30, cut_b, 255 );
setEffAlphaKey( spep_4 + 31, cut_b, 0 );
setEffAlphaKey( spep_4 + 572, cut_b, 0 );

-- ** エフェクト等 ** --
cut_b2 = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_b2, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_b2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_b2, 1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_b2, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_b2, 0 );
setEffRotateKey( spep_4 + 572, cut_b2, 0 );
setEffAlphaKey( spep_4 + 0, cut_b2, 255 );
setEffAlphaKey( spep_4 + 570, cut_b2, 255 );
setEffAlphaKey( spep_4 + 571, cut_b2, 255 );
setEffAlphaKey( spep_4 + 572, cut_b2, 0 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1 );
setDisp( spep_4-1 + 84, 1, 0 );

changeAnime( spep_4-3 + 62, 1, 8 );

setMoveKey( spep_4-3 + 62, 1, 741.9, 173.1 , 0 );
setMoveKey( spep_4-3 + 64, 1, 665.8, 121.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, 568.1, 59.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, 447.6, -11.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, 303.6, -93.4 , 0 );
setMoveKey( spep_4-3 + 72, 1, 329.1, -100.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, 354.6, -107.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, 380.2, -114.5 , 0 );
setMoveKey( spep_4-3 + 78, 1, 405.8, -121.5 , 0 );
setMoveKey( spep_4-3 + 80, 1, 431.4, -128.5 , 0 );
setMoveKey( spep_4-3 + 82, 1, 456.8, -135.5 , 0 );
setMoveKey( spep_4-1 + 84, 1, 838.1, -209.4 , 0 );

setScaleKey( spep_4-3 + 62, 1, 8.72, 8.72 );
setScaleKey( spep_4-3 + 64, 1, 8.54, 8.54 );
setScaleKey( spep_4-3 + 66, 1, 8.25, 8.25 );
setScaleKey( spep_4-3 + 68, 1, 7.83, 7.83 );
setScaleKey( spep_4-3 + 70, 1, 7.3, 7.3 );
setScaleKey( spep_4-3 + 72, 1, 7.66, 7.66 );
setScaleKey( spep_4-3 + 74, 1, 8.02, 8.02 );
setScaleKey( spep_4-3 + 76, 1, 8.38, 8.38 );
setScaleKey( spep_4-3 + 78, 1, 8.73, 8.73 );
setScaleKey( spep_4-3 + 80, 1, 9.09, 9.09 );
setScaleKey( spep_4-3 + 82, 1, 9.46, 9.46 );
setScaleKey( spep_4-1 + 84, 1, 13.25, 13.25 );

setRotateKey( spep_4-3 + 62, 1, -19.7 );
setRotateKey( spep_4-1 + 84, 1, -19.7 );

--SE
--ヤムチャ登場
SE028 = playSeVer2( spep_4 + 0, 1326, "",spep_4 + 122, 0, 20, -1);
SE029 = playSeVer2( spep_4 + 0, 1327, "",spep_4 + 122, 0, 20, -1);
SE030 = playSeVer2( spep_4 + 0, 1183, "",spep_4 + 122, 0, 20, -1);
SE031 = playSeVer2( spep_4 + 40, 9, "", 0, 0, 0, -1);

--ヤムチャ斬る
SE032 = playSeVer2( spep_4 + 84, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 84, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE033, 106 );
SE034 = playSeVer2( spep_4 + 84, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE034, 56 );
SE035 = playSeVer2( spep_4 + 90, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE035, 88 );
SE036 = playSeVer2( spep_4 + 96, 8, "", 0, 0, 0, -1);

--ブルマ銃構える
SE037 = playSeVer2( spep_4 + 192, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE037,  417 );
setBandpassFilter( spep_4 + 192, SE037, 600, 24000 );
SE038 = playSeVer2( spep_4 + 186, 1003, "", 0, 0, 0, -1);

--銃撃つ１
SE039 = playSeVer2( spep_4 + 218, 1208, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE039, 132 );
setStartTimeMs( SE039,  167 );
setPitch( spep_4 + 218, SE039, 300 );
setTimeStretch( SE039, 1.2, 30, 4 );
SE040 = playSeVer2( spep_4 + 218, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE040, 160 );
setPitch( spep_4 + 218, SE040, 400 );
setTimeStretch( SE040, 1.27, 30, 4 );
setBandpassFilter( spep_4 + 218, SE040, 600, 24000 );
SE041 = playSeVer2( spep_4 + 218, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE041, 146 );
setPitch( spep_4 + 218, SE041, -300 );
setTimeStretch( SE041, 0.8, 30, 4 );
SE042 = playSeVer2( spep_4 + 226, 1155, "",spep_4 + 262, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 226, SE042, 69 );
setPitch( spep_4 + 226, SE042, 600 );
setTimeStretch( SE042, 1.4, 30, 4 );

--銃撃つ２
SE043 = playSeVer2( spep_4 + 254, 1208, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE043, 132 );
setStartTimeMs( SE043,  167 );
setPitch( spep_4 + 254, SE043, 300 );
setTimeStretch( SE043, 1.2, 30, 4 );
SE044 = playSeVer2( spep_4 + 254, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE044, 160 );
setPitch( spep_4 + 254, SE044, 400 );
setTimeStretch( SE044, 1.27, 30, 4 );
setBandpassFilter( spep_4 + 254, SE044, 600, 24000 );
SE045 = playSeVer2( spep_4 + 254, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE045, 146 );
setPitch( spep_4 + 254, SE045, -300 );
setTimeStretch( SE045, 0.8, 30, 4 );
SE046 = playSeVer2( spep_4 + 262, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 262, SE046, 69 );
setPitch( spep_4 + 262, SE046, 600 );
setTimeStretch( SE046, 1.4, 30, 4 );

--ウーロン出現
SE047 = playSeVer2( spep_4 + 300, 31, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 300, 1002, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 304, 1251, "", 0, 0, 0, -1);

--飛んでくる
SE050 = playSeVer2( spep_4 + 322, 1072, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_4 + 338, 63, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 350, 1179, "", 0, 0, 0, -1);

--噛み付く
SE053 = playSeVer2( spep_4 + 390, 1234, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 390, SE053, 141 );
SE054 = playSeVer2( spep_4 + 404, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 404, SE054, 75 );
SE055 = playSeVer2( spep_4 + 412, 1110, "", 0, 0, 0, -1);

--かめはめ波溜め
SE056 = playSeVer2( spep_4 + 436, 1210, "",spep_4 + 574, 18, 22, -1);
setStartTimeMs( SE056,  583 );
SE057 = playSeVer2( spep_4 + 436, 1209, "",spep_4 + 574, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 436, SE057, 77 );

--サングラス光る
SE058 = playSeVer2( spep_4 + 480, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 480, SE058, 81 );

--かめはめ波発射
SE059 = playSeVer2( spep_4 + 534, 1213, "", 0, 0, 0, 0.5);
SE060 = playSeVer2( spep_4 + 534, 1284, "", 0, 0, 0, 0.5);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 576, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 572;
------------------------------------------------------
--亀仙人 発射後
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 180, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 178, beam, 255 );
setEffAlphaKey( spep_5 + 179, beam, 255 );
setEffAlphaKey( spep_5 + 180, beam, 0 );

--SE
--かめはめ波発射（横）
SE061 = playSeVer2( spep_5 + 54, 1133, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_5 + 54, 1146, "",spep_5 + 244, 0, 44, -1);
SE063 = playSeVer2( spep_5 + 60, 1161, "",spep_5 + 264, 0, 64, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 180;
------------------------------------------------------
--攻撃HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 64, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 62, hit_f, 255 );
setEffAlphaKey( spep_6 + 63, hit_f, 255 );
setEffAlphaKey( spep_6 + 64, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 64, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 62, hit_b, 255 );
setEffAlphaKey( spep_6 + 63, hit_b, 255 );
setEffAlphaKey( spep_6 + 64, hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -6.4, -19.2 , 0 );
setMoveKey( spep_6 + 2, 1, -6.4, -19 , 0 );
setMoveKey( spep_6 + 4, 1, -6.4, -18.4 , 0 );
setMoveKey( spep_6 + 6, 1, -6.4, -17.4 , 0 );
setMoveKey( spep_6 + 8, 1, -6.4, -15.9 , 0 );
setMoveKey( spep_6 + 10, 1, -6.4, -15.1 , 0 );
setMoveKey( spep_6 + 12, 1, -6.4, -14.3 , 0 );
setMoveKey( spep_6 + 14, 1, -6.4, -13.6 , 0 );
setMoveKey( spep_6 + 16, 1, -6.4, -12.8 , 0 );
setMoveKey( spep_6 + 18, 1, -6.4, -12.1 , 0 );
setMoveKey( spep_6 + 20, 1, -6.4, -11.5 , 0 );
setMoveKey( spep_6 + 22, 1, -6.4, -10.8 , 0 );
setMoveKey( spep_6 + 24, 1, -6.4, -10.1 , 0 );
setMoveKey( spep_6 + 26, 1, -6.4, -9.5 , 0 );
setMoveKey( spep_6 + 28, 1, -6.4, -8.9 , 0 );
setMoveKey( spep_6 + 30, 1, -6.4, -8.3 , 0 );
setMoveKey( spep_6 + 32, 1, -6.4, -7.8 , 0 );
setMoveKey( spep_6 + 34, 1, -6.4, -7.2 , 0 );
setMoveKey( spep_6 + 36, 1, -6.4, -6.7 , 0 );
setMoveKey( spep_6 + 38, 1, -6.4, -6.2 , 0 );
setMoveKey( spep_6 + 40, 1, -6.4, -5.7 , 0 );
setMoveKey( spep_6 + 42, 1, -6.4, -5.2 , 0 );
setMoveKey( spep_6 + 44, 1, -6.4, -4.8 , 0 );
setMoveKey( spep_6 + 46, 1, -6.4, -4.4 , 0 );
setMoveKey( spep_6 + 48, 1, -6.4, -4 , 0 );
setMoveKey( spep_6 + 50, 1, -6.4, -3.6 , 0 );
setMoveKey( spep_6 + 52, 1, -6.4, -3.2 , 0 );
setMoveKey( spep_6 + 54, 1, -6.4, -2.9 , 0 );
setMoveKey( spep_6 + 56, 1, -6.4, -2.5 , 0 );
setMoveKey( spep_6 + 58, 1, -6.4, -2.2 , 0 );
setMoveKey( spep_6 + 60, 1, -6.4, -1.9 , 0 );
setMoveKey( spep_6 + 62, 1, -6.4, -1.7 , 0 );
setMoveKey( spep_6 + 64, 1, -6.4, -1.4 , 0 );
setMoveKey( spep_6 + 66, 1, -6.4, -1.2 , 0 );
setMoveKey( spep_6-1 + 68, 1, -6.4, -1 , 0 );

setScaleKey( spep_6 + 0, 1, 3, 3 );
setScaleKey( spep_6 + 2, 1, 2.9, 2.9 );
setScaleKey( spep_6 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 6, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 10, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 14, 1, 1.22, 1.22 );
setScaleKey( spep_6 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 26, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_6 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_6 + 36, 1, 0.83, 0.83 );
setScaleKey( spep_6 + 38, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 48, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 50, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 54, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 56, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 58, 1, 0.58, 0.58 );
setScaleKey( spep_6 + 60, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 64, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 66, 1, 0.53, 0.53 );
setScaleKey( spep_6-1 + 68, 1, 0.51, 0.51 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 68, 1, 0 );

--SE
--敵吹き飛ぶ
SE064 = playSeVer2( spep_6 + 0, 1027, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_6 + 0, 1258, "",spep_6 + 110, 0, 66, -1);
setSeVolumeByWorkId( spep_6 + 0, SE065, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 64;
------------------------------------------------------
--攻撃HIT
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_7 + 194, finish, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 194, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 194, finish, 255 );

--SE
--亀仙人戻る
SE066 = playSeVer2( spep_7 + 26, 38, "", 0, 0, 0, -1);

--最後決め
SE067 = playSeVer2( spep_7 + 38, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 38, SE067, 82 );
SE068 = playSeVer2( spep_7 + 38, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 38, SE068, 62 );

-- 終わり
dealDamage(spep_7+40);
endPhase( spep_7 + 184 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--全員登場
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
entry = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, entry, 0, 0, 0 );
setEffMoveKey( spep_0 + 144, entry, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, entry, -1.0, 1.0 );
setEffScaleKey( spep_0 + 144, entry, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry, 0 );
setEffRotateKey( spep_0 + 144, entry, 0 );
setEffAlphaKey( spep_0 + 0, entry, 255 );
setEffAlphaKey( spep_0 + 144, entry, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +54;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
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
]]

--SE
--筋斗雲飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1327, "",spep_0 + 200, 0, 70, -1);
setPitch( spep_0 + 0, SE001, 200 );
setTimeStretch( SE001, 1.13, 30, 4 );
SE002 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 178, 74, 48, -1);
SE003 = playSeVer2( spep_0 + 0, 1186, "", 0, 74, 0, -1);
setPitch( spep_0 + 0, SE003, -1200 );
setTimeStretch( SE003, 0.2, 30, 4 );
SE004 = playSeVer2( spep_0 + 0, 63, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 0, 1311, "", 0, 40, 0, -1);
setPitch( spep_0 + 0, SE005, 300 );
setTimeStretch( SE005, 1.2, 30, 4 );

--仲間走ってくる
SE006 = playSeVer2( spep_0 + 0, 1044, "",spep_0 + 156, 0, 10, -1);
SE007 = playSeVer2( spep_0 + 0, 1326, "",spep_0 + 156, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 0, SE007, 60 );

--顔カットイン
SE008 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--筋斗雲飛んでいく
SE009 = playSeVer2( spep_0 + 100, 1027, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_0 + 100, 44, "", 0, 0, 0, -1);

--筋斗雲飛んでくる
SE011 = playSeVer2( spep_0 + 120, 1186, "",spep_0 + 162, 0, 20, -1);
setPitch( spep_0 + 120, SE011, -1200 );
setTimeStretch( SE011, 0.2, 30, 4 );

--白フェード
entryFade( spep_0 +136 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 144, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_1= spep_0 + 144;
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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_1 + 0, SE_05 );

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;
------------------------------------------------------
--悟空着地
------------------------------------------------------
-- ** エフェクト等 ** --
landing = entryEffect( spep_2 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, landing, 0, 0, 0 );
setEffMoveKey( spep_2 + 168, landing, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, landing, -1.0, 1.0 );
setEffScaleKey( spep_2 + 168, landing, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, landing, 0 );
setEffRotateKey( spep_2 + 168, landing, 0 );
setEffAlphaKey( spep_2 + 0, landing, 255 );
setEffAlphaKey( spep_2 + 166, landing, 255 );
setEffAlphaKey( spep_2 + 167, landing, 255 );
setEffAlphaKey( spep_2 + 168, landing, 0 );

--SE
--ジャンプ
SE013 = playSeVer2( spep_2 + 18, 1007, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 18, 1117, "",spep_2 + 86, 0, 14, -1);

--着地
SE015 = playSeVer2( spep_2 + 68, 1192, "",spep_2 + 96, 0, 10, -1);
SE016 = playSeVer2( spep_2 + 70, 1108, "", 0, 0, 0, -1);

--突っ込んでくる
SE017 = playSeVer2( spep_2 + 80, 1182, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_2 + 80, 44, "",spep_2 + 124, 0, 18, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2+ 100; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    stopSe( SP_dodge - 12, SE016, 0 );
    stopSe( SP_dodge - 12, SE017, 0 );
    stopSe( SP_dodge - 12, SE018, 0 );
    
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
--SE
--如意棒回す
SE019 = playSeVer2( spep_2 + 124, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 124, SE019, 400 );
setTimeStretch( SE019, 1.27, 30, 4 );
SE020 = playSeVer2( spep_2 + 130, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 130, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_2 + 138, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_2 + 138, SE021, 400 );
setTimeStretch( SE021, 1.27, 30, 4 );
SE022 = playSeVer2( spep_2 + 144, 1151, "", 0, 0, 0, 1.0);

--如意棒握る
SE023 = playSeVer2( spep_2 + 152, 1006, "",spep_2 + 164, 0, 4, -1);

-- ** 次の準備 ** --
spep_3= spep_2 + 168;
------------------------------------------------------
--如意棒で攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_3 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, attack_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_f, 0 );
setEffRotateKey( spep_3 + 40, attack_f, 0 );
setEffAlphaKey( spep_3 + 0, attack_f, 255 );
setEffAlphaKey( spep_3 + 38, attack_f, 255 );
setEffAlphaKey( spep_3 + 39, attack_f, 255 );
setEffAlphaKey( spep_3 + 40, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_3 + 0, SP_04x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 40, attack_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, attack_b, 0 );
setEffRotateKey( spep_3 + 40, attack_b, 0 );
setEffAlphaKey( spep_3 + 0, attack_b, 255 );
setEffAlphaKey( spep_3 + 38, attack_b, 255 );
setEffAlphaKey( spep_3 + 39, attack_b, 255 );
setEffAlphaKey( spep_3 + 40, attack_b, 0 );

--敵の動き
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3-1 + 42, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3-3 + 12, 1, 108 );

setMoveKey( spep_3 + 0, 1, 0, 0 , 0 );
--setMoveKey( spep_3-3 + 2, 1, -0.7, -6 , 0 );
setMoveKey( spep_3-3 + 4, 1, -1.5, -12 , 0 );
setMoveKey( spep_3-3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_3-3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_3-3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_3-3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_3-3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_3-3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_3-3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_3-3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_3-3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_3-3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_3-3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_3-3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_3-3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_3-3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_3-3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_3-3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_3-3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_3-3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_3-1 + 42, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_3 + 0, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_3-3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_3-3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_3-3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_3-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_3-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_3-3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_3-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_3-3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_3-3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_3-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_3-3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_3-3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_3-3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_3-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_3-3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_3-3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_3-3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_3-3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_3-3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_3-1 + 42, 1, 0.17, 0.17 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3-1 + 42, 1, 0 );

--SE
--振りかぶる
SE024 = playSeVer2( spep_3 + 0, 1004, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 0, 1116, "",spep_3 + 36, 0, 12, -1);

--敵ヒット
SE026 = playSeVer2( spep_3 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE026, 89 );
SE027 = playSeVer2( spep_3 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_4= spep_3 + 40;
------------------------------------------------------
--ヤムチャ攻撃～亀仙人発射
------------------------------------------------------
-- ** エフェクト等 ** --
cut_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_f, 0 );
setEffRotateKey( spep_4 + 572, cut_f, 0 );
setEffAlphaKey( spep_4 + 0, cut_f, 255 );
setEffAlphaKey( spep_4 + 570, cut_f, 255 );
setEffAlphaKey( spep_4 + 571, cut_f, 255 );
setEffAlphaKey( spep_4 + 572, cut_f, 0 );

-- ** エフェクト等 ** --
cut_b = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_b, 0 );
setEffRotateKey( spep_4 + 572, cut_b, 0 );
setEffAlphaKey( spep_4 + 0, cut_b, 255 );
setEffAlphaKey( spep_4 + 30, cut_b, 255 );
setEffAlphaKey( spep_4 + 31, cut_b, 0 );
setEffAlphaKey( spep_4 + 572, cut_b, 0 );

-- ** エフェクト等 ** --
cut_b2 = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, cut_b2, 0, 0, 0 );
setEffMoveKey( spep_4 + 572, cut_b2, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, cut_b2, -1.0, 1.0 );
setEffScaleKey( spep_4 + 572, cut_b2, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, cut_b2, 0 );
setEffRotateKey( spep_4 + 572, cut_b2, 0 );
setEffAlphaKey( spep_4 + 0, cut_b2, 255 );
setEffAlphaKey( spep_4 + 570, cut_b2, 255 );
setEffAlphaKey( spep_4 + 571, cut_b2, 255 );
setEffAlphaKey( spep_4 + 572, cut_b2, 0 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1 );
setDisp( spep_4-1 + 84, 1, 0 );

changeAnime( spep_4-3 + 62, 1, 108 );

setMoveKey( spep_4-3 + 62, 1, -741.9, 173.1 , 0 );
setMoveKey( spep_4-3 + 64, 1, -665.8, 121.2 , 0 );
setMoveKey( spep_4-3 + 66, 1, -568.1, 59.8 , 0 );
setMoveKey( spep_4-3 + 68, 1, -447.6, -11.6 , 0 );
setMoveKey( spep_4-3 + 70, 1, -303.6, -93.4 , 0 );
setMoveKey( spep_4-3 + 72, 1, -329.1, -100.4 , 0 );
setMoveKey( spep_4-3 + 74, 1, -354.6, -107.5 , 0 );
setMoveKey( spep_4-3 + 76, 1, -380.2, -114.5 , 0 );
setMoveKey( spep_4-3 + 78, 1, -405.8, -121.5 , 0 );
setMoveKey( spep_4-3 + 80, 1, -431.4, -128.5 , 0 );
setMoveKey( spep_4-3 + 82, 1, -456.8, -135.5 , 0 );
setMoveKey( spep_4-1 + 84, 1, -838.1, -209.4 , 0 );

setScaleKey( spep_4-3 + 62, 1, 8.72, 8.72 );
setScaleKey( spep_4-3 + 64, 1, 8.54, 8.54 );
setScaleKey( spep_4-3 + 66, 1, 8.25, 8.25 );
setScaleKey( spep_4-3 + 68, 1, 7.83, 7.83 );
setScaleKey( spep_4-3 + 70, 1, 7.3, 7.3 );
setScaleKey( spep_4-3 + 72, 1, 7.66, 7.66 );
setScaleKey( spep_4-3 + 74, 1, 8.02, 8.02 );
setScaleKey( spep_4-3 + 76, 1, 8.38, 8.38 );
setScaleKey( spep_4-3 + 78, 1, 8.73, 8.73 );
setScaleKey( spep_4-3 + 80, 1, 9.09, 9.09 );
setScaleKey( spep_4-3 + 82, 1, 9.46, 9.46 );
setScaleKey( spep_4-1 + 84, 1, 13.25, 13.25 );

setRotateKey( spep_4-3 + 62, 1, 19.7 );
setRotateKey( spep_4-1 + 84, 1, 19.7 );

--SE
--ヤムチャ登場
SE028 = playSeVer2( spep_4 + 0, 1326, "",spep_4 + 122, 0, 20, -1);
SE029 = playSeVer2( spep_4 + 0, 1327, "",spep_4 + 122, 0, 20, -1);
SE030 = playSeVer2( spep_4 + 0, 1183, "",spep_4 + 122, 0, 20, -1);
SE031 = playSeVer2( spep_4 + 40, 9, "", 0, 0, 0, -1);

--ヤムチャ斬る
SE032 = playSeVer2( spep_4 + 84, 1032, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_4 + 84, 1061, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE033, 106 );
SE034 = playSeVer2( spep_4 + 84, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 84, SE034, 56 );
SE035 = playSeVer2( spep_4 + 90, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 90, SE035, 88 );
SE036 = playSeVer2( spep_4 + 96, 8, "", 0, 0, 0, -1);

--ブルマ銃構える
SE037 = playSeVer2( spep_4 + 192, 1150, "", 0, 4, 0, -1);
setStartTimeMs( SE037,  417 );
setBandpassFilter( spep_4 + 192, SE037, 600, 24000 );
SE038 = playSeVer2( spep_4 + 186, 1003, "", 0, 0, 0, -1);

--銃撃つ１
SE039 = playSeVer2( spep_4 + 218, 1208, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE039, 132 );
setStartTimeMs( SE039,  167 );
setPitch( spep_4 + 218, SE039, 300 );
setTimeStretch( SE039, 1.2, 30, 4 );
SE040 = playSeVer2( spep_4 + 218, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE040, 160 );
setPitch( spep_4 + 218, SE040, 400 );
setTimeStretch( SE040, 1.27, 30, 4 );
setBandpassFilter( spep_4 + 218, SE040, 600, 24000 );
SE041 = playSeVer2( spep_4 + 218, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 218, SE041, 146 );
setPitch( spep_4 + 218, SE041, -300 );
setTimeStretch( SE041, 0.8, 30, 4 );
SE042 = playSeVer2( spep_4 + 226, 1155, "",spep_4 + 262, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 226, SE042, 69 );
setPitch( spep_4 + 226, SE042, 600 );
setTimeStretch( SE042, 1.4, 30, 4 );

--銃撃つ２
SE043 = playSeVer2( spep_4 + 254, 1208, "", 0, 2, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE043, 132 );
setStartTimeMs( SE043,  167 );
setPitch( spep_4 + 254, SE043, 300 );
setTimeStretch( SE043, 1.2, 30, 4 );
SE044 = playSeVer2( spep_4 + 254, 1028, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE044, 160 );
setPitch( spep_4 + 254, SE044, 400 );
setTimeStretch( SE044, 1.27, 30, 4 );
setBandpassFilter( spep_4 + 254, SE044, 600, 24000 );
SE045 = playSeVer2( spep_4 + 254, 1015, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 254, SE045, 146 );
setPitch( spep_4 + 254, SE045, -300 );
setTimeStretch( SE045, 0.8, 30, 4 );
SE046 = playSeVer2( spep_4 + 262, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 262, SE046, 69 );
setPitch( spep_4 + 262, SE046, 600 );
setTimeStretch( SE046, 1.4, 30, 4 );

--ウーロン出現
SE047 = playSeVer2( spep_4 + 300, 31, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_4 + 300, 1002, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 304, 1251, "", 0, 0, 0, -1);

--飛んでくる
SE050 = playSeVer2( spep_4 + 322, 1072, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_4 + 338, 63, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_4 + 350, 1179, "", 0, 0, 0, -1);

--噛み付く
SE053 = playSeVer2( spep_4 + 390, 1234, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 390, SE053, 141 );
SE054 = playSeVer2( spep_4 + 404, 1049, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 404, SE054, 75 );
SE055 = playSeVer2( spep_4 + 412, 1110, "", 0, 0, 0, -1);

--かめはめ波溜め
SE056 = playSeVer2( spep_4 + 436, 1210, "",spep_4 + 574, 18, 22, -1);
setStartTimeMs( SE056,  583 );
SE057 = playSeVer2( spep_4 + 436, 1209, "",spep_4 + 574, 0, 22, -1);
setSeVolumeByWorkId( spep_4 + 436, SE057, 77 );

--サングラス光る
SE058 = playSeVer2( spep_4 + 480, 1042, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 480, SE058, 81 );

--かめはめ波発射
SE059 = playSeVer2( spep_4 + 534, 1213, "", 0, 0, 0, 0.5);
SE060 = playSeVer2( spep_4 + 534, 1284, "", 0, 0, 0, 0.5);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 576, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 572;
------------------------------------------------------
--亀仙人 発射後
------------------------------------------------------
-- ** エフェクト等 ** --
beam = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, beam, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, beam, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, beam, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, beam, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, beam, 0 );
setEffRotateKey( spep_5 + 180, beam, 0 );
setEffAlphaKey( spep_5 + 0, beam, 255 );
setEffAlphaKey( spep_5 + 178, beam, 255 );
setEffAlphaKey( spep_5 + 179, beam, 255 );
setEffAlphaKey( spep_5 + 180, beam, 0 );

--SE
--かめはめ波発射（横）
SE061 = playSeVer2( spep_5 + 54, 1133, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_5 + 54, 1146, "",spep_5 + 244, 0, 44, -1);
SE063 = playSeVer2( spep_5 + 60, 1161, "",spep_5 + 264, 0, 64, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 182, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 180;
------------------------------------------------------
--攻撃HIT
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_f, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_f, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_f, 0 );
setEffRotateKey( spep_6 + 64, hit_f, 0 );
setEffAlphaKey( spep_6 + 0, hit_f, 255 );
setEffAlphaKey( spep_6 + 62, hit_f, 255 );
setEffAlphaKey( spep_6 + 63, hit_f, 255 );
setEffAlphaKey( spep_6 + 64, hit_f, 0 );

-- ** エフェクト等 ** --
hit_b = entryEffect( spep_6 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hit_b, 0, 0, 0 );
setEffMoveKey( spep_6 + 64, hit_b, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hit_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 64, hit_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hit_b, 0 );
setEffRotateKey( spep_6 + 64, hit_b, 0 );
setEffAlphaKey( spep_6 + 0, hit_b, 255 );
setEffAlphaKey( spep_6 + 62, hit_b, 255 );
setEffAlphaKey( spep_6 + 63, hit_b, 255 );
setEffAlphaKey( spep_6 + 64, hit_b, 0 );

--敵の動き
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6-1 + 68, 1, 0 );

changeAnime( spep_6 + 0, 1, 105 );

setMoveKey( spep_6 + 0, 1, -6.4, -19.2 , 0 );
setMoveKey( spep_6 + 2, 1, -6.4, -19 , 0 );
setMoveKey( spep_6 + 4, 1, -6.4, -18.4 , 0 );
setMoveKey( spep_6 + 6, 1, -6.4, -17.4 , 0 );
setMoveKey( spep_6 + 8, 1, -6.4, -15.9 , 0 );
setMoveKey( spep_6 + 10, 1, -6.4, -15.1 , 0 );
setMoveKey( spep_6 + 12, 1, -6.4, -14.3 , 0 );
setMoveKey( spep_6 + 14, 1, -6.4, -13.6 , 0 );
setMoveKey( spep_6 + 16, 1, -6.4, -12.8 , 0 );
setMoveKey( spep_6 + 18, 1, -6.4, -12.1 , 0 );
setMoveKey( spep_6 + 20, 1, -6.4, -11.5 , 0 );
setMoveKey( spep_6 + 22, 1, -6.4, -10.8 , 0 );
setMoveKey( spep_6 + 24, 1, -6.4, -10.1 , 0 );
setMoveKey( spep_6 + 26, 1, -6.4, -9.5 , 0 );
setMoveKey( spep_6 + 28, 1, -6.4, -8.9 , 0 );
setMoveKey( spep_6 + 30, 1, -6.4, -8.3 , 0 );
setMoveKey( spep_6 + 32, 1, -6.4, -7.8 , 0 );
setMoveKey( spep_6 + 34, 1, -6.4, -7.2 , 0 );
setMoveKey( spep_6 + 36, 1, -6.4, -6.7 , 0 );
setMoveKey( spep_6 + 38, 1, -6.4, -6.2 , 0 );
setMoveKey( spep_6 + 40, 1, -6.4, -5.7 , 0 );
setMoveKey( spep_6 + 42, 1, -6.4, -5.2 , 0 );
setMoveKey( spep_6 + 44, 1, -6.4, -4.8 , 0 );
setMoveKey( spep_6 + 46, 1, -6.4, -4.4 , 0 );
setMoveKey( spep_6 + 48, 1, -6.4, -4 , 0 );
setMoveKey( spep_6 + 50, 1, -6.4, -3.6 , 0 );
setMoveKey( spep_6 + 52, 1, -6.4, -3.2 , 0 );
setMoveKey( spep_6 + 54, 1, -6.4, -2.9 , 0 );
setMoveKey( spep_6 + 56, 1, -6.4, -2.5 , 0 );
setMoveKey( spep_6 + 58, 1, -6.4, -2.2 , 0 );
setMoveKey( spep_6 + 60, 1, -6.4, -1.9 , 0 );
setMoveKey( spep_6 + 62, 1, -6.4, -1.7 , 0 );
setMoveKey( spep_6 + 64, 1, -6.4, -1.4 , 0 );
setMoveKey( spep_6 + 66, 1, -6.4, -1.2 , 0 );
setMoveKey( spep_6-1 + 68, 1, -6.4, -1 , 0 );

setScaleKey( spep_6 + 0, 1, 3, 3 );
setScaleKey( spep_6 + 2, 1, 2.9, 2.9 );
setScaleKey( spep_6 + 4, 1, 2.59, 2.59 );
setScaleKey( spep_6 + 6, 1, 2.07, 2.07 );
setScaleKey( spep_6 + 8, 1, 1.34, 1.34 );
setScaleKey( spep_6 + 10, 1, 1.3, 1.3 );
setScaleKey( spep_6 + 12, 1, 1.26, 1.26 );
setScaleKey( spep_6 + 14, 1, 1.22, 1.22 );
setScaleKey( spep_6 + 16, 1, 1.18, 1.18 );
setScaleKey( spep_6 + 18, 1, 1.14, 1.14 );
setScaleKey( spep_6 + 20, 1, 1.1, 1.1 );
setScaleKey( spep_6 + 22, 1, 1.06, 1.06 );
setScaleKey( spep_6 + 24, 1, 1.03, 1.03 );
setScaleKey( spep_6 + 26, 1, 0.99, 0.99 );
setScaleKey( spep_6 + 28, 1, 0.96, 0.96 );
setScaleKey( spep_6 + 30, 1, 0.92, 0.92 );
setScaleKey( spep_6 + 32, 1, 0.89, 0.89 );
setScaleKey( spep_6 + 34, 1, 0.86, 0.86 );
setScaleKey( spep_6 + 36, 1, 0.83, 0.83 );
setScaleKey( spep_6 + 38, 1, 0.8, 0.8 );
setScaleKey( spep_6 + 40, 1, 0.78, 0.78 );
setScaleKey( spep_6 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_6 + 44, 1, 0.73, 0.73 );
setScaleKey( spep_6 + 46, 1, 0.7, 0.7 );
setScaleKey( spep_6 + 48, 1, 0.68, 0.68 );
setScaleKey( spep_6 + 50, 1, 0.66, 0.66 );
setScaleKey( spep_6 + 52, 1, 0.64, 0.64 );
setScaleKey( spep_6 + 54, 1, 0.62, 0.62 );
setScaleKey( spep_6 + 56, 1, 0.6, 0.6 );
setScaleKey( spep_6 + 58, 1, 0.58, 0.58 );
setScaleKey( spep_6 + 60, 1, 0.57, 0.57 );
setScaleKey( spep_6 + 62, 1, 0.55, 0.55 );
setScaleKey( spep_6 + 64, 1, 0.54, 0.54 );
setScaleKey( spep_6 + 66, 1, 0.53, 0.53 );
setScaleKey( spep_6-1 + 68, 1, 0.51, 0.51 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6-1 + 68, 1, 0 );

--SE
--敵吹き飛ぶ
SE064 = playSeVer2( spep_6 + 0, 1027, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_6 + 0, 1258, "",spep_6 + 110, 0, 66, -1);
setSeVolumeByWorkId( spep_6 + 0, SE065, 67 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 70, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 64;
------------------------------------------------------
--攻撃HIT
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_7 + 0, SP_10x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_7 + 194, finish, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish, -1.0, 1.0 );
setEffScaleKey( spep_7 + 194, finish, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish, 0 );
setEffRotateKey( spep_7 + 194, finish, 0 );
setEffAlphaKey( spep_7 + 0, finish, 255 );
setEffAlphaKey( spep_7 + 194, finish, 255 );

--SE
--亀仙人戻る
SE066 = playSeVer2( spep_7 + 26, 38, "", 0, 0, 0, -1);

--最後決め
SE067 = playSeVer2( spep_7 + 38, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 38, SE067, 82 );
SE068 = playSeVer2( spep_7 + 38, 1062, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 38, SE068, 62 );

-- 終わり
dealDamage(spep_7+40);
endPhase( spep_7 + 184 );
end
