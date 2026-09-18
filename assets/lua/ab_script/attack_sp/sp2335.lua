--1023770:UR_ギニュー_必殺技：ミルキーキャノン
--sp_effect_a2_00175
--sp2335

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
SP_01 = 159306; --冒頭～突進 ef_001
SP_02 = 159307; --エルボー～ラスト・手前 ef_002
SP_03 = 159309; --エルボー～ラスト・奥 ef_003

--敵側
SP_02r = 159308; --敵用：エルボー～ラスト・手前 ef_002r
SP_03r = 159310; --敵用：エルボー～ラスト・奥 ef_003r

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
-- 冒頭～突進(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 176, 0x100, -1, 0, 0, 0 );  --冒頭～突進  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 176, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 176 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 176, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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

--顔カットイン
--SE0000 = 

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 92, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
SE002 = playSeVer2( spep_0 + 0, 1330, "", 0, 0, 0, -1);

--顔カットイン
SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 80, 1182, "",spep_0 +178, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 80, 9, "",spep_0 +178, 0, 12, -1);
setTimeStretch( SE005, 1.25, 30, 4 );
SE006 = playSeVer2( spep_0 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 44 );
setTimeStretch( SE006, 1.25, 30, 4 );

--腕振りかぶる
SE007 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE007, 138 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 142 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);  

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_0 + 150, 1109, "",spep_0 +188, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;


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
-- 突進からの気弾(710F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --エルボー～ラスト・手前   ef_002
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 710, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, effect03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 710, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 710, effect03, 255 );

effect04 = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --エルボー～ラスト・奥    ef_003
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 710, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, effect04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 710, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 710, effect04, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 14, 1, 100 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 22, 1, 108 );

setMoveKey( spep_2 + 0, 1, -92.6, -68.2 , 0 );
setMoveKey( spep_2 + 1, 1, -74.3, -68.2 , 0 );
setMoveKey( spep_2 + 2, 1, -56, -68.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -37.8, -68.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -19.5, -68.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -1.2, -68.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 17.1, -68.2 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 17.1, -68.2 , 0 );--
setMoveKey( spep_2 -3 + 14, 1, 41.1, -65 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 41.1, -65 , 0 );--
setMoveKey( spep_2 -3 + 18, 1, 112.5, -36 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 112.5, -36 , 0 );--
setMoveKey( spep_2 -3 + 22, 1, 373.9, -26.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 324.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 265.3, 5.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 251.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 206.8, -22.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 182.1, -13.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 135, -19.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 132.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 117.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 383.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 351.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 321.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 293.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 268.1, -13.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 244.8, -13.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 223.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 204.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 187.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 173.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 161, -13.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 401.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 387.4, -13.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 373.8, -13.4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 365.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 358.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 351.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 344.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 337.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 331.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 325.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 325.2, -13.3 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 14, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 18, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 21, 1, 3.8, 3.8 );--
setScaleKey( spep_2 -3 + 22, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 80, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 82, 1, 4.39, 4.39 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 14, 1, 0 );
setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 21, 1, 0 );--
setRotateKey( spep_2 -3 + 22, 1, 13.2 );
setRotateKey( spep_2 -3 + 80, 1, 13.2 );
setRotateKey( spep_2 -3 + 82, 1, 13.2 );

--敵の動き2
setDisp( spep_2 -3 + 86, 1, 1 );
setDisp( spep_2 -3 + 164, 1, 0 );
changeAnime( spep_2 -3 + 86, 1, 5 );

setMoveKey( spep_2 -3 + 86, 1, -453.5, -336.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -319.5, -226.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -185.6, -116.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -51.6, -5.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -26.7, 11.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -1.9, 28.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 23, 46.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 47.9, 63.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 56, 61.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 64.1, 60.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 72.2, 58.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 80.3, 56.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 88.4, 55.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 96.6, 53.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 104.7, 51.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 108.9, 34.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 121, 48.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 110.2, 59.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 123.3, 46.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 120.5, 33.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 125.6, 44.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 118.8, 35 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 127.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 125.1, 36.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 130.2, 39.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 127.4, 42.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 132.5, 37.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 133.7, 36.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 134.9, 35.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 136, 34 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 137.2, 32.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 138.3, 31.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 139.5, 30.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 140.6, 29.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 141.8, 28.4 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 143, 27.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 144.1, 26.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 145.3, 25 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 146.5, 23.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 146.5, 23.9 , 0 );

setScaleKey( spep_2 -3 + 86, 1, 5.9, 5.9 );
setScaleKey( spep_2 -3 + 88, 1, 4.71, 4.71 );
setScaleKey( spep_2 -3 + 90, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 94, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 96, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 98, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 102, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 104, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 106, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 110, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 114, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 116, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 118, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 120, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 122, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 124, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 126, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 128, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 130, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 132, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 134, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 136, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 138, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 140, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 142, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 144, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 146, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 148, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 154, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 156, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 158, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 160, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 162, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 164, 1, 0.08, 0.08 );

setRotateKey( spep_2 -3 + 86, 1, 59 );
setRotateKey( spep_2 -3 + 88, 1, 60.6 );
setRotateKey( spep_2 -3 + 90, 1, 62.1 );
setRotateKey( spep_2 -3 + 92, 1, 63.7 );
setRotateKey( spep_2 -3 + 100, 1, 63.7 );
setRotateKey( spep_2 -3 + 102, 1, 64.5 );
setRotateKey( spep_2 -3 + 104, 1, 65.4 );
setRotateKey( spep_2 -3 + 106, 1, 66.2 );
setRotateKey( spep_2 -3 + 108, 1, 67 );
setRotateKey( spep_2 -3 + 110, 1, 67.9 );
setRotateKey( spep_2 -3 + 112, 1, 68.7 );
setRotateKey( spep_2 -3 + 114, 1, 69.5 );
setRotateKey( spep_2 -3 + 116, 1, 70.3 );
setRotateKey( spep_2 -3 + 118, 1, 71.2 );
setRotateKey( spep_2 -3 + 120, 1, 71.5 );
setRotateKey( spep_2 -3 + 122, 1, 71.8 );
setRotateKey( spep_2 -3 + 124, 1, 72.1 );
setRotateKey( spep_2 -3 + 126, 1, 72.5 );
setRotateKey( spep_2 -3 + 128, 1, 72.8 );
setRotateKey( spep_2 -3 + 130, 1, 73.1 );
setRotateKey( spep_2 -3 + 132, 1, 73.4 );
setRotateKey( spep_2 -3 + 134, 1, 73.7 );
setRotateKey( spep_2 -3 + 136, 1, 74 );
setRotateKey( spep_2 -3 + 138, 1, 74.4 );
setRotateKey( spep_2 -3 + 140, 1, 74.7 );
setRotateKey( spep_2 -3 + 142, 1, 75 );
setRotateKey( spep_2 -3 + 144, 1, 75.3 );
setRotateKey( spep_2 -3 + 146, 1, 75.6 );
setRotateKey( spep_2 -3 + 148, 1, 76 );
setRotateKey( spep_2 -3 + 150, 1, 76.3 );
setRotateKey( spep_2 -3 + 152, 1, 76.6 );
setRotateKey( spep_2 -3 + 154, 1, 76.9 );
setRotateKey( spep_2 -3 + 156, 1, 77.2 );
setRotateKey( spep_2 -3 + 158, 1, 77.6 );
setRotateKey( spep_2 -3 + 160, 1, 77.9 );
setRotateKey( spep_2 -3 + 162, 1, 78.2 );
setRotateKey( spep_2 -3 + 164, 1, 78.2 );

--敵の動き3
setDisp( spep_2 -3 + 168, 1, 1 );
setDisp( spep_2 -3 + 250, 1, 0 );
changeAnime( spep_2 -3 + 168, 1, 106 );
changeAnime( spep_2 -3 + 232, 1, 108 );

setMoveKey( spep_2 -3 + 168, 1, -1.6, -673.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -1.6, -589.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -1.6, -477.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -1.6, -337.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -1.6, -169.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -1.6, 26.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -1.6, 33.6 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -1.6, 40.9 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -1.6, 48 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -1.6, 55 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -1.6, 61.7 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -1.6, 68.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -1.6, 74.6 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -1.6, 80.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -1.6, 86.7 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -1.6, 92.5 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -1.6, 98 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -1.6, 103.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -1.6, 108.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -1.6, 113.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -1.6, 118.3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -1.6, 122.9 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -1.6, 127.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -1.6, 131.5 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -1.6, 135.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -1.6, 139.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -1.6, 142.9 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -1.6, 146.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -1.6, 149.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -1.6, 152.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -1.6, 155.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -1.6, 158.1 , 0 );
setMoveKey( spep_2 -3 + 231, 1, -1.6, 158.1 , 0 );--
setMoveKey( spep_2 -3 + 232, 1, 125.9, 22.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 150.8, 24.6 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 125.3, 29.7 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 264.8, -89.4 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 385.6, -179.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 459.9, -284 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 571.6, -318.5 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 612.6, -339.1 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 683.1, -401.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 683.1, -401.9 , 0 );

s2 = 0.4;
setScaleKey( spep_2 -3 + 168, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 231, 1, 2.4 +s2, 2.4 +s2 );--

setScaleKey( spep_2 -3 + 232, 1, 4.8, 4.8 );
setScaleKey( spep_2 -3 + 234, 1, 4.3, 4.3 );
setScaleKey( spep_2 -3 + 236, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 238, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 240, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 242, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 244, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 246, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 248, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 250, 1, 0.74, 0.74 );

setRotateKey( spep_2 -3 + 168, 1, -50.2 );
setRotateKey( spep_2 -3 + 231, 1, -50.2 );--
setRotateKey( spep_2 -3 + 232, 1, 13.2 );
setRotateKey( spep_2 -3 + 248, 1, 13.2 );
setRotateKey( spep_2 -3 + 250, 1, 13.2 );

--敵の動き4
setDisp( spep_2 -3 + 272, 1, 1 );
setDisp( spep_2 -3 + 284, 1, 0 );
changeAnime( spep_2 -3 + 272, 1, 108 );

setMoveKey( spep_2 -3 + 272, 1, -674.7, 620.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -458, 420 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -272.2, 248.5 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -117.5, 105.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 6.4, -8.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 99, -94.5 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 99, -94.5 , 0 );

setScaleKey( spep_2 -3 + 272, 1, 4.43, 4.43 );
setScaleKey( spep_2 -3 + 274, 1, 3.32, 3.32 );
setScaleKey( spep_2 -3 + 276, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 278, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 280, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 282, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 284, 1, 0.45, 0.45 );

setRotateKey( spep_2 -3 + 272, 1, 13.2 );
setRotateKey( spep_2 -3 + 284, 1, 13.2 );

-- ** 音 ** --
--エルボー
SE010 = playSeVer2( spep_2 + 2, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 10, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 74, 1183, "", 0, 0, 0, -1);

--飛び立つ
SE015 = playSeVer2( spep_2 + 102, 1168, "",spep_2 + 166, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 102, SE015, 80 );
SE016 = playSeVer2( spep_2 + 102, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 82 );
SE017 = playSeVer2( spep_2 + 102, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE017, 80 );

--飛行中音
SE018 = playSeVer2( spep_2 + 152, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE018, 140 );

--振りかぶる
SE019 = playSeVer2( spep_2 + 182, 1116, "",spep_2 + 218, 0, 12, -1);
SE020 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE020, 83 );

--飛行中音
SE021 = playSeVer2( spep_2 + 216, 1019, "",spep_2 + 226, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 216, SE021, 135 );

--パンチ
SE022 = playSeVer2( spep_2 + 222, 1120, "", 0, 0, 0, -1);

--地面激突
SE023 = playSeVer2( spep_2 + 270, 1159, "",spep_2 + 358, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 270, SE023, 75 );
SE024 = playSeVer2( spep_2 + 270, 1023, "",spep_2 + 358, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 270, SE024, 71 );

--エネルギー溜め
SE025 = playSeVer2( spep_2 + 324, 1037, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 324, SE025, 150 );
SE026 = playSeVer2( spep_2 + 334, 1161, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 334, SE026, 76 );
SE027 = playSeVer2( spep_2 + 346, 1200, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 346, SE027, 263 );
SE028 = playSeVer2( spep_2 + 346, 1122, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 346, SE028, 84 );

--気弾発射
SE029 = playSeVer2( spep_2 + 422, 1133, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 422, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 486, 1021, "", 0, 0, 0, -1);

--気弾地面えぐっていく
SE032 = playSeVer2( spep_2 + 524, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE032, 188 );
SE033 = playSeVer2( spep_2 + 532, 1213, "",spep_2 + 656, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 532, SE033, 63 );
SE034 = playSeVer2( spep_2 + 532, 1168, "",spep_2 + 656, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 532, SE034, 72 );

--爆発
SE035 = playSeVer2( spep_2 + 596, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 596, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 710 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 600 );
endPhase( spep_2 + 700 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 冒頭～突進(176F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 176, 0x100, -1, 0, 0, 0 );  --冒頭～突進  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 176, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 176, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 176, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 176 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 176, first_f, 0 );

spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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

--顔カットイン
--SE0000 = 

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1226, "",spep_0 + 92, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 33 );
SE002 = playSeVer2( spep_0 + 0, 1330, "", 0, 0, 0, -1);

--顔カットイン
--SE003 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--突っ込んでくる
SE004 = playSeVer2( spep_0 + 80, 1182, "",spep_0 +178, 0, 12, -1);
SE005 = playSeVer2( spep_0 + 80, 9, "",spep_0 +178, 0, 12, -1);
setTimeStretch( SE005, 1.25, 30, 4 );
SE006 = playSeVer2( spep_0 + 86, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 86, SE006, 44 );
setTimeStretch( SE006, 1.25, 30, 4 );

--腕振りかぶる
SE007 = playSeVer2( spep_0 + 126, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 126, SE007, 138 );


-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 142 ; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE002, 0);
    stopSe( SP_dodge - 12, SE004, 0);
    stopSe( SP_dodge - 12, SE005, 0);
    stopSe( SP_dodge - 12, SE006, 0);
    stopSe( SP_dodge - 12, SE007, 0);

    pauseAll( SP_dodge, 67);  

    speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

    kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
    --entryFadeBg( SP_dodge, 0, 90, 0,0, 0, 0, 180);          -- ベース暗め 背景

    entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
    endPhase(SP_dodge+10);

    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_0 + 150, 1109, "",spep_0 +188, 0, 12, -1);

-- ** 次の準備 ** --
spep_1 = spep_0 + 176;


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

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 突進からの気弾(710F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
effect03 = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0 );  --エルボー～ラスト・手前   ef_002
setEffMoveKey( spep_2 + 0, effect03, 0, 0 , 0 );
setEffMoveKey( spep_2 + 710, effect03, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect03, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, effect03, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect03, 0 );
setEffRotateKey( spep_2 + 710, effect03, 0 );
setEffAlphaKey( spep_2 + 0, effect03, 255 );
setEffAlphaKey( spep_2 + 710, effect03, 255 );

effect04 = entryEffect( spep_2 + 0, SP_03r, 0x80, -1, 0, 0, 0 );  --エルボー～ラスト・奥    ef_003
setEffMoveKey( spep_2 + 0, effect04, 0, 0 , 0 );
setEffMoveKey( spep_2 + 710, effect04, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, effect04, 1.0, 1.0 );
setEffScaleKey( spep_2 + 710, effect04, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, effect04, 0 );
setEffRotateKey( spep_2 + 710, effect04, 0 );
setEffAlphaKey( spep_2 + 0, effect04, 255 );
setEffAlphaKey( spep_2 + 710, effect04, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 82, 1, 0 );
changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 14, 1, 100 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 22, 1, 108 );

setMoveKey( spep_2 + 0, 1, -92.6, -68.2 , 0 );
setMoveKey( spep_2 + 1, 1, -74.3, -68.2 , 0 );
setMoveKey( spep_2 + 2, 1, -56, -68.2 , 0 );
setMoveKey( spep_2 -3 + 6, 1, -37.8, -68.2 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -19.5, -68.2 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -1.2, -68.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 17.1, -68.2 , 0 );
setMoveKey( spep_2 -3 + 13, 1, 17.1, -68.2 , 0 );--
setMoveKey( spep_2 -3 + 14, 1, 41.1, -65 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 41.1, -65 , 0 );--
setMoveKey( spep_2 -3 + 18, 1, 112.5, -36 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 112.5, -36 , 0 );--
setMoveKey( spep_2 -3 + 22, 1, 373.9, -26.1 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 324.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 265.3, 5.9 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 251.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 206.8, -22.9 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 182.1, -13.3 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 135, -19.7 , 0 );
setMoveKey( spep_2 -3 + 36, 1, 132.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 117.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 383.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 351.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 321.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 293.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 268.1, -13.3 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 244.8, -13.3 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 223.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 204.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 187.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 58, 1, 173.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 161, -13.3 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 401.6, -13.3 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 387.4, -13.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 373.8, -13.4 , 0 );
setMoveKey( spep_2 -3 + 68, 1, 365.9, -13.3 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 358.5, -13.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 351.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 344.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 337.7, -13.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 331.3, -13.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 325.2, -13.3 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 325.2, -13.3 , 0 );

setScaleKey( spep_2 -3 + 0, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 14, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 18, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 21, 1, 3.8, 3.8 );--
setScaleKey( spep_2 -3 + 22, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 80, 1, 4.39, 4.39 );
setScaleKey( spep_2 -3 + 82, 1, 4.39, 4.39 );

setRotateKey( spep_2 -3 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 14, 1, 0 );
setRotateKey( spep_2 -3 + 18, 1, 0 );
setRotateKey( spep_2 -3 + 21, 1, 0 );--
setRotateKey( spep_2 -3 + 22, 1, 13.2 );
setRotateKey( spep_2 -3 + 80, 1, 13.2 );
setRotateKey( spep_2 -3 + 82, 1, 13.2 );

--敵の動き2
setDisp( spep_2 -3 + 86, 1, 1 );
setDisp( spep_2 -3 + 164, 1, 0 );
changeAnime( spep_2 -3 + 86, 1, 5 );

setMoveKey( spep_2 -3 + 86, 1, -453.5, -336.8 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -319.5, -226.4 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -185.6, -116.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -51.6, -5.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -26.7, 11.6 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -1.9, 28.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 23, 46.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 47.9, 63.5 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 56, 61.8 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 64.1, 60.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 72.2, 58.4 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 80.3, 56.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 88.4, 55.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 96.6, 53.4 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 104.7, 51.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 108.9, 34.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 121, 48.6 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 110.2, 59.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 123.3, 46.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 120.5, 33.2 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 125.6, 44.1 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 118.8, 35 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 127.9, 41.9 , 0 );
setMoveKey( spep_2 -3 + 132, 1, 125.1, 36.7 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 130.2, 39.6 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 127.4, 42.5 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 132.5, 37.4 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 133.7, 36.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 134.9, 35.1 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 136, 34 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 137.2, 32.9 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 138.3, 31.7 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 139.5, 30.6 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 140.6, 29.5 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 141.8, 28.4 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 143, 27.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 144.1, 26.1 , 0 );
setMoveKey( spep_2 -3 + 160, 1, 145.3, 25 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 146.5, 23.9 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 146.5, 23.9 , 0 );

setScaleKey( spep_2 -3 + 86, 1, 5.9, 5.9 );
setScaleKey( spep_2 -3 + 88, 1, 4.71, 4.71 );
setScaleKey( spep_2 -3 + 90, 1, 3.52, 3.52 );
setScaleKey( spep_2 -3 + 92, 1, 2.33, 2.33 );
setScaleKey( spep_2 -3 + 94, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 96, 1, 1.82, 1.82 );
setScaleKey( spep_2 -3 + 98, 1, 1.57, 1.57 );
setScaleKey( spep_2 -3 + 100, 1, 1.31, 1.31 );
setScaleKey( spep_2 -3 + 102, 1, 1.2, 1.2 );
setScaleKey( spep_2 -3 + 104, 1, 1.09, 1.09 );
setScaleKey( spep_2 -3 + 106, 1, 0.98, 0.98 );
setScaleKey( spep_2 -3 + 108, 1, 0.88, 0.88 );
setScaleKey( spep_2 -3 + 110, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 112, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 114, 1, 0.55, 0.55 );
setScaleKey( spep_2 -3 + 116, 1, 0.44, 0.44 );
setScaleKey( spep_2 -3 + 118, 1, 0.33, 0.33 );
setScaleKey( spep_2 -3 + 120, 1, 0.32, 0.32 );
setScaleKey( spep_2 -3 + 122, 1, 0.31, 0.31 );
setScaleKey( spep_2 -3 + 124, 1, 0.3, 0.3 );
setScaleKey( spep_2 -3 + 126, 1, 0.29, 0.29 );
setScaleKey( spep_2 -3 + 128, 1, 0.27, 0.27 );
setScaleKey( spep_2 -3 + 130, 1, 0.26, 0.26 );
setScaleKey( spep_2 -3 + 132, 1, 0.25, 0.25 );
setScaleKey( spep_2 -3 + 134, 1, 0.24, 0.24 );
setScaleKey( spep_2 -3 + 136, 1, 0.23, 0.23 );
setScaleKey( spep_2 -3 + 138, 1, 0.22, 0.22 );
setScaleKey( spep_2 -3 + 140, 1, 0.2, 0.2 );
setScaleKey( spep_2 -3 + 142, 1, 0.19, 0.19 );
setScaleKey( spep_2 -3 + 144, 1, 0.18, 0.18 );
setScaleKey( spep_2 -3 + 146, 1, 0.17, 0.17 );
setScaleKey( spep_2 -3 + 148, 1, 0.16, 0.16 );
setScaleKey( spep_2 -3 + 150, 1, 0.15, 0.15 );
setScaleKey( spep_2 -3 + 152, 1, 0.14, 0.14 );
setScaleKey( spep_2 -3 + 154, 1, 0.12, 0.12 );
setScaleKey( spep_2 -3 + 156, 1, 0.11, 0.11 );
setScaleKey( spep_2 -3 + 158, 1, 0.1, 0.1 );
setScaleKey( spep_2 -3 + 160, 1, 0.09, 0.09 );
setScaleKey( spep_2 -3 + 162, 1, 0.08, 0.08 );
setScaleKey( spep_2 -3 + 164, 1, 0.08, 0.08 );

setRotateKey( spep_2 -3 + 86, 1, 59 );
setRotateKey( spep_2 -3 + 88, 1, 60.6 );
setRotateKey( spep_2 -3 + 90, 1, 62.1 );
setRotateKey( spep_2 -3 + 92, 1, 63.7 );
setRotateKey( spep_2 -3 + 100, 1, 63.7 );
setRotateKey( spep_2 -3 + 102, 1, 64.5 );
setRotateKey( spep_2 -3 + 104, 1, 65.4 );
setRotateKey( spep_2 -3 + 106, 1, 66.2 );
setRotateKey( spep_2 -3 + 108, 1, 67 );
setRotateKey( spep_2 -3 + 110, 1, 67.9 );
setRotateKey( spep_2 -3 + 112, 1, 68.7 );
setRotateKey( spep_2 -3 + 114, 1, 69.5 );
setRotateKey( spep_2 -3 + 116, 1, 70.3 );
setRotateKey( spep_2 -3 + 118, 1, 71.2 );
setRotateKey( spep_2 -3 + 120, 1, 71.5 );
setRotateKey( spep_2 -3 + 122, 1, 71.8 );
setRotateKey( spep_2 -3 + 124, 1, 72.1 );
setRotateKey( spep_2 -3 + 126, 1, 72.5 );
setRotateKey( spep_2 -3 + 128, 1, 72.8 );
setRotateKey( spep_2 -3 + 130, 1, 73.1 );
setRotateKey( spep_2 -3 + 132, 1, 73.4 );
setRotateKey( spep_2 -3 + 134, 1, 73.7 );
setRotateKey( spep_2 -3 + 136, 1, 74 );
setRotateKey( spep_2 -3 + 138, 1, 74.4 );
setRotateKey( spep_2 -3 + 140, 1, 74.7 );
setRotateKey( spep_2 -3 + 142, 1, 75 );
setRotateKey( spep_2 -3 + 144, 1, 75.3 );
setRotateKey( spep_2 -3 + 146, 1, 75.6 );
setRotateKey( spep_2 -3 + 148, 1, 76 );
setRotateKey( spep_2 -3 + 150, 1, 76.3 );
setRotateKey( spep_2 -3 + 152, 1, 76.6 );
setRotateKey( spep_2 -3 + 154, 1, 76.9 );
setRotateKey( spep_2 -3 + 156, 1, 77.2 );
setRotateKey( spep_2 -3 + 158, 1, 77.6 );
setRotateKey( spep_2 -3 + 160, 1, 77.9 );
setRotateKey( spep_2 -3 + 162, 1, 78.2 );
setRotateKey( spep_2 -3 + 164, 1, 78.2 );

--敵の動き3
setDisp( spep_2 -3 + 168, 1, 1 );
setDisp( spep_2 -3 + 250, 1, 0 );
changeAnime( spep_2 -3 + 168, 1, 106 );
changeAnime( spep_2 -3 + 232, 1, 108 );

setMoveKey( spep_2 -3 + 168, 1, -1.6, -673.5 , 0 );
setMoveKey( spep_2 -3 + 170, 1, -1.6, -589.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, -1.6, -477.7 , 0 );
setMoveKey( spep_2 -3 + 174, 1, -1.6, -337.7 , 0 );
setMoveKey( spep_2 -3 + 176, 1, -1.6, -169.8 , 0 );
setMoveKey( spep_2 -3 + 178, 1, -1.6, 26.1 , 0 );
setMoveKey( spep_2 -3 + 180, 1, -1.6, 33.6 , 0 );
setMoveKey( spep_2 -3 + 182, 1, -1.6, 40.9 , 0 );
setMoveKey( spep_2 -3 + 184, 1, -1.6, 48 , 0 );
setMoveKey( spep_2 -3 + 186, 1, -1.6, 55 , 0 );
setMoveKey( spep_2 -3 + 188, 1, -1.6, 61.7 , 0 );
setMoveKey( spep_2 -3 + 190, 1, -1.6, 68.2 , 0 );
setMoveKey( spep_2 -3 + 192, 1, -1.6, 74.6 , 0 );
setMoveKey( spep_2 -3 + 194, 1, -1.6, 80.7 , 0 );
setMoveKey( spep_2 -3 + 196, 1, -1.6, 86.7 , 0 );
setMoveKey( spep_2 -3 + 198, 1, -1.6, 92.5 , 0 );
setMoveKey( spep_2 -3 + 200, 1, -1.6, 98 , 0 );
setMoveKey( spep_2 -3 + 202, 1, -1.6, 103.4 , 0 );
setMoveKey( spep_2 -3 + 204, 1, -1.6, 108.6 , 0 );
setMoveKey( spep_2 -3 + 206, 1, -1.6, 113.5 , 0 );
setMoveKey( spep_2 -3 + 208, 1, -1.6, 118.3 , 0 );
setMoveKey( spep_2 -3 + 210, 1, -1.6, 122.9 , 0 );
setMoveKey( spep_2 -3 + 212, 1, -1.6, 127.3 , 0 );
setMoveKey( spep_2 -3 + 214, 1, -1.6, 131.5 , 0 );
setMoveKey( spep_2 -3 + 216, 1, -1.6, 135.5 , 0 );
setMoveKey( spep_2 -3 + 218, 1, -1.6, 139.3 , 0 );
setMoveKey( spep_2 -3 + 220, 1, -1.6, 142.9 , 0 );
setMoveKey( spep_2 -3 + 222, 1, -1.6, 146.3 , 0 );
setMoveKey( spep_2 -3 + 224, 1, -1.6, 149.6 , 0 );
setMoveKey( spep_2 -3 + 226, 1, -1.6, 152.6 , 0 );
setMoveKey( spep_2 -3 + 228, 1, -1.6, 155.4 , 0 );
setMoveKey( spep_2 -3 + 230, 1, -1.6, 158.1 , 0 );
setMoveKey( spep_2 -3 + 231, 1, -1.6, 158.1 , 0 );--
setMoveKey( spep_2 -3 + 232, 1, 125.9, 22.9 , 0 );
setMoveKey( spep_2 -3 + 234, 1, 150.8, 24.6 , 0 );
setMoveKey( spep_2 -3 + 236, 1, 125.3, 29.7 , 0 );
setMoveKey( spep_2 -3 + 238, 1, 264.8, -89.4 , 0 );
setMoveKey( spep_2 -3 + 240, 1, 385.6, -179.7 , 0 );
setMoveKey( spep_2 -3 + 242, 1, 459.9, -284 , 0 );
setMoveKey( spep_2 -3 + 244, 1, 571.6, -318.5 , 0 );
setMoveKey( spep_2 -3 + 246, 1, 612.6, -339.1 , 0 );
setMoveKey( spep_2 -3 + 248, 1, 683.1, -401.9 , 0 );
setMoveKey( spep_2 -3 + 250, 1, 683.1, -401.9 , 0 );

s2 = 0.4;
setScaleKey( spep_2 -3 + 168, 1, 2.4 +s2, 2.4 +s2 );
setScaleKey( spep_2 -3 + 231, 1, 2.4 +s2, 2.4 +s2 );--
setScaleKey( spep_2 -3 + 232, 1, 4.8, 4.8 );
setScaleKey( spep_2 -3 + 234, 1, 4.3, 4.3 );
setScaleKey( spep_2 -3 + 236, 1, 3.8, 3.8 );
setScaleKey( spep_2 -3 + 238, 1, 2.66, 2.66 );
setScaleKey( spep_2 -3 + 240, 1, 2.1, 2.1 );
setScaleKey( spep_2 -3 + 242, 1, 1.64, 1.64 );
setScaleKey( spep_2 -3 + 244, 1, 1.25, 1.25 );
setScaleKey( spep_2 -3 + 246, 1, 0.96, 0.96 );
setScaleKey( spep_2 -3 + 248, 1, 0.74, 0.74 );
setScaleKey( spep_2 -3 + 250, 1, 0.74, 0.74 );

setRotateKey( spep_2 -3 + 168, 1, -50.2 );
setRotateKey( spep_2 -3 + 231, 1, -50.2 );--
setRotateKey( spep_2 -3 + 232, 1, 13.2 );
setRotateKey( spep_2 -3 + 248, 1, 13.2 );
setRotateKey( spep_2 -3 + 250, 1, 13.2 );

--敵の動き4
setDisp( spep_2 -3 + 272, 1, 1 );
setDisp( spep_2 -3 + 284, 1, 0 );
changeAnime( spep_2 -3 + 272, 1, 108 );

setMoveKey( spep_2 -3 + 272, 1, -674.7, 620.1 , 0 );
setMoveKey( spep_2 -3 + 274, 1, -458, 420 , 0 );
setMoveKey( spep_2 -3 + 276, 1, -272.2, 248.5 , 0 );
setMoveKey( spep_2 -3 + 278, 1, -117.5, 105.5 , 0 );
setMoveKey( spep_2 -3 + 280, 1, 6.4, -8.8 , 0 );
setMoveKey( spep_2 -3 + 282, 1, 99, -94.5 , 0 );
setMoveKey( spep_2 -3 + 284, 1, 99, -94.5 , 0 );

setScaleKey( spep_2 -3 + 272, 1, 4.43, 4.43 );
setScaleKey( spep_2 -3 + 274, 1, 3.32, 3.32 );
setScaleKey( spep_2 -3 + 276, 1, 2.36, 2.36 );
setScaleKey( spep_2 -3 + 278, 1, 1.56, 1.56 );
setScaleKey( spep_2 -3 + 280, 1, 0.93, 0.93 );
setScaleKey( spep_2 -3 + 282, 1, 0.45, 0.45 );
setScaleKey( spep_2 -3 + 284, 1, 0.45, 0.45 );

setRotateKey( spep_2 -3 + 272, 1, 13.2 );
setRotateKey( spep_2 -3 + 284, 1, 13.2 );

-- ** 音 ** --
--エルボー
SE010 = playSeVer2( spep_2 + 2, 1189, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 10, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10, 1187, "", 0, 0, 0, -1);

--敵飛んでいく
SE013 = playSeVer2( spep_2 + 74, 1027, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_2 + 74, 1183, "", 0, 0, 0, -1);

--飛び立つ
SE015 = playSeVer2( spep_2 + 102, 1168, "",spep_2 + 166, 0, 36, -1);
setSeVolumeByWorkId( spep_2 + 102, SE015, 80 );
SE016 = playSeVer2( spep_2 + 102, 1182, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE016, 82 );
SE017 = playSeVer2( spep_2 + 102, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 102, SE017, 80 );

--飛行中音
SE018 = playSeVer2( spep_2 + 152, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 152, SE018, 140 );

--振りかぶる
SE019 = playSeVer2( spep_2 + 182, 1116, "",spep_2 + 218, 0, 12, -1);
SE020 = playSeVer2( spep_2 + 186, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 186, SE020, 83 );

--飛行中音
SE021 = playSeVer2( spep_2 + 216, 1019, "",spep_2 + 226, 0, 4, -1);
setSeVolumeByWorkId( spep_2 + 216, SE021, 135 );

--パンチ
SE022 = playSeVer2( spep_2 + 222, 1120, "", 0, 0, 0, -1);

--地面激突
SE023 = playSeVer2( spep_2 + 270, 1159, "",spep_2 + 358, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 270, SE023, 75 );
SE024 = playSeVer2( spep_2 + 270, 1023, "",spep_2 + 358, 0, 54, -1);
setSeVolumeByWorkId( spep_2 + 270, SE024, 71 );

--エネルギー溜め
SE025 = playSeVer2( spep_2 + 324, 1037, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 324, SE025, 150 );
SE026 = playSeVer2( spep_2 + 334, 1161, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 334, SE026, 76 );
SE027 = playSeVer2( spep_2 + 346, 1200, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 346, SE027, 263 );
SE028 = playSeVer2( spep_2 + 346, 1122, "",spep_2 + 434, 0, 14, -1);
setSeVolumeByWorkId( spep_2 + 346, SE028, 84 );

--気弾発射
SE029 = playSeVer2( spep_2 + 422, 1133, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_2 + 422, 1146, "", 0, 0, 0, -1);

--気弾飛んでいく
SE031 = playSeVer2( spep_2 + 486, 1021, "", 0, 0, 0, -1);

--気弾地面えぐっていく
SE032 = playSeVer2( spep_2 + 524, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 524, SE032, 188 );
SE033 = playSeVer2( spep_2 + 532, 1213, "",spep_2 + 656, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 532, SE033, 63 );
SE034 = playSeVer2( spep_2 + 532, 1168, "",spep_2 + 656, 0, 80, -1);
setSeVolumeByWorkId( spep_2 + 532, SE034, 72 );

--爆発
SE035 = playSeVer2( spep_2 + 596, 1024, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_2 + 596, 1067, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 710 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 600 );
endPhase( spep_2 + 700 );

end