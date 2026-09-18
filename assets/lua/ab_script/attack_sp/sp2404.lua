--1024000:UR_ピッコロ_魔空包囲弾
--sp_effect_a2_00214
--sp2404

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
SP_01 = 161841; --開始〜下から出る気弾 ef_001
SP_02 = 161843; --開始〜下から出る気弾 ef_001b
SP_03 = 161844; --気弾操作するピッコロ〜フィニッシュ ef_002
SP_04 = 161846; --気弾操作するピッコロ〜フィニッシュ ef_002b

--敵側
SP_01r = 161842; --開始〜下から出る気弾 ef_001r
SP_03r = 161845; --気弾操作するピッコロ〜フィニッシュ ef_002r

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- 開始〜下から出る気弾(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); --開始〜下から出る気弾 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 255 );

first_f_bg = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --開始〜下から出る気弾 ef_001b
setEffMoveKey( spep_0 + 0, first_f_bg, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f_bg, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f_bg, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f_bg, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f_bg, 0 );
setEffRotateKey( spep_0 + 218, first_f_bg, 0 );
setEffAlphaKey( spep_0 + 0, first_f_bg, 255 );
setEffAlphaKey( spep_0 + 218, first_f_bg, 255 );

spep_x = spep_0 + 14;
 
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
 
--顔カットイン
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 159, 1, 1 );

changeAnime( spep_0 + 159, 1, 101 );

setMoveKey( spep_0 + 159, 1, 0.6, 239 , 0 );
setMoveKey( spep_0 + 176, 1, 0.6, 239 , 0 );
setMoveKey( spep_0 + 178, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 180, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 182, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 184, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 186, 1, 3.6, 236 , 0 );

setScaleKey( spep_0 + 159, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 186, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 159, 1, 0 );
setRotateKey( spep_0 + 186, 1, 0 );

-- ** 音 ** --
--冒頭溜め
SE001 = playSeVer2( spep_0 + 0, 49, "", 0, 0, 0, -1); 
SE002 = playSeVer2( spep_0 + 0, 1037, "",spep_0 + 114, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 0, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 83 );

--冒頭溜め
SE005 = playSeVer2( spep_0 + 34, 49, "", 0, 0, 0, -1); 
SE006 = playSeVer2( spep_0 + 68, 49, "", 0, 0, 0, -1); 

--気弾投げる
SE007 = playSeVer2( spep_0 + 99, 1406, "",spep_0 + 186, 0, 20, 0.6); 
SE008 = playSeVer2( spep_0 + 99, 1021, "", 0, 0, 0, -1); 

--気弾浮き上がる
SE009 = playSeVer2( spep_0 + 158, 1202, "",spep_0 + 234, 0, 8, 0.6); 
SE010 = playSeVer2( spep_0 + 158, 1119, "",spep_0 + 220, 0, 20, 0.6); 
SE011 = playSeVer2( spep_0 + 158, 1257, "", 0, 0, 0, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218 + 2, 0, 0, 0, 0, 210 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 186 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 3.6, 236 , 0 );
    setMoveKey( SP_dodge + 2, 1, 5, 237.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 2.3, 234.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 5, 234.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 3.6, 236 , 0 );
    setMoveKey( SP_dodge + 10, 1, 5, 237.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.75, 0.75 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

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
setDisp( spep_0 + 218, 1, 0 );

setMoveKey( spep_0 + 188, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 190, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 192, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 194, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 196, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 198, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 200, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 202, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 204, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 206, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 208, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 210, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 212, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 214, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 216, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 218, 1, 2.3, 234.7 , 0 );

setScaleKey( spep_0 + 188, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 218, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 188, 1, 0 );
setRotateKey( spep_0 + 218, 1, 0 );

-- ** 音 ** --

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--気弾操作するピッコロ〜フィニッシュ (308F)
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0 ); --気弾操作するピッコロ〜フィニッシュ ef_002
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 308, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 308, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 308, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 308, finish, 255 );

finish_bg = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --気弾操作するピッコロ〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, finish_bg, 0, 0 , 0 );
setEffMoveKey( spep_2 + 308, finish_bg, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 308, finish_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_bg, 0 );
setEffRotateKey( spep_2 + 308, finish_bg, 0 );
setEffAlphaKey( spep_2 + 0, finish_bg, 255 );
setEffAlphaKey( spep_2 + 308, finish_bg, 255 );

-- ** 敵キャラクター ** --

setDisp( spep_2 + 60, 1, 1 );
setDisp( spep_2 + 148, 1, 0 );

changeAnime( spep_2 + 60, 1, 104 );

setMoveKey( spep_2 + 60, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 62, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 64, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 66, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 68, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 70, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 72, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 74, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 76, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 78, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 80, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 82, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 84, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 86, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 88, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 90, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 92, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 94, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 96, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 98, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 100, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 102, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 104, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 106, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 108, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 110, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 112, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 114, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 116, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 118, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 120, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 122, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 124, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 126, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 128, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 130, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 132, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 134, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 136, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 138, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 140, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 142, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 144, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 146, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 148, 1, -6.7, -16 , 0 );

setScaleKey( spep_2 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 148, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 60, 1, 0 );
setRotateKey( spep_2 + 148, 1, 0 );

-- ** 音 ** --
--背景音
SE013 = playSeVer2( spep_2 + 0 -4, 1399, "",spep_2 + 90, 0, 28, 0.6);
SE014 = playSeVer2( spep_2 + 0, 1241, "",spep_2 + 92, 0, 30, 0.6);
setSeVolumeByWorkId( spep_2 + 0, SE014, 146 );

--腕上げる
SE015 = playSeVer2( spep_2 + 18, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 18, 1007, "", 0, 0, 0, -1);

--気弾敵に向かっていく
SE017 = playSeVer2( spep_2 + 60, 1121, "", 0, 10, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 60, SE017, 65 );
setStartTimeMs( SE017,  683 );
SE018 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE018, 75 );
SE019 = playSeVer2( spep_2 + 62, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE019, 80 );

--爆発
SE020 = playSeVer2( spep_2 + 130, 1023, "", 0, 0, 0, -1);

--ラスト爆発
SE021 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 308 + 2, 0, 0, 0, 0, 210 ); --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 160 ); -- ダメージ表示フレーム
endPhase( spep_2 + 308 - 4); -- 終了フレーム

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 開始〜下から出る気弾(218F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0 ); --開始〜下から出る気弾 ef_001r
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 218, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 218, first_f, 255 );

first_f_bg = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); --開始〜下から出る気弾 ef_001b
setEffMoveKey( spep_0 + 0, first_f_bg, 0, 0 , 0 );
setEffMoveKey( spep_0 + 218, first_f_bg, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f_bg, 1.0, 1.0 );
setEffScaleKey( spep_0 + 218, first_f_bg, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f_bg, 0 );
setEffRotateKey( spep_0 + 218, first_f_bg, 0 );
setEffAlphaKey( spep_0 + 0, first_f_bg, 255 );
setEffAlphaKey( spep_0 + 218, first_f_bg, 255 );

spep_x = spep_0 + 14;

--[[
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
 
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え
--]]

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
SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
setDisp( spep_0 + 159, 1, 1 );

changeAnime( spep_0 + 159, 1, 101 );

setMoveKey( spep_0 + 159, 1, 0.6, 239 , 0 );
setMoveKey( spep_0 + 176, 1, 0.6, 239 , 0 );
setMoveKey( spep_0 + 178, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 180, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 182, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 184, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 186, 1, 3.6, 236 , 0 );

setScaleKey( spep_0 + 159, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 186, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 159, 1, 0 );
setRotateKey( spep_0 + 186, 1, 0 );

-- ** 音 ** --
--冒頭溜め
SE001 = playSeVer2( spep_0 + 0, 49, "", 0, 0, 0, -1); 
SE002 = playSeVer2( spep_0 + 0, 1037, "",spep_0 + 114, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 0, SE002, 79 );
SE003 = playSeVer2( spep_0 + 0, 1122, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 83 );

--冒頭溜め
SE005 = playSeVer2( spep_0 + 34, 49, "", 0, 0, 0, -1); 
SE006 = playSeVer2( spep_0 + 68, 49, "", 0, 0, 0, -1); 

--気弾投げる
SE007 = playSeVer2( spep_0 + 99, 1406, "",spep_0 + 186, 0, 20, 0.6); 
SE008 = playSeVer2( spep_0 + 99, 1021, "", 0, 0, 0, -1); 

--気弾浮き上がる
SE009 = playSeVer2( spep_0 + 158, 1202, "",spep_0 + 234, 0, 8, 0.6); 
SE010 = playSeVer2( spep_0 + 158, 1119, "",spep_0 + 220, 0, 20, 0.6); 
SE011 = playSeVer2( spep_0 + 158, 1257, "", 0, 0, 0, -1); 

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 218 + 2, 0, 0, 0, 0, 210 );  --黒　背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 186 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE007, 0);
    stopSe( SP_dodge - 12, SE008, 0);
    stopSe( SP_dodge - 12, SE009, 0);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);

    pauseAll( SP_dodge, 67);

    -- ** 敵キャラクター ** --
    setMoveKey( SP_dodge + 0, 1, 3.6, 236 , 0 );
    setMoveKey( SP_dodge + 2, 1, 5, 237.4 , 0 );
    setMoveKey( SP_dodge + 4, 1, 2.3, 234.7 , 0 );
    setMoveKey( SP_dodge + 6, 1, 5, 234.7 , 0 );
    setMoveKey( SP_dodge + 8, 1, 3.6, 236 , 0 );
    setMoveKey( SP_dodge + 10, 1, 5, 237.4 , 0 );

    setScaleKey( SP_dodge + 0, 1, 0.75, 0.75 );
    setScaleKey( SP_dodge + 10, 1, 0.75, 0.75 );

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
setDisp( spep_0 + 218, 1, 0 );

setMoveKey( spep_0 + 188, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 190, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 192, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 194, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 196, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 198, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 200, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 202, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 204, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 206, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 208, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 210, 1, 3.6, 236 , 0 );
setMoveKey( spep_0 + 212, 1, 5, 237.4 , 0 );
setMoveKey( spep_0 + 214, 1, 2.3, 234.7 , 0 );
setMoveKey( spep_0 + 216, 1, 5, 234.7 , 0 );
setMoveKey( spep_0 + 218, 1, 2.3, 234.7 , 0 );

setScaleKey( spep_0 + 188, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 218, 1, 0.75, 0.75 );

setRotateKey( spep_0 + 188, 1, 0 );
setRotateKey( spep_0 + 218, 1, 0 );

-- ** 音 ** --

-- ** 次の準備 ** --
spep_1 = spep_0 + 218;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_2 = spep_1 + 94;

--------------------------------------
--気弾操作するピッコロ〜フィニッシュ (308F)
--------------------------------------
-- ** エフェクト等 ** --
finish = entryEffect( spep_2 + 0, SP_03r, 0x100, -1, 0, 0, 0 ); --気弾操作するピッコロ〜フィニッシュ ef_002r
setEffMoveKey( spep_2 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_2 + 308, finish, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_2 + 308, finish, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish, 0 );
setEffRotateKey( spep_2 + 308, finish, 0 );
setEffAlphaKey( spep_2 + 0, finish, 255 );
setEffAlphaKey( spep_2 + 308, finish, 255 );

finish_bg = entryEffect( spep_2 + 0, SP_04, 0x80, -1, 0, 0, 0 ); --気弾操作するピッコロ〜フィニッシュ ef_002b
setEffMoveKey( spep_2 + 0, finish_bg, 0, 0 , 0 );
setEffMoveKey( spep_2 + 308, finish_bg, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, finish_bg, 1.0, 1.0 );
setEffScaleKey( spep_2 + 308, finish_bg, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, finish_bg, 0 );
setEffRotateKey( spep_2 + 308, finish_bg, 0 );
setEffAlphaKey( spep_2 + 0, finish_bg, 255 );
setEffAlphaKey( spep_2 + 308, finish_bg, 255 );

-- ** 敵キャラクター ** --

setDisp( spep_2 + 60, 1, 1 );
setDisp( spep_2 + 148, 1, 0 );

changeAnime( spep_2 + 60, 1, 104 );

setMoveKey( spep_2 + 60, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 62, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 64, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 66, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 68, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 70, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 72, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 74, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 76, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 78, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 80, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 82, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 84, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 86, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 88, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 90, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 92, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 94, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 96, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 98, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 100, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 102, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 104, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 106, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 108, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 110, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 112, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 114, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 116, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 118, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 120, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 122, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 124, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 126, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 128, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 130, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 132, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 134, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 136, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 138, 1, -6.7, -16 , 0 );
setMoveKey( spep_2 + 140, 1, -3.9, -13.1 , 0 );
setMoveKey( spep_2 + 142, 1, -9.5, -18.8 , 0 );
setMoveKey( spep_2 + 144, 1, -3.9, -18.8 , 0 );
setMoveKey( spep_2 + 146, 1, -9.5, -13.2 , 0 );
setMoveKey( spep_2 + 148, 1, -6.7, -16 , 0 );

setScaleKey( spep_2 + 60, 1, 1.46, 1.46 );
setScaleKey( spep_2 + 148, 1, 1.46, 1.46 );

setRotateKey( spep_2 + 60, 1, 0 );
setRotateKey( spep_2 + 148, 1, 0 );

-- ** 音 ** --
--背景音
SE013 = playSeVer2( spep_2 + 0 -4, 1399, "",spep_2 + 90, 0, 28, 0.6);
SE014 = playSeVer2( spep_2 + 0, 1241, "",spep_2 + 92, 0, 30, 0.6);
setSeVolumeByWorkId( spep_2 + 0, SE014, 146 );

--腕上げる
SE015 = playSeVer2( spep_2 + 18, 1003, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 18, 1007, "", 0, 0, 0, -1);

--気弾敵に向かっていく
SE017 = playSeVer2( spep_2 + 60, 1121, "", 0, 10, 0, 0.5);
setSeVolumeByWorkId( spep_2 + 60, SE017, 65 );
setStartTimeMs( SE017,  683 );
SE018 = playSeVer2( spep_2 + 62, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE018, 75 );
SE019 = playSeVer2( spep_2 + 62, 1021, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE019, 80 );

--爆発
SE020 = playSeVer2( spep_2 + 130, 1023, "", 0, 0, 0, -1);

--ラスト爆発
SE021 = playSeVer2( spep_2 + 160, 1024, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 160, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 308 + 2, 0, 0, 0, 0, 210 ); --黒　背景

-- -- ** ダメージ表示 ** --
dealDamage( spep_2 + 160 ); -- ダメージ表示フレーム
endPhase( spep_2 + 308 - 4); -- 終了フレーム

end