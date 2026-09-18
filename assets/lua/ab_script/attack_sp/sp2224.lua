--4022600:スーパージャネンバ_激怒超必殺_羅刹爪_sp2224
--sp_effect_b2_00046
--sp2224

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
SP_01 = 157617; --登場→剣を掲げる ef_001
SP_02 = 157618; --ジャンプして剣を振る ef_002
SP_03 = 157619; --敵に向かって剣を叩きつける　手前 ef_003_f
SP_04 = 157621; --敵に向かって剣を叩きつける　奥 ef_003_b
SP_05 = 157622; --爆発 ef_004

--敵側
SP_03r = 157620; --敵に向かって剣を叩きつける　手前 ef_003_f_r

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
-- 登場→剣を掲げる(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 308, 0x100, -1, 0, 0, 0 );  --登場→剣を掲げる ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 308, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 308, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 308, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 308 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 308, first_f, 0 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 90, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 90, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 90, 515.5 , 0 );
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
--炎
SE001 = playSe( spep_0 + 0, 1268 );
stopSe( spep_0 +308 + 8, SE001, 6 );

--炎
SE002 = playSe( spep_0 + 0, 1226 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
stopSe( spep_0 +308 + 8, SE002, 6 );

--顔カットイン
SE003 = playSe( spep_0 + 10, 1018 );

--炎覆われる
SE004 = playSe( spep_0 + 56, 1072 );
setSeVolumeByWorkId( spep_0 + 56, SE004, 71 );
setPitch( spep_0 + 56, SE004, -400 );
setTimeStretch( SE004, 0.73, 10, 1 );

--炎覆われる
SE005 = playSe( spep_0 + 72, 1268 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 48 );
setSeVolumeByWorkId( spep_0 + 75, SE005, 96 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 144 );
setSeVolumeByWorkId( spep_0 + 81, SE005, 192 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 240 );
setSeVolumeByWorkId( spep_0 + 87, SE005, 288 );
setSeVolumeByWorkId( spep_0 + 90, SE005, 335 );
stopSe( spep_0 + 108, SE005, 76 );
setStartTimeMs( SE005,  183 );
setPitch( spep_0 + 72, SE005, -500 );
setTimeStretch( SE005, 0.67, 10, 1 );

--剣からオーラ出る
SE006 = playSe( spep_0 + 202, 1336,"",0.6 );
setSeVolumeByWorkId( spep_0 + 202, SE006, 36 );
setSeVolumeByWorkId( spep_0 + 206, SE006, 72 );
setSeVolumeByWorkId( spep_0 + 210, SE006, 108 );
setSeVolumeByWorkId( spep_0 + 214, SE006, 144 );
setSeVolumeByWorkId( spep_0 + 218, SE006, 178 );
stopSe( spep_0 +308 + 8, SE006, 6 );
setStartTimeMs( SE006,  2283 );

--炎覆われる
SE007 = playSe( spep_0 + 80, 8 );
setSeVolumeByWorkId( spep_0 + 80, SE007, 116 );
setPitch( spep_0 + 80, SE007, -400 );
setTimeStretch( SE007, 0.73, 10, 1 );

--剣からオーラ出る
SE008 = playSe( spep_0 + 202, 1266 );
setSeVolumeByWorkId( spep_0 + 202, SE008, 20 );
setSeVolumeByWorkId( spep_0 + 206, SE008, 40 );
setSeVolumeByWorkId( spep_0 + 210, SE008, 60 );
setSeVolumeByWorkId( spep_0 + 214, SE008, 80 );
setSeVolumeByWorkId( spep_0 + 218, SE008, 100 );
stopSe( spep_0 +308 + 8, SE008, 6 );
setStartTimeMs( SE008,  1133 );

--剣掲げる
SE009 = playSe( spep_0 + 200, 1119 );
setSeVolumeByWorkId( spep_0 + 200, SE009, 27 );
setSeVolumeByWorkId( spep_0 + 201, SE009, 54 );
setSeVolumeByWorkId( spep_0 + 202, SE009, 81 );
setSeVolumeByWorkId( spep_0 + 203, SE009, 108 );
setSeVolumeByWorkId( spep_0 + 204, SE009, 135 );
setStartTimeMs( SE009,  750 );

--剣構える
SE010 = playSe( spep_0 + 148, 1116 );
stopSe( spep_0 + 178, SE010, 28 );

--剣掲げる
SE011 = playSe( spep_0 + 198, 1333 );
setSeVolumeByWorkId( spep_0 + 198, SE011, 28 );
setSeVolumeByWorkId( spep_0 + 199, SE011, 56 );
setSeVolumeByWorkId( spep_0 + 200, SE011, 84 );
setSeVolumeByWorkId( spep_0 + 201, SE011, 112 );
setSeVolumeByWorkId( spep_0 + 202, SE011, 143 );
setStartTimeMs( SE011,  400 );

--剣掲げる
SE012 = playSe( spep_0 + 206, 1004 );
setSeVolumeByWorkId( spep_0 + 206, SE012, 151 );

--剣掲げる
SE013 = playSe( spep_0 + 206, 44 );
setSeVolumeByWorkId( spep_0 + 206, SE013, 58 );

--剣からオーラ出る
SE014 = playSe( spep_0 + 228, 1179 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 308 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 308;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_1, SE_05);
    speff = entryEffect( spep_1, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_1, SE_05);
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

--飛び上がる
SE017 = playSe( spep_1 + 88, 1116 );
stopSe( spep_1 +94 + 22, SE017, 18 );

--飛び上がる
SE018 = playSe( spep_1 + 88, 1278 );
stopSe( spep_1 +94 + 82, SE018, 34 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ジャンプして剣を振る(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_2 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --ジャンプして剣を振る ef_002
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_2 + 116, jump, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 116, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 116 -1, jump, 255 );
setEffAlphaKey( spep_2 + 116, jump, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--飛び上がる
SE019 = playSe( spep_2 + 4, 1182 );
setSeVolumeByWorkId( spep_2 + 4, SE019, 25 );
setSeVolumeByWorkId( spep_2 + 6, SE019, 50 );
setSeVolumeByWorkId( spep_2 + 8, SE019, 75 );
setSeVolumeByWorkId( spep_2 + 10, SE019, 100 );
setStartTimeMs( SE019,  50 );

--飛び上がる
SE020 = playSe( spep_2 + 2, 1004 );

--飛び上がる
SE021 = playSe( spep_2 + 6, 1072 );

--剣持って向かってくる
SE022 = playSe( spep_2 + 66, 8 );

--剣持って向かってくる
SE023 = playSe( spep_2 + 72, 1004 );
setPitch( spep_2 + 72, SE023, -600 );
setTimeStretch( SE023, 0.6, 10, 1 );

--剣持って向かってくる
SE024 = playSe( spep_2 + 72, 1116 );
stopSe( spep_2 + 110, SE024, 20 );
setPitch( spep_2 + 72, SE024, -600 );
setTimeStretch( SE024, 0.75, 10, 1 );

--斬りつける
SE025 = playSe( spep_2 + 114, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- 敵に向かって剣を叩きつける(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
slash_f = entryEffectLife( spep_3 + 0, SP_03, 65, 0x100, -1, 0, 0, 0 );  --敵に向かって剣を叩きつける　手前 ef_003_f
setEffMoveKey( spep_3 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 65, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slash_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 65, slash_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_f, 0 );
setEffRotateKey( spep_3 + 65, slash_f, 0 );
setEffAlphaKey( spep_3 + 0, slash_f, 255 );
setEffAlphaKey( spep_3 + 65 -1, slash_f, 255 );
setEffAlphaKey( spep_3 + 65, slash_f, 0 );

slash_b = entryEffectLife( spep_3 + 0, SP_04, 65, 0x80, -1, 0, 0, 0 );  --敵に向かって剣を叩きつける　奥 ef_003_b
setEffMoveKey( spep_3 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 65, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 65, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_b, 0 );
setEffRotateKey( spep_3 + 65, slash_b, 0 );
setEffAlphaKey( spep_3 + 0, slash_b, 255 );
setEffAlphaKey( spep_3 + 65 -1, slash_b, 255 );
setEffAlphaKey( spep_3 + 65, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 65, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 8, 1, 5 );

a3 = 0;
b3 = 40;
setMoveKey( spep_3 + 0, 1, 306.3, -381.1 , 0 );
setMoveKey( spep_3 + 1, 1, 272.7, -313.5 , 0 );
setMoveKey( spep_3 + 2, 1, 239.9, -247.6 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 207.7, -183.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 208.2 +a3, -182.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 225.1 +a3, -180.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 203 +a3, -200.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 214.5 +a3, -202.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 198.8 +a3, -173.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 181.2 +a3, -157.2 -b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 186.1 +a3, -160.2 -b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 183.9 +a3, -166.9 -b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 195.9 +a3, -162.8 -b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 193.7 +a3, -162.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 188 +a3, -154.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 192.8 +a3, -157.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 194.1 +a3, -157.1 -b3 , 0 );
--setMoveKey( spep_3 -3 + 34, 1, 195.4 +a3, -156.6 -b3 , 0 );
--setMoveKey( spep_3 -3 + 36, 1, 196.6 +a3, -156.1 -b3 , 0 );
--setMoveKey( spep_3 -3 + 38, 1, 197.9 +a3, -155.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 40, 1, 199.1 +a3, -155 -b3 , 0 );
--setMoveKey( spep_3 -3 + 42, 1, 200.4 +a3, -154.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 44, 1, 201.7 +a3, -153.9 -b3 , 0 );
--setMoveKey( spep_3 -3 + 46, 1, 202.9 +a3, -153.4 -b3 , 0 );
--setMoveKey( spep_3 -3 + 48, 1, 204.1 +a3, -152.8 -b3 , 0 );
--setMoveKey( spep_3 -3 + 50, 1, 205.3 +a3, -152.3 -b3 , 0 );
--setMoveKey( spep_3 -3 + 52, 1, 206.5 +a3, -151.8 -b3 , 0 );
--setMoveKey( spep_3 -3 + 54, 1, 207.7 +a3, -151.3 -b3 , 0 );
--setMoveKey( spep_3 -3 + 56, 1, 208.9 +a3, -150.7 -b3 , 0 );
--setMoveKey( spep_3 -3 + 58, 1, 210 +a3, -150.2 -b3 , 0 );
--setMoveKey( spep_3 -3 + 60, 1, 211.2 +a3, -149.6 -b3 , 0 );
--setMoveKey( spep_3 -3 + 62, 1, 212.3 +a3, -149 -b3 , 0 );
--setMoveKey( spep_3 -3 + 64, 1, 213.4 +a3, -148.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 66, 1, 214.5 +a3, -148 -b3 , 0 );
--setMoveKey( spep_3 -3 + 68, 1, 215.7 +a3, -147.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 215.7 +a3, -147.4 -30 , 0 );

setScaleKey( spep_3 + 0, 1, 2.628, 2.628 );
setScaleKey( spep_3 + 1, 1, 2.592, 2.592 );
setScaleKey( spep_3 + 2, 1, 2.568, 2.568 );
setScaleKey( spep_3 -3 + 7, 1, 2.532, 2.532 );
setScaleKey( spep_3 -3 + 8, 1, 1.872, 1.872 );
setScaleKey( spep_3 -3 + 10, 1, 1.776, 1.776 );
setScaleKey( spep_3 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 14, 1, 1.584, 1.584 );
setScaleKey( spep_3 -3 + 16, 1, 1.488, 1.488 );
setScaleKey( spep_3 -3 + 18, 1, 1.392, 1.392 );
setScaleKey( spep_3 -3 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 22, 1, 1.368, 1.368 );
setScaleKey( spep_3 -3 + 24, 1, 1.356, 1.356 );
setScaleKey( spep_3 -3 + 26, 1, 1.332, 1.332 );
setScaleKey( spep_3 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 30, 1, 1.308, 1.308 );
setScaleKey( spep_3 -3 + 32, 1, 1.296, 1.296 );
setScaleKey( spep_3 -3 + 34, 1, 1.284, 1.284 );
setScaleKey( spep_3 -3 + 36, 1, 1.272, 1.272 );
setScaleKey( spep_3 -3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 40, 1, 1.236, 1.236 );
setScaleKey( spep_3 -3 + 42, 1, 1.224, 1.224 );
setScaleKey( spep_3 -3 + 44, 1, 1.212, 1.212 );
setScaleKey( spep_3 -3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 48, 1, 1.188, 1.188 );
setScaleKey( spep_3 -3 + 50, 1, 1.176, 1.176 );
setScaleKey( spep_3 -3 + 52, 1, 1.164, 1.164 );
setScaleKey( spep_3 -3 + 54, 1, 1.152, 1.152 );
setScaleKey( spep_3 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 58, 1, 1.128, 1.128 );
setScaleKey( spep_3 -3 + 60, 1, 1.116, 1.116 );
setScaleKey( spep_3 -3 + 62, 1, 1.092, 1.092 );
setScaleKey( spep_3 -3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 66, 1, 1.068, 1.068 );
setScaleKey( spep_3 -3 + 68, 1, 1.056, 1.056 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 7, 1, 0 );
setRotateKey( spep_3 -3 + 8, 1, 31 );
setRotateKey( spep_3 -3 + 10, 1, 31.5 );
setRotateKey( spep_3 -3 + 12, 1, 32.1 );
setRotateKey( spep_3 -3 + 14, 1, 32.6 );
setRotateKey( spep_3 -3 + 16, 1, 33.1 );
setRotateKey( spep_3 -3 + 18, 1, 33.7 );
setRotateKey( spep_3 -3 + 20, 1, 34.2 );
setRotateKey( spep_3 -3 + 22, 1, 34.7 );
setRotateKey( spep_3 -3 + 24, 1, 35.3 );
setRotateKey( spep_3 -3 + 26, 1, 35.8 );
setRotateKey( spep_3 -3 + 28, 1, 36.3 );
setRotateKey( spep_3 -3 + 30, 1, 36.9 );
setRotateKey( spep_3 -3 + 32, 1, 37.4 );
setRotateKey( spep_3 -3 + 34, 1, 37.9 );
setRotateKey( spep_3 -3 + 36, 1, 38.5 );
setRotateKey( spep_3 -3 + 38, 1, 39 );
setRotateKey( spep_3 -3 + 40, 1, 39.5 );
setRotateKey( spep_3 -3 + 42, 1, 40.1 );
setRotateKey( spep_3 -3 + 44, 1, 40.6 );
setRotateKey( spep_3 -3 + 46, 1, 41.1 );
setRotateKey( spep_3 -3 + 48, 1, 41.7 );
setRotateKey( spep_3 -3 + 50, 1, 42.2 );
setRotateKey( spep_3 -3 + 52, 1, 42.7 );
setRotateKey( spep_3 -3 + 54, 1, 43.3 );
setRotateKey( spep_3 -3 + 56, 1, 43.8 );
setRotateKey( spep_3 -3 + 58, 1, 44.3 );
setRotateKey( spep_3 -3 + 60, 1, 44.9 );
setRotateKey( spep_3 -3 + 62, 1, 45.4 );
setRotateKey( spep_3 -3 + 64, 1, 45.9 );
setRotateKey( spep_3 -3 + 66, 1, 46.5 );
setRotateKey( spep_3 -3 + 68, 1, 47 );
--setRotateKey( spep_3 -3 + 69, 1, 47 );

-- ** 音 ** --

--斬りつける
SE026 = playSe( spep_3 + 4, 1032 );
setSeVolumeByWorkId( spep_3 + 4, SE026, 106 );

--斬りつける
SE027 = playSe( spep_3 + 6, 1142 );

--斬りつける
SE028 = playSe( spep_3 + 6, 1307 );
setSeVolumeByWorkId( spep_3 + 6, SE028, 132 );

--斬りつける
SE029 = playSe( spep_3 + 6, 1011 );
setSeVolumeByWorkId( spep_3 + 6, SE029, 79 );

--斬りつける
SE015 = playSe( spep_3 + 6, 1336,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE015, 40 );
setSeVolumeByWorkId( spep_3 + 8, SE015, 80 );
setSeVolumeByWorkId( spep_3 + 10, SE015, 120 );
setSeVolumeByWorkId( spep_3 + 12, SE015, 158 );
setStartTimeMs( SE015,  4067 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 65;

------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発 ef_004
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 156, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 156, finish_f, 255 );

-- ** 音 ** --
--光る
SE030 = playSe( spep_4 + 4, 1179 );

--爆発
SE031 = playSe( spep_4 + 32, 1024 );

--爆発
SE032 = playSe( spep_4 + 32, 1067 );

--爆発
SE033 = playSe( spep_4 + 32, 1159 );
setSeVolumeByWorkId( spep_4 + 32, SE033, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 38 );
endPhase( spep_4 + 146 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 登場→剣を掲げる(306F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 308, 0x100, -1, 0, 0, 0 );  --登場→剣を掲げる    ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 308, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 308, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 308, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 308 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 308, first_f, 0 );

spep_x = spep_0 + 2;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
--炎
SE001 = playSe( spep_0 + 0, 1268 );
stopSe( spep_0 +308 + 8, SE001, 6 );

--炎
SE002 = playSe( spep_0 + 0, 1226 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 45 );
stopSe( spep_0 +308 + 8, SE002, 6 );

--顔カットイン
SE003 = playSe( spep_0 + 10, 1018 );

--炎覆われる
SE004 = playSe( spep_0 + 56, 1072 );
setSeVolumeByWorkId( spep_0 + 56, SE004, 71 );
setPitch( spep_0 + 56, SE004, -400 );
setTimeStretch( SE004, 0.73, 10, 1 );

--炎覆われる
SE005 = playSe( spep_0 + 72, 1268 );
setSeVolumeByWorkId( spep_0 + 72, SE005, 48 );
setSeVolumeByWorkId( spep_0 + 75, SE005, 96 );
setSeVolumeByWorkId( spep_0 + 78, SE005, 144 );
setSeVolumeByWorkId( spep_0 + 81, SE005, 192 );
setSeVolumeByWorkId( spep_0 + 84, SE005, 240 );
setSeVolumeByWorkId( spep_0 + 87, SE005, 288 );
setSeVolumeByWorkId( spep_0 + 90, SE005, 335 );
stopSe( spep_0 + 108, SE005, 76 );
setStartTimeMs( SE005,  183 );
setPitch( spep_0 + 72, SE005, -500 );
setTimeStretch( SE005, 0.67, 10, 1 );

--剣からオーラ出る
SE006 = playSe( spep_0 + 202, 1336,"",0.6 );
setSeVolumeByWorkId( spep_0 + 202, SE006, 36 );
setSeVolumeByWorkId( spep_0 + 206, SE006, 72 );
setSeVolumeByWorkId( spep_0 + 210, SE006, 108 );
setSeVolumeByWorkId( spep_0 + 214, SE006, 144 );
setSeVolumeByWorkId( spep_0 + 218, SE006, 178 );
stopSe( spep_0 +308 + 8, SE006, 6 );
setStartTimeMs( SE006,  2283 );

--炎覆われる
SE007 = playSe( spep_0 + 80, 8 );
setSeVolumeByWorkId( spep_0 + 80, SE007, 116 );
setPitch( spep_0 + 80, SE007, -400 );
setTimeStretch( SE007, 0.73, 10, 1 );

--剣からオーラ出る
SE008 = playSe( spep_0 + 202, 1266 );
setSeVolumeByWorkId( spep_0 + 202, SE008, 20 );
setSeVolumeByWorkId( spep_0 + 206, SE008, 40 );
setSeVolumeByWorkId( spep_0 + 210, SE008, 60 );
setSeVolumeByWorkId( spep_0 + 214, SE008, 80 );
setSeVolumeByWorkId( spep_0 + 218, SE008, 100 );
stopSe( spep_0 +308 + 8, SE008, 6 );
setStartTimeMs( SE008,  1133 );

--剣掲げる
SE009 = playSe( spep_0 + 200, 1119 );
setSeVolumeByWorkId( spep_0 + 200, SE009, 27 );
setSeVolumeByWorkId( spep_0 + 201, SE009, 54 );
setSeVolumeByWorkId( spep_0 + 202, SE009, 81 );
setSeVolumeByWorkId( spep_0 + 203, SE009, 108 );
setSeVolumeByWorkId( spep_0 + 204, SE009, 135 );
setStartTimeMs( SE009,  750 );

--剣構える
SE010 = playSe( spep_0 + 148, 1116 );
stopSe( spep_0 + 178, SE010, 28 );

--剣掲げる
SE011 = playSe( spep_0 + 198, 1333 );
setSeVolumeByWorkId( spep_0 + 198, SE011, 28 );
setSeVolumeByWorkId( spep_0 + 199, SE011, 56 );
setSeVolumeByWorkId( spep_0 + 200, SE011, 84 );
setSeVolumeByWorkId( spep_0 + 201, SE011, 112 );
setSeVolumeByWorkId( spep_0 + 202, SE011, 143 );
setStartTimeMs( SE011,  400 );

--剣掲げる
SE012 = playSe( spep_0 + 206, 1004 );
setSeVolumeByWorkId( spep_0 + 206, SE012, 151 );

--剣掲げる
SE013 = playSe( spep_0 + 206, 44 );
setSeVolumeByWorkId( spep_0 + 206, SE013, 58 );

--剣からオーラ出る
SE014 = playSe( spep_0 + 228, 1179 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 308 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 308;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_1 = 0;
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
SE_CUTIN = playSe( spep_1 + 0, SE_05 );

--飛び上がる
SE017 = playSe( spep_1 + 88, 1116 );
stopSe( spep_1 +94 + 22, SE017, 18 );

--飛び上がる
SE018 = playSe( spep_1 + 88, 1278 );
stopSe( spep_1 +94 + 82, SE018, 34 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

------------------------------------------------------
-- ジャンプして剣を振る(116F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_2 + 0, SP_02, 116, 0x100, -1, 0, 0, 0 );  --ジャンプして剣を振る ef_002
setEffMoveKey( spep_2 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_2 + 116, jump, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, jump, -1.0, 1.0 );
setEffScaleKey( spep_2 + 116, jump, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, jump, 0 );
setEffRotateKey( spep_2 + 116, jump, 0 );
setEffAlphaKey( spep_2 + 0, jump, 255 );
setEffAlphaKey( spep_2 + 116 -1, jump, 255 );
setEffAlphaKey( spep_2 + 116, jump, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE017, 0);
    stopSe( SP_dodge - 12, SE018, 0);
    stopSe( SP_dodge - 12, SE_CUTIN, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    --setMoveKey( SP_dodge + 0, 1, 224.5, 55.8 , 0 );
    --setMoveKey( SP_dodge + 2, 1, 195, 63.7 , 0 );
    --setMoveKey( SP_dodge + 4, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 6, 1, 165.4, 71.5 , 0 );
    --setMoveKey( SP_dodge + 8, 1, 209.7, 23.3 , 0 );
    --setMoveKey( SP_dodge + 10, 1, 186.2, 53.9 , 0 );

    --setScaleKey( SP_dodge + 0, 1, 1.59 +a2, 1.59 +a2 );
    --setScaleKey( SP_dodge + 2, 1, 1.55 +a2, 1.55 +a2 );
    --setScaleKey( SP_dodge + 4, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 6, 1, 1.5 +a2, 1.5 +a2 );
    --setScaleKey( SP_dodge + 8, 1, 2.4 +a2, 2.4 +a2 );
    --setScaleKey( SP_dodge + 10, 1, 2.1 +a2, 2.1 +a2 );

    --setRotateKey( SP_dodge + 0, 1, 0 );
    --setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 音 ** --
--飛び上がる
SE019 = playSe( spep_2 + 4, 1182 );
setSeVolumeByWorkId( spep_2 + 4, SE019, 25 );
setSeVolumeByWorkId( spep_2 + 6, SE019, 50 );
setSeVolumeByWorkId( spep_2 + 8, SE019, 75 );
setSeVolumeByWorkId( spep_2 + 10, SE019, 100 );
setStartTimeMs( SE019,  50 );

--飛び上がる
SE020 = playSe( spep_2 + 2, 1004 );

--飛び上がる
SE021 = playSe( spep_2 + 6, 1072 );

--剣持って向かってくる
SE022 = playSe( spep_2 + 66, 8 );

--剣持って向かってくる
SE023 = playSe( spep_2 + 72, 1004 );
setPitch( spep_2 + 72, SE023, -600 );
setTimeStretch( SE023, 0.6, 10, 1 );

--剣持って向かってくる
SE024 = playSe( spep_2 + 72, 1116 );
stopSe( spep_2 + 110, SE024, 20 );
setPitch( spep_2 + 72, SE024, -600 );
setTimeStretch( SE024, 0.75, 10, 1 );

--斬りつける
SE025 = playSe( spep_2 + 114, 1003 );

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_3 = spep_2 + 116;

------------------------------------------------------
-- 敵に向かって剣を叩きつける(66F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
slash_f = entryEffectLife( spep_3 + 0, SP_03r, 65, 0x100, -1, 0, 0, 0 );  --敵に向かって剣を叩きつける　手前 ef_003_f
setEffMoveKey( spep_3 + 0, slash_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 65, slash_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slash_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 65, slash_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_f, 0 );
setEffRotateKey( spep_3 + 65, slash_f, 0 );
setEffAlphaKey( spep_3 + 0, slash_f, 255 );
setEffAlphaKey( spep_3 + 65 -1, slash_f, 255 );
setEffAlphaKey( spep_3 + 65, slash_f, 0 );

slash_b = entryEffectLife( spep_3 + 0, SP_04, 65, 0x80, -1, 0, 0, 0 );  --敵に向かって剣を叩きつける　奥   ef_003_b
setEffMoveKey( spep_3 + 0, slash_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 65, slash_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, slash_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 65, slash_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, slash_b, 0 );
setEffRotateKey( spep_3 + 65, slash_b, 0 );
setEffAlphaKey( spep_3 + 0, slash_b, 255 );
setEffAlphaKey( spep_3 + 65 -1, slash_b, 255 );
setEffAlphaKey( spep_3 + 65, slash_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 65, 1, 0 );
changeAnime( spep_3 + 0, 1, 100 );
changeAnime( spep_3 -3 + 8, 1, 5 );

a3 = 0;
b3 = 40;
setMoveKey( spep_3 + 0, 1, 306.3, -381.1 , 0 );
setMoveKey( spep_3 + 1, 1, 272.7, -313.5 , 0 );
setMoveKey( spep_3 + 2, 1, 239.9, -247.6 , 0 );
setMoveKey( spep_3 -3 + 7, 1, 207.7, -183.3 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 208.2 +a3, -182.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 225.1 +a3, -180.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 203 +a3, -200.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 214.5 +a3, -202.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 198.8 +a3, -173.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 18, 1, 181.2 +a3, -157.2 -b3 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 186.1 +a3, -160.2 -b3 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 183.9 +a3, -166.9 -b3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 195.9 +a3, -162.8 -b3 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 193.7 +a3, -162.3 -b3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 188 +a3, -154.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 192.8 +a3, -157.7 -b3 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 194.1 +a3, -157.1 -b3 , 0 );
--setMoveKey( spep_3 -3 + 34, 1, 195.4 +a3, -156.6 -b3 , 0 );
--setMoveKey( spep_3 -3 + 36, 1, 196.6 +a3, -156.1 -b3 , 0 );
--setMoveKey( spep_3 -3 + 38, 1, 197.9 +a3, -155.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 40, 1, 199.1 +a3, -155 -b3 , 0 );
--setMoveKey( spep_3 -3 + 42, 1, 200.4 +a3, -154.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 44, 1, 201.7 +a3, -153.9 -b3 , 0 );
--setMoveKey( spep_3 -3 + 46, 1, 202.9 +a3, -153.4 -b3 , 0 );
--setMoveKey( spep_3 -3 + 48, 1, 204.1 +a3, -152.8 -b3 , 0 );
--setMoveKey( spep_3 -3 + 50, 1, 205.3 +a3, -152.3 -b3 , 0 );
--setMoveKey( spep_3 -3 + 52, 1, 206.5 +a3, -151.8 -b3 , 0 );
--setMoveKey( spep_3 -3 + 54, 1, 207.7 +a3, -151.3 -b3 , 0 );
--setMoveKey( spep_3 -3 + 56, 1, 208.9 +a3, -150.7 -b3 , 0 );
--setMoveKey( spep_3 -3 + 58, 1, 210 +a3, -150.2 -b3 , 0 );
--setMoveKey( spep_3 -3 + 60, 1, 211.2 +a3, -149.6 -b3 , 0 );
--setMoveKey( spep_3 -3 + 62, 1, 212.3 +a3, -149 -b3 , 0 );
--setMoveKey( spep_3 -3 + 64, 1, 213.4 +a3, -148.5 -b3 , 0 );
--setMoveKey( spep_3 -3 + 66, 1, 214.5 +a3, -148 -b3 , 0 );
--setMoveKey( spep_3 -3 + 68, 1, 215.7 +a3, -147.4 -b3 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 215.7 +a3, -147.4 -30 , 0 );

setScaleKey( spep_3 + 0, 1, 2.628, 2.628 );
setScaleKey( spep_3 + 1, 1, 2.592, 2.592 );
setScaleKey( spep_3 + 2, 1, 2.568, 2.568 );
setScaleKey( spep_3 -3 + 7, 1, 2.532, 2.532 );
setScaleKey( spep_3 -3 + 8, 1, 1.872, 1.872 );
setScaleKey( spep_3 -3 + 10, 1, 1.776, 1.776 );
setScaleKey( spep_3 -3 + 12, 1, 1.68, 1.68 );
setScaleKey( spep_3 -3 + 14, 1, 1.584, 1.584 );
setScaleKey( spep_3 -3 + 16, 1, 1.488, 1.488 );
setScaleKey( spep_3 -3 + 18, 1, 1.392, 1.392 );
setScaleKey( spep_3 -3 + 20, 1, 1.38, 1.38 );
setScaleKey( spep_3 -3 + 22, 1, 1.368, 1.368 );
setScaleKey( spep_3 -3 + 24, 1, 1.356, 1.356 );
setScaleKey( spep_3 -3 + 26, 1, 1.332, 1.332 );
setScaleKey( spep_3 -3 + 28, 1, 1.32, 1.32 );
setScaleKey( spep_3 -3 + 30, 1, 1.308, 1.308 );
setScaleKey( spep_3 -3 + 32, 1, 1.296, 1.296 );
setScaleKey( spep_3 -3 + 34, 1, 1.284, 1.284 );
setScaleKey( spep_3 -3 + 36, 1, 1.272, 1.272 );
setScaleKey( spep_3 -3 + 38, 1, 1.26, 1.26 );
setScaleKey( spep_3 -3 + 40, 1, 1.236, 1.236 );
setScaleKey( spep_3 -3 + 42, 1, 1.224, 1.224 );
setScaleKey( spep_3 -3 + 44, 1, 1.212, 1.212 );
setScaleKey( spep_3 -3 + 46, 1, 1.2, 1.2 );
setScaleKey( spep_3 -3 + 48, 1, 1.188, 1.188 );
setScaleKey( spep_3 -3 + 50, 1, 1.176, 1.176 );
setScaleKey( spep_3 -3 + 52, 1, 1.164, 1.164 );
setScaleKey( spep_3 -3 + 54, 1, 1.152, 1.152 );
setScaleKey( spep_3 -3 + 56, 1, 1.14, 1.14 );
setScaleKey( spep_3 -3 + 58, 1, 1.128, 1.128 );
setScaleKey( spep_3 -3 + 60, 1, 1.116, 1.116 );
setScaleKey( spep_3 -3 + 62, 1, 1.092, 1.092 );
setScaleKey( spep_3 -3 + 64, 1, 1.08, 1.08 );
setScaleKey( spep_3 -3 + 66, 1, 1.068, 1.068 );
setScaleKey( spep_3 -3 + 68, 1, 1.056, 1.056 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 7, 1, 0 );
setRotateKey( spep_3 -3 + 8, 1, 31 );
setRotateKey( spep_3 -3 + 10, 1, 31.5 );
setRotateKey( spep_3 -3 + 12, 1, 32.1 );
setRotateKey( spep_3 -3 + 14, 1, 32.6 );
setRotateKey( spep_3 -3 + 16, 1, 33.1 );
setRotateKey( spep_3 -3 + 18, 1, 33.7 );
setRotateKey( spep_3 -3 + 20, 1, 34.2 );
setRotateKey( spep_3 -3 + 22, 1, 34.7 );
setRotateKey( spep_3 -3 + 24, 1, 35.3 );
setRotateKey( spep_3 -3 + 26, 1, 35.8 );
setRotateKey( spep_3 -3 + 28, 1, 36.3 );
setRotateKey( spep_3 -3 + 30, 1, 36.9 );
setRotateKey( spep_3 -3 + 32, 1, 37.4 );
setRotateKey( spep_3 -3 + 34, 1, 37.9 );
setRotateKey( spep_3 -3 + 36, 1, 38.5 );
setRotateKey( spep_3 -3 + 38, 1, 39 );
setRotateKey( spep_3 -3 + 40, 1, 39.5 );
setRotateKey( spep_3 -3 + 42, 1, 40.1 );
setRotateKey( spep_3 -3 + 44, 1, 40.6 );
setRotateKey( spep_3 -3 + 46, 1, 41.1 );
setRotateKey( spep_3 -3 + 48, 1, 41.7 );
setRotateKey( spep_3 -3 + 50, 1, 42.2 );
setRotateKey( spep_3 -3 + 52, 1, 42.7 );
setRotateKey( spep_3 -3 + 54, 1, 43.3 );
setRotateKey( spep_3 -3 + 56, 1, 43.8 );
setRotateKey( spep_3 -3 + 58, 1, 44.3 );
setRotateKey( spep_3 -3 + 60, 1, 44.9 );
setRotateKey( spep_3 -3 + 62, 1, 45.4 );
setRotateKey( spep_3 -3 + 64, 1, 45.9 );
setRotateKey( spep_3 -3 + 66, 1, 46.5 );
setRotateKey( spep_3 -3 + 68, 1, 47 );
--setRotateKey( spep_3 -3 + 69, 1, 47 );

-- ** 音 ** --

--斬りつける
SE026 = playSe( spep_3 + 4, 1032 );
setSeVolumeByWorkId( spep_3 + 4, SE026, 106 );

--斬りつける
SE027 = playSe( spep_3 + 6, 1142 );

--斬りつける
SE028 = playSe( spep_3 + 6, 1307 );
setSeVolumeByWorkId( spep_3 + 6, SE028, 132 );

--斬りつける
SE029 = playSe( spep_3 + 6, 1011 );
setSeVolumeByWorkId( spep_3 + 6, SE029, 79 );

--斬りつける
SE015 = playSe( spep_3 + 6, 1336,"",0.6 );
setSeVolumeByWorkId( spep_3 + 6, SE015, 40 );
setSeVolumeByWorkId( spep_3 + 8, SE015, 80 );
setSeVolumeByWorkId( spep_3 + 10, SE015, 120 );
setSeVolumeByWorkId( spep_3 + 12, SE015, 158 );
setStartTimeMs( SE015,  4067 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 65 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 65;

------------------------------------------------------
-- 爆発(156F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --爆発  ef_004
setEffMoveKey( spep_4 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 156, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 156, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, finish_f, 0 );
setEffRotateKey( spep_4 + 156, finish_f, 0 );
setEffAlphaKey( spep_4 + 0, finish_f, 255 );
setEffAlphaKey( spep_4 + 156, finish_f, 255 );

-- ** 音 ** --
--光る
SE030 = playSe( spep_4 + 4, 1179 );

--爆発
SE031 = playSe( spep_4 + 32, 1024 );

--爆発
SE032 = playSe( spep_4 + 32, 1067 );

--爆発
SE033 = playSe( spep_4 + 32, 1159 );
setSeVolumeByWorkId( spep_4 + 32, SE033, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 156 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_4 + 38 );
endPhase( spep_4 + 146 );

end