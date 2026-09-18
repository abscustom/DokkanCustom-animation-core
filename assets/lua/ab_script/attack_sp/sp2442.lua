--1025070:孫悟空(少年期)_孫悟空突撃！
--sp_effect_b1_00213
--sp2442

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
SP_01= 160631 ;-- 登場→落下→如意棒回し
SP_02= 160632 ;-- 棒回し攻撃
SP_03= 160633 ;-- 棒回し攻撃
SP_04= 160636 ;-- 棒回し正面→ジャンプ→UP
SP_05= 160637 ;-- 振り下ろし→筋斗雲突進
SP_06= 160638 ;-- 振り下ろし→筋斗雲突進
SP_07= 160639 ;-- フィニッシュ
SP_08= 160640 ;-- フィニッシュ

--エフェクト(敵)
SP_01x= 160631 ;-- 登場→落下→如意棒回し 
SP_02x= 160634 ;-- 棒回し攻撃 (敵)
SP_03x= 160635 ;-- 棒回し攻撃 (敵)
SP_04x= 160636 ;-- 棒回し正面→ジャンプ→UP 
SP_05x= 160637 ;-- 振り下ろし→筋斗雲突進 
SP_06x= 160638 ;-- 振り下ろし→筋斗雲突進 
SP_07x= 160639 ;-- フィニッシュ 
SP_08x= 160640 ;-- フィニッシュ 

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
--登場→落下→如意棒回し
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
entry = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, entry, 0, 0, 0 );
setEffMoveKey( spep_0 + 324, entry, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, entry, 1.0, 1.0 );
setEffScaleKey( spep_0 + 324, entry, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry, 0 );
setEffRotateKey( spep_0 + 324, entry, 0 );
setEffAlphaKey( spep_0 + 0, entry, 255 );
setEffAlphaKey( spep_0 + 322, entry, 255 );
setEffAlphaKey( spep_0 + 323, entry, 255 );
setEffAlphaKey( spep_0 + 324, entry, 0 );

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
SE007 = playSeVer2( spep_0 + 120, 1186, "",spep_0 + 176, 0, 40, -1);
setPitch( spep_0 + 120, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--筋斗雲飛んでいく
SE008 = playSeVer2( spep_0 + 124, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 44, "", 0, 0, 0, -1);

--飛び降りる
SE010 = playSeVer2( spep_0 + 172, 1007, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 172, 1117, "",spep_0 + 240, 0, 14, -1);

--着地
SE012 = playSeVer2( spep_0 + 224, 1192, "",spep_0 + 252, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 226, 1108, "", 0, 0, 0, -1);

--向かってくる
SE014 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 234, 44, "",spep_0 + 278, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 330, 0, 0, 0, 0, 255 );  --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 258; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    
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
SE016 = playSeVer2( spep_0 + 278, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 278, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE017 = playSeVer2( spep_0 + 284, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 284, SE017, 400 );
setTimeStretch( SE017, 1.27, 30, 4 );
SE018 = playSeVer2( spep_0 + 290, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 290, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 296, 1151, "", 0, 0, 0, 1.0);

--如意棒握る
SE020 = playSeVer2( spep_0 + 306, 1006, "",spep_0 + 322, 0, 4, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 324;
------------------------------------------------------
--棒回し攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, attack_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 40, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 38, attack_f, 255 );
setEffAlphaKey( spep_1 + 39, attack_f, 255 );
setEffAlphaKey( spep_1 + 40, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, attack_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 40, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 38, attack_b, 255 );
setEffAlphaKey( spep_1 + 39, attack_b, 255 );
setEffAlphaKey( spep_1 + 40, attack_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 42, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 0, 0 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -0.7, -6 , 0 );
setMoveKey( spep_1-3 + 4, 1, -1.5, -12 , 0 );
setMoveKey( spep_1-3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_1-3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_1-3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_1-3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_1-1 + 42, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.22, 1.22 );
--setScaleKey( spep_1-3 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_1-1 + 42, 1, 0.17, 0.17 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 42, 1, 0 );

--SE
--如意棒振る
SE021 = playSeVer2( spep_1 + 0, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 34, 0, 10, -1);

--敵ヒット
SE023 = playSeVer2( spep_1 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE023, 90 );
SE024 = playSeVer2( spep_1 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 40;
------------------------------------------------------
--棒回し正面→ジャンプ→UP
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_2 + 200, jump, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 200, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 200, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 200, jump, 255 );

--SE
--悟空回転
SE025 = playSeVer2( spep_2 + 0, 1151, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 83 );
SE027 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);

--着地
SE028 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE028, 127 );
SE029 = playSeVer2( spep_2 + 44, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE029, 81 );
SE030 = playSeVer2( spep_2 + 48, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE030, 141 );

--ジャンプ
SE031 = playSeVer2( spep_2 + 106, 1207, "",spep_2 + 202, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 106, SE031, 81 );
SE032 = playSeVer2( spep_2 + 106, 1117, "",spep_2 + 202, 0, 8, -1);
SE033 = playSeVer2( spep_2 + 106, 44, "", 0, 0, 0, -1);

--振りかぶりアップ
SE034 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 134, 1264, "",spep_2 + 204, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 134, SE035, 81 );
SE036 = playSeVer2( spep_2 + 144, 1116, "",spep_2 + 182, 0, 14, -1);

--白フェード
entryFade( spep_2 +196 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 200;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
 
-- ** 音 ** --
-- playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--振り下ろし→筋斗雲突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 228, rush_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 228, rush_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_f, 0 );
setEffRotateKey( spep_4 + 228, rush_f, 0 );
setEffAlphaKey( spep_4 + 0, rush_f, 255 );
setEffAlphaKey( spep_4 + 226, rush_f, 255 );
setEffAlphaKey( spep_4 + 227, rush_f, 255 );
setEffAlphaKey( spep_4 + 228, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 228, rush_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 228, rush_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_b, 0 );
setEffRotateKey( spep_4 + 228, rush_b, 0 );
setEffAlphaKey( spep_4 + 0, rush_b, 255 );
setEffAlphaKey( spep_4 + 226, rush_b, 255 );
setEffAlphaKey( spep_4 + 227, rush_b, 255 );
setEffAlphaKey( spep_4 + 228, rush_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 6, 1, 108 );

setMoveKey( spep_4 + 0, 1, 156.9, -213 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 156.9, -191 , 0 );
setMoveKey( spep_4-3 + 5, 1, 156.9, -169 , 0 );
setMoveKey( spep_4-3 + 6, 1, 165.8, -188.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, 154.5, -229.8 , 0 );
setMoveKey( spep_4-3 + 10, 1, 197.2, -278.8 , 0 );
setMoveKey( spep_4-3 + 12, 1, 176.2, -301.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, 165.3, -271.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 203.4, -266.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, 187.5, -272.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, 189.5, -268.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, 191.6, -264.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, 193.7, -260.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, 285.1, -223.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, 370.7, -186.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, 450.6, -151.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, 524.7, -118.6 , 0 );
setMoveKey( spep_4-3 + 34, 1, 592.9, -86.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, 655.5, -56.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, 712.2, -27.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, 763.2, -0.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.4,2.4);
setScaleKey( spep_4-3 + 5, 1, 2.4,2.4);

setScaleKey( spep_4-3 + 6, 1, 2.47,2.47);
setScaleKey( spep_4-3 + 24, 1, 2.47,2.47);
setScaleKey( spep_4-3 + 26, 1, 2.92,2.92);
setScaleKey( spep_4-3 + 28, 1, 3.34,3.34);
setScaleKey( spep_4-3 + 30, 1, 3.74,3.74);
setScaleKey( spep_4-3 + 32, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 34, 1, 4.42,4.42);
setScaleKey( spep_4-3 + 36, 1, 4.71,4.71);
setScaleKey( spep_4-3 + 38, 1, 4.99,4.99);
setScaleKey( spep_4-3 + 40, 1, 5.22,5.22);

setRotateKey( spep_4 + 0, 1, -25 );
setRotateKey( spep_4-3 + 5, 1, -25 );
setRotateKey( spep_4-3 + 6, 1, 51 );
setRotateKey( spep_4-3 + 8, 1, 52.5 );
setRotateKey( spep_4-3 + 10, 1, 54 );
setRotateKey( spep_4-3 + 12, 1, 54.9 );
setRotateKey( spep_4-3 + 14, 1, 55.7 );
setRotateKey( spep_4-3 + 16, 1, 56.6 );
setRotateKey( spep_4-3 + 18, 1, 57.4 );
setRotateKey( spep_4-3 + 20, 1, 58.3 );
setRotateKey( spep_4-3 + 22, 1, 59.1 );
setRotateKey( spep_4-3 + 24, 1, 60 );
setRotateKey( spep_4-3 + 26, 1, 61 );
setRotateKey( spep_4-3 + 28, 1, 62 );
setRotateKey( spep_4-3 + 30, 1, 63 );
setRotateKey( spep_4-3 + 32, 1, 64 );
setRotateKey( spep_4-3 + 34, 1, 65 );
setRotateKey( spep_4-3 + 36, 1, 66 );
setRotateKey( spep_4-3 + 38, 1, 67 );
setRotateKey( spep_4-3 + 40, 1, 68 );

--SE
--敵ヒット
SE038 = playSeVer2( spep_4 -4 + 0, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 4, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE040, 83 );
SE041 = playSeVer2( spep_4 + 8, 1169, "", 0, 0, 0, -1);

--筋斗雲飛んでくる
SE042 = playSeVer2( spep_4 + 32, 1327, "",spep_4 + 138, 0, 48, -1);
setSeVolumeByWorkId( spep_4 + 32, SE042, 76 );
setPitch( spep_4 + 32, SE042, 200 );
setTimeStretch( SE042, 1.13, 30, 4 );
SE043 = playSeVer2( spep_4 + 48, 1186, "",spep_4 + 148, 0, 40, -1);
setSeVolumeByWorkId( spep_4 + 48, SE043, 81 );
setPitch( spep_4 + 48, SE043, -1200 );
setTimeStretch( SE043, 0.2, 30, 4 );
SE044 = playSeVer2( spep_4 + 48, 63, "",spep_4 + 144, 0, 44, -1);
SE045 = playSeVer2( spep_4 + 48, 1232, "", 0, 0, 0, -1);

--筋斗雲着地
SE046 = playSeVer2( spep_4 + 86, 1112, "",spep_4 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 86, SE046, 93 );
SE047 = playSeVer2( spep_4 + 86, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE047, 75 );

--筋斗雲で向かってくる
SE048 = playSeVer2( spep_4 + 118, 1027, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 118, 9, "", 0, 0, 0, -1);
setTimeStretch( SE049, 1.11, 30, 4 );
SE050 = playSeVer2( spep_4 + 118, 1326, "",spep_4 + 250, 0, 24, -1);
setSeVolumeByWorkId( spep_4 + 118, SE050, 68 );
SE051 = playSeVer2( spep_4 + 222, 1186, "", 0, 74, 0, -1);
setStartTimeMs( SE051,  1733 );
setPitch( spep_4 + 222, SE051, -1200 );
setTimeStretch( SE051, 0.2, 30, 4 );
SE052 = playSeVer2( spep_4 + 118, 1311, "", 0, 0, 0, -1);
setPitch( spep_4 + 118, SE052, 300 );
setTimeStretch( SE052, 1.2, 30, 4 );

--加速する
SE053 = playSeVer2( spep_4 + 166, 1072, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 178, 1014, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 178, 1258, "",spep_4 + 242, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 178, SE055, 86 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 228;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 180, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 180, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 105 );

setMoveKey( spep_5 + 0, 1, -5.1, -28.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -23.3, -32.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, 16.6, -81.6 , 0 );
setMoveKey( spep_5-3 + 6, 1, 14, -61.1 , 0 );
setMoveKey( spep_5-3 + 8, 1, -32.5, -130.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, 3.9, -127 , 0 );
setMoveKey( spep_5-3 + 12, 1, -8.7, -133.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, 2.8, -147.9 , 0 );
setMoveKey( spep_5-3 + 16, 1, -1.8, -176.3 , 0 );
setMoveKey( spep_5-3 + 18, 1, -1.4, -195.9 , 0 );
setMoveKey( spep_5-3 + 20, 1, -1, -215.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, -0.5, -235.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, -0.1, -256 , 0 );
setMoveKey( spep_5-3 + 26, 1, 0.3, -276.6 , 0 );
setMoveKey( spep_5-3 + 28, 1, 0.8, -297.4 , 0 );
setMoveKey( spep_5-3 + 30, 1, 1.2, -318.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, 1.7, -339.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, 3.9, -298.2 , 0 );
setMoveKey( spep_5-3 + 36, 1, 6.6, -275.6 , 0 );
setMoveKey( spep_5-3 + 38, 1, 9.5, -271.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, 12.7, -286.5 , 0 );
setMoveKey( spep_5-3 + 42, 1, 16.4, -320 , 0 );
setMoveKey( spep_5-3 + 44, 1, 5.4, -361.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, 31, -395.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, 35.3, -362 , 0 );

setScaleKey( spep_5 + 0, 1, 2.18, 2.18 );
--setScaleKey( spep_5-3 + 2, 1, 2.13, 2.13 );
setScaleKey( spep_5-3 + 4, 1, 2.08, 2.08 );
setScaleKey( spep_5-3 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_5-3 + 8, 1, 1.98, 1.98 );
setScaleKey( spep_5-3 + 10, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_5-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 16, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_5-3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 26, 1, 1.48, 1.48 );
setScaleKey( spep_5-3 + 28, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_5-3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 48, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 48, 1, 0 );

--SE
--敵ヒット
SE056 = playSeVer2( spep_5 + 0, 1120, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 0, 1187, "", 0, 0, 0, -1);

--爆発
SE058 = playSeVer2( spep_5 + 40, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_5 + 44, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_5 + 50, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- 終わり
dealDamage(spep_5+46);
endPhase( spep_5 + 170 );
else 
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--登場→落下→如意棒回し
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
entry = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, entry, 0, 0, 0 );
setEffMoveKey( spep_0 + 324, entry, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, entry, -1.0, 1.0 );
setEffScaleKey( spep_0 + 324, entry, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, entry, 0 );
setEffRotateKey( spep_0 + 324, entry, 0 );
setEffAlphaKey( spep_0 + 0, entry, 255 );
setEffAlphaKey( spep_0 + 322, entry, 255 );
setEffAlphaKey( spep_0 + 323, entry, 255 );
setEffAlphaKey( spep_0 + 324, entry, 0 );

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
SE007 = playSeVer2( spep_0 + 120, 1186, "",spep_0 + 176, 0, 40, -1);
setPitch( spep_0 + 120, SE007, -1200 );
setTimeStretch( SE007, 0.2, 30, 4 );

--顔カットイン
SE006 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--筋斗雲飛んでいく
SE008 = playSeVer2( spep_0 + 124, 1027, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_0 + 124, 44, "", 0, 0, 0, -1);

--飛び降りる
SE010 = playSeVer2( spep_0 + 172, 1007, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 172, 1117, "",spep_0 + 240, 0, 14, -1);

--着地
SE012 = playSeVer2( spep_0 + 224, 1192, "",spep_0 + 252, 0, 10, -1);
SE013 = playSeVer2( spep_0 + 226, 1108, "", 0, 0, 0, -1);

--向かってくる
SE014 = playSeVer2( spep_0 + 234, 1182, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 234, 44, "",spep_0 + 278, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 330, 0, 0, 0, 0, 255 );  --黒 背景

------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 258; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE015, 0 );
    
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
SE016 = playSeVer2( spep_0 + 278, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 278, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );
SE017 = playSeVer2( spep_0 + 284, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 284, SE017, 400 );
setTimeStretch( SE017, 1.27, 30, 4 );
SE018 = playSeVer2( spep_0 + 290, 1151, "", 0, 0, 0, 1.0);
setPitch( spep_0 + 290, SE018, 400 );
setTimeStretch( SE018, 1.27, 30, 4 );
SE019 = playSeVer2( spep_0 + 296, 1151, "", 0, 0, 0, 1.0);

--如意棒握る
SE020 = playSeVer2( spep_0 + 306, 1006, "",spep_0 + 322, 0, 4, -1);

-- ** 次の準備 ** --
spep_1= spep_0 + 324;
------------------------------------------------------
--棒回し攻撃
------------------------------------------------------
-- ** エフェクト等 ** --
attack_f = entryEffect( spep_1 + 0, SP_02x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_f, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, attack_f, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, attack_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_f, 0 );
setEffRotateKey( spep_1 + 40, attack_f, 0 );
setEffAlphaKey( spep_1 + 0, attack_f, 255 );
setEffAlphaKey( spep_1 + 38, attack_f, 255 );
setEffAlphaKey( spep_1 + 39, attack_f, 255 );
setEffAlphaKey( spep_1 + 40, attack_f, 0 );

-- ** エフェクト等 ** --
attack_b = entryEffect( spep_1 + 0, SP_03x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, attack_b, 0, 0, 0 );
setEffMoveKey( spep_1 + 40, attack_b, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, attack_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 40, attack_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, attack_b, 0 );
setEffRotateKey( spep_1 + 40, attack_b, 0 );
setEffAlphaKey( spep_1 + 0, attack_b, 255 );
setEffAlphaKey( spep_1 + 38, attack_b, 255 );
setEffAlphaKey( spep_1 + 39, attack_b, 255 );
setEffAlphaKey( spep_1 + 40, attack_b, 0 );

--敵の動き
setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1-1 + 42, 1, 0 );

changeAnime( spep_1 + 0, 1, 104 );
changeAnime( spep_1-3 + 12, 1, 108 );

setMoveKey( spep_1 + 0, 1, 0, 0 , 0 );
--setMoveKey( spep_1-3 + 2, 1, -0.7, -6 , 0 );
setMoveKey( spep_1-3 + 4, 1, -1.5, -12 , 0 );
setMoveKey( spep_1-3 + 6, 1, -2.3, -18 , 0 );
setMoveKey( spep_1-3 + 8, 1, -3, -24 , 0 );
setMoveKey( spep_1-3 + 11, 1, -3.7, -30 , 0 );
setMoveKey( spep_1-3 + 12, 1, -13.9, -20.7 , 0 );
setMoveKey( spep_1-3 + 14, 1, 0.7, -49.2 , 0 );
setMoveKey( spep_1-3 + 16, 1, 39, 24.3 , 0 );
setMoveKey( spep_1-3 + 18, 1, 32, 37.8 , 0 );
setMoveKey( spep_1-3 + 20, 1, 83.1, 117.5 , 0 );
setMoveKey( spep_1-3 + 22, 1, 111.6, 170.5 , 0 );
setMoveKey( spep_1-3 + 24, 1, 139.5, 222.4 , 0 );
setMoveKey( spep_1-3 + 26, 1, 166.8, 273.1 , 0 );
setMoveKey( spep_1-3 + 28, 1, 193.5, 322.8 , 0 );
setMoveKey( spep_1-3 + 30, 1, 193.8, 323.4 , 0 );
setMoveKey( spep_1-3 + 32, 1, 194, 323.9 , 0 );
setMoveKey( spep_1-3 + 34, 1, 194.2, 324.3 , 0 );
setMoveKey( spep_1-3 + 36, 1, 194.3, 324.7 , 0 );
setMoveKey( spep_1-3 + 38, 1, 194.4, 324.9 , 0 );
setMoveKey( spep_1-3 + 40, 1, 194.4, 325 , 0 );
setMoveKey( spep_1-1 + 42, 1, 194.5, 325.1 , 0 );

setScaleKey( spep_1 + 0, 1, 1.22, 1.22 );
--setScaleKey( spep_1-3 + 2, 1, 1.34, 1.34 );
setScaleKey( spep_1-3 + 4, 1, 1.45, 1.45 );
setScaleKey( spep_1-3 + 6, 1, 1.57, 1.57 );
setScaleKey( spep_1-3 + 8, 1, 1.69, 1.69 );
setScaleKey( spep_1-3 + 11, 1, 1.82, 1.82 );
setScaleKey( spep_1-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_1-3 + 14, 1, 1.91, 1.91 );
setScaleKey( spep_1-3 + 16, 1, 1.72, 1.72 );
setScaleKey( spep_1-3 + 18, 1, 1.47, 1.47 );
setScaleKey( spep_1-3 + 20, 1, 1.22, 1.22 );
setScaleKey( spep_1-3 + 22, 1, 0.98, 0.98 );
setScaleKey( spep_1-3 + 24, 1, 0.74, 0.74 );
setScaleKey( spep_1-3 + 26, 1, 0.51, 0.51 );
setScaleKey( spep_1-3 + 28, 1, 0.28, 0.28 );
setScaleKey( spep_1-3 + 30, 1, 0.26, 0.26 );
setScaleKey( spep_1-3 + 32, 1, 0.24, 0.24 );
setScaleKey( spep_1-3 + 34, 1, 0.23, 0.23 );
setScaleKey( spep_1-3 + 36, 1, 0.21, 0.21 );
setScaleKey( spep_1-3 + 38, 1, 0.2, 0.2 );
setScaleKey( spep_1-3 + 40, 1, 0.18, 0.18 );
setScaleKey( spep_1-1 + 42, 1, 0.17, 0.17 );

setRotateKey( spep_1 + 0, 1, 0 );
setRotateKey( spep_1-1 + 42, 1, 0 );

--SE
--如意棒振る
SE021 = playSeVer2( spep_1 + 0, 1004, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_1 + 0, 1116, "",spep_1 + 34, 0, 10, -1);

--敵ヒット
SE023 = playSeVer2( spep_1 + 10, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE023, 90 );
SE024 = playSeVer2( spep_1 + 10, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_2= spep_1 + 40;
------------------------------------------------------
--棒回し正面→ジャンプ→UP
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_2 + 200, jump, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_2 + 200, jump, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 200, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 200, jump, 255 );

--SE
--悟空回転
SE025 = playSeVer2( spep_2 + 0, 1151, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_2 + 0, 1003, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 0, SE026, 83 );
SE027 = playSeVer2( spep_2 + 4, 1189, "", 0, 0, 0, -1);

--着地
SE028 = playSeVer2( spep_2 + 44, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE028, 127 );
SE029 = playSeVer2( spep_2 + 44, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 44, SE029, 81 );
SE030 = playSeVer2( spep_2 + 48, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 48, SE030, 141 );

--ジャンプ
SE031 = playSeVer2( spep_2 + 106, 1207, "",spep_2 + 202, 0, 8, -1);
setSeVolumeByWorkId( spep_2 + 106, SE031, 81 );
SE032 = playSeVer2( spep_2 + 106, 1117, "",spep_2 + 202, 0, 8, -1);
SE033 = playSeVer2( spep_2 + 106, 44, "", 0, 0, 0, -1);

--振りかぶりアップ
SE034 = playSeVer2( spep_2 + 134, 1004, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_2 + 134, 1264, "",spep_2 + 204, 0, 10, -1);
setSeVolumeByWorkId( spep_2 + 134, SE035, 81 );
SE036 = playSeVer2( spep_2 + 144, 1116, "",spep_2 + 182, 0, 14, -1);

--白フェード
entryFade( spep_2 +196 , 0, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_3= spep_2 + 200;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );
setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );
 
-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--振り下ろし→筋斗雲突進
------------------------------------------------------
-- ** エフェクト等 ** --
rush_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 228, rush_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 228, rush_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_f, 0 );
setEffRotateKey( spep_4 + 228, rush_f, 0 );
setEffAlphaKey( spep_4 + 0, rush_f, 255 );
setEffAlphaKey( spep_4 + 226, rush_f, 255 );
setEffAlphaKey( spep_4 + 227, rush_f, 255 );
setEffAlphaKey( spep_4 + 228, rush_f, 0 );

-- ** エフェクト等 ** --
rush_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, rush_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 228, rush_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, rush_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 228, rush_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, rush_b, 0 );
setEffRotateKey( spep_4 + 228, rush_b, 0 );
setEffAlphaKey( spep_4 + 0, rush_b, 255 );
setEffAlphaKey( spep_4 + 226, rush_b, 255 );
setEffAlphaKey( spep_4 + 227, rush_b, 255 );
setEffAlphaKey( spep_4 + 228, rush_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 40, 1, 0 );

changeAnime( spep_4 + 0, 1, 6 );
changeAnime( spep_4-3 + 6, 1, 8 );

setMoveKey( spep_4 + 0, 1, -156.9, -213 , 0 );
--setMoveKey( spep_4-3 + 2, 1, 156.9, -191 , 0 );
setMoveKey( spep_4-3 + 5, 1, -156.9, -169 , 0 );
setMoveKey( spep_4-3 + 6, 1, -165.8, -188.9 , 0 );
setMoveKey( spep_4-3 + 8, 1, -154.5, -229.8 , 0 );
setMoveKey( spep_4-3 + 10, 1, -197.2, -278.8 , 0 );
setMoveKey( spep_4-3 + 12, 1, -176.2, -301.8 , 0 );
setMoveKey( spep_4-3 + 14, 1, -165.3, -271.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, -203.4, -266.8 , 0 );
setMoveKey( spep_4-3 + 18, 1, -187.5, -272.8 , 0 );
setMoveKey( spep_4-3 + 20, 1, -189.5, -268.8 , 0 );
setMoveKey( spep_4-3 + 22, 1, -191.6, -264.8 , 0 );
setMoveKey( spep_4-3 + 24, 1, -193.7, -260.8 , 0 );
setMoveKey( spep_4-3 + 26, 1, -285.1, -223.1 , 0 );
setMoveKey( spep_4-3 + 28, 1, -370.7, -186.8 , 0 );
setMoveKey( spep_4-3 + 30, 1, -450.6, -151.9 , 0 );
setMoveKey( spep_4-3 + 32, 1, -524.7, -118.6 , 0 );
setMoveKey( spep_4-3 + 34, 1, -592.9, -86.8 , 0 );
setMoveKey( spep_4-3 + 36, 1, -655.5, -56.6 , 0 );
setMoveKey( spep_4-3 + 38, 1, -712.2, -27.7 , 0 );
setMoveKey( spep_4-3 + 40, 1, -763.2, -0.4 , 0 );

setScaleKey( spep_4 + 0, 1, 2.4,2.4);
setScaleKey( spep_4-3 + 5, 1, 2.4,2.4);

setScaleKey( spep_4-3 + 6, 1, 2.47,2.47);
setScaleKey( spep_4-3 + 24, 1, 2.47,2.47);
setScaleKey( spep_4-3 + 26, 1, 2.92,2.92);
setScaleKey( spep_4-3 + 28, 1, 3.34,3.34);
setScaleKey( spep_4-3 + 30, 1, 3.74,3.74);
setScaleKey( spep_4-3 + 32, 1, 4.09,4.09);
setScaleKey( spep_4-3 + 34, 1, 4.42,4.42);
setScaleKey( spep_4-3 + 36, 1, 4.71,4.71);
setScaleKey( spep_4-3 + 38, 1, 4.99,4.99);
setScaleKey( spep_4-3 + 40, 1, 5.22,5.22);

setRotateKey( spep_4 + 0, 1, 25 );
setRotateKey( spep_4-3 + 5, 1, 25 );
setRotateKey( spep_4-3 + 6, 1, -51 );
setRotateKey( spep_4-3 + 8, 1, -52.5 );
setRotateKey( spep_4-3 + 10, 1, -54 );
setRotateKey( spep_4-3 + 12, 1, -54.9 );
setRotateKey( spep_4-3 + 14, 1, -55.7 );
setRotateKey( spep_4-3 + 16, 1, -56.6 );
setRotateKey( spep_4-3 + 18, 1, -57.4 );
setRotateKey( spep_4-3 + 20, 1, -58.3 );
setRotateKey( spep_4-3 + 22, 1, -59.1 );
setRotateKey( spep_4-3 + 24, 1, -60 );
setRotateKey( spep_4-3 + 26, 1, -61 );
setRotateKey( spep_4-3 + 28, 1, -62 );
setRotateKey( spep_4-3 + 30, 1, -63 );
setRotateKey( spep_4-3 + 32, 1, -64 );
setRotateKey( spep_4-3 + 34, 1, -65 );
setRotateKey( spep_4-3 + 36, 1, -66 );
setRotateKey( spep_4-3 + 38, 1, -67 );
setRotateKey( spep_4-3 + 40, 1, -68 );

--SE
--敵ヒット
SE038 = playSeVer2( spep_4 -4 + 0, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 4, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE040, 83 );
SE041 = playSeVer2( spep_4 + 8, 1169, "", 0, 0, 0, -1);

--筋斗雲飛んでくる
SE042 = playSeVer2( spep_4 + 32, 1327, "",spep_4 + 138, 0, 48, -1);
setSeVolumeByWorkId( spep_4 + 32, SE042, 76 );
setPitch( spep_4 + 32, SE042, 200 );
setTimeStretch( SE042, 1.13, 30, 4 );
SE043 = playSeVer2( spep_4 + 48, 1186, "",spep_4 + 148, 0, 40, -1);
setSeVolumeByWorkId( spep_4 + 48, SE043, 81 );
setPitch( spep_4 + 48, SE043, -1200 );
setTimeStretch( SE043, 0.2, 30, 4 );
SE044 = playSeVer2( spep_4 + 48, 63, "",spep_4 + 144, 0, 44, -1);
SE045 = playSeVer2( spep_4 + 48, 1232, "", 0, 0, 0, -1);

--筋斗雲着地
SE046 = playSeVer2( spep_4 + 86, 1112, "",spep_4 + 114, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 86, SE046, 93 );
SE047 = playSeVer2( spep_4 + 86, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 86, SE047, 75 );

--筋斗雲で向かってくる
SE048 = playSeVer2( spep_4 + 118, 1027, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_4 + 118, 9, "", 0, 0, 0, -1);
setTimeStretch( SE049, 1.11, 30, 4 );
SE050 = playSeVer2( spep_4 + 118, 1326, "",spep_4 + 250, 0, 24, -1);
setSeVolumeByWorkId( spep_4 + 118, SE050, 68 );
SE051 = playSeVer2( spep_4 + 222, 1186, "", 0, 74, 0, -1);
setStartTimeMs( SE051,  1733 );
setPitch( spep_4 + 222, SE051, -1200 );
setTimeStretch( SE051, 0.2, 30, 4 );
SE052 = playSeVer2( spep_4 + 118, 1311, "", 0, 0, 0, -1);
setPitch( spep_4 + 118, SE052, 300 );
setTimeStretch( SE052, 1.2, 30, 4 );

--加速する
SE053 = playSeVer2( spep_4 + 166, 1072, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_4 + 178, 1014, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_4 + 178, 1258, "",spep_4 + 242, 0, 12, -1);
setSeVolumeByWorkId( spep_4 + 178, SE055, 86 );

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 236, 0, 0, 0, 0, 255 );  --黒 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 228;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 180, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 180, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 180, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 180, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 180, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 180, finish_b, 255 );

--敵の動き
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5-3 + 48, 1, 0 );

changeAnime( spep_5 + 0, 1, 5 );

setMoveKey( spep_5 + 0, 1, 5.1, -28.2 , 0 );
--setMoveKey( spep_5-3 + 2, 1, -23.3, -32.1 , 0 );
setMoveKey( spep_5-3 + 4, 1, -16.6, -81.6 , 0 );
setMoveKey( spep_5-3 + 6, 1, -14, -61.1 , 0 );
setMoveKey( spep_5-3 + 8, 1, 32.5, -130.4 , 0 );
setMoveKey( spep_5-3 + 10, 1, -3.9, -127 , 0 );
setMoveKey( spep_5-3 + 12, 1, 8.7, -133.9 , 0 );
setMoveKey( spep_5-3 + 14, 1, -2.8, -147.9 , 0 );
setMoveKey( spep_5-3 + 16, 1, 1.8, -176.3 , 0 );
setMoveKey( spep_5-3 + 18, 1, 1.4, -195.9 , 0 );
setMoveKey( spep_5-3 + 20, 1, 1, -215.7 , 0 );
setMoveKey( spep_5-3 + 22, 1, 0.5, -235.7 , 0 );
setMoveKey( spep_5-3 + 24, 1, 0.1, -256 , 0 );
setMoveKey( spep_5-3 + 26, 1, -0.3, -276.6 , 0 );
setMoveKey( spep_5-3 + 28, 1, -0.8, -297.4 , 0 );
setMoveKey( spep_5-3 + 30, 1, -1.2, -318.4 , 0 );
setMoveKey( spep_5-3 + 32, 1, -1.7, -339.7 , 0 );
setMoveKey( spep_5-3 + 34, 1, -3.9, -298.2 , 0 );
setMoveKey( spep_5-3 + 36, 1, -6.6, -275.6 , 0 );
setMoveKey( spep_5-3 + 38, 1, -9.5, -271.7 , 0 );
setMoveKey( spep_5-3 + 40, 1, -12.7, -286.5 , 0 );
setMoveKey( spep_5-3 + 42, 1, -16.4, -320 , 0 );
setMoveKey( spep_5-3 + 44, 1, -5.4, -361.8 , 0 );
setMoveKey( spep_5-3 + 46, 1, -31, -395.8 , 0 );
setMoveKey( spep_5-3 + 48, 1, -35.3, -362 , 0 );

setScaleKey( spep_5 + 0, 1, 2.18, 2.18 );
--setScaleKey( spep_5-3 + 2, 1, 2.13, 2.13 );
setScaleKey( spep_5-3 + 4, 1, 2.08, 2.08 );
setScaleKey( spep_5-3 + 6, 1, 2.03, 2.03 );
setScaleKey( spep_5-3 + 8, 1, 1.98, 1.98 );
setScaleKey( spep_5-3 + 10, 1, 1.93, 1.93 );
setScaleKey( spep_5-3 + 12, 1, 1.87, 1.87 );
setScaleKey( spep_5-3 + 14, 1, 1.82, 1.82 );
setScaleKey( spep_5-3 + 16, 1, 1.77, 1.77 );
setScaleKey( spep_5-3 + 18, 1, 1.71, 1.71 );
setScaleKey( spep_5-3 + 20, 1, 1.66, 1.66 );
setScaleKey( spep_5-3 + 22, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 24, 1, 1.54, 1.54 );
setScaleKey( spep_5-3 + 26, 1, 1.48, 1.48 );
setScaleKey( spep_5-3 + 28, 1, 1.43, 1.43 );
setScaleKey( spep_5-3 + 30, 1, 1.37, 1.37 );
setScaleKey( spep_5-3 + 32, 1, 1.31, 1.31 );
setScaleKey( spep_5-3 + 34, 1, 1.29, 1.29 );
setScaleKey( spep_5-3 + 36, 1, 1.21, 1.21 );
setScaleKey( spep_5-3 + 38, 1, 1.06, 1.06 );
setScaleKey( spep_5-3 + 40, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 42, 1, 0.56, 0.56 );
setScaleKey( spep_5-3 + 48, 1, 0.22, 0.22 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5-3 + 48, 1, 0 );

--SE
--敵ヒット
SE056 = playSeVer2( spep_5 + 0, 1120, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_5 + 0, 1187, "", 0, 0, 0, -1);

--爆発
SE058 = playSeVer2( spep_5 + 40, 1023, "", 0, 0, 0, -1);
SE059 = playSeVer2( spep_5 + 44, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_5 + 50, 1024, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 180, 0, 0, 0, 0, 255 );  --黒 背景

-- 終わり
dealDamage(spep_5+46);
endPhase( spep_5 + 170 );
end