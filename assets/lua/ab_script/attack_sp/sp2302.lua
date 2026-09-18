--1023380:UR_ドクター・ゲロ&人造人間19号_必殺技：バイオニックパニッシャー
--sp_effect_a3_00086
--sp2302

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

SE_01 = 9; --気を貯める
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
SP_01 = 158669; --正面に向かって出てくる。 ef_001
SP_02 = 158670; --敵に向かって体当たりからの連撃、叩き落とし ef_002
SP_03 = 158671; --敵に向かって体当たりからの連撃、叩き落とし ef_002_back
SP_06 = 158674; --ゲロの手UP、地面の敵を掴みに行く ef_003
SP_08 = 158676; --敵の掴み上げ、ぶん投げ、１９号合流 ef_004
SP_09 = 158677; --敵の掴み上げ、ぶん投げ、１９号合流 ef_004_back
SP_12 = 158680; --ゲロ＆19号、目からビーム→フィニッシュ ef_005
SP_13 = 158681; --ゲロ＆19号、目からビーム→フィニッシュ ef_005_back

--エフェクト(てき)
SP_04 = 158672; --敵に向かって体当たりからの連撃、叩き落とし ef_002_r
SP_05 = 158673; --敵に向かって体当たりからの連撃、叩き落とし ef_002_r_back
SP_07 = 158675; --ゲロの手UP、地面の敵を掴みに行く ef_003_r 
SP_10 = 158678; --敵の掴み上げ、ぶん投げ、１９号合流 ef_004_r
SP_11 = 158679; --敵の掴み上げ、ぶん投げ、１９号合流 ef_004_r_back
SP_14 = 158682; --ゲロ＆19号、目からビーム→フィニッシュ ef_005_r
SP_15 = 158683; --ゲロ＆19号、目からビーム→フィニッシュ ef_005_r_back


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
setScaleKey(  0,   0,  1.6, 1.6);
setScaleKey(  1,   0,  1.6, 1.6);
setScaleKey(  2,   0,  1.6, 1.6);
setScaleKey(  3,   0,  1.6, 1.6);
setScaleKey(  4,   0,  1.6, 1.6);
setScaleKey(  5,   0,  1.6, 1.6);
setScaleKey(  6,   0,  1.6, 1.6);
setRotateKey( 0,   0,  0);
setRotateKey( 1,   0,  0);
setRotateKey( 2,   0,  0);
setRotateKey( 3,   0,  0);
setRotateKey( 4,   0,  0);
setRotateKey( 5,   0,  0);
setRotateKey( 6,   0,  0);

setMoveKey(   0,   1,    0, -5000,   0);
setMoveKey(   1,   1,    0, -5000,   0);
setMoveKey(   2,   1,    0, -5000,   0);
setMoveKey(   3,   1,    0, -5000,   0);
setMoveKey(   4,   1,    0, -5000,   0);
setMoveKey(   5,   1,    0, -5000,   0);
setMoveKey(   6,   1,    0, -5000,   0);
setScaleKey(  0,   1,  1.6, 1.6);
setScaleKey(  1,   1,  1.6, 1.6);
setScaleKey(  2,   1,  1.6, 1.6);
setScaleKey(  3,   1,  1.6, 1.6);
setScaleKey(  4,   1,  1.6, 1.6);
setScaleKey(  5,   1,  1.6, 1.6);
setScaleKey(  6,   1,  1.6, 1.6);
setRotateKey( 0,   1,  0);
setRotateKey( 1,   1,  0);
setRotateKey( 2,   1,  0);
setRotateKey( 3,   1,  0);
setRotateKey( 4,   1,  0);
setRotateKey( 5,   1,  0);
setRotateKey( 6,   1,  0);

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面に向かって出てくる。(190F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --正面に向かって出てくる。(ef_001)
setEffMoveKey( spep_0 + 0, base0, 0, 0 , 0);
setEffMoveKey( spep_0 + 190 -4, base0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base0, 1.0, 1.0);
setEffScaleKey( spep_0 + 190 -4, base0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base0, 0);
setEffRotateKey( spep_0 + 190 -4, base0, 0);
setEffAlphaKey( spep_0 + 0, base0, 255);
setEffAlphaKey( spep_0 + 190 -5, base0, 255);
setEffAlphaKey( spep_0 + 190 -4, base0, 0);


------------------------------
-- 顔カットイン
------------------------------
spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525);
-- setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
-- setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
-- setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
-- setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
-- setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
-- setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
-- setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
-- setEffAlphaKey( spep_x + 14, ctgogo, 255);
-- setEffAlphaKey( spep_x + 78, ctgogo, 255);
-- setEffAlphaKey( spep_x + 85, ctgogo, 0);
-- setEffRotateKey( spep_x + 14, ctgogo, 0);
-- setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 6 -4, 1018, "", 0, 0, 0, -1);

--19号歩く
SE002 = playSeVer2( spep_0 + 20 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20 -4, SE002, 186 );
SE003 = playSeVer2( spep_0 + 44 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44 -4, SE003, 200 );

--19号構える
SE004 = playSeVer2( spep_0 + 78 -4, 1150, "", 0, 2, 0, 0.6);
setStartTimeMs( SE004,  450 );

--19号歩く
SE005 = playSeVer2( spep_0 + 68 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68 -4, SE005, 204 );

--19号構える
SE006 = playSeVer2( spep_0 + 78 -4, 1233, "",spep_0 + 102 -4, 0, 4, 0.6);
setPitch( spep_0 + 78 -4, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );

--イヤリング光
SE007 = playSeVer2( spep_0 + 132 -4, 1303, "",spep_0 + 200 -4, 2, 42, -1);
setSeVolumeByWorkId( spep_0 + 132 -4, SE007, 72 );
setStartTimeMs( SE007,  700 );
setPitch( spep_0 + 132 -4, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 130 -4, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130 -4, SE008, 126 );
setPitch( spep_0 + 130 -4, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );


------------------------------
-- 回避
------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 0, SE007, 0);
stopSe( SP_dodge - 0, SE008, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------
--回避しなかった場合
------------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + 190 -6;


------------------------------------------------------
--カードカットイン(94F)
------------------------------------------------------
-- ** カードカットイン ** --
-- speff2 = entryEffectLife( spep_1 + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
-- setEffReplaceTexture( speff2, 1, 1 );
-- setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
-- setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
-- playSe( spep_1 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵に向かって体当たりからの連撃、叩き落とし(200F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0);  --敵に向かって体当たりからの連撃、叩き落とし(ef_002)
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 200 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 200 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 200 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 200 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 200 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_03, 0x80, -1, 0, 0, 0);  --敵に向かって体当たりからの連撃、叩き落とし(ef_002_back)
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 200 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 200 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 200 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 200 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 200 -4, base2_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 80, 1, 0 );
setDisp( spep_2 -3 + 108, 1, 1 );
setDisp( spep_2 -3 + 130, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 34, 1, 108 );
changeAnime( spep_2 -3 + 72, 1, 7 );
changeAnime( spep_2 -3 + 108, 1, 5 );

-- setMoveKey( spep_2 -3 + 0, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 0, 0 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -3.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -61.9, 51.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 75.2, -98.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -109.6, -43.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 7.9, 38.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 12.7, 47.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 16.9, 54.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 20.5, 60.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 23.6, 66.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 26, 70.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 27.8, 73.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 29, 76.1 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 29.5, 77 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 42, 98.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -25.8, 141.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 119, -14.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -88.7, 54.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 21.8, 144.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 16.6, 158.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 12, 172.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 7.8, 184.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 5, 160.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 2.4, 136.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 0.1, 111.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -2, 86.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -3.9, 60.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -4.7, 75 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -5.3, 88.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -5.7, 102.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -5.8, 115.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -5.8, 115.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -13.2, -1.8 , 0 ); --impact
setMoveKey( spep_2 -3 + 71, 1, -69.6, 15.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -55.2, -201.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -189.3, -199.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -161.2, -252.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -312.2, -376.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -524.5, -550.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 225.4, 132.7 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 225.4, 132.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 208.1, 408.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 175.9, 354.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 82.9, -213.3 , 0 ); --impact
setMoveKey( spep_2 -3 + 115, 1, 82.9, -213.3 , 0 ); --impact
setMoveKey( spep_2 -3 + 116, 1, 115.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 115.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -111, -108.9 , 0 );
setMoveKey( spep_2 -3 + 119, 1, -111, -108.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -87.3, 53.8 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -87.3, 53.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -73.5, 44.3 , 0 );
setMoveKey( spep_2 -3 + 123, 1, -73.5, 44.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -53.3, 30.4 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -53.3, 30.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -26.6, 12 , 0 );
setMoveKey( spep_2 -3 + 127, 1, -26.6, 12 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 6.5, -11.2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 6.5, -11.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -15.2, 12.8 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_2 -2 + 2, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 7, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 8, 1, 2, 2 );
setScaleKey( spep_2 -3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 12, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 16, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 20, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 22, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 24, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 26, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 28, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 30, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 33, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 34, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 42, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 44, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 46, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 48, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 66, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 67, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 68, 1, 2.01, 2.01 ); --impact
setScaleKey( spep_2 -3 + 71, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 72, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 78, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 108, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 109, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 110, 1, 4.38, 4.38 );
setScaleKey( spep_2 -3 + 112, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 114, 1, 0.63, 0.63 ); --impact
setScaleKey( spep_2 -3 + 115, 1, 0.63, 0.63 ); --impact
setScaleKey( spep_2 -3 + 116, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 117, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 119, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 120, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 121, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 122, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 123, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 124, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 125, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 126, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 127, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 129, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 130, 1, 0.78, 0.78 );
-- setScaleKey( spep_2 -5 + 200, 1, 3.15, 3.15 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 7, 1, 0 );
setRotateKey( spep_2 -3 + 8, 1, -81.9 );
setRotateKey( spep_2 -3 + 12, 1, -81.9 );
setRotateKey( spep_2 -3 + 14, 1, -84 );
setRotateKey( spep_2 -3 + 16, 1, -85.8 );
setRotateKey( spep_2 -3 + 18, 1, -87.5 );
setRotateKey( spep_2 -3 + 20, 1, -88.9 );
setRotateKey( spep_2 -3 + 22, 1, -90.1 );
setRotateKey( spep_2 -3 + 24, 1, -91.1 );
setRotateKey( spep_2 -3 + 26, 1, -91.8 );
setRotateKey( spep_2 -3 + 28, 1, -92.4 );
setRotateKey( spep_2 -3 + 30, 1, -92.7 );
setRotateKey( spep_2 -3 + 33, 1, -92.8 );
setRotateKey( spep_2 -3 + 34, 1, -23.7 );
setRotateKey( spep_2 -3 + 66, 1, -23.7 );
setRotateKey( spep_2 -3 + 67, 1, -23.7 );
setRotateKey( spep_2 -3 + 68, 1, -54.9 ); --impact
setRotateKey( spep_2 -3 + 71, 1, -54.9 );
setRotateKey( spep_2 -3 + 72, 1, 0 );
setRotateKey( spep_2 -3 + 80, 1, 0 );
setRotateKey( spep_2 -3 + 108, 1, -15.1 );
setRotateKey( spep_2 -3 + 109, 1, -15.1 );
setRotateKey( spep_2 -3 + 110, 1, -13.4 );
setRotateKey( spep_2 -3 + 112, 1, -8.4 );
setRotateKey( spep_2 -3 + 114, 1, 0 ); --impact
setRotateKey( spep_2 -3 + 130, 1, 0 );


-- ** 音 ** --
--19号タックル
SE010 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 10 -4, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10 -4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10 -4, SE012, 89 );
SE013 = playSeVer2( spep_2 + 10 -4, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE014 = playSeVer2( spep_2 + 34 -4, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34 -4, SE014, 79 );
SE015 = playSeVer2( spep_2 + 36 -4, 1047, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 36 -4, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 58 -6, 1109, "", 0, 0, 0, -1);

--叩きつけ
SE018 = playSeVer2( spep_2 + 72 -4, 1187, "", 0, 0, 0, -1);

--敵地面激突
SE019 = playSeVer2( spep_2 + 118 -8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118 -8, SE019, 82 );
SE020 = playSeVer2( spep_2 + 118 -8, 1044, "",spep_2 + 238 -4, 0, 66, -1);
SE021 = playSeVer2( spep_2 + 134 -8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134 -8, SE021, 116 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 200 -4;


------------------------------------------------------
-- ゲロの手UP、地面の敵を掴みに行く(80F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0);  --ゲロの手UP、地面の敵を掴みに行く(ef_003)
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 80 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 80 -5, base3, 255);
setEffAlphaKey( spep_3 + 80 -4, base3, 0);

-- ** 音 ** --
--ゲロ腕広げる
SE022 = playSeVer2( spep_3 + 6 -3, 1003, "", 0, 0, 0, -1);
setPitch( spep_3 + 6 -3, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );
SE023 = playSeVer2( spep_3 + 52 -3, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 80 -4;


------------------------------------------------------
-- 敵の掴み上げ、ぶん投げ、１９号合流(160F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_08, 0x100, -1, 0, 0, 0);  --敵の掴み上げ、ぶん投げ、１９号合流(ef_004)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 160 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 160 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 160 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_09, 0x80, -1, 0, 0, 0);  --敵の掴み上げ、ぶん投げ、１９号合流(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 160 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 160 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 160 -4, base4_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 86, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 78, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, 0.2, -181.4 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 18.1, -119.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 35.4, -57.5 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 35.4, -57.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 52.4, 5.2 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 52.4, 5.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 69.5, 67.8 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 69.5, 67.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 67.3, 70.8 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 67.3, 70.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 64.7, 74.4 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 64.7, 74.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 61.6, 78.7 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 61.6, 78.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 57.9, 83.6 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 57.9, 83.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 53.7, 89.1 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 53.7, 89.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 49, 95.4 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 49, 95.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 48.6, 96.3 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 48.6, 96.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 48.2, 97.2 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 48.2, 97.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 47.8, 98.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 47.8, 98.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 47.5, 99 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 47.5, 99 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 47.1, 99.7 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 47.1, 99.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 46.8, 100.5 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 46.8, 100.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 46.4, 101.3 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 46.4, 101.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 46.2, 102 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 46.2, 102 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 45.9, 102.7 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 45.9, 102.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 45.6, 103.3 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 45.6, 103.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 45.4, 103.9 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 45.4, 103.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 45.2, 104.5 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 45.2, 104.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 45, 105.1 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 45, 105.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 44.8, 105.6 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 44.8, 105.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 44.7, 106 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 44.7, 106 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 44.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 44.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 44.5, 106.9 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 44.5, 106.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 44.4, 107.3 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 44.4, 107.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.3, 107.7 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 44.3, 107.7 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 44.3, 108 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 44.3, 108 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 44.3, 108.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 44.3, 108.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 44.3, 108.5 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 44.3, 108.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 44.3, 108.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 44.3, 108.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 44.4, 108.9 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 44.4, 108.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -105.1, 57.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -105.1, 57.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -149, 46.6 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -149, 46.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -192.9, 35.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, -192.9, 35.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -236.8, 24.2 , 0 );
setMoveKey( spep_4 -3 + 77, 1, -236.8, 24.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -356.7, 101 , 0 ); --impact
setMoveKey( spep_4 -3 + 80, 1, -394.7, 203.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 0.2, 189.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 98.1, 213.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 417.4, 291.8 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_4 -2 + 2, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 4, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 5, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 7, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 20, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 26, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 28, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 32, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 40, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 44, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 46, 1, 2, 2 );
setScaleKey( spep_4 -3 + 50, 1, 2, 2 );
setScaleKey( spep_4 -3 + 52, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 58, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_4 -3 + 64, 1, 2.02, 2.02 );
setScaleKey( spep_4 -3 + 66, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 77, 1, 2.03, 2.03 );

setScaleKey( spep_4 -3 + 78, 1, 1.09, 1.09 ); --impact
setScaleKey( spep_4 -3 + 80, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 82, 1, 2.56, 2.56 );
setScaleKey( spep_4 -3 + 84, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 86, 1, 4.78, 4.78 );

setRotateKey( spep_4 + 0, 1, -58.5 );
setRotateKey( spep_4 -3 + 68, 1, -58.5 );
setRotateKey( spep_4 -3 + 69, 1, -58.5 );
setRotateKey( spep_4 -3 + 70, 1, -32.5 );
setRotateKey( spep_4 -3 + 77, 1, -32.5 );
setRotateKey( spep_4 -3 + 78, 1, -10.3 ); --impact
setRotateKey( spep_4 -3 + 82, 1, -10.3 );
setRotateKey( spep_4 -3 + 84, 1, -7.7 );
setRotateKey( spep_4 -3 + 86, 1, 0 );


-- ** 音 ** --
--掴む
SE024 = playSeVer2( spep_4 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 82 );
SE025 = playSeVer2( spep_4 + 0, 1170, "",spep_4 + 22 -4, 0, 10, -1);

--敵投げる
SE026 = playSeVer2( spep_4 + 78 -4, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 78 -4, 1047, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 78 -4, 1025, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_4 + 116 -12, 1109, "", 0, 0, 0, -1);

--画面遷移
SE030 = playSeVer2( spep_4 + 144 -4, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE030,  333 );

--着地
SE031 = playSeVer2( spep_4 + 128 -8, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128 -8, SE031, 237 );
SE032 = playSeVer2( spep_4 + 132 -8, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 132 -8, SE032, 195 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 160 -4;


------------------------------------------------------
-- ゲロ＆19号、目からビーム→フィニッシュ(290F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_12, 0x100, -1, 0, 0, 0);  --ゲロ＆19号、目からビーム→フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 290 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 290 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 290 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 290 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 290 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_13, 0x80, -1, 0, 0, 0);  --ゲロ＆19号、目からビーム→フィニッシュ(ef_005_back)
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 290 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 290 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 290 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 290 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 290 -4, base5_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_5 -3 + 78, 1, 1 );
setDisp( spep_5 -3 + 270, 1, 0 );
changeAnime( spep_5 -3 + 78, 1, 5 );

setMoveKey( spep_5 -3 + 78, 1, -81.3, -408.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 8.6, -254.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 22, -274.9 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -4, -256.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 7.6, -207.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 5.7, -185.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 4.3, -184.5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 2.8, -183.9 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 1.3, -183.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, -0.2, -183.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 4.4, -184.9 , 0 );
setMoveKey( spep_5 -3 + 100, 1, -4.4, -178.4 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 11.2, -176.6 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 10, -186.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 21.2, -188.2 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 11.8, -182.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 28.1, -182 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 26.4, -193.4 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 38.1, -197.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 27.9, -192.6 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 41.6, -184.9 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 36.4, -189.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 45.2, -186.8 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 31, -175.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 45.4, -169.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 39.9, -175.9 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 47.2, -162.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 41.6, -169.4 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 49.2, -155.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 43.4, -162.9 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 51, -149 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 46, -155.5 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 33.9, -132.3 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 48.8, -166.1 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 29.2, -136.5 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 8.3, -162 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 18.4, -125.5 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 19.4, -118.8 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 26, -156.7 , 0 );
setMoveKey( spep_5 -3 + 156, 1, -3.8, -127.5 , 0 );
setMoveKey( spep_5 -3 + 158, 1, -5.7, -114.2 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 1.4, -153.4 , 0 );
setMoveKey( spep_5 -3 + 162, 1, -8.2, -123.4 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 11, -109.6 , 0 );
setMoveKey( spep_5 -3 + 166, 1, 39.3, -150 , 0 );
setMoveKey( spep_5 -3 + 168, 1, 5.1, -151.2 , 0 );
setMoveKey( spep_5 -3 + 170, 1, -42.6, -173.6 , 0 );
setMoveKey( spep_5 -3 + 172, 1, -1.2, -200.8 , 0 );
setMoveKey( spep_5 -3 + 174, 1, -24.3, -192.1 , 0 );
setMoveKey( spep_5 -3 + 176, 1, -3.4, -191.6 , 0 );
setMoveKey( spep_5 -3 + 178, 1, -12.9, -210.6 , 0 );
setMoveKey( spep_5 -3 + 180, 1, -0.2, -215.8 , 0 );
setMoveKey( spep_5 -3 + 182, 1, 0.1, -219.5 , 0 );
setMoveKey( spep_5 -3 + 184, 1, -23.4, -210.8 , 0 );
setMoveKey( spep_5 -3 + 186, 1, -2.2, -210.2 , 0 );
setMoveKey( spep_5 -3 + 188, 1, -11.8, -229.4 , 0 );
setMoveKey( spep_5 -3 + 190, 1, 1.1, -234.6 , 0 );
setMoveKey( spep_5 -3 + 192, 1, 1.3, -238.3 , 0 );
setMoveKey( spep_5 -3 + 194, 1, 1.6, -242.2 , 0 );
setMoveKey( spep_5 -3 + 196, 1, 1.8, -245.9 , 0 );
setMoveKey( spep_5 -3 + 198, 1, 2.1, -249.6 , 0 );
setMoveKey( spep_5 -3 + 200, 1, 2.3, -253.4 , 0 );
setMoveKey( spep_5 -3 + 202, 1, 2.6, -257.2 , 0 );
setMoveKey( spep_5 -3 + 204, 1, 2.8, -260.9 , 0 );
setMoveKey( spep_5 -3 + 206, 1, 3.1, -264.7 , 0 );
setMoveKey( spep_5 -3 + 208, 1, 3.3, -268.5 , 0 );
setMoveKey( spep_5 -3 + 210, 1, 3.6, -272.2 , 0 );
setMoveKey( spep_5 -3 + 212, 1, 3.8, -276 , 0 );
setMoveKey( spep_5 -3 + 214, 1, 4.1, -279.7 , 0 );
setMoveKey( spep_5 -3 + 216, 1, 4.3, -283.5 , 0 );
setMoveKey( spep_5 -3 + 218, 1, 4.6, -287.3 , 0 );
setMoveKey( spep_5 -3 + 220, 1, 4.8, -291 , 0 );
setMoveKey( spep_5 -3 + 222, 1, 5.1, -294.8 , 0 );
setMoveKey( spep_5 -3 + 224, 1, 5.3, -298.5 , 0 );
setMoveKey( spep_5 -3 + 226, 1, 5.6, -302.3 , 0 );
setMoveKey( spep_5 -3 + 228, 1, 5.9, -306.1 , 0 );
setMoveKey( spep_5 -3 + 230, 1, 6.1, -309.8 , 0 );
setMoveKey( spep_5 -3 + 232, 1, 6.4, -313.6 , 0 );
setMoveKey( spep_5 -3 + 234, 1, 6.6, -317.4 , 0 );
setMoveKey( spep_5 -3 + 236, 1, 6.9, -321.1 , 0 );
setMoveKey( spep_5 -3 + 238, 1, 7.1, -324.9 , 0 );
setMoveKey( spep_5 -3 + 240, 1, 7.4, -328.7 , 0 );
setMoveKey( spep_5 -3 + 242, 1, 7.6, -332.4 , 0 );
setMoveKey( spep_5 -3 + 244, 1, 7.9, -336.2 , 0 );
setMoveKey( spep_5 -3 + 246, 1, 8.1, -339.9 , 0 );
setMoveKey( spep_5 -3 + 248, 1, 8.4, -343.7 , 0 );
setMoveKey( spep_5 -3 + 250, 1, 8.6, -347.5 , 0 );
setMoveKey( spep_5 -3 + 252, 1, 8.9, -351.2 , 0 );
setMoveKey( spep_5 -3 + 254, 1, 9.1, -354.9 , 0 );
setMoveKey( spep_5 -3 + 256, 1, 9.4, -358.7 , 0 );
setMoveKey( spep_5 -3 + 258, 1, 9.6, -362.5 , 0 );
setMoveKey( spep_5 -3 + 260, 1, 9.8, -366.3 , 0 );
setMoveKey( spep_5 -3 + 262, 1, 10.1, -370 , 0 );
setMoveKey( spep_5 -3 + 264, 1, 10.4, -373.8 , 0 );
setMoveKey( spep_5 -3 + 266, 1, 10.6, -377.5 , 0 );
setMoveKey( spep_5 -3 + 268, 1, 10.9, -381.3 , 0 );
setMoveKey( spep_5 -3 + 270, 1, 11.1, -385.1 , 0 );

setScaleKey( spep_5 -3 + 78, 1, 10.9, 10.91 );
setScaleKey( spep_5 -3 + 80, 1, 6.59, 6.59 );
setScaleKey( spep_5 -3 + 82, 1, 5.95, 5.95 );
setScaleKey( spep_5 -3 + 84, 1, 4.78, 4.79 );
setScaleKey( spep_5 -3 + 86, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 88, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 90, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 92, 1, 0.69, 0.7 );
setScaleKey( spep_5 -3 + 94, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 96, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 98, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 100, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 102, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 104, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 106, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 108, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 110, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 112, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 114, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 118, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 120, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 122, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 124, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 126, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 128, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 130, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 132, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 134, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 136, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 138, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 140, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 142, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 144, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 146, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 148, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 150, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 152, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 154, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 156, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 158, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 160, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 164, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 166, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 168, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 170, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 178, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 180, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 186, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 188, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 196, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 198, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 216, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 218, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 226, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 228, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 236, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 238, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 246, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 248, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 256, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 258, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 266, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 268, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 270, 1, 0.87, 0.87 );

setRotateKey( spep_5 -3 + 78, 1, 34.1 );
setRotateKey( spep_5 -3 + 82, 1, 34.1 );
setRotateKey( spep_5 -3 + 84, 1, 34.2 );
setRotateKey( spep_5 -3 + 270, 1, 34.2 );


-- ** 音 ** --
--目からビーム
SE033 = playSeVer2( spep_5 + 14 -4, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14 -4, SE033, 68 );
SE034 = playSeVer2( spep_5 + 14 -4, 1177, "",spep_5 + 136 -4, 0, 10, -1);
SE035 = playSeVer2( spep_5 + 16 -4, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16 -4, SE035, 136 );
SE036 = playSeVer2( spep_5 + 16 -4, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16 -4, SE036, 76 );

--気弾飛んでいく
SE037 = playSeVer2( spep_5 + 62 -4, 1202, "",spep_5 + 88 -4, 0, 6, 0.5);
setSeVolumeByWorkId( spep_5 + 62 -4, SE037, 229 );
SE038 = playSeVer2( spep_5 + 74 -4, 1202, "",spep_5 + 98 -4, 0, 6, 0.5);
setSeVolumeByWorkId( spep_5 + 74 -4, SE038, 209 );
SE039 = playSeVer2( spep_5 + 84 -4, 1202, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_5 + 84 -4, SE039, 269 );

--ビーム地面削る
SE040 = playSeVer2( spep_5 + 100 -4, 1023, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 104 -4, 1044, "",spep_5 + 142 -4, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 104 -4, SE041, 157 );

--ラスト爆発
SE042 = playSeVer2( spep_5 + 132 -4, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 132 -4, SE042, 117 );
SE043 = playSeVer2( spep_5 + 138 -4, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 132 -3);
endPhase( spep_5 + 290 -8);


else


------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 正面に向かって出てくる。(190F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --正面に向かって出てくる。(ef_001)
setEffMoveKey( spep_0 + 0, base0, 0, 0 , 0);
setEffMoveKey( spep_0 + 190 -4, base0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base0, -1.0, 1.0);
setEffScaleKey( spep_0 + 190 -4, base0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base0, 0);
setEffRotateKey( spep_0 + 190 -4, base0, 0);
setEffAlphaKey( spep_0 + 0, base0, 255);
setEffAlphaKey( spep_0 + 190 -5, base0, 255);
setEffAlphaKey( spep_0 + 190 -4, base0, 0);


------------------------------
-- 顔カットイン
------------------------------
spep_x = spep_0 + 0;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40, 525);
-- setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
-- setEffMoveKey( spep_x + 14, ctgogo, 40, 525 , 0);
-- setEffMoveKey( spep_x + 78, ctgogo, 40, 525 , 0);
-- setEffMoveKey( spep_x + 84, ctgogo, 80, 525 , 0);
-- setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
-- setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
-- setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
-- setEffAlphaKey( spep_x + 14, ctgogo, 255);
-- setEffAlphaKey( spep_x + 78, ctgogo, 255);
-- setEffAlphaKey( spep_x + 85, ctgogo, 0);
-- setEffRotateKey( spep_x + 14, ctgogo, 0);
-- setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--セリフカットイン
--SE001 = playSeVer2( spep_0 + 6 -4, 1018, "", 0, 0, 0, -1);

--19号歩く
SE002 = playSeVer2( spep_0 + 20 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 20 -4, SE002, 186 );
SE003 = playSeVer2( spep_0 + 44 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 44 -4, SE003, 200 );

--19号構える
SE004 = playSeVer2( spep_0 + 78 -4, 1150, "", 0, 2, 0, 0.6);
setStartTimeMs( SE004,  450 );

--19号歩く
SE005 = playSeVer2( spep_0 + 68 -4, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 68 -4, SE005, 204 );

--19号構える
SE006 = playSeVer2( spep_0 + 78 -4, 1233, "",spep_0 + 102 -4, 0, 4, 0.6);
setPitch( spep_0 + 78 -4, SE006, -400 );
setTimeStretch( SE006, 0.73, 30, 4 );

--イヤリング光
SE007 = playSeVer2( spep_0 + 132 -4, 1303, "",spep_0 + 200 -4, 2, 42, -1);
setSeVolumeByWorkId( spep_0 + 132 -4, SE007, 72 );
setStartTimeMs( SE007,  700 );
setPitch( spep_0 + 132 -4, SE007, -200 );
setTimeStretch( SE007, 0.87, 30, 4 );
SE008 = playSeVer2( spep_0 + 130 -4, 1221, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 130 -4, SE008, 126 );
setPitch( spep_0 + 130 -4, SE008, 400 );
setTimeStretch( SE008, 1.27, 30, 4 );


------------------------------
-- 回避
------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 0, SE007, 0);
stopSe( SP_dodge - 0, SE008, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end
------------------------------
--回避しなかった場合
------------------------------


-- ** 次の準備 ** --
spep_1 = spep_0 + 190 -4;


------------------------------------------------------
--カードカットイン(94F)
------------------------------------------------------

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
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白 背景

-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94;


------------------------------------------------------
-- 敵に向かって体当たりからの連撃、叩き落とし(200F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0);  --敵に向かって体当たりからの連撃、叩き落とし(ef_002)
setEffMoveKey( spep_2 + 0, base2_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 200 -4, base2_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 200 -4, base2_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_f, 0);
setEffRotateKey( spep_2 + 200 -4, base2_f, 0);
setEffAlphaKey( spep_2 + 0, base2_f, 255);
setEffAlphaKey( spep_2 + 200 -5, base2_f, 255);
setEffAlphaKey( spep_2 + 200 -4, base2_f, 0);

base2_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0);  --敵に向かって体当たりからの連撃、叩き落とし(ef_002_back)
setEffMoveKey( spep_2 + 0, base2_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 200 -4, base2_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 200 -4, base2_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2_b, 0);
setEffRotateKey( spep_2 + 200 -4, base2_b, 0);
setEffAlphaKey( spep_2 + 0, base2_b, 255);
setEffAlphaKey( spep_2 + 200 -5, base2_b, 255);
setEffAlphaKey( spep_2 + 200 -4, base2_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -3 + 80, 1, 0 );
setDisp( spep_2 -3 + 108, 1, 1 );
setDisp( spep_2 -3 + 130, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 8, 1, 106 );
changeAnime( spep_2 -3 + 34, 1, 108 );
changeAnime( spep_2 -3 + 72, 1, 7 );
changeAnime( spep_2 -3 + 108, 1, 5 );

-- setMoveKey( spep_2 -3 + 0, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -2 + 2, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 0, 0 , 0 );
setMoveKey( spep_2 -3 + 7, 1, 0.1, 0 , 0 );
setMoveKey( spep_2 -3 + 8, 1, -3.3, 18.7 , 0 );
setMoveKey( spep_2 -3 + 10, 1, -61.9, 51.2 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 75.2, -98.9 , 0 );
setMoveKey( spep_2 -3 + 14, 1, -109.6, -43.3 , 0 );
setMoveKey( spep_2 -3 + 16, 1, 7.9, 38.6 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 12.7, 47.1 , 0 );
setMoveKey( spep_2 -3 + 20, 1, 16.9, 54.5 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 20.5, 60.8 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 23.6, 66.3 , 0 );
setMoveKey( spep_2 -3 + 26, 1, 26, 70.6 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 27.8, 73.8 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 29, 76.1 , 0 );
setMoveKey( spep_2 -3 + 33, 1, 29.5, 77 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 42, 98.8 , 0 );
setMoveKey( spep_2 -3 + 36, 1, -25.8, 141.7 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 119, -14.5 , 0 );
setMoveKey( spep_2 -3 + 40, 1, -88.7, 54.2 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 21.8, 144.5 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 16.6, 158.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 12, 172.1 , 0 );
setMoveKey( spep_2 -3 + 48, 1, 7.8, 184.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 5, 160.7 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 2.4, 136.2 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 0.1, 111.4 , 0 );
setMoveKey( spep_2 -3 + 56, 1, -2, 86.2 , 0 );
setMoveKey( spep_2 -3 + 58, 1, -3.9, 60.6 , 0 );
setMoveKey( spep_2 -3 + 60, 1, -4.7, 75 , 0 );
setMoveKey( spep_2 -3 + 62, 1, -5.3, 88.9 , 0 );
setMoveKey( spep_2 -3 + 64, 1, -5.7, 102.4 , 0 );
setMoveKey( spep_2 -3 + 66, 1, -5.8, 115.6 , 0 );
setMoveKey( spep_2 -3 + 67, 1, -5.8, 115.6 , 0 );
setMoveKey( spep_2 -3 + 68, 1, -13.2, -1.8 , 0 ); --impact
setMoveKey( spep_2 -3 + 71, 1, -69.6, 15.6 , 0 );
setMoveKey( spep_2 -3 + 72, 1, -55.2, -201.3 , 0 );
setMoveKey( spep_2 -3 + 74, 1, -189.3, -199.6 , 0 );
setMoveKey( spep_2 -3 + 76, 1, -161.2, -252.3 , 0 );
setMoveKey( spep_2 -3 + 78, 1, -312.2, -376.2 , 0 );
setMoveKey( spep_2 -3 + 80, 1, -524.5, -550.3 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 225.4, 132.7 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 225.4, 132.7 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 208.1, 408.5 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 175.9, 354.5 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 82.9, -213.3 , 0 ); --impact
setMoveKey( spep_2 -3 + 115, 1, 82.9, -213.3 , 0 ); --impact
setMoveKey( spep_2 -3 + 116, 1, 115.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 115.4, -230.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, -111, -108.9 , 0 );
setMoveKey( spep_2 -3 + 119, 1, -111, -108.9 , 0 );
setMoveKey( spep_2 -3 + 120, 1, -87.3, 53.8 , 0 );
setMoveKey( spep_2 -3 + 121, 1, -87.3, 53.8 , 0 );
setMoveKey( spep_2 -3 + 122, 1, -73.5, 44.3 , 0 );
setMoveKey( spep_2 -3 + 123, 1, -73.5, 44.3 , 0 );
setMoveKey( spep_2 -3 + 124, 1, -53.3, 30.4 , 0 );
setMoveKey( spep_2 -3 + 125, 1, -53.3, 30.4 , 0 );
setMoveKey( spep_2 -3 + 126, 1, -26.6, 12 , 0 );
setMoveKey( spep_2 -3 + 127, 1, -26.6, 12 , 0 );
setMoveKey( spep_2 -3 + 128, 1, 6.5, -11.2 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 6.5, -11.2 , 0 );
setMoveKey( spep_2 -3 + 130, 1, -15.2, 12.8 , 0 );

-- setScaleKey( spep_2 -3 + 0, 1, 1.24, 1.24 );
setScaleKey( spep_2 -2 + 2, 1, 1.43, 1.43 );
setScaleKey( spep_2 -3 + 4, 1, 1.62, 1.62 );
setScaleKey( spep_2 -3 + 7, 1, 1.81, 1.81 );
setScaleKey( spep_2 -3 + 8, 1, 2, 2 );
setScaleKey( spep_2 -3 + 10, 1, 2.01, 2.01 );
setScaleKey( spep_2 -3 + 12, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_2 -3 + 16, 1, 2.05, 2.05 );
setScaleKey( spep_2 -3 + 18, 1, 2.07, 2.07 );
setScaleKey( spep_2 -3 + 20, 1, 2.08, 2.08 );
setScaleKey( spep_2 -3 + 22, 1, 2.09, 2.09 );
setScaleKey( spep_2 -3 + 24, 1, 2.11, 2.11 );
setScaleKey( spep_2 -3 + 26, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 28, 1, 2.13, 2.13 );
setScaleKey( spep_2 -3 + 30, 1, 2.15, 2.15 );
setScaleKey( spep_2 -3 + 33, 1, 2.16, 2.16 );
setScaleKey( spep_2 -3 + 34, 1, 2.17, 2.17 );
setScaleKey( spep_2 -3 + 36, 1, 2.19, 2.19 );
setScaleKey( spep_2 -3 + 38, 1, 2.2, 2.2 );
setScaleKey( spep_2 -3 + 40, 1, 2.12, 2.12 );
setScaleKey( spep_2 -3 + 42, 1, 2.03, 2.03 );
setScaleKey( spep_2 -3 + 44, 1, 1.95, 1.95 );
setScaleKey( spep_2 -3 + 46, 1, 1.86, 1.86 );
setScaleKey( spep_2 -3 + 48, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 66, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 67, 1, 1.78, 1.78 );
setScaleKey( spep_2 -3 + 68, 1, 2.01, 2.01 ); --impact
setScaleKey( spep_2 -3 + 71, 1, 2.24, 2.24 );
setScaleKey( spep_2 -3 + 72, 1, 1.23, 1.23 );
setScaleKey( spep_2 -3 + 74, 1, 1.44, 1.44 );
setScaleKey( spep_2 -3 + 76, 1, 1.87, 1.87 );
setScaleKey( spep_2 -3 + 78, 1, 2.4, 2.4 );
setScaleKey( spep_2 -3 + 80, 1, 3.15, 3.15 );
setScaleKey( spep_2 -3 + 108, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 109, 1, 3.17, 3.17 );
setScaleKey( spep_2 -3 + 110, 1, 4.38, 4.38 );
setScaleKey( spep_2 -3 + 112, 1, 3.89, 3.89 );
setScaleKey( spep_2 -3 + 114, 1, 0.63, 0.63 ); --impact
setScaleKey( spep_2 -3 + 115, 1, 0.63, 0.63 ); --impact
setScaleKey( spep_2 -3 + 116, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 117, 1, 0.72, 0.72 );
setScaleKey( spep_2 -3 + 118, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 119, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 120, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 121, 1, 0.87, 0.87 );
setScaleKey( spep_2 -3 + 122, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 123, 1, 0.84, 0.84 );
setScaleKey( spep_2 -3 + 124, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 125, 1, 0.81, 0.81 );
setScaleKey( spep_2 -3 + 126, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 127, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 128, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 129, 1, 0.79, 0.79 );
setScaleKey( spep_2 -3 + 130, 1, 0.78, 0.78 );
-- setScaleKey( spep_2 -5 + 200, 1, 3.15, 3.15 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 7, 1, 0 );
setRotateKey( spep_2 -3 + 8, 1, -81.9 );
setRotateKey( spep_2 -3 + 12, 1, -81.9 );
setRotateKey( spep_2 -3 + 14, 1, -84 );
setRotateKey( spep_2 -3 + 16, 1, -85.8 );
setRotateKey( spep_2 -3 + 18, 1, -87.5 );
setRotateKey( spep_2 -3 + 20, 1, -88.9 );
setRotateKey( spep_2 -3 + 22, 1, -90.1 );
setRotateKey( spep_2 -3 + 24, 1, -91.1 );
setRotateKey( spep_2 -3 + 26, 1, -91.8 );
setRotateKey( spep_2 -3 + 28, 1, -92.4 );
setRotateKey( spep_2 -3 + 30, 1, -92.7 );
setRotateKey( spep_2 -3 + 33, 1, -92.8 );
setRotateKey( spep_2 -3 + 34, 1, -23.7 );
setRotateKey( spep_2 -3 + 66, 1, -23.7 );
setRotateKey( spep_2 -3 + 67, 1, -23.7 );
setRotateKey( spep_2 -3 + 68, 1, -54.9 ); --impact
setRotateKey( spep_2 -3 + 71, 1, -54.9 );
setRotateKey( spep_2 -3 + 72, 1, 0 );
setRotateKey( spep_2 -3 + 80, 1, 0 );
setRotateKey( spep_2 -3 + 108, 1, -15.1 );
setRotateKey( spep_2 -3 + 109, 1, -15.1 );
setRotateKey( spep_2 -3 + 110, 1, -13.4 );
setRotateKey( spep_2 -3 + 112, 1, -8.4 );
setRotateKey( spep_2 -3 + 114, 1, 0 ); --impact
setRotateKey( spep_2 -3 + 130, 1, 0 );


-- ** 音 ** --
--19号タックル
SE010 = playSeVer2( spep_2 + 0, 1004, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_2 + 10 -4, 1153, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_2 + 10 -4, 1110, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 10 -4, SE012, 89 );
SE013 = playSeVer2( spep_2 + 10 -4, 1010, "", 0, 0, 0, -1);

--蹴り上げ
SE014 = playSeVer2( spep_2 + 34 -4, 1001, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 34 -4, SE014, 79 );
SE015 = playSeVer2( spep_2 + 36 -4, 1047, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_2 + 36 -4, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_2 + 58 -6, 1109, "", 0, 0, 0, -1);

--叩きつけ
SE018 = playSeVer2( spep_2 + 72 -4, 1187, "", 0, 0, 0, -1);

--敵地面激突
SE019 = playSeVer2( spep_2 + 118 -8, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 118 -8, SE019, 82 );
SE020 = playSeVer2( spep_2 + 118 -8, 1044, "",spep_2 + 238 -4, 0, 66, -1);
SE021 = playSeVer2( spep_2 + 134 -8, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 134 -8, SE021, 116 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 200 -4;


------------------------------------------------------
-- ゲロの手UP、地面の敵を掴みに行く(80F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3 = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0);  --ゲロの手UP、地面の敵を掴みに行く(ef_003)
setEffMoveKey( spep_3 + 0, base3, 0, 0 , 0);
setEffMoveKey( spep_3 + 80 -4, base3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3, 1.0, 1.0);
setEffScaleKey( spep_3 + 80 -4, base3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3, 0);
setEffRotateKey( spep_3 + 80 -4, base3, 0);
setEffAlphaKey( spep_3 + 0, base3, 255);
setEffAlphaKey( spep_3 + 80 -5, base3, 255);
setEffAlphaKey( spep_3 + 80 -4, base3, 0);

-- ** 音 ** --
--ゲロ腕広げる
SE022 = playSeVer2( spep_3 + 6 -3, 1003, "", 0, 0, 0, -1);
setPitch( spep_3 + 6 -3, SE022, -400 );
setTimeStretch( SE022, 0.73, 30, 4 );
SE023 = playSeVer2( spep_3 + 52 -3, 1004, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 80 -4;


------------------------------------------------------
-- 敵の掴み上げ、ぶん投げ、１９号合流(160F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base4_f = entryEffect( spep_4 + 0, SP_10, 0x100, -1, 0, 0, 0);  --敵の掴み上げ、ぶん投げ、１９号合流(ef_004)
setEffMoveKey( spep_4 + 0, base4_f, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base4_f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_f, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base4_f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_f, 0);
setEffRotateKey( spep_4 + 160 -4, base4_f, 0);
setEffAlphaKey( spep_4 + 0, base4_f, 255);
setEffAlphaKey( spep_4 + 160 -5, base4_f, 255);
setEffAlphaKey( spep_4 + 160 -4, base4_f, 0);

base4_b = entryEffect( spep_4 + 0, SP_11, 0x80, -1, 0, 0, 0);  --敵の掴み上げ、ぶん投げ、１９号合流(ef_004_back)
setEffMoveKey( spep_4 + 0, base4_b, 0, 0 , 0);
setEffMoveKey( spep_4 + 160 -4, base4_b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base4_b, 1.0, 1.0);
setEffScaleKey( spep_4 + 160 -4, base4_b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base4_b, 0);
setEffRotateKey( spep_4 + 160 -4, base4_b, 0);
setEffAlphaKey( spep_4 + 0, base4_b, 255);
setEffAlphaKey( spep_4 + 160 -5, base4_b, 255);
setEffAlphaKey( spep_4 + 160 -4, base4_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 86, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 78, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, 0.2, -181.4 , 0 );
setMoveKey( spep_4 -2 + 2, 1, 18.1, -119.8 , 0 );
setMoveKey( spep_4 -3 + 4, 1, 35.4, -57.5 , 0 );
setMoveKey( spep_4 -3 + 5, 1, 35.4, -57.5 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 52.4, 5.2 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 52.4, 5.2 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 69.5, 67.8 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 69.5, 67.8 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 67.3, 70.8 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 67.3, 70.8 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 64.7, 74.4 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 64.7, 74.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 61.6, 78.7 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 61.6, 78.7 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 57.9, 83.6 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 57.9, 83.6 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 53.7, 89.1 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 53.7, 89.1 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 49, 95.4 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 49, 95.4 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 48.6, 96.3 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 48.6, 96.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 48.2, 97.2 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 48.2, 97.2 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 47.8, 98.1 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 47.8, 98.1 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 47.5, 99 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 47.5, 99 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 47.1, 99.7 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 47.1, 99.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 46.8, 100.5 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 46.8, 100.5 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 46.4, 101.3 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 46.4, 101.3 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 46.2, 102 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 46.2, 102 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 45.9, 102.7 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 45.9, 102.7 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 45.6, 103.3 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 45.6, 103.3 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 45.4, 103.9 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 45.4, 103.9 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 45.2, 104.5 , 0 );
setMoveKey( spep_4 -3 + 45, 1, 45.2, 104.5 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 45, 105.1 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 45, 105.1 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 44.8, 105.6 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 44.8, 105.6 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 44.7, 106 , 0 );
setMoveKey( spep_4 -3 + 51, 1, 44.7, 106 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 44.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 44.5, 106.5 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 44.5, 106.9 , 0 );
setMoveKey( spep_4 -3 + 55, 1, 44.5, 106.9 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 44.4, 107.3 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 44.4, 107.3 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 44.3, 107.7 , 0 );
setMoveKey( spep_4 -3 + 59, 1, 44.3, 107.7 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 44.3, 108 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 44.3, 108 , 0 );
setMoveKey( spep_4 -3 + 62, 1, 44.3, 108.3 , 0 );
setMoveKey( spep_4 -3 + 63, 1, 44.3, 108.3 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 44.3, 108.5 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 44.3, 108.5 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 44.3, 108.8 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 44.3, 108.8 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 44.4, 108.9 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 44.4, 108.9 , 0 );
setMoveKey( spep_4 -3 + 70, 1, -105.1, 57.9 , 0 );
setMoveKey( spep_4 -3 + 71, 1, -105.1, 57.9 , 0 );
setMoveKey( spep_4 -3 + 72, 1, -149, 46.6 , 0 );
setMoveKey( spep_4 -3 + 73, 1, -149, 46.6 , 0 );
setMoveKey( spep_4 -3 + 74, 1, -192.9, 35.4 , 0 );
setMoveKey( spep_4 -3 + 75, 1, -192.9, 35.4 , 0 );
setMoveKey( spep_4 -3 + 76, 1, -236.8, 24.2 , 0 );
setMoveKey( spep_4 -3 + 77, 1, -236.8, 24.2 , 0 );
setMoveKey( spep_4 -3 + 78, 1, -356.7, 101 , 0 ); --impact
setMoveKey( spep_4 -3 + 80, 1, -394.7, 203.6 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 0.2, 189.7 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 98.1, 213.6 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 417.4, 291.8 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 3.7, 3.7 );
setScaleKey( spep_4 -2 + 2, 1, 3.26, 3.26 );
setScaleKey( spep_4 -3 + 4, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 5, 1, 2.82, 2.82 );
setScaleKey( spep_4 -3 + 6, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 7, 1, 2.38, 2.38 );
setScaleKey( spep_4 -3 + 8, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 12, 1, 1.94, 1.94 );
setScaleKey( spep_4 -3 + 14, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 18, 1, 1.95, 1.95 );
setScaleKey( spep_4 -3 + 20, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 26, 1, 1.96, 1.96 );
setScaleKey( spep_4 -3 + 28, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 32, 1, 1.97, 1.97 );
setScaleKey( spep_4 -3 + 34, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 38, 1, 1.98, 1.98 );
setScaleKey( spep_4 -3 + 40, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 44, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 46, 1, 2, 2 );
setScaleKey( spep_4 -3 + 50, 1, 2, 2 );
setScaleKey( spep_4 -3 + 52, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 58, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 60, 1, 2.02, 2.02 );
setScaleKey( spep_4 -3 + 64, 1, 2.02, 2.02 );
setScaleKey( spep_4 -3 + 66, 1, 2.03, 2.03 );
setScaleKey( spep_4 -3 + 77, 1, 2.03, 2.03 );

setScaleKey( spep_4 -3 + 78, 1, 1.09, 1.09 ); --impact
setScaleKey( spep_4 -3 + 80, 1, 1.81, 1.81 );
setScaleKey( spep_4 -3 + 82, 1, 2.56, 2.56 );
setScaleKey( spep_4 -3 + 84, 1, 3.11, 3.11 );
setScaleKey( spep_4 -3 + 86, 1, 4.78, 4.78 );

setRotateKey( spep_4 + 0, 1, -58.5 );
setRotateKey( spep_4 -3 + 68, 1, -58.5 );
setRotateKey( spep_4 -3 + 69, 1, -58.5 );
setRotateKey( spep_4 -3 + 70, 1, -32.5 );
setRotateKey( spep_4 -3 + 77, 1, -32.5 );
setRotateKey( spep_4 -3 + 78, 1, -10.3 ); --impact
setRotateKey( spep_4 -3 + 82, 1, -10.3 );
setRotateKey( spep_4 -3 + 84, 1, -7.7 );
setRotateKey( spep_4 -3 + 86, 1, 0 );


-- ** 音 ** --
--掴む
SE024 = playSeVer2( spep_4 + 0, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 0, SE024, 82 );
SE025 = playSeVer2( spep_4 + 0, 1170, "",spep_4 + 22 -4, 0, 10, -1);

--敵投げる
SE026 = playSeVer2( spep_4 + 78 -4, 1027, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_4 + 78 -4, 1047, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_4 + 78 -4, 1025, "", 0, 0, 0, -1);

--瞬間移動
SE029 = playSeVer2( spep_4 + 116 -12, 1109, "", 0, 0, 0, -1);

--画面遷移
SE030 = playSeVer2( spep_4 + 144 -4, 1072, "", 0, 12, 0, -1);
setStartTimeMs( SE030,  333 );

--着地
SE031 = playSeVer2( spep_4 + 128 -8, 1108, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 128 -8, SE031, 237 );
SE032 = playSeVer2( spep_4 + 132 -8, 1106, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 132 -8, SE032, 195 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 160 -4;


------------------------------------------------------
-- ゲロ＆19号、目からビーム→フィニッシュ(290F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base5_f = entryEffect( spep_5 + 0, SP_14, 0x100, -1, 0, 0, 0);  --ゲロ＆19号、目からビーム→フィニッシュ(ef_005)
setEffMoveKey( spep_5 + 0, base5_f, 0, 0 , 0);
setEffMoveKey( spep_5 + 290 -4, base5_f, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_f, 1.0, 1.0);
setEffScaleKey( spep_5 + 290 -4, base5_f, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_f, 0);
setEffRotateKey( spep_5 + 290 -4, base5_f, 0);
setEffAlphaKey( spep_5 + 0, base5_f, 255);
setEffAlphaKey( spep_5 + 290 -5, base5_f, 255);
setEffAlphaKey( spep_5 + 290 -4, base5_f, 0);

base5_b = entryEffect( spep_5 + 0, SP_15, 0x80, -1, 0, 0, 0);  --ゲロ＆19号、目からビーム→フィニッシュ(ef_005_back)
setEffMoveKey( spep_5 + 0, base5_b, 0, 0 , 0);
setEffMoveKey( spep_5 + 290 -4, base5_b, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base5_b, 1.0, 1.0);
setEffScaleKey( spep_5 + 290 -4, base5_b, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base5_b, 0);
setEffRotateKey( spep_5 + 290 -4, base5_b, 0);
setEffAlphaKey( spep_5 + 0, base5_b, 255);
setEffAlphaKey( spep_5 + 290 -5, base5_b, 255);
setEffAlphaKey( spep_5 + 290 -4, base5_b, 0);


-- ** 敵キャラクター ** --
--敵の動き
setDisp( spep_5 -3 + 78, 1, 1 );
setDisp( spep_5 -3 + 270, 1, 0 );
changeAnime( spep_5 -3 + 78, 1, 5 );

setMoveKey( spep_5 -3 + 78, 1, -81.3, -408.8 , 0 );
setMoveKey( spep_5 -3 + 80, 1, 8.6, -254.3 , 0 );
setMoveKey( spep_5 -3 + 82, 1, 22, -274.9 , 0 );
setMoveKey( spep_5 -3 + 84, 1, -4, -256.9 , 0 );
setMoveKey( spep_5 -3 + 86, 1, 7.6, -207.1 , 0 );
setMoveKey( spep_5 -3 + 88, 1, 5.7, -185.3 , 0 );
setMoveKey( spep_5 -3 + 90, 1, 4.3, -184.5 , 0 );
setMoveKey( spep_5 -3 + 92, 1, 2.8, -183.9 , 0 );
setMoveKey( spep_5 -3 + 94, 1, 1.3, -183.5 , 0 );
setMoveKey( spep_5 -3 + 96, 1, -0.2, -183.3 , 0 );
setMoveKey( spep_5 -3 + 98, 1, 4.4, -184.9 , 0 );
setMoveKey( spep_5 -3 + 100, 1, -4.4, -178.4 , 0 );
setMoveKey( spep_5 -3 + 102, 1, 11.2, -176.6 , 0 );
setMoveKey( spep_5 -3 + 104, 1, 10, -186.1 , 0 );
setMoveKey( spep_5 -3 + 106, 1, 21.2, -188.2 , 0 );
setMoveKey( spep_5 -3 + 108, 1, 11.8, -182.5 , 0 );
setMoveKey( spep_5 -3 + 110, 1, 28.1, -182 , 0 );
setMoveKey( spep_5 -3 + 112, 1, 26.4, -193.4 , 0 );
setMoveKey( spep_5 -3 + 114, 1, 38.1, -197.1 , 0 );
setMoveKey( spep_5 -3 + 116, 1, 27.9, -192.6 , 0 );
setMoveKey( spep_5 -3 + 118, 1, 41.6, -184.9 , 0 );
setMoveKey( spep_5 -3 + 120, 1, 36.4, -189.9 , 0 );
setMoveKey( spep_5 -3 + 122, 1, 45.2, -186.8 , 0 );
setMoveKey( spep_5 -3 + 124, 1, 31, -175.3 , 0 );
setMoveKey( spep_5 -3 + 126, 1, 45.4, -169.1 , 0 );
setMoveKey( spep_5 -3 + 128, 1, 39.9, -175.9 , 0 );
setMoveKey( spep_5 -3 + 130, 1, 47.2, -162.5 , 0 );
setMoveKey( spep_5 -3 + 132, 1, 41.6, -169.4 , 0 );
setMoveKey( spep_5 -3 + 134, 1, 49.2, -155.7 , 0 );
setMoveKey( spep_5 -3 + 136, 1, 43.4, -162.9 , 0 );
setMoveKey( spep_5 -3 + 138, 1, 51, -149 , 0 );
setMoveKey( spep_5 -3 + 140, 1, 46, -155.5 , 0 );
setMoveKey( spep_5 -3 + 142, 1, 33.9, -132.3 , 0 );
setMoveKey( spep_5 -3 + 144, 1, 48.8, -166.1 , 0 );
setMoveKey( spep_5 -3 + 146, 1, 29.2, -136.5 , 0 );
setMoveKey( spep_5 -3 + 148, 1, 8.3, -162 , 0 );
setMoveKey( spep_5 -3 + 150, 1, 18.4, -125.5 , 0 );
setMoveKey( spep_5 -3 + 152, 1, 19.4, -118.8 , 0 );
setMoveKey( spep_5 -3 + 154, 1, 26, -156.7 , 0 );
setMoveKey( spep_5 -3 + 156, 1, -3.8, -127.5 , 0 );
setMoveKey( spep_5 -3 + 158, 1, -5.7, -114.2 , 0 );
setMoveKey( spep_5 -3 + 160, 1, 1.4, -153.4 , 0 );
setMoveKey( spep_5 -3 + 162, 1, -8.2, -123.4 , 0 );
setMoveKey( spep_5 -3 + 164, 1, 11, -109.6 , 0 );
setMoveKey( spep_5 -3 + 166, 1, 39.3, -150 , 0 );
setMoveKey( spep_5 -3 + 168, 1, 5.1, -151.2 , 0 );
setMoveKey( spep_5 -3 + 170, 1, -42.6, -173.6 , 0 );
setMoveKey( spep_5 -3 + 172, 1, -1.2, -200.8 , 0 );
setMoveKey( spep_5 -3 + 174, 1, -24.3, -192.1 , 0 );
setMoveKey( spep_5 -3 + 176, 1, -3.4, -191.6 , 0 );
setMoveKey( spep_5 -3 + 178, 1, -12.9, -210.6 , 0 );
setMoveKey( spep_5 -3 + 180, 1, -0.2, -215.8 , 0 );
setMoveKey( spep_5 -3 + 182, 1, 0.1, -219.5 , 0 );
setMoveKey( spep_5 -3 + 184, 1, -23.4, -210.8 , 0 );
setMoveKey( spep_5 -3 + 186, 1, -2.2, -210.2 , 0 );
setMoveKey( spep_5 -3 + 188, 1, -11.8, -229.4 , 0 );
setMoveKey( spep_5 -3 + 190, 1, 1.1, -234.6 , 0 );
setMoveKey( spep_5 -3 + 192, 1, 1.3, -238.3 , 0 );
setMoveKey( spep_5 -3 + 194, 1, 1.6, -242.2 , 0 );
setMoveKey( spep_5 -3 + 196, 1, 1.8, -245.9 , 0 );
setMoveKey( spep_5 -3 + 198, 1, 2.1, -249.6 , 0 );
setMoveKey( spep_5 -3 + 200, 1, 2.3, -253.4 , 0 );
setMoveKey( spep_5 -3 + 202, 1, 2.6, -257.2 , 0 );
setMoveKey( spep_5 -3 + 204, 1, 2.8, -260.9 , 0 );
setMoveKey( spep_5 -3 + 206, 1, 3.1, -264.7 , 0 );
setMoveKey( spep_5 -3 + 208, 1, 3.3, -268.5 , 0 );
setMoveKey( spep_5 -3 + 210, 1, 3.6, -272.2 , 0 );
setMoveKey( spep_5 -3 + 212, 1, 3.8, -276 , 0 );
setMoveKey( spep_5 -3 + 214, 1, 4.1, -279.7 , 0 );
setMoveKey( spep_5 -3 + 216, 1, 4.3, -283.5 , 0 );
setMoveKey( spep_5 -3 + 218, 1, 4.6, -287.3 , 0 );
setMoveKey( spep_5 -3 + 220, 1, 4.8, -291 , 0 );
setMoveKey( spep_5 -3 + 222, 1, 5.1, -294.8 , 0 );
setMoveKey( spep_5 -3 + 224, 1, 5.3, -298.5 , 0 );
setMoveKey( spep_5 -3 + 226, 1, 5.6, -302.3 , 0 );
setMoveKey( spep_5 -3 + 228, 1, 5.9, -306.1 , 0 );
setMoveKey( spep_5 -3 + 230, 1, 6.1, -309.8 , 0 );
setMoveKey( spep_5 -3 + 232, 1, 6.4, -313.6 , 0 );
setMoveKey( spep_5 -3 + 234, 1, 6.6, -317.4 , 0 );
setMoveKey( spep_5 -3 + 236, 1, 6.9, -321.1 , 0 );
setMoveKey( spep_5 -3 + 238, 1, 7.1, -324.9 , 0 );
setMoveKey( spep_5 -3 + 240, 1, 7.4, -328.7 , 0 );
setMoveKey( spep_5 -3 + 242, 1, 7.6, -332.4 , 0 );
setMoveKey( spep_5 -3 + 244, 1, 7.9, -336.2 , 0 );
setMoveKey( spep_5 -3 + 246, 1, 8.1, -339.9 , 0 );
setMoveKey( spep_5 -3 + 248, 1, 8.4, -343.7 , 0 );
setMoveKey( spep_5 -3 + 250, 1, 8.6, -347.5 , 0 );
setMoveKey( spep_5 -3 + 252, 1, 8.9, -351.2 , 0 );
setMoveKey( spep_5 -3 + 254, 1, 9.1, -354.9 , 0 );
setMoveKey( spep_5 -3 + 256, 1, 9.4, -358.7 , 0 );
setMoveKey( spep_5 -3 + 258, 1, 9.6, -362.5 , 0 );
setMoveKey( spep_5 -3 + 260, 1, 9.8, -366.3 , 0 );
setMoveKey( spep_5 -3 + 262, 1, 10.1, -370 , 0 );
setMoveKey( spep_5 -3 + 264, 1, 10.4, -373.8 , 0 );
setMoveKey( spep_5 -3 + 266, 1, 10.6, -377.5 , 0 );
setMoveKey( spep_5 -3 + 268, 1, 10.9, -381.3 , 0 );
setMoveKey( spep_5 -3 + 270, 1, 11.1, -385.1 , 0 );

setScaleKey( spep_5 -3 + 78, 1, 10.9, 10.91 );
setScaleKey( spep_5 -3 + 80, 1, 6.59, 6.59 );
setScaleKey( spep_5 -3 + 82, 1, 5.95, 5.95 );
setScaleKey( spep_5 -3 + 84, 1, 4.78, 4.79 );
setScaleKey( spep_5 -3 + 86, 1, 3.06, 3.06 );
setScaleKey( spep_5 -3 + 88, 1, 0.75, 0.75 );
setScaleKey( spep_5 -3 + 90, 1, 0.72, 0.72 );
setScaleKey( spep_5 -3 + 92, 1, 0.69, 0.7 );
setScaleKey( spep_5 -3 + 94, 1, 0.67, 0.67 );
setScaleKey( spep_5 -3 + 96, 1, 0.65, 0.65 );
setScaleKey( spep_5 -3 + 98, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 100, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 102, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 104, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 106, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 108, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 110, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 112, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 114, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 118, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 120, 1, 0.49, 0.49 );
setScaleKey( spep_5 -3 + 122, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 124, 1, 0.5, 0.5 );
setScaleKey( spep_5 -3 + 126, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 128, 1, 0.51, 0.51 );
setScaleKey( spep_5 -3 + 130, 1, 0.52, 0.52 );
setScaleKey( spep_5 -3 + 132, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 134, 1, 0.53, 0.53 );
setScaleKey( spep_5 -3 + 136, 1, 0.54, 0.54 );
setScaleKey( spep_5 -3 + 138, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 140, 1, 0.55, 0.55 );
setScaleKey( spep_5 -3 + 142, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 144, 1, 0.56, 0.56 );
setScaleKey( spep_5 -3 + 146, 1, 0.57, 0.57 );
setScaleKey( spep_5 -3 + 148, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 150, 1, 0.58, 0.58 );
setScaleKey( spep_5 -3 + 152, 1, 0.59, 0.59 );
setScaleKey( spep_5 -3 + 154, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 156, 1, 0.6, 0.6 );
setScaleKey( spep_5 -3 + 158, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 160, 1, 0.61, 0.61 );
setScaleKey( spep_5 -3 + 162, 1, 0.62, 0.62 );
setScaleKey( spep_5 -3 + 164, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 166, 1, 0.63, 0.63 );
setScaleKey( spep_5 -3 + 168, 1, 0.64, 0.64 );
setScaleKey( spep_5 -3 + 170, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 178, 1, 0.77, 0.77 );
setScaleKey( spep_5 -3 + 180, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 186, 1, 0.78, 0.78 );
setScaleKey( spep_5 -3 + 188, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 196, 1, 0.79, 0.79 );
setScaleKey( spep_5 -3 + 198, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 206, 1, 0.8, 0.8 );
setScaleKey( spep_5 -3 + 208, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 216, 1, 0.81, 0.81 );
setScaleKey( spep_5 -3 + 218, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 226, 1, 0.82, 0.82 );
setScaleKey( spep_5 -3 + 228, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 236, 1, 0.83, 0.83 );
setScaleKey( spep_5 -3 + 238, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 246, 1, 0.84, 0.84 );
setScaleKey( spep_5 -3 + 248, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 256, 1, 0.85, 0.85 );
setScaleKey( spep_5 -3 + 258, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 266, 1, 0.86, 0.86 );
setScaleKey( spep_5 -3 + 268, 1, 0.87, 0.87 );
setScaleKey( spep_5 -3 + 270, 1, 0.87, 0.87 );

setRotateKey( spep_5 -3 + 78, 1, 34.1 );
setRotateKey( spep_5 -3 + 82, 1, 34.1 );
setRotateKey( spep_5 -3 + 84, 1, 34.2 );
setRotateKey( spep_5 -3 + 270, 1, 34.2 );


-- ** 音 ** --
--目からビーム
SE033 = playSeVer2( spep_5 + 14 -4, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 14 -4, SE033, 68 );
SE034 = playSeVer2( spep_5 + 14 -4, 1177, "",spep_5 + 136 -4, 0, 10, -1);
SE035 = playSeVer2( spep_5 + 16 -4, 1201, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16 -4, SE035, 136 );
SE036 = playSeVer2( spep_5 + 16 -4, 1109, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 16 -4, SE036, 76 );

--気弾飛んでいく
SE037 = playSeVer2( spep_5 + 62 -4, 1202, "",spep_5 + 88 -4, 0, 6, 0.5);
setSeVolumeByWorkId( spep_5 + 62 -4, SE037, 229 );
SE038 = playSeVer2( spep_5 + 74 -4, 1202, "",spep_5 + 98 -4, 0, 6, 0.5);
setSeVolumeByWorkId( spep_5 + 74 -4, SE038, 209 );
SE039 = playSeVer2( spep_5 + 84 -4, 1202, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_5 + 84 -4, SE039, 269 );

--ビーム地面削る
SE040 = playSeVer2( spep_5 + 100 -4, 1023, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_5 + 104 -4, 1044, "",spep_5 + 142 -4, 0, 6, -1);
setSeVolumeByWorkId( spep_5 + 104 -4, SE041, 157 );

--ラスト爆発
SE042 = playSeVer2( spep_5 + 132 -4, 1067, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 132 -4, SE042, 117 );
SE043 = playSeVer2( spep_5 + 138 -4, 1159, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 132 -3);
endPhase( spep_5 + 290 -8);


end