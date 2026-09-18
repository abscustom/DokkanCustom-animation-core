--1025460:URラグス_グラスバレット
--sp_effect_a2_00190
--sp2452

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

--味方側
SP_01 = 160830;  --カットイン、ガラス宙をまう    ef_001
SP_02 = 160831;  --顔アップ、手振り払い    ef_002
SP_03 = 160832;  --ガラス前面発射    ef_003
SP_04 = 160833;  --ガラス敵被弾：敵より前    ef_004
SP_05 = 160834;  --ガラス敵被弾：敵より後ろ    ef_004_b

--敵側
SP_02r = 160835;  --顔アップ、手振り払い：反転用   ef_002_r
SP_03r = 160836;  --ガラス前面発射：反転用   ef_003_r
SP_04r = 160837;  --ガラス敵被弾：敵より前：反転用   ef_004_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- カットイン、ガラス宙をまう(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --カットイン、ガラス宙をまう    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 255 );

spep_x = spep_0 + 12 +8;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 535.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 535.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 535.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--光放つ
SE001 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 6, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 88 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ガラス散る
SE004 = playSeVer2( spep_0 + 86, 1384, "",spep_0 + 198, 4, 10, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 68 );
setStartTimeMs( SE004,  933 );
setPitch( spep_0 + 86, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--構える
SE005 = playSeVer2( spep_0 + 40, 1003, "", 0, 0, 0, -1);

--ガラス散る
SE006 = playSeVer2( spep_0 + 88, 1062, "",spep_0 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;


--------------------------------------
-- 顔アップ、手振り払い(48F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_02, 45, 0x100, -1, 0, 0, 0 );  --顔アップ、手振り払い   ef_002
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 45, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 45, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 45, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 45 -1, faceup, 255 );
setEffAlphaKey( spep_1 + 45, faceup, 0 );

-- ** 音 ** --
--腕を振る
SE007 = playSeVer2( spep_1 + 22, 1027, "",spep_1 + 72, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 22, SE007, 71 );
SE008 = playSeVer2( spep_1 + 22, 1179, "",spep_1 + 72, 0, 10, -1);
SE009 = playSeVer2( spep_1 + 22, 1302, "",spep_1 + 72, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 22, SE009, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 45, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 45;

------------------------------------------------------
-- カードカットイン(94F)
------------------------------------------------------
spep_c = spep_2

-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
if (_SPECIAL_SKILL_LEVEL_ == 0) then
print ("_SPECIAL_SKILL_LEVEL_ == 0");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
print ("_SPECIAL_SKILL_LEVEL_ == 1");
playSe( spep_c, SE_05);
speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
setEffReplaceTexture( speff, 1, 1);
setEffReplaceTexture( speff, 2, 0); -- カード差し替え
setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
print ("_SPECIAL_SKILL_LEVEL_ == 2");
playSe( spep_c, SE_05);
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
entryFadeBg( spep_c + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
-- ガラス前面発射(122F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
glass = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  --ガラス前面発射    ef_003
setEffMoveKey( spep_3 + 0, glass, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, glass, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, glass, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, glass, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, glass, 0 );
setEffRotateKey( spep_3 + 120, glass, 0 );
setEffAlphaKey( spep_3 + 0, glass, 255 );
setEffAlphaKey( spep_3 + 120 -2, glass, 255 );
setEffAlphaKey( spep_3 + 120 -1, glass, 255 );
setEffAlphaKey( spep_3 + 120 , glass, 0 );

-- ** 音 ** --
--ガラス飛ばす
SE011 = playSeVer2( spep_3 + 10, 1384, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE011, 72 );
setStartTimeMs( SE011,  667 );
setPitch( spep_3 + 10, SE011, 400 );
setTimeStretch( SE011, 1.27, 30, 4 );
SE012 = playSeVer2( spep_3 + 10, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE012, 50 );
SE013 = playSeVer2( spep_3 + 10, 1231, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 10, 1264, "",spep_3 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 10, SE014, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 30);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;


--------------------------------------
-- ガラス敵被弾：敵より前(248F)
--------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0 );  --ガラス敵被弾：敵より前    ef_004
setEffMoveKey( spep_4 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, last_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 248, last_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last_f, 0 );
setEffRotateKey( spep_4 + 248, last_f, 0 );
setEffAlphaKey( spep_4 + 0, last_f, 255 );
setEffAlphaKey( spep_4 + 248, last_f, 255 );

last_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0, -1000 );  --ガラス敵被弾：敵より後ろ    ef_004_b
setEffMoveKey( spep_4 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, last_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 248, last_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last_b, 0 );
setEffRotateKey( spep_4 + 248, last_b, 0 );
setEffAlphaKey( spep_4 + 0, last_b, 255 );
setEffAlphaKey( spep_4 + 248 , last_b, 255 );

-- ** 流線 斜め 奥行きあり（白） ** --
ryusen_1 = entryEffectLife( spep_4 + 36, 914, 212, 0x100, -1, 0, 0, 0, -500 );  --流線 斜め 奥行きあり（白）
setEffShake( spep_4 + 36, ryusen_1, 212, 20 );
setEffMoveKey( spep_4 + 36, ryusen_1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, ryusen_1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 36, ryusen_1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 248, ryusen_1, 1.6, 1.6 );
setEffRotateKey( spep_4 + 36, ryusen_1, 10 );
setEffRotateKey( spep_4 + 248, ryusen_1, 10 );
setEffAlphaKey( spep_4 + 36, ryusen_1, 110 );
setEffAlphaKey( spep_4 + 248, ryusen_1, 110 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 32, 1, 1 );
setDisp( spep_4 -3 + 248, 1, 0 );

--changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 104 );
changeAnime( spep_4 -3 + 60, 1, 106 );
changeAnime( spep_4 -3 + 96, 1, 108 );
changeAnime( spep_4 -3 + 152, 1, 106 );

--[[setMoveKey( spep_4 + 0, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 + 1, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 + 2, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 578.4, -397.4 , 0 );]]
setMoveKey( spep_4 -3 + 32, 1, 578.3 +90, -363.1 -20, 0 );
setMoveKey( spep_4 -3 + 34, 1, 578.3 +50, -383.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 530, -338.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 477.1, -331.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 421.3, -282.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 364.6, -273.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 308.9, -224.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 256.3, -217.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 208.2, -173.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 165.6, -171.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 129.1, -132.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 99, -137.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 75.1, -105 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 75.1, -125 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 43.8, -74.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 75.3, -94.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 45.1, -44.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 45.1, -64.2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 84.3, -64.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 84.3, -84.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 65.3, -74.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 65.3, -94.2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 85.4, -44.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 85.4, -64.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 45.1, -44.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 45.1, -64.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 95.4, -54.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 95.4, -74.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 46.2, -44.2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 46.2, -64.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 85.3, -64.2 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 85.3, -84.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 117.6, -73.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 117.6, -93.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 56.1, -56.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 56.1, -76.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 73.4, -34.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 73.4, -54.3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 32.3, -49.4 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 32.3, -69.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 82.6, -61.9 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 82.6, -81.9 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 44.9, -62 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 44.9, -82 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 44.9, -49.4 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 44.9, -69.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 31.1, -84.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 31.1, -104.5 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 32.3, -49.4 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 32.3, -69.4 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 70, -74.5 , 0 );
setMoveKey( spep_4 -3 + 151, 1, 70, -94.5 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 62.2, -73.7 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 62.2, -93.7 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 86.8, -47.1 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 86.8, -67.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 47, -40.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 47, -60.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 95.1, -58.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 95.1, -78.6 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 48.1, -41 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 52.8, -59.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 57.5, -37.9 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 62.2, -56.1 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 66.9, -34.6 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 71.7, -53 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 76.6, -31.4 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 81.3, -49.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 86.1, -28.1 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 90.8, -46.5 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 95.7, -24.9 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 100.5, -43.4 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 105.2, -21.7 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 110, -40.2 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 114.7, -18.5 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 119.4, -37 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 124, -15.5 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 128.6, -33.9 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 132.9, -12.4 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 137.3, -30.9 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 141.6, -9.6 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 145.8, -28.1 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 149.8, -6.8 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 153.7, -25.4 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 157.4, -4.1 , 0 );
setMoveKey( spep_4 -3 + 218, 1, 161, -23 , 0 );
setMoveKey( spep_4 -3 + 220, 1, 164.4, -1.8 , 0 );
setMoveKey( spep_4 -3 + 222, 1, 167.9, -20.7 , 0 );
setMoveKey( spep_4 -3 + 224, 1, 171, 0.4 , 0 );
setMoveKey( spep_4 -3 + 226, 1, 174.1, -18.6 , 0 );
setMoveKey( spep_4 -3 + 228, 1, 180.3, 3.6 , 0 );
setMoveKey( spep_4 -3 + 230, 1, 183.4, -16.5 , 0 );
setMoveKey( spep_4 -3 + 232, 1, 186.5, 6.8 , 0 );
setMoveKey( spep_4 -3 + 234, 1, 189.6, -14.4 , 0 );
setMoveKey( spep_4 -3 + 236, 1, 192.7, 10 , 0 );
setMoveKey( spep_4 -3 + 238, 1, 195.8, -12.3 , 0 );
setMoveKey( spep_4 -3 + 240, 1, 198.9, 13.2 , 0 );
setMoveKey( spep_4 -3 + 242, 1, 201.0, -11.2 , 0 );
setMoveKey( spep_4 -3 + 244, 1, 204.1, 16.4 , 0 );
setMoveKey( spep_4 -3 + 246, 1, 207.2, -10.1 , 0 );
setMoveKey( spep_4 -3 + 248, 1, 210.3, 19.6 , 0 );

--setScaleKey( spep_4 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 95, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 96, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 151, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 152, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 248, 1, 1.59, 1.59 );

--setRotateKey( spep_4 + 0, 1, 16.2 );
setRotateKey( spep_4 -3 + 32, 1, 16.2 );
setRotateKey( spep_4 -3 + 59, 1, 16.2 );
setRotateKey( spep_4 -3 + 60, 1, -35.5 );
setRotateKey( spep_4 -3 + 95, 1, -35.5 );
setRotateKey( spep_4 -3 + 96, 1, -10.8 );
setRotateKey( spep_4 -3 + 151, 1, -10.8 );
setRotateKey( spep_4 -3 + 152, 1, -26.5 );
setRotateKey( spep_4 -3 + 168, 1, -26.5 );
setRotateKey( spep_4 -3 + 170, 1, -26.2 );
setRotateKey( spep_4 -3 + 172, 1, -25.9 );
setRotateKey( spep_4 -3 + 174, 1, -25.6 );
setRotateKey( spep_4 -3 + 176, 1, -25.3 );
setRotateKey( spep_4 -3 + 178, 1, -24.9 );
setRotateKey( spep_4 -3 + 180, 1, -24.6 );
setRotateKey( spep_4 -3 + 182, 1, -24.3 );
setRotateKey( spep_4 -3 + 184, 1, -24 );
setRotateKey( spep_4 -3 + 186, 1, -23.7 );
setRotateKey( spep_4 -3 + 188, 1, -23.3 );
setRotateKey( spep_4 -3 + 190, 1, -23 );
setRotateKey( spep_4 -3 + 192, 1, -22.7 );
setRotateKey( spep_4 -3 + 194, 1, -22.4 );
setRotateKey( spep_4 -3 + 196, 1, -22.1 );
setRotateKey( spep_4 -3 + 198, 1, -21.8 );
setRotateKey( spep_4 -3 + 200, 1, -21.5 );
setRotateKey( spep_4 -3 + 202, 1, -21.1 );
setRotateKey( spep_4 -3 + 204, 1, -20.9 );
setRotateKey( spep_4 -3 + 206, 1, -20.6 );
setRotateKey( spep_4 -3 + 208, 1, -20.3 );
setRotateKey( spep_4 -3 + 210, 1, -20 );
setRotateKey( spep_4 -3 + 212, 1, -19.7 );
setRotateKey( spep_4 -3 + 214, 1, -19.5 );
setRotateKey( spep_4 -3 + 216, 1, -19.2 );
setRotateKey( spep_4 -3 + 218, 1, -19 );
setRotateKey( spep_4 -3 + 220, 1, -18.7 );
setRotateKey( spep_4 -3 + 222, 1, -18.5 );
setRotateKey( spep_4 -3 + 224, 1, -18.3 );
setRotateKey( spep_4 -3 + 226, 1, -18.1 );
setRotateKey( spep_4 -3 + 228, 1, -17.9 );
setRotateKey( spep_4 -3 + 230, 1, -17.7 );
setRotateKey( spep_4 -3 + 232, 1, -17.5 );
setRotateKey( spep_4 -3 + 234, 1, -17.3 );
setRotateKey( spep_4 -3 + 236, 1, -17.1 );
setRotateKey( spep_4 -3 + 238, 1, -16.9 );
setRotateKey( spep_4 -3 + 240, 1, -16.7 );
setRotateKey( spep_4 -3 + 242, 1, -16.5 );
setRotateKey( spep_4 -3 + 244, 1, -16.3 );
setRotateKey( spep_4 -3 + 246, 1, -16.2 );
setRotateKey( spep_4 -3 + 248, 1, -15.9 );

-- ** 音 ** --
--ガラス飛ばす
SE015 = playSeVer2( spep_4 + 14, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE015, 63 );			
SE016 = playSeVer2( spep_4 + 14, 1384, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE016, 56 );
setPitch( spep_4 + 14, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );

--連続爆発
SE017 = playSeVer2( spep_4 + 68, 1023, "",spep_4 + 118, 0, 22, -1);				
SE018 = playSeVer2( spep_4 + 84, 1011, "", 0, 0, 0, -1);				

--ガラス飛ばす
SE019 = playSeVer2( spep_4 + 102, 1357, "", 0, 34, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE019, 71 );
SE020 = playSeVer2( spep_4 + 102, 1384, "", 0, 44, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE020, 53 );
setPitch( spep_4 + 102, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );

--連続爆発
SE021 = playSeVer2( spep_4 + 108, 1024, "", 0, 0, 0, -1);				
SE022 = playSeVer2( spep_4 + 130, 1023, "",spep_4 + 180, 0, 22, -1);				
SE023 = playSeVer2( spep_4 + 148, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE023, 73 );			
SE024 = playSeVer2( spep_4 + 148, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE024, 73 );			

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 248, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 130 ); -- ダメージ表示フレーム
endPhase( spep_4 + 238 ); -- 終了フレーム

else


------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- カットイン、ガラス宙をまう(128F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --カットイン、ガラス宙をまう    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 126, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 126, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 126, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 126, first_f, 255 );

spep_x = spep_0 + 12 +8;

-- ** 顔カットイン ** --
--[[speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え]]

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 70, 535.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 70, 535.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 70, 535.5 , 0 );
setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
setEffRotateKey( spep_x + 16, ctgogo, 0 );
setEffRotateKey( spep_x + 84, ctgogo, 0 );
setEffAlphaKey( spep_x + 16, ctgogo, 255 );
setEffAlphaKey( spep_x + 84, ctgogo, 255 );

-- ** 音 ** --
--光放つ
SE001 = playSeVer2( spep_0 + 0, 1263, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 6, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 6, SE002, 88 );

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--ガラス散る
SE004 = playSeVer2( spep_0 + 86, 1384, "",spep_0 + 198, 4, 10, -1);
setSeVolumeByWorkId( spep_0 + 86, SE004, 68 );
setStartTimeMs( SE004,  933 );
setPitch( spep_0 + 86, SE004, 400 );
setTimeStretch( SE004, 1.27, 30, 4 );

--構える
SE005 = playSeVer2( spep_0 + 40, 1003, "", 0, 0, 0, -1);

--ガラス散る
SE006 = playSeVer2( spep_0 + 88, 1062, "",spep_0 + 198, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 88, SE006, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 126, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 126;


--------------------------------------
-- 顔アップ、手振り払い(48F)
--------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
faceup = entryEffectLife( spep_1 + 0, SP_02r, 45, 0x100, -1, 0, 0, 0 );  --顔アップ、手振り払い：反転用   ef_002_r
setEffMoveKey( spep_1 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_1 + 45, faceup, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_1 + 45, faceup, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, faceup, 0 );
setEffRotateKey( spep_1 + 45, faceup, 0 );
setEffAlphaKey( spep_1 + 0, faceup, 255 );
setEffAlphaKey( spep_1 + 45 -1, faceup, 255 );
setEffAlphaKey( spep_1 + 45, faceup, 0 );

-- ** 音 ** --
--腕を振る
SE007 = playSeVer2( spep_1 + 22, 1027, "",spep_1 + 72, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 22, SE007, 71 );
SE008 = playSeVer2( spep_1 + 22, 1179, "",spep_1 + 72, 0, 10, -1);
SE009 = playSeVer2( spep_1 + 22, 1302, "",spep_1 + 72, 0, 10, -1);
setSeVolumeByWorkId( spep_1 + 22, SE009, 68 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 45, 0, 0, 0, 0, 30);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 45;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_2 = 0;

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96 -4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 10, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;

------------------------------------------------------
-- ガラス前面発射(122F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
glass = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  --ガラス前面発射：反転用   ef_003_r
setEffMoveKey( spep_3 + 0, glass, 0, 0 , 0 );
setEffMoveKey( spep_3 + 120, glass, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, glass, 1.0, 1.0 );
setEffScaleKey( spep_3 + 120, glass, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, glass, 0 );
setEffRotateKey( spep_3 + 120, glass, 0 );
setEffAlphaKey( spep_3 + 0, glass, 255 );
setEffAlphaKey( spep_3 + 120 -2, glass, 255 );
setEffAlphaKey( spep_3 + 120 -1, glass, 255 );
setEffAlphaKey( spep_3 + 120 , glass, 0 );

-- ** 音 ** --
--ガラス飛ばす
SE011 = playSeVer2( spep_3 + 10, 1384, "", 0, 4, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE011, 72 );
setStartTimeMs( SE011,  667 );
setPitch( spep_3 + 10, SE011, 400 );
setTimeStretch( SE011, 1.27, 30, 4 );
SE012 = playSeVer2( spep_3 + 10, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 10, SE012, 50 );
SE013 = playSeVer2( spep_3 + 10, 1231, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 10, 1264, "",spep_3 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_3 + 10, SE014, 85 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 120, 0, 0, 0, 0, 30);       -- ベース暗め　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 94 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE013, 0);
    stopSe( SP_dodge - 12, SE014, 0);
   
    pauseAll( SP_dodge, 67);  
    
    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
    
    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め　背景
    
    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 次の準備 ** --
spep_4 = spep_3 + 120;


--------------------------------------
-- ガラス敵被弾：敵より前(248F)
--------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
last_f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0 );  --ガラス敵被弾：敵より前：反転用   ef_004_r
setEffMoveKey( spep_4 + 0, last_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, last_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 248, last_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last_f, 0 );
setEffRotateKey( spep_4 + 248, last_f, 0 );
setEffAlphaKey( spep_4 + 0, last_f, 255 );
setEffAlphaKey( spep_4 + 248, last_f, 255 );

last_b = entryEffect( spep_4 + 0, SP_05, 0x80, -1, 0, 0, 0, -1000 );  --ガラス敵被弾：敵より後ろ    ef_004_b
setEffMoveKey( spep_4 + 0, last_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, last_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, last_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 248, last_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, last_b, 0 );
setEffRotateKey( spep_4 + 248, last_b, 0 );
setEffAlphaKey( spep_4 + 0, last_b, 255 );
setEffAlphaKey( spep_4 + 248 , last_b, 255 );

-- ** 流線 斜め 奥行きあり（白） ** --
ryusen_1 = entryEffectLife( spep_4 + 36, 914, 212, 0x100, -1, 0, 0, 0, -500 );  --流線 斜め 奥行きあり（白）
setEffShake( spep_4 + 36, ryusen_1, 212, 20 );
setEffMoveKey( spep_4 + 36, ryusen_1, 0, 0 , 0 );
setEffMoveKey( spep_4 + 248, ryusen_1, 0, 0 , 0 );
setEffScaleKey( spep_4 + 36, ryusen_1, 1.6, 1.6 );
setEffScaleKey( spep_4 + 248, ryusen_1, 1.6, 1.6 );
setEffRotateKey( spep_4 + 36, ryusen_1, 10 );
setEffRotateKey( spep_4 + 248, ryusen_1, 10 );
setEffAlphaKey( spep_4 + 36, ryusen_1, 110 );
setEffAlphaKey( spep_4 + 248, ryusen_1, 110 );

-- ** 敵キャラクター ** --
--setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 32, 1, 1 );
setDisp( spep_4 -3 + 248, 1, 0 );

--changeAnime( spep_4 + 0, 1, 104 );
changeAnime( spep_4 -3 + 32, 1, 104 );
changeAnime( spep_4 -3 + 60, 1, 106 );
changeAnime( spep_4 -3 + 96, 1, 108 );
changeAnime( spep_4 -3 + 152, 1, 106 );

--[[setMoveKey( spep_4 + 0, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 + 1, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 + 2, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 578.4, -397.4 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 578.3, -363.1 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 578.4, -397.4 , 0 );]]
setMoveKey( spep_4 -3 + 32, 1, 578.3 +90, -363.1 -20, 0 );
setMoveKey( spep_4 -3 + 34, 1, 578.3 +50, -383.1 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 530, -338.3 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 477.1, -331.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 421.3, -282.6 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 364.6, -273.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 308.9, -224.9 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 256.3, -217.9 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 208.2, -173.2 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 165.6, -171.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 129.1, -132.7 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 99, -137.3 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 75.1, -105 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 75.1, -125 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 43.8, -74.3 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 75.3, -94.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 45.1, -44.2 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 45.1, -64.2 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 84.3, -64.2 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 84.3, -84.2 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 65.3, -74.2 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 65.3, -94.2 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 85.4, -44.1 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 85.4, -64.1 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 45.1, -44.2 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 45.1, -64.2 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 95.4, -54.1 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 95.4, -74.1 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 46.2, -44.2 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 46.2, -64.2 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 85.3, -64.2 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 85.3, -84.2 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 117.6, -73.1 , 0 );
setMoveKey( spep_4 -3 + 102, 1, 117.6, -93.1 , 0 );
setMoveKey( spep_4 -3 + 104, 1, 56.1, -56.8 , 0 );
setMoveKey( spep_4 -3 + 106, 1, 56.1, -76.8 , 0 );
setMoveKey( spep_4 -3 + 108, 1, 73.4, -34.3 , 0 );
setMoveKey( spep_4 -3 + 110, 1, 73.4, -54.3 , 0 );
setMoveKey( spep_4 -3 + 112, 1, 32.3, -49.4 , 0 );
setMoveKey( spep_4 -3 + 114, 1, 32.3, -69.4 , 0 );
setMoveKey( spep_4 -3 + 116, 1, 82.6, -61.9 , 0 );
setMoveKey( spep_4 -3 + 118, 1, 82.6, -81.9 , 0 );
setMoveKey( spep_4 -3 + 120, 1, 44.9, -62 , 0 );
setMoveKey( spep_4 -3 + 122, 1, 44.9, -82 , 0 );
setMoveKey( spep_4 -3 + 124, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 126, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 128, 1, 44.9, -49.4 , 0 );
setMoveKey( spep_4 -3 + 130, 1, 44.9, -69.4 , 0 );
setMoveKey( spep_4 -3 + 132, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 134, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 136, 1, 31.1, -84.5 , 0 );
setMoveKey( spep_4 -3 + 138, 1, 31.1, -104.5 , 0 );
setMoveKey( spep_4 -3 + 140, 1, 82.6, -74.5 , 0 );
setMoveKey( spep_4 -3 + 142, 1, 82.6, -94.5 , 0 );
setMoveKey( spep_4 -3 + 144, 1, 32.3, -49.4 , 0 );
setMoveKey( spep_4 -3 + 146, 1, 32.3, -69.4 , 0 );
setMoveKey( spep_4 -3 + 148, 1, 70, -74.5 , 0 );
setMoveKey( spep_4 -3 + 151, 1, 70, -94.5 , 0 );
setMoveKey( spep_4 -3 + 152, 1, 62.2, -73.7 , 0 );
setMoveKey( spep_4 -3 + 154, 1, 62.2, -93.7 , 0 );
setMoveKey( spep_4 -3 + 156, 1, 86.8, -47.1 , 0 );
setMoveKey( spep_4 -3 + 158, 1, 86.8, -67.1 , 0 );
setMoveKey( spep_4 -3 + 160, 1, 47, -40.9 , 0 );
setMoveKey( spep_4 -3 + 162, 1, 47, -60.9 , 0 );
setMoveKey( spep_4 -3 + 164, 1, 95.1, -58.6 , 0 );
setMoveKey( spep_4 -3 + 166, 1, 95.1, -78.6 , 0 );
setMoveKey( spep_4 -3 + 168, 1, 48.1, -41 , 0 );
setMoveKey( spep_4 -3 + 170, 1, 52.8, -59.5 , 0 );
setMoveKey( spep_4 -3 + 172, 1, 57.5, -37.9 , 0 );
setMoveKey( spep_4 -3 + 174, 1, 62.2, -56.1 , 0 );
setMoveKey( spep_4 -3 + 176, 1, 66.9, -34.6 , 0 );
setMoveKey( spep_4 -3 + 178, 1, 71.7, -53 , 0 );
setMoveKey( spep_4 -3 + 180, 1, 76.6, -31.4 , 0 );
setMoveKey( spep_4 -3 + 182, 1, 81.3, -49.8 , 0 );
setMoveKey( spep_4 -3 + 184, 1, 86.1, -28.1 , 0 );
setMoveKey( spep_4 -3 + 186, 1, 90.8, -46.5 , 0 );
setMoveKey( spep_4 -3 + 188, 1, 95.7, -24.9 , 0 );
setMoveKey( spep_4 -3 + 190, 1, 100.5, -43.4 , 0 );
setMoveKey( spep_4 -3 + 192, 1, 105.2, -21.7 , 0 );
setMoveKey( spep_4 -3 + 194, 1, 110, -40.2 , 0 );
setMoveKey( spep_4 -3 + 196, 1, 114.7, -18.5 , 0 );
setMoveKey( spep_4 -3 + 198, 1, 119.4, -37 , 0 );
setMoveKey( spep_4 -3 + 200, 1, 124, -15.5 , 0 );
setMoveKey( spep_4 -3 + 202, 1, 128.6, -33.9 , 0 );
setMoveKey( spep_4 -3 + 204, 1, 132.9, -12.4 , 0 );
setMoveKey( spep_4 -3 + 206, 1, 137.3, -30.9 , 0 );
setMoveKey( spep_4 -3 + 208, 1, 141.6, -9.6 , 0 );
setMoveKey( spep_4 -3 + 210, 1, 145.8, -28.1 , 0 );
setMoveKey( spep_4 -3 + 212, 1, 149.8, -6.8 , 0 );
setMoveKey( spep_4 -3 + 214, 1, 153.7, -25.4 , 0 );
setMoveKey( spep_4 -3 + 216, 1, 157.4, -4.1 , 0 );
setMoveKey( spep_4 -3 + 218, 1, 161, -23 , 0 );
setMoveKey( spep_4 -3 + 220, 1, 164.4, -1.8 , 0 );
setMoveKey( spep_4 -3 + 222, 1, 167.9, -20.7 , 0 );
setMoveKey( spep_4 -3 + 224, 1, 171, 0.4 , 0 );
setMoveKey( spep_4 -3 + 226, 1, 174.1, -18.6 , 0 );
setMoveKey( spep_4 -3 + 228, 1, 180.3, 3.6 , 0 );
setMoveKey( spep_4 -3 + 230, 1, 183.4, -16.5 , 0 );
setMoveKey( spep_4 -3 + 232, 1, 186.5, 6.8 , 0 );
setMoveKey( spep_4 -3 + 234, 1, 189.6, -14.4 , 0 );
setMoveKey( spep_4 -3 + 236, 1, 192.7, 10 , 0 );
setMoveKey( spep_4 -3 + 238, 1, 195.8, -12.3 , 0 );
setMoveKey( spep_4 -3 + 240, 1, 198.9, 13.2 , 0 );
setMoveKey( spep_4 -3 + 242, 1, 201.0, -11.2 , 0 );
setMoveKey( spep_4 -3 + 244, 1, 204.1, 16.4 , 0 );
setMoveKey( spep_4 -3 + 246, 1, 207.2, -10.1 , 0 );
setMoveKey( spep_4 -3 + 248, 1, 210.3, 19.6 , 0 );

--setScaleKey( spep_4 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 32, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 95, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 96, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 151, 1, 1.76, 1.76 );
setScaleKey( spep_4 -3 + 152, 1, 1.59, 1.59 );
setScaleKey( spep_4 -3 + 248, 1, 1.59, 1.59 );

--setRotateKey( spep_4 + 0, 1, 16.2 );
setRotateKey( spep_4 -3 + 32, 1, 16.2 );
setRotateKey( spep_4 -3 + 59, 1, 16.2 );
setRotateKey( spep_4 -3 + 60, 1, -35.5 );
setRotateKey( spep_4 -3 + 95, 1, -35.5 );
setRotateKey( spep_4 -3 + 96, 1, -10.8 );
setRotateKey( spep_4 -3 + 151, 1, -10.8 );
setRotateKey( spep_4 -3 + 152, 1, -26.5 );
setRotateKey( spep_4 -3 + 168, 1, -26.5 );
setRotateKey( spep_4 -3 + 170, 1, -26.2 );
setRotateKey( spep_4 -3 + 172, 1, -25.9 );
setRotateKey( spep_4 -3 + 174, 1, -25.6 );
setRotateKey( spep_4 -3 + 176, 1, -25.3 );
setRotateKey( spep_4 -3 + 178, 1, -24.9 );
setRotateKey( spep_4 -3 + 180, 1, -24.6 );
setRotateKey( spep_4 -3 + 182, 1, -24.3 );
setRotateKey( spep_4 -3 + 184, 1, -24 );
setRotateKey( spep_4 -3 + 186, 1, -23.7 );
setRotateKey( spep_4 -3 + 188, 1, -23.3 );
setRotateKey( spep_4 -3 + 190, 1, -23 );
setRotateKey( spep_4 -3 + 192, 1, -22.7 );
setRotateKey( spep_4 -3 + 194, 1, -22.4 );
setRotateKey( spep_4 -3 + 196, 1, -22.1 );
setRotateKey( spep_4 -3 + 198, 1, -21.8 );
setRotateKey( spep_4 -3 + 200, 1, -21.5 );
setRotateKey( spep_4 -3 + 202, 1, -21.1 );
setRotateKey( spep_4 -3 + 204, 1, -20.9 );
setRotateKey( spep_4 -3 + 206, 1, -20.6 );
setRotateKey( spep_4 -3 + 208, 1, -20.3 );
setRotateKey( spep_4 -3 + 210, 1, -20 );
setRotateKey( spep_4 -3 + 212, 1, -19.7 );
setRotateKey( spep_4 -3 + 214, 1, -19.5 );
setRotateKey( spep_4 -3 + 216, 1, -19.2 );
setRotateKey( spep_4 -3 + 218, 1, -19 );
setRotateKey( spep_4 -3 + 220, 1, -18.7 );
setRotateKey( spep_4 -3 + 222, 1, -18.5 );
setRotateKey( spep_4 -3 + 224, 1, -18.3 );
setRotateKey( spep_4 -3 + 226, 1, -18.1 );
setRotateKey( spep_4 -3 + 228, 1, -17.9 );
setRotateKey( spep_4 -3 + 230, 1, -17.7 );
setRotateKey( spep_4 -3 + 232, 1, -17.5 );
setRotateKey( spep_4 -3 + 234, 1, -17.3 );
setRotateKey( spep_4 -3 + 236, 1, -17.1 );
setRotateKey( spep_4 -3 + 238, 1, -16.9 );
setRotateKey( spep_4 -3 + 240, 1, -16.7 );
setRotateKey( spep_4 -3 + 242, 1, -16.5 );
setRotateKey( spep_4 -3 + 244, 1, -16.3 );
setRotateKey( spep_4 -3 + 246, 1, -16.2 );
setRotateKey( spep_4 -3 + 248, 1, -15.9 );

-- ** 音 ** --
--ガラス飛ばす
SE015 = playSeVer2( spep_4 + 14, 1357, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE015, 63 );			
SE016 = playSeVer2( spep_4 + 14, 1384, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 14, SE016, 56 );
setPitch( spep_4 + 14, SE016, 400 );
setTimeStretch( SE016, 1.27, 30, 4 );

--連続爆発
SE017 = playSeVer2( spep_4 + 68, 1023, "",spep_4 + 118, 0, 22, -1);				
SE018 = playSeVer2( spep_4 + 84, 1011, "", 0, 0, 0, -1);				

--ガラス飛ばす
SE019 = playSeVer2( spep_4 + 102, 1357, "", 0, 34, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE019, 71 );
SE020 = playSeVer2( spep_4 + 102, 1384, "", 0, 44, 0, -1);
setSeVolumeByWorkId( spep_4 + 102, SE020, 53 );
setPitch( spep_4 + 102, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );

--連続爆発
SE021 = playSeVer2( spep_4 + 108, 1024, "", 0, 0, 0, -1);				
SE022 = playSeVer2( spep_4 + 130, 1023, "",spep_4 + 180, 0, 22, -1);				
SE023 = playSeVer2( spep_4 + 148, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE023, 73 );			
SE024 = playSeVer2( spep_4 + 148, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 148, SE024, 73 );			

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 248, 0, 0, 0, 0, 30);       -- ベース暗め　背景


-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 130 ); -- ダメージ表示フレーム
endPhase( spep_4 + 238 ); -- 終了フレーム


end