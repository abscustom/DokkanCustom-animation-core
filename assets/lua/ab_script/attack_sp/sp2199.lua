--1021650:トランクス（青年期）_バーニングラッシュ
--sp_effect_b1_00151
--sp2199

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
SP_01 = 157402;  --エアカー　奥から来て急ターン   ef_001
SP_02 = 157403;  --エアカー　急停止からトランクス降車    ef_002
SP_03 = 157404;  --集中線と文字   ef_003
SP_04 = 157405;  --迫るトランクス  ef_004
SP_05 = 157406;  --振りかぶり拳を突き出す  ef_005
SP_06 = 157407;  --殴る動作とヒットエフェクトと文字 ef_006
SP_07 = 157408;  --殴り抜ける動作から気弾を溜め突き出す   ef_007
SP_08 = 157409;  --気弾を押し込む  ef_008
SP_09 = 157410;  --背景   ef_009
SP_10 = 157411;  --気弾を押し込む〜爆発   ef_010
SP_11 = 157412;  --背景   ef_011

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
-- エアカー　奥から来て急ターン(174F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 174, 0x100, -1, 0, 0, 0 );  --エアカー　奥から来て急ターン  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 174, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 174, first_f, 0 );

-- ** 音 ** --
--エアカーで走ってくる
SE001 = playSe( spep_0 + 0, 1229,"",0.6 );

--エアカーで走ってくる
SE002 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 57 );

--エアカーで走ってくる
SE003 = playSe( spep_0 + 0, 1326,"",0.6 );
stopSe( spep_0 +174, SE003, 14 );

--エアカーで走ってくる
SE004 = playSe( spep_0 + 0, 1327,"",0.6 );
stopSe( spep_0 +174, SE004, 14 );

--速度上げる
SE005 = playSe( spep_0 + 92, 9 );
stopSe( spep_0 +172, SE005, 38 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


------------------------------------------------------
-- エアカー　急停止からトランクス降車(206F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
getoff = entryEffectLife( spep_1 + 0, SP_02, 228, 0x100, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より手前(ef_003_front)
setEffMoveKey( spep_1 + 0, getoff, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, getoff, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, getoff, 1.0, 1.0 );
setEffScaleKey( spep_1 + 228, getoff, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, getoff, 0 );
setEffRotateKey( spep_1 + 228, getoff, 0 );
setEffAlphaKey( spep_1 + 0, getoff, 255 );
setEffAlphaKey( spep_1 + 228 -1, getoff, 255 );
setEffAlphaKey( spep_1 + 228, getoff, 0 );

spep_x = spep_1 + 142;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16,  190006, 68, 0x100, -1, 0, 50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 50, 515.5 , 0 );
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
--ブレーキ
SE006 = playSe( spep_1 + 0, 1323 );
stopSe( spep_1 + 12, SE006, 6 );

--車飛び出る
SE007 = playSe( spep_1 + 48, 1116 );
stopSe( spep_1 + 62, SE007, 24 );
setBandpassFilter( spep_1 + 46, SE007, 400, 24000 );

--着地
SE008 = playSe( spep_1 + 82, 1108 );
setSeVolumeByWorkId( spep_1 + 82, SE008, 158 );

--着地
SE009 = playSe( spep_1 + 86, 1106 );
setSeVolumeByWorkId( spep_1 + 86, SE009, 158 );

--画面遷移
SE010 = playSe( spep_1 + 112, 1003 );
setPitch( spep_1 + 112, SE010, -400 );
setTimeStretch( SE010, 0.73, 10, 1 );

--顔カットイン
SE011 = playSe( spep_1 + 146, 1018 );                       

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_2 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE097 = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

    elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE098 = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

    elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE099 = playSe( spep_2, SE_05);
    speff = entryEffect( spep_2, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
--playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 迫るトランクス(72F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03, 72, 0x100, -1, 0, 0, 0 );  --集中線と文字    ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 72, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_3 + 72, move_f, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 72, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 72 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 72, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 72, 0x80, -1, 0, 0, 0 );  --迫るトランクス    ef_004
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 72, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_3 + 72, move_b, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 72, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 72 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 72, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 102 );

setMoveKey( spep_3 + 0, 1, 174.1, -195.2 , 0 );
setMoveKey( spep_3 + 1, 1, 174.4, -195.7 , 0 );
setMoveKey( spep_3 + 2, 1, 174.7, -196.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, 175, -196.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, 175.3, -197.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, 175.7, -197.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, 175.9, -198.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, 176.3, -199 , 0 );
setMoveKey( spep_3 -3 + 16, 1, 176.6, -199.6 , 0 );

s1 = 0.4;
setScaleKey( spep_3 + 0, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 + 1, 1, 1.71 +s1, 1.71 +s1 );
setScaleKey( spep_3 + 2, 1, 1.71 +s1, 1.71 +s1 );
setScaleKey( spep_3 -3 + 6, 1, 1.72 +s1, 1.72 +s1 );
setScaleKey( spep_3 -3 + 8, 1, 1.73 +s1, 1.73 +s1 );
setScaleKey( spep_3 -3 + 10, 1, 1.73 +s1, 1.73 +s1 );
setScaleKey( spep_3 -3 + 12, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_3 -3 + 14, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_3 -3 + 16, 1, 1.75 +s1, 1.75 +s1 );

setRotateKey( spep_3 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE097, 0);
    stopSe( SP_dodge - 12, SE098, 0);
    stopSe( SP_dodge - 12, SE099, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 176.6, -199.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, 176.9, -200.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, 177.2, -200.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 177.5, -201.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, 177.8, -201.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, 178.1, -202.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75 +s1, 1.75 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.76 +s1, 1.76 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.76 +s1, 1.76 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.77 +s1, 1.77 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.78 +s1, 1.78 +s1 );
    setScaleKey( SP_dodge + 10, 1 ,1.78 +s1, 1.78 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 75, 1, 0 );


setMoveKey( spep_3 -3 + 18, 1, 176.9, -200.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 177.2, -200.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, 177.5, -201.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 177.8, -201.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, 178.1, -202.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, 178.5, -202.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, 180.1, -201.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, 184, -201.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, 190.1, -202.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, 198.6, -203.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, 209.6, -206.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, 222.9, -210.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, 238.7, -215.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, 256.9, -221.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, 277.7, -228.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, 301.1, -236.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, 341.5, -240.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 350.3, -261.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 353.6, -248.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 376.4, -269.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 383.8, -257.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 367.9, -269.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 370, -255.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 391.6, -274.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 397.7, -261.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 380.6, -272.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 381.4, -257 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 401.7, -274.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 406.5, -259.9 , 0 );
setMoveKey( spep_3 -3 + 75, 1, 406.5, -259.9 , 0 );

setScaleKey( spep_3 -3 + 18, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_3 -3 + 20, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_3 -3 + 22, 1, 1.77 +s1, 1.77 +s1 );
setScaleKey( spep_3 -3 + 24, 1, 1.78 +s1, 1.78 +s1 );
setScaleKey( spep_3 -3 + 26, 1, 1.78 +s1, 1.78 +s1 );
setScaleKey( spep_3 -3 + 28, 1, 1.79 +s1, 1.79 +s1 );
setScaleKey( spep_3 -3 + 30, 1, 1.81 +s1, 1.81 +s1 );
setScaleKey( spep_3 -3 + 32, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_3 -3 + 34, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_3 -3 + 36, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_3 -3 + 38, 1, 2.26 +s1, 2.26 +s1 );
setScaleKey( spep_3 -3 + 40, 1, 2.46 +s1, 2.46 +s1 );
setScaleKey( spep_3 -3 + 42, 1, 2.69 +s1, 2.69 +s1 );
setScaleKey( spep_3 -3 + 44, 1, 2.96 +s1, 2.96 +s1 );
setScaleKey( spep_3 -3 + 46, 1, 3.27 +s1, 3.27 +s1 );
setScaleKey( spep_3 -3 + 48, 1, 3.62 +s1, 3.62 +s1 );
setScaleKey( spep_3 -3 + 50, 1, 4 +s1, 4 +s1 );
setScaleKey( spep_3 -3 + 52, 1, 4.43 +s1, 4.43 +s1 );
setScaleKey( spep_3 -3 + 54, 1, 4.5 +s1, 4.5 +s1 );
setScaleKey( spep_3 -3 + 56, 1, 4.58 +s1, 4.58 +s1 );
setScaleKey( spep_3 -3 + 58, 1, 4.64 +s1, 4.64 +s1 );
setScaleKey( spep_3 -3 + 60, 1, 4.71 +s1, 4.71 +s1 );
setScaleKey( spep_3 -3 + 62, 1, 4.76 +s1, 4.76 +s1 );
setScaleKey( spep_3 -3 + 64, 1, 4.82 +s1, 4.82 +s1 );
setScaleKey( spep_3 -3 + 66, 1, 4.87 +s1, 4.87 +s1 );
setScaleKey( spep_3 -3 + 68, 1, 4.91 +s1, 4.91 +s1 );
setScaleKey( spep_3 -3 + 70, 1, 4.95 +s1, 4.95 +s1 );
setScaleKey( spep_3 -3 + 72, 1, 4.98 +s1, 4.98 +s1 );
setScaleKey( spep_3 -3 + 74, 1, 5.01 +s1, 5.01 +s1 );
setScaleKey( spep_3 -3 + 75, 1, 5.01 +s1, 5.01 +s1 );

setRotateKey( spep_3 -3 + 75, 1, 0 );

-- ** 音 ** --
--トランクス飛んでくる
SE013 = playSe( spep_3 + 20, 1182 );

--トランクス飛んでくる
SE014 = playSe( spep_3 + 20, 1117 );
stopSe( spep_3 + 48, SE014, 38 );

--トランクス飛んでくる
SE015 = playSe( spep_3 + 20, 9 );
stopSe( spep_3 +72, SE015, 8 );

--腕前に
SE016 = playSe( spep_3 + 52, 1314 );
setSeVolumeByWorkId( spep_3 + 52, SE016, 67 );
stopSe( spep_3 +72 + 36, SE016, 48 );

--腕前に
SE017 = playSe( spep_3 + 52, 1278 );
stopSe( spep_3 +72 +56 + 2, SE017, 32 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 72 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 72;


------------------------------------------------------
-- 振りかぶり拳を突き出す(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --振りかぶり拳を突き出す ef_005
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 56, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 56 -1, tame, 255 );
setEffAlphaKey( spep_4 + 56, tame, 0 );

-- ** 音 ** --
--振りかぶる
SE018 = playSe( spep_4 + 10, 1116 );
stopSe( spep_4 +38, SE018, 28 );

--振りかぶる
SE019 = playSe( spep_4 + 14, 1004 );

--パンチ
SE020 = playSe( spep_4 + 54, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 殴り抜ける動作から気弾を溜め突き出す(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
blow_f = entryEffectLife( spep_5 + 0, SP_06, 146, 0x100, -1, 0, 0, 0 );  --殴る動作とヒットエフェクトと文字 ef_006
setEffMoveKey( spep_5 + 0, blow_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, blow_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, blow_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, blow_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, blow_f, 0 );
setEffRotateKey( spep_5 + 146, blow_f, 0 );
setEffAlphaKey( spep_5 + 0, blow_f, 255 );
setEffAlphaKey( spep_5 + 146 -1, blow_f, 255 );
setEffAlphaKey( spep_5 + 146, blow_f, 0 );

blow_b = entryEffectLife( spep_5 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --殴り抜ける動作から気弾を溜め突き出す    ef_007
setEffMoveKey( spep_5 + 0, blow_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, blow_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, blow_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 146, blow_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, blow_b, 0 );
setEffRotateKey( spep_5 + 146, blow_b, 0 );
setEffAlphaKey( spep_5 + 0, blow_b, 255 );
setEffAlphaKey( spep_5 + 146 -1, blow_b, 255 );
setEffAlphaKey( spep_5 + 146, blow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 4 );
changeAnime( spep_5 -3 + 18, 1, 6 );

b5 = 50;
setMoveKey( spep_5 + 0, 1, -6.2, -249.5 -b5 , 0 );
setMoveKey( spep_5 + 1, 1, -6.3, -249.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, -6.3, -249.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 17, 1, 15.5, -286.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 85.1, -291.8 -b5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 94.8, -328.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 117.1, -275.2 -b5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 95.1, -331.7 -b5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 52.7, -292.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 70.8, -330 -b5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 101.9, -277.3 -b5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 80.8, -333.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 39.3, -294.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, 58.4, -331.7 -b5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 90.4, -278.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 70.3, -335.1 -b5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 29.8, -295.8 -b5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 49.8, -332.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, 82.8, -279.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, 63.6, -336 -b5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, 24.1, -296.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, 45.1, -333.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 79, -280.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 60.8, -336.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 22.1, -296.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 22.1, -296.9 -b5 , 0 );

s2 = 0.8;
setScaleKey( spep_5 + 0, 1, 5.59 +s2, 5.59 +s2 );
setScaleKey( spep_5 -3 + 60, 1, 5.59 +s2, 5.59 +s2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 17, 1, 0 );
setRotateKey( spep_5 -3 + 18, 1, 33.8 );
setRotateKey( spep_5 -3 + 20, 1, 28.4 );
setRotateKey( spep_5 -3 + 22, 1, 23 );
setRotateKey( spep_5 -3 + 24, 1, 22.7 );
setRotateKey( spep_5 -3 + 26, 1, 22.5 );
setRotateKey( spep_5 -3 + 28, 1, 22.2 );
setRotateKey( spep_5 -3 + 30, 1, 22 );
setRotateKey( spep_5 -3 + 32, 1, 21.8 );
setRotateKey( spep_5 -3 + 34, 1, 21.6 );
setRotateKey( spep_5 -3 + 36, 1, 21.4 );
setRotateKey( spep_5 -3 + 38, 1, 21.3 );
setRotateKey( spep_5 -3 + 40, 1, 21.1 );
setRotateKey( spep_5 -3 + 42, 1, 21 );
setRotateKey( spep_5 -3 + 44, 1, 20.9 );
setRotateKey( spep_5 -3 + 46, 1, 20.8 );
setRotateKey( spep_5 -3 + 48, 1, 20.7 );
setRotateKey( spep_5 -3 + 50, 1, 20.6 );
setRotateKey( spep_5 -3 + 52, 1, 20.6 );
setRotateKey( spep_5 -3 + 54, 1, 20.5 );
setRotateKey( spep_5 -3 + 60, 1, 20.5 );

-- ** 音 ** --
--パンチ
SE021 = playSe( spep_5 + 2, 1009 );

--パンチ
SE022 = playSe( spep_5 + 2, 1000 );

--パンチ
SE023 = playSe( spep_5 + 4, 1110 );

--気弾ため
SE024 = playSe( spep_5 + 54, 1275,"",0.6 );
setPitch( spep_5 + 54, SE024, 900 );
setTimeStretch( SE024, 1.6, 10, 1 );

--気弾ため
SE025 = playSe( spep_5 + 54, 1265,"",0.6 );
stopSe( spep_5 +146 + 70, SE025, 14 );

--気弾ため
SE026 = playSe( spep_5 + 54, 1037,"",0.6 );
stopSe( spep_5 +146 + 72, SE026, 10 );

--気弾ため
SE027 = playSe( spep_5 + 54, 1296,"",0.6 );
setSeVolumeByWorkId( spep_5 + 54, SE027, 79 );
stopSe( spep_5 +134 + 8, SE027, 12 );
setPitch( spep_5 + 54, SE027, -50 );
setTimeStretch( SE027, 0.97, 10, 1 );

--気弾押し付ける
SE028 = playSe( spep_5 + 144, 1296 );
setSeVolumeByWorkId( spep_5 + 144, SE028, 79 );
stopSe( spep_5 +146 +116 + 48, SE028, 10 );
setPitch( spep_5 + 144, SE028, 300 );
setTimeStretch( SE028, 1.2, 10, 1 );

--気弾押し付ける
SE029 = playSe( spep_5 + 144, 1312 );
stopSe( spep_5 +146 + 76, SE029, 10 );

--気弾押し付ける
SE030 = playSe( spep_5 + 144, 1017 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;


------------------------------------------------------
-- 気弾を押し込む(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --気弾を押し込む ef_008
setEffMoveKey( spep_6 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, kidan_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_f, 0 );
setEffRotateKey( spep_6 + 116, kidan_f, 0 );
setEffAlphaKey( spep_6 + 0, kidan_f, 255 );
setEffAlphaKey( spep_6 + 116 -1, kidan_f, 255 );
setEffAlphaKey( spep_6 + 116, kidan_f, 0 );

kidan_b = entryEffectLife( spep_6 + 0, SP_09, 116, 0x80, -1, 0, 0, 0 );  --背景   ef_009
setEffMoveKey( spep_6 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 116, kidan_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_b, 0 );
setEffRotateKey( spep_6 + 116, kidan_b, 0 );
setEffAlphaKey( spep_6 + 0, kidan_b, 255 );
setEffAlphaKey( spep_6 + 116 -1, kidan_b, 255 );
setEffAlphaKey( spep_6 + 116, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 -3 + 119, 1, 0 );
changeAnime( spep_6 + 0, 1, 106 );
changeAnime( spep_6 -3 + 6, 1, 108 );

b6 = 30;
setMoveKey( spep_6 + 0, 1, -86.7 +60, -115.2 -60 , 0 );
setMoveKey( spep_6 + 1, 1, -84.8 +60, -157.9 -60 , 0 );
setMoveKey( spep_6 + 2, 1, -84.8 +60, -157.9 -60 , 0 );
--setMoveKey( spep_6 -3 + 5, 1, -80.9, -168.7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 114.6, -97.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 99.5, -132.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 97.5, -164.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 75.2, -186.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 107.7, -178.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 94.7, -187.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 94.6, -194 -b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 74.2, -190.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 106.7, -183.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 93.7, -192.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 93.6, -198.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 73.2, -194.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 105.7, -187.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 92.7, -196.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 92.6, -202.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 72.2, -199 -b6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 104.7, -191.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 91.8, -200.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 91.7, -205.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 71.4, -201.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 103.9, -193.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 87.1, -194.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 86.9, -194.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 86.7, -194.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 86.5, -194.7 -b6 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 86.3, -194.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 86.1, -195.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 77.2, -202.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 82.8, -193.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 73.9, -204.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 85.3, -204.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 76.5, -203 -b6 , 0 );
setMoveKey( spep_6 -3 + 70, 1, 82.1, -194.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 72, 1, 73.2, -204.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 74, 1, 84.6, -204.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, 75.7, -203.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 78, 1, 81.3, -194.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 80, 1, 72.4, -205 -b6 , 0 );
setMoveKey( spep_6 -3 + 82, 1, 83.9, -205.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, 75, -203.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 86, 1, 80.6, -195 -b6 , 0 );
setMoveKey( spep_6 -3 + 88, 1, 71.7, -205.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 90, 1, 83.2, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 92, 1, 74.3, -203.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 94, 1, 79.9, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 96, 1, 70.9, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, 82.4, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 100, 1, 73.5, -204 -b6 , 0 );
setMoveKey( spep_6 -3 + 102, 1, 79.2, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 104, 1, 70.3, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 106, 1, 81.7, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 108, 1, 72.8, -203.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 110, 1, 78.5, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 112, 1, 69.6, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 114, 1, 81, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 116, 1, 72.2, -203.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 118, 1, 77.8, -195 -b6 , 0 );
--setMoveKey( spep_6 -3 + 119, 1, 77.8, -195 , 0 );

s3 = 0.7;
setScaleKey( spep_6 + 0, 1, 7.68 +s3, 7.68 +s3 );
setScaleKey( spep_6 + 1, 1, 5.67 +s3, 5.67 +s3 );
setScaleKey( spep_6 -3 + 5, 1, 5.67 +s3, 5.67 +s3 );
setScaleKey( spep_6 -3 + 6, 1, 3.86 +s3, 3.86 +s3 );
setScaleKey( spep_6 -3 + 8, 1, 3.37 +s3, 3.37 +s3 );
setScaleKey( spep_6 -3 + 10, 1, 2.89 +s3, 2.89 +s3 );
setScaleKey( spep_6 -3 + 12, 1, 2.41 +s3, 2.41 +s3 );
setScaleKey( spep_6 -3 + 14, 1, 2.38 +s3, 2.38 +s3 );
setScaleKey( spep_6 -3 + 16, 1, 2.35 +s3, 2.35 +s3 );
setScaleKey( spep_6 -3 + 18, 1, 2.33 +s3, 2.33 +s3 );
setScaleKey( spep_6 -3 + 20, 1, 2.3 +s3, 2.3 +s3 );
setScaleKey( spep_6 -3 + 22, 1, 2.27 +s3, 2.27 +s3 );
setScaleKey( spep_6 -3 + 24, 1, 2.24 +s3, 2.24 +s3 );
setScaleKey( spep_6 -3 + 26, 1, 2.21 +s3, 2.21 +s3 );
setScaleKey( spep_6 -3 + 28, 1, 2.18 +s3, 2.18 +s3 );
setScaleKey( spep_6 -3 + 30, 1, 2.15 +s3, 2.15 +s3 );
setScaleKey( spep_6 -3 + 32, 1, 2.13 +s3, 2.13 +s3 );
setScaleKey( spep_6 -3 + 34, 1, 2.1 +s3, 2.1 +s3 );
setScaleKey( spep_6 -3 + 36, 1, 2.07 +s3, 2.07 +s3 );
setScaleKey( spep_6 -3 + 38, 1, 2.04 +s3, 2.04 +s3 );
setScaleKey( spep_6 -3 + 40, 1, 2.02 +s3, 2.02 +s3 );
setScaleKey( spep_6 -3 + 42, 1, 2 +s3, 2 +s3 );
setScaleKey( spep_6 -3 + 44, 1, 1.99 +s3, 1.99 +s3 );
setScaleKey( spep_6 -3 + 46, 1, 1.98 +s3, 1.98 +s3 );
setScaleKey( spep_6 -3 + 48, 1, 1.97 +s3, 1.97 +s3 );
setScaleKey( spep_6 -3 + 50, 1, 1.96 +s3, 1.96 +s3 );
setScaleKey( spep_6 -3 + 52, 1, 1.95 +s3, 1.95 +s3 );
setScaleKey( spep_6 -3 + 54, 1, 1.94 +s3, 1.94 +s3 );
setScaleKey( spep_6 -3 + 56, 1, 1.93 +s3, 1.93 +s3 );
setScaleKey( spep_6 -3 + 58, 1, 1.92 +s3, 1.92 +s3 );
setScaleKey( spep_6 -3 + 60, 1, 1.91 +s3, 1.91 +s3 );
setScaleKey( spep_6 -3 + 62, 1, 1.9 +s3, 1.9 +s3 );
setScaleKey( spep_6 -3 + 64, 1, 1.89 +s3, 1.89 +s3 );
setScaleKey( spep_6 -3 + 66, 1, 1.88 +s3, 1.88 +s3 );
setScaleKey( spep_6 -3 + 68, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_6 -3 + 70, 1, 1.86 +s3, 1.86 +s3 );
setScaleKey( spep_6 -3 + 72, 1, 1.85 +s3, 1.85 +s3 );
setScaleKey( spep_6 -3 + 74, 1, 1.84 +s3, 1.84 +s3 );
setScaleKey( spep_6 -3 + 76, 1, 1.83 +s3, 1.83 +s3 );
setScaleKey( spep_6 -3 + 78, 1, 1.83 +s3, 1.83 +s3 );
setScaleKey( spep_6 -3 + 80, 1, 1.82 +s3, 1.82 +s3 );
setScaleKey( spep_6 -3 + 82, 1, 1.81 +s3, 1.81 +s3 );
setScaleKey( spep_6 -3 + 84, 1, 1.8 +s3, 1.8 +s3 );
setScaleKey( spep_6 -3 + 86, 1, 1.79 +s3, 1.79 +s3 );
setScaleKey( spep_6 -3 + 88, 1, 1.78 +s3, 1.78 +s3 );
setScaleKey( spep_6 -3 + 90, 1, 1.77 +s3, 1.77 +s3 );
setScaleKey( spep_6 -3 + 92, 1, 1.76 +s3, 1.76 +s3 );
setScaleKey( spep_6 -3 + 94, 1, 1.75 +s3, 1.75 +s3 );
setScaleKey( spep_6 -3 + 96, 1, 1.74 +s3, 1.74 +s3 );
setScaleKey( spep_6 -3 + 98, 1, 1.74 +s3, 1.74 +s3 );
setScaleKey( spep_6 -3 + 100, 1, 1.73 +s3, 1.73 +s3 );
setScaleKey( spep_6 -3 + 102, 1, 1.72 +s3, 1.72 +s3 );
setScaleKey( spep_6 -3 + 104, 1, 1.71 +s3, 1.71 +s3 );
setScaleKey( spep_6 -3 + 106, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_6 -3 + 108, 1, 1.69 +s3, 1.69 +s3 );
setScaleKey( spep_6 -3 + 110, 1, 1.68 +s3, 1.68 +s3 );
setScaleKey( spep_6 -3 + 112, 1, 1.68 +s3, 1.68 +s3 );
setScaleKey( spep_6 -3 + 114, 1, 1.67 +s3, 1.67 +s3 );
setScaleKey( spep_6 -3 + 116, 1, 1.66 +s3, 1.66 +s3 );
setScaleKey( spep_6 -3 + 118, 1, 1.65 +s3, 1.65 +s3 );
--setScaleKey( spep_6 -3 + 119, 1, 1.65, 1.65 );

setRotateKey( spep_6 + 0, 1, -33.8 );
setRotateKey( spep_6 + 1, 1, -29 );
setRotateKey( spep_6 + 2, 1, -29 );
--setRotateKey( spep_6 -3 + 5, 1, -24.3 );
setRotateKey( spep_6 -3 + 6, 1, 28.6 );
setRotateKey( spep_6 -3 + 8, 1, 30.1 );
setRotateKey( spep_6 -3 + 10, 1, 31.7 );
setRotateKey( spep_6 -3 + 12, 1, 33.2 );
setRotateKey( spep_6 -3 + 14, 1, 33.3 );
setRotateKey( spep_6 -3 + 16, 1, 33.3 );
setRotateKey( spep_6 -3 + 18, 1, 33.4 );
setRotateKey( spep_6 -3 + 20, 1, 33.5 );
setRotateKey( spep_6 -3 + 22, 1, 33.6 );
setRotateKey( spep_6 -3 + 24, 1, 33.6 );
setRotateKey( spep_6 -3 + 26, 1, 33.7 );
setRotateKey( spep_6 -3 + 28, 1, 33.8 );
setRotateKey( spep_6 -3 + 30, 1, 33.8 );
setRotateKey( spep_6 -3 + 32, 1, 33.9 );
setRotateKey( spep_6 -3 + 34, 1, 34 );
setRotateKey( spep_6 -3 + 36, 1, 34 );
setRotateKey( spep_6 -3 + 38, 1, 34.1 );
setRotateKey( spep_6 -3 + 40, 1, 34.2 );
setRotateKey( spep_6 -3 + 42, 1, 34.4 );
setRotateKey( spep_6 -3 + 44, 1, 34.7 );
setRotateKey( spep_6 -3 + 46, 1, 34.9 );
setRotateKey( spep_6 -3 + 48, 1, 35.2 );
setRotateKey( spep_6 -3 + 50, 1, 35.4 );
setRotateKey( spep_6 -3 + 52, 1, 35.7 );
setRotateKey( spep_6 -3 + 54, 1, 35.9 );
setRotateKey( spep_6 -3 + 56, 1, 36.1 );
setRotateKey( spep_6 -3 + 58, 1, 36.3 );
setRotateKey( spep_6 -3 + 60, 1, 36.5 );
setRotateKey( spep_6 -3 + 62, 1, 36.8 );
setRotateKey( spep_6 -3 + 64, 1, 37 );
setRotateKey( spep_6 -3 + 66, 1, 37.2 );
setRotateKey( spep_6 -3 + 68, 1, 37.4 );
setRotateKey( spep_6 -3 + 70, 1, 37.6 );
setRotateKey( spep_6 -3 + 72, 1, 37.8 );
setRotateKey( spep_6 -3 + 74, 1, 37.9 );
setRotateKey( spep_6 -3 + 76, 1, 38.1 );
setRotateKey( spep_6 -3 + 78, 1, 38.3 );
setRotateKey( spep_6 -3 + 80, 1, 38.5 );
setRotateKey( spep_6 -3 + 82, 1, 38.6 );
setRotateKey( spep_6 -3 + 84, 1, 38.8 );
setRotateKey( spep_6 -3 + 86, 1, 39 );
setRotateKey( spep_6 -3 + 88, 1, 39.1 );
setRotateKey( spep_6 -3 + 90, 1, 39.3 );
setRotateKey( spep_6 -3 + 92, 1, 39.4 );
setRotateKey( spep_6 -3 + 94, 1, 39.6 );
setRotateKey( spep_6 -3 + 96, 1, 39.7 );
setRotateKey( spep_6 -3 + 98, 1, 39.8 );
setRotateKey( spep_6 -3 + 100, 1, 40 );
setRotateKey( spep_6 -3 + 102, 1, 40.1 );
setRotateKey( spep_6 -3 + 104, 1, 40.2 );
setRotateKey( spep_6 -3 + 106, 1, 40.3 );
setRotateKey( spep_6 -3 + 108, 1, 40.4 );
setRotateKey( spep_6 -3 + 110, 1, 40.5 );
setRotateKey( spep_6 -3 + 112, 1, 40.6 );
setRotateKey( spep_6 -3 + 114, 1, 40.7 );
setRotateKey( spep_6 -3 + 116, 1, 40.8 );
setRotateKey( spep_6 -3 + 118, 1, 40.9 );
--setRotateKey( spep_6 -3 + 119, 1, 40.9 );

-- ** 音 ** --
--降下
SE031 = playSe( spep_6 + 28, 1314 );
setSeVolumeByWorkId( spep_6 + 28, SE031, 123 );
stopSe( spep_6 +116 + 44, SE031, 10 );

--降下
SE032 = playSe( spep_6 + 38, 1311 );
setSeVolumeByWorkId( spep_6 + 38, SE032, 129 );
setTimeStretch( SE032, 1.43, 10, 1 );

--画面切り替わって加速
SE033 = playSe( spep_6 + 100, 1258 );
setSeVolumeByWorkId( spep_6 + 100, SE033, 84 );
stopSe( spep_6 +116 + 44, SE033, 10 );
setPitch( spep_6 + 100, SE033, -400 );
setTimeStretch( SE033, 0.73, 10, 1 );

--画面切り替わって加速
SE034 = playSe( spep_6 + 104, 1183 );
stopSe( spep_6 +116 + 44, SE034, 10 );

--画面切り替わって加速
SE035 = playSe( spep_6 + 104, 9 );
setSeVolumeByWorkId( spep_6 + 104, SE035, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --気弾を押し込む〜爆発  ef_010
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 196, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 196, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --背景   ef_011
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 196, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 196, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 66, 1, 0 );
changeAnime( spep_7 + 0, 1, 108 );

a7 = 20;
setMoveKey( spep_7 + 0, 1, 9.2 -a7, 260.9 , 0 );
setMoveKey( spep_7 + 1, 1, 9.1 -a7, 260.6 , 0 );
setMoveKey( spep_7 + 2, 1, 9.1 -a7, 262.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 9 -a7, 265.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 8.9 -a7, 270.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 8.9 -a7, 278.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 8.8 -a7, 287.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 8.8 -a7, 298.1 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 8.7 -a7, 310.9 , 0 );
setMoveKey( spep_7 -3 + 18, 1, 8.7 -a7, 325.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 8.6 -a7, 342.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, 8.5 -a7, 360.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 8.5 -a7, 380.9 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 8.4 -a7, 378.1 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 8.4 -a7, 372.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 8.3 -a7, 364.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 8.3 -a7, 354.3 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 8.2 -a7, 341.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 8.1 -a7, 325.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 8.1 -a7, 307.1 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 8 -a7, 286.2 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 8 -a7, 262.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 7.9 -a7, 101.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 7.8 -a7, -60.2 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 7.8 -a7, -38.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 7.7 -a7, -16.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, -9.6 -a7, -40 , 0 );
setMoveKey( spep_7 -3 + 54, 1, 2.7 -a7, -29.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, 19.7 -a7, -24.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, 1.8 -a7, -18.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, -7.1 -a7, -39.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, 5.2 -a7, -30.4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, 22.3 -a7, -27.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, 4.4 -a7, -23.5 , 0 );

s4 = 0.15;
setScaleKey( spep_7 + 0, 1, 1.31 +s4, 1.31 +s4 );
setScaleKey( spep_7 + 1, 1, 1.31 +s4, 1.31 +s4 );
setScaleKey( spep_7 + 2, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 22, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 24, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 40, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 42, 1, 1.28 +s4, 1.28 +s4 );
setScaleKey( spep_7 -3 + 50, 1, 1.28 +s4, 1.28 +s4 );
setScaleKey( spep_7 -3 + 52, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 54, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 56, 1, 1.32 +s4, 1.32 +s4 );
setScaleKey( spep_7 -3 + 58, 1, 1.33 +s4, 1.33 +s4 );
setScaleKey( spep_7 -3 + 60, 1, 1.34 +s4, 1.34 +s4 );
setScaleKey( spep_7 -3 + 62, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_7 -3 + 64, 1, 1.36 +s4, 1.36 +s4 );
setScaleKey( spep_7 -3 + 66, 1, 1.38 +s4, 1.38 +s4 );

setRotateKey( spep_7 + 0, 1, 78.7 );
setRotateKey( spep_7 -3 + 66, 1, 78.7 );

-- ** 音 ** --
--地面爆発
SE036 = playSe( spep_7 + 44, 1067 );

--地面爆発
SE037 = playSe( spep_7 + 44, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 48 );
endPhase( spep_7 + 186 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- エアカー　奥から来て急ターン(174F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 174, 0x100, -1, 0, 0, 0 );  --エアカー　奥から来て急ターン  ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 174, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, -1.0, 1.0 );
setEffScaleKey( spep_0 + 174, first_f, -1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 174, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 174 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 174, first_f, 0 );

-- ** 音 ** --
--エアカーで走ってくる
SE001 = playSe( spep_0 + 0, 1229,"",0.6 );

--エアカーで走ってくる
SE002 = playSe( spep_0 + 0, 1182 );
setSeVolumeByWorkId( spep_0 + 0, SE002, 57 );

--エアカーで走ってくる
SE003 = playSe( spep_0 + 0, 1326,"",0.6 );
stopSe( spep_0 +174, SE003, 14 );

--エアカーで走ってくる
SE004 = playSe( spep_0 + 0, 1327,"",0.6 );
stopSe( spep_0 +174, SE004, 14 );

--速度上げる
SE005 = playSe( spep_0 + 92, 9 );
stopSe( spep_0 +172, SE005, 38 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 174 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 174;


------------------------------------------------------
-- エアカー　急停止からトランクス降車(206F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
getoff = entryEffectLife( spep_1 + 0, SP_02, 228, 0x100, -1, 0, 0, 0 );  --敵の背後に瞬間移動_敵より手前(ef_003_front)
setEffMoveKey( spep_1 + 0, getoff, 0, 0 , 0 );
setEffMoveKey( spep_1 + 228, getoff, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, getoff, -1.0, 1.0 );
setEffScaleKey( spep_1 + 228, getoff, -1.0, 1.0 );
setEffRotateKey( spep_1 + 0, getoff, 0 );
setEffRotateKey( spep_1 + 228, getoff, 0 );
setEffAlphaKey( spep_1 + 0, getoff, 255 );
setEffAlphaKey( spep_1 + 228 -1, getoff, 255 );
setEffAlphaKey( spep_1 + 228, getoff, 0 );

spep_x = spep_1 + 142;
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
--ブレーキ
SE006 = playSe( spep_1 + 0, 1323 );
stopSe( spep_1 + 12, SE006, 6 );

--車飛び出る
SE007 = playSe( spep_1 + 48, 1116 );
stopSe( spep_1 + 62, SE007, 24 );
setBandpassFilter( spep_1 + 46, SE007, 400, 24000 );

--着地
SE008 = playSe( spep_1 + 82, 1108 );
setSeVolumeByWorkId( spep_1 + 82, SE008, 158 );

--着地
SE009 = playSe( spep_1 + 86, 1106 );
setSeVolumeByWorkId( spep_1 + 86, SE009, 158 );

--画面遷移
SE010 = playSe( spep_1 + 112, 1003 );
setPitch( spep_1 + 112, SE010, -400 );
setTimeStretch( SE010, 0.73, 10, 1 );

--顔カットイン
SE011 = playSe( spep_1 + 146, 1018 );                       

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 228 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 228;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
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
SE001 = playSe( spep_2 + 0, SE_05 );
-- ** 白背景 ** --
entryFadeBg( spep_2 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
-- ** 白フェード ** --
entryFade( spep_2 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_2 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_2 + 94;


------------------------------------------------------
-- 迫るトランクス(72F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move_f = entryEffectLife( spep_3 + 0, SP_03, 72, 0x100, -1, 0, 0, 0 );  --集中線と文字    ef_003
setEffMoveKey( spep_3 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_3 + 72, move_f, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_f, -1.0, 1.0 );
setEffScaleKey( spep_3 + 72, move_f, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_f, 0 );
setEffRotateKey( spep_3 + 72, move_f, 0 );
setEffAlphaKey( spep_3 + 0, move_f, 255 );
setEffAlphaKey( spep_3 + 72 -1, move_f, 255 );
setEffAlphaKey( spep_3 + 72, move_f, 0 );

move_b = entryEffectLife( spep_3 + 0, SP_04, 72, 0x80, -1, 0, 0, 0 );  --迫るトランクス    ef_004
setEffMoveKey( spep_3 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_3 + 72, move_b, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move_b, -1.0, 1.0 );
setEffScaleKey( spep_3 + 72, move_b, -1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move_b, 0 );
setEffRotateKey( spep_3 + 72, move_b, 0 );
setEffAlphaKey( spep_3 + 0, move_b, 255 );
setEffAlphaKey( spep_3 + 72 -1, move_b, 255 );
setEffAlphaKey( spep_3 + 72, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
changeAnime( spep_3 + 0, 1, 2 );

setMoveKey( spep_3 + 0, 1, -174.1, -195.2 , 0 );
setMoveKey( spep_3 + 1, 1, -174.4, -195.7 , 0 );
setMoveKey( spep_3 + 2, 1, -174.7, -196.3 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -175, -196.8 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -175.3, -197.4 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -175.7, -197.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -175.9, -198.5 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -176.3, -199 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -176.6, -199.6 , 0 );

s1 = 0.4;
setScaleKey( spep_3 + 0, 1, 1.7 +s1, 1.7 +s1 );
setScaleKey( spep_3 + 1, 1, 1.71 +s1, 1.71 +s1 );
setScaleKey( spep_3 + 2, 1, 1.71 +s1, 1.71 +s1 );
setScaleKey( spep_3 -3 + 6, 1, 1.72 +s1, 1.72 +s1 );
setScaleKey( spep_3 -3 + 8, 1, 1.73 +s1, 1.73 +s1 );
setScaleKey( spep_3 -3 + 10, 1, 1.73 +s1, 1.73 +s1 );
setScaleKey( spep_3 -3 + 12, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_3 -3 + 14, 1, 1.74 +s1, 1.74 +s1 );
setScaleKey( spep_3 -3 + 16, 1, 1.75 +s1, 1.75 +s1 );

setRotateKey( spep_3 + 0, 1, 0 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 14 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE001, 0);
    --stopSe( SP_dodge - 12, SE002, 0);
    --stopSe( SP_dodge - 12, SE003, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, -176.6, -199.6 , 0 );
    setMoveKey( SP_dodge + 2, 1, -176.9, -200.1 , 0 );
    setMoveKey( SP_dodge + 4, 1, -177.2, -200.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, -177.5, -201.3 , 0 );
    setMoveKey( SP_dodge + 8, 1, -177.8, -201.7 , 0 );
    setMoveKey( SP_dodge + 10, 1, -178.1, -202.3 , 0 );

    setScaleKey( SP_dodge + 0, 1, 1.75 +s1, 1.75 +s1 );
    setScaleKey( SP_dodge + 2, 1, 1.76 +s1, 1.76 +s1 );
    setScaleKey( SP_dodge + 4, 1, 1.76 +s1, 1.76 +s1 );
    setScaleKey( SP_dodge + 6, 1, 1.77 +s1, 1.77 +s1 );
    setScaleKey( SP_dodge + 8, 1, 1.78 +s1, 1.78 +s1 );
    setScaleKey( SP_dodge + 10, 1 ,1.78 +s1, 1.78 +s1 );

    setRotateKey( SP_dodge + 0, 1, 0 );
    setRotateKey( SP_dodge + 10, 1, 0 );    
    
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

-- ** 敵キャラクター ** --
setDisp( spep_3 -3 + 75, 1, 0 );


setMoveKey( spep_3 -3 + 18, 1, -176.9, -200.1 , 0 );
setMoveKey( spep_3 -3 + 20, 1, -177.2, -200.7 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -177.5, -201.3 , 0 );
setMoveKey( spep_3 -3 + 24, 1, -177.8, -201.7 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -178.1, -202.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -178.5, -202.9 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -180.1, -201.6 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -184, -201.4 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -190.1, -202.1 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -198.6, -203.9 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -209.6, -206.7 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -222.9, -210.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -238.7, -215.4 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -256.9, -221.3 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -277.7, -228.4 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -301.1, -236.6 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -341.5, -240.2 , 0 );
setMoveKey( spep_3 -3 + 52, 1, -350.3, -261.3 , 0 );
setMoveKey( spep_3 -3 + 54, 1, -353.6, -248.7 , 0 );
setMoveKey( spep_3 -3 + 56, 1, -376.4, -269.3 , 0 );
setMoveKey( spep_3 -3 + 58, 1, -383.8, -257.5 , 0 );
setMoveKey( spep_3 -3 + 60, 1, -367.9, -269.7 , 0 );
setMoveKey( spep_3 -3 + 62, 1, -370, -255.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, -391.6, -274.9 , 0 );
setMoveKey( spep_3 -3 + 66, 1, -397.7, -261.7 , 0 );
setMoveKey( spep_3 -3 + 68, 1, -380.6, -272.5 , 0 );
setMoveKey( spep_3 -3 + 70, 1, -381.4, -257 , 0 );
setMoveKey( spep_3 -3 + 72, 1, -401.7, -274.7 , 0 );
setMoveKey( spep_3 -3 + 74, 1, -406.5, -259.9 , 0 );
setMoveKey( spep_3 -3 + 75, 1, -406.5, -259.9 , 0 );

setScaleKey( spep_3 -3 + 18, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_3 -3 + 20, 1, 1.76 +s1, 1.76 +s1 );
setScaleKey( spep_3 -3 + 22, 1, 1.77 +s1, 1.77 +s1 );
setScaleKey( spep_3 -3 + 24, 1, 1.78 +s1, 1.78 +s1 );
setScaleKey( spep_3 -3 + 26, 1, 1.78 +s1, 1.78 +s1 );
setScaleKey( spep_3 -3 + 28, 1, 1.79 +s1, 1.79 +s1 );
setScaleKey( spep_3 -3 + 30, 1, 1.81 +s1, 1.81 +s1 );
setScaleKey( spep_3 -3 + 32, 1, 1.87 +s1, 1.87 +s1 );
setScaleKey( spep_3 -3 + 34, 1, 1.97 +s1, 1.97 +s1 );
setScaleKey( spep_3 -3 + 36, 1, 2.1 +s1, 2.1 +s1 );
setScaleKey( spep_3 -3 + 38, 1, 2.26 +s1, 2.26 +s1 );
setScaleKey( spep_3 -3 + 40, 1, 2.46 +s1, 2.46 +s1 );
setScaleKey( spep_3 -3 + 42, 1, 2.69 +s1, 2.69 +s1 );
setScaleKey( spep_3 -3 + 44, 1, 2.96 +s1, 2.96 +s1 );
setScaleKey( spep_3 -3 + 46, 1, 3.27 +s1, 3.27 +s1 );
setScaleKey( spep_3 -3 + 48, 1, 3.62 +s1, 3.62 +s1 );
setScaleKey( spep_3 -3 + 50, 1, 4 +s1, 4 +s1 );
setScaleKey( spep_3 -3 + 52, 1, 4.43 +s1, 4.43 +s1 );
setScaleKey( spep_3 -3 + 54, 1, 4.5 +s1, 4.5 +s1 );
setScaleKey( spep_3 -3 + 56, 1, 4.58 +s1, 4.58 +s1 );
setScaleKey( spep_3 -3 + 58, 1, 4.64 +s1, 4.64 +s1 );
setScaleKey( spep_3 -3 + 60, 1, 4.71 +s1, 4.71 +s1 );
setScaleKey( spep_3 -3 + 62, 1, 4.76 +s1, 4.76 +s1 );
setScaleKey( spep_3 -3 + 64, 1, 4.82 +s1, 4.82 +s1 );
setScaleKey( spep_3 -3 + 66, 1, 4.87 +s1, 4.87 +s1 );
setScaleKey( spep_3 -3 + 68, 1, 4.91 +s1, 4.91 +s1 );
setScaleKey( spep_3 -3 + 70, 1, 4.95 +s1, 4.95 +s1 );
setScaleKey( spep_3 -3 + 72, 1, 4.98 +s1, 4.98 +s1 );
setScaleKey( spep_3 -3 + 74, 1, 5.01 +s1, 5.01 +s1 );
setScaleKey( spep_3 -3 + 75, 1, 5.01 +s1, 5.01 +s1 );

setRotateKey( spep_3 -3 + 75, 1, 0 );

-- ** 音 ** --
--トランクス飛んでくる
SE013 = playSe( spep_3 + 20, 1182 );

--トランクス飛んでくる
SE014 = playSe( spep_3 + 20, 1117 );
stopSe( spep_3 + 48, SE014, 38 );

--トランクス飛んでくる
SE015 = playSe( spep_3 + 20, 9 );
stopSe( spep_3 +72, SE015, 8 );

--腕前に
SE016 = playSe( spep_3 + 52, 1314 );
setSeVolumeByWorkId( spep_3 + 52, SE016, 67 );
stopSe( spep_3 +72 + 36, SE016, 48 );

--腕前に
SE017 = playSe( spep_3 + 52, 1278 );
stopSe( spep_3 +72 +56 + 2, SE017, 32 );

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 72 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 72;


------------------------------------------------------
-- 振りかぶり拳を突き出す(56F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_4 + 0, SP_05, 56, 0x100, -1, 0, 0, 0 );  --振りかぶり拳を突き出す ef_005
setEffMoveKey( spep_4 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_4 + 56, tame, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, tame, -1.0, 1.0 );
setEffScaleKey( spep_4 + 56, tame, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, tame, 0 );
setEffRotateKey( spep_4 + 56, tame, 0 );
setEffAlphaKey( spep_4 + 0, tame, 255 );
setEffAlphaKey( spep_4 + 56 -1, tame, 255 );
setEffAlphaKey( spep_4 + 56, tame, 0 );

-- ** 音 ** --
--振りかぶる
SE018 = playSe( spep_4 + 10, 1116 );
stopSe( spep_4 +38, SE018, 28 );

--振りかぶる
SE019 = playSe( spep_4 + 14, 1004 );

--パンチ
SE020 = playSe( spep_4 + 54, 1189 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 56;


------------------------------------------------------
-- 殴り抜ける動作から気弾を溜め突き出す(146F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
blow_f = entryEffectLife( spep_5 + 0, SP_06, 146, 0x100, -1, 0, 0, 0 );  --殴る動作とヒットエフェクトと文字 ef_006
setEffMoveKey( spep_5 + 0, blow_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, blow_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, blow_f, -1.0, 1.0 );
setEffScaleKey( spep_5 + 146, blow_f, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, blow_f, 0 );
setEffRotateKey( spep_5 + 146, blow_f, 0 );
setEffAlphaKey( spep_5 + 0, blow_f, 255 );
setEffAlphaKey( spep_5 + 146 -1, blow_f, 255 );
setEffAlphaKey( spep_5 + 146, blow_f, 0 );

blow_b = entryEffectLife( spep_5 + 0, SP_07, 146, 0x80, -1, 0, 0, 0 );  --殴り抜ける動作から気弾を溜め突き出す    ef_007
setEffMoveKey( spep_5 + 0, blow_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 146, blow_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, blow_b, -1.0, 1.0 );
setEffScaleKey( spep_5 + 146, blow_b, -1.0, 1.0 );
setEffRotateKey( spep_5 + 0, blow_b, 0 );
setEffRotateKey( spep_5 + 146, blow_b, 0 );
setEffAlphaKey( spep_5 + 0, blow_b, 255 );
setEffAlphaKey( spep_5 + 146 -1, blow_b, 255 );
setEffAlphaKey( spep_5 + 146, blow_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 0, 1, 1 );
setDisp( spep_5 -3 + 60, 1, 0 );
changeAnime( spep_5 + 0, 1, 104 );
changeAnime( spep_5 -3 + 18, 1, 106 );

b5 = 50;
setMoveKey( spep_5 + 0, 1, 6.2, -249.5 -b5 , 0 );
setMoveKey( spep_5 + 1, 1, 6.3, -249.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 6.3, -249.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 17, 1, -15.5, -286.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 18, 1, -85.1, -291.8 -b5 , 0 );
setMoveKey( spep_5 -3 + 20, 1, -94.8, -328.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 22, 1, -117.1, -275.2 -b5 , 0 );
setMoveKey( spep_5 -3 + 24, 1, -95.1, -331.7 -b5 , 0 );
setMoveKey( spep_5 -3 + 26, 1, -52.7, -292.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 28, 1, -70.8, -330 -b5 , 0 );
setMoveKey( spep_5 -3 + 30, 1, -101.9, -277.3 -b5 , 0 );
setMoveKey( spep_5 -3 + 32, 1, -80.8, -333.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 34, 1, -39.3, -294.5 -b5 , 0 );
setMoveKey( spep_5 -3 + 36, 1, -58.4, -331.7 -b5 , 0 );
setMoveKey( spep_5 -3 + 38, 1, -90.4, -278.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 40, 1, -70.3, -335.1 -b5 , 0 );
setMoveKey( spep_5 -3 + 42, 1, -29.8, -295.8 -b5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, -49.8, -332.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -82.8, -279.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -63.6, -336 -b5 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -24.1, -296.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -45.1, -333.6 -b5 , 0 );
setMoveKey( spep_5 -3 + 54, 1, -79, -280.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 56, 1, -60.8, -336.4 -b5 , 0 );
setMoveKey( spep_5 -3 + 58, 1, -22.1, -296.9 -b5 , 0 );
setMoveKey( spep_5 -3 + 60, 1, -22.1, -296.9 -b5 , 0 );

s2 = 0.8;
setScaleKey( spep_5 + 0, 1, 5.59 +s2, 5.59 +s2 );
setScaleKey( spep_5 -3 + 60, 1, 5.59 +s2, 5.59 +s2 );

setRotateKey( spep_5 + 0, 1, 0 );
setRotateKey( spep_5 -3 + 17, 1, 0 );
setRotateKey( spep_5 -3 + 18, 1, -33.8 );
setRotateKey( spep_5 -3 + 20, 1, -28.4 );
setRotateKey( spep_5 -3 + 22, 1, -23 );
setRotateKey( spep_5 -3 + 24, 1, -22.7 );
setRotateKey( spep_5 -3 + 26, 1, -22.5 );
setRotateKey( spep_5 -3 + 28, 1, -22.2 );
setRotateKey( spep_5 -3 + 30, 1, -22 );
setRotateKey( spep_5 -3 + 32, 1, -21.8 );
setRotateKey( spep_5 -3 + 34, 1, -21.6 );
setRotateKey( spep_5 -3 + 36, 1, -21.4 );
setRotateKey( spep_5 -3 + 38, 1, -21.3 );
setRotateKey( spep_5 -3 + 40, 1, -21.1 );
setRotateKey( spep_5 -3 + 42, 1, -21 );
setRotateKey( spep_5 -3 + 44, 1, -20.9 );
setRotateKey( spep_5 -3 + 46, 1, -20.8 );
setRotateKey( spep_5 -3 + 48, 1, -20.7 );
setRotateKey( spep_5 -3 + 50, 1, -20.6 );
setRotateKey( spep_5 -3 + 52, 1, -20.6 );
setRotateKey( spep_5 -3 + 54, 1, -20.5 );
setRotateKey( spep_5 -3 + 60, 1, -20.5 );

-- ** 音 ** --
--パンチ
SE021 = playSe( spep_5 + 2, 1009 );

--パンチ
SE022 = playSe( spep_5 + 2, 1000 );

--パンチ
SE023 = playSe( spep_5 + 4, 1110 );

--気弾ため
SE024 = playSe( spep_5 + 54, 1275,"",0.6 );
setPitch( spep_5 + 54, SE024, 900 );
setTimeStretch( SE024, 1.6, 10, 1 );

--気弾ため
SE025 = playSe( spep_5 + 54, 1265,"",0.6 );
stopSe( spep_5 +146 + 70, SE025, 14 );

--気弾ため
SE026 = playSe( spep_5 + 54, 1037,"",0.6 );
stopSe( spep_5 +146 + 72, SE026, 10 );

--気弾ため
SE027 = playSe( spep_5 + 54, 1296,"",0.6 );
setSeVolumeByWorkId( spep_5 + 54, SE027, 79 );
stopSe( spep_5 +134 + 8, SE027, 12 );
setPitch( spep_5 + 54, SE027, -50 );
setTimeStretch( SE027, 0.97, 10, 1 );

--気弾押し付ける
SE028 = playSe( spep_5 + 144, 1296 );
setSeVolumeByWorkId( spep_5 + 144, SE028, 79 );
stopSe( spep_5 +146 +116 + 48, SE028, 10 );
setPitch( spep_5 + 144, SE028, 300 );
setTimeStretch( SE028, 1.2, 10, 1 );

--気弾押し付ける
SE029 = playSe( spep_5 + 144, 1312 );
stopSe( spep_5 +146 + 76, SE029, 10 );

--気弾押し付ける
SE030 = playSe( spep_5 + 144, 1017 );

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 146 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 146;


------------------------------------------------------
-- 気弾を押し込む(116F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
kidan_f = entryEffectLife( spep_6 + 0, SP_08, 116, 0x100, -1, 0, 0, 0 );  --気弾を押し込む ef_008
setEffMoveKey( spep_6 + 0, kidan_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, kidan_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_f, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, kidan_f, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_f, 0 );
setEffRotateKey( spep_6 + 116, kidan_f, 0 );
setEffAlphaKey( spep_6 + 0, kidan_f, 255 );
setEffAlphaKey( spep_6 + 116 -1, kidan_f, 255 );
setEffAlphaKey( spep_6 + 116, kidan_f, 0 );

kidan_b = entryEffectLife( spep_6 + 0, SP_09, 116, 0x80, -1, 0, 0, 0 );  --背景   ef_009
setEffMoveKey( spep_6 + 0, kidan_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 116, kidan_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, kidan_b, -1.0, 1.0 );
setEffScaleKey( spep_6 + 116, kidan_b, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, kidan_b, 0 );
setEffRotateKey( spep_6 + 116, kidan_b, 0 );
setEffAlphaKey( spep_6 + 0, kidan_b, 255 );
setEffAlphaKey( spep_6 + 116 -1, kidan_b, 255 );
setEffAlphaKey( spep_6 + 116, kidan_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 -3 + 119, 1, 0 );
changeAnime( spep_6 + 0, 1, 6 );
changeAnime( spep_6 -3 + 6, 1, 8 );

b6 = 30;
setMoveKey( spep_6 + 0, 1, 86.7 -60, -115.2 -60 , 0 );
setMoveKey( spep_6 + 1, 1, 84.8 -60, -157.9 -60 , 0 );
setMoveKey( spep_6 + 2, 1, 84.8 -60, -157.9 -60 , 0 );
--setMoveKey( spep_6 -3 + 5, 1, -80.9, -168.7 , 0 );
setMoveKey( spep_6 -3 + 6, 1, -114.6, -97.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 8, 1, -99.5, -132.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 10, 1, -97.5, -164.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 12, 1, -75.2, -186.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 14, 1, -107.7, -178.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 16, 1, -94.7, -187.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 18, 1, -94.6, -194 -b6 , 0 );
setMoveKey( spep_6 -3 + 20, 1, -74.2, -190.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 22, 1, -106.7, -183.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 24, 1, -93.7, -192.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 26, 1, -93.6, -198.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 28, 1, -73.2, -194.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 30, 1, -105.7, -187.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 32, 1, -92.7, -196.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, -92.6, -202.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 36, 1, -72.2, -199 -b6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, -104.7, -191.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, -91.8, -200.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, -91.7, -205.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 44, 1, -71.4, -201.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, -103.9, -193.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 48, 1, -87.1, -194.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 50, 1, -86.9, -194.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 52, 1, -86.7, -194.5 -b6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, -86.5, -194.7 -b6 , 0 );
setMoveKey( spep_6 -3 + 56, 1, -86.3, -194.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 58, 1, -86.1, -195.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 60, 1, -77.2, -202.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 62, 1, -82.8, -193.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 64, 1, -73.9, -204.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 66, 1, -85.3, -204.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 68, 1, -76.5, -203 -b6 , 0 );
setMoveKey( spep_6 -3 + 70, 1, -82.1, -194.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 72, 1, -73.2, -204.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 74, 1, -84.6, -204.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 76, 1, -75.7, -203.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 78, 1, -81.3, -194.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 80, 1, -72.4, -205 -b6 , 0 );
setMoveKey( spep_6 -3 + 82, 1, -83.9, -205.1 -b6 , 0 );
setMoveKey( spep_6 -3 + 84, 1, -75, -203.6 -b6 , 0 );
setMoveKey( spep_6 -3 + 86, 1, -80.6, -195 -b6 , 0 );
setMoveKey( spep_6 -3 + 88, 1, -71.7, -205.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 90, 1, -83.2, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 92, 1, -74.3, -203.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 94, 1, -79.9, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 96, 1, -70.9, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 98, 1, -82.4, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 100, 1, -73.5, -204 -b6 , 0 );
setMoveKey( spep_6 -3 + 102, 1, -79.2, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 104, 1, -70.3, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 106, 1, -81.7, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 108, 1, -72.8, -203.9 -b6 , 0 );
setMoveKey( spep_6 -3 + 110, 1, -78.5, -195.2 -b6 , 0 );
setMoveKey( spep_6 -3 + 112, 1, -69.6, -205.4 -b6 , 0 );
setMoveKey( spep_6 -3 + 114, 1, -81, -205.3 -b6 , 0 );
setMoveKey( spep_6 -3 + 116, 1, -72.2, -203.8 -b6 , 0 );
setMoveKey( spep_6 -3 + 118, 1, -77.8, -195 -b6 , 0 );
--setMoveKey( spep_6 -3 + 119, 1, 77.8, -195 , 0 );

s3 = 0.7;
setScaleKey( spep_6 + 0, 1, 7.68 +s3, 7.68 +s3 );
setScaleKey( spep_6 + 1, 1, 5.67 +s3, 5.67 +s3 );
setScaleKey( spep_6 -3 + 5, 1, 5.67 +s3, 5.67 +s3 );
setScaleKey( spep_6 -3 + 6, 1, 3.86 +s3, 3.86 +s3 );
setScaleKey( spep_6 -3 + 8, 1, 3.37 +s3, 3.37 +s3 );
setScaleKey( spep_6 -3 + 10, 1, 2.89 +s3, 2.89 +s3 );
setScaleKey( spep_6 -3 + 12, 1, 2.41 +s3, 2.41 +s3 );
setScaleKey( spep_6 -3 + 14, 1, 2.38 +s3, 2.38 +s3 );
setScaleKey( spep_6 -3 + 16, 1, 2.35 +s3, 2.35 +s3 );
setScaleKey( spep_6 -3 + 18, 1, 2.33 +s3, 2.33 +s3 );
setScaleKey( spep_6 -3 + 20, 1, 2.3 +s3, 2.3 +s3 );
setScaleKey( spep_6 -3 + 22, 1, 2.27 +s3, 2.27 +s3 );
setScaleKey( spep_6 -3 + 24, 1, 2.24 +s3, 2.24 +s3 );
setScaleKey( spep_6 -3 + 26, 1, 2.21 +s3, 2.21 +s3 );
setScaleKey( spep_6 -3 + 28, 1, 2.18 +s3, 2.18 +s3 );
setScaleKey( spep_6 -3 + 30, 1, 2.15 +s3, 2.15 +s3 );
setScaleKey( spep_6 -3 + 32, 1, 2.13 +s3, 2.13 +s3 );
setScaleKey( spep_6 -3 + 34, 1, 2.1 +s3, 2.1 +s3 );
setScaleKey( spep_6 -3 + 36, 1, 2.07 +s3, 2.07 +s3 );
setScaleKey( spep_6 -3 + 38, 1, 2.04 +s3, 2.04 +s3 );
setScaleKey( spep_6 -3 + 40, 1, 2.02 +s3, 2.02 +s3 );
setScaleKey( spep_6 -3 + 42, 1, 2 +s3, 2 +s3 );
setScaleKey( spep_6 -3 + 44, 1, 1.99 +s3, 1.99 +s3 );
setScaleKey( spep_6 -3 + 46, 1, 1.98 +s3, 1.98 +s3 );
setScaleKey( spep_6 -3 + 48, 1, 1.97 +s3, 1.97 +s3 );
setScaleKey( spep_6 -3 + 50, 1, 1.96 +s3, 1.96 +s3 );
setScaleKey( spep_6 -3 + 52, 1, 1.95 +s3, 1.95 +s3 );
setScaleKey( spep_6 -3 + 54, 1, 1.94 +s3, 1.94 +s3 );
setScaleKey( spep_6 -3 + 56, 1, 1.93 +s3, 1.93 +s3 );
setScaleKey( spep_6 -3 + 58, 1, 1.92 +s3, 1.92 +s3 );
setScaleKey( spep_6 -3 + 60, 1, 1.91 +s3, 1.91 +s3 );
setScaleKey( spep_6 -3 + 62, 1, 1.9 +s3, 1.9 +s3 );
setScaleKey( spep_6 -3 + 64, 1, 1.89 +s3, 1.89 +s3 );
setScaleKey( spep_6 -3 + 66, 1, 1.88 +s3, 1.88 +s3 );
setScaleKey( spep_6 -3 + 68, 1, 1.87 +s3, 1.87 +s3 );
setScaleKey( spep_6 -3 + 70, 1, 1.86 +s3, 1.86 +s3 );
setScaleKey( spep_6 -3 + 72, 1, 1.85 +s3, 1.85 +s3 );
setScaleKey( spep_6 -3 + 74, 1, 1.84 +s3, 1.84 +s3 );
setScaleKey( spep_6 -3 + 76, 1, 1.83 +s3, 1.83 +s3 );
setScaleKey( spep_6 -3 + 78, 1, 1.83 +s3, 1.83 +s3 );
setScaleKey( spep_6 -3 + 80, 1, 1.82 +s3, 1.82 +s3 );
setScaleKey( spep_6 -3 + 82, 1, 1.81 +s3, 1.81 +s3 );
setScaleKey( spep_6 -3 + 84, 1, 1.8 +s3, 1.8 +s3 );
setScaleKey( spep_6 -3 + 86, 1, 1.79 +s3, 1.79 +s3 );
setScaleKey( spep_6 -3 + 88, 1, 1.78 +s3, 1.78 +s3 );
setScaleKey( spep_6 -3 + 90, 1, 1.77 +s3, 1.77 +s3 );
setScaleKey( spep_6 -3 + 92, 1, 1.76 +s3, 1.76 +s3 );
setScaleKey( spep_6 -3 + 94, 1, 1.75 +s3, 1.75 +s3 );
setScaleKey( spep_6 -3 + 96, 1, 1.74 +s3, 1.74 +s3 );
setScaleKey( spep_6 -3 + 98, 1, 1.74 +s3, 1.74 +s3 );
setScaleKey( spep_6 -3 + 100, 1, 1.73 +s3, 1.73 +s3 );
setScaleKey( spep_6 -3 + 102, 1, 1.72 +s3, 1.72 +s3 );
setScaleKey( spep_6 -3 + 104, 1, 1.71 +s3, 1.71 +s3 );
setScaleKey( spep_6 -3 + 106, 1, 1.7 +s3, 1.7 +s3 );
setScaleKey( spep_6 -3 + 108, 1, 1.69 +s3, 1.69 +s3 );
setScaleKey( spep_6 -3 + 110, 1, 1.68 +s3, 1.68 +s3 );
setScaleKey( spep_6 -3 + 112, 1, 1.68 +s3, 1.68 +s3 );
setScaleKey( spep_6 -3 + 114, 1, 1.67 +s3, 1.67 +s3 );
setScaleKey( spep_6 -3 + 116, 1, 1.66 +s3, 1.66 +s3 );
setScaleKey( spep_6 -3 + 118, 1, 1.65 +s3, 1.65 +s3 );
--setScaleKey( spep_6 -3 + 119, 1, 1.65, 1.65 );

setRotateKey( spep_6 + 0, 1, 33.8 );
setRotateKey( spep_6 + 1, 1, 29 );
setRotateKey( spep_6 + 2, 1, 29 );
--setRotateKey( spep_6 -3 + 5, 1, -24.3 );
setRotateKey( spep_6 -3 + 6, 1, -28.6 );
setRotateKey( spep_6 -3 + 8, 1, -30.1 );
setRotateKey( spep_6 -3 + 10, 1, -31.7 );
setRotateKey( spep_6 -3 + 12, 1, -33.2 );
setRotateKey( spep_6 -3 + 14, 1, -33.3 );
setRotateKey( spep_6 -3 + 16, 1, -33.3 );
setRotateKey( spep_6 -3 + 18, 1, -33.4 );
setRotateKey( spep_6 -3 + 20, 1, -33.5 );
setRotateKey( spep_6 -3 + 22, 1, -33.6 );
setRotateKey( spep_6 -3 + 24, 1, -33.6 );
setRotateKey( spep_6 -3 + 26, 1, -33.7 );
setRotateKey( spep_6 -3 + 28, 1, -33.8 );
setRotateKey( spep_6 -3 + 30, 1, -33.8 );
setRotateKey( spep_6 -3 + 32, 1, -33.9 );
setRotateKey( spep_6 -3 + 34, 1, -34 );
setRotateKey( spep_6 -3 + 36, 1, -34 );
setRotateKey( spep_6 -3 + 38, 1, -34.1 );
setRotateKey( spep_6 -3 + 40, 1, -34.2 );
setRotateKey( spep_6 -3 + 42, 1, -34.4 );
setRotateKey( spep_6 -3 + 44, 1, -34.7 );
setRotateKey( spep_6 -3 + 46, 1, -34.9 );
setRotateKey( spep_6 -3 + 48, 1, -35.2 );
setRotateKey( spep_6 -3 + 50, 1, -35.4 );
setRotateKey( spep_6 -3 + 52, 1, -35.7 );
setRotateKey( spep_6 -3 + 54, 1, -35.9 );
setRotateKey( spep_6 -3 + 56, 1, -36.1 );
setRotateKey( spep_6 -3 + 58, 1, -36.3 );
setRotateKey( spep_6 -3 + 60, 1, -36.5 );
setRotateKey( spep_6 -3 + 62, 1, -36.8 );
setRotateKey( spep_6 -3 + 64, 1, -37 );
setRotateKey( spep_6 -3 + 66, 1, -37.2 );
setRotateKey( spep_6 -3 + 68, 1, -37.4 );
setRotateKey( spep_6 -3 + 70, 1, -37.6 );
setRotateKey( spep_6 -3 + 72, 1, -37.8 );
setRotateKey( spep_6 -3 + 74, 1, -37.9 );
setRotateKey( spep_6 -3 + 76, 1, -38.1 );
setRotateKey( spep_6 -3 + 78, 1, -38.3 );
setRotateKey( spep_6 -3 + 80, 1, -38.5 );
setRotateKey( spep_6 -3 + 82, 1, -38.6 );
setRotateKey( spep_6 -3 + 84, 1, -38.8 );
setRotateKey( spep_6 -3 + 86, 1, -39 );
setRotateKey( spep_6 -3 + 88, 1, -39.1 );
setRotateKey( spep_6 -3 + 90, 1, -39.3 );
setRotateKey( spep_6 -3 + 92, 1, -39.4 );
setRotateKey( spep_6 -3 + 94, 1, -39.6 );
setRotateKey( spep_6 -3 + 96, 1, -39.7 );
setRotateKey( spep_6 -3 + 98, 1, -39.8 );
setRotateKey( spep_6 -3 + 100, 1, -40 );
setRotateKey( spep_6 -3 + 102, 1, -40.1 );
setRotateKey( spep_6 -3 + 104, 1, -40.2 );
setRotateKey( spep_6 -3 + 106, 1, -40.3 );
setRotateKey( spep_6 -3 + 108, 1, -40.4 );
setRotateKey( spep_6 -3 + 110, 1, -40.5 );
setRotateKey( spep_6 -3 + 112, 1, -40.6 );
setRotateKey( spep_6 -3 + 114, 1, -40.7 );
setRotateKey( spep_6 -3 + 116, 1, -40.8 );
setRotateKey( spep_6 -3 + 118, 1, -40.9 );
--setRotateKey( spep_6 -3 + 119, 1, 40.9 );

-- ** 音 ** --
--降下
SE031 = playSe( spep_6 + 28, 1314 );
setSeVolumeByWorkId( spep_6 + 28, SE031, 123 );
stopSe( spep_6 +116 + 44, SE031, 10 );

--降下
SE032 = playSe( spep_6 + 38, 1311 );
setSeVolumeByWorkId( spep_6 + 38, SE032, 129 );
setTimeStretch( SE032, 1.43, 10, 1 );

--画面切り替わって加速
SE033 = playSe( spep_6 + 100, 1258 );
setSeVolumeByWorkId( spep_6 + 100, SE033, 84 );
stopSe( spep_6 +116 + 44, SE033, 10 );
setPitch( spep_6 + 100, SE033, -400 );
setTimeStretch( SE033, 0.73, 10, 1 );

--画面切り替わって加速
SE034 = playSe( spep_6 + 104, 1183 );
stopSe( spep_6 +116 + 44, SE034, 10 );

--画面切り替わって加速
SE035 = playSe( spep_6 + 104, 9 );
setSeVolumeByWorkId( spep_6 + 104, SE035, 86 );

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 116;


------------------------------------------------------
-- フィニッシュ(176F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --気弾を押し込む〜爆発  ef_010
setEffMoveKey( spep_7 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_f, -1.0, 1.0 );
setEffScaleKey( spep_7 + 196, finish_f, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 196, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 196, finish_f, 255 );

finish_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --背景   ef_011
setEffMoveKey( spep_7 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 196, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, finish_b, -1.0, 1.0 );
setEffScaleKey( spep_7 + 196, finish_b, -1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 196, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 196, finish_b, 255 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 66, 1, 0 );
changeAnime( spep_7 + 0, 1, 8 );

a7 = 20;
setMoveKey( spep_7 + 0, 1, -9.2 +a7, 260.9 , 0 );
setMoveKey( spep_7 + 1, 1, -9.1 +a7, 260.6 , 0 );
setMoveKey( spep_7 + 2, 1, -9.1 +a7, 262.2 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -9 +a7, 265.6 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -8.9 +a7, 270.9 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -8.9 +a7, 278.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -8.8 +a7, 287.2 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -8.8 +a7, 298.1 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -8.7 +a7, 310.9 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -8.7 +a7, 325.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -8.6 +a7, 342.2 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -8.5 +a7, 360.6 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -8.5 +a7, 380.9 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -8.4 +a7, 378.1 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -8.4 +a7, 372.8 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -8.3 +a7, 364.8 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -8.3 +a7, 354.3 , 0 );
setMoveKey( spep_7 -3 + 34, 1, -8.2 +a7, 341.1 , 0 );
setMoveKey( spep_7 -3 + 36, 1, -8.1 +a7, 325.4 , 0 );
setMoveKey( spep_7 -3 + 38, 1, -8.1 +a7, 307.1 , 0 );
setMoveKey( spep_7 -3 + 40, 1, -8 +a7, 286.2 , 0 );
setMoveKey( spep_7 -3 + 42, 1, -8 +a7, 262.8 , 0 );
setMoveKey( spep_7 -3 + 44, 1, -7.9 +a7, 101.1 , 0 );
setMoveKey( spep_7 -3 + 46, 1, -7.8 +a7, -60.2 , 0 );
setMoveKey( spep_7 -3 + 48, 1, -7.8 +a7, -38.5 , 0 );
setMoveKey( spep_7 -3 + 50, 1, -7.7 +a7, -16.8 , 0 );
setMoveKey( spep_7 -3 + 52, 1, 9.6 +a7, -40 , 0 );
setMoveKey( spep_7 -3 + 54, 1, -2.7 +a7, -29.4 , 0 );
setMoveKey( spep_7 -3 + 56, 1, -19.7 +a7, -24.4 , 0 );
setMoveKey( spep_7 -3 + 58, 1, -1.8 +a7, -18.6 , 0 );
setMoveKey( spep_7 -3 + 60, 1, 7.1 +a7, -39.2 , 0 );
setMoveKey( spep_7 -3 + 62, 1, -5.2 +a7, -30.4 , 0 );
setMoveKey( spep_7 -3 + 64, 1, -22.3 +a7, -27.3 , 0 );
setMoveKey( spep_7 -3 + 66, 1, -4.4 +a7, -23.5 , 0 );

s4 = 0.15;
setScaleKey( spep_7 + 0, 1, 1.31 +s4, 1.31 +s4 );
setScaleKey( spep_7 + 1, 1, 1.31 +s4, 1.31 +s4 );
setScaleKey( spep_7 + 2, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 22, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 24, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 40, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 42, 1, 1.28 +s4, 1.28 +s4 );
setScaleKey( spep_7 -3 + 50, 1, 1.28 +s4, 1.28 +s4 );
setScaleKey( spep_7 -3 + 52, 1, 1.29 +s4, 1.29 +s4 );
setScaleKey( spep_7 -3 + 54, 1, 1.3 +s4, 1.3 +s4 );
setScaleKey( spep_7 -3 + 56, 1, 1.32 +s4, 1.32 +s4 );
setScaleKey( spep_7 -3 + 58, 1, 1.33 +s4, 1.33 +s4 );
setScaleKey( spep_7 -3 + 60, 1, 1.34 +s4, 1.34 +s4 );
setScaleKey( spep_7 -3 + 62, 1, 1.35 +s4, 1.35 +s4 );
setScaleKey( spep_7 -3 + 64, 1, 1.36 +s4, 1.36 +s4 );
setScaleKey( spep_7 -3 + 66, 1, 1.38 +s4, 1.38 +s4 );

setRotateKey( spep_7 + 0, 1, -78.7 );
setRotateKey( spep_7 -3 + 66, 1, -78.7 );

-- ** 音 ** --
--地面爆発
SE036 = playSe( spep_7 + 44, 1067 );

--地面爆発
SE037 = playSe( spep_7 + 44, 1159 );

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 176 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** ダメージ表示 ** --
dealDamage( spep_7 + 48 );
endPhase( spep_7 + 186 );

end