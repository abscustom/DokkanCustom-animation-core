--1024350:超サイヤ人孫悟空&超サイヤ人孫悟飯(少年期)_必殺技：フライハイシュート(LR)
--sp_effect_b1_00201
--sp2367

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
SP_01 = 159779; --開幕
SP_02 = 159781; --開幕 背景
SP_03 = 159782; --セリフカットイン
SP_04 = 159784; --悟空ダッシュ蹴り
SP_05 = 159786; --悟空ダッシュ蹴り 背景
SP_06 = 159787; --悟飯ダッシュ殴り
SP_07 = 159789; --悟飯ダッシュ殴り 背景
SP_08 = 159790; --悟空気弾投げ
SP_09 = 159792; --悟空気弾投げ 背景
SP_10 = 159793; --二人で追撃
SP_11 = 159794; --二人でキック
SP_12 = 159796; --二人でキック 背景
SP_13 = 159797; --フィニッシュ

--エフェクト(てき)
SP_01x = 159780; --開幕 (敵)
SP_02x = 159781; --開幕 背景
SP_03x = 159783; --セリフカットイン (敵)
SP_04x = 159785; --悟空ダッシュ蹴り (敵)
SP_05x = 159786; --悟空ダッシュ蹴り 背景
SP_06x = 159788; --悟飯ダッシュ殴り (敵)
SP_07x = 159789; --悟飯ダッシュ殴り 背景
SP_08x = 159791; --悟空気弾投げ (敵)
SP_09x = 159792; --悟空気弾投げ 背景
SP_10x = 159793; --二人で追撃
SP_11x = 159795; --二人でキック (敵)
SP_12x = 159796; --二人でキック 背景
SP_13x = 159797; --フィニッシュ

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

    if (_IS_SKIP_ == 1 and _IS_DODGE_ == 0) then

        spep_0=0;
        spep_1= spep_0 + 136;
        spep_c= spep_1 + 108;
        spep_2= spep_c + 94;
        spep_3= spep_2 + 104;
        spep_4= spep_3 + 116;
        spep_5= spep_4 + 136;
        spep_7= spep_5 + 44;

        timing_skip = 10;

        skipFrame(0, spep_7 + timing_skip );  -- スキップ先フレーム指定

        -- ** 音 ** --
        --蹴りポーズで突っ込む
        SE039 = playSeVer2( spep_7 + 10 + 3, 1019, "", 0, 0, 0, -1);
        SE040 = playSeVer2( spep_7 + 10 + 3, 9, "",spep_7 + 60, 0, 10, -1);
        SE041 = playSeVer2( spep_7 + 10 + 3, 1117, "",spep_7 + 60, 0, 10, -1);
        SE042 = playSeVer2( spep_7 + 10 + 3, 1314, "",spep_7 + 68, 0, 10, -1);
        setSeVolumeByWorkId( spep_7 + 10 + 3, SE042, 79 );

    end
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
setEffMoveKey( spep_1 + 108, serihu, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, serihu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, serihu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, serihu, 0 );
setEffRotateKey( spep_1 + 108, serihu, 0 );
setEffAlphaKey( spep_1 + 0, serihu, 255 );
setEffAlphaKey( spep_1 + 108, serihu, 255 );

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
entryFade( spep_1 +100 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_c= spep_1 + 108;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -75 ); -- 第8引数のY軸オフセット値は適宜調整してください。
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 放射線(黄) ** --
    housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
    setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, housha, 0 );
    setEffRotateKey( spep_c + 90, housha, 0 );
    setEffAlphaKey( spep_c + 0, housha, 255 );
    setEffAlphaKey( spep_c + 90, housha, 255 );

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

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    speff2 = entryEffectLife( spep_c + 0, 3248, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3247, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3246, 90, 0x100, -1, 0, 0, -75 ); -- 第8引数のY軸オフセット値は適宜調整してください。
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3249, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    speff2 = entryEffectLife( spep_c + 0, 3252, 90, 0x100, -1, 0, 0, 0 );   -- カード
    setEffReplaceTexture( speff2, 1, 1 );
    setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
    setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

    -- ** 雷エフェクト ** --
    kaminari = entryEffectLife( spep_c + 0, 3251, 90, 0x100, -1, 0, 0, 0 );  -- 雷エフェクト
    setEffMoveKey( spep_c + 0, kaminari, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, kaminari, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, kaminari, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, kaminari, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, kaminari, 0 );
    setEffRotateKey( spep_c + 90, kaminari, 0 );
    setEffAlphaKey( spep_c + 0, kaminari, 255 );
    setEffAlphaKey( spep_c + 90, kaminari, 255 );

    spname = entryEffectLife( spep_c + 0, 3250, 90, 0x100, -1, 0, 0, -75 ); -- 第8引数のY軸オフセット値は適宜調整してください。
    setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え 

    -- ** 極限背景 ** --
    haikei = entryEffectLife( spep_c + 0, 3253, 90, 0x80, -1, 0, 0, 0 );  -- 極限背景
    setEffMoveKey( spep_c + 0, haikei, 0, 0 , 0 );
    setEffMoveKey( spep_c + 90, haikei, 0, 0 , 0 );
    setEffScaleKey( spep_c + 0, haikei, 1.0, 1.0 );
    setEffScaleKey( spep_c + 90, haikei, 1.0, 1.0 );
    setEffRotateKey( spep_c + 0, haikei, 0 );
    setEffRotateKey( spep_c + 90, haikei, 0 );
    setEffAlphaKey( spep_c + 0, haikei, 255 );
    setEffAlphaKey( spep_c + 90, haikei, 255 );
end

-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_c + 94;
------------------------------------------------------
--悟空ダッシュ蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 106, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 106, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 104, kick_f, 255 );
setEffAlphaKey( spep_2 + 105, kick_f, 255 );
setEffAlphaKey( spep_2 + 106, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 106, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 106, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 104, kick_b, 255 );
setEffAlphaKey( spep_2 + 105, kick_b, 255 );
setEffAlphaKey( spep_2 + 106, kick_b, 0 );

--SE
--悟空突っ込んでくる
SE013 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE014, 39 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SE_CUTIN, 0 );

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
setDisp( spep_2-3 + 60, 1, 1 );
setDisp( spep_2-3 + 108, 1, 0 );

changeAnime( spep_2-3 + 60, 1, 104 );
changeAnime( spep_2-3 + 66, 1, 106 );

setMoveKey( spep_2-3 + 60, 1, 82.1, 18.3 , 0 );
setMoveKey( spep_2-3 + 65, 1, 82.1, 18.3 , 0 );

setMoveKey( spep_2-3 + 66, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 70, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 78, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 80, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 95.2, -0.4 , 0 );
setMoveKey( spep_2-3 + 94, 1, 127.7, -15.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 160.3, -30.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 192.8, -45.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 225.3, -60.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 257.9, -75.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 290.4, -90.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, 323, -105.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 355.5, -120.7 , 0 );

setScaleKey( spep_2-3 + 60, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 65, 1, 1.86, 1.86 );

setScaleKey( spep_2-3 + 66, 1, 1.93,1.93);
setScaleKey( spep_2-3 + 90, 1, 1.93,1.93);
setScaleKey( spep_2-3 + 92, 1, 1.92,1.92);
setScaleKey( spep_2-3 + 94, 1, 1.89,1.89);
setScaleKey( spep_2-3 + 96, 1, 1.88,1.88);
setScaleKey( spep_2-3 + 98, 1, 1.87,1.87);
setScaleKey( spep_2-3 + 100, 1, 1.86,1.86);
setScaleKey( spep_2-3 + 102, 1, 1.84,1.84);
setScaleKey( spep_2-3 + 104, 1, 1.81,1.81);
setScaleKey( spep_2-3 + 106, 1, 1.8,1.8);
setScaleKey( spep_2-3 + 108, 1, 1.79,1.79);

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 65, 1, 0 );

setRotateKey( spep_2-3 + 66, 1, -37.9 );
setRotateKey( spep_2-3 + 68, 1, -38 );
setRotateKey( spep_2-3 + 74, 1, -38 );
setRotateKey( spep_2-3 + 76, 1, -37.7 );
setRotateKey( spep_2-3 + 78, 1, -37.5 );
setRotateKey( spep_2-3 + 80, 1, -37.2 );
setRotateKey( spep_2-3 + 82, 1, -37 );
setRotateKey( spep_2-3 + 84, 1, -36.7 );
setRotateKey( spep_2-3 + 86, 1, -36.5 );
setRotateKey( spep_2-3 + 88, 1, -36.2 );
setRotateKey( spep_2-3 + 90, 1, -36 );
setRotateKey( spep_2-3 + 108, 1, -36 );

--SE
--悟空蹴り
SE015 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 64, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE016, 82 );
SE017 = playSeVer2( spep_2 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE017, 89 );

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE018, 85 );

-- ** 次の準備 ** --
spep_3= spep_2 + 104;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 116, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 114, panting_f, 255 );
setEffAlphaKey( spep_3 + 115, panting_f, 255 );
setEffAlphaKey( spep_3 + 116, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 116, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 114, panting_b, 255 );
setEffAlphaKey( spep_3 + 115, panting_b, 255 );
setEffAlphaKey( spep_3 + 116, panting_b, 0 );

--敵の動き
setDisp( spep_3-3 + 60, 1, 1 );
setDisp( spep_3-3 + 108, 1, 0 );

changeAnime( spep_3-3 + 60, 1, 107 );

setMoveKey( spep_3-3 + 60, 1, -130.9, 28.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, -261.5, 200.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, -213.9, 134.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, -173.6, 89 , 0 );
setMoveKey( spep_3-3 + 68, 1, -130.9, 23.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, -132.3, 32.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, -126.3, 21.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, -127.7, 30 , 0 );
setMoveKey( spep_3-3 + 76, 1, -126.6, 19.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, -127.9, 27.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -122, 17 , 0 );
setMoveKey( spep_3-3 + 82, 1, -123.3, 25.7 , 0 );
setMoveKey( spep_3-3 + 84, 1, -122.3, 14.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, -123.6, 23.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, -117.6, 12.6 , 0 );
setMoveKey( spep_3-3 + 89, 1, -117.6, 12.6 , 0 );

setMoveKey( spep_3-3 + 90, 1, 89.8, -234 , 0 );
setMoveKey( spep_3-3 + 92, 1, 145.9, -327.8 , 0 );
setMoveKey( spep_3-3 + 94, 1, 209.3, -436.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 265.4, -525.3 , 0 );
setMoveKey( spep_3-3 + 98, 1, 324, -633.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, 382.5, -727.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 441.1, -826.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 499.6, -925 , 0 );
setMoveKey( spep_3-3 + 106, 1, 558.2, -1023.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, 616.7, -1122.5 , 0 );

setScaleKey( spep_3-3 + 60, 1, 4, 4 );
setScaleKey( spep_3-3 + 62, 1, 6.4, 6.4 );
setScaleKey( spep_3-3 + 64, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 66, 1, 4.8, 4.8 );
setScaleKey( spep_3-3 + 68, 1, 4, 4 );
setScaleKey( spep_3-3 + 89, 1, 4, 4 );

setScaleKey( spep_3-3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 92, 1, 1.58, 1.58 );
setScaleKey( spep_3-3 + 94, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 96, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 98, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 104, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 106, 1, 2.82, 2.82 );
setScaleKey( spep_3-3 + 108, 1, 3, 3 );

setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 89, 1, 0 );

setRotateKey( spep_3-3 + 90, 1, 34.4 );
setRotateKey( spep_3-3 + 108, 1, 34.4 );

--SE
--悟飯突っ込んでくる
SE019 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE019, 69 );
SE020 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE021, 77 );

--悟飯パンチ
SE022 = playSeVer2( spep_3 + 48, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 58, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE023, 83 );
SE024 = playSeVer2( spep_3 + 58, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 116;
------------------------------------------------------
--悟空気弾投げ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 138, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 138, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 136, kidan_f, 255 );
setEffAlphaKey( spep_4 + 137, kidan_f, 255 );
setEffAlphaKey( spep_4 + 138, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 138, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 138, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 136, kidan_b, 255 );
setEffAlphaKey( spep_4 + 137, kidan_b, 255 );
setEffAlphaKey( spep_4 + 138, kidan_b, 0 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1 );
setDisp( spep_4-1 + 90, 1, 0 );

changeAnime( spep_4-3 + 62, 1, 105 );

setMoveKey( spep_4-3 + 62, 1, -166.7, 350.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, -130.5, 280 , 0 );
setMoveKey( spep_4-3 + 66, 1, -94.3, 209.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, -58.1, 139.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, -21.9, 68.6 , 0 );
setMoveKey( spep_4-3 + 72, 1, 14.3, -1.8 , 0 );
setMoveKey( spep_4-3 + 74, 1, 17.5, -8.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 20.7, -14.8 , 0 );
setMoveKey( spep_4-3 + 78, 1, 23.9, -21.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, 27.1, -27.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 30.3, -34.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 33.5, -40.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, 36.7, -47.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, 39.9, -53.8 , 0 );
setMoveKey( spep_4-1 + 90, 1, 43, -60.3 , 0 );

setScaleKey( spep_4-3 + 62, 1, 2, 2 );
setScaleKey( spep_4-3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_4-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 70, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 72, 1, 1, 1 );
setScaleKey( spep_4-3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 76, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 78, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 82, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 84, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_4-1 + 90, 1, 0.8, 0.8 );

setRotateKey( spep_4-3 + 62, 1, 154.2 );
setRotateKey( spep_4-3 + 64, 1, 154.1 );
setRotateKey( spep_4-1 + 90, 1, 154.1 );

--SE
--気弾溜め
SE026 = playSeVer2( spep_4 + 0, 1276, "",spep_4 + 28, 0, 6, -1);
setPitch( spep_4 + 0, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_4 + 0, 1262, "",spep_4 + 28, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 0, SE027, 133 );

--気弾発射
SE025 = playSeVer2( spep_4 + 10, 1145, "", 0, 16, 0, 0.5);
setSeVolumeByWorkId( spep_4 + 10, SE025, 117 );
setStartTimeMs( SE025,  583 );
setPitch( spep_4 + 10, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );
SE028 = playSeVer2( spep_4 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE028, 127 );
SE029 = playSeVer2( spep_4 + 16, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE029, 69 );
SE030 = playSeVer2( spep_4 + 16, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE030, 116 );
SE031 = playSeVer2( spep_4 + 20, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE031, 160 );

--気弾迫る
SE032 = playSeVer2( spep_4 + 54, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE033 = playSeVer2( spep_4 + 90, 1011, "",spep_4 + 192, 0, 4, -1);
SE034 = playSeVer2( spep_4 + 90, 1023, "",spep_4 + 192, 0, 4, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 136;
------------------------------------------------------
--二人で追撃
------------------------------------------------------
-- ** エフェクト等 ** --
dassyu = entryEffect( spep_5 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dassyu, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, dassyu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, dassyu, 1.0, 1.0 );
setEffScaleKey( spep_5 + 44, dassyu, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dassyu, 0 );
setEffRotateKey( spep_5 + 44, dassyu, 0 );
setEffAlphaKey( spep_5 + 0, dassyu, 255 );
setEffAlphaKey( spep_5 + 42, dassyu, 255 );
setEffAlphaKey( spep_5 + 43, dassyu, 255 );
setEffAlphaKey( spep_5 + 44, dassyu, 0 );

--SE
--二人突っ込んでくる
SE035 = playSeVer2( spep_5 + 0, 1182, "",spep_5 + 62, 0, 10, -1);
SE036 = playSeVer2( spep_5 + 0, 9, "",spep_5 + 62, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 0, SE036, 79 );
SE037 = playSeVer2( spep_5 + 0, 1167, "",spep_5 + 62, 0, 10, 0.5);
setSeVolumeByWorkId( spep_5 + 0, SE037, 61 );
setPitch( spep_5 + 0, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_5 + 44;

------------------------------------------------------
--二人でキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_7 + 0, SP_11, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick2_f, 0 );
setEffRotateKey( spep_7 + 116, kick2_f, 0 );
setEffAlphaKey( spep_7 + 0, kick2_f, 255 );
setEffAlphaKey( spep_7 + 114, kick2_f, 255 );
setEffAlphaKey( spep_7 + 115, kick2_f, 255 );
setEffAlphaKey( spep_7 + 116, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_7 + 0, SP_12, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick2_b, 0 );
setEffRotateKey( spep_7 + 116, kick2_b, 0 );
setEffAlphaKey( spep_7 + 0, kick2_b, 255 );
setEffAlphaKey( spep_7 + 114, kick2_b, 255 );
setEffAlphaKey( spep_7 + 115, kick2_b, 255 );
setEffAlphaKey( spep_7 + 116, kick2_b, 0 );

--敵の動き
setDisp( spep_7-3 + 50, 1, 1 );

changeAnime( spep_7-3 + 50, 1, 108 );

setMoveKey( spep_7-3 + 50, 1, 132.5, -48.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, 282.7, -57.2 , 0 );
setMoveKey( spep_7-3 + 54, 1, 251.2, -65.6 , 0 );
setMoveKey( spep_7-3 + 56, 1, 205.8, -54.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, 176.1, -54.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, 129, -41.6 , 0 );
setMoveKey( spep_7-3 + 62, 1, 136.6, -53.9 , 0 );
setMoveKey( spep_7-3 + 64, 1, 130.2, -46.9 , 0 );
setMoveKey( spep_7-3 + 66, 1, 139.5, -50.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 131.4, -41.6 , 0 );
setMoveKey( spep_7-3 + 70, 1, 139, -53.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, 132.6, -46.9 , 0 );
setMoveKey( spep_7-3 + 74, 1, 142, -50.4 , 0 );
setMoveKey( spep_7-3 + 76, 1, 137.3, -48.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, 138, -48.6 , 0 );
setMoveKey( spep_7-3 + 80, 1, 138.6, -48.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, 139.2, -48.6 , 0 );
setMoveKey( spep_7-3 + 84, 1, 139.8, -48.6 , 0 );
setMoveKey( spep_7-3 + 86, 1, 140.4, -48.6 , 0 );
setMoveKey( spep_7-3 + 88, 1, 141, -48.6 , 0 );
setMoveKey( spep_7-3 + 90, 1, 151.5, -48.7 , 0 );
setMoveKey( spep_7-3 + 92, 1, 162, -48.8 , 0 );
setMoveKey( spep_7-3 + 94, 1, 172.5, -49 , 0 );
setMoveKey( spep_7-3 + 96, 1, 183, -49.1 , 0 );
setMoveKey( spep_7-3 + 98, 1, 193.5, -49.2 , 0 );
setMoveKey( spep_7-3 + 100, 1, 204, -49.3 , 0 );
setMoveKey( spep_7-3 + 102, 1, 214.5, -49.4 , 0 );
setMoveKey( spep_7-3 + 104, 1, 215.5, -49.8 , 0 );
setMoveKey( spep_7-3 + 106, 1, 216.6, -50.1 , 0 );
setMoveKey( spep_7-3 + 108, 1, 217.6, -50.5 , 0 );
setMoveKey( spep_7-3 + 110, 1, 218.6, -50.8 , 0 );
setMoveKey( spep_7-3 + 112, 1, 219.6, -51.2 , 0 );
setMoveKey( spep_7-3 + 114, 1, 220.6, -51.5 , 0 );
setMoveKey( spep_7-3 + 116, 1, 221.6, -51.8 , 0 );
setMoveKey( spep_7-3 + 118, 1, 222.6, -52.2 , 0 );

setScaleKey( spep_7-3 + 50, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 52, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 54, 1, 2.74,2.74);
setScaleKey( spep_7-3 + 56, 1, 2.45,2.45);
setScaleKey( spep_7-3 + 58, 1, 2.17,2.17);
setScaleKey( spep_7-3 + 60, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 88, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 90, 1, 1.82,1.82);
setScaleKey( spep_7-3 + 92, 1, 1.77,1.77);
setScaleKey( spep_7-3 + 94, 1, 1.71,1.71);
setScaleKey( spep_7-3 + 96, 1, 1.64,1.64);
setScaleKey( spep_7-3 + 98, 1, 1.58,1.58);
setScaleKey( spep_7-3 + 100, 1, 1.53,1.53);
setScaleKey( spep_7-3 + 102, 1, 1.47,1.47);
setScaleKey( spep_7-3 + 104, 1, 1.44,1.44);
setScaleKey( spep_7-3 + 106, 1, 1.42,1.42);
setScaleKey( spep_7-3 + 108, 1, 1.4,1.4);
setScaleKey( spep_7-3 + 110, 1, 1.38,1.38);
setScaleKey( spep_7-3 + 112, 1, 1.37,1.37);
setScaleKey( spep_7-3 + 114, 1, 1.35,1.35);
setScaleKey( spep_7-3 + 116, 1, 1.33,1.33);
setScaleKey( spep_7-3 + 118, 1, 1.31,1.31);

setRotateKey( spep_7-3 + 50, 1, 17.6 );
setRotateKey( spep_7-3 + 52, 1, 17.7 );
setRotateKey( spep_7-3 + 60, 1, 17.7 );
setRotateKey( spep_7-3 + 62, 1, 17.9 );
setRotateKey( spep_7-3 + 64, 1, 18 );
setRotateKey( spep_7-3 + 66, 1, 18.2 );
setRotateKey( spep_7-3 + 68, 1, 18.3 );
setRotateKey( spep_7-3 + 70, 1, 18.5 );
setRotateKey( spep_7-3 + 72, 1, 18.7 );
setRotateKey( spep_7-3 + 74, 1, 18.8 );
setRotateKey( spep_7-3 + 76, 1, 19 );
setRotateKey( spep_7-3 + 78, 1, 19.1 );
setRotateKey( spep_7-3 + 80, 1, 19.3 );
setRotateKey( spep_7-3 + 82, 1, 19.5 );
setRotateKey( spep_7-3 + 84, 1, 19.6 );
setRotateKey( spep_7-3 + 86, 1, 19.8 );
setRotateKey( spep_7-3 + 88, 1, 19.9 );
setRotateKey( spep_7-3 + 90, 1, 21.3 );
setRotateKey( spep_7-3 + 92, 1, 22.7 );
setRotateKey( spep_7-3 + 94, 1, 24.1 );
setRotateKey( spep_7-3 + 96, 1, 25.5 );
setRotateKey( spep_7-3 + 98, 1, 26.9 );
setRotateKey( spep_7-3 + 100, 1, 28.2 );
setRotateKey( spep_7-3 + 102, 1, 29.6 );
setRotateKey( spep_7-3 + 108, 1, 29.6 );
setRotateKey( spep_7-3 + 110, 1, 29.5 );
setRotateKey( spep_7-3 + 116, 1, 29.5 );
setRotateKey( spep_7-3 + 118, 1, 29.4 );

--SE
--蹴りポーズで突っ込む
SE039 = playSeVer2( spep_7 + 0, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_7 + 0, 9, "",spep_7 + 60, 0, 10, -1);
SE041 = playSeVer2( spep_7 + 0, 1117, "",spep_7 + 60, 0, 10, -1);
SE042 = playSeVer2( spep_7 + 0, 1314, "",spep_7 + 68, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 0, SE042, 79 );

--二人キック
SE043 = playSeVer2( spep_7 + 50, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE043, 79 );
SE044 = playSeVer2( spep_7 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE044, 72 );
SE045 = playSeVer2( spep_7 + 54, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 54, SE045, 81 );

--敵飛んでいく
SE046 = playSeVer2( spep_7 + 86, 1183, "",spep_7 + 152, 0, 16, -1);
SE047 = playSeVer2( spep_7 + 86, 1121, "",spep_7 + 152, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 116;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_13, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 150, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 150, finish, 255 );

--敵の動き
setDisp( spep_8-1 + 20, 1, 0 );

changeAnime( spep_8+ 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 0, -247.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 0, -223.9 , 0 );
setMoveKey( spep_8-3 + 4, 1, 0, -199.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 0, -194.3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 0, -188.7 , 0 );
setMoveKey( spep_8-3 + 10, 1, 0, -183 , 0 );
setMoveKey( spep_8-3 + 12, 1, 0, -177.4 , 0 );
setMoveKey( spep_8-3 + 14, 1, 0, -171.7 , 0 );
setMoveKey( spep_8-3 + 16, 1, 0, -166.1 , 0 );
setMoveKey( spep_8-3 + 18, 1, 0, -160.5 , 0 );
setMoveKey( spep_8-1 + 20, 1, 0, -154.8 , 0 );

setScaleKey( spep_8 + 0, 1, 3, 3 );
--setScaleKey( spep_8-3 + 2, 1, 2.25, 2.25 );
setScaleKey( spep_8-3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_8-3 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_8-3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_8-3 + 10, 1, 1.05, 1.05 );
setScaleKey( spep_8-3 + 12, 1, 0.9, 0.9 );
setScaleKey( spep_8-3 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_8-3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_8-3 + 18, 1, 0.45, 0.45 );
setScaleKey( spep_8-1 + 20, 1, 0.3, 0.3 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-1 + 20, 1, 0 );

--SE
--岩激突
SE048 = playSeVer2( spep_8 + 20, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8 + 20);
endPhase( spep_8 + 140 ); 
else
------------------------------------------------------------------------------------------------------------
-- てき側
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
serihu = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, serihu, 0, 0, 0 );
setEffMoveKey( spep_1 + 108, serihu, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, serihu, 1.0, 1.0 );
setEffScaleKey( spep_1 + 108, serihu, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, serihu, 0 );
setEffRotateKey( spep_1 + 108, serihu, 0 );
setEffAlphaKey( spep_1 + 0, serihu, 255 );
setEffAlphaKey( spep_1 + 108, serihu, 255 );

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
--SE010 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--飛行音
SE011 = playSeVer2( spep_1 + 64, 1019, "", 0, 0, 0, -1);

--悟空飛び出す
SE012 = playSeVer2( spep_1 + 88, 44, "", 0, 0, 0, -1);

--白フェード
entryFade( spep_1 +100 , 4, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_1 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_c= spep_1 + 108;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
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
SEXXX = playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2= spep_c + 94;
------------------------------------------------------
--悟空ダッシュ蹴り
------------------------------------------------------
-- ** エフェクト等 ** --
kick_f = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 106, kick_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_f, 0 );
setEffRotateKey( spep_2 + 106, kick_f, 0 );
setEffAlphaKey( spep_2 + 0, kick_f, 255 );
setEffAlphaKey( spep_2 + 104, kick_f, 255 );
setEffAlphaKey( spep_2 + 105, kick_f, 255 );
setEffAlphaKey( spep_2 + 106, kick_f, 0 );

-- ** エフェクト等 ** --
kick_b = entryEffect( spep_2 + 0, SP_05x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, kick_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 106, kick_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 106, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, kick_b, 0 );
setEffRotateKey( spep_2 + 106, kick_b, 0 );
setEffAlphaKey( spep_2 + 0, kick_b, 255 );
setEffAlphaKey( spep_2 + 104, kick_b, 255 );
setEffAlphaKey( spep_2 + 105, kick_b, 255 );
setEffAlphaKey( spep_2 + 106, kick_b, 0 );

--SE
--悟空突っ込んでくる
SE013 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 0, 1167, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 0, SE014, 39 );

-- ** くろ背景 ** --
entryFadeBg( spep_2 + 0, 0, 110, 0, 0, 0, 0, 255 );  --黒　背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE011, 0 );
    stopSe( SP_dodge - 12, SE012, 0 );
    stopSe( SP_dodge - 12, SE013, 0 );
    stopSe( SP_dodge - 12, SE014, 0 );
    stopSe( SP_dodge - 12, SEXXX, 0 );
    
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
setDisp( spep_2-3 + 60, 1, 1 );
setDisp( spep_2-3 + 108, 1, 0 );

changeAnime( spep_2-3 + 60, 1, 104 );
changeAnime( spep_2-3 + 66, 1, 106 );

setMoveKey( spep_2-3 + 60, 1, 82.1, 18.3 , 0 );
setMoveKey( spep_2-3 + 65, 1, 82.1, 18.3 , 0 );

setMoveKey( spep_2-3 + 66, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_2-3 + 68, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 70, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 72, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 74, 1, 76.7, 26.6 , 0 );
setMoveKey( spep_2-3 + 76, 1, 50.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 78, 1, 76.7, 0.6 , 0 );
setMoveKey( spep_2-3 + 80, 1, 52.7, 22.6 , 0 );
setMoveKey( spep_2-3 + 82, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_2-3 + 90, 1, 62.7, 14.6 , 0 );
setMoveKey( spep_2-3 + 92, 1, 95.2, -0.4 , 0 );
setMoveKey( spep_2-3 + 94, 1, 127.7, -15.5 , 0 );
setMoveKey( spep_2-3 + 96, 1, 160.3, -30.5 , 0 );
setMoveKey( spep_2-3 + 98, 1, 192.8, -45.5 , 0 );
setMoveKey( spep_2-3 + 100, 1, 225.3, -60.6 , 0 );
setMoveKey( spep_2-3 + 102, 1, 257.9, -75.6 , 0 );
setMoveKey( spep_2-3 + 104, 1, 290.4, -90.6 , 0 );
setMoveKey( spep_2-3 + 106, 1, 323, -105.7 , 0 );
setMoveKey( spep_2-3 + 108, 1, 355.5, -120.7 , 0 );

setScaleKey( spep_2-3 + 60, 1, 1.86, 1.86 );
setScaleKey( spep_2-3 + 65, 1, 1.86, 1.86 );

setScaleKey( spep_2-3 + 66, 1, 1.93,1.93);
setScaleKey( spep_2-3 + 90, 1, 1.93,1.93);
setScaleKey( spep_2-3 + 92, 1, 1.92,1.92);
setScaleKey( spep_2-3 + 94, 1, 1.89,1.89);
setScaleKey( spep_2-3 + 96, 1, 1.88,1.88);
setScaleKey( spep_2-3 + 98, 1, 1.87,1.87);
setScaleKey( spep_2-3 + 100, 1, 1.86,1.86);
setScaleKey( spep_2-3 + 102, 1, 1.84,1.84);
setScaleKey( spep_2-3 + 104, 1, 1.81,1.81);
setScaleKey( spep_2-3 + 106, 1, 1.8,1.8);
setScaleKey( spep_2-3 + 108, 1, 1.79,1.79);

setRotateKey( spep_2-3 + 60, 1, 0 );
setRotateKey( spep_2-3 + 65, 1, 0 );

setRotateKey( spep_2-3 + 66, 1, -37.9 );
setRotateKey( spep_2-3 + 68, 1, -38 );
setRotateKey( spep_2-3 + 74, 1, -38 );
setRotateKey( spep_2-3 + 76, 1, -37.7 );
setRotateKey( spep_2-3 + 78, 1, -37.5 );
setRotateKey( spep_2-3 + 80, 1, -37.2 );
setRotateKey( spep_2-3 + 82, 1, -37 );
setRotateKey( spep_2-3 + 84, 1, -36.7 );
setRotateKey( spep_2-3 + 86, 1, -36.5 );
setRotateKey( spep_2-3 + 88, 1, -36.2 );
setRotateKey( spep_2-3 + 90, 1, -36 );
setRotateKey( spep_2-3 + 108, 1, -36 );

--SE
--悟空蹴り
SE015 = playSeVer2( spep_2 + 56, 1189, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 64, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE016, 82 );
SE017 = playSeVer2( spep_2 + 64, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 64, SE017, 89 );

--敵飛んでいく
SE018 = playSeVer2( spep_2 + 88, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 88, SE018, 85 );

-- ** 次の準備 ** --
spep_3= spep_2 + 104;
------------------------------------------------------
--悟飯ダッシュ殴り
------------------------------------------------------
-- ** エフェクト等 ** --
panting_f = entryEffect( spep_3 + 0, SP_06x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_f, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, panting_f, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, panting_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_f, 0 );
setEffRotateKey( spep_3 + 116, panting_f, 0 );
setEffAlphaKey( spep_3 + 0, panting_f, 255 );
setEffAlphaKey( spep_3 + 114, panting_f, 255 );
setEffAlphaKey( spep_3 + 115, panting_f, 255 );
setEffAlphaKey( spep_3 + 116, panting_f, 0 );

-- ** エフェクト等 ** --
panting_b = entryEffect( spep_3 + 0, SP_07x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_3 + 0, panting_b, 0, 0, 0 );
setEffMoveKey( spep_3 + 116, panting_b, 0, 0, 0 );
setEffScaleKey( spep_3 + 0, panting_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 116, panting_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, panting_b, 0 );
setEffRotateKey( spep_3 + 116, panting_b, 0 );
setEffAlphaKey( spep_3 + 0, panting_b, 255 );
setEffAlphaKey( spep_3 + 114, panting_b, 255 );
setEffAlphaKey( spep_3 + 115, panting_b, 255 );
setEffAlphaKey( spep_3 + 116, panting_b, 0 );

--敵の動き
setDisp( spep_3-3 + 60, 1, 1 );
setDisp( spep_3-3 + 108, 1, 0 );

changeAnime( spep_3-3 + 60, 1, 107 );

setMoveKey( spep_3-3 + 60, 1, -130.9, 28.4 , 0 );
setMoveKey( spep_3-3 + 62, 1, -261.5, 200.4 , 0 );
setMoveKey( spep_3-3 + 64, 1, -213.9, 134.9 , 0 );
setMoveKey( spep_3-3 + 66, 1, -173.6, 89 , 0 );
setMoveKey( spep_3-3 + 68, 1, -130.9, 23.4 , 0 );
setMoveKey( spep_3-3 + 70, 1, -132.3, 32.2 , 0 );
setMoveKey( spep_3-3 + 72, 1, -126.3, 21.3 , 0 );
setMoveKey( spep_3-3 + 74, 1, -127.7, 30 , 0 );
setMoveKey( spep_3-3 + 76, 1, -126.6, 19.1 , 0 );
setMoveKey( spep_3-3 + 78, 1, -127.9, 27.9 , 0 );
setMoveKey( spep_3-3 + 80, 1, -122, 17 , 0 );
setMoveKey( spep_3-3 + 82, 1, -123.3, 25.7 , 0 );
setMoveKey( spep_3-3 + 84, 1, -122.3, 14.8 , 0 );
setMoveKey( spep_3-3 + 86, 1, -123.6, 23.5 , 0 );
setMoveKey( spep_3-3 + 88, 1, -117.6, 12.6 , 0 );
setMoveKey( spep_3-3 + 89, 1, -117.6, 12.6 , 0 );

setMoveKey( spep_3-3 + 90, 1, 89.8, -234 , 0 );
setMoveKey( spep_3-3 + 92, 1, 145.9, -327.8 , 0 );
setMoveKey( spep_3-3 + 94, 1, 209.3, -436.3 , 0 );
setMoveKey( spep_3-3 + 96, 1, 265.4, -525.3 , 0 );
setMoveKey( spep_3-3 + 98, 1, 324, -633.8 , 0 );
setMoveKey( spep_3-3 + 100, 1, 382.5, -727.6 , 0 );
setMoveKey( spep_3-3 + 102, 1, 441.1, -826.3 , 0 );
setMoveKey( spep_3-3 + 104, 1, 499.6, -925 , 0 );
setMoveKey( spep_3-3 + 106, 1, 558.2, -1023.7 , 0 );
setMoveKey( spep_3-3 + 108, 1, 616.7, -1122.5 , 0 );

setScaleKey( spep_3-3 + 60, 1, 4, 4 );
setScaleKey( spep_3-3 + 62, 1, 6.4, 6.4 );
setScaleKey( spep_3-3 + 64, 1, 5.6, 5.6 );
setScaleKey( spep_3-3 + 66, 1, 4.8, 4.8 );
setScaleKey( spep_3-3 + 68, 1, 4, 4 );
setScaleKey( spep_3-3 + 89, 1, 4, 4 );

setScaleKey( spep_3-3 + 90, 1, 1.4, 1.4 );
setScaleKey( spep_3-3 + 92, 1, 1.58, 1.58 );
setScaleKey( spep_3-3 + 94, 1, 1.76, 1.76 );
setScaleKey( spep_3-3 + 96, 1, 1.93, 1.93 );
setScaleKey( spep_3-3 + 98, 1, 2.11, 2.11 );
setScaleKey( spep_3-3 + 100, 1, 2.29, 2.29 );
setScaleKey( spep_3-3 + 102, 1, 2.47, 2.47 );
setScaleKey( spep_3-3 + 104, 1, 2.64, 2.64 );
setScaleKey( spep_3-3 + 106, 1, 2.82, 2.82 );
setScaleKey( spep_3-3 + 108, 1, 3, 3 );

setRotateKey( spep_3-3 + 60, 1, 0 );
setRotateKey( spep_3-3 + 89, 1, 0 );

setRotateKey( spep_3-3 + 90, 1, 34.4 );
setRotateKey( spep_3-3 + 108, 1, 34.4 );

--SE
--悟飯突っ込んでくる
SE019 = playSeVer2( spep_3 + 0, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE019, 69 );
SE020 = playSeVer2( spep_3 + 0, 1182, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_3 + 0, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 0, SE021, 77 );

--悟飯パンチ
SE022 = playSeVer2( spep_3 + 48, 1189, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_3 + 58, 1120, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 58, SE023, 83 );
SE024 = playSeVer2( spep_3 + 58, 1110, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_4= spep_3 + 116;
------------------------------------------------------
--悟空気弾投げ
------------------------------------------------------
-- ** エフェクト等 ** --
kidan_f = entryEffect( spep_4 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 138, kidan_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_f, 0 );
setEffRotateKey( spep_4 + 138, kidan_f, 0 );
setEffAlphaKey( spep_4 + 0, kidan_f, 255 );
setEffAlphaKey( spep_4 + 136, kidan_f, 255 );
setEffAlphaKey( spep_4 + 137, kidan_f, 255 );
setEffAlphaKey( spep_4 + 138, kidan_f, 0 );

-- ** エフェクト等 ** --
kidan_b = entryEffect( spep_4 + 0, SP_09x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, kidan_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 138, kidan_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 138, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kidan_b, 0 );
setEffRotateKey( spep_4 + 138, kidan_b, 0 );
setEffAlphaKey( spep_4 + 0, kidan_b, 255 );
setEffAlphaKey( spep_4 + 136, kidan_b, 255 );
setEffAlphaKey( spep_4 + 137, kidan_b, 255 );
setEffAlphaKey( spep_4 + 138, kidan_b, 0 );

--敵の動き
setDisp( spep_4-3 + 62, 1, 1 );
setDisp( spep_4-1 + 90, 1, 0 );

changeAnime( spep_4-3 + 62, 1, 105 );

setMoveKey( spep_4-3 + 62, 1, -166.7, 350.4 , 0 );
setMoveKey( spep_4-3 + 64, 1, -130.5, 280 , 0 );
setMoveKey( spep_4-3 + 66, 1, -94.3, 209.5 , 0 );
setMoveKey( spep_4-3 + 68, 1, -58.1, 139.1 , 0 );
setMoveKey( spep_4-3 + 70, 1, -21.9, 68.6 , 0 );
setMoveKey( spep_4-3 + 72, 1, 14.3, -1.8 , 0 );
setMoveKey( spep_4-3 + 74, 1, 17.5, -8.3 , 0 );
setMoveKey( spep_4-3 + 76, 1, 20.7, -14.8 , 0 );
setMoveKey( spep_4-3 + 78, 1, 23.9, -21.3 , 0 );
setMoveKey( spep_4-3 + 80, 1, 27.1, -27.8 , 0 );
setMoveKey( spep_4-3 + 82, 1, 30.3, -34.3 , 0 );
setMoveKey( spep_4-3 + 84, 1, 33.5, -40.8 , 0 );
setMoveKey( spep_4-3 + 86, 1, 36.7, -47.3 , 0 );
setMoveKey( spep_4-3 + 88, 1, 39.9, -53.8 , 0 );
setMoveKey( spep_4-1 + 90, 1, 43, -60.3 , 0 );

setScaleKey( spep_4-3 + 62, 1, 2, 2 );
setScaleKey( spep_4-3 + 64, 1, 1.8, 1.8 );
setScaleKey( spep_4-3 + 66, 1, 1.6, 1.6 );
setScaleKey( spep_4-3 + 68, 1, 1.4, 1.4 );
setScaleKey( spep_4-3 + 70, 1, 1.2, 1.2 );
setScaleKey( spep_4-3 + 72, 1, 1, 1 );
setScaleKey( spep_4-3 + 74, 1, 0.98, 0.98 );
setScaleKey( spep_4-3 + 76, 1, 0.96, 0.96 );
setScaleKey( spep_4-3 + 78, 1, 0.93, 0.93 );
setScaleKey( spep_4-3 + 80, 1, 0.91, 0.91 );
setScaleKey( spep_4-3 + 82, 1, 0.89, 0.89 );
setScaleKey( spep_4-3 + 84, 1, 0.87, 0.87 );
setScaleKey( spep_4-3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_4-3 + 88, 1, 0.82, 0.82 );
setScaleKey( spep_4-1 + 90, 1, 0.8, 0.8 );

setRotateKey( spep_4-3 + 62, 1, 154.2 );
setRotateKey( spep_4-3 + 64, 1, 154.1 );
setRotateKey( spep_4-1 + 90, 1, 154.1 );

--SE
--気弾溜め
SE026 = playSeVer2( spep_4 + 0, 1276, "",spep_4 + 28, 0, 6, -1);
setPitch( spep_4 + 0, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_4 + 0, 1262, "",spep_4 + 28, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 0, SE027, 133 );

--気弾発射
SE025 = playSeVer2( spep_4 + 10, 1145, "", 0, 16, 0, 0.5);
setSeVolumeByWorkId( spep_4 + 10, SE025, 117 );
setStartTimeMs( SE025,  583 );
setPitch( spep_4 + 10, SE025, 400 );
setTimeStretch( SE025, 1.27, 30, 4 );
SE028 = playSeVer2( spep_4 + 16, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE028, 127 );
SE029 = playSeVer2( spep_4 + 16, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE029, 69 );
SE030 = playSeVer2( spep_4 + 16, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 16, SE030, 116 );
SE031 = playSeVer2( spep_4 + 20, 1155, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 20, SE031, 160 );

--気弾迫る
SE032 = playSeVer2( spep_4 + 54, 1021, "", 0, 0, 0, -1);

--敵ヒット
SE033 = playSeVer2( spep_4 + 90, 1011, "",spep_4 + 192, 0, 4, -1);
SE034 = playSeVer2( spep_4 + 90, 1023, "",spep_4 + 192, 0, 4, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 140, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_5= spep_4 + 136;
------------------------------------------------------
--二人で追撃
------------------------------------------------------
-- ** エフェクト等 ** --
dassyu = entryEffect( spep_5 + 0, SP_10, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, dassyu, 0, 0, 0 );
setEffMoveKey( spep_5 + 44, dassyu, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, dassyu, -1.0, 1.0 );
setEffScaleKey( spep_5 + 44, dassyu, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, dassyu, 0 );
setEffRotateKey( spep_5 + 44, dassyu, 0 );
setEffAlphaKey( spep_5 + 0, dassyu, 255 );
setEffAlphaKey( spep_5 + 42, dassyu, 255 );
setEffAlphaKey( spep_5 + 43, dassyu, 255 );
setEffAlphaKey( spep_5 + 44, dassyu, 0 );

--SE
--二人突っ込んでくる
SE035 = playSeVer2( spep_5 + 0, 1182, "",spep_5 + 62, 0, 10, -1);
SE036 = playSeVer2( spep_5 + 0, 9, "",spep_5 + 62, 0, 10, -1);
setSeVolumeByWorkId( spep_5 + 0, SE036, 79 );
SE037 = playSeVer2( spep_5 + 0, 1167, "",spep_5 + 62, 0, 10, 0.5);
setSeVolumeByWorkId( spep_5 + 0, SE037, 61 );
setPitch( spep_5 + 0, SE037, -400 );
setTimeStretch( SE037, 0.73, 30, 4 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 50, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_7= spep_5 + 44;
------------------------------------------------------
--二人でキック
------------------------------------------------------
-- ** エフェクト等 ** --
kick2_f = entryEffect( spep_7 + 0, SP_11x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick2_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick2_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick2_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick2_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick2_f, 0 );
setEffRotateKey( spep_7 + 116, kick2_f, 0 );
setEffAlphaKey( spep_7 + 0, kick2_f, 255 );
setEffAlphaKey( spep_7 + 114, kick2_f, 255 );
setEffAlphaKey( spep_7 + 115, kick2_f, 255 );
setEffAlphaKey( spep_7 + 116, kick2_f, 0 );

-- ** エフェクト等 ** --
kick2_b = entryEffect( spep_7 + 0, SP_12x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, kick2_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 116, kick2_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, kick2_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 116, kick2_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, kick2_b, 0 );
setEffRotateKey( spep_7 + 116, kick2_b, 0 );
setEffAlphaKey( spep_7 + 0, kick2_b, 255 );
setEffAlphaKey( spep_7 + 114, kick2_b, 255 );
setEffAlphaKey( spep_7 + 115, kick2_b, 255 );
setEffAlphaKey( spep_7 + 116, kick2_b, 0 );

--敵の動き
setDisp( spep_7-3 + 50, 1, 1 );

changeAnime( spep_7-3 + 50, 1, 108 );

setMoveKey( spep_7-3 + 50, 1, 132.5, -48.6 , 0 );
setMoveKey( spep_7-3 + 52, 1, 282.7, -57.2 , 0 );
setMoveKey( spep_7-3 + 54, 1, 251.2, -65.6 , 0 );
setMoveKey( spep_7-3 + 56, 1, 205.8, -54.7 , 0 );
setMoveKey( spep_7-3 + 58, 1, 176.1, -54.3 , 0 );
setMoveKey( spep_7-3 + 60, 1, 129, -41.6 , 0 );
setMoveKey( spep_7-3 + 62, 1, 136.6, -53.9 , 0 );
setMoveKey( spep_7-3 + 64, 1, 130.2, -46.9 , 0 );
setMoveKey( spep_7-3 + 66, 1, 139.5, -50.4 , 0 );
setMoveKey( spep_7-3 + 68, 1, 131.4, -41.6 , 0 );
setMoveKey( spep_7-3 + 70, 1, 139, -53.9 , 0 );
setMoveKey( spep_7-3 + 72, 1, 132.6, -46.9 , 0 );
setMoveKey( spep_7-3 + 74, 1, 142, -50.4 , 0 );
setMoveKey( spep_7-3 + 76, 1, 137.3, -48.6 , 0 );
setMoveKey( spep_7-3 + 78, 1, 138, -48.6 , 0 );
setMoveKey( spep_7-3 + 80, 1, 138.6, -48.6 , 0 );
setMoveKey( spep_7-3 + 82, 1, 139.2, -48.6 , 0 );
setMoveKey( spep_7-3 + 84, 1, 139.8, -48.6 , 0 );
setMoveKey( spep_7-3 + 86, 1, 140.4, -48.6 , 0 );
setMoveKey( spep_7-3 + 88, 1, 141, -48.6 , 0 );
setMoveKey( spep_7-3 + 90, 1, 151.5, -48.7 , 0 );
setMoveKey( spep_7-3 + 92, 1, 162, -48.8 , 0 );
setMoveKey( spep_7-3 + 94, 1, 172.5, -49 , 0 );
setMoveKey( spep_7-3 + 96, 1, 183, -49.1 , 0 );
setMoveKey( spep_7-3 + 98, 1, 193.5, -49.2 , 0 );
setMoveKey( spep_7-3 + 100, 1, 204, -49.3 , 0 );
setMoveKey( spep_7-3 + 102, 1, 214.5, -49.4 , 0 );
setMoveKey( spep_7-3 + 104, 1, 215.5, -49.8 , 0 );
setMoveKey( spep_7-3 + 106, 1, 216.6, -50.1 , 0 );
setMoveKey( spep_7-3 + 108, 1, 217.6, -50.5 , 0 );
setMoveKey( spep_7-3 + 110, 1, 218.6, -50.8 , 0 );
setMoveKey( spep_7-3 + 112, 1, 219.6, -51.2 , 0 );
setMoveKey( spep_7-3 + 114, 1, 220.6, -51.5 , 0 );
setMoveKey( spep_7-3 + 116, 1, 221.6, -51.8 , 0 );
setMoveKey( spep_7-3 + 118, 1, 222.6, -52.2 , 0 );

setScaleKey( spep_7-3 + 50, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 52, 1, 3.02,3.02);
setScaleKey( spep_7-3 + 54, 1, 2.74,2.74);
setScaleKey( spep_7-3 + 56, 1, 2.45,2.45);
setScaleKey( spep_7-3 + 58, 1, 2.17,2.17);
setScaleKey( spep_7-3 + 60, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 88, 1, 1.89,1.89);
setScaleKey( spep_7-3 + 90, 1, 1.82,1.82);
setScaleKey( spep_7-3 + 92, 1, 1.77,1.77);
setScaleKey( spep_7-3 + 94, 1, 1.71,1.71);
setScaleKey( spep_7-3 + 96, 1, 1.64,1.64);
setScaleKey( spep_7-3 + 98, 1, 1.58,1.58);
setScaleKey( spep_7-3 + 100, 1, 1.53,1.53);
setScaleKey( spep_7-3 + 102, 1, 1.47,1.47);
setScaleKey( spep_7-3 + 104, 1, 1.44,1.44);
setScaleKey( spep_7-3 + 106, 1, 1.42,1.42);
setScaleKey( spep_7-3 + 108, 1, 1.4,1.4);
setScaleKey( spep_7-3 + 110, 1, 1.38,1.38);
setScaleKey( spep_7-3 + 112, 1, 1.37,1.37);
setScaleKey( spep_7-3 + 114, 1, 1.35,1.35);
setScaleKey( spep_7-3 + 116, 1, 1.33,1.33);
setScaleKey( spep_7-3 + 118, 1, 1.31,1.31);

setRotateKey( spep_7-3 + 50, 1, 17.6 );
setRotateKey( spep_7-3 + 52, 1, 17.7 );
setRotateKey( spep_7-3 + 60, 1, 17.7 );
setRotateKey( spep_7-3 + 62, 1, 17.9 );
setRotateKey( spep_7-3 + 64, 1, 18 );
setRotateKey( spep_7-3 + 66, 1, 18.2 );
setRotateKey( spep_7-3 + 68, 1, 18.3 );
setRotateKey( spep_7-3 + 70, 1, 18.5 );
setRotateKey( spep_7-3 + 72, 1, 18.7 );
setRotateKey( spep_7-3 + 74, 1, 18.8 );
setRotateKey( spep_7-3 + 76, 1, 19 );
setRotateKey( spep_7-3 + 78, 1, 19.1 );
setRotateKey( spep_7-3 + 80, 1, 19.3 );
setRotateKey( spep_7-3 + 82, 1, 19.5 );
setRotateKey( spep_7-3 + 84, 1, 19.6 );
setRotateKey( spep_7-3 + 86, 1, 19.8 );
setRotateKey( spep_7-3 + 88, 1, 19.9 );
setRotateKey( spep_7-3 + 90, 1, 21.3 );
setRotateKey( spep_7-3 + 92, 1, 22.7 );
setRotateKey( spep_7-3 + 94, 1, 24.1 );
setRotateKey( spep_7-3 + 96, 1, 25.5 );
setRotateKey( spep_7-3 + 98, 1, 26.9 );
setRotateKey( spep_7-3 + 100, 1, 28.2 );
setRotateKey( spep_7-3 + 102, 1, 29.6 );
setRotateKey( spep_7-3 + 108, 1, 29.6 );
setRotateKey( spep_7-3 + 110, 1, 29.5 );
setRotateKey( spep_7-3 + 116, 1, 29.5 );
setRotateKey( spep_7-3 + 118, 1, 29.4 );

--SE
--蹴りポーズで突っ込む
SE039 = playSeVer2( spep_7 + 0, 1019, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_7 + 0, 9, "",spep_7 + 60, 0, 10, -1);
SE041 = playSeVer2( spep_7 + 0, 1117, "",spep_7 + 60, 0, 10, -1);
SE042 = playSeVer2( spep_7 + 0, 1314, "",spep_7 + 68, 0, 10, -1);
setSeVolumeByWorkId( spep_7 + 0, SE042, 79 );

--二人キック
SE043 = playSeVer2( spep_7 + 50, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 50, SE043, 79 );
SE044 = playSeVer2( spep_7 + 52, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 52, SE044, 72 );
SE045 = playSeVer2( spep_7 + 54, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_7 + 54, SE045, 81 );

--敵飛んでいく
SE046 = playSeVer2( spep_7 + 86, 1183, "",spep_7 + 152, 0, 16, -1);
SE047 = playSeVer2( spep_7 + 86, 1121, "",spep_7 + 152, 0, 16, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_7 + 0, 0, 200, 0, 0, 0, 0, 255 );  --黒　背景

-- ** 次の準備 ** --
spep_8= spep_7 + 116;
------------------------------------------------------
--フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_8 + 0, SP_13x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_8 + 0, finish, 0, 0, 0 );
setEffMoveKey( spep_8 + 150, finish, 0, 0, 0 );
setEffScaleKey( spep_8 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_8 + 150, finish, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, finish, 0 );
setEffRotateKey( spep_8 + 150, finish, 0 );
setEffAlphaKey( spep_8 + 0, finish, 255 );
setEffAlphaKey( spep_8 + 150, finish, 255 );

--敵の動き
setDisp( spep_8-1 + 20, 1, 0 );

changeAnime( spep_8+ 0, 1, 105 );

setMoveKey( spep_8 + 0, 1, 0, -247.9 , 0 );
--setMoveKey( spep_8-3 + 2, 1, 0, -223.9 , 0 );
setMoveKey( spep_8-3 + 4, 1, 0, -199.9 , 0 );
setMoveKey( spep_8-3 + 6, 1, 0, -194.3 , 0 );
setMoveKey( spep_8-3 + 8, 1, 0, -188.7 , 0 );
setMoveKey( spep_8-3 + 10, 1, 0, -183 , 0 );
setMoveKey( spep_8-3 + 12, 1, 0, -177.4 , 0 );
setMoveKey( spep_8-3 + 14, 1, 0, -171.7 , 0 );
setMoveKey( spep_8-3 + 16, 1, 0, -166.1 , 0 );
setMoveKey( spep_8-3 + 18, 1, 0, -160.5 , 0 );
setMoveKey( spep_8-1 + 20, 1, 0, -154.8 , 0 );

setScaleKey( spep_8 + 0, 1, 3, 3 );
--setScaleKey( spep_8-3 + 2, 1, 2.25, 2.25 );
setScaleKey( spep_8-3 + 4, 1, 1.5, 1.5 );
setScaleKey( spep_8-3 + 6, 1, 1.35, 1.35 );
setScaleKey( spep_8-3 + 8, 1, 1.2, 1.2 );
setScaleKey( spep_8-3 + 10, 1, 1.05, 1.05 );
setScaleKey( spep_8-3 + 12, 1, 0.9, 0.9 );
setScaleKey( spep_8-3 + 14, 1, 0.75, 0.75 );
setScaleKey( spep_8-3 + 16, 1, 0.6, 0.6 );
setScaleKey( spep_8-3 + 18, 1, 0.45, 0.45 );
setScaleKey( spep_8-1 + 20, 1, 0.3, 0.3 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8-1 + 20, 1, 0 );

--SE
--岩激突
SE048 = playSeVer2( spep_8 + 20, 1159, "", 0, 0, 0, -1);

--終わり
dealDamage(spep_8 + 20);
endPhase( spep_8 + 140 ); 
end