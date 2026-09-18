--1022831_UR_カリフラ&ケール_必殺技：ユニオンシューティング
--sp_effect_a2_00168
--sp2257

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
SP_01  = 158298; --カリフラ、ケール 登場 ef_001
SP_02  = 158299; --正面突進〜フィニッシュ ef_002
SP_03  = 158300; --正面突進〜フィニッシュ ef_003

--エフェクト(敵)
SP_01x = 158298; --カリフラ、ケール 登場 ef_001
SP_02x = 158301; --敵用：正面突進〜フィニッシュ ef_002r
SP_03x = 158302; --敵用：正面突進〜フィニッシュ ef_003r

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
--カリフラ、ケール 登場
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --カリフラ、ケール 登場 ef_001
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +20;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
SE002 = playSeVer2( spep_0 + 0, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 162 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE004 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 158 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE001X = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE001X = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE001X = playSe( spep_1, SE_05);
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
--正面突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --正面突進〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 786, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 786, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 786, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 786, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --正面突進〜フィニッシュ ef_003
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 786, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 786, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 786, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 786, finish_b, 255 );


-- ** 音 ** --
--ダッシュ
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 78, -1);
SE010 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 780, 0,  0, 0, 0, 255 ); --くろ 背景


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001X, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );

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

--文字エントリー
ctgogogo2 = entryEffectLife( spep_2-3 + 390,  10008, 54+2, 0x100, -1, 0, 154, 370.8 );

setEffMoveKey( spep_2-3 + 390, ctgogogo2, 154, 370.8 , 0 );
setEffMoveKey( spep_2-3 + 392, ctgogogo2, 151.2, 369.5 , 0 );
setEffMoveKey( spep_2-3 + 394, ctgogogo2, 156.8, 374.5 , 0 );
setEffMoveKey( spep_2-3 + 396, ctgogogo2, 150.4, 367.5 , 0 );
setEffMoveKey( spep_2-3 + 398, ctgogogo2, 157.6, 372.3 , 0 );
setEffMoveKey( spep_2-3 + 400, ctgogogo2, 151.2, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 402, ctgogogo2, 155.3, 373.3 , 0 );
setEffMoveKey( spep_2-3 + 404, ctgogogo2, 150.8, 370.5 , 0 );
setEffMoveKey( spep_2-3 + 406, ctgogogo2, 157, 369.7 , 0 );
setEffMoveKey( spep_2-3 + 408, ctgogogo2, 153, 375 , 0 );
setEffMoveKey( spep_2-3 + 410, ctgogogo2, 152.6, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 412, ctgogogo2, 157.8, 372.8 , 0 );
setEffMoveKey( spep_2-3 + 414, ctgogogo2, 150.1, 371.5 , 0 );
setEffMoveKey( spep_2-3 + 416, ctgogogo2, 156.5, 369.9 , 0 );
setEffMoveKey( spep_2-3 + 418, ctgogogo2, 150.4, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 420, ctgogogo2, 155.2, 374.9 , 0 );
setEffMoveKey( spep_2-3 + 422, ctgogogo2, 151.2, 370 , 0 );
setEffMoveKey( spep_2-3 + 424, ctgogogo2, 156.7, 370 , 0 );
setEffMoveKey( spep_2-3 + 426, ctgogogo2, 151.2, 371.1 , 0 );
setEffMoveKey( spep_2-3 + 428, ctgogogo2, 157.1, 371.1 , 0 );
setEffMoveKey( spep_2-3 + 430, ctgogogo2, 150.2, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 432, ctgogogo2, 157.7, 372.8 , 0 );
setEffMoveKey( spep_2-3 + 434, ctgogogo2, 151.7, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 436, ctgogogo2, 153.3, 374.2 , 0 );
setEffMoveKey( spep_2-3 + 438, ctgogogo2, 156.7, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 440, ctgogogo2, 149.9, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 442, ctgogogo2, 155.9, 375 , 0 );
setEffMoveKey( spep_2-1 + 444, ctgogogo2, 152.3, 368 , 0 );

setEffScaleKey( spep_2-3 + 390, ctgogogo2, 2, 2 );
setEffScaleKey( spep_2-1 + 444, ctgogogo2, 2, 2 );

setEffRotateKey( spep_2-3 + 390, ctgogogo2, 0 );
setEffRotateKey( spep_2-1 + 444, ctgogogo2, 0 );

setEffAlphaKey( spep_2-3 + 390, ctgogogo2, 255 );
setEffAlphaKey( spep_2-1 + 444, ctgogogo2, 255 );


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 180, 1, 1);
setDisp( spep_2-1 + 230, 1, 0);

changeAnime( spep_2-3 + 180, 1, 104);

setMoveKey( spep_2-3 + 180, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 182, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 184, 1, -1.4, -49.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -1.3, -49.7 , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.3, -49.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.2, -49.2 , 0 );
setMoveKey( spep_2-3 + 192, 1, -1.1, -48.8 , 0 );
setMoveKey( spep_2-3 + 194, 1, -1.1, -48.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -1, -47.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -0.9, -46.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, -0.8, -46 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.8, -45 , 0 );
setMoveKey( spep_2-3 + 204, 1, -0.7, -43.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -0.6, -42.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, -0.6, -40.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, -0.5, -38.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, -0.4, -36.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, -0.4, -33.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, -0.3, -29.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, -0.2, -24.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, -0.2, -17.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 224, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 226, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 228, 1, 0, 12 , 0 );
setMoveKey( spep_2-1 + 230, 1, -10, -2.3 , 0 );

setScaleKey( spep_2-3 + 180, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 188, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 192, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 194, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 196, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 198, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 200, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 210, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 212, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 214, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 216, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 218, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 220, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 230, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 180, 1, 0 );
setRotateKey( spep_2-1 + 230, 1, 0 );


--敵の動き2
setDisp( spep_2-3 + 516, 1, 1);
setDisp( spep_2-1 + 574, 1, 0);

changeAnime( spep_2-3 + 516, 1, 105);

setMoveKey( spep_2-3 + 516, 1, 6, -2.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, 26.6, 3.1 , 0 );
setMoveKey( spep_2-3 + 520, 1, 26.8, 4.6 , 0 );
setMoveKey( spep_2-3 + 522, 1, 36.6, 4.3 , 0 );
setMoveKey( spep_2-3 + 524, 1, 50.1, -15.8 , 0 );
setMoveKey( spep_2-3 + 526, 1, 59.2, -21.6 , 0 );
setMoveKey( spep_2-3 + 528, 1, 63.9, -13.2 , 0 );
setMoveKey( spep_2-3 + 530, 1, 64.2, -32.5 , 0 );
setMoveKey( spep_2-3 + 532, 1, 66.2, -23.6 , 0 );
setMoveKey( spep_2-3 + 534, 1, 80.9, -35.1 , 0 );
setMoveKey( spep_2-3 + 536, 1, 88.2, -39.7 , 0 );
setMoveKey( spep_2-3 + 538, 1, 99.9, -38.5 , 0 );
setMoveKey( spep_2-3 + 540, 1, 105, -61.3 , 0 );
setMoveKey( spep_2-3 + 542, 1, 103.9, -53 , 0 );
setMoveKey( spep_2-3 + 544, 1, 100.8, -67 , 0 );
setMoveKey( spep_2-3 + 546, 1, 106.2, -70.4 , 0 );
setMoveKey( spep_2-3 + 548, 1, 117.2, -47.4 , 0 );
setMoveKey( spep_2-3 + 550, 1, 113.5, -78 , 0 );
setMoveKey( spep_2-3 + 552, 1, 114.2, -60.3 , 0 );
setMoveKey( spep_2-3 + 554, 1, 101.1, -94 , 0 );
setMoveKey( spep_2-3 + 556, 1, 104.6, -96.3 , 0 );
setMoveKey( spep_2-3 + 558, 1, 119, -86.7 , 0 );
setMoveKey( spep_2-3 + 560, 1, 110.5, -100.1 , 0 );
setMoveKey( spep_2-3 + 562, 1, 122.2, -80.1 , 0 );
setMoveKey( spep_2-3 + 564, 1, 117, -114.9 , 0 );
setMoveKey( spep_2-3 + 566, 1, 118.7, -116 , 0 );
setMoveKey( spep_2-3 + 568, 1, 113.2, -83.3 , 0 );
setMoveKey( spep_2-3 + 570, 1, 118.4, -113.2 , 0 );
setMoveKey( spep_2-3 + 572, 1, 110.7, -92.2 , 0 );
setMoveKey( spep_2-1 + 574, 1, 103.5, -107.1 , 0 );

setScaleKey( spep_2-3 + 516, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 518, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 520, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 522, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 524, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 526, 1, 1.04, 1.04 );
setScaleKey( spep_2-3 + 528, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 530, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 532, 1, 1, 1 );
setScaleKey( spep_2-3 + 534, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 536, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 538, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 540, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 542, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 544, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 546, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 548, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 550, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 552, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 554, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 556, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 558, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 564, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 566, 1, 0.9, 0.9 );
setScaleKey( spep_2-1 + 574, 1, 0.9, 0.9 );

setRotateKey( spep_2-3 + 516, 1, 15 );
setRotateKey( spep_2-3 + 518, 1, 16 );
setRotateKey( spep_2-3 + 520, 1, 17 );
setRotateKey( spep_2-3 + 522, 1, 17.9 );
setRotateKey( spep_2-3 + 524, 1, 18.9 );
setRotateKey( spep_2-3 + 526, 1, 19.7 );
setRotateKey( spep_2-3 + 528, 1, 20.6 );
setRotateKey( spep_2-3 + 530, 1, 21.4 );
setRotateKey( spep_2-3 + 532, 1, 22.1 );
setRotateKey( spep_2-3 + 534, 1, 22.9 );
setRotateKey( spep_2-3 + 536, 1, 23.6 );
setRotateKey( spep_2-3 + 538, 1, 24.2 );
setRotateKey( spep_2-3 + 540, 1, 24.8 );
setRotateKey( spep_2-3 + 542, 1, 25.4 );
setRotateKey( spep_2-3 + 544, 1, 26 );
setRotateKey( spep_2-3 + 546, 1, 26.5 );
setRotateKey( spep_2-3 + 548, 1, 27 );
setRotateKey( spep_2-3 + 550, 1, 27.4 );
setRotateKey( spep_2-3 + 552, 1, 27.8 );
setRotateKey( spep_2-3 + 554, 1, 28.2 );
setRotateKey( spep_2-3 + 556, 1, 28.6 );
setRotateKey( spep_2-3 + 558, 1, 28.9 );
setRotateKey( spep_2-3 + 560, 1, 29.1 );
setRotateKey( spep_2-3 + 562, 1, 29.4 );
setRotateKey( spep_2-3 + 564, 1, 29.6 );
setRotateKey( spep_2-3 + 566, 1, 29.7 );
setRotateKey( spep_2-3 + 568, 1, 29.8 );
setRotateKey( spep_2-3 + 570, 1, 29.9 );
setRotateKey( spep_2-3 + 572, 1, 30 );
setRotateKey( spep_2-1 + 574, 1, 30 );


--敵の動き3
setDisp( spep_2-3 + 604, 1, 1);
setDisp( spep_2-1 + 674, 1, 0);

changeAnime( spep_2-3 + 604, 1, 106);
changeAnime( spep_2-3 + 618, 1, 108);

setMoveKey( spep_2-3 + 604, 1, 586.7, -76.1 , 0 );
setMoveKey( spep_2-3 + 606, 1, 577.2, -79.7 , 0 );
setMoveKey( spep_2-3 + 608, 1, 524.6, -65.3 , 0 );
setMoveKey( spep_2-3 + 610, 1, 449.3, -60.3 , 0 );
setMoveKey( spep_2-3 + 612, 1, 343.6, -40.4 , 0 );
setMoveKey( spep_2-3 + 614, 1, 198.5, -24 , 0 );
setMoveKey( spep_2-3 + 616, 1, 34.9, 2.1 , 0 );
setMoveKey( spep_2-3 + 617, 1, 34.9, 2.1 , 0 );

setMoveKey( spep_2-3 + 618, 1, 34.8, -1.8 , 0 );
setMoveKey( spep_2-3 + 620, 1, 58.2, -0.4 , 0 );
setMoveKey( spep_2-3 + 622, 1, 88.4, -13.1 , 0 );
setMoveKey( spep_2-3 + 624, 1, 143.8, -18.9 , 0 );
setMoveKey( spep_2-3 + 626, 1, 219, -39.9 , 0 );
setMoveKey( spep_2-3 + 628, 1, 336.3, -57.5 , 0 );
setMoveKey( spep_2-3 + 630, 1, 475.9, -89.4 , 0 );
setMoveKey( spep_2-3 + 632, 1, 588.1, -105.1 , 0 );
setMoveKey( spep_2-3 + 634, 1, 629.4, -115.6 , 0 );
setMoveKey( spep_2-3 + 635, 1, 629.4, -115.6 , 0 );

setMoveKey( spep_2-3 + 636, 1, -204.9, 144 , 0 );
setMoveKey( spep_2-3 + 638, 1, -142.4, 111.9 , 0 );
setMoveKey( spep_2-3 + 640, 1, -83.7, 82 , 0 );
setMoveKey( spep_2-3 + 642, 1, -43.4, 55.5 , 0 );
setMoveKey( spep_2-3 + 644, 1, -6.3, 33.3 , 0 );
setMoveKey( spep_2-3 + 646, 1, 13.4, 9.2 , 0 );
setMoveKey( spep_2-3 + 648, 1, 27.5, -3.6 , 0 );
setMoveKey( spep_2-3 + 650, 1, 29.3, -23 , 0 );
setMoveKey( spep_2-3 + 652, 1, 23.7, -30.9 , 0 );
setMoveKey( spep_2-3 + 654, 1, 4.1, -41.2 , 0 );
setMoveKey( spep_2-3 + 656, 1, -0.6, -52.9 , 0 );
setMoveKey( spep_2-3 + 658, 1, -0.6, -63.7 , 0 );
setMoveKey( spep_2-3 + 660, 1, 13.1, -85.3 , 0 );
setMoveKey( spep_2-3 + 662, 1, 35.1, -101.5 , 0 );
setMoveKey( spep_2-3 + 664, 1, 69.7, -151 , 0 );
setMoveKey( spep_2-3 + 666, 1, 43.4, -105.5 , 0 );
setMoveKey( spep_2-3 + 668, 1, 27.8, -100.9 , 0 );
setMoveKey( spep_2-3 + 670, 1, 20.3, -130.5 , 0 );
setMoveKey( spep_2-3 + 672, 1, 22.1, -113.7 , 0 );
setMoveKey( spep_2-1 + 674, 1, 22.1, -141.7 , 0 );

setScaleKey( spep_2-3 + 604, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 635, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 636, 1, 0.7, 0.7 );
setScaleKey( spep_2-1 + 674, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 604, 1, 0 );
setRotateKey( spep_2-3 + 606, 1, -0.4 );
setRotateKey( spep_2-3 + 608, 1, -1.7 );
setRotateKey( spep_2-3 + 610, 1, -3.8 );
setRotateKey( spep_2-3 + 612, 1, -6.7 );
setRotateKey( spep_2-3 + 614, 1, -10.4 );
setRotateKey( spep_2-3 + 616, 1, -15 );
setRotateKey( spep_2-3 + 617, 1, -15 );

setRotateKey( spep_2-3 + 618, 1, 29.8 );
setRotateKey( spep_2-3 + 620, 1, 29.3 );
setRotateKey( spep_2-3 + 622, 1, 28.5 );
setRotateKey( spep_2-3 + 624, 1, 27.2 );
setRotateKey( spep_2-3 + 626, 1, 25.2 );
setRotateKey( spep_2-3 + 628, 1, 22.4 );
setRotateKey( spep_2-3 + 630, 1, 18.8 );
setRotateKey( spep_2-3 + 632, 1, 16 );
setRotateKey( spep_2-3 + 634, 1, 15 );
setRotateKey( spep_2-3 + 635, 1, 15 );

setRotateKey( spep_2-3 + 636, 1, 29.9 );
setRotateKey( spep_2-3 + 638, 1, 31.3 );
setRotateKey( spep_2-3 + 640, 1, 32.7 );
setRotateKey( spep_2-3 + 642, 1, 34.2 );
setRotateKey( spep_2-3 + 644, 1, 35.6 );
setRotateKey( spep_2-3 + 646, 1, 37 );
setRotateKey( spep_2-3 + 648, 1, 38.5 );
setRotateKey( spep_2-3 + 650, 1, 39.9 );
setRotateKey( spep_2-3 + 652, 1, 41.3 );
setRotateKey( spep_2-3 + 654, 1, 42.8 );
setRotateKey( spep_2-3 + 656, 1, 44.2 );
setRotateKey( spep_2-3 + 658, 1, 45.6 );
setRotateKey( spep_2-3 + 660, 1, 47.1 );
setRotateKey( spep_2-3 + 662, 1, 48.5 );
setRotateKey( spep_2-3 + 664, 1, 49.9 );
setRotateKey( spep_2-1 + 674, 1, 49.9 );


-- ** 音 ** --
--カリフラ気弾溜め
SE011 = playSeVer2( spep_2 + 46, 1282, "",spep_2 + 102, 0, 6, -1);

--腕振りかぶる
SE012 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);

--カリフラ気弾発射
SE014 = playSeVer2( spep_2 + 94, 1212, "",spep_2 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 94, SE014, 73 );
SE015 = playSeVer2( spep_2 + 94, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE015, 133 );
SE016 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);

--ケール気弾溜め
SE017 = playSeVer2( spep_2 + 112, 1262, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 174 );
SE018 = playSeVer2( spep_2 + 112, 1276, "",spep_2 + 170, 0, 6, -1);
setPitch( spep_2 + 112, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );

--ケール気弾発射
SE019 = playSeVer2( spep_2 + 160, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 160, 1022, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 160, 1193, "",spep_2 + 248, 0, 32, -1);
SE013 = playSeVer2( spep_2 + 178, 1212, "",spep_2 + 246, 16, 16, -1);
setStartTimeMs( SE013,  1383 );

--爆発
SE022 = playSeVer2( spep_2 + 222, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 258, 1072, "", 0, 0, 0, -1);

--二人気弾溜め
SE025 = playSeVer2( spep_2 + 326, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE025, 99 );
setTimeStretch( SE025, 1.25, 30, 4 );
SE026 = playSeVer2( spep_2 + 326, 1296, "",spep_2 + 474, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 326, SE026, 102 );
setPitch( spep_2 + 326, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 326, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE027, 93 );
setTimeStretch( SE027, 1.11, 30, 4 );

--二人アップ
SE028 = playSeVer2( spep_2 + 388, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 388, SE028, 69 );
SE029 = playSeVer2( spep_2 + 392, 1226, "",spep_2 + 490, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 392, SE029, 65 );

--気弾発射
SE030 = playSeVer2( spep_2 + 460, 1145, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 460, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 460, SE031, 80 );
SE032 = playSeVer2( spep_2 + 460, 1193, "",spep_2 + 676, 0, 14, 0.6);
setSeVolumeByWorkId( spep_2 + 460, SE032, 106 );
SE033 = playSeVer2( spep_2 + 460, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE033, 86 );

--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 574, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 574, SE034, 191 );

--飲み込まれる
SE035 = playSeVer2( spep_2 + 614, 1021, "", 0, 0, 0, -1);

--地面突っ込む
SE036 = playSeVer2( spep_2 + 662, 1159, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_2 + 694, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 694, 1067, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 702, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 702, SE039, 95 );
setPitch( spep_2 + 702, SE039, -600 );
setTimeStretch( SE039, 0.6, 30, 4 );


--終わり
dealDamage(spep_2 + 662);
endPhase( spep_2 + 776 );

else

------------------------------------------------------------------------------------------------------------
-- 敵側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--カリフラ、ケール 登場
------------------------------------------------------
--はじめの準備
spep_0=0;


-- ** エフェクト等 ** --
tame = entryEffect( spep_0 + 0, SP_01x, 0x80, -1, 0, 0, 0 );  --カリフラ、ケール 登場 ef_001
setEffMoveKey( spep_0 + 0, tame, 0, 0, 0 );
setEffMoveKey( spep_0 + 110, tame, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_0 + 110, tame, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, tame, 0 );
setEffRotateKey( spep_0 + 110, tame, 0 );
setEffAlphaKey( spep_0 + 0, tame, 255 );
setEffAlphaKey( spep_0 + 110, tame, 255 );

--顔カットインのタイミング指定
spep_x=spep_0 +20;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 100, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  100,  515);
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

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);


-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 83 );
SE002 = playSeVer2( spep_0 + 0, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 162 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--着地
SE004 = playSeVer2( spep_0 + 34, 1107, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 34, SE004, 158 );
SE005 = playSeVer2( spep_0 + 40, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 40, SE005, 158 );
SE006 = playSeVer2( spep_0 + 42, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE006, 158 );

--白フェード
entryFade( spep_0 + 102, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備 
spep_1=spep_0+110;


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
SE001X = playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
--正面突進〜フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02x, 0x100, -1, 0, 0, 0 );  --敵用：正面突進〜フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_2 + 786, finish_f, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 786, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_f, 0 );
setEffRotateKey( spep_2 + 786, finish_f, 0 );
setEffAlphaKey( spep_2 + 0, finish_f, 255 );
setEffAlphaKey( spep_2 + 786, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_2 + 0, SP_03x, 0x80, -1, 0, 0, 0 );  --敵用：正面突進〜フィニッシュ ef_003r
setEffMoveKey( spep_2 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_2 + 786, finish_b, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 786, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_b, 0 );
setEffRotateKey( spep_2 + 786, finish_b, 0 );
setEffAlphaKey( spep_2 + 0, finish_b, 255 );
setEffAlphaKey( spep_2 + 786, finish_b, 255 );


-- ** 音 ** --
--ダッシュ
SE008 = playSeVer2( spep_2 + 0, 1182, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 0, 1278, "",spep_2 + 126, 0, 78, -1);
SE010 = playSeVer2( spep_2 + 0, 9, "", 0, 0, 0, -1);

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 780, 0,  0, 0, 0, 255 ); --くろ 背景


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 30; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001X, 0 );
    stopSe( SP_dodge - 12, SE008, 0 );
    stopSe( SP_dodge - 12, SE009, 0 );
    stopSe( SP_dodge - 12, SE010, 0 );

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

--文字エントリー
ctgogogo2 = entryEffectLife( spep_2-3 + 390,  10008, 54+2, 0x100, -1, 0, -154, 370.8 );

setEffMoveKey( spep_2-3 + 390, ctgogogo2, -154, 370.8 , 0 );
setEffMoveKey( spep_2-3 + 392, ctgogogo2, -151.2, 369.5 , 0 );
setEffMoveKey( spep_2-3 + 394, ctgogogo2, -156.8, 374.5 , 0 );
setEffMoveKey( spep_2-3 + 396, ctgogogo2, -150.4, 367.5 , 0 );
setEffMoveKey( spep_2-3 + 398, ctgogogo2, -157.6, 372.3 , 0 );
setEffMoveKey( spep_2-3 + 400, ctgogogo2, -151.2, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 402, ctgogogo2, -155.3, 373.3 , 0 );
setEffMoveKey( spep_2-3 + 404, ctgogogo2, -150.8, 370.5 , 0 );
setEffMoveKey( spep_2-3 + 406, ctgogogo2, -157, 369.7 , 0 );
setEffMoveKey( spep_2-3 + 408, ctgogogo2, -153, 375 , 0 );
setEffMoveKey( spep_2-3 + 410, ctgogogo2, -152.6, 368.5 , 0 );
setEffMoveKey( spep_2-3 + 412, ctgogogo2, -157.8, 372.8 , 0 );
setEffMoveKey( spep_2-3 + 414, ctgogogo2, -150.1, 371.5 , 0 );
setEffMoveKey( spep_2-3 + 416, ctgogogo2, -156.5, 369.9 , 0 );
setEffMoveKey( spep_2-3 + 418, ctgogogo2, -150.4, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 420, ctgogogo2, -155.2, 374.9 , 0 );
setEffMoveKey( spep_2-3 + 422, ctgogogo2, -151.2, 370 , 0 );
setEffMoveKey( spep_2-3 + 424, ctgogogo2, -156.7, 370 , 0 );
setEffMoveKey( spep_2-3 + 426, ctgogogo2, -151.2, 371.1 , 0 );
setEffMoveKey( spep_2-3 + 428, ctgogogo2, -157.1, 371.1 , 0 );
setEffMoveKey( spep_2-3 + 430, ctgogogo2, -150.2, 367.7 , 0 );
setEffMoveKey( spep_2-3 + 432, ctgogogo2, -157.7, 372.8 , 0 );
setEffMoveKey( spep_2-3 + 434, ctgogogo2, -151.7, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 436, ctgogogo2, -153.3, 374.2 , 0 );
setEffMoveKey( spep_2-3 + 438, ctgogogo2, -156.7, 368.8 , 0 );
setEffMoveKey( spep_2-3 + 440, ctgogogo2, -149.9, 369.8 , 0 );
setEffMoveKey( spep_2-3 + 442, ctgogogo2, -155.9, 375 , 0 );
setEffMoveKey( spep_2-1 + 444, ctgogogo2, -152.3, 368 , 0 );

setEffScaleKey( spep_2-3 + 390, ctgogogo2, 2, 2 );
setEffScaleKey( spep_2-1 + 444, ctgogogo2, 2, 2 );

setEffRotateKey( spep_2-3 + 390, ctgogogo2, 0 );
setEffRotateKey( spep_2-1 + 444, ctgogogo2, 0 );

setEffAlphaKey( spep_2-3 + 390, ctgogogo2, 255 );
setEffAlphaKey( spep_2-1 + 444, ctgogogo2, 255 );


-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2-3 + 180, 1, 1);
setDisp( spep_2-1 + 230, 1, 0);

changeAnime( spep_2-3 + 180, 1, 104);

setMoveKey( spep_2-3 + 180, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 182, 1, -1.5, -50 , 0 );
setMoveKey( spep_2-3 + 184, 1, -1.4, -49.9 , 0 );
setMoveKey( spep_2-3 + 186, 1, -1.3, -49.7 , 0 );
setMoveKey( spep_2-3 + 188, 1, -1.3, -49.5 , 0 );
setMoveKey( spep_2-3 + 190, 1, -1.2, -49.2 , 0 );
setMoveKey( spep_2-3 + 192, 1, -1.1, -48.8 , 0 );
setMoveKey( spep_2-3 + 194, 1, -1.1, -48.3 , 0 );
setMoveKey( spep_2-3 + 196, 1, -1, -47.7 , 0 );
setMoveKey( spep_2-3 + 198, 1, -0.9, -46.9 , 0 );
setMoveKey( spep_2-3 + 200, 1, -0.8, -46 , 0 );
setMoveKey( spep_2-3 + 202, 1, -0.8, -45 , 0 );
setMoveKey( spep_2-3 + 204, 1, -0.7, -43.7 , 0 );
setMoveKey( spep_2-3 + 206, 1, -0.6, -42.3 , 0 );
setMoveKey( spep_2-3 + 208, 1, -0.6, -40.6 , 0 );
setMoveKey( spep_2-3 + 210, 1, -0.5, -38.5 , 0 );
setMoveKey( spep_2-3 + 212, 1, -0.4, -36.1 , 0 );
setMoveKey( spep_2-3 + 214, 1, -0.4, -33.2 , 0 );
setMoveKey( spep_2-3 + 216, 1, -0.3, -29.5 , 0 );
setMoveKey( spep_2-3 + 218, 1, -0.2, -24.7 , 0 );
setMoveKey( spep_2-3 + 220, 1, -0.2, -17.7 , 0 );
setMoveKey( spep_2-3 + 222, 1, -0.1, 0 , 0 );
setMoveKey( spep_2-3 + 224, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 226, 1, 0, 0 , 0 );
setMoveKey( spep_2-3 + 228, 1, 0, 12 , 0 );
setMoveKey( spep_2-1 + 230, 1, -10, -2.3 , 0 );

setScaleKey( spep_2-3 + 180, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 188, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 190, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 192, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 194, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 196, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 198, 1, 1.08, 1.08 );
setScaleKey( spep_2-3 + 200, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 202, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 204, 1, 1.11, 1.11 );
setScaleKey( spep_2-3 + 206, 1, 1.12, 1.12 );
setScaleKey( spep_2-3 + 208, 1, 1.13, 1.13 );
setScaleKey( spep_2-3 + 210, 1, 1.15, 1.15 );
setScaleKey( spep_2-3 + 212, 1, 1.17, 1.17 );
setScaleKey( spep_2-3 + 214, 1, 1.2, 1.2 );
setScaleKey( spep_2-3 + 216, 1, 1.23, 1.23 );
setScaleKey( spep_2-3 + 218, 1, 1.28, 1.28 );
setScaleKey( spep_2-3 + 220, 1, 1.34, 1.34 );
setScaleKey( spep_2-3 + 222, 1, 1.5, 1.5 );
setScaleKey( spep_2-1 + 230, 1, 1.5, 1.5 );

setRotateKey( spep_2-3 + 180, 1, 0 );
setRotateKey( spep_2-1 + 230, 1, 0 );


--敵の動き2
setDisp( spep_2-3 + 516, 1, 1);
setDisp( spep_2-1 + 574, 1, 0);

changeAnime( spep_2-3 + 516, 1, 105);

setMoveKey( spep_2-3 + 516, 1, 6, -2.1 , 0 );
setMoveKey( spep_2-3 + 518, 1, 26.6, 3.1 , 0 );
setMoveKey( spep_2-3 + 520, 1, 26.8, 4.6 , 0 );
setMoveKey( spep_2-3 + 522, 1, 36.6, 4.3 , 0 );
setMoveKey( spep_2-3 + 524, 1, 50.1, -15.8 , 0 );
setMoveKey( spep_2-3 + 526, 1, 59.2, -21.6 , 0 );
setMoveKey( spep_2-3 + 528, 1, 63.9, -13.2 , 0 );
setMoveKey( spep_2-3 + 530, 1, 64.2, -32.5 , 0 );
setMoveKey( spep_2-3 + 532, 1, 66.2, -23.6 , 0 );
setMoveKey( spep_2-3 + 534, 1, 80.9, -35.1 , 0 );
setMoveKey( spep_2-3 + 536, 1, 88.2, -39.7 , 0 );
setMoveKey( spep_2-3 + 538, 1, 99.9, -38.5 , 0 );
setMoveKey( spep_2-3 + 540, 1, 105, -61.3 , 0 );
setMoveKey( spep_2-3 + 542, 1, 103.9, -53 , 0 );
setMoveKey( spep_2-3 + 544, 1, 100.8, -67 , 0 );
setMoveKey( spep_2-3 + 546, 1, 106.2, -70.4 , 0 );
setMoveKey( spep_2-3 + 548, 1, 117.2, -47.4 , 0 );
setMoveKey( spep_2-3 + 550, 1, 113.5, -78 , 0 );
setMoveKey( spep_2-3 + 552, 1, 114.2, -60.3 , 0 );
setMoveKey( spep_2-3 + 554, 1, 101.1, -94 , 0 );
setMoveKey( spep_2-3 + 556, 1, 104.6, -96.3 , 0 );
setMoveKey( spep_2-3 + 558, 1, 119, -86.7 , 0 );
setMoveKey( spep_2-3 + 560, 1, 110.5, -100.1 , 0 );
setMoveKey( spep_2-3 + 562, 1, 122.2, -80.1 , 0 );
setMoveKey( spep_2-3 + 564, 1, 117, -114.9 , 0 );
setMoveKey( spep_2-3 + 566, 1, 118.7, -116 , 0 );
setMoveKey( spep_2-3 + 568, 1, 113.2, -83.3 , 0 );
setMoveKey( spep_2-3 + 570, 1, 118.4, -113.2 , 0 );
setMoveKey( spep_2-3 + 572, 1, 110.7, -92.2 , 0 );
setMoveKey( spep_2-1 + 574, 1, 103.5, -107.1 , 0 );

setScaleKey( spep_2-3 + 516, 1, 1.1, 1.1 );
setScaleKey( spep_2-3 + 518, 1, 1.09, 1.09 );
setScaleKey( spep_2-3 + 520, 1, 1.07, 1.07 );
setScaleKey( spep_2-3 + 522, 1, 1.06, 1.06 );
setScaleKey( spep_2-3 + 524, 1, 1.05, 1.05 );
setScaleKey( spep_2-3 + 526, 1, 1.04, 1.04 );
setScaleKey( spep_2-3 + 528, 1, 1.02, 1.02 );
setScaleKey( spep_2-3 + 530, 1, 1.01, 1.01 );
setScaleKey( spep_2-3 + 532, 1, 1, 1 );
setScaleKey( spep_2-3 + 534, 1, 0.99, 0.99 );
setScaleKey( spep_2-3 + 536, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 538, 1, 0.98, 0.98 );
setScaleKey( spep_2-3 + 540, 1, 0.97, 0.97 );
setScaleKey( spep_2-3 + 542, 1, 0.96, 0.96 );
setScaleKey( spep_2-3 + 544, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 546, 1, 0.95, 0.95 );
setScaleKey( spep_2-3 + 548, 1, 0.94, 0.94 );
setScaleKey( spep_2-3 + 550, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 552, 1, 0.93, 0.93 );
setScaleKey( spep_2-3 + 554, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 556, 1, 0.92, 0.92 );
setScaleKey( spep_2-3 + 558, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 564, 1, 0.91, 0.91 );
setScaleKey( spep_2-3 + 566, 1, 0.9, 0.9 );
setScaleKey( spep_2-1 + 574, 1, 0.9, 0.9 );

setRotateKey( spep_2-3 + 516, 1, 15 );
setRotateKey( spep_2-3 + 518, 1, 16 );
setRotateKey( spep_2-3 + 520, 1, 17 );
setRotateKey( spep_2-3 + 522, 1, 17.9 );
setRotateKey( spep_2-3 + 524, 1, 18.9 );
setRotateKey( spep_2-3 + 526, 1, 19.7 );
setRotateKey( spep_2-3 + 528, 1, 20.6 );
setRotateKey( spep_2-3 + 530, 1, 21.4 );
setRotateKey( spep_2-3 + 532, 1, 22.1 );
setRotateKey( spep_2-3 + 534, 1, 22.9 );
setRotateKey( spep_2-3 + 536, 1, 23.6 );
setRotateKey( spep_2-3 + 538, 1, 24.2 );
setRotateKey( spep_2-3 + 540, 1, 24.8 );
setRotateKey( spep_2-3 + 542, 1, 25.4 );
setRotateKey( spep_2-3 + 544, 1, 26 );
setRotateKey( spep_2-3 + 546, 1, 26.5 );
setRotateKey( spep_2-3 + 548, 1, 27 );
setRotateKey( spep_2-3 + 550, 1, 27.4 );
setRotateKey( spep_2-3 + 552, 1, 27.8 );
setRotateKey( spep_2-3 + 554, 1, 28.2 );
setRotateKey( spep_2-3 + 556, 1, 28.6 );
setRotateKey( spep_2-3 + 558, 1, 28.9 );
setRotateKey( spep_2-3 + 560, 1, 29.1 );
setRotateKey( spep_2-3 + 562, 1, 29.4 );
setRotateKey( spep_2-3 + 564, 1, 29.6 );
setRotateKey( spep_2-3 + 566, 1, 29.7 );
setRotateKey( spep_2-3 + 568, 1, 29.8 );
setRotateKey( spep_2-3 + 570, 1, 29.9 );
setRotateKey( spep_2-3 + 572, 1, 30 );
setRotateKey( spep_2-1 + 574, 1, 30 );


--敵の動き3
setDisp( spep_2-3 + 604, 1, 1);
setDisp( spep_2-1 + 674, 1, 0);

changeAnime( spep_2-3 + 604, 1, 106);
changeAnime( spep_2-3 + 618, 1, 108);

setMoveKey( spep_2-3 + 604, 1, 586.7, -76.1 , 0 );
setMoveKey( spep_2-3 + 606, 1, 577.2, -79.7 , 0 );
setMoveKey( spep_2-3 + 608, 1, 524.6, -65.3 , 0 );
setMoveKey( spep_2-3 + 610, 1, 449.3, -60.3 , 0 );
setMoveKey( spep_2-3 + 612, 1, 343.6, -40.4 , 0 );
setMoveKey( spep_2-3 + 614, 1, 198.5, -24 , 0 );
setMoveKey( spep_2-3 + 616, 1, 34.9, 2.1 , 0 );
setMoveKey( spep_2-3 + 617, 1, 34.9, 2.1 , 0 );

setMoveKey( spep_2-3 + 618, 1, 34.8, -1.8 , 0 );
setMoveKey( spep_2-3 + 620, 1, 58.2, -0.4 , 0 );
setMoveKey( spep_2-3 + 622, 1, 88.4, -13.1 , 0 );
setMoveKey( spep_2-3 + 624, 1, 143.8, -18.9 , 0 );
setMoveKey( spep_2-3 + 626, 1, 219, -39.9 , 0 );
setMoveKey( spep_2-3 + 628, 1, 336.3, -57.5 , 0 );
setMoveKey( spep_2-3 + 630, 1, 475.9, -89.4 , 0 );
setMoveKey( spep_2-3 + 632, 1, 588.1, -105.1 , 0 );
setMoveKey( spep_2-3 + 634, 1, 629.4, -115.6 , 0 );
setMoveKey( spep_2-3 + 635, 1, 629.4, -115.6 , 0 );

setMoveKey( spep_2-3 + 636, 1, -204.9, 144 , 0 );
setMoveKey( spep_2-3 + 638, 1, -142.4, 111.9 , 0 );
setMoveKey( spep_2-3 + 640, 1, -83.7, 82 , 0 );
setMoveKey( spep_2-3 + 642, 1, -43.4, 55.5 , 0 );
setMoveKey( spep_2-3 + 644, 1, -6.3, 33.3 , 0 );
setMoveKey( spep_2-3 + 646, 1, 13.4, 9.2 , 0 );
setMoveKey( spep_2-3 + 648, 1, 27.5, -3.6 , 0 );
setMoveKey( spep_2-3 + 650, 1, 29.3, -23 , 0 );
setMoveKey( spep_2-3 + 652, 1, 23.7, -30.9 , 0 );
setMoveKey( spep_2-3 + 654, 1, 4.1, -41.2 , 0 );
setMoveKey( spep_2-3 + 656, 1, -0.6, -52.9 , 0 );
setMoveKey( spep_2-3 + 658, 1, -0.6, -63.7 , 0 );
setMoveKey( spep_2-3 + 660, 1, 13.1, -85.3 , 0 );
setMoveKey( spep_2-3 + 662, 1, 35.1, -101.5 , 0 );
setMoveKey( spep_2-3 + 664, 1, 69.7, -151 , 0 );
setMoveKey( spep_2-3 + 666, 1, 43.4, -105.5 , 0 );
setMoveKey( spep_2-3 + 668, 1, 27.8, -100.9 , 0 );
setMoveKey( spep_2-3 + 670, 1, 20.3, -130.5 , 0 );
setMoveKey( spep_2-3 + 672, 1, 22.1, -113.7 , 0 );
setMoveKey( spep_2-1 + 674, 1, 22.1, -141.7 , 0 );

setScaleKey( spep_2-3 + 604, 1, 1.5, 1.5 );
setScaleKey( spep_2-3 + 635, 1, 1.5, 1.5 );

setScaleKey( spep_2-3 + 636, 1, 0.7, 0.7 );
setScaleKey( spep_2-1 + 674, 1, 0.7, 0.7 );

setRotateKey( spep_2-3 + 604, 1, 0 );
setRotateKey( spep_2-3 + 606, 1, -0.4 );
setRotateKey( spep_2-3 + 608, 1, -1.7 );
setRotateKey( spep_2-3 + 610, 1, -3.8 );
setRotateKey( spep_2-3 + 612, 1, -6.7 );
setRotateKey( spep_2-3 + 614, 1, -10.4 );
setRotateKey( spep_2-3 + 616, 1, -15 );
setRotateKey( spep_2-3 + 617, 1, -15 );

setRotateKey( spep_2-3 + 618, 1, 29.8 );
setRotateKey( spep_2-3 + 620, 1, 29.3 );
setRotateKey( spep_2-3 + 622, 1, 28.5 );
setRotateKey( spep_2-3 + 624, 1, 27.2 );
setRotateKey( spep_2-3 + 626, 1, 25.2 );
setRotateKey( spep_2-3 + 628, 1, 22.4 );
setRotateKey( spep_2-3 + 630, 1, 18.8 );
setRotateKey( spep_2-3 + 632, 1, 16 );
setRotateKey( spep_2-3 + 634, 1, 15 );
setRotateKey( spep_2-3 + 635, 1, 15 );

setRotateKey( spep_2-3 + 636, 1, 29.9 );
setRotateKey( spep_2-3 + 638, 1, 31.3 );
setRotateKey( spep_2-3 + 640, 1, 32.7 );
setRotateKey( spep_2-3 + 642, 1, 34.2 );
setRotateKey( spep_2-3 + 644, 1, 35.6 );
setRotateKey( spep_2-3 + 646, 1, 37 );
setRotateKey( spep_2-3 + 648, 1, 38.5 );
setRotateKey( spep_2-3 + 650, 1, 39.9 );
setRotateKey( spep_2-3 + 652, 1, 41.3 );
setRotateKey( spep_2-3 + 654, 1, 42.8 );
setRotateKey( spep_2-3 + 656, 1, 44.2 );
setRotateKey( spep_2-3 + 658, 1, 45.6 );
setRotateKey( spep_2-3 + 660, 1, 47.1 );
setRotateKey( spep_2-3 + 662, 1, 48.5 );
setRotateKey( spep_2-3 + 664, 1, 49.9 );
setRotateKey( spep_2-1 + 674, 1, 49.9 );


-- ** 音 ** --
--カリフラ気弾溜め
SE011 = playSeVer2( spep_2 + 46, 1282, "",spep_2 + 102, 0, 6, -1);

--腕振りかぶる
SE012 = playSeVer2( spep_2 + 60, 1003, "", 0, 0, 0, -1);

--カリフラ気弾発射
SE014 = playSeVer2( spep_2 + 94, 1212, "",spep_2 + 152, 0, 32, -1);
setSeVolumeByWorkId( spep_2 + 94, SE014, 73 );
SE015 = playSeVer2( spep_2 + 94, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 94, SE015, 133 );
SE016 = playSeVer2( spep_2 + 94, 1021, "", 0, 0, 0, -1);

--ケール気弾溜め
SE017 = playSeVer2( spep_2 + 112, 1262, "",spep_2 + 170, 0, 6, -1);
setSeVolumeByWorkId( spep_2 + 112, SE017, 174 );
SE018 = playSeVer2( spep_2 + 112, 1276, "",spep_2 + 170, 0, 6, -1);
setPitch( spep_2 + 112, SE018, -500 );
setTimeStretch( SE018, 0.67, 30, 4 );

--ケール気弾発射
SE019 = playSeVer2( spep_2 + 160, 1027, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_2 + 160, 1022, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 160, 1193, "",spep_2 + 248, 0, 32, -1);
SE013 = playSeVer2( spep_2 + 178, 1212, "",spep_2 + 246, 16, 16, -1);
setStartTimeMs( SE013,  1383 );

--爆発
SE022 = playSeVer2( spep_2 + 222, 1068, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_2 + 226, 1023, "", 0, 0, 0, -1);

--画面遷移
SE024 = playSeVer2( spep_2 + 258, 1072, "", 0, 0, 0, -1);

--二人気弾溜め
SE025 = playSeVer2( spep_2 + 326, 1262, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE025, 99 );
setTimeStretch( SE025, 1.25, 30, 4 );
SE026 = playSeVer2( spep_2 + 326, 1296, "",spep_2 + 474, 0, 16, -1);
setSeVolumeByWorkId( spep_2 + 326, SE026, 102 );
setPitch( spep_2 + 326, SE026, -400 );
setTimeStretch( SE026, 0.73, 30, 4 );
SE027 = playSeVer2( spep_2 + 326, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 326, SE027, 93 );
setTimeStretch( SE027, 1.11, 30, 4 );

--二人アップ
SE028 = playSeVer2( spep_2 + 388, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 388, SE028, 69 );
SE029 = playSeVer2( spep_2 + 392, 1226, "",spep_2 + 490, 0, 20, -1);
setSeVolumeByWorkId( spep_2 + 392, SE029, 65 );

--気弾発射
SE030 = playSeVer2( spep_2 + 460, 1145, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_2 + 460, 1212, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 460, SE031, 80 );
SE032 = playSeVer2( spep_2 + 460, 1193, "",spep_2 + 676, 0, 14, 0.6);
setSeVolumeByWorkId( spep_2 + 460, SE032, 106 );
SE033 = playSeVer2( spep_2 + 460, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 460, SE033, 86 );

--気弾飛んでいく
SE034 = playSeVer2( spep_2 + 574, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_2 + 574, SE034, 191 );

--飲み込まれる
SE035 = playSeVer2( spep_2 + 614, 1021, "", 0, 0, 0, -1);

--地面突っ込む
SE036 = playSeVer2( spep_2 + 662, 1159, "", 0, 0, 0, -1);

--爆発
SE037 = playSeVer2( spep_2 + 694, 1024, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_2 + 694, 1067, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_2 + 702, 1259, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 702, SE039, 95 );
setPitch( spep_2 + 702, SE039, -600 );
setTimeStretch( SE039, 0.6, 30, 4 );


--終わり
dealDamage(spep_2 + 662);
endPhase( spep_2 + 776 );

end