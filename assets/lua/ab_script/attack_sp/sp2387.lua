--1024340:超サイヤ人孫悟空&超サイヤ人孫悟飯(少年期)_フライハイシュート(SSR)
--sp_effect_b1_00201

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
SP_01=	159779	;--	開幕
SP_02=	159781	;--	開幕　背景
SP_03=	159782	;--	セリフカットイン
SP_04=	159784	;--	悟空ダッシュ蹴り
SP_05=	159786	;--	悟空ダッシュ蹴り　背景
SP_06=	159787	;--	悟飯ダッシュ殴り
SP_07=	159789	;--	悟飯ダッシュ殴り　背景
SP_08=	159798	;--	フィニッシュ
SP_09=	159800	;--	フィニッシュ　背景

--エフェクト(てき)
SP_01x=	159780	;--	開幕	(敵)
SP_02x=	159781	;--	開幕　背景	
SP_03x=	159783	;--	セリフカットイン	(敵)
SP_04x=	159785	;--	悟空ダッシュ蹴り	(敵)
SP_05x=	159786	;--	悟空ダッシュ蹴り　背景	
SP_06x=	159788	;--	悟飯ダッシュ殴り	(敵)
SP_07x=	159789	;--	悟飯ダッシュ殴り　背景	
SP_08x=	159799	;--	フィニッシュ
SP_09x=	159800	;--	フィニッシュ　背景

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
--開幕
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, start_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 136, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 134, start_f, 255 );
setEffAlphaKey( spep_0 + 135, start_f, 255 );
setEffAlphaKey( spep_0 + 136, start_f, 0 );

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, start_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 136, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 134, start_b, 255 );
setEffAlphaKey( spep_0 + 135, start_b, 255 );
setEffAlphaKey( spep_0 + 136, start_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-7 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 220.7, 115 , 0 );
setMoveKey( spep_0 + 1, 1, 220.7, 115 , 0 );
setMoveKey( spep_0 + 2, 1, 221.4, 115 , 0 );
setMoveKey( spep_0 + 3, 1, 221.4, 115 , 0 );
setMoveKey( spep_0 + 4, 1, 222, 115 , 0 );
setMoveKey( spep_0 + 5, 1, 222, 115 , 0 );
setMoveKey( spep_0 + 6, 1, 222.7, 115 , 0 );
setMoveKey( spep_0 + 8, 1, 223.4, 115 , 0 );
setMoveKey( spep_0 + 10, 1, 224, 115 , 0 );
setMoveKey( spep_0 + 12, 1, 224.7, 115 , 0 );
setMoveKey( spep_0 + 14, 1, 225.4, 115 , 0 );
setMoveKey( spep_0 + 16, 1, 226, 115 , 0 );
setMoveKey( spep_0 + 18, 1, 226.7, 115 , 0 );
setMoveKey( spep_0 + 20, 1, 227.4, 115 , 0 );
setMoveKey( spep_0 + 22, 1, 228, 115 , 0 );
setMoveKey( spep_0 + 24, 1, 228.7, 115 , 0 );
setMoveKey( spep_0 + 26, 1, 229.4, 115 , 0 );
setMoveKey( spep_0 + 28, 1, 230, 115 , 0 );
setMoveKey( spep_0 + 30, 1, 230.7, 115 , 0 );
setMoveKey( spep_0 + 32, 1, 231.4, 115 , 0 );
setMoveKey( spep_0 + 34, 1, 232, 115 , 0 );
setMoveKey( spep_0 + 36, 1, 232.7, 115 , 0 );
setMoveKey( spep_0 + 38, 1, 233.4, 115 , 0 );
setMoveKey( spep_0 + 40, 1, 234, 115 , 0 );
setMoveKey( spep_0 + 42, 1, 234.7, 115 , 0 );
setMoveKey( spep_0 + 44, 1, 235.4, 115 , 0 );
setMoveKey( spep_0 + 46, 1, 236, 115 , 0 );
setMoveKey( spep_0 + 48, 1, 236.7, 115 , 0 );
setMoveKey( spep_0 + 50, 1, 237.4, 115 , 0 );
setMoveKey( spep_0 + 52, 1, 238, 115 , 0 );
setMoveKey( spep_0 + 54, 1, 238.7, 115 , 0 );
setMoveKey( spep_0 + 56, 1, 239.4, 115 , 0 );
setMoveKey( spep_0 + 58, 1, 240, 115 , 0 );
setMoveKey( spep_0 + 60, 1, 248.7, 127 , 0 );
setMoveKey( spep_0 + 62, 1, 266.7, 102.6 , 0 );
setMoveKey( spep_0 + 64, 1, 324.7, 98.3 , 0 );
setMoveKey( spep_0 + 66, 1, 340.7, 123.9 , 0 );
setMoveKey( spep_0 + 68, 1, 392.7, 125.5 , 0 );
setMoveKey( spep_0 + 70, 1, 410.8, 101.2 , 0 );
setMoveKey( spep_0 + 72, 1, 468.8, 96.8 , 0 );
setMoveKey( spep_0 + 74, 1, 484.8, 122.4 , 0 );
setMoveKey( spep_0 + 76, 1, 528.8, 112.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 60, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 62, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 66, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 68, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 70, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 72, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 76, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 76, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 338, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--マントひるがえる
SE002 = playSeVer2( spep_0 + 6, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 79 );

--悟空飛んでいく
SE003 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 60, 1277, "",spep_0 + 122, 0, 30, -1);
SE005 = playSeVer2( spep_0 + 60, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 79 );
SE006 = playSeVer2( spep_0 + 82, 1117, "",spep_0 + 150, 0, 36, -1);
SE007 = playSeVer2( spep_0 + 82, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1277, "", 0, 0, 0, -1);
setPitch( spep_0 + 90, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 136;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serihu = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, serihu, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, serihu, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, serihu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, serihu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, serihu, 0 );
setEffRotateKey( spep_1 + 110, serihu, 0 );
setEffAlphaKey( spep_1 + 0, serihu, 255 );
setEffAlphaKey( spep_1 + 110, serihu, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]--

--SE
--飛行音
SE009 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛行音
SE011 = playSeVer2( spep_1 + 64, 1019, "", 0, 0, 0, -1);

--悟空飛び出す
SE012 = playSeVer2( spep_1 + 88, 44, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +102 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--悟空ダッシュ蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 106, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 104, kick_f, 255 );
setEffAlphaKey( spep_3 + 105, kick_f, 255 );
setEffAlphaKey( spep_3 + 106, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 106, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 104, kick_b, 255 );
setEffAlphaKey( spep_3 + 105, kick_b, 255 );
setEffAlphaKey( spep_3 + 106, kick_b, 0 );

--SE
--悟空突っ込んでくる
SE013 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_3 + 0, SE014, 39 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 142.6, 69 , 0 );
    setMoveKey( SP_dodge + 9, 1, 142.6, 69 , 0 );

    setScaleKey( SP_dodge + 8, 1, 2.46, 2.46 );
    setScaleKey( SP_dodge + 9, 1, 2.46, 2.46 );

    setRotateKey( SP_dodge + 8, 1, 14.6 );
    setRotateKey( SP_dodge + 9, 1, 14.6 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_3-3 + 60, 1, 1 );
setDisp( spep_3-3 + 108, 1, 0 );

changeAnime( spep_3-3 + 60, 1, 104 );
changeAnime( spep_3-3 + 66, 1, 106 );

setMoveKey( spep_3-3 + 60, 1, 82.1, 18.3 , 0 );
setMoveKey( spep_3-3 + 65, 1, 82.1, 18.3 , 0 );

setMoveKey( spep_3-3 + 66, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 95.2, -0.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 127.7, -15.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 160.3, -30.5 , 0 );
setMoveKey( spep_3-3 + 98, 1, 192.8, -45.5 , 0 );
setMoveKey( spep_3-3 + 100, 1, 225.3, -60.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 257.9, -75.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 290.4, -90.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, 323, -105.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, 355.5, -120.7 , 0 );

setScaleKey( spep_3-3 + 60, 1, 1.86, 1.86 );
setScaleKey( spep_3-3 + 65, 1, 1.86, 1.86 );

setScaleKey( spep_3-3 + 66, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 90, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 92, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 94, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 96, 1, 1.88,1.88);
setScaleKey( spep_3-3 + 98, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 100, 1, 1.86,1.86);
setScaleKey( spep_3-3 + 102, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 104, 1, 1.81,1.81);
setScaleKey( spep_3-3 + 106, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 108, 1, 1.79,1.79);

setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );

setRotateKey( spep_3-3 + 66, 1, -37.9 );
setRotateKey( spep_3-3 + 68, 1, -38 );
setRotateKey( spep_3-3 + 74, 1, -38 );
setRotateKey( spep_3-3 + 76, 1, -37.7 );
setRotateKey( spep_3-3 + 78, 1, -37.5 );
setRotateKey( spep_3-3 + 80, 1, -37.2 );
setRotateKey( spep_3-3 + 82, 1, -37 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 86, 1, -36.5 );
setRotateKey( spep_3-3 + 88, 1, -36.2 );
setRotateKey( spep_3-3 + 90, 1, -36 );
setRotateKey( spep_3-3 + 108, 1, -36 );

--SE
--悟空蹴り
SE015 = playSeVer2( spep_3 + 56, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 64, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE016, 82 );
SE017 = playSeVer2( spep_3 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE017, 89 );

--敵飛んでいく
SE018 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE018, 85 );

-- ** 次の準備 ** --
spep_4= spep_3 + 106;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_4 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, panting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, panting_f, 0 );
setEffRotateKey( spep_4 + 116, panting_f, 0 );
setEffAlphaKey( spep_4 + 0, panting_f, 255 );
setEffAlphaKey( spep_4 + 114, panting_f, 255 );
setEffAlphaKey( spep_4 + 115, panting_f, 255 );
setEffAlphaKey( spep_4 + 116, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_4 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, panting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, panting_b, 0 );
setEffRotateKey( spep_4 + 116, panting_b, 0 );
setEffAlphaKey( spep_4 + 0, panting_b, 255 );
setEffAlphaKey( spep_4 + 114, panting_b, 255 );
setEffAlphaKey( spep_4 + 115, panting_b, 255 );
setEffAlphaKey( spep_4 + 116, panting_b, 0 );

--敵の動き
setDisp( spep_4-3 + 60, 1, 1 );
setDisp( spep_4-3 + 108, 1, 0 );

changeAnime( spep_4-3 + 60, 1, 107 );

setMoveKey( spep_4-3 + 60, 1, -130.9, 28.4 , 0 );
setMoveKey( spep_4-3 + 62, 1, -261.5, 200.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, -213.9, 134.9 , 0 );
setMoveKey( spep_4-3 + 66, 1, -173.6, 89 , 0 );
setMoveKey( spep_4-3 + 68, 1, -130.9, 23.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, -132.3, 32.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, -126.3, 21.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, -127.7, 30 , 0 );
setMoveKey( spep_4-3 + 76, 1, -126.6, 19.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, -127.9, 27.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -122, 17 , 0 );
setMoveKey( spep_4-3 + 82, 1, -123.3, 25.7 , 0 );
setMoveKey( spep_4-3 + 84, 1, -122.3, 14.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, -123.6, 23.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, -117.6, 12.6 , 0 );
setMoveKey( spep_4-3 + 89, 1, -117.6, 12.6 , 0 );

setMoveKey( spep_4-3 + 90, 1, 89.8, -234 , 0 );
setMoveKey( spep_4-3 + 92, 1, 145.9, -327.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 209.3, -436.3 , 0 );
setMoveKey( spep_4-3 + 96, 1, 265.4, -525.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, 324, -633.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, 382.5, -727.6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 441.1, -826.3 , 0 );
setMoveKey( spep_4-3 + 104, 1, 499.6, -925 , 0 );
setMoveKey( spep_4-3 + 106, 1, 558.2, -1023.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, 616.7, -1122.5 , 0 );

setScaleKey( spep_4-3 + 60, 1, 4, 4 );
setScaleKey( spep_4-3 + 62, 1, 6.4, 6.4 );
setScaleKey( spep_4-3 + 64, 1, 5.6, 5.6 );
setScaleKey( spep_4-3 + 66, 1, 4.8, 4.8 );
setScaleKey( spep_4-3 + 68, 1, 4, 4 );
setScaleKey( spep_4-3 + 89, 1, 4, 4 );

setScaleKey( spep_4-3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 92, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 94, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 96, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 98, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_4-3 + 104, 1, 2.64, 2.64 );
setScaleKey( spep_4-3 + 106, 1, 2.82, 2.82 );
setScaleKey( spep_4-3 + 108, 1, 3, 3 );

setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-3 + 89, 1, 0 );

setRotateKey( spep_4-3 + 90, 1, 34.4 );
setRotateKey( spep_4-3 + 108, 1, 34.4 );

--SE
--悟飯突っ込んでくる
SE019 = playSeVer2( spep_4 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE019, 69 );
SE020 = playSeVer2( spep_4 + 0, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE021, 77 );

--悟飯パンチ
SE022 = playSeVer2( spep_4 + 48, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 58, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE023, 83 );
SE024 = playSeVer2( spep_4 + 58, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 116;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 230, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 230, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 230, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 62, 1, 1 );
setDisp( spep_5-1 + 90, 1, 0 );

changeAnime( spep_5-3 + 62, 1, 105 );

setMoveKey( spep_5-3 + 62, 1, -166.7, 350.4 , 0 );
setMoveKey( spep_5-3 + 64, 1, -130.5, 280 , 0 );
setMoveKey( spep_5-3 + 66, 1, -94.3, 209.5 , 0 );
setMoveKey( spep_5-3 + 68, 1, -58.1, 139.1 , 0 );
setMoveKey( spep_5-3 + 70, 1, -21.9, 68.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 14.3, -1.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, 17.5, -8.3 , 0 );
setMoveKey( spep_5-3 + 76, 1, 20.7, -14.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 23.9, -21.3 , 0 );
setMoveKey( spep_5-3 + 80, 1, 27.1, -27.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 30.3, -34.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 33.5, -40.8 , 0 );
setMoveKey( spep_5-3 + 86, 1, 36.7, -47.3 , 0 );
setMoveKey( spep_5-3 + 88, 1, 39.9, -53.8 , 0 );
setMoveKey( spep_5-1 + 90, 1, 43, -60.3 , 0 );

setScaleKey( spep_5-3 + 62, 1, 2, 2 );
setScaleKey( spep_5-3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 70, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 72, 1, 1, 1 );
setScaleKey( spep_5-3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 76, 1, 0.96, 0.96 );
setScaleKey( spep_5-3 + 78, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 82, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 84, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_5-1 + 90, 1, 0.8, 0.8 );

setRotateKey( spep_5-3 + 62, 1, 154.2 );
setRotateKey( spep_5-3 + 64, 1, 154.1 );
setRotateKey( spep_5-1 + 90, 1, 154.1 );

--SE
--気弾溜め
SE027 = playSeVer2( spep_5 + 0, 1276, "",spep_5 + 26, 0, 6, -1);
setPitch( spep_5 + 0, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE028 = playSeVer2( spep_5 + 0, 1262, "",spep_5 + 28, 0, 12, -1);
setSeVolumeByWorkId( spep_5 + 0, SE028, 133 );

--気弾発射
SE026 = playSeVer2( spep_5 + 10, 1145, "", 0, 14, 0, 0.5);
setSeVolumeByWorkId( spep_5 + 10, SE026, 117 );
setStartTimeMs( SE026,  600 );
setPitch( spep_5 + 10, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE029 = playSeVer2( spep_5 + 14, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE029, 127 );
SE030 = playSeVer2( spep_5 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE030, 69 );
SE031 = playSeVer2( spep_5 + 14, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE031, 116 );
SE032 = playSeVer2( spep_5 + 18, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 18, SE032, 160 );

--気弾迫る
SE033 = playSeVer2( spep_5 + 52, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE034 = playSeVer2( spep_5 + 90, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_5 + 90, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_5 + 90);
endPhase( spep_5 + 220 ); 
else
------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--開幕
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, start_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_f, 0 );
setEffRotateKey( spep_0 + 136, start_f, 0 );
setEffAlphaKey( spep_0 + 0, start_f, 255 );
setEffAlphaKey( spep_0 + 134, start_f, 255 );
setEffAlphaKey( spep_0 + 135, start_f, 255 );
setEffAlphaKey( spep_0 + 136, start_f, 0 );

-- ** エフェクト等 ** --
start_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, start_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 136, start_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, start_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 136, start_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, start_b, 0 );
setEffRotateKey( spep_0 + 136, start_b, 0 );
setEffAlphaKey( spep_0 + 0, start_b, 255 );
setEffAlphaKey( spep_0 + 134, start_b, 255 );
setEffAlphaKey( spep_0 + 135, start_b, 255 );
setEffAlphaKey( spep_0 + 136, start_b, 0 );

--敵の動き
setDisp( spep_0 + 0, 1, 1 );
setDisp( spep_0-7 + 76, 1, 0 );

changeAnime( spep_0 + 0, 1, 100 );

setMoveKey( spep_0 + 0, 1, 220.7, 115 , 0 );
setMoveKey( spep_0 + 1, 1, 220.7, 115 , 0 );
setMoveKey( spep_0 + 2, 1, 221.4, 115 , 0 );
setMoveKey( spep_0 + 3, 1, 221.4, 115 , 0 );
setMoveKey( spep_0 + 4, 1, 222, 115 , 0 );
setMoveKey( spep_0 + 5, 1, 222, 115 , 0 );
setMoveKey( spep_0 + 6, 1, 222.7, 115 , 0 );
setMoveKey( spep_0 + 8, 1, 223.4, 115 , 0 );
setMoveKey( spep_0 + 10, 1, 224, 115 , 0 );
setMoveKey( spep_0 + 12, 1, 224.7, 115 , 0 );
setMoveKey( spep_0 + 14, 1, 225.4, 115 , 0 );
setMoveKey( spep_0 + 16, 1, 226, 115 , 0 );
setMoveKey( spep_0 + 18, 1, 226.7, 115 , 0 );
setMoveKey( spep_0 + 20, 1, 227.4, 115 , 0 );
setMoveKey( spep_0 + 22, 1, 228, 115 , 0 );
setMoveKey( spep_0 + 24, 1, 228.7, 115 , 0 );
setMoveKey( spep_0 + 26, 1, 229.4, 115 , 0 );
setMoveKey( spep_0 + 28, 1, 230, 115 , 0 );
setMoveKey( spep_0 + 30, 1, 230.7, 115 , 0 );
setMoveKey( spep_0 + 32, 1, 231.4, 115 , 0 );
setMoveKey( spep_0 + 34, 1, 232, 115 , 0 );
setMoveKey( spep_0 + 36, 1, 232.7, 115 , 0 );
setMoveKey( spep_0 + 38, 1, 233.4, 115 , 0 );
setMoveKey( spep_0 + 40, 1, 234, 115 , 0 );
setMoveKey( spep_0 + 42, 1, 234.7, 115 , 0 );
setMoveKey( spep_0 + 44, 1, 235.4, 115 , 0 );
setMoveKey( spep_0 + 46, 1, 236, 115 , 0 );
setMoveKey( spep_0 + 48, 1, 236.7, 115 , 0 );
setMoveKey( spep_0 + 50, 1, 237.4, 115 , 0 );
setMoveKey( spep_0 + 52, 1, 238, 115 , 0 );
setMoveKey( spep_0 + 54, 1, 238.7, 115 , 0 );
setMoveKey( spep_0 + 56, 1, 239.4, 115 , 0 );
setMoveKey( spep_0 + 58, 1, 240, 115 , 0 );
setMoveKey( spep_0 + 60, 1, 248.7, 127 , 0 );
setMoveKey( spep_0 + 62, 1, 266.7, 102.6 , 0 );
setMoveKey( spep_0 + 64, 1, 324.7, 98.3 , 0 );
setMoveKey( spep_0 + 66, 1, 340.7, 123.9 , 0 );
setMoveKey( spep_0 + 68, 1, 392.7, 125.5 , 0 );
setMoveKey( spep_0 + 70, 1, 410.8, 101.2 , 0 );
setMoveKey( spep_0 + 72, 1, 468.8, 96.8 , 0 );
setMoveKey( spep_0 + 74, 1, 484.8, 122.4 , 0 );
setMoveKey( spep_0 + 76, 1, 528.8, 112.1 , 0 );

setScaleKey( spep_0 + 0, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 2, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 3, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 4, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 5, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 6, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 60, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 62, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 64, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 66, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 68, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 70, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 72, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 74, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 76, 1, 0.24, 0.24 );

setRotateKey( spep_0 + 0, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 2, 1, 0 );
setRotateKey( spep_0 + 3, 1, 0 );
setRotateKey( spep_0 + 4, 1, 0 );
setRotateKey( spep_0 + 5, 1, 0 );
setRotateKey( spep_0 + 6, 1, 0 );
setRotateKey( spep_0 + 76, 1, 0 );

--SE
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 338, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--マントひるがえる
SE002 = playSeVer2( spep_0 + 6, 1332, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 79 );

--悟空飛んでいく
SE003 = playSeVer2( spep_0 + 58, 1182, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 60, 1277, "",spep_0 + 122, 0, 30, -1);
SE005 = playSeVer2( spep_0 + 60, 1014, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 60, SE005, 79 );
SE006 = playSeVer2( spep_0 + 82, 1117, "",spep_0 + 150, 0, 36, -1);
SE007 = playSeVer2( spep_0 + 82, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 90, 1277, "", 0, 0, 0, -1);
setPitch( spep_0 + 90, SE008, 300 );
setTimeStretch( SE008, 1.2, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_1= spep_0 + 136;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serihu = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, serihu, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, serihu, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, serihu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, serihu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, serihu, 0 );
setEffRotateKey( spep_1 + 110, serihu, 0 );
setEffAlphaKey( spep_1 + 0, serihu, 255 );
setEffAlphaKey( spep_1 + 110, serihu, 255 );

--顔カットインのタイミング指定
spep_x=spep_1 +0;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--[[
-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 0, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo, 0,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  0,  515);

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
]]--

--SE
--飛行音
SE009 = playSeVer2( spep_1 + 0, 1019, "", 0, 0, 0, -1);

--顔カットイン
SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛行音
SE011 = playSeVer2( spep_1 + 64, 1019, "", 0, 0, 0, -1);

--悟空飛び出す
SE012 = playSeVer2( spep_1 + 88, 44, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +102 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_2= spep_1 + 110;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_2 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_2 + 0, 906, 86, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_2 + 0, shuchusen, 86, 20 );

setEffMoveKey( spep_2 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_2 + 86, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_2 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_2 + 86, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_2 + 0, shuchusen, 0 );
setEffRotateKey( spep_2 + 86, shuchusen, 0 );

setEffAlphaKey( spep_2 + 0, shuchusen, 255 );
setEffAlphaKey( spep_2 + 86, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_2 + 0, SE_05 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

--白フェード
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3= spep_2 + 94;
------------------------------------------------------
--悟空ダッシュ蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_3 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kick_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_f, 0 );
setEffRotateKey( spep_3 + 106, kick_f, 0 );
setEffAlphaKey( spep_3 + 0, kick_f, 255 );
setEffAlphaKey( spep_3 + 104, kick_f, 255 );
setEffAlphaKey( spep_3 + 105, kick_f, 255 );
setEffAlphaKey( spep_3 + 106, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_3 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 106, kick_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 106, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, kick_b, 0 );
setEffRotateKey( spep_3 + 106, kick_b, 0 );
setEffAlphaKey( spep_3 + 0, kick_b, 255 );
setEffAlphaKey( spep_3 + 104, kick_b, 255 );
setEffAlphaKey( spep_3 + 105, kick_b, 255 );
setEffAlphaKey( spep_3 + 106, kick_b, 0 );

--SE
--悟空突っ込んでくる
SE013 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_3 + 0, SE014, 39 );

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);

    --敵の固定
    setMoveKey( SP_dodge + 8, 1, 142.6, 69 , 0 );
    setMoveKey( SP_dodge + 9, 1, 142.6, 69 , 0 );

    setScaleKey( SP_dodge + 8, 1, 2.46, 2.46 );
    setScaleKey( SP_dodge + 9, 1, 2.46, 2.46 );

    setRotateKey( SP_dodge + 8, 1, 14.6 );
    setRotateKey( SP_dodge + 9, 1, 14.6 );
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

--敵の動き
setDisp( spep_3-3 + 60, 1, 1 );
setDisp( spep_3-3 + 108, 1, 0 );

changeAnime( spep_3-3 + 60, 1, 104 );
changeAnime( spep_3-3 + 66, 1, 106 );

setMoveKey( spep_3-3 + 60, 1, 82.1, 18.3 , 0 );
setMoveKey( spep_3-3 + 65, 1, 82.1, 18.3 , 0 );

setMoveKey( spep_3-3 + 66, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_3-3 + 68, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 70, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 72, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_3-3 + 74, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_3-3 + 76, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 78, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_3-3 + 80, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_3-3 + 82, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_3-3 + 90, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_3-3 + 92, 1, 95.2, -0.4 , 0 );
setMoveKey( spep_3-3 + 94, 1, 127.7, -15.5 , 0 );
setMoveKey( spep_3-3 + 96, 1, 160.3, -30.5 , 0 );
setMoveKey( spep_3-3 + 98, 1, 192.8, -45.5 , 0 );
setMoveKey( spep_3-3 + 100, 1, 225.3, -60.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 257.9, -75.6 , 0 );
setMoveKey( spep_3-3 + 104, 1, 290.4, -90.6 , 0 );
setMoveKey( spep_3-3 + 106, 1, 323, -105.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, 355.5, -120.7 , 0 );

setScaleKey( spep_3-3 + 60, 1, 1.86, 1.86 );
setScaleKey( spep_3-3 + 65, 1, 1.86, 1.86 );

setScaleKey( spep_3-3 + 66, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 90, 1, 1.93,1.93);
setScaleKey( spep_3-3 + 92, 1, 1.92,1.92);
setScaleKey( spep_3-3 + 94, 1, 1.89,1.89);
setScaleKey( spep_3-3 + 96, 1, 1.88,1.88);
setScaleKey( spep_3-3 + 98, 1, 1.87,1.87);
setScaleKey( spep_3-3 + 100, 1, 1.86,1.86);
setScaleKey( spep_3-3 + 102, 1, 1.84,1.84);
setScaleKey( spep_3-3 + 104, 1, 1.81,1.81);
setScaleKey( spep_3-3 + 106, 1, 1.8,1.8);
setScaleKey( spep_3-3 + 108, 1, 1.79,1.79);

setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 65, 1, 0 );

setRotateKey( spep_3-3 + 66, 1, -37.9 );
setRotateKey( spep_3-3 + 68, 1, -38 );
setRotateKey( spep_3-3 + 74, 1, -38 );
setRotateKey( spep_3-3 + 76, 1, -37.7 );
setRotateKey( spep_3-3 + 78, 1, -37.5 );
setRotateKey( spep_3-3 + 80, 1, -37.2 );
setRotateKey( spep_3-3 + 82, 1, -37 );
setRotateKey( spep_3-3 + 84, 1, -36.7 );
setRotateKey( spep_3-3 + 86, 1, -36.5 );
setRotateKey( spep_3-3 + 88, 1, -36.2 );
setRotateKey( spep_3-3 + 90, 1, -36 );
setRotateKey( spep_3-3 + 108, 1, -36 );

--SE
--悟空蹴り
SE015 = playSeVer2( spep_3 + 56, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 64, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE016, 82 );
SE017 = playSeVer2( spep_3 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 64, SE017, 89 );

--敵飛んでいく
SE018 = playSeVer2( spep_3 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 88, SE018, 85 );

-- ** 次の準備 ** --
spep_4= spep_3 + 106;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_4 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, panting_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, panting_f, 0 );
setEffRotateKey( spep_4 + 116, panting_f, 0 );
setEffAlphaKey( spep_4 + 0, panting_f, 255 );
setEffAlphaKey( spep_4 + 114, panting_f, 255 );
setEffAlphaKey( spep_4 + 115, panting_f, 255 );
setEffAlphaKey( spep_4 + 116, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_4 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 116, panting_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 116, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, panting_b, 0 );
setEffRotateKey( spep_4 + 116, panting_b, 0 );
setEffAlphaKey( spep_4 + 0, panting_b, 255 );
setEffAlphaKey( spep_4 + 114, panting_b, 255 );
setEffAlphaKey( spep_4 + 115, panting_b, 255 );
setEffAlphaKey( spep_4 + 116, panting_b, 0 );

--敵の動き
setDisp( spep_4-3 + 60, 1, 1 );
setDisp( spep_4-3 + 108, 1, 0 );

changeAnime( spep_4-3 + 60, 1, 107 );

setMoveKey( spep_4-3 + 60, 1, -130.9, 28.4 , 0 );
setMoveKey( spep_4-3 + 62, 1, -261.5, 200.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, -213.9, 134.9 , 0 );
setMoveKey( spep_4-3 + 66, 1, -173.6, 89 , 0 );
setMoveKey( spep_4-3 + 68, 1, -130.9, 23.4 , 0 );
setMoveKey( spep_4-3 + 70, 1, -132.3, 32.2 , 0 );
setMoveKey( spep_4-3 + 72, 1, -126.3, 21.3 , 0 );
setMoveKey( spep_4-3 + 74, 1, -127.7, 30 , 0 );
setMoveKey( spep_4-3 + 76, 1, -126.6, 19.1 , 0 );
setMoveKey( spep_4-3 + 78, 1, -127.9, 27.9 , 0 );
setMoveKey( spep_4-3 + 80, 1, -122, 17 , 0 );
setMoveKey( spep_4-3 + 82, 1, -123.3, 25.7 , 0 );
setMoveKey( spep_4-3 + 84, 1, -122.3, 14.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, -123.6, 23.5 , 0 );
setMoveKey( spep_4-3 + 88, 1, -117.6, 12.6 , 0 );
setMoveKey( spep_4-3 + 89, 1, -117.6, 12.6 , 0 );

setMoveKey( spep_4-3 + 90, 1, 89.8, -234 , 0 );
setMoveKey( spep_4-3 + 92, 1, 145.9, -327.8 , 0 );
setMoveKey( spep_4-3 + 94, 1, 209.3, -436.3 , 0 );
setMoveKey( spep_4-3 + 96, 1, 265.4, -525.3 , 0 );
setMoveKey( spep_4-3 + 98, 1, 324, -633.8 , 0 );
setMoveKey( spep_4-3 + 100, 1, 382.5, -727.6 , 0 );
setMoveKey( spep_4-3 + 102, 1, 441.1, -826.3 , 0 );
setMoveKey( spep_4-3 + 104, 1, 499.6, -925 , 0 );
setMoveKey( spep_4-3 + 106, 1, 558.2, -1023.7 , 0 );
setMoveKey( spep_4-3 + 108, 1, 616.7, -1122.5 , 0 );

setScaleKey( spep_4-3 + 60, 1, 4, 4 );
setScaleKey( spep_4-3 + 62, 1, 6.4, 6.4 );
setScaleKey( spep_4-3 + 64, 1, 5.6, 5.6 );
setScaleKey( spep_4-3 + 66, 1, 4.8, 4.8 );
setScaleKey( spep_4-3 + 68, 1, 4, 4 );
setScaleKey( spep_4-3 + 89, 1, 4, 4 );

setScaleKey( spep_4-3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 92, 1, 1.58, 1.58 );
setScaleKey( spep_4-3 + 94, 1, 1.76, 1.76 );
setScaleKey( spep_4-3 + 96, 1, 1.93, 1.93 );
setScaleKey( spep_4-3 + 98, 1, 2.11, 2.11 );
setScaleKey( spep_4-3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_4-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_4-3 + 104, 1, 2.64, 2.64 );
setScaleKey( spep_4-3 + 106, 1, 2.82, 2.82 );
setScaleKey( spep_4-3 + 108, 1, 3, 3 );

setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-3 + 89, 1, 0 );

setRotateKey( spep_4-3 + 90, 1, 34.4 );
setRotateKey( spep_4-3 + 108, 1, 34.4 );

--SE
--悟飯突っ込んでくる
SE019 = playSeVer2( spep_4 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE019, 69 );
SE020 = playSeVer2( spep_4 + 0, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE021, 77 );

--悟飯パンチ
SE022 = playSeVer2( spep_4 + 48, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_4 + 58, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE023, 83 );
SE024 = playSeVer2( spep_4 + 58, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 116;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_5 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_5 + 230, finish_f, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 230, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_f, 0 );
setEffRotateKey( spep_5 + 230, finish_f, 0 );
setEffAlphaKey( spep_5 + 0, finish_f, 255 );
setEffAlphaKey( spep_5 + 230, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_5 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_5 + 230, finish_b, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 230, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, finish_b, 0 );
setEffRotateKey( spep_5 + 230, finish_b, 0 );
setEffAlphaKey( spep_5 + 0, finish_b, 255 );
setEffAlphaKey( spep_5 + 230, finish_b, 255 );

--敵の動き
setDisp( spep_5-3 + 62, 1, 1 );
setDisp( spep_5-1 + 90, 1, 0 );

changeAnime( spep_5-3 + 62, 1, 105 );

setMoveKey( spep_5-3 + 62, 1, -166.7, 350.4 , 0 );
setMoveKey( spep_5-3 + 64, 1, -130.5, 280 , 0 );
setMoveKey( spep_5-3 + 66, 1, -94.3, 209.5 , 0 );
setMoveKey( spep_5-3 + 68, 1, -58.1, 139.1 , 0 );
setMoveKey( spep_5-3 + 70, 1, -21.9, 68.6 , 0 );
setMoveKey( spep_5-3 + 72, 1, 14.3, -1.8 , 0 );
setMoveKey( spep_5-3 + 74, 1, 17.5, -8.3 , 0 );
setMoveKey( spep_5-3 + 76, 1, 20.7, -14.8 , 0 );
setMoveKey( spep_5-3 + 78, 1, 23.9, -21.3 , 0 );
setMoveKey( spep_5-3 + 80, 1, 27.1, -27.8 , 0 );
setMoveKey( spep_5-3 + 82, 1, 30.3, -34.3 , 0 );
setMoveKey( spep_5-3 + 84, 1, 33.5, -40.8 , 0 );
setMoveKey( spep_5-3 + 86, 1, 36.7, -47.3 , 0 );
setMoveKey( spep_5-3 + 88, 1, 39.9, -53.8 , 0 );
setMoveKey( spep_5-1 + 90, 1, 43, -60.3 , 0 );

setScaleKey( spep_5-3 + 62, 1, 2, 2 );
setScaleKey( spep_5-3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_5-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_5-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_5-3 + 70, 1, 1.2, 1.2 );
setScaleKey( spep_5-3 + 72, 1, 1, 1 );
setScaleKey( spep_5-3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_5-3 + 76, 1, 0.96, 0.96 );
setScaleKey( spep_5-3 + 78, 1, 0.93, 0.93 );
setScaleKey( spep_5-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_5-3 + 82, 1, 0.89, 0.89 );
setScaleKey( spep_5-3 + 84, 1, 0.87, 0.87 );
setScaleKey( spep_5-3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_5-3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_5-1 + 90, 1, 0.8, 0.8 );

setRotateKey( spep_5-3 + 62, 1, 154.2 );
setRotateKey( spep_5-3 + 64, 1, 154.1 );
setRotateKey( spep_5-1 + 90, 1, 154.1 );

--SE
--気弾溜め
SE027 = playSeVer2( spep_5 + 0, 1276, "",spep_5 + 26, 0, 6, -1);
setPitch( spep_5 + 0, SE027, -400 );
setTimeStretch( SE027, 0.73, 30, 4 );
SE028 = playSeVer2( spep_5 + 0, 1262, "",spep_5 + 28, 0, 12, -1);
setSeVolumeByWorkId( spep_5 + 0, SE028, 133 );

--気弾発射
SE026 = playSeVer2( spep_5 + 10, 1145, "", 0, 14, 0, 0.5);
setSeVolumeByWorkId( spep_5 + 10, SE026, 117 );
setStartTimeMs( SE026,  600 );
setPitch( spep_5 + 10, SE026, 400 );
setTimeStretch( SE026, 1.27, 30, 4 );
SE029 = playSeVer2( spep_5 + 14, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE029, 127 );
SE030 = playSeVer2( spep_5 + 14, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE030, 69 );
SE031 = playSeVer2( spep_5 + 14, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14, SE031, 116 );
SE032 = playSeVer2( spep_5 + 18, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 18, SE032, 160 );

--気弾迫る
SE033 = playSeVer2( spep_5 + 52, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE034 = playSeVer2( spep_5 + 90, 1011, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_5 + 90, 1023, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_5 + 90);
endPhase( spep_5 + 220 );
end