--1023460:超サイヤ人2孫悟空_メテオブラスト
--sp_effect_a1_00337
--sp2319

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
SP_01 = 158818; --気合を入れる悟空 ef_001
SP_02 = 158819; --瞬間移動で消える ef_002
SP_03 = 158820; --空に悟空が現れる→敵に膝蹴り 手前 ef_003
SP_04 = 158821; --空に悟空が現れる→敵に膝蹴り 奥 ef_003_b
SP_05 = 158822; --瞬間移動で消える ef_004
SP_06 = 158823; --敵の目の前に現れ回し蹴り 手前 ef_005
SP_07 = 158825; --敵の目の前に現れ回し蹴り 奥 ef_005_b
SP_08 = 158826; --瞬間移動で先回りして回し蹴り 手前 ef_006
SP_09 = 158827; --瞬間移動で先回りして回し蹴り 奥 ef_006_b
SP_10 = 158828; --宙返り 手前 ef_007
SP_11 = 158829; --宙返り 奥 ef_007_b
SP_12 = 158830; --悟空が上から落ちてくる ef_008
SP_13 = 158831; --蹴り上げる 手前 ef_009
SP_14 = 158833; --蹴り上げる 奥 ef_009_b
SP_15 = 158834; --瞬間移動で先回り ef_010
SP_16 = 158835; --悟空バストアップ ef_011
SP_17 = 158836; --気弾を溜める ef_012
SP_18 = 158837; --気弾を敵に放つ 手前 ef_013
SP_19 = 158838; --気弾を敵に放つ 奥 ef_013_b
SP_20 = 158839; --フィニッシュ絵 ef_014

--敵側
SP_06r = 158824; --敵の目の前に現れ回し蹴り 手前 ef_005_r
SP_13r = 158832; --蹴り上げる 手前 ef_009_r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

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
-- 気合を入れる悟空(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --気合を入れる悟空 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1043, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 81 );

--オーラ
SE004 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 瞬間移動で消える(42F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_1 + 0, SP_02, 42, 0x100, -1, 0, 0, 0 );  --瞬間移動で消える ef_002
setEffMoveKey( spep_1 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_1 + 42, jump, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 42, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 42, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 42 -1, jump, 255 );
setEffAlphaKey( spep_1 + 42, jump, 0 );

-- ** 音 ** --
--イナヅマ
SE007 = playSeVer2( spep_1 + 4, 1148, "",spep_1 +42 + 56, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 4, SE007, 62 );

--飛び上がる
SE008 = playSeVer2( spep_1 + 4, 1106, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 4, 1117, "",spep_1 +42 + 20, 0, 36, -1);
SE010 = playSeVer2( spep_1 + 14, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 42;


------------------------------------------------------
-- 空に悟空が現れる→敵に膝蹴り(126F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffectLife( spep_2 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --空に悟空が現れる→敵に膝蹴り 手前 ef_003
setEffMoveKey( spep_2 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_f, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, knees_f, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_f, 0 );
setEffRotateKey( spep_2 + 126, knees_f, 0 );
setEffAlphaKey( spep_2 + 0, knees_f, 255 );
setEffAlphaKey( spep_2 + 126 -1, knees_f, 255 );
setEffAlphaKey( spep_2 + 126, knees_f, 0 );

knees_b = entryEffectLife( spep_2 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --空に悟空が現れる→敵に膝蹴り 奥 ef_003_b
setEffMoveKey( spep_2 + 0, knees_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, knees_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_b, 1.0, 1.0 );
setEffScaleKey( spep_2 + 126, knees_b, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_b, 0 );
setEffRotateKey( spep_2 + 126, knees_b, 0 );
setEffAlphaKey( spep_2 + 0, knees_b, 255 );
setEffAlphaKey( spep_2 + 126 -1, knees_b, 255 );
setEffAlphaKey( spep_2 + 126, knees_b, 0 );

--向かってくる
SE011 = playSeVer2( spep_2 + 16, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 84, 1, 1 );
setDisp( spep_2 -3 + 129, 1, 0 );
changeAnime( spep_2 -3 + 84, 1, 106 );

setMoveKey( spep_2 -3 + 84, 1, -29.3, -128.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, -17, -156.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, -44.7, -122.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, -31.2, -142.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, -18.1, -131.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, -26.3, -120.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, -25.3, -148.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, -26.1, -135.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, -22, -138.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, -17.7, -141.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, -18.9, -138.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, -20, -134.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, -19.2, -135.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, -18.4, -136.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, -17.5, -136.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, -16.6, -137.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, -15.7, -138.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -14.9, -138.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -14, -139.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -13.1, -140.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -12.2, -140.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -11.4, -141.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, -10.5, -142.2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, -10.5, -142.2 , 0 );

setScaleKey( spep_2 -3 + 84, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 129, 1, 2.27, 2.27 );

setRotateKey( spep_2 -3 + 84, 1, -48.2 );
setRotateKey( spep_2 -3 + 86, 1, -48 );
setRotateKey( spep_2 -3 + 88, 1, -47.9 );
setRotateKey( spep_2 -3 + 90, 1, -47.7 );
setRotateKey( spep_2 -3 + 92, 1, -47.5 );
setRotateKey( spep_2 -3 + 94, 1, -47.3 );
setRotateKey( spep_2 -3 + 96, 1, -47.1 );
setRotateKey( spep_2 -3 + 98, 1, -46.9 );
setRotateKey( spep_2 -3 + 100, 1, -46.7 );
setRotateKey( spep_2 -3 + 102, 1, -46.5 );
setRotateKey( spep_2 -3 + 104, 1, -46.3 );
setRotateKey( spep_2 -3 + 106, 1, -46.1 );
setRotateKey( spep_2 -3 + 108, 1, -45.9 );
setRotateKey( spep_2 -3 + 110, 1, -45.7 );
setRotateKey( spep_2 -3 + 112, 1, -45.5 );
setRotateKey( spep_2 -3 + 114, 1, -45.3 );
setRotateKey( spep_2 -3 + 116, 1, -45.2 );
setRotateKey( spep_2 -3 + 118, 1, -45 );
setRotateKey( spep_2 -3 + 120, 1, -44.8 );
setRotateKey( spep_2 -3 + 122, 1, -44.6 );
setRotateKey( spep_2 -3 + 124, 1, -44.4 );
setRotateKey( spep_2 -3 + 126, 1, -44.2 );
setRotateKey( spep_2 -3 + 128, 1, -44 );
setRotateKey( spep_2 -3 + 129, 1, -44 );

-- ** 音 ** --
--振りかぶる
SE013 = playSeVer2( spep_2 + 48, 1116, "",spep_2 + 86, 0, 18, -1);

--膝蹴り
SE014 = playSeVer2( spep_2 + 76, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE014, 85 );
SE015 = playSeVer2( spep_2 + 76, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE015, 84 );
SE016 = playSeVer2( spep_2 + 76, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE016, 86 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;


------------------------------------------------------
-- 瞬間移動で消える(40F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0, SP_05, 40, 0x100, -1, 0, 0, 0 );  --瞬間移動で消える ef_004
setEffMoveKey( spep_3 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, move, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move, 0 );
setEffRotateKey( spep_3 + 40, move, 0 );
setEffAlphaKey( spep_3 + 0, move, 255 );
setEffAlphaKey( spep_3 + 40 -1, move, 255 );
setEffAlphaKey( spep_3 + 40, move, 0 );

-- ** 音 ** --
--瞬間移動
SE017 = playSeVer2( spep_3 + 14, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;


------------------------------------------------------
-- 敵の目の前に現れ回し蹴り(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_4 + 0, SP_06, 86, 0x100, -1, 0, 0, 0 );  --敵の目の前に現れ回し蹴り 手前 ef_005
setEffMoveKey( spep_4 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, kick_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 86, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, kick_f, 255 );
setEffAlphaKey( spep_4 + 86, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0, SP_07, 86, 0x80, -1, 0, 0, 0 );  --敵の目の前に現れ回し蹴り 奥 ef_005_b
setEffMoveKey( spep_4 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 86, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, kick_b, 255 );
setEffAlphaKey( spep_4 + 86, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 107 );

setMoveKey( spep_4 + 0, 1, -10.6, -6.6 , 0 );
setMoveKey( spep_4 + 1, 1, -10.3, -7 , 0 );
setMoveKey( spep_4 + 2, 1, -10, -7.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -9.7, -8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -9.4, -8.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -9.1, -8.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -8.9, -9.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -8.6, -9.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -8.3, -10.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -8, -10.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -7.7, -11.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -7.4, -11.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -7.1, -12.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -6.8, -12.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -6.5, -13.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -6.2, -13.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -5.9, -14.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -5.6, -14.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -5.3, -15.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -5, -15.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -4.8, -16 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -4.5, -16.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 146, 2.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 138.5, -35.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 178.9, -27.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 265.7, -92.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 321.6, -122.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 406.4, -174.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 500.1, -232.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 601.9, -295.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 711.1, -362.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 826.4, -432.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 826.4, -432.9 , 0 );

setScaleKey( spep_4 + 0, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 43, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 44, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 46, 1, 1.51, 1.5 );
setScaleKey( spep_4 -3 + 48, 1, 1.77, 1.74 );
setScaleKey( spep_4 -3 + 50, 1, 2.13, 2.09 );
setScaleKey( spep_4 -3 + 52, 1, 2.56, 2.51 );
setScaleKey( spep_4 -3 + 54, 1, 3.05, 3 );
setScaleKey( spep_4 -3 + 56, 1, 3.59, 3.55 );
setScaleKey( spep_4 -3 + 58, 1, 4.18, 4.14 );
setScaleKey( spep_4 -3 + 60, 1, 4.8, 4.78 );
setScaleKey( spep_4 -3 + 62, 1, 5.46, 5.46 );
setScaleKey( spep_4 -3 + 64, 1, 5.46, 5.46 );

setRotateKey( spep_4 + 0, 1, -49 );
setRotateKey( spep_4 + 1, 1, -48.7 );
setRotateKey( spep_4 + 2, 1, -48.4 );
setRotateKey( spep_4 -3 + 6, 1, -48.1 );
setRotateKey( spep_4 -3 + 8, 1, -47.9 );
setRotateKey( spep_4 -3 + 10, 1, -47.6 );
setRotateKey( spep_4 -3 + 12, 1, -47.3 );
setRotateKey( spep_4 -3 + 14, 1, -47 );
setRotateKey( spep_4 -3 + 16, 1, -46.7 );
setRotateKey( spep_4 -3 + 18, 1, -46.4 );
setRotateKey( spep_4 -3 + 20, 1, -46.1 );
setRotateKey( spep_4 -3 + 22, 1, -45.9 );
setRotateKey( spep_4 -3 + 24, 1, -45.6 );
setRotateKey( spep_4 -3 + 26, 1, -45.3 );
setRotateKey( spep_4 -3 + 28, 1, -45 );
setRotateKey( spep_4 -3 + 30, 1, -44.7 );
setRotateKey( spep_4 -3 + 32, 1, -44.4 );
setRotateKey( spep_4 -3 + 34, 1, -44.1 );
setRotateKey( spep_4 -3 + 36, 1, -43.9 );
setRotateKey( spep_4 -3 + 38, 1, -43.6 );
setRotateKey( spep_4 -3 + 40, 1, -43.3 );
setRotateKey( spep_4 -3 + 43, 1, -43 );
setRotateKey( spep_4 -3 + 44, 1, 41.1 );
setRotateKey( spep_4 -3 + 46, 1, 41.2 );
setRotateKey( spep_4 -3 + 64, 1, 41.2 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_4 + 2, 1109, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 70, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE019 = playSeVer2( spep_4 + 26, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE020, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 瞬間移動で先回りして回し蹴り(76F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --瞬間移動で先回りして回し蹴り 手前 ef_006
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 76, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 76 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 76, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_09, 76, 0x80, -1, 0, 0, 0 );  --瞬間移動で先回りして回し蹴り 奥 ef_006_b
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 76, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 76 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 76, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 2, 1, 1 );
setDisp( spep_5 -3 + 66, 1, 0 );
changeAnime( spep_5 + 2, 1, 5 );
changeAnime( spep_5 -3 + 36, 1, 107 );

setMoveKey( spep_5 + 2, 1, 411.2, -354.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 387.3, -335.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 363.4, -316.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 339.5, -297.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 315.7, -278.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 291.9, -259.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 268.1, -240.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 244.4, -221.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 220.7, -202.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 197.1, -182.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 173.4, -163.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 149.9, -144.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 126.3, -125.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 102.8, -105.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 79.3, -86.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 55.8, -67 , 0 );
setMoveKey( spep_5 -3 + 35, 1, 55.8, -67 , 0 );--
setMoveKey( spep_5 -3 + 36, 1, 58.8, 79.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 45.1, 81.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 31.3, 84.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 17.5, 86.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 3.8, 88.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -10, 91.1 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -23.8, 93.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -37.5, 95.7 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -51.3, 98 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 189.5, 112 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 443.1, 138.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 645.7, 110.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 933.5, 138.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 1129.9, 190.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 1394.5, 176.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 1394.5, 176.6 , 0 );

setScaleKey( spep_5 + 2, 1, 6.512, 6.512 );
setScaleKey( spep_5 -3 + 6, 1, 6.215, 6.215 );
setScaleKey( spep_5 -3 + 8, 1, 5.907, 5.907 );
setScaleKey( spep_5 -3 + 10, 1, 5.599, 5.599 );
setScaleKey( spep_5 -3 + 12, 1, 5.291, 5.291 );
setScaleKey( spep_5 -3 + 14, 1, 4.994, 4.994 );
setScaleKey( spep_5 -3 + 16, 1, 4.686, 4.686 );
setScaleKey( spep_5 -3 + 18, 1, 4.378, 4.378 );
setScaleKey( spep_5 -3 + 20, 1, 4.07, 4.07 );
setScaleKey( spep_5 -3 + 22, 1, 3.773, 3.773 );
setScaleKey( spep_5 -3 + 24, 1, 3.465, 3.465 );
setScaleKey( spep_5 -3 + 26, 1, 3.157, 3.157 );
setScaleKey( spep_5 -3 + 28, 1, 2.849, 2.849 );
setScaleKey( spep_5 -3 + 30, 1, 2.541, 2.541 );
setScaleKey( spep_5 -3 + 32, 1, 2.244, 2.244 );
setScaleKey( spep_5 -3 + 34, 1, 1.936, 1.936 );
setScaleKey( spep_5 -3 + 35, 1, 1.936, 1.936 );--
setScaleKey( spep_5 -3 + 36, 1, 3.4, 3.4 );
setScaleKey( spep_5 -3 + 66, 1, 3.4, 3.4 );

setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, -0.3 );
setRotateKey( spep_5 -3 + 8, 1, -0.7 );
setRotateKey( spep_5 -3 + 10, 1, -1 );
setRotateKey( spep_5 -3 + 12, 1, -1.3 );
setRotateKey( spep_5 -3 + 14, 1, -1.7 );
setRotateKey( spep_5 -3 + 16, 1, -2 );
setRotateKey( spep_5 -3 + 18, 1, -2.3 );
setRotateKey( spep_5 -3 + 20, 1, -2.7 );
setRotateKey( spep_5 -3 + 22, 1, -3 );
setRotateKey( spep_5 -3 + 24, 1, -3.3 );
setRotateKey( spep_5 -3 + 26, 1, -3.7 );
setRotateKey( spep_5 -3 + 28, 1, -4 );
setRotateKey( spep_5 -3 + 30, 1, -4.3 );
setRotateKey( spep_5 -3 + 32, 1, -4.7 );
setRotateKey( spep_5 -3 + 34, 1, -5 );
setRotateKey( spep_5 -3 + 35, 1, -5 );--
setRotateKey( spep_5 -3 + 36, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, -0.3 );
setRotateKey( spep_5 -3 + 40, 1, -0.7 );
setRotateKey( spep_5 -3 + 42, 1, -1 );
setRotateKey( spep_5 -3 + 44, 1, -1.4 );
setRotateKey( spep_5 -3 + 46, 1, -1.7 );
setRotateKey( spep_5 -3 + 48, 1, -2.1 );
setRotateKey( spep_5 -3 + 50, 1, -2.4 );
setRotateKey( spep_5 -3 + 52, 1, -2.8 );
setRotateKey( spep_5 -3 + 54, 1, -5.9 );
setRotateKey( spep_5 -3 + 56, 1, -9 );
setRotateKey( spep_5 -3 + 58, 1, -12.1 );
setRotateKey( spep_5 -3 + 60, 1, -15.2 );
setRotateKey( spep_5 -3 + 62, 1, -18.3 );
setRotateKey( spep_5 -3 + 64, 1, -21.4 );
setRotateKey( spep_5 -3 + 66, 1, -21.4 );

-- ** 音 ** --
--振りかぶり
SE022 = playSeVer2( spep_5 + 18, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 18, 1116, "",spep_5 + 50, 0, 10, -1);
SE024 = playSeVer2( spep_5 + 28, 1278, "",spep_5 + 60, 0, 14, -1);

--蹴り飛ばし2
SE025 = playSeVer2( spep_5 + 44, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE025, 60 );
SE026 = playSeVer2( spep_5 + 48, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 48, 1190, "",spep_5 +76 + 14, 0, 22, -1);
SE028 = playSeVer2( spep_5 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE028, 84 );

--宙返り
SE029 = playSeVer2( spep_5 + 74, 1117, "",spep_5 +76 +66 + 14, 0, 44, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;


------------------------------------------------------
-- 宙返り(66F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
ssault_f = entryEffectLife( spep_6 + 0, SP_10, 66, 0x100, -1, 0, 0, 0 );  --宙返り 手前 ef_007
setEffMoveKey( spep_6 + 0, ssault_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, ssault_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ssault_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, ssault_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ssault_f, 0 );
setEffRotateKey( spep_6 + 66, ssault_f, 0 );
setEffAlphaKey( spep_6 + 0, ssault_f, 255 );
setEffAlphaKey( spep_6 + 66 -1, ssault_f, 255 );
setEffAlphaKey( spep_6 + 66, ssault_f, 0 );

ssault_b = entryEffectLife( spep_6 + 0, SP_11, 66, 0x80, -1, 0, 0, 0 );  --宙返り 奥 ef_007_b
setEffMoveKey( spep_6 + 0, ssault_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, ssault_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ssault_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, ssault_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ssault_b, 0 );
setEffRotateKey( spep_6 + 66, ssault_b, 0 );
setEffAlphaKey( spep_6 + 0, ssault_b, 255 );
setEffAlphaKey( spep_6 + 66 -1, ssault_b, 255 );
setEffAlphaKey( spep_6 + 66, ssault_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 69, 1, 0 );
changeAnime( spep_6 -3 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 7.8, 5.6 , 0 );
setMoveKey( spep_6 + 1, 1, 8.2, 5.3 , 0 );
setMoveKey( spep_6 + 2, 1, 8.6, 5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 9.1, 4.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 9.5, 4.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 9.9, 4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 10.3, 3.7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 10.7, 3.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 11.2, 3.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 11.6, 2.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 12, 2.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 12.4, 2.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 12.8, 1.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 13.3, 1.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 13.7, 1.2 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 14.1, 0.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 14.5, 0.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 14.9, 0.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 15.4, -0.1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 15.8, -0.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 16.2, -0.7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 16.6, -1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 17.1, -1.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 17.5, -1.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 17.9, -2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 18.3, -2.3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 18.7, -2.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 19.2, -2.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 19.6, -3.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 20, -3.5 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 20.4, -3.9 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 20.8, -4.2 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 21.3, -4.5 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 21.7, -4.8 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 22.1, -5.1 , 0 );
setMoveKey( spep_6 -3 + 69, 1, 22.1, -5.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6 -3 + 69, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -3 + 69, 1, 0 );

-- ** 音 ** --
--宙返り
--SE029 = playSeVer2( spep_6 + 2, 1117, "",spep_6 +66 + 18, 0, 44, -1);
SE030 = playSeVer2( spep_6 + 12, 44, "", 0, 0, 0, -1);

--画面遷移
SE031 = playSeVer2( spep_6 + 30, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;


------------------------------------------------------
-- 悟空が上から落ちてくる(42F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
down = entryEffectLife( spep_7 + 0, SP_12, 42, 0x100, -1, 0, 0, 0 );  --悟空が上から落ちてくる ef_008
setEffMoveKey( spep_7 + 0, down, 0, 0 , 0 );
setEffMoveKey( spep_7 + 42, down, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, down, 1.0, 1.0 );
setEffScaleKey( spep_7 + 42, down, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down, 0 );
setEffRotateKey( spep_7 + 42, down, 0 );
setEffAlphaKey( spep_7 + 0, down, 255 );
setEffAlphaKey( spep_7 + 42 -1, down, 255 );
setEffAlphaKey( spep_7 + 42, down, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 42;


------------------------------------------------------
-- 蹴り上げる(40F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
kickup_f = entryEffectLife( spep_8 + 0, SP_13, 40, 0x100, -1, 0, 0, 0 );  --蹴り上げる 手前 ef_009
setEffMoveKey( spep_8 + 0, kickup_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, kickup_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kickup_f, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40, kickup_f, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kickup_f, 0 );
setEffRotateKey( spep_8 + 40, kickup_f, 0 );
setEffAlphaKey( spep_8 + 0, kickup_f, 255 );
setEffAlphaKey( spep_8 + 40 -1, kickup_f, 255 );
setEffAlphaKey( spep_8 + 40, kickup_f, 0 );

kickup_b = entryEffectLife( spep_8 + 0, SP_14, 40, 0x80, -1, 0, 0, 0 );  --蹴り上げる 奥 ef_009_b
setEffMoveKey( spep_8 + 0, kickup_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, kickup_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kickup_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40, kickup_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kickup_b, 0 );
setEffRotateKey( spep_8 + 40, kickup_b, 0 );
setEffAlphaKey( spep_8 + 0, kickup_b, 255 );
setEffAlphaKey( spep_8 + 40 -1, kickup_b, 255 );
setEffAlphaKey( spep_8 + 40, kickup_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 -3 + 43, 1, 0 );
changeAnime( spep_8 + 0, 1, 108 );
changeAnime( spep_8 -3 + 16, 1, 6 );

setMoveKey( spep_8 + 0, 1, -0.6, 14 , 0 );
setMoveKey( spep_8 + 1, 1, 0.6, 12.8 , 0 );
setMoveKey( spep_8 + 2, 1, 1.8, 11.6 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 3, 10.4 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 4.2, 9.2 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 5.4, 8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 6.6, 6.8 , 0 );
setMoveKey( spep_8 -3 + 15, 1, 7.8, 5.6 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -41, 62 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -57, 82.5 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -43.1, 61.6 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -62.8, 65 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -50.9, 76 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -54.7, 78.8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -58.3, 81.5 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -59.7, 80 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -61, 78.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -62, 79.3 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -62.9, 80 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -63.7, 80.7 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -64.4, 81.3 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -65.1, 81.9 , 0 );
--setMoveKey( spep_8 -3 + 43, 1, -65.1, 81.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1, 1 );
setScaleKey( spep_8 -3 + 42, 1, 1, 1 );
--setScaleKey( spep_8 -3 + 43, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 15, 1, 0 );
setRotateKey( spep_8 -3 + 16, 1, 45 );
setRotateKey( spep_8 -3 + 18, 1, 41.7 );
setRotateKey( spep_8 -3 + 20, 1, 40.4 );
setRotateKey( spep_8 -3 + 22, 1, 39.5 );
setRotateKey( spep_8 -3 + 24, 1, 38.7 );
setRotateKey( spep_8 -3 + 26, 1, 38.1 );
setRotateKey( spep_8 -3 + 28, 1, 37.6 );
setRotateKey( spep_8 -3 + 30, 1, 37.1 );
setRotateKey( spep_8 -3 + 32, 1, 36.6 );
setRotateKey( spep_8 -3 + 34, 1, 36.2 );
setRotateKey( spep_8 -3 + 36, 1, 35.9 );
setRotateKey( spep_8 -3 + 38, 1, 35.6 );
setRotateKey( spep_8 -3 + 40, 1, 35.3 );
setRotateKey( spep_8 -3 + 42, 1, 35 );
--setRotateKey( spep_8 -3 + 43, 1, 35 );

-- ** 音 ** --
--蹴り上げ
SE032 = playSeVer2( spep_8 + 2, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 8, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_8 + 20, 1183, "",spep_8 +40 +46 + 48, 0, 54, -1);
setSeVolumeByWorkId( spep_8 + 20, SE034, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 40;


------------------------------------------------------
-- 瞬間移動で先回り(46F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
advance = entryEffectLife( spep_9 + 0, SP_15, 46, 0x80, -1, 0, 0, 0 );  --瞬間移動で先回り ef_010
setEffMoveKey( spep_9 + 0, advance, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, advance, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, advance, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46, advance, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, advance, 0 );
setEffRotateKey( spep_9 + 46, advance, 0 );
setEffAlphaKey( spep_9 + 0, advance, 255 );
setEffAlphaKey( spep_9 + 46 -1, advance, 255 );
setEffAlphaKey( spep_9 + 46, advance, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 -3 + 0, 1, 1 );
setDisp( spep_9 -3 + 49, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );

setMoveKey( spep_9 + 0, 1, 429.6, 142.4 , 0 );
setMoveKey( spep_9 + 1, 1, 416.9, 140.1 , 0 );
setMoveKey( spep_9 + 2, 1, 404.3, 137.8 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 391.6, 135.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 378.9, 133.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 366.1, 131.1 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 353.4, 128.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 340.6, 126.6 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 327.8, 124.4 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 315, 122.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 302.2, 120.1 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 289.3, 114.9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 276.5, 109.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 263.6, 104.6 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 250.7, 99.4 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 237.8, 94.3 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 224.8, 89.2 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 211.9, 84.1 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 198.9, 79 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 185.9, 73.9 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 172.9, 68.8 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 159.9, 63.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 146.8, 58.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 133.7, 53.7 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 120.6, 48.6 , 0 );
setMoveKey( spep_9 -3 + 49, 1, 120.6, 48.6 , 0 );

setScaleKey( spep_9 + 0, 1, 6.51, 6.51 );
setScaleKey( spep_9 + 1, 1, 6.33, 6.33 );
setScaleKey( spep_9 + 2, 1, 6.16, 6.16 );
setScaleKey( spep_9 -3 + 6, 1, 5.98, 5.98 );
setScaleKey( spep_9 -3 + 8, 1, 5.8, 5.8 );
setScaleKey( spep_9 -3 + 10, 1, 5.62, 5.62 );
setScaleKey( spep_9 -3 + 12, 1, 5.45, 5.45 );
setScaleKey( spep_9 -3 + 14, 1, 5.27, 5.27 );
setScaleKey( spep_9 -3 + 16, 1, 5.09, 5.09 );
setScaleKey( spep_9 -3 + 18, 1, 4.91, 4.91 );
setScaleKey( spep_9 -3 + 20, 1, 4.74, 4.74 );
setScaleKey( spep_9 -3 + 22, 1, 4.56, 4.56 );
setScaleKey( spep_9 -3 + 24, 1, 4.38, 4.38 );
setScaleKey( spep_9 -3 + 26, 1, 4.2, 4.2 );
setScaleKey( spep_9 -3 + 28, 1, 4.03, 4.03 );
setScaleKey( spep_9 -3 + 30, 1, 3.85, 3.85 );
setScaleKey( spep_9 -3 + 32, 1, 3.67, 3.67 );
setScaleKey( spep_9 -3 + 34, 1, 3.49, 3.49 );
setScaleKey( spep_9 -3 + 36, 1, 3.32, 3.32 );
setScaleKey( spep_9 -3 + 38, 1, 3.14, 3.14 );
setScaleKey( spep_9 -3 + 40, 1, 2.96, 2.96 );
setScaleKey( spep_9 -3 + 42, 1, 2.78, 2.78 );
setScaleKey( spep_9 -3 + 44, 1, 2.61, 2.61 );
setScaleKey( spep_9 -3 + 46, 1, 2.43, 2.43 );
setScaleKey( spep_9 -3 + 48, 1, 2.25, 2.25 );
setScaleKey( spep_9 -3 + 49, 1, 2.25, 2.25 );

setRotateKey( spep_9 + 0, 1, 4 );
setRotateKey( spep_9 + 1, 1, 3.5 );
setRotateKey( spep_9 + 2, 1, 3.1 );
setRotateKey( spep_9 -3 + 6, 1, 2.6 );
setRotateKey( spep_9 -3 + 8, 1, 2.2 );
setRotateKey( spep_9 -3 + 10, 1, 1.7 );
setRotateKey( spep_9 -3 + 12, 1, 1.3 );
setRotateKey( spep_9 -3 + 14, 1, 0.8 );
setRotateKey( spep_9 -3 + 16, 1, 0.3 );
setRotateKey( spep_9 -3 + 18, 1, -0.1 );
setRotateKey( spep_9 -3 + 20, 1, -0.6 );
setRotateKey( spep_9 -3 + 22, 1, -1 );
setRotateKey( spep_9 -3 + 24, 1, -1.5 );
setRotateKey( spep_9 -3 + 26, 1, -2 );
setRotateKey( spep_9 -3 + 28, 1, -2.4 );
setRotateKey( spep_9 -3 + 30, 1, -2.9 );
setRotateKey( spep_9 -3 + 32, 1, -3.3 );
setRotateKey( spep_9 -3 + 34, 1, -3.8 );
setRotateKey( spep_9 -3 + 36, 1, -4.2 );
setRotateKey( spep_9 -3 + 38, 1, -4.7 );
setRotateKey( spep_9 -3 + 40, 1, -5.2 );
setRotateKey( spep_9 -3 + 42, 1, -5.6 );
setRotateKey( spep_9 -3 + 44, 1, -6.1 );
setRotateKey( spep_9 -3 + 46, 1, -6.5 );
setRotateKey( spep_9 -3 + 48, 1, -7 );
setRotateKey( spep_9 -3 + 49, 1, -7 );

-- ** 音 ** --
--瞬間移動
SE035 = playSeVer2( spep_9 + 2, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 46;


------------------------------------------------------
-- 悟空バストアップ(86F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
bustup = entryEffectLife( spep_10 + 0, SP_16, 86, 0x100, -1, 0, 0, 0 );  --悟空バストアップ ef_011
setEffMoveKey( spep_10 + 0, bustup, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, bustup, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, bustup, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, bustup, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, bustup, 0 );
setEffRotateKey( spep_10 + 86, bustup, 0 );
setEffAlphaKey( spep_10 + 0, bustup, 255 );
setEffAlphaKey( spep_10 + 86 -1, bustup, 255 );
setEffAlphaKey( spep_10 + 86, bustup, 0 );

-- ** 顔カットイン ** --
spep_x = spep_10 + 0;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
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
--顔カットイン
SE036 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_10 + 80 -1, 6 +1, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_11 = 0;
-- ** カードカットイン ** --
--speff2 = entryEffectLife( spep_11 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then

    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_11, SE_05);
    speff = entryEffect( spep_11, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_11, SE_05);
    speff = entryEffect( spep_11, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_11, SE_05);
    speff = entryEffect( spep_11, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_11 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_11 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_11 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_11 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_11 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_11 + 0, shuchusen, 0 );
setEffRotateKey( spep_11 + 90, shuchusen, 0 );
setEffAlphaKey( spep_11 + 0, shuchusen, 255 );
setEffAlphaKey( spep_11 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_11 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_11 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
--playSe( spep_11 + 0, SE_05 );

--気弾溜め
SE038 = playSeVer2( spep_11 + 86, 1266, "",spep_11 +94 +66 +56 + 14, 14, 10, -1);
setSeVolumeByWorkId( spep_11 + 86, SE038, 85 );
setStartTimeMs( SE038,  783 );
SE039 = playSeVer2( spep_11 +86, 1204, "",spep_11 +94 +66 +56 + 14, 0, 10, -1);
setPitch( spep_11 + 86, SE039, -200 );
setTimeStretch( SE039, 0.87, 30, 4 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 94


------------------------------------------------------
-- 気弾を溜める(66F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_12 + 0, SP_17, 66, 0x100, -1, 0, 0, 0 );  --気弾を溜める ef_012
setEffMoveKey( spep_12 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_12 + 66, tame, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_12 + 66, tame, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, tame, 0 );
setEffRotateKey( spep_12 + 66, tame, 0 );
setEffAlphaKey( spep_12 + 0, tame, 255 );
setEffAlphaKey( spep_12 + 66 -1, tame, 255 );
setEffAlphaKey( spep_12 + 66, tame, 0 );

-- ** 音 ** --
--気弾大きくなる
SE040 = playSeVer2( spep_12 + 28, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE040, 106 );
SE041 = playSeVer2( spep_12 + 28, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE041, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 66;


------------------------------------------------------
-- 気弾を敵に放つ(56F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_13 + 0, SP_18, 56, 0x100, -1, 0, 0, 0 );  --気弾を敵に放つ 手前 ef_013
setEffMoveKey( spep_13 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_13 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, shot_f, 0 );
setEffRotateKey( spep_13 + 56, shot_f, 0 );
setEffAlphaKey( spep_13 + 0, shot_f, 255 );
setEffAlphaKey( spep_13 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_13 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_13 + 0, SP_19, 56, 0x80, -1, 0, 0, 0 );  --気弾を敵に放つ 奥 ef_013_b
setEffMoveKey( spep_13 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_13 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, shot_b, 0 );
setEffRotateKey( spep_13 + 56, shot_b, 0 );
setEffAlphaKey( spep_13 + 0, shot_b, 255 );
setEffAlphaKey( spep_13 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_13 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_13 + 0, 1, 1 );
setDisp( spep_13 -3 + 59, 1, 0 );
changeAnime( spep_13 -3 + 0, 1, 6 );

setMoveKey( spep_13 + 0, 1, 185.6, 48.7 , 0 );
setMoveKey( spep_13 + 1, 1, 184.2, 49.9 , 0 );
setMoveKey( spep_13 + 2, 1, 178.4, 46.5 , 0 );
setMoveKey( spep_13 -3 + 6, 1, 177, 43.2 , 0 );
setMoveKey( spep_13 -3 + 8, 1, 171.2, 44.4 , 0 );
setMoveKey( spep_13 -3 + 10, 1, 169.9, 45.5 , 0 );
setMoveKey( spep_13 -3 + 12, 1, 168.5, 42.2 , 0 );
setMoveKey( spep_13 -3 + 14, 1, 162.7, 43.4 , 0 );
setMoveKey( spep_13 -3 + 16, 1, 156.9, 40.1 , 0 );
setMoveKey( spep_13 -3 + 18, 1, 155.6, 41.2 , 0 );
setMoveKey( spep_13 -3 + 20, 1, 149.7, 42.4 , 0 );
setMoveKey( spep_13 -3 + 22, 1, 145, 42.4 , 0 );
setMoveKey( spep_13 -3 + 24, 1, 147.1, 42.5 , 0 );
setMoveKey( spep_13 -3 + 26, 1, 136.7, 34.6 , 0 );
setMoveKey( spep_13 -3 + 28, 1, 139.9, 26.8 , 0 );
setMoveKey( spep_13 -3 + 30, 1, 131.8, 30.2 , 0 );
setMoveKey( spep_13 -3 + 32, 1, 132.7, 33.7 , 0 );
setMoveKey( spep_13 -3 + 34, 1, 126.9, 30.3 , 0 );
setMoveKey( spep_13 -3 + 36, 1, 127.8, 24.7 , 0 );
setMoveKey( spep_13 -3 + 38, 1, 117.5, 30.4 , 0 );
setMoveKey( spep_13 -3 + 40, 1, 126.5, 37.2 , 0 );
setMoveKey( spep_13 -3 + 42, 1, 117.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 44, 1, 124.2, 21.4 , 0 );
setMoveKey( spep_13 -3 + 46, 1, 117.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 48, 1, 124.2, 32.7 , 0 );
setMoveKey( spep_13 -3 + 50, 1, 117.5, 25.9 , 0 );
setMoveKey( spep_13 -3 + 52, 1, 122, 21.4 , 0 );
setMoveKey( spep_13 -3 + 54, 1, 115.2, 28.2 , 0 );
setMoveKey( spep_13 -3 + 56, 1, 122, 32.7 , 0 );
setMoveKey( spep_13 -3 + 58, 1, 126.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 59, 1, 126.5, 28.2 , 0 );

setScaleKey( spep_13 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_13 -3 + 59, 1, 1.59, 1.59 );

setRotateKey( spep_13 + 0, 1, 58.9 );
setRotateKey( spep_13 + 1, 1, 58.2 );
setRotateKey( spep_13 + 2, 1, 57.5 );
setRotateKey( spep_13 -3 + 6, 1, 56.9 );
setRotateKey( spep_13 -3 + 8, 1, 56.2 );
setRotateKey( spep_13 -3 + 10, 1, 55.5 );
setRotateKey( spep_13 -3 + 12, 1, 54.8 );
setRotateKey( spep_13 -3 + 14, 1, 54.1 );
setRotateKey( spep_13 -3 + 16, 1, 53.4 );
setRotateKey( spep_13 -3 + 18, 1, 52.7 );
setRotateKey( spep_13 -3 + 20, 1, 52 );
setRotateKey( spep_13 -3 + 22, 1, 51.3 );
setRotateKey( spep_13 -3 + 24, 1, 50.6 );
setRotateKey( spep_13 -3 + 26, 1, 49.9 );
setRotateKey( spep_13 -3 + 28, 1, 49.2 );
setRotateKey( spep_13 -3 + 30, 1, 48.5 );
setRotateKey( spep_13 -3 + 32, 1, 47.8 );
setRotateKey( spep_13 -3 + 34, 1, 47.1 );
setRotateKey( spep_13 -3 + 36, 1, 46.4 );
setRotateKey( spep_13 -3 + 38, 1, 45.7 );
setRotateKey( spep_13 -3 + 59, 1, 45.7 );

-- ** 音 ** --
--気弾押し付ける
SE042 = playSeVer2( spep_13 + 2, 1144, "",spep_13 +56 + 26, 22, 20, 0.6);
setSeVolumeByWorkId( spep_13 + 2, SE042, 83 );
setStartTimeMs( SE042,  450 );
SE043 = playSeVer2( spep_13 + 10, 1276, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_13 + 10, SE043, 122 );

--気弾発射
SE044 = playSeVer2( spep_13 + 54, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 54, SE044, 63 );
SE045 = playSeVer2( spep_13 + 54, 1177, "",spep_13 +56 + 86, 0, 50, -1);
setSeVolumeByWorkId( spep_13 + 54, SE045, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 56;


------------------------------------------------------
-- フィニッシュ絵(136F)
------------------------------------------------------
--spep_14 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_14 + 0, SP_20, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵 ef_014
setEffMoveKey( spep_14 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_14 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_14 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish, 0 );
setEffRotateKey( spep_14 + 136, finish, 0 );
setEffAlphaKey( spep_14 + 0, finish, 255 );
setEffAlphaKey( spep_14 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_14 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 8, SE046, 90 );
SE047 = playSeVer2( spep_14 + 8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 8, SE047, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_14 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
dealDamage( spep_14 + 26 );
endPhase( spep_14 + 126 );

else

------------------------------------------------------
-- 敵側
------------------------------------------------------
------------------------------------------------------
-- 気合を入れる悟空(116F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffectLife( spep_0 + 0, SP_01, 116, 0x100, -1, 0, 0, 0 );  --気合を入れる悟空 ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 116, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 116, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 116 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 116, first_f, 0 );

-- ** 音 ** --
--気ダメ
SE001 = playSeVer2( spep_0 + 8, 1035, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 8, 1043, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 8, 1024, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 8, SE003, 81 );

--オーラ
SE004 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 116 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 116;


------------------------------------------------------
-- 瞬間移動で消える(42F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
jump = entryEffectLife( spep_1 + 0, SP_02, 42, 0x100, -1, 0, 0, 0 );  --瞬間移動で消える ef_002
setEffMoveKey( spep_1 + 0, jump, 0, 0 , 0 );
setEffMoveKey( spep_1 + 42, jump, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_1 + 42, jump, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump, 0 );
setEffRotateKey( spep_1 + 42, jump, 0 );
setEffAlphaKey( spep_1 + 0, jump, 255 );
setEffAlphaKey( spep_1 + 42 -1, jump, 255 );
setEffAlphaKey( spep_1 + 42, jump, 0 );

-- ** 音 ** --
--イナヅマ
SE007 = playSeVer2( spep_1 + 4, 1148, "",spep_1 +42 + 56, 0, 18, -1);
setSeVolumeByWorkId( spep_1 + 4, SE007, 62 );

--飛び上がる
SE008 = playSeVer2( spep_1 + 4, 1106, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_1 + 4, 1117, "",spep_1 +42 + 20, 0, 36, -1);
SE010 = playSeVer2( spep_1 + 14, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_2 = spep_1 + 42;


------------------------------------------------------
-- 空に悟空が現れる→敵に膝蹴り(126F)
------------------------------------------------------
--spep_2 = 0;

-- ** エフェクト等 ** --
knees_f = entryEffectLife( spep_2 + 0, SP_03, 126, 0x100, -1, 0, 0, 0 );  --空に悟空が現れる→敵に膝蹴り 手前 ef_003
setEffMoveKey( spep_2 + 0, knees_f, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, knees_f, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_f, -1.0, 1.0 );
setEffScaleKey( spep_2 + 126, knees_f, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_f, 0 );
setEffRotateKey( spep_2 + 126, knees_f, 0 );
setEffAlphaKey( spep_2 + 0, knees_f, 255 );
setEffAlphaKey( spep_2 + 126 -1, knees_f, 255 );
setEffAlphaKey( spep_2 + 126, knees_f, 0 );

knees_b = entryEffectLife( spep_2 + 0, SP_04, 126, 0x80, -1, 0, 0, 0 );  --空に悟空が現れる→敵に膝蹴り 奥 ef_003_b
setEffMoveKey( spep_2 + 0, knees_b, 0, 0 , 0 );
setEffMoveKey( spep_2 + 126, knees_b, 0, 0 , 0 );
setEffScaleKey( spep_2 + 0, knees_b, -1.0, 1.0 );
setEffScaleKey( spep_2 + 126, knees_b, -1.0, 1.0 );
setEffRotateKey( spep_2 + 0, knees_b, 0 );
setEffRotateKey( spep_2 + 126, knees_b, 0 );
setEffAlphaKey( spep_2 + 0, knees_b, 255 );
setEffAlphaKey( spep_2 + 126 -1, knees_b, 255 );
setEffAlphaKey( spep_2 + 126, knees_b, 0 );

--向かってくる
SE011 = playSeVer2( spep_2 + 16, 1182, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 16, 9, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 126 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_2 + 40 ; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge - 12, 1042);
    stopSe( SP_dodge - 12, SE010, 0);
    stopSe( SP_dodge - 12, SE011, 0);
    stopSe( SP_dodge - 12, SE012, 0);
    stopSe( SP_dodge - 12, SE007, 0);
    --stopSe( SP_dodge - 12, SE004, 0);
    --stopSe( SP_dodge - 12, SE005, 0);
    --stopSe( SP_dodge - 12, SE006, 0);
   
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

-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 84, 1, 1 );
setDisp( spep_2 -3 + 129, 1, 0 );
changeAnime( spep_2 -3 + 84, 1, 6 );

setMoveKey( spep_2 -3 + 84, 1, 29.3, -128.3 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 17, -156.3 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 44.7, -122.2 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 31.2, -142.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 18.1, -131.7 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 26.3, -120.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 25.3, -148.5 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 26.1, -135.2 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 22, -138.3 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 17.7, -141.3 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 18.9, -138.1 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 20, -134.9 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 19.2, -135.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 18.4, -136.2 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 17.5, -136.8 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 16.6, -137.5 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 15.7, -138.2 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 14.9, -138.8 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 14, -139.5 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 13.1, -140.2 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 12.2, -140.9 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 11.4, -141.6 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 10.5, -142.2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 10.5, -142.2 , 0 );

setScaleKey( spep_2 -3 + 84, 1, 2.27, 2.27 );
setScaleKey( spep_2 -3 + 129, 1, 2.27, 2.27 );

setRotateKey( spep_2 -3 + 84, 1, 48.2 );
setRotateKey( spep_2 -3 + 86, 1, 48 );
setRotateKey( spep_2 -3 + 88, 1, 47.9 );
setRotateKey( spep_2 -3 + 90, 1, 47.7 );
setRotateKey( spep_2 -3 + 92, 1, 47.5 );
setRotateKey( spep_2 -3 + 94, 1, 47.3 );
setRotateKey( spep_2 -3 + 96, 1, 47.1 );
setRotateKey( spep_2 -3 + 98, 1, 46.9 );
setRotateKey( spep_2 -3 + 100, 1, 46.7 );
setRotateKey( spep_2 -3 + 102, 1, 46.5 );
setRotateKey( spep_2 -3 + 104, 1, 46.3 );
setRotateKey( spep_2 -3 + 106, 1, 46.1 );
setRotateKey( spep_2 -3 + 108, 1, 45.9 );
setRotateKey( spep_2 -3 + 110, 1, 45.7 );
setRotateKey( spep_2 -3 + 112, 1, 45.5 );
setRotateKey( spep_2 -3 + 114, 1, 45.3 );
setRotateKey( spep_2 -3 + 116, 1, 45.2 );
setRotateKey( spep_2 -3 + 118, 1, 45 );
setRotateKey( spep_2 -3 + 120, 1, 44.8 );
setRotateKey( spep_2 -3 + 122, 1, 44.6 );
setRotateKey( spep_2 -3 + 124, 1, 44.4 );
setRotateKey( spep_2 -3 + 126, 1, 44.2 );
setRotateKey( spep_2 -3 + 128, 1, 44 );
setRotateKey( spep_2 -3 + 129, 1, 44 );

-- ** 音 ** --
--振りかぶる
SE013 = playSeVer2( spep_2 + 48, 1116, "",spep_2 + 86, 0, 18, -1);

--膝蹴り
SE014 = playSeVer2( spep_2 + 76, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE014, 85 );
SE015 = playSeVer2( spep_2 + 76, 1010, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE015, 84 );
SE016 = playSeVer2( spep_2 + 76, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 76, SE016, 86 );

-- ** 次の準備 ** --
spep_3 = spep_2 + 126;


------------------------------------------------------
-- 瞬間移動で消える(40F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
move = entryEffectLife( spep_3 + 0, SP_05, 40, 0x100, -1, 0, 0, 0 );  --瞬間移動で消える ef_004
setEffMoveKey( spep_3 + 0, move, 0, 0 , 0 );
setEffMoveKey( spep_3 + 40, move, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, move, 1.0, 1.0 );
setEffScaleKey( spep_3 + 40, move, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, move, 0 );
setEffRotateKey( spep_3 + 40, move, 0 );
setEffAlphaKey( spep_3 + 0, move, 255 );
setEffAlphaKey( spep_3 + 40 -1, move, 255 );
setEffAlphaKey( spep_3 + 40, move, 0 );

-- ** 音 ** --
--瞬間移動
SE017 = playSeVer2( spep_3 + 14, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_4 = spep_3 + 40;


------------------------------------------------------
-- 敵の目の前に現れ回し蹴り(86F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
kick_f = entryEffectLife( spep_4 + 0, SP_06r, 86, 0x100, -1, 0, 0, 0 );  --敵の目の前に現れ回し蹴り 手前 ef_005
setEffMoveKey( spep_4 + 0, kick_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, kick_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_f, -1.0, 1.0 );
setEffScaleKey( spep_4 + 86, kick_f, -1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_f, 0 );
setEffRotateKey( spep_4 + 86, kick_f, 0 );
setEffAlphaKey( spep_4 + 0, kick_f, 255 );
setEffAlphaKey( spep_4 + 86 -1, kick_f, 255 );
setEffAlphaKey( spep_4 + 86, kick_f, 0 );

kick_b = entryEffectLife( spep_4 + 0, SP_07, 86, 0x80, -1, 0, 0, 0 );  --敵の目の前に現れ回し蹴り 奥 ef_005_b
setEffMoveKey( spep_4 + 0, kick_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 86, kick_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, kick_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 86, kick_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, kick_b, 0 );
setEffRotateKey( spep_4 + 86, kick_b, 0 );
setEffAlphaKey( spep_4 + 0, kick_b, 255 );
setEffAlphaKey( spep_4 + 86 -1, kick_b, 255 );
setEffAlphaKey( spep_4 + 86, kick_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 64, 1, 0 );
changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 44, 1, 107 );

setMoveKey( spep_4 + 0, 1, -10.6, -6.6 , 0 );
setMoveKey( spep_4 + 1, 1, -10.3, -7 , 0 );
setMoveKey( spep_4 + 2, 1, -10, -7.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -9.7, -8 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -9.4, -8.5 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -9.1, -8.9 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -8.9, -9.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -8.6, -9.9 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -8.3, -10.3 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -8, -10.8 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -7.7, -11.3 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -7.4, -11.8 , 0 );
setMoveKey( spep_4 -3 + 24, 1, -7.1, -12.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -6.8, -12.7 , 0 );
setMoveKey( spep_4 -3 + 28, 1, -6.5, -13.2 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -6.2, -13.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, -5.9, -14.1 , 0 );
setMoveKey( spep_4 -3 + 34, 1, -5.6, -14.6 , 0 );
setMoveKey( spep_4 -3 + 36, 1, -5.3, -15.1 , 0 );
setMoveKey( spep_4 -3 + 38, 1, -5, -15.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -4.8, -16 , 0 );
setMoveKey( spep_4 -3 + 43, 1, -4.5, -16.5 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 146, 2.3 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 138.5, -35.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 178.9, -27.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 265.7, -92.5 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 321.6, -122.1 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 406.4, -174.5 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 500.1, -232.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 601.9, -295.2 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 711.1, -362.7 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 826.4, -432.9 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 826.4, -432.9 , 0 );

setScaleKey( spep_4 + 0, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 43, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 44, 1, 1.4, 1.4 );
setScaleKey( spep_4 -3 + 46, 1, 1.51, 1.5 );
setScaleKey( spep_4 -3 + 48, 1, 1.77, 1.74 );
setScaleKey( spep_4 -3 + 50, 1, 2.13, 2.09 );
setScaleKey( spep_4 -3 + 52, 1, 2.56, 2.51 );
setScaleKey( spep_4 -3 + 54, 1, 3.05, 3 );
setScaleKey( spep_4 -3 + 56, 1, 3.59, 3.55 );
setScaleKey( spep_4 -3 + 58, 1, 4.18, 4.14 );
setScaleKey( spep_4 -3 + 60, 1, 4.8, 4.78 );
setScaleKey( spep_4 -3 + 62, 1, 5.46, 5.46 );
setScaleKey( spep_4 -3 + 64, 1, 5.46, 5.46 );

setRotateKey( spep_4 + 0, 1, -49 );
setRotateKey( spep_4 + 1, 1, -48.7 );
setRotateKey( spep_4 + 2, 1, -48.4 );
setRotateKey( spep_4 -3 + 6, 1, -48.1 );
setRotateKey( spep_4 -3 + 8, 1, -47.9 );
setRotateKey( spep_4 -3 + 10, 1, -47.6 );
setRotateKey( spep_4 -3 + 12, 1, -47.3 );
setRotateKey( spep_4 -3 + 14, 1, -47 );
setRotateKey( spep_4 -3 + 16, 1, -46.7 );
setRotateKey( spep_4 -3 + 18, 1, -46.4 );
setRotateKey( spep_4 -3 + 20, 1, -46.1 );
setRotateKey( spep_4 -3 + 22, 1, -45.9 );
setRotateKey( spep_4 -3 + 24, 1, -45.6 );
setRotateKey( spep_4 -3 + 26, 1, -45.3 );
setRotateKey( spep_4 -3 + 28, 1, -45 );
setRotateKey( spep_4 -3 + 30, 1, -44.7 );
setRotateKey( spep_4 -3 + 32, 1, -44.4 );
setRotateKey( spep_4 -3 + 34, 1, -44.1 );
setRotateKey( spep_4 -3 + 36, 1, -43.9 );
setRotateKey( spep_4 -3 + 38, 1, -43.6 );
setRotateKey( spep_4 -3 + 40, 1, -43.3 );
setRotateKey( spep_4 -3 + 43, 1, -43 );
setRotateKey( spep_4 -3 + 44, 1, 41.1 );
setRotateKey( spep_4 -3 + 46, 1, 41.2 );
setRotateKey( spep_4 -3 + 64, 1, 41.2 );

-- ** 音 ** --
--瞬間移動
SE018 = playSeVer2( spep_4 + 2, 1109, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 70, 1109, "", 0, 0, 0, -1);

--蹴り飛ばし
SE019 = playSeVer2( spep_4 + 26, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 38, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 38, SE020, 87 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 86;


------------------------------------------------------
-- 瞬間移動で先回りして回し蹴り(76F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffectLife( spep_5 + 0, SP_08, 76, 0x100, -1, 0, 0, 0 );  --瞬間移動で先回りして回し蹴り 手前 ef_006
setEffMoveKey( spep_5 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_f, 0 );
setEffRotateKey( spep_5 + 76, hit_f, 0 );
setEffAlphaKey( spep_5 + 0, hit_f, 255 );
setEffAlphaKey( spep_5 + 76 -1, hit_f, 255 );
setEffAlphaKey( spep_5 + 76, hit_f, 0 );

hit_b = entryEffectLife( spep_5 + 0, SP_09, 76, 0x80, -1, 0, 0, 0 );  --瞬間移動で先回りして回し蹴り 奥 ef_006_b
setEffMoveKey( spep_5 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_5 + 76, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_5 + 76, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, hit_b, 0 );
setEffRotateKey( spep_5 + 76, hit_b, 0 );
setEffAlphaKey( spep_5 + 0, hit_b, 255 );
setEffAlphaKey( spep_5 + 76 -1, hit_b, 255 );
setEffAlphaKey( spep_5 + 76, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_5 + 2, 1, 1 );
setDisp( spep_5 -3 + 66, 1, 0 );
changeAnime( spep_5 + 2, 1, 5 );
changeAnime( spep_5 -3 + 36, 1, 107 );

setMoveKey( spep_5 + 2, 1, 411.2, -354.3 , 0 );
setMoveKey( spep_5 -3 + 6, 1, 387.3, -335.4 , 0 );
setMoveKey( spep_5 -3 + 8, 1, 363.4, -316.5 , 0 );
setMoveKey( spep_5 -3 + 10, 1, 339.5, -297.5 , 0 );
setMoveKey( spep_5 -3 + 12, 1, 315.7, -278.5 , 0 );
setMoveKey( spep_5 -3 + 14, 1, 291.9, -259.4 , 0 );
setMoveKey( spep_5 -3 + 16, 1, 268.1, -240.3 , 0 );
setMoveKey( spep_5 -3 + 18, 1, 244.4, -221.2 , 0 );
setMoveKey( spep_5 -3 + 20, 1, 220.7, -202.1 , 0 );
setMoveKey( spep_5 -3 + 22, 1, 197.1, -182.9 , 0 );
setMoveKey( spep_5 -3 + 24, 1, 173.4, -163.7 , 0 );
setMoveKey( spep_5 -3 + 26, 1, 149.9, -144.4 , 0 );
setMoveKey( spep_5 -3 + 28, 1, 126.3, -125.1 , 0 );
setMoveKey( spep_5 -3 + 30, 1, 102.8, -105.8 , 0 );
setMoveKey( spep_5 -3 + 32, 1, 79.3, -86.4 , 0 );
setMoveKey( spep_5 -3 + 34, 1, 55.8, -67 , 0 );
setMoveKey( spep_5 -3 + 35, 1, 55.8, -67 , 0 );--
setMoveKey( spep_5 -3 + 36, 1, 58.8, 79.6 , 0 );
setMoveKey( spep_5 -3 + 38, 1, 45.1, 81.9 , 0 );
setMoveKey( spep_5 -3 + 40, 1, 31.3, 84.2 , 0 );
setMoveKey( spep_5 -3 + 42, 1, 17.5, 86.5 , 0 );
setMoveKey( spep_5 -3 + 44, 1, 3.8, 88.8 , 0 );
setMoveKey( spep_5 -3 + 46, 1, -10, 91.1 , 0 );
setMoveKey( spep_5 -3 + 48, 1, -23.8, 93.4 , 0 );
setMoveKey( spep_5 -3 + 50, 1, -37.5, 95.7 , 0 );
setMoveKey( spep_5 -3 + 52, 1, -51.3, 98 , 0 );
setMoveKey( spep_5 -3 + 54, 1, 189.5, 112 , 0 );
setMoveKey( spep_5 -3 + 56, 1, 443.1, 138.8 , 0 );
setMoveKey( spep_5 -3 + 58, 1, 645.7, 110.6 , 0 );
setMoveKey( spep_5 -3 + 60, 1, 933.5, 138.9 , 0 );
setMoveKey( spep_5 -3 + 62, 1, 1129.9, 190.4 , 0 );
setMoveKey( spep_5 -3 + 64, 1, 1394.5, 176.6 , 0 );
setMoveKey( spep_5 -3 + 66, 1, 1394.5, 176.6 , 0 );

setScaleKey( spep_5 + 2, 1, 6.512, 6.512 );
setScaleKey( spep_5 -3 + 6, 1, 6.215, 6.215 );
setScaleKey( spep_5 -3 + 8, 1, 5.907, 5.907 );
setScaleKey( spep_5 -3 + 10, 1, 5.599, 5.599 );
setScaleKey( spep_5 -3 + 12, 1, 5.291, 5.291 );
setScaleKey( spep_5 -3 + 14, 1, 4.994, 4.994 );
setScaleKey( spep_5 -3 + 16, 1, 4.686, 4.686 );
setScaleKey( spep_5 -3 + 18, 1, 4.378, 4.378 );
setScaleKey( spep_5 -3 + 20, 1, 4.07, 4.07 );
setScaleKey( spep_5 -3 + 22, 1, 3.773, 3.773 );
setScaleKey( spep_5 -3 + 24, 1, 3.465, 3.465 );
setScaleKey( spep_5 -3 + 26, 1, 3.157, 3.157 );
setScaleKey( spep_5 -3 + 28, 1, 2.849, 2.849 );
setScaleKey( spep_5 -3 + 30, 1, 2.541, 2.541 );
setScaleKey( spep_5 -3 + 32, 1, 2.244, 2.244 );
setScaleKey( spep_5 -3 + 34, 1, 1.936, 1.936 );
setScaleKey( spep_5 -3 + 35, 1, 1.936, 1.936 );--
setScaleKey( spep_5 -3 + 36, 1, 3.4, 3.4 );
setScaleKey( spep_5 -3 + 66, 1, 3.4, 3.4 );

setRotateKey( spep_5 + 2, 1, 0 );
setRotateKey( spep_5 -3 + 6, 1, -0.3 );
setRotateKey( spep_5 -3 + 8, 1, -0.7 );
setRotateKey( spep_5 -3 + 10, 1, -1 );
setRotateKey( spep_5 -3 + 12, 1, -1.3 );
setRotateKey( spep_5 -3 + 14, 1, -1.7 );
setRotateKey( spep_5 -3 + 16, 1, -2 );
setRotateKey( spep_5 -3 + 18, 1, -2.3 );
setRotateKey( spep_5 -3 + 20, 1, -2.7 );
setRotateKey( spep_5 -3 + 22, 1, -3 );
setRotateKey( spep_5 -3 + 24, 1, -3.3 );
setRotateKey( spep_5 -3 + 26, 1, -3.7 );
setRotateKey( spep_5 -3 + 28, 1, -4 );
setRotateKey( spep_5 -3 + 30, 1, -4.3 );
setRotateKey( spep_5 -3 + 32, 1, -4.7 );
setRotateKey( spep_5 -3 + 34, 1, -5 );
setRotateKey( spep_5 -3 + 35, 1, -5 );--
setRotateKey( spep_5 -3 + 36, 1, 0 );
setRotateKey( spep_5 -3 + 38, 1, -0.3 );
setRotateKey( spep_5 -3 + 40, 1, -0.7 );
setRotateKey( spep_5 -3 + 42, 1, -1 );
setRotateKey( spep_5 -3 + 44, 1, -1.4 );
setRotateKey( spep_5 -3 + 46, 1, -1.7 );
setRotateKey( spep_5 -3 + 48, 1, -2.1 );
setRotateKey( spep_5 -3 + 50, 1, -2.4 );
setRotateKey( spep_5 -3 + 52, 1, -2.8 );
setRotateKey( spep_5 -3 + 54, 1, -5.9 );
setRotateKey( spep_5 -3 + 56, 1, -9 );
setRotateKey( spep_5 -3 + 58, 1, -12.1 );
setRotateKey( spep_5 -3 + 60, 1, -15.2 );
setRotateKey( spep_5 -3 + 62, 1, -18.3 );
setRotateKey( spep_5 -3 + 64, 1, -21.4 );
setRotateKey( spep_5 -3 + 66, 1, -21.4 );

-- ** 音 ** --
--振りかぶり
SE022 = playSeVer2( spep_5 + 18, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_5 + 18, 1116, "",spep_5 + 50, 0, 10, -1);
SE024 = playSeVer2( spep_5 + 28, 1278, "",spep_5 + 60, 0, 14, -1);

--蹴り飛ばし2
SE025 = playSeVer2( spep_5 + 44, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 44, SE025, 60 );
SE026 = playSeVer2( spep_5 + 48, 1010, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_5 + 48, 1190, "",spep_5 +76 + 14, 0, 22, -1);
SE028 = playSeVer2( spep_5 + 50, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 50, SE028, 84 );

--宙返り
SE029 = playSeVer2( spep_5 + 74, 1117, "",spep_5 +76 +66 + 14, 0, 44, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 76 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 76;


------------------------------------------------------
-- 宙返り(66F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
ssault_f = entryEffectLife( spep_6 + 0, SP_10, 66, 0x100, -1, 0, 0, 0 );  --宙返り 手前 ef_007
setEffMoveKey( spep_6 + 0, ssault_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, ssault_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ssault_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, ssault_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ssault_f, 0 );
setEffRotateKey( spep_6 + 66, ssault_f, 0 );
setEffAlphaKey( spep_6 + 0, ssault_f, 255 );
setEffAlphaKey( spep_6 + 66 -1, ssault_f, 255 );
setEffAlphaKey( spep_6 + 66, ssault_f, 0 );

ssault_b = entryEffectLife( spep_6 + 0, SP_11, 66, 0x80, -1, 0, 0, 0 );  --宙返り 奥 ef_007_b
setEffMoveKey( spep_6 + 0, ssault_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 66, ssault_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, ssault_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 66, ssault_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, ssault_b, 0 );
setEffRotateKey( spep_6 + 66, ssault_b, 0 );
setEffAlphaKey( spep_6 + 0, ssault_b, 255 );
setEffAlphaKey( spep_6 + 66 -1, ssault_b, 255 );
setEffAlphaKey( spep_6 + 66, ssault_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
setDisp( spep_6 -3 + 69, 1, 0 );
changeAnime( spep_6 -3 + 0, 1, 108 );

setMoveKey( spep_6 + 0, 1, 7.8, 5.6 , 0 );
setMoveKey( spep_6 + 1, 1, 8.2, 5.3 , 0 );
setMoveKey( spep_6 + 2, 1, 8.6, 5 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 9.1, 4.7 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 9.5, 4.3 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 9.9, 4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 10.3, 3.7 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 10.7, 3.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 11.2, 3.1 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 11.6, 2.8 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 12, 2.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 12.4, 2.1 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 12.8, 1.8 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 13.3, 1.5 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 13.7, 1.2 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 14.1, 0.9 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 14.5, 0.6 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 14.9, 0.2 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 15.4, -0.1 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 15.8, -0.4 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 16.2, -0.7 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 16.6, -1 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 17.1, -1.3 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 17.5, -1.7 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 17.9, -2 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 18.3, -2.3 , 0 );
setMoveKey( spep_6 -3 + 52, 1, 18.7, -2.6 , 0 );
setMoveKey( spep_6 -3 + 54, 1, 19.2, -2.9 , 0 );
setMoveKey( spep_6 -3 + 56, 1, 19.6, -3.2 , 0 );
setMoveKey( spep_6 -3 + 58, 1, 20, -3.5 , 0 );
setMoveKey( spep_6 -3 + 60, 1, 20.4, -3.9 , 0 );
setMoveKey( spep_6 -3 + 62, 1, 20.8, -4.2 , 0 );
setMoveKey( spep_6 -3 + 64, 1, 21.3, -4.5 , 0 );
setMoveKey( spep_6 -3 + 66, 1, 21.7, -4.8 , 0 );
setMoveKey( spep_6 -3 + 68, 1, 22.1, -5.1 , 0 );
setMoveKey( spep_6 -3 + 69, 1, 22.1, -5.1 , 0 );

setScaleKey( spep_6 + 0, 1, 1, 1 );
setScaleKey( spep_6 -3 + 69, 1, 1, 1 );

setRotateKey( spep_6 + 0, 1, 0 );
setRotateKey( spep_6 -3 + 69, 1, 0 );

-- ** 音 ** --
--宙返り
--SE029 = playSeVer2( spep_6 + 2, 1117, "",spep_6 +66 + 18, 0, 44, -1);
SE030 = playSeVer2( spep_6 + 12, 44, "", 0, 0, 0, -1);

--画面遷移
SE031 = playSeVer2( spep_6 + 30, 1072, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 66;


------------------------------------------------------
-- 悟空が上から落ちてくる(42F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
down = entryEffectLife( spep_7 + 0, SP_12, 42, 0x100, -1, 0, 0, 0 );  --悟空が上から落ちてくる ef_008
setEffMoveKey( spep_7 + 0, down, 0, 0 , 0 );
setEffMoveKey( spep_7 + 42, down, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, down, 1.0, 1.0 );
setEffScaleKey( spep_7 + 42, down, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, down, 0 );
setEffRotateKey( spep_7 + 42, down, 0 );
setEffAlphaKey( spep_7 + 0, down, 255 );
setEffAlphaKey( spep_7 + 42 -1, down, 255 );
setEffAlphaKey( spep_7 + 42, down, 0 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 42 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 42;


------------------------------------------------------
-- 蹴り上げる(40F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
kickup_f = entryEffectLife( spep_8 + 0, SP_13r, 40, 0x100, -1, 0, 0, 0 );  --蹴り上げる 手前 ef_009
setEffMoveKey( spep_8 + 0, kickup_f, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, kickup_f, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kickup_f, -1.0, 1.0 );
setEffScaleKey( spep_8 + 40, kickup_f, -1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kickup_f, 0 );
setEffRotateKey( spep_8 + 40, kickup_f, 0 );
setEffAlphaKey( spep_8 + 0, kickup_f, 255 );
setEffAlphaKey( spep_8 + 40 -1, kickup_f, 255 );
setEffAlphaKey( spep_8 + 40, kickup_f, 0 );

kickup_b = entryEffectLife( spep_8 + 0, SP_14, 40, 0x80, -1, 0, 0, 0 );  --蹴り上げる 奥 ef_009_b
setEffMoveKey( spep_8 + 0, kickup_b, 0, 0 , 0 );
setEffMoveKey( spep_8 + 40, kickup_b, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, kickup_b, 1.0, 1.0 );
setEffScaleKey( spep_8 + 40, kickup_b, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, kickup_b, 0 );
setEffRotateKey( spep_8 + 40, kickup_b, 0 );
setEffAlphaKey( spep_8 + 0, kickup_b, 255 );
setEffAlphaKey( spep_8 + 40 -1, kickup_b, 255 );
setEffAlphaKey( spep_8 + 40, kickup_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_8 + 0, 1, 1 );
--setDisp( spep_8 -3 + 43, 1, 0 );
changeAnime( spep_8 + 0, 1, 108 );
changeAnime( spep_8 -3 + 16, 1, 6 );

setMoveKey( spep_8 + 0, 1, -0.6, 14 , 0 );
setMoveKey( spep_8 + 1, 1, 0.6, 12.8 , 0 );
setMoveKey( spep_8 + 2, 1, 1.8, 11.6 , 0 );
setMoveKey( spep_8 -3 + 6, 1, 3, 10.4 , 0 );
setMoveKey( spep_8 -3 + 8, 1, 4.2, 9.2 , 0 );
setMoveKey( spep_8 -3 + 10, 1, 5.4, 8 , 0 );
setMoveKey( spep_8 -3 + 12, 1, 6.6, 6.8 , 0 );
setMoveKey( spep_8 -3 + 15, 1, 7.8, 5.6 , 0 );
setMoveKey( spep_8 -3 + 16, 1, -41, 62 , 0 );
setMoveKey( spep_8 -3 + 18, 1, -57, 82.5 , 0 );
setMoveKey( spep_8 -3 + 20, 1, -43.1, 61.6 , 0 );
setMoveKey( spep_8 -3 + 22, 1, -62.8, 65 , 0 );
setMoveKey( spep_8 -3 + 24, 1, -50.9, 76 , 0 );
setMoveKey( spep_8 -3 + 26, 1, -54.7, 78.8 , 0 );
setMoveKey( spep_8 -3 + 28, 1, -58.3, 81.5 , 0 );
setMoveKey( spep_8 -3 + 30, 1, -59.7, 80 , 0 );
setMoveKey( spep_8 -3 + 32, 1, -61, 78.5 , 0 );
setMoveKey( spep_8 -3 + 34, 1, -62, 79.3 , 0 );
setMoveKey( spep_8 -3 + 36, 1, -62.9, 80 , 0 );
setMoveKey( spep_8 -3 + 38, 1, -63.7, 80.7 , 0 );
setMoveKey( spep_8 -3 + 40, 1, -64.4, 81.3 , 0 );
setMoveKey( spep_8 -3 + 42, 1, -65.1, 81.9 , 0 );
--setMoveKey( spep_8 -3 + 43, 1, -65.1, 81.9 , 0 );

setScaleKey( spep_8 + 0, 1, 1, 1 );
setScaleKey( spep_8 -3 + 42, 1, 1, 1 );
--setScaleKey( spep_8 -3 + 43, 1, 1, 1 );

setRotateKey( spep_8 + 0, 1, 0 );
setRotateKey( spep_8 -3 + 15, 1, 0 );
setRotateKey( spep_8 -3 + 16, 1, 45 );
setRotateKey( spep_8 -3 + 18, 1, 41.7 );
setRotateKey( spep_8 -3 + 20, 1, 40.4 );
setRotateKey( spep_8 -3 + 22, 1, 39.5 );
setRotateKey( spep_8 -3 + 24, 1, 38.7 );
setRotateKey( spep_8 -3 + 26, 1, 38.1 );
setRotateKey( spep_8 -3 + 28, 1, 37.6 );
setRotateKey( spep_8 -3 + 30, 1, 37.1 );
setRotateKey( spep_8 -3 + 32, 1, 36.6 );
setRotateKey( spep_8 -3 + 34, 1, 36.2 );
setRotateKey( spep_8 -3 + 36, 1, 35.9 );
setRotateKey( spep_8 -3 + 38, 1, 35.6 );
setRotateKey( spep_8 -3 + 40, 1, 35.3 );
setRotateKey( spep_8 -3 + 42, 1, 35 );
--setRotateKey( spep_8 -3 + 43, 1, 35 );

-- ** 音 ** --
--蹴り上げ
SE032 = playSeVer2( spep_8 + 2, 1189, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_8 + 8, 1120, "", 0, 0, 0, -1);

--敵飛んでいく
SE034 = playSeVer2( spep_8 + 20, 1183, "",spep_8 +40 +46 + 48, 0, 54, -1);
setSeVolumeByWorkId( spep_8 + 20, SE034, 73 );

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 40 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 40;


------------------------------------------------------
-- 瞬間移動で先回り(46F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
advance = entryEffectLife( spep_9 + 0, SP_15, 46, 0x80, -1, 0, 0, 0 );  --瞬間移動で先回り ef_010
setEffMoveKey( spep_9 + 0, advance, 0, 0 , 0 );
setEffMoveKey( spep_9 + 46, advance, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, advance, 1.0, 1.0 );
setEffScaleKey( spep_9 + 46, advance, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, advance, 0 );
setEffRotateKey( spep_9 + 46, advance, 0 );
setEffAlphaKey( spep_9 + 0, advance, 255 );
setEffAlphaKey( spep_9 + 46 -1, advance, 255 );
setEffAlphaKey( spep_9 + 46, advance, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_9 -3 + 0, 1, 1 );
setDisp( spep_9 -3 + 49, 1, 0 );
changeAnime( spep_9 + 0, 1, 5 );

setMoveKey( spep_9 + 0, 1, 429.6, 142.4 , 0 );
setMoveKey( spep_9 + 1, 1, 416.9, 140.1 , 0 );
setMoveKey( spep_9 + 2, 1, 404.3, 137.8 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 391.6, 135.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 378.9, 133.3 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 366.1, 131.1 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 353.4, 128.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 340.6, 126.6 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 327.8, 124.4 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 315, 122.2 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 302.2, 120.1 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 289.3, 114.9 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 276.5, 109.7 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 263.6, 104.6 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 250.7, 99.4 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 237.8, 94.3 , 0 );
setMoveKey( spep_9 -3 + 32, 1, 224.8, 89.2 , 0 );
setMoveKey( spep_9 -3 + 34, 1, 211.9, 84.1 , 0 );
setMoveKey( spep_9 -3 + 36, 1, 198.9, 79 , 0 );
setMoveKey( spep_9 -3 + 38, 1, 185.9, 73.9 , 0 );
setMoveKey( spep_9 -3 + 40, 1, 172.9, 68.8 , 0 );
setMoveKey( spep_9 -3 + 42, 1, 159.9, 63.8 , 0 );
setMoveKey( spep_9 -3 + 44, 1, 146.8, 58.7 , 0 );
setMoveKey( spep_9 -3 + 46, 1, 133.7, 53.7 , 0 );
setMoveKey( spep_9 -3 + 48, 1, 120.6, 48.6 , 0 );
setMoveKey( spep_9 -3 + 49, 1, 120.6, 48.6 , 0 );

setScaleKey( spep_9 + 0, 1, 6.51, 6.51 );
setScaleKey( spep_9 + 1, 1, 6.33, 6.33 );
setScaleKey( spep_9 + 2, 1, 6.16, 6.16 );
setScaleKey( spep_9 -3 + 6, 1, 5.98, 5.98 );
setScaleKey( spep_9 -3 + 8, 1, 5.8, 5.8 );
setScaleKey( spep_9 -3 + 10, 1, 5.62, 5.62 );
setScaleKey( spep_9 -3 + 12, 1, 5.45, 5.45 );
setScaleKey( spep_9 -3 + 14, 1, 5.27, 5.27 );
setScaleKey( spep_9 -3 + 16, 1, 5.09, 5.09 );
setScaleKey( spep_9 -3 + 18, 1, 4.91, 4.91 );
setScaleKey( spep_9 -3 + 20, 1, 4.74, 4.74 );
setScaleKey( spep_9 -3 + 22, 1, 4.56, 4.56 );
setScaleKey( spep_9 -3 + 24, 1, 4.38, 4.38 );
setScaleKey( spep_9 -3 + 26, 1, 4.2, 4.2 );
setScaleKey( spep_9 -3 + 28, 1, 4.03, 4.03 );
setScaleKey( spep_9 -3 + 30, 1, 3.85, 3.85 );
setScaleKey( spep_9 -3 + 32, 1, 3.67, 3.67 );
setScaleKey( spep_9 -3 + 34, 1, 3.49, 3.49 );
setScaleKey( spep_9 -3 + 36, 1, 3.32, 3.32 );
setScaleKey( spep_9 -3 + 38, 1, 3.14, 3.14 );
setScaleKey( spep_9 -3 + 40, 1, 2.96, 2.96 );
setScaleKey( spep_9 -3 + 42, 1, 2.78, 2.78 );
setScaleKey( spep_9 -3 + 44, 1, 2.61, 2.61 );
setScaleKey( spep_9 -3 + 46, 1, 2.43, 2.43 );
setScaleKey( spep_9 -3 + 48, 1, 2.25, 2.25 );
setScaleKey( spep_9 -3 + 49, 1, 2.25, 2.25 );

setRotateKey( spep_9 + 0, 1, 4 );
setRotateKey( spep_9 + 1, 1, 3.5 );
setRotateKey( spep_9 + 2, 1, 3.1 );
setRotateKey( spep_9 -3 + 6, 1, 2.6 );
setRotateKey( spep_9 -3 + 8, 1, 2.2 );
setRotateKey( spep_9 -3 + 10, 1, 1.7 );
setRotateKey( spep_9 -3 + 12, 1, 1.3 );
setRotateKey( spep_9 -3 + 14, 1, 0.8 );
setRotateKey( spep_9 -3 + 16, 1, 0.3 );
setRotateKey( spep_9 -3 + 18, 1, -0.1 );
setRotateKey( spep_9 -3 + 20, 1, -0.6 );
setRotateKey( spep_9 -3 + 22, 1, -1 );
setRotateKey( spep_9 -3 + 24, 1, -1.5 );
setRotateKey( spep_9 -3 + 26, 1, -2 );
setRotateKey( spep_9 -3 + 28, 1, -2.4 );
setRotateKey( spep_9 -3 + 30, 1, -2.9 );
setRotateKey( spep_9 -3 + 32, 1, -3.3 );
setRotateKey( spep_9 -3 + 34, 1, -3.8 );
setRotateKey( spep_9 -3 + 36, 1, -4.2 );
setRotateKey( spep_9 -3 + 38, 1, -4.7 );
setRotateKey( spep_9 -3 + 40, 1, -5.2 );
setRotateKey( spep_9 -3 + 42, 1, -5.6 );
setRotateKey( spep_9 -3 + 44, 1, -6.1 );
setRotateKey( spep_9 -3 + 46, 1, -6.5 );
setRotateKey( spep_9 -3 + 48, 1, -7 );
setRotateKey( spep_9 -3 + 49, 1, -7 );

-- ** 音 ** --
--瞬間移動
SE035 = playSeVer2( spep_9 + 2, 1109, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 46 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 46;


------------------------------------------------------
-- 悟空バストアップ(86F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
bustup = entryEffectLife( spep_10 + 0, SP_16, 86, 0x100, -1, 0, 0, 0 );  --悟空バストアップ ef_011
setEffMoveKey( spep_10 + 0, bustup, 0, 0 , 0 );
setEffMoveKey( spep_10 + 86, bustup, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, bustup, 1.0, 1.0 );
setEffScaleKey( spep_10 + 86, bustup, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, bustup, 0 );
setEffRotateKey( spep_10 + 86, bustup, 0 );
setEffAlphaKey( spep_10 + 0, bustup, 255 );
setEffAlphaKey( spep_10 + 86 -1, bustup, 255 );
setEffAlphaKey( spep_10 + 86, bustup, 0 );

-- ** 顔カットイン ** --
spep_x = spep_10 + 0;
-- ** 顔カットイン ** --
--peff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0 );  --カットイン(顔)
--etEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--peff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
--etEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

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
--顔カットイン
SE036 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 86 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 白フェード ** --
entryFade( spep_10 + 80 -1, 6 +1, 2, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_11 = spep_10 + 86;


--------------------------------------
--カードカットイン(94F)
--------------------------------------
--spep_11 = 0;
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_11 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_11 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_11 + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_11 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_11 + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_11 + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_11 + 0, shuchusen, 0 );
setEffRotateKey( spep_11 + 90, shuchusen, 0 );
setEffAlphaKey( spep_11 + 0, shuchusen, 255 );
setEffAlphaKey( spep_11 + 90, shuchusen, 255 );

-- ** 白背景 ** --
entryFadeBg( spep_11 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_11 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_11 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 音 ** --
playSe( spep_11 + 0, SE_05 );

--気弾溜め
SE038 = playSeVer2( spep_11 + 86, 1266, "",spep_11 +94 +66 +56 + 14, 14, 10, -1);
setSeVolumeByWorkId( spep_11 + 86, SE038, 85 );
setStartTimeMs( SE038,  783 );
SE039 = playSeVer2( spep_11 +86, 1204, "",spep_11 +94 +66 +56 + 14, 0, 10, -1);
setPitch( spep_11 + 86, SE039, -200 );
setTimeStretch( SE039, 0.87, 30, 4 );

-- ** 次の準備 ** --
spep_12 = spep_11 + 94


------------------------------------------------------
-- 気弾を溜める(66F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
tame = entryEffectLife( spep_12 + 0, SP_17, 66, 0x100, -1, 0, 0, 0 );  --気弾を溜める ef_012
setEffMoveKey( spep_12 + 0, tame, 0, 0 , 0 );
setEffMoveKey( spep_12 + 66, tame, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, tame, 1.0, 1.0 );
setEffScaleKey( spep_12 + 66, tame, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, tame, 0 );
setEffRotateKey( spep_12 + 66, tame, 0 );
setEffAlphaKey( spep_12 + 0, tame, 255 );
setEffAlphaKey( spep_12 + 66 -1, tame, 255 );
setEffAlphaKey( spep_12 + 66, tame, 0 );

-- ** 音 ** --
--気弾大きくなる
SE040 = playSeVer2( spep_12 + 28, 1273, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE040, 106 );
SE041 = playSeVer2( spep_12 + 28, 1209, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_12 + 28, SE041, 58 );

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 66 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_13 = spep_12 + 66;


------------------------------------------------------
-- 気弾を敵に放つ(56F)
------------------------------------------------------
--spep_13 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffectLife( spep_13 + 0, SP_18, 56, 0x100, -1, 0, 0, 0 );  --気弾を敵に放つ 手前 ef_013
setEffMoveKey( spep_13 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_13 + 56, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, shot_f, 0 );
setEffRotateKey( spep_13 + 56, shot_f, 0 );
setEffAlphaKey( spep_13 + 0, shot_f, 255 );
setEffAlphaKey( spep_13 + 56 -1, shot_f, 255 );
setEffAlphaKey( spep_13 + 56, shot_f, 0 );

shot_b = entryEffectLife( spep_13 + 0, SP_19, 56, 0x80, -1, 0, 0, 0 );  --気弾を敵に放つ 奥 ef_013_b
setEffMoveKey( spep_13 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_13 + 56, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_13 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_13 + 56, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_13 + 0, shot_b, 0 );
setEffRotateKey( spep_13 + 56, shot_b, 0 );
setEffAlphaKey( spep_13 + 0, shot_b, 255 );
setEffAlphaKey( spep_13 + 56 -1, shot_b, 255 );
setEffAlphaKey( spep_13 + 56, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_13 + 0, 1, 1 );
setDisp( spep_13 -3 + 59, 1, 0 );
changeAnime( spep_13 -3 + 0, 1, 6 );

setMoveKey( spep_13 + 0, 1, 185.6, 48.7 , 0 );
setMoveKey( spep_13 + 1, 1, 184.2, 49.9 , 0 );
setMoveKey( spep_13 + 2, 1, 178.4, 46.5 , 0 );
setMoveKey( spep_13 -3 + 6, 1, 177, 43.2 , 0 );
setMoveKey( spep_13 -3 + 8, 1, 171.2, 44.4 , 0 );
setMoveKey( spep_13 -3 + 10, 1, 169.9, 45.5 , 0 );
setMoveKey( spep_13 -3 + 12, 1, 168.5, 42.2 , 0 );
setMoveKey( spep_13 -3 + 14, 1, 162.7, 43.4 , 0 );
setMoveKey( spep_13 -3 + 16, 1, 156.9, 40.1 , 0 );
setMoveKey( spep_13 -3 + 18, 1, 155.6, 41.2 , 0 );
setMoveKey( spep_13 -3 + 20, 1, 149.7, 42.4 , 0 );
setMoveKey( spep_13 -3 + 22, 1, 145, 42.4 , 0 );
setMoveKey( spep_13 -3 + 24, 1, 147.1, 42.5 , 0 );
setMoveKey( spep_13 -3 + 26, 1, 136.7, 34.6 , 0 );
setMoveKey( spep_13 -3 + 28, 1, 139.9, 26.8 , 0 );
setMoveKey( spep_13 -3 + 30, 1, 131.8, 30.2 , 0 );
setMoveKey( spep_13 -3 + 32, 1, 132.7, 33.7 , 0 );
setMoveKey( spep_13 -3 + 34, 1, 126.9, 30.3 , 0 );
setMoveKey( spep_13 -3 + 36, 1, 127.8, 24.7 , 0 );
setMoveKey( spep_13 -3 + 38, 1, 117.5, 30.4 , 0 );
setMoveKey( spep_13 -3 + 40, 1, 126.5, 37.2 , 0 );
setMoveKey( spep_13 -3 + 42, 1, 117.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 44, 1, 124.2, 21.4 , 0 );
setMoveKey( spep_13 -3 + 46, 1, 117.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 48, 1, 124.2, 32.7 , 0 );
setMoveKey( spep_13 -3 + 50, 1, 117.5, 25.9 , 0 );
setMoveKey( spep_13 -3 + 52, 1, 122, 21.4 , 0 );
setMoveKey( spep_13 -3 + 54, 1, 115.2, 28.2 , 0 );
setMoveKey( spep_13 -3 + 56, 1, 122, 32.7 , 0 );
setMoveKey( spep_13 -3 + 58, 1, 126.5, 28.2 , 0 );
setMoveKey( spep_13 -3 + 59, 1, 126.5, 28.2 , 0 );

setScaleKey( spep_13 + 0, 1, 1.59, 1.59 );
setScaleKey( spep_13 -3 + 59, 1, 1.59, 1.59 );

setRotateKey( spep_13 + 0, 1, 58.9 );
setRotateKey( spep_13 + 1, 1, 58.2 );
setRotateKey( spep_13 + 2, 1, 57.5 );
setRotateKey( spep_13 -3 + 6, 1, 56.9 );
setRotateKey( spep_13 -3 + 8, 1, 56.2 );
setRotateKey( spep_13 -3 + 10, 1, 55.5 );
setRotateKey( spep_13 -3 + 12, 1, 54.8 );
setRotateKey( spep_13 -3 + 14, 1, 54.1 );
setRotateKey( spep_13 -3 + 16, 1, 53.4 );
setRotateKey( spep_13 -3 + 18, 1, 52.7 );
setRotateKey( spep_13 -3 + 20, 1, 52 );
setRotateKey( spep_13 -3 + 22, 1, 51.3 );
setRotateKey( spep_13 -3 + 24, 1, 50.6 );
setRotateKey( spep_13 -3 + 26, 1, 49.9 );
setRotateKey( spep_13 -3 + 28, 1, 49.2 );
setRotateKey( spep_13 -3 + 30, 1, 48.5 );
setRotateKey( spep_13 -3 + 32, 1, 47.8 );
setRotateKey( spep_13 -3 + 34, 1, 47.1 );
setRotateKey( spep_13 -3 + 36, 1, 46.4 );
setRotateKey( spep_13 -3 + 38, 1, 45.7 );
setRotateKey( spep_13 -3 + 59, 1, 45.7 );

-- ** 音 ** --
--気弾押し付ける
SE042 = playSeVer2( spep_13 + 2, 1144, "",spep_13 +56 + 26, 22, 20, 0.6);
setSeVolumeByWorkId( spep_13 + 2, SE042, 83 );
setStartTimeMs( SE042,  450 );
SE043 = playSeVer2( spep_13 + 10, 1276, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_13 + 10, SE043, 122 );

--気弾発射
SE044 = playSeVer2( spep_13 + 54, 1213, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_13 + 54, SE044, 63 );
SE045 = playSeVer2( spep_13 + 54, 1177, "",spep_13 +56 + 86, 0, 50, -1);
setSeVolumeByWorkId( spep_13 + 54, SE045, 78 );

-- ** 黒背景 ** --
entryFadeBg( spep_13 + 0, 0, 56 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景

-- ** 次の準備 ** --
spep_14 = spep_13 + 56;


------------------------------------------------------
-- フィニッシュ絵(136F)
------------------------------------------------------
--spep_14 = 0;

-- ** エフェクト等 ** --
finish = entryEffect( spep_14 + 0, SP_20, 0x100, -1, 0, 0, 0 );  --フィニッシュ絵 ef_014
setEffMoveKey( spep_14 + 0, finish, 0, 0 , 0 );
setEffMoveKey( spep_14 + 136, finish, 0, 0 , 0 );
setEffScaleKey( spep_14 + 0, finish, 1.0, 1.0 );
setEffScaleKey( spep_14 + 136, finish, 1.0, 1.0 );
setEffRotateKey( spep_14 + 0, finish, 0 );
setEffRotateKey( spep_14 + 136, finish, 0 );
setEffAlphaKey( spep_14 + 0, finish, 255 );
setEffAlphaKey( spep_14 + 136, finish, 255 );

-- ** 音 ** --
--爆発
SE046 = playSeVer2( spep_14 + 8, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 8, SE046, 90 );
SE047 = playSeVer2( spep_14 + 8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_14 + 8, SE047, 82 );

-- ** 黒背景 ** --
entryFadeBg( spep_14 + 0, 0, 136 + 2, 0, 0, 0, 0, 255);       -- ベース暗め 背景


-- ** ダメージ表示 ** --
dealDamage( spep_14 + 26 );
endPhase( spep_14 + 126 );

end