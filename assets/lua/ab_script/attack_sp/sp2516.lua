--1026350:ゴテンクス(失敗)B_ダイナマイトキック(極限あり)
--sp_effect_b1_00243

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
SP_01 = 161631; --冒頭シーン	ef_001
SP_02 = 161633; --横突進	ef_002
SP_03 = 161635; --ヒット	ef_003
SP_04 = 161637; --ヒット　奥	ef_004
SP_05 = 161638; --ダメージ　手前	ef_005
SP_06 = 161639; --ダメージ　奥	ef_006

--敵側
SP_01r = 161632; --冒頭シーン　敵	ef_001r
SP_02r = 161634; --横突進　敵	ef_002r
SP_03r = 161636; --ヒット　敵	ef_003r
SP_04r = 161637; --ヒット　奥	ef_004
SP_05r = 161638; --ダメージ　手前	ef_005
SP_06r = 161639; --ダメージ　奥	ef_006

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
--冒頭シーン (276F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 276, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 276, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 276, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 276 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 276 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 276, first_f, 0 );

spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--集中線
SE001 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE001, 74 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 63 );
SE004 = playSeVer2( spep_0 + 26, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 63 );
SE005 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 63 );
SE006 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 63 );

--向かってくる
SE007 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 140, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 140, 0, 8, -1);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
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
-- ** 音 ** --
--ブレーキ
SE009 = playSeVer2( spep_0 + 130, 1323, "",spep_0 + 154, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009, 69 );

--咳
SE010 = playSeVer2( spep_0 + 192, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 68 );
SE011 = playSeVer2( spep_0 + 192, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 83 );
SE012 = playSeVer2( spep_0 + 218, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 68 );
SE013 = playSeVer2( spep_0 + 218, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE013, 84 );

--向かってくる2
SE014 = playSeVer2( spep_0 + 246, 1119, "",spep_0 + 284, 0, 10, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 276;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--[[
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
]]

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
--playSe( spep_1 + 0, SE_05 );

--敵に向かっていく
SE016 = playSeVer2( spep_1 + 88, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE016, 73 );
SE017 = playSeVer2( spep_1 + 88, 1312, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 88, 1304, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;



------------------------------------------------------
--横突進 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 116, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 116 -2, tosshin, 255 );
setEffAlphaKey( spep_2 + 116 -1, tosshin, 255 );
setEffAlphaKey( spep_2 + 116, tosshin, 0 );

-- ** 音 ** --
--加速する
SE020 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 68, 9, "",spep_2 + 116 + 88, 0, 36, -1);
SE022 = playSeVer2( spep_2 + 68, 1314, "",spep_2 + 116 + 88, 0, 36, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
--ヒット (98F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 98, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 98 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 98 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 98, hit_f, 0 );

hit_b = entryEffect( spep_3 + 0, SP_04, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 98, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 98 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 98 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 98, hit_b, 0 );

-- ** 流線 ** --
ryusen_b = entryEffectLife( spep_3 + 0, 907, 47, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, ryusen_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 47, ryusen_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ryusen_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 47, ryusen_b, 1.1, 1.1 );
setEffRotateKey( spep_3 + 0, ryusen_b, 0 );
setEffRotateKey( spep_3 + 47, ryusen_b, 0 );
setEffAlphaKey( spep_3 + 0, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47 -2, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47 -1, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47, ryusen_b, 0 );


n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - n + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 - n + 60, 1, 108 );

setMoveKey( spep_3 + 0, 1, 703.8, -60.2 , 0 );
setMoveKey( spep_3 - n + 2, 1, 679.8, -49.7 , 0 );
setMoveKey( spep_3 - n + 4, 1, 637.9, -55.2 , 0 );
setMoveKey( spep_3 - n + 6, 1, 611.9, -48.7 , 0 );
setMoveKey( spep_3 - n + 8, 1, 570, -54.3 , 0 );
setMoveKey( spep_3 - n + 10, 1, 544, -47.8 , 0 );
setMoveKey( spep_3 - n + 12, 1, 502.1, -53.3 , 0 );
setMoveKey( spep_3 - n + 14, 1, 476.1, -46.8 , 0 );
setMoveKey( spep_3 - n + 16, 1, 434.1, -52.3 , 0 );
setMoveKey( spep_3 - n + 18, 1, 408.2, -45.9 , 0 );
setMoveKey( spep_3 - n + 20, 1, 366.2, -51.4 , 0 );
setMoveKey( spep_3 - n + 22, 1, 340.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 24, 1, 298.3, -50.4 , 0 );
setMoveKey( spep_3 - n + 26, 1, 272.4, -43.9 , 0 );
setMoveKey( spep_3 - n + 28, 1, 230.4, -49.5 , 0 );
setMoveKey( spep_3 - n + 30, 1, 232.1, -43.5 , 0 );
setMoveKey( spep_3 - n + 32, 1, 217.8, -49.5 , 0 );
setMoveKey( spep_3 - n + 34, 1, 219.6, -43.5 , 0 );
setMoveKey( spep_3 - n + 36, 1, 205.3, -49.5 , 0 );
setMoveKey( spep_3 - n + 38, 1, 207, -43.5 , 0 );
setMoveKey( spep_3 - n + 40, 1, 192.7, -49.5 , 0 );
setMoveKey( spep_3 - n + 42, 1, 194.4, -43.5 , 0 );
setMoveKey( spep_3 - n + 44, 1, 180.1, -49.5 , 0 );
setMoveKey( spep_3 - n + 46, 1, 181.8, -43.5 , 0 );
setMoveKey( spep_3 - n + 48, 1, 167.6, -49.5 , 0 );
setMoveKey( spep_3 - n + 50, 1, 169.3, -43.5 , 0 );
setMoveKey( spep_3 - n + 52, 1, 155, -49.5 , 0 );
setMoveKey( spep_3 - n + 54, 1, 156.7, -43.5 , 0 );
setMoveKey( spep_3 - n + 56, 1, 142.4, -49.5 , 0 );
setMoveKey( spep_3 - n + 59, 1, 144.1, -43.5 , 0 );
setMoveKey( spep_3 - n + 60, 1, 166, -27.3 , 0 );
setMoveKey( spep_3 - n + 62, 1, 205.9, -4 , 0 );
setMoveKey( spep_3 - n + 64, 1, 166, -32.2 , 0 );
setMoveKey( spep_3 - n + 66, 1, 176.7, -26 , 0 );
setMoveKey( spep_3 - n + 68, 1, 176.8, -31.4 , 0 );
setMoveKey( spep_3 - n + 70, 1, 198.2, -24.3 , 0 );
setMoveKey( spep_3 - n + 72, 1, 209.1, -28.8 , 0 );
setMoveKey( spep_3 - n + 74, 1, 241.3, -20.8 , 0 );
setMoveKey( spep_3 - n + 76, 1, 262.9, -24.5 , 0 );
setMoveKey( spep_3 - n + 78, 1, 305.9, -15.7 , 0 );
setMoveKey( spep_3 - n + 80, 1, 338.3, -18.4 , 0 );
setMoveKey( spep_3 - n + 82, 1, 392.1, -8.8 , 0 );
setMoveKey( spep_3 - n + 84, 1, 435.3, -10.7 , 0 );
setMoveKey( spep_3 - n + 86, 1, 435.3, -10.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3 - n + 2, 1, 1.24, 1.24 );
setScaleKey( spep_3 - n + 4, 1, 1.29, 1.29 );
setScaleKey( spep_3 - n + 6, 1, 1.33, 1.33 );
setScaleKey( spep_3 - n + 8, 1, 1.37, 1.37 );
setScaleKey( spep_3 - n + 10, 1, 1.41, 1.41 );
setScaleKey( spep_3 - n + 12, 1, 1.46, 1.46 );
setScaleKey( spep_3 - n + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 - n + 16, 1, 1.54, 1.54 );
setScaleKey( spep_3 - n + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 - n + 20, 1, 1.63, 1.63 );
setScaleKey( spep_3 - n + 22, 1, 1.67, 1.67 );
setScaleKey( spep_3 - n + 24, 1, 1.71, 1.71 );
setScaleKey( spep_3 - n + 26, 1, 1.76, 1.76 );
setScaleKey( spep_3 - n + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 59, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 60, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 64, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 66, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 68, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 70, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 72, 1, 1.71, 1.71 );
setScaleKey( spep_3 - n + 74, 1, 1.59, 1.59 );
setScaleKey( spep_3 - n + 76, 1, 1.44, 1.44 );
setScaleKey( spep_3 - n + 78, 1, 1.27, 1.27 );
setScaleKey( spep_3 - n + 80, 1, 1.07, 1.07 );
setScaleKey( spep_3 - n + 82, 1, 0.84, 0.84 );
setScaleKey( spep_3 - n + 84, 1, 0.58, 0.58 );
setScaleKey( spep_3 - n + 86, 1, 0.58, 0.58 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 - n + 59, 1, 0 );
setRotateKey( spep_3 - n + 60, 1, 23.6 );
setRotateKey( spep_3 - n + 62, 1, -15.8 );
setRotateKey( spep_3 - n + 64, 1, 0 );
setRotateKey( spep_3 - n + 86, 1, 0 );


-- ** 音 ** --
--敵ヒット
SE023 = playSeVer2( spep_3 + 46, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 46, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 46, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 98;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 112, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 112, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 108 ); -- 終了フレーム





else
------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
--冒頭シーン (276F)
------------------------------------------------------

spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 );  --開始カットイン→画面手前飛ぶ ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 276, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 276, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 276, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 276 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 276 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 276, first_f, 0 );

spep_x = spep_0 + 4;
--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
--集中線
SE001 = playSeVer2( spep_0 + 2, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE001, 74 );

--顔カットイン
SE003 = playSeVer2( spep_0 + 6, 1018, "", 0, 0, 0, -1);

--オーラ
SE002 = playSeVer2( spep_0 + 2, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 2, SE002, 63 );
SE004 = playSeVer2( spep_0 + 26, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 26, SE004, 63 );
SE005 = playSeVer2( spep_0 + 50, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 50, SE005, 63 );
SE006 = playSeVer2( spep_0 + 74, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 74, SE006, 63 );

--向かってくる
SE007 = playSeVer2( spep_0 + 90, 1182, "",spep_0 + 140, 0, 8, -1);
SE008 = playSeVer2( spep_0 + 90, 1117, "",spep_0 + 140, 0, 8, -1);


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 120; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE003, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    
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
-- ** 音 ** --
--ブレーキ
SE009 = playSeVer2( spep_0 + 130, 1323, "",spep_0 + 154, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 130, SE009, 69 );

--咳
SE010 = playSeVer2( spep_0 + 192, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE010, 68 );
SE011 = playSeVer2( spep_0 + 192, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 192, SE011, 83 );
SE012 = playSeVer2( spep_0 + 218, 1007, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE012, 68 );
SE013 = playSeVer2( spep_0 + 218, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 218, SE013, 84 );

--向かってくる2
SE014 = playSeVer2( spep_0 + 246, 1119, "",spep_0 + 284, 0, 10, -1);


-- ** 次の準備 ** --
spep_1 = spep_0 + 276;


--------------------------------------
--カードカットイン(94F)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
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

--敵に向かっていく
SE016 = playSeVer2( spep_1 + 88, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 88, SE016, 73 );
SE017 = playSeVer2( spep_1 + 88, 1312, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 88, 1304, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 88, 1182, "", 0, 0, 0, -1);


-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 94, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;



------------------------------------------------------
--横突進 (118F)
------------------------------------------------------
-- ** エフェクト等 ** --
tosshin = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_2 + 0, tosshin, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, tosshin, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, tosshin, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, tosshin, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, tosshin, 0 );
setEffRotateKey( spep_2 + 116, tosshin, 0 );
setEffAlphaKey( spep_2 + 0, tosshin, 255 );
setEffAlphaKey( spep_2 + 116 -2, tosshin, 255 );
setEffAlphaKey( spep_2 + 116 -1, tosshin, 255 );
setEffAlphaKey( spep_2 + 116, tosshin, 0 );

-- ** 音 ** --
--加速する
SE020 = playSeVer2( spep_2 + 68, 1117, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_2 + 68, 9, "",spep_2 + 116 + 88, 0, 36, -1);
SE022 = playSeVer2( spep_2 + 68, 1314, "",spep_2 + 116 + 88, 0, 36, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 116;


------------------------------------------------------
--ヒット (98F)
------------------------------------------------------
-- ** エフェクト等 ** --
hit_f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_f, 0 );
setEffRotateKey( spep_3 + 98, hit_f, 0 );
setEffAlphaKey( spep_3 + 0, hit_f, 255 );
setEffAlphaKey( spep_3 + 98 -2, hit_f, 255 );
setEffAlphaKey( spep_3 + 98 -1, hit_f, 255 );
setEffAlphaKey( spep_3 + 98, hit_f, 0 );

hit_b = entryEffect( spep_3 + 0, SP_04r, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 98, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 98, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, hit_b, 0 );
setEffRotateKey( spep_3 + 98, hit_b, 0 );
setEffAlphaKey( spep_3 + 0, hit_b, 255 );
setEffAlphaKey( spep_3 + 98 -2, hit_b, 255 );
setEffAlphaKey( spep_3 + 98 -1, hit_b, 255 );
setEffAlphaKey( spep_3 + 98, hit_b, 0 );

-- ** 流線 ** --
ryusen_b = entryEffectLife( spep_3 + 0, 907, 47, 0x80, -1, 0, 0, 0 );  
setEffMoveKey( spep_3 + 0, ryusen_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 47, ryusen_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, ryusen_b, 1.1, 1.1 );
setEffScaleKey( spep_3 + 47, ryusen_b, 1.1, 1.1 );
setEffRotateKey( spep_3 + 0, ryusen_b, 0 );
setEffRotateKey( spep_3 + 47, ryusen_b, 0 );
setEffAlphaKey( spep_3 + 0, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47 -2, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47 -1, ryusen_b, 255 );
setEffAlphaKey( spep_3 + 47, ryusen_b, 0 );

n = 1;

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 - n + 86, 1, 0 );
changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 - n + 60, 1, 108 );

setMoveKey( spep_3 + 0, 1, 703.8, -60.2 , 0 );
setMoveKey( spep_3 - n + 2, 1, 679.8, -49.7 , 0 );
setMoveKey( spep_3 - n + 4, 1, 637.9, -55.2 , 0 );
setMoveKey( spep_3 - n + 6, 1, 611.9, -48.7 , 0 );
setMoveKey( spep_3 - n + 8, 1, 570, -54.3 , 0 );
setMoveKey( spep_3 - n + 10, 1, 544, -47.8 , 0 );
setMoveKey( spep_3 - n + 12, 1, 502.1, -53.3 , 0 );
setMoveKey( spep_3 - n + 14, 1, 476.1, -46.8 , 0 );
setMoveKey( spep_3 - n + 16, 1, 434.1, -52.3 , 0 );
setMoveKey( spep_3 - n + 18, 1, 408.2, -45.9 , 0 );
setMoveKey( spep_3 - n + 20, 1, 366.2, -51.4 , 0 );
setMoveKey( spep_3 - n + 22, 1, 340.3, -44.9 , 0 );
setMoveKey( spep_3 - n + 24, 1, 298.3, -50.4 , 0 );
setMoveKey( spep_3 - n + 26, 1, 272.4, -43.9 , 0 );
setMoveKey( spep_3 - n + 28, 1, 230.4, -49.5 , 0 );
setMoveKey( spep_3 - n + 30, 1, 232.1, -43.5 , 0 );
setMoveKey( spep_3 - n + 32, 1, 217.8, -49.5 , 0 );
setMoveKey( spep_3 - n + 34, 1, 219.6, -43.5 , 0 );
setMoveKey( spep_3 - n + 36, 1, 205.3, -49.5 , 0 );
setMoveKey( spep_3 - n + 38, 1, 207, -43.5 , 0 );
setMoveKey( spep_3 - n + 40, 1, 192.7, -49.5 , 0 );
setMoveKey( spep_3 - n + 42, 1, 194.4, -43.5 , 0 );
setMoveKey( spep_3 - n + 44, 1, 180.1, -49.5 , 0 );
setMoveKey( spep_3 - n + 46, 1, 181.8, -43.5 , 0 );
setMoveKey( spep_3 - n + 48, 1, 167.6, -49.5 , 0 );
setMoveKey( spep_3 - n + 50, 1, 169.3, -43.5 , 0 );
setMoveKey( spep_3 - n + 52, 1, 155, -49.5 , 0 );
setMoveKey( spep_3 - n + 54, 1, 156.7, -43.5 , 0 );
setMoveKey( spep_3 - n + 56, 1, 142.4, -49.5 , 0 );
setMoveKey( spep_3 - n + 59, 1, 144.1, -43.5 , 0 );
setMoveKey( spep_3 - n + 60, 1, 166, -27.3 , 0 );
setMoveKey( spep_3 - n + 62, 1, 205.9, -4 , 0 );
setMoveKey( spep_3 - n + 64, 1, 166, -32.2 , 0 );
setMoveKey( spep_3 - n + 66, 1, 176.7, -26 , 0 );
setMoveKey( spep_3 - n + 68, 1, 176.8, -31.4 , 0 );
setMoveKey( spep_3 - n + 70, 1, 198.2, -24.3 , 0 );
setMoveKey( spep_3 - n + 72, 1, 209.1, -28.8 , 0 );
setMoveKey( spep_3 - n + 74, 1, 241.3, -20.8 , 0 );
setMoveKey( spep_3 - n + 76, 1, 262.9, -24.5 , 0 );
setMoveKey( spep_3 - n + 78, 1, 305.9, -15.7 , 0 );
setMoveKey( spep_3 - n + 80, 1, 338.3, -18.4 , 0 );
setMoveKey( spep_3 - n + 82, 1, 392.1, -8.8 , 0 );
setMoveKey( spep_3 - n + 84, 1, 435.3, -10.7 , 0 );
setMoveKey( spep_3 - n + 86, 1, 435.3, -10.7 , 0 );

setScaleKey( spep_3 + 0, 1, 1.2, 1.2 );
setScaleKey( spep_3 - n + 2, 1, 1.24, 1.24 );
setScaleKey( spep_3 - n + 4, 1, 1.29, 1.29 );
setScaleKey( spep_3 - n + 6, 1, 1.33, 1.33 );
setScaleKey( spep_3 - n + 8, 1, 1.37, 1.37 );
setScaleKey( spep_3 - n + 10, 1, 1.41, 1.41 );
setScaleKey( spep_3 - n + 12, 1, 1.46, 1.46 );
setScaleKey( spep_3 - n + 14, 1, 1.5, 1.5 );
setScaleKey( spep_3 - n + 16, 1, 1.54, 1.54 );
setScaleKey( spep_3 - n + 18, 1, 1.59, 1.59 );
setScaleKey( spep_3 - n + 20, 1, 1.63, 1.63 );
setScaleKey( spep_3 - n + 22, 1, 1.67, 1.67 );
setScaleKey( spep_3 - n + 24, 1, 1.71, 1.71 );
setScaleKey( spep_3 - n + 26, 1, 1.76, 1.76 );
setScaleKey( spep_3 - n + 28, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 59, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 60, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 64, 1, 1.92, 1.92 );
setScaleKey( spep_3 - n + 66, 1, 1.91, 1.91 );
setScaleKey( spep_3 - n + 68, 1, 1.87, 1.87 );
setScaleKey( spep_3 - n + 70, 1, 1.8, 1.8 );
setScaleKey( spep_3 - n + 72, 1, 1.71, 1.71 );
setScaleKey( spep_3 - n + 74, 1, 1.59, 1.59 );
setScaleKey( spep_3 - n + 76, 1, 1.44, 1.44 );
setScaleKey( spep_3 - n + 78, 1, 1.27, 1.27 );
setScaleKey( spep_3 - n + 80, 1, 1.07, 1.07 );
setScaleKey( spep_3 - n + 82, 1, 0.84, 0.84 );
setScaleKey( spep_3 - n + 84, 1, 0.58, 0.58 );
setScaleKey( spep_3 - n + 86, 1, 0.58, 0.58 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 - n + 59, 1, 0 );
setRotateKey( spep_3 - n + 60, 1, 23.6 );
setRotateKey( spep_3 - n + 62, 1, -15.8 );
setRotateKey( spep_3 - n + 64, 1, 0 );
setRotateKey( spep_3 - n + 86, 1, 0 );


-- ** 音 ** --
--敵ヒット
SE023 = playSeVer2( spep_3 + 46, 1011, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_3 + 46, 1153, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 46, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 98;


------------------------------------------------------
-- 敵が画面衝突(100F)
------------------------------------------------------
-- ** ひび割れ ** --
finish_f = entryEffect( spep_4 + 0, SP_05r, 0x100, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 112, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 112, finish_f, 255 );

finish_b = entryEffect( spep_4 + 0, SP_06r, 0x80, -1, 0, 0, 0 );  --敵が画面衝突(画面割れ)
setEffMoveKey( spep_4 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 112, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_4 + 112, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_b, 0 );
setEffRotateKey( spep_4 + 112, finish_b, 0 );
setEffAlphaKey( spep_4 + 0, finish_b, 255 );
setEffAlphaKey( spep_4 + 112, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 + 112, 1, 0 );

changeAnime( spep_4 + 0, 1, 107 );

--真ん中から飛んでくる場合
setMoveKey( spep_4 + 0, 1, -8.2 + 30, -19.3 + 30, 0 );
setMoveKey( spep_4 + 2, 1, -8.2, -19.3 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -12.5, -24.9 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -16.6, -29.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -20.2, -35.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -24.9, -41.3 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -28.8, -46 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -32.3, -52 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -37.3, -57.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -37.2, -57.6 , 0 );
setMoveKey( spep_4 + 112, 1, -37.2, -57.6 , 0 );

setScaleKey( spep_4 + 0, 1, 0.16, 0.16 );
setScaleKey( spep_4 + 2, 1, 0.2, 0.2 );
setScaleKey( spep_4 -3 + 6, 1, 0.42, 0.42 );
setScaleKey( spep_4 -3 + 8, 1, 0.635, 0.635 );
setScaleKey( spep_4 -3 + 10, 1, 0.855, 0.855 );
setScaleKey( spep_4 -3 + 12, 1, 1.075, 1.07 );
setScaleKey( spep_4 -3 + 14, 1, 1.295, 1.29 );
setScaleKey( spep_4 -3 + 16, 1, 1.51, 1.505 );
setScaleKey( spep_4 -3 + 18, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 20, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 22, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 24, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 26, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 28, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 30, 1, 1.73, 1.725 );
setScaleKey( spep_4 -3 + 32, 1, 1.905, 1.9 );
setScaleKey( spep_4 -3 + 34, 1, 1.73, 1.725 );
setScaleKey( spep_4 + 112, 1, 1.73, 1.725 );

setRotateKey( spep_4 + 0, 1, -122.8 - 232 );
setRotateKey( spep_4 + 2, 1, -122.8 );
setRotateKey( spep_4 -3 + 6, 1, -1 );
setRotateKey( spep_4 -3 + 8, 1, 120.7 );
setRotateKey( spep_4 -3 + 10, 1, 242.5 );
setRotateKey( spep_4 -3 + 12, 1, 364.3 );
setRotateKey( spep_4 -3 + 14, 1, 486 );
setRotateKey( spep_4 -3 + 16, 1, 607.8 );
setRotateKey( spep_4 -3 + 18, 1, 729.5 );
setRotateKey( spep_4 + 112, 1, 729.5 );
--ここまで

-- ** 音 ** --
--爆発
SE0N1 = playSeVer2( spep_4 + 0, 1023, "", 0, 0, 0, -1);

--画面割れ
SE0N2 = playSeVer2( spep_4 + 14, 1025, "", 0, 0, 0, -1);
SE0N3 = playSeVer2( spep_4 + 14, 1054, "", 0, 0, 0, -1);

-- -- ** ダメージ表示 ** --
dealDamage( spep_4 + 6 ); -- ダメージ表示フレーム
endPhase( spep_4 + 108 ); -- 終了フレーム



end