--1025060:孫悟空(少年期)_孫悟空突撃！(簡易版)
--sp_effect_b1_00214

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
SP_01=	160666	;--	登場→落下→如意棒回し
SP_02=	160667	;--	棒回し攻撃
SP_03=	160668	;--	棒回し攻撃
SP_04=	160671	;--	棒回し正面→ジャンプ→UP
SP_05=	160672	;--	振り下ろし
SP_06=	160673	;--	振り下ろし
SP_07=	160674	;--	フィニッシュ
SP_08=	160675	;--	フィニッシュ

--エフェクト(敵)
SP_01x=	160666	;--	登場→落下→如意棒回し	
SP_02x=	160669	;--	棒回し攻撃	(敵)
SP_03x=	160670	;--	棒回し攻撃	(敵)
SP_04x=	160671	;--	棒回し正面→ジャンプ→UP	
SP_05x=	160690	;--	振り下ろし	
SP_06x=	160691	;--	振り下ろし	
SP_07x=	160674	;--	フィニッシュ	
SP_08x=	160675	;--	フィニッシュ	

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
entryFadeBg( spep_0 + 0, 0, 330, 0, 0, 0, 0, 255 );  --黒　背景

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
entryFadeBg( spep_1 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

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
entryFadeBg( spep_2 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

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

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--振り下ろし
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, down_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, down_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_f, 0 );
setEffRotateKey( spep_4 + 52, down_f, 0 );
setEffAlphaKey( spep_4 + 0, down_f, 255 );
setEffAlphaKey( spep_4 + 50, down_f, 255 );
setEffAlphaKey( spep_4 + 51, down_f, 255 );
setEffAlphaKey( spep_4 + 52, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, down_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, down_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_b, 0 );
setEffRotateKey( spep_4 + 52, down_b, 0 );
setEffAlphaKey( spep_4 + 0, down_b, 255 );
setEffAlphaKey( spep_4 + 50, down_b, 255 );
setEffAlphaKey( spep_4 + 51, down_b, 255 );
setEffAlphaKey( spep_4 + 52, down_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 30, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 6, 1, 107 );

setMoveKey( spep_4 + 0, 1, 156.9, -213 , 0 );
setMoveKey( spep_4-3 + 2, 1, 152.2, -193.5 , 0 );
setMoveKey( spep_4-3 + 5, 1, 147.5, -174 , 0 );
setMoveKey( spep_4-3 + 6, 1, 155.1, -185.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 143.4, -183.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 185.6, -190 , 0 );
setMoveKey( spep_4-3 + 12, 1, 168.9, -224.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 162.3, -205.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 204.5, -212.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 192.8, -229.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 199.1, -237 , 0 );
setMoveKey( spep_4-3 + 22, 1, 205.4, -244.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 238.5, -260.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 340.1, -291.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, 506.7, -345.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 731.8, -420.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 5, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 16, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4-3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 26, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 30, 1, 2.65, 2.65 );

setRotateKey( spep_4 + 0, 1, -25 );
setRotateKey( spep_4-3 + 5, 1, -25 );
setRotateKey( spep_4-3 + 6, 1, -13.5 );
setRotateKey( spep_4-3 + 8, 1, -10.7 );
setRotateKey( spep_4-3 + 10, 1, -7.9 );
setRotateKey( spep_4-3 + 12, 1, -5.2 );
setRotateKey( spep_4-3 + 14, 1, -2.4 );
setRotateKey( spep_4-3 + 16, 1, 0.4 );
setRotateKey( spep_4-3 + 18, 1, 3.2 );
setRotateKey( spep_4-3 + 20, 1, 6 );
setRotateKey( spep_4-3 + 22, 1, 8.8 );
setRotateKey( spep_4-3 + 30, 1, 8.8 );

--SE
--敵ヒット
SE038 = playSeVer2( spep_4 -4+ 0, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 4, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE040, 83 );
SE041 = playSeVer2( spep_4 + 8, 1169, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 52;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_5 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 8, finish_f, 0 );
setEffRotateKey( spep_5 + 112, finish_f, 0 );
setEffAlphaKey( spep_5 + 8, finish_f, 255 );
setEffAlphaKey( spep_5 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 112, shuchusen_bl, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_08, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 138, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 138, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 138, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 138, bg, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 112, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 112, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_5 + 0, 1, -8.2 , -19.3 , 0 );
--setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, -122.8 - 232 );
setRotateKey( spep_5 + 2, 1, -122.8 );
setRotateKey( spep_5 -3 + 6, 1, -1 );
setRotateKey( spep_5 -3 + 8, 1, 120.7 );
setRotateKey( spep_5 -3 + 10, 1, 242.5 );
setRotateKey( spep_5 -3 + 12, 1, 364.3 );
setRotateKey( spep_5 -3 + 14, 1, 486 );
setRotateKey( spep_5 -3 + 16, 1, 607.8 );
setRotateKey( spep_5 -3 + 18, 1, 729.5 );
setRotateKey( spep_5 + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_5 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 108 ); -- 終了フレーム
else
------------------------------------------------------------------------------------------------------------
-- 味方側
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
entryFadeBg( spep_0 + 0, 0, 330, 0, 0, 0, 0, 255 );  --黒　背景

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
entryFadeBg( spep_1 + 0, 0, 44, 0, 0, 0, 0, 255 );  --黒　背景

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
entryFadeBg( spep_2 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

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

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

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

-- ** 次の準備 ** --
entryFade( spep_3 + 82, 6, 6, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

spep_4 = spep_3 + 94;
------------------------------------------------------
--振り下ろし
------------------------------------------------------
-- ** エフェクト等 ** --
down_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, down_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, down_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, down_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, down_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_f, 0 );
setEffRotateKey( spep_4 + 52, down_f, 0 );
setEffAlphaKey( spep_4 + 0, down_f, 255 );
setEffAlphaKey( spep_4 + 50, down_f, 255 );
setEffAlphaKey( spep_4 + 51, down_f, 255 );
setEffAlphaKey( spep_4 + 52, down_f, 0 );

-- ** エフェクト等 ** --
down_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, down_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 52, down_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, down_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 52, down_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, down_b, 0 );
setEffRotateKey( spep_4 + 52, down_b, 0 );
setEffAlphaKey( spep_4 + 0, down_b, 255 );
setEffAlphaKey( spep_4 + 50, down_b, 255 );
setEffAlphaKey( spep_4 + 51, down_b, 255 );
setEffAlphaKey( spep_4 + 52, down_b, 0 );

--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4-3 + 30, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4-3 + 6, 1, 107 );

setMoveKey( spep_4 + 0, 1, 156.9, -213 , 0 );
setMoveKey( spep_4-3 + 2, 1, 152.2, -193.5 , 0 );
setMoveKey( spep_4-3 + 5, 1, 147.5, -174 , 0 );
setMoveKey( spep_4-3 + 6, 1, 155.1, -185.3 , 0 );
setMoveKey( spep_4-3 + 8, 1, 143.4, -183.6 , 0 );
setMoveKey( spep_4-3 + 10, 1, 185.6, -190 , 0 );
setMoveKey( spep_4-3 + 12, 1, 168.9, -224.4 , 0 );
setMoveKey( spep_4-3 + 14, 1, 162.3, -205.8 , 0 );
setMoveKey( spep_4-3 + 16, 1, 204.5, -212.2 , 0 );
setMoveKey( spep_4-3 + 18, 1, 192.8, -229.6 , 0 );
setMoveKey( spep_4-3 + 20, 1, 199.1, -237 , 0 );
setMoveKey( spep_4-3 + 22, 1, 205.4, -244.4 , 0 );
setMoveKey( spep_4-3 + 24, 1, 238.5, -260.5 , 0 );
setMoveKey( spep_4-3 + 26, 1, 340.1, -291.3 , 0 );
setMoveKey( spep_4-3 + 28, 1, 506.7, -345.4 , 0 );
setMoveKey( spep_4-3 + 30, 1, 731.8, -420.6 , 0 );

setScaleKey( spep_4 + 0, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 5, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 6, 1, 0.61, 0.61 );
setScaleKey( spep_4-3 + 8, 1, 0.66, 0.66 );
setScaleKey( spep_4-3 + 10, 1, 0.71, 0.71 );
setScaleKey( spep_4-3 + 12, 1, 0.76, 0.76 );
setScaleKey( spep_4-3 + 14, 1, 0.81, 0.81 );
setScaleKey( spep_4-3 + 16, 1, 0.86, 0.86 );
setScaleKey( spep_4-3 + 18, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 20, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 22, 1, 1.01, 1.01 );
setScaleKey( spep_4-3 + 24, 1, 1.12, 1.12 );
setScaleKey( spep_4-3 + 26, 1, 1.44, 1.44 );
setScaleKey( spep_4-3 + 28, 1, 1.95, 1.95 );
setScaleKey( spep_4-3 + 30, 1, 2.65, 2.65 );

setRotateKey( spep_4 + 0, 1, -25 );
setRotateKey( spep_4-3 + 5, 1, -25 );
setRotateKey( spep_4-3 + 6, 1, -13.5 );
setRotateKey( spep_4-3 + 8, 1, -10.7 );
setRotateKey( spep_4-3 + 10, 1, -7.9 );
setRotateKey( spep_4-3 + 12, 1, -5.2 );
setRotateKey( spep_4-3 + 14, 1, -2.4 );
setRotateKey( spep_4-3 + 16, 1, 0.4 );
setRotateKey( spep_4-3 + 18, 1, 3.2 );
setRotateKey( spep_4-3 + 20, 1, 6 );
setRotateKey( spep_4-3 + 22, 1, 8.8 );
setRotateKey( spep_4-3 + 30, 1, 8.8 );

--SE
--敵ヒット
SE038 = playSeVer2( spep_4 -4+ 0, 1189, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_4 + 4, 1110, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_4 + 4, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 4, SE040, 83 );
SE041 = playSeVer2( spep_4 + 8, 1169, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 54, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 52;
------------------------------------------------------
--ガッ
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_5 + 8, 155520, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_5 + 8, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 8, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 8, finish_f, 0 );
setEffRotateKey( spep_5 + 112, finish_f, 0 );
setEffAlphaKey( spep_5 + 8, finish_f, 255 );
setEffAlphaKey( spep_5 + 112, finish_f, 255 );

-- ** 集中線 ** --
shuchusen_wh = entryEffectLife( spep_5 + 14,  906, 32, 0x100, -1, 0, 0, 0 );  --集中線白
setEffShake( spep_5 + 14, shuchusen_wh, 32, 25 );

setEffMoveKey( spep_5 + 14, shuchusen_wh, 0, 0 , 0 );
setEffMoveKey( spep_5 + 46, shuchusen_wh, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_wh, 1, 1 );
setEffScaleKey( spep_5 + 46, shuchusen_wh, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_wh, 0 );
setEffRotateKey( spep_5 + 46, shuchusen_wh, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 28, shuchusen_wh, 255 );
setEffAlphaKey( spep_5 + 30, shuchusen_wh, 252 );
setEffAlphaKey( spep_5 + 32, shuchusen_wh, 242 );
setEffAlphaKey( spep_5 + 34, shuchusen_wh, 227 );
setEffAlphaKey( spep_5 + 36, shuchusen_wh, 205 );
setEffAlphaKey( spep_5 + 38, shuchusen_wh, 176 );
setEffAlphaKey( spep_5 + 40, shuchusen_wh, 142 );
setEffAlphaKey( spep_5 + 42, shuchusen_wh, 101 );
setEffAlphaKey( spep_5 + 44, shuchusen_wh, 54 );
setEffAlphaKey( spep_5 + 46, shuchusen_wh, 0 );

shuchusen_bl = entryEffectLife( spep_5 + 14,  1657, 98, 0x80, -1, 0, 0, 0 );  --集中線黒
setEffMoveKey( spep_5 + 14, shuchusen_bl, 0, 0 , 0 );
setEffMoveKey( spep_5 + 112, shuchusen_bl, 0, 0 , 0 );

setEffScaleKey( spep_5 + 14, shuchusen_bl, 1, 1 );
setEffScaleKey( spep_5 + 112, shuchusen_bl, 1, 1 );

setEffRotateKey( spep_5 + 14, shuchusen_bl, 0 );
setEffRotateKey( spep_5 + 112, shuchusen_bl, 0 );

setEffAlphaKey( spep_5 + 14, shuchusen_bl, 255 );
setEffAlphaKey( spep_5 + 112, shuchusen_bl, 255 );

-- ** エフェクト等 ** --
bg = entryEffect( spep_5 + 0, SP_08x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, bg, 0, 0, 0 );
setEffMoveKey( spep_5 + 138, bg, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, bg, 1.0, 1.0 );
setEffScaleKey( spep_5 + 138, bg, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, bg, 0 );
setEffRotateKey( spep_5 + 138, bg, 0 );
setEffAlphaKey( spep_5 + 0, bg, 255 );
setEffAlphaKey( spep_5 + 138, bg, 255 );

-- ** 書き文字エントリー ** --
ctga = entryEffectLife( spep_5 + 14,  10005, 98, 0x100, -1, 0, 3.9, 316.1 );  --ガッ
setEffShake( spep_5 + 14, ctga, 14, 20 );

setEffMoveKey( spep_5 + 14, ctga, 3.9, 316.1 , 0 );
setEffMoveKey( spep_5 + 112, ctga, 3.9, 316.1 , 0 );

setEffScaleKey( spep_5 + 14, ctga, 3.2, 3.2 );
setEffScaleKey( spep_5 + 112, ctga, 3.2, 3.2 );

setEffRotateKey( spep_5 + 14, ctga, -10.9 );
setEffRotateKey( spep_5 + 15, ctga, -10.9 );
setEffRotateKey( spep_5 + 16, ctga, -14.9 );
setEffRotateKey( spep_5 + 17, ctga, -14.9 );
setEffRotateKey( spep_5 + 18, ctga, -10.9 );
setEffRotateKey( spep_5 + 19, ctga, -10.9 );
setEffRotateKey( spep_5 + 20, ctga, -14.9 );
setEffRotateKey( spep_5 + 21, ctga, -14.9 );
setEffRotateKey( spep_5 + 22, ctga, -10.9 );
setEffRotateKey( spep_5 + 23, ctga, -10.9 );
setEffRotateKey( spep_5 + 24, ctga, -14.9 );
setEffRotateKey( spep_5 + 25, ctga, -14.9 );
setEffRotateKey( spep_5 + 26, ctga, -10.9 );
setEffRotateKey( spep_5 + 27, ctga, -10.9 );
setEffRotateKey( spep_5 + 28, ctga, -14.9 );
setEffRotateKey( spep_5 + 112, ctga, -14.9 );

setEffAlphaKey( spep_5 + 14, ctga, 255 );
setEffAlphaKey( spep_5 + 112, ctga, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 + 112, 1, 0 );

changeAnime( spep_5 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_5 + 0, 1, -8.2 , -19.3 , 0 );
--setMoveKey( spep_5 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_5 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_5 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_5 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_5 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_5 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_5 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_5 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_5 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_5 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_5 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_5 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_5 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_5 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_5 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_5 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_5 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_5 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_5 + 0, 1, -122.8 - 232 );
setRotateKey( spep_5 + 2, 1, -122.8 );
setRotateKey( spep_5 -3 + 6, 1, -1 );
setRotateKey( spep_5 -3 + 8, 1, 120.7 );
setRotateKey( spep_5 -3 + 10, 1, 242.5 );
setRotateKey( spep_5 -3 + 12, 1, 364.3 );
setRotateKey( spep_5 -3 + 14, 1, 486 );
setRotateKey( spep_5 -3 + 16, 1, 607.8 );
setRotateKey( spep_5 -3 + 18, 1, 729.5 );
setRotateKey( spep_5 + 112, 1, 729.5 );

-- ** 音 ** --
--爆発
--SE0N1 = playSeVer2( spep_5 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_5 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_5 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_5 + 6 ); -- ダメージ表示フレーム
endPhase( spep_5 + 108 ); -- 終了フレーム
end