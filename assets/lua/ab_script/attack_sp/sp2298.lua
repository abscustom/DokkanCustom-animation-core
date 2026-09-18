--1023200:ロベル_エレガンスボルト
--sp_effect_a5_00017

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

--味方側
SP_01 = 158608;	--目線カットイン	ef_001	56
SP_02 = 158609;	--目線カットイン　敵側	ef_001_r	56	そのまま反転
SP_03 = 158610;	--杖を振る	ef_002	55
SP_04 = 158611;	--杖を振る　敵側	ef_002_r	55	そのまま反転
SP_05 = 158612;	--フィニッシュ　手前	ef_003_front	123	(ef_003_frontとef_003_back同時再生)
SP_06 = 158613;	--フィニッシュ　奥	ef_003_back	123	(ef_003_frontとef_003_back同時再生)
SP_07 = 158614;	--フィニッシュ　手前　敵側	ef_003_r_front	123	敵側そのまま反転（ef_003_r_frontとef_003_r_back同時再生）
SP_08 = 158615;	--フィニッシュ　奥　敵側	ef_003_r_back	123	敵側そのまま反転（ef_003_r_frontとef_003_r_back同時再生）


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
-- 目線カットイン(112F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0);  --目線カットイン(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 112 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 112 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 112 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 112 -5, base1, 255);
setEffAlphaKey( spep_0 + 112 -4, base1, 0);


spep_x = spep_0 + 24;
-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42 -3, 190006, 82, 0x100, -1, 0, 100, 520);
setEffShake( spep_0 + 42 -3, ctgogo, 70 -6, 10);

setEffMoveKey( spep_0 + 42 -3, ctgogo, 100, 520 , 0);
setEffMoveKey( spep_0 + 106 -3, ctgogo, 100, 520 , 0);
setEffMoveKey( spep_0 + 112 -5, ctgogo, 100, 520 , 0);

setEffScaleKey( spep_0 + 42 -3, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_0 + 106 -3, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_0 + 112 -5, ctgogo, 2.5, 2.5);

setEffAlphaKey( spep_0 + 42 -3, ctgogo, 255);
setEffAlphaKey( spep_0 + 106 -3, ctgogo, 255);
setEffAlphaKey( spep_0 + 112 -5, ctgogo, 0);

setEffRotateKey( spep_0 + 42 -3, ctgogo, 0);
setEffRotateKey( spep_0 + 112 -5, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_0 + 0, SE001, 65  );

SE003 = playSeVer2( spep_0 + 34 -3, 1018, "", 0, 0, 0, -1); --顔カットイン
setSeVolumeByWorkId( spep_0 + 34 -3, SE003, 71  );

SE002 = playSeVer2( spep_0 + 44 -3, 1222, "",spep_0 + 106 -4, 4, 32, 0.6); --ダガー光る
setStartTimeMs( SE002,  733 );

SE004 = playSeVer2( spep_0 + 44 -3, 1287, "",spep_0 + 96 -3, 0, 26, 0.6); --ダガー光る


-- ** 次の準備 ** --
spep_1 = spep_0 + 112 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_1 + 0, shuchusen, 0);
setEffRotateKey( spep_1 + 90, shuchusen, 0);
setEffAlphaKey( spep_1 + 0, shuchusen, 255);
setEffAlphaKey( spep_1 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_1 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94 +2;

------------------------------------------------------
-- 杖を振る(108F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_03, 0x100, -1, 0, 0, 0);  --杖を振る(ef_002)
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 108 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 108 -5, base2, 255);
setEffAlphaKey( spep_2 + 108 -4, base2, 0);


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 6 -3, 1189, "", 0, 0, 0, -1); --腕広げる
setSeVolumeByWorkId( spep_2 + 6 -3, SE007, 158  );

SE008 = playSeVer2( spep_2 + 8 -3, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 -3, SE008, 150  );

SE006 = playSeVer2( spep_2 + 10 -3, 1275, "", 0, 4, 0, -1); --ダガーにエネルギー貯まる
setSeVolumeByWorkId( spep_2 + 10 -3, SE006, 75  );
setStartTimeMs( SE006,  417 );
setPitch( spep_2 + 10 -3, SE006, 700 );
setTimeStretch( SE006, 1.47, 30, 4 );

SE009 = playSeVer2( spep_2 + 28 -3, 1189, "", 0, 0, 0, -1); --腕引き寄せる
setSeVolumeByWorkId( spep_2 + 28 -3, SE009, 180  );
setPitch( spep_2 + 28 -3, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 2, SE007, 0 );
stopSe( SP_dodge - 2, SE008, 0 );
stopSe( SP_dodge - 2, SE006, 0 );
stopSe( SP_dodge - 2, SE009, 0 );
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
SE010 = playSeVer2( spep_2 + 62 -3, 1003, "", 0, 0, 0, -1); --腕前に出す

SE011 = playSeVer2( spep_2 + 70 -3, 1046, "", 0, 0, 0, -1); --ダガーのエネルギー弾ける

SE012 = playSeVer2( spep_2 + 70 -3, 1026, "", 0, 0, 0, -1); --ダガーのエネルギー弾ける


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;

------------------------------------------------------
-- フィニッシュ(244F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_05, 0x100, -1, 0, 0, 0);  --気弾が迫る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 244 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 244 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 244 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 244 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 244 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_06, 0x80, -1, 0, 0, 0);  --気弾が迫る_背景(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 244 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 244 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 244 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 244 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 244 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 244 -5, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 22 -3, 1, 106 );

-- setMoveKey( spep_3 + 0, 1, 587.4, 6.1 , 0 );
setMoveKey( spep_3 + 2 -2, 1, 525.1, 5.5 , 0 );
setMoveKey( spep_3 + 4 -3, 1, 462.8, 4.8 , 0 );
setMoveKey( spep_3 + 6 -3, 1, 400.4, 4.2 , 0 );
setMoveKey( spep_3 + 8 -3, 1, 338.1, 3.5 , 0 );
setMoveKey( spep_3 + 10 -3, 1, 275.8, 2.9 , 0 );
setMoveKey( spep_3 + 12 -3, 1, 213.5, 2.3 , 0 );
setMoveKey( spep_3 + 14 -3, 1, 212.9, 2.2 , 0 );
setMoveKey( spep_3 + 16 -3, 1, 212.3, 2.2 , 0 );
setMoveKey( spep_3 + 18 -3, 1, 211.8, 2.2 , 0 );
setMoveKey( spep_3 + 21 -3, 1, 211.2, 2.2 , 0 );
setMoveKey( spep_3 + 22 -3, 1, 211.7, 14.1 , 0 );
setMoveKey( spep_3 + 24 -3, 1, 211.1, 14 , 0 );
setMoveKey( spep_3 + 26 -3, 1, 218.4, 20.4 , 0 );
setMoveKey( spep_3 + 28 -3, 1, 205.1, 5.9 , 0 );
setMoveKey( spep_3 + 30 -3, 1, 215.7, 17.1 , 0 );
setMoveKey( spep_3 + 32 -3, 1, 205.5, 7.5 , 0 );
setMoveKey( spep_3 + 34 -3, 1, 214.5, 10.6 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 204.3, 18.6 , 0 );
setMoveKey( spep_3 + 38 -3, 1, 207, 13.7 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 206.7, 13.7 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 206.5, 13.7 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 206.3, 13.7 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 206.1, 13.7 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 205.9, 13.7 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 205.7, 13.7 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 205.5, 13.6 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 205.3, 13.6 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 205.1, 13.6 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 204.9, 13.6 , 0 );
setMoveKey( spep_3 + 60 -3, 1, 204.7, 13.6 , 0 );
setMoveKey( spep_3 + 62 -3, 1, 204.4, 13.6 , 0 );
setMoveKey( spep_3 + 64 -3, 1, 204.2, 13.6 , 0 );
setMoveKey( spep_3 + 66 -3, 1, 204, 13.5 , 0 );
setMoveKey( spep_3 + 68 -3, 1, 203.8, 13.5 , 0 );
setMoveKey( spep_3 + 70 -3, 1, 203.6, 13.5 , 0 );
setMoveKey( spep_3 + 72 -3, 1, 203.4, 13.5 , 0 );
setMoveKey( spep_3 + 74 -3, 1, 206.3, 10.3 , 0 );
setMoveKey( spep_3 + 76 -3, 1, 201.4, 16.7 , 0 );
setMoveKey( spep_3 + 78 -3, 1, 199.6, 8.7 , 0 );
setMoveKey( spep_3 + 80 -3, 1, 207.3, 21.5 , 0 );
setMoveKey( spep_3 + 82 -3, 1, 197.6, 5.4 , 0 );
setMoveKey( spep_3 + 84 -3, 1, 195.7, 23 , 0 );
setMoveKey( spep_3 + 86 -3, 1, 206.7, 0.6 , 0 );
setMoveKey( spep_3 + 88 -3, 1, 193.7, 27.8 , 0 );
setMoveKey( spep_3 + 90 -3, 1, 206.3, 2.2 , 0 );
setMoveKey( spep_3 + 92 -3, 1, 204.5, 27.8 , 0 );
setMoveKey( spep_3 + 94 -3, 1, 194.7, 5.4 , 0 );
setMoveKey( spep_3 + 96 -3, 1, 196.1, 27.7 , 0 );
setMoveKey( spep_3 + 98 -3, 1, 213.4, 0.5 , 0 );
setMoveKey( spep_3 + 100 -3, 1, 208.4, 26.1 , 0 );
setMoveKey( spep_3 + 102 -3, 1, 189.1, 2.1 , 0 );
setMoveKey( spep_3 + 104 -3, 1, 193.7, 27.7 , 0 );
setMoveKey( spep_3 + 106 -3, 1, 211, 0.5 , 0 );
setMoveKey( spep_3 + 108 -3, 1, 209.2, 29.3 , 0 );
setMoveKey( spep_3 + 110 -3, 1, 191.4, 0.4 , 0 );
setMoveKey( spep_3 + 112 -3, 1, 199.2, 22.8 , 0 );
setMoveKey( spep_3 + 114 -3, 1, 199, 13.2 , 0 );
setMoveKey( spep_3 + 116 -3, 1, 202.8, 18 , 0 );
setMoveKey( spep_3 + 118 -3, 1, 206.5, 22.8 , 0 );
setMoveKey( spep_3 + 120 -3, 1, 210.3, 27.6 , 0 );
setMoveKey( spep_3 + 122 -3, 1, 214.1, -15.6 , 0 );
setMoveKey( spep_3 + 124 -3, 1, 166, 37.1 , 0 );
setMoveKey( spep_3 + 126 -3, 1, 212.1, 19.5 , 0 );
setMoveKey( spep_3 + 128 -3, 1, 207.1, 41.9 , 0 );
setMoveKey( spep_3 + 130 -3, 1, 186.1, -14.1 , 0 );
setMoveKey( spep_3 + 132 -3, 1, 251.5, 13.1 , 0 );
setMoveKey( spep_3 + 134 -3, 1, 196.9, 13.1 , 0 );
setMoveKey( spep_3 + 136 -3, 1, 176, 10.9 , 0 );
setMoveKey( spep_3 + 138 -3, 1, 155, 8.7 , 0 );
setMoveKey( spep_3 + 140 -3, 1, 134, 6.5 , 0 );
setMoveKey( spep_3 + 142 -3, 1, 113.1, 4.3 , 0 );
setMoveKey( spep_3 + 144 -3, 1, 92.1, 2.1 , 0 );
setMoveKey( spep_3 + 146 -3, 1, 71.2, -0.1 , 0 );
setMoveKey( spep_3 + 148 -3, 1, 50.2, -2.3 , 0 );
setMoveKey( spep_3 + 150 -3, 1, 29.3, -4.6 , 0 );
setMoveKey( spep_3 + 152 -3, 1, 8.3, -6.8 , 0 );
setMoveKey( spep_3 + 154 -3, 1, 24.3, 17.4 , 0 );
setMoveKey( spep_3 + 156 -3, 1, -2.8, -20.8 , 0 );
setMoveKey( spep_3 + 158 -3, 1, 0.5, 8.1 , 0 );
setMoveKey( spep_3 + 160 -3, 1, 16.5, -19 , 0 );
setMoveKey( spep_3 + 162 -3, 1, 21.3, 3.6 , 0 );
setMoveKey( spep_3 + 164 -3, 1, 2.2, -15.5 , 0 );
setMoveKey( spep_3 + 166 -3, 1, 2.2, 13.5 , 0 );
setMoveKey( spep_3 + 168 -3, 1, 15.1, -16.8 , 0 );
setMoveKey( spep_3 + 170 -3, 1, 18.3, 5.7 , 0 );
setMoveKey( spep_3 + 172 -3, 1, 0.8, -18.1 , 0 );
setMoveKey( spep_3 + 174 -3, 1, 16.8, 4.4 , 0 );
setMoveKey( spep_3 + 176 -3, 1, -0.7, -37 , 0 );
setMoveKey( spep_3 + 178 -3, 1, -1.3, -37.8 , 0 );
setMoveKey( spep_3 + 180 -3, 1, -1.9, -38.5 , 0 );
setMoveKey( spep_3 + 182 -3, 1, -2.5, -39.3 , 0 );
setMoveKey( spep_3 + 184 -3, 1, -3.1, -40 , 0 );
setMoveKey( spep_3 + 186 -3, 1, -3.7, -40.8 , 0 );
setMoveKey( spep_3 + 188 -3, 1, -4.3, -41.5 , 0 );
setMoveKey( spep_3 + 190 -3, 1, -4.9, -42.3 , 0 );
setMoveKey( spep_3 + 192 -3, 1, -5.5, -43 , 0 );
setMoveKey( spep_3 + 194 -3, 1, -6.1, -43.8 , 0 );
setMoveKey( spep_3 + 196 -3, 1, -6.7, -44.5 , 0 );
setMoveKey( spep_3 + 198 -3, 1, -7.3, -45.2 , 0 );
setMoveKey( spep_3 + 200 -3, 1, -7.9, -46 , 0 );
setMoveKey( spep_3 + 202 -3, 1, -8.5, -46.8 , 0 );
setMoveKey( spep_3 + 204 -3, 1, -9.1, -47.5 , 0 );
setMoveKey( spep_3 + 206 -3, 1, -9.7, -48.3 , 0 );
setMoveKey( spep_3 + 208 -3, 1, -10.3, -49 , 0 );
setMoveKey( spep_3 + 210 -3, 1, -10.9, -49.7 , 0 );
setMoveKey( spep_3 + 212 -3, 1, -11.4, -50.5 , 0 );
setMoveKey( spep_3 + 214 -3, 1, -12, -51.2 , 0 );
setMoveKey( spep_3 + 216 -3, 1, -12.6, -52 , 0 );
setMoveKey( spep_3 + 218 -3, 1, -13.3, -52.7 , 0 );
setMoveKey( spep_3 + 220 -3, 1, -13.9, -53.5 , 0 );
setMoveKey( spep_3 + 222 -3, 1, -14.4, -54.2 , 0 );
setMoveKey( spep_3 + 224 -3, 1, -15, -55 , 0 );
setMoveKey( spep_3 + 226 -3, 1, -15.6, -55.7 , 0 );
setMoveKey( spep_3 + 228 -3, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_3 + 230 -3, 1, -16.8, -57.2 , 0 );
setMoveKey( spep_3 + 232 -3, 1, -17.4, -57.9 , 0 );
setMoveKey( spep_3 + 234 -3, 1, -18, -58.7 , 0 );
setMoveKey( spep_3 + 236 -3, 1, -18.6, -59.5 , 0 );
setMoveKey( spep_3 + 238 -3, 1, -19.2, -60.2 , 0 );
setMoveKey( spep_3 + 240 -3, 1, -19.8, -61 , 0 );
setMoveKey( spep_3 + 242 -3, 1, -20.4, -61.7 , 0 );
-- setMoveKey( spep_3 + 244 -5, 1, -21, -62.5 , 0 );

-- setScaleKey( spep_3 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 2 -2, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 4 -3, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 6 -3, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 8 -3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10 -3, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 12 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 16 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 18 -3, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 28 -3, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 30 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 46 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 48 -3, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 82 -3, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 84 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 116 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 118 -3, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 134 -3, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 136 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 138 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 140 -3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 142 -3, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 144 -3, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 146 -3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 148 -3, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 150 -3, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 152 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 156 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 158 -3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 170 -3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 172 -3, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 182 -3, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 184 -3, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 194 -3, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 196 -3, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 204 -3, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 206 -3, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 214 -3, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 216 -3, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 226 -3, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 228 -3, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 236 -3, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 238 -3, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 244 -5, 1, 0.87, 0.87 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 21, 1, 0 );
setRotateKey( spep_3 + 22, 1, -49.2 );
setRotateKey( spep_3 + 244 -5, 1, -49.2 );


-- ** 音 ** --
SE013 = playSeVer2( spep_3 + 12 -3, 1145, "", 0, 6, 0, 0.7); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE013, 60  );
setStartTimeMs( SE013,  233 );
setPitch( spep_3 + 12 -3, SE013, 100 );
setTimeStretch( SE013, 1.07, 30, 4 );

SE015 = playSeVer2( spep_3 + 12 -3, 1204, "",spep_3 + 130 -3, 0, 12, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE015, 130  );

SE016 = playSeVer2( spep_3 + 12 -3, 1017, "", 0, 0, 0, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE016, 66  );

SE017 = playSeVer2( spep_3 + 12 -3, 1286, "",spep_0 + 440, 0, 10, -1); --エネルギー放出

SE014 = playSeVer2( spep_3 + 34 -3, 1200, "",spep_3 + 138 -3, 14, 22, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 34 -3, SE014, 188  );
setStartTimeMs( SE014,  467 );

SE018 = playSeVer2( spep_3 + 114 -3, 1068, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_3 + 114 -3, SE018, 89  );

-- SE019 = playSeVer2( spep_3 + 320 -3, 1024, "", 0, 0, 0, -1); --爆発
-- setSeVolumeByWorkId( spep_3 + 320 -3, SE019, 89  );
SE019 = playSeVer2( spep_3 + 120 -3, 1024, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_3 + 120 -3, SE019, 89  );


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 130);
endPhase( spep_3 + 244 -4);


else


-----------------------------------------
--敵側の攻撃
-----------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 目線カットイン(112F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base1 = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0);  --目線カットイン(ef_001)
setEffMoveKey( spep_0 + 0, base1, 0, 0 , 0);
setEffMoveKey( spep_0 + 112 -4, base1, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base1, 1.0, 1.0);
setEffScaleKey( spep_0 + 112 -4, base1, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base1, 0);
setEffRotateKey( spep_0 + 112 -4, base1, 0);
setEffAlphaKey( spep_0 + 0, base1, 255);
setEffAlphaKey( spep_0 + 112 -5, base1, 255);
setEffAlphaKey( spep_0 + 112 -4, base1, 0);


-- spep_x = spep_0 + 24;
-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_0 + 42 -3, 190006, 82, 0x100, -1, 0, 40, 520);
setEffShake( spep_0 + 42 -3, ctgogo, 70 -6, 10);

setEffMoveKey( spep_0 + 42 -3, ctgogo, -40, 520 , 0);
setEffMoveKey( spep_0 + 106 -3, ctgogo, -40, 520 , 0);
setEffMoveKey( spep_0 + 112 -5, ctgogo, -40, 520 , 0);

setEffScaleKey( spep_0 + 42 -3, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_0 + 106 -3, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_0 + 112 -5, ctgogo, -2.5, 2.5);

setEffAlphaKey( spep_0 + 42 -3, ctgogo, 255);
setEffAlphaKey( spep_0 + 106 -3, ctgogo, 255);
setEffAlphaKey( spep_0 + 112 -5, ctgogo, 0);

setEffRotateKey( spep_0 + 42 -3, ctgogo, 0);
setEffRotateKey( spep_0 + 112 -5, ctgogo, 0);


-- ** 音 ** --
SE001 = playSeVer2( spep_0 + 0, 8, "", 0, 0, 0, -1); --入り
setSeVolumeByWorkId( spep_0 + 0, SE001, 65  );

-- SE003 = playSeVer2( spep_0 + 34 -3, 1018, "", 0, 0, 0, -1); --顔カットイン
-- setSeVolumeByWorkId( spep_0 + 34 -3, SE003, 71  );

SE002 = playSeVer2( spep_0 + 44 -3, 1222, "",spep_0 + 106 -4, 4, 32, 0.6); --ダガー光る
setStartTimeMs( SE002,  733 );

SE004 = playSeVer2( spep_0 + 44 -3, 1287, "",spep_0 + 96 -3, 0, 26, 0.6); --ダガー光る


-- ** 次の準備 ** --
spep_1 = spep_0 + 112 -4;

--------------------------------------
--カードカットイン(94F + 2)
--------------------------------------

-- ** カードカットイン ** --
speff2 = entryEffect( spep_1 + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_1 + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_1 + 0, shuchusen, 90, 20);
setEffMoveKey( spep_1 + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_1 + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_1 + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_1 + 0, shuchusen, 0);
setEffRotateKey( spep_1 + 90, shuchusen, 0);
setEffAlphaKey( spep_1 + 0, shuchusen, 255);
setEffAlphaKey( spep_1 + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_1 + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_1 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_1 + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_1 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_2 = spep_1 + 94 +2;

------------------------------------------------------
-- 杖を振る(108F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base2 = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0);  --杖を振る(ef_002)
setEffMoveKey( spep_2 + 0, base2, 0, 0 , 0);
setEffMoveKey( spep_2 + 108 -4, base2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base2, 1.0, 1.0);
setEffScaleKey( spep_2 + 108 -4, base2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base2, 0);
setEffRotateKey( spep_2 + 108 -4, base2, 0);
setEffAlphaKey( spep_2 + 0, base2, 255);
setEffAlphaKey( spep_2 + 108 -5, base2, 255);
setEffAlphaKey( spep_2 + 108 -4, base2, 0);


-- ** 音 ** --
SE007 = playSeVer2( spep_2 + 6 -3, 1189, "", 0, 0, 0, -1); --腕広げる
setSeVolumeByWorkId( spep_2 + 6 -3, SE007, 158  );

SE008 = playSeVer2( spep_2 + 8 -3, 1252, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 8 -3, SE008, 150  );

SE006 = playSeVer2( spep_2 + 10 -3, 1275, "", 0, 4, 0, -1); --ダガーにエネルギー貯まる
setSeVolumeByWorkId( spep_2 + 10 -3, SE006, 75  );
setStartTimeMs( SE006,  417 );
setPitch( spep_2 + 10 -3, SE006, 700 );
setTimeStretch( SE006, 1.47, 30, 4 );

SE009 = playSeVer2( spep_2 + 28 -3, 1189, "", 0, 0, 0, -1); --腕引き寄せる
setSeVolumeByWorkId( spep_2 + 28 -3, SE009, 180  );
setPitch( spep_2 + 28 -3, SE009, 200 );
setTimeStretch( SE009, 1.13, 30, 4 );


------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 58; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 2, SE007, 0 );
stopSe( SP_dodge - 2, SE008, 0 );
stopSe( SP_dodge - 2, SE006, 0 );
stopSe( SP_dodge - 2, SE009, 0 );
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------

-- ** 音 ** --
SE010 = playSeVer2( spep_2 + 62 -3, 1003, "", 0, 0, 0, -1); --腕前に出す

SE011 = playSeVer2( spep_2 + 70 -3, 1046, "", 0, 0, 0, -1); --ダガーのエネルギー弾ける

SE012 = playSeVer2( spep_2 + 70 -3, 1026, "", 0, 0, 0, -1); --ダガーのエネルギー弾ける


-- ** 次の準備 ** --
spep_3 = spep_2 + 108 -4;

------------------------------------------------------
-- フィニッシュ(244F -4)
------------------------------------------------------

-- ** エフェクト等 ** --
base3_f = entryEffect( spep_3 + 0, SP_07, 0x100, -1, 0, 0, 0);  --気弾が迫る(ef_003)
setEffMoveKey( spep_3 + 0, base3_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 244 -4, base3_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 244 -4, base3_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_f, 0);
setEffRotateKey( spep_3 + 244 -4, base3_f, 0);
setEffAlphaKey( spep_3 + 0, base3_f, 255);
setEffAlphaKey( spep_3 + 244 -5, base3_f, 255);
setEffAlphaKey( spep_3 + 244 -4, base3_f, 0);

base3_b = entryEffect( spep_3 + 0, SP_08, 0x80, -1, 0, 0, 0);  --気弾が迫る_背景(ef_003_back)
setEffMoveKey( spep_3 + 0, base3_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 244 -4, base3_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base3_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 244 -4, base3_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base3_b, 0);
setEffRotateKey( spep_3 + 244 -4, base3_b, 0);
setEffAlphaKey( spep_3 + 0, base3_b, 255);
setEffAlphaKey( spep_3 + 244 -5, base3_b, 255);
setEffAlphaKey( spep_3 + 244 -4, base3_b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 244 -5, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 + 22 -3, 1, 106 );

-- setMoveKey( spep_3 + 0, 1, 587.4, 6.1 , 0 );
setMoveKey( spep_3 + 2 -2, 1, 525.1, 5.5 , 0 );
setMoveKey( spep_3 + 4 -3, 1, 462.8, 4.8 , 0 );
setMoveKey( spep_3 + 6 -3, 1, 400.4, 4.2 , 0 );
setMoveKey( spep_3 + 8 -3, 1, 338.1, 3.5 , 0 );
setMoveKey( spep_3 + 10 -3, 1, 275.8, 2.9 , 0 );
setMoveKey( spep_3 + 12 -3, 1, 213.5, 2.3 , 0 );
setMoveKey( spep_3 + 14 -3, 1, 212.9, 2.2 , 0 );
setMoveKey( spep_3 + 16 -3, 1, 212.3, 2.2 , 0 );
setMoveKey( spep_3 + 18 -3, 1, 211.8, 2.2 , 0 );
setMoveKey( spep_3 + 21 -3, 1, 211.2, 2.2 , 0 );
setMoveKey( spep_3 + 22 -3, 1, 211.7, 14.1 , 0 );
setMoveKey( spep_3 + 24 -3, 1, 211.1, 14 , 0 );
setMoveKey( spep_3 + 26 -3, 1, 218.4, 20.4 , 0 );
setMoveKey( spep_3 + 28 -3, 1, 205.1, 5.9 , 0 );
setMoveKey( spep_3 + 30 -3, 1, 215.7, 17.1 , 0 );
setMoveKey( spep_3 + 32 -3, 1, 205.5, 7.5 , 0 );
setMoveKey( spep_3 + 34 -3, 1, 214.5, 10.6 , 0 );
setMoveKey( spep_3 + 36 -3, 1, 204.3, 18.6 , 0 );
setMoveKey( spep_3 + 38 -3, 1, 207, 13.7 , 0 );
setMoveKey( spep_3 + 40 -3, 1, 206.7, 13.7 , 0 );
setMoveKey( spep_3 + 42 -3, 1, 206.5, 13.7 , 0 );
setMoveKey( spep_3 + 44 -3, 1, 206.3, 13.7 , 0 );
setMoveKey( spep_3 + 46 -3, 1, 206.1, 13.7 , 0 );
setMoveKey( spep_3 + 48 -3, 1, 205.9, 13.7 , 0 );
setMoveKey( spep_3 + 50 -3, 1, 205.7, 13.7 , 0 );
setMoveKey( spep_3 + 52 -3, 1, 205.5, 13.6 , 0 );
setMoveKey( spep_3 + 54 -3, 1, 205.3, 13.6 , 0 );
setMoveKey( spep_3 + 56 -3, 1, 205.1, 13.6 , 0 );
setMoveKey( spep_3 + 58 -3, 1, 204.9, 13.6 , 0 );
setMoveKey( spep_3 + 60 -3, 1, 204.7, 13.6 , 0 );
setMoveKey( spep_3 + 62 -3, 1, 204.4, 13.6 , 0 );
setMoveKey( spep_3 + 64 -3, 1, 204.2, 13.6 , 0 );
setMoveKey( spep_3 + 66 -3, 1, 204, 13.5 , 0 );
setMoveKey( spep_3 + 68 -3, 1, 203.8, 13.5 , 0 );
setMoveKey( spep_3 + 70 -3, 1, 203.6, 13.5 , 0 );
setMoveKey( spep_3 + 72 -3, 1, 203.4, 13.5 , 0 );
setMoveKey( spep_3 + 74 -3, 1, 206.3, 10.3 , 0 );
setMoveKey( spep_3 + 76 -3, 1, 201.4, 16.7 , 0 );
setMoveKey( spep_3 + 78 -3, 1, 199.6, 8.7 , 0 );
setMoveKey( spep_3 + 80 -3, 1, 207.3, 21.5 , 0 );
setMoveKey( spep_3 + 82 -3, 1, 197.6, 5.4 , 0 );
setMoveKey( spep_3 + 84 -3, 1, 195.7, 23 , 0 );
setMoveKey( spep_3 + 86 -3, 1, 206.7, 0.6 , 0 );
setMoveKey( spep_3 + 88 -3, 1, 193.7, 27.8 , 0 );
setMoveKey( spep_3 + 90 -3, 1, 206.3, 2.2 , 0 );
setMoveKey( spep_3 + 92 -3, 1, 204.5, 27.8 , 0 );
setMoveKey( spep_3 + 94 -3, 1, 194.7, 5.4 , 0 );
setMoveKey( spep_3 + 96 -3, 1, 196.1, 27.7 , 0 );
setMoveKey( spep_3 + 98 -3, 1, 213.4, 0.5 , 0 );
setMoveKey( spep_3 + 100 -3, 1, 208.4, 26.1 , 0 );
setMoveKey( spep_3 + 102 -3, 1, 189.1, 2.1 , 0 );
setMoveKey( spep_3 + 104 -3, 1, 193.7, 27.7 , 0 );
setMoveKey( spep_3 + 106 -3, 1, 211, 0.5 , 0 );
setMoveKey( spep_3 + 108 -3, 1, 209.2, 29.3 , 0 );
setMoveKey( spep_3 + 110 -3, 1, 191.4, 0.4 , 0 );
setMoveKey( spep_3 + 112 -3, 1, 199.2, 22.8 , 0 );
setMoveKey( spep_3 + 114 -3, 1, 199, 13.2 , 0 );
setMoveKey( spep_3 + 116 -3, 1, 202.8, 18 , 0 );
setMoveKey( spep_3 + 118 -3, 1, 206.5, 22.8 , 0 );
setMoveKey( spep_3 + 120 -3, 1, 210.3, 27.6 , 0 );
setMoveKey( spep_3 + 122 -3, 1, 214.1, -15.6 , 0 );
setMoveKey( spep_3 + 124 -3, 1, 166, 37.1 , 0 );
setMoveKey( spep_3 + 126 -3, 1, 212.1, 19.5 , 0 );
setMoveKey( spep_3 + 128 -3, 1, 207.1, 41.9 , 0 );
setMoveKey( spep_3 + 130 -3, 1, 186.1, -14.1 , 0 );
setMoveKey( spep_3 + 132 -3, 1, 251.5, 13.1 , 0 );
setMoveKey( spep_3 + 134 -3, 1, 196.9, 13.1 , 0 );
setMoveKey( spep_3 + 136 -3, 1, 176, 10.9 , 0 );
setMoveKey( spep_3 + 138 -3, 1, 155, 8.7 , 0 );
setMoveKey( spep_3 + 140 -3, 1, 134, 6.5 , 0 );
setMoveKey( spep_3 + 142 -3, 1, 113.1, 4.3 , 0 );
setMoveKey( spep_3 + 144 -3, 1, 92.1, 2.1 , 0 );
setMoveKey( spep_3 + 146 -3, 1, 71.2, -0.1 , 0 );
setMoveKey( spep_3 + 148 -3, 1, 50.2, -2.3 , 0 );
setMoveKey( spep_3 + 150 -3, 1, 29.3, -4.6 , 0 );
setMoveKey( spep_3 + 152 -3, 1, 8.3, -6.8 , 0 );
setMoveKey( spep_3 + 154 -3, 1, 24.3, 17.4 , 0 );
setMoveKey( spep_3 + 156 -3, 1, -2.8, -20.8 , 0 );
setMoveKey( spep_3 + 158 -3, 1, 0.5, 8.1 , 0 );
setMoveKey( spep_3 + 160 -3, 1, 16.5, -19 , 0 );
setMoveKey( spep_3 + 162 -3, 1, 21.3, 3.6 , 0 );
setMoveKey( spep_3 + 164 -3, 1, 2.2, -15.5 , 0 );
setMoveKey( spep_3 + 166 -3, 1, 2.2, 13.5 , 0 );
setMoveKey( spep_3 + 168 -3, 1, 15.1, -16.8 , 0 );
setMoveKey( spep_3 + 170 -3, 1, 18.3, 5.7 , 0 );
setMoveKey( spep_3 + 172 -3, 1, 0.8, -18.1 , 0 );
setMoveKey( spep_3 + 174 -3, 1, 16.8, 4.4 , 0 );
setMoveKey( spep_3 + 176 -3, 1, -0.7, -37 , 0 );
setMoveKey( spep_3 + 178 -3, 1, -1.3, -37.8 , 0 );
setMoveKey( spep_3 + 180 -3, 1, -1.9, -38.5 , 0 );
setMoveKey( spep_3 + 182 -3, 1, -2.5, -39.3 , 0 );
setMoveKey( spep_3 + 184 -3, 1, -3.1, -40 , 0 );
setMoveKey( spep_3 + 186 -3, 1, -3.7, -40.8 , 0 );
setMoveKey( spep_3 + 188 -3, 1, -4.3, -41.5 , 0 );
setMoveKey( spep_3 + 190 -3, 1, -4.9, -42.3 , 0 );
setMoveKey( spep_3 + 192 -3, 1, -5.5, -43 , 0 );
setMoveKey( spep_3 + 194 -3, 1, -6.1, -43.8 , 0 );
setMoveKey( spep_3 + 196 -3, 1, -6.7, -44.5 , 0 );
setMoveKey( spep_3 + 198 -3, 1, -7.3, -45.2 , 0 );
setMoveKey( spep_3 + 200 -3, 1, -7.9, -46 , 0 );
setMoveKey( spep_3 + 202 -3, 1, -8.5, -46.8 , 0 );
setMoveKey( spep_3 + 204 -3, 1, -9.1, -47.5 , 0 );
setMoveKey( spep_3 + 206 -3, 1, -9.7, -48.3 , 0 );
setMoveKey( spep_3 + 208 -3, 1, -10.3, -49 , 0 );
setMoveKey( spep_3 + 210 -3, 1, -10.9, -49.7 , 0 );
setMoveKey( spep_3 + 212 -3, 1, -11.4, -50.5 , 0 );
setMoveKey( spep_3 + 214 -3, 1, -12, -51.2 , 0 );
setMoveKey( spep_3 + 216 -3, 1, -12.6, -52 , 0 );
setMoveKey( spep_3 + 218 -3, 1, -13.3, -52.7 , 0 );
setMoveKey( spep_3 + 220 -3, 1, -13.9, -53.5 , 0 );
setMoveKey( spep_3 + 222 -3, 1, -14.4, -54.2 , 0 );
setMoveKey( spep_3 + 224 -3, 1, -15, -55 , 0 );
setMoveKey( spep_3 + 226 -3, 1, -15.6, -55.7 , 0 );
setMoveKey( spep_3 + 228 -3, 1, -16.2, -56.5 , 0 );
setMoveKey( spep_3 + 230 -3, 1, -16.8, -57.2 , 0 );
setMoveKey( spep_3 + 232 -3, 1, -17.4, -57.9 , 0 );
setMoveKey( spep_3 + 234 -3, 1, -18, -58.7 , 0 );
setMoveKey( spep_3 + 236 -3, 1, -18.6, -59.5 , 0 );
setMoveKey( spep_3 + 238 -3, 1, -19.2, -60.2 , 0 );
setMoveKey( spep_3 + 240 -3, 1, -19.8, -61 , 0 );
setMoveKey( spep_3 + 242 -3, 1, -20.4, -61.7 , 0 );
-- setMoveKey( spep_3 + 244 -5, 1, -21, -62.5 , 0 );

-- setScaleKey( spep_3 + 0, 1, 1.65, 1.65 );
setScaleKey( spep_3 + 2 -2, 1, 1.47, 1.47 );
setScaleKey( spep_3 + 4 -3, 1, 1.3, 1.3 );
setScaleKey( spep_3 + 6 -3, 1, 1.12, 1.12 );
setScaleKey( spep_3 + 8 -3, 1, 0.95, 0.95 );
setScaleKey( spep_3 + 10 -3, 1, 0.77, 0.77 );
setScaleKey( spep_3 + 12 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 16 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 18 -3, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 28 -3, 1, 0.59, 0.59 );
setScaleKey( spep_3 + 30 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 46 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 48 -3, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 82 -3, 1, 0.57, 0.57 );
setScaleKey( spep_3 + 84 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 116 -3, 1, 0.56, 0.56 );
setScaleKey( spep_3 + 118 -3, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 134 -3, 1, 0.55, 0.55 );
setScaleKey( spep_3 + 136 -3, 1, 0.58, 0.58 );
setScaleKey( spep_3 + 138 -3, 1, 0.6, 0.6 );
setScaleKey( spep_3 + 140 -3, 1, 0.63, 0.63 );
setScaleKey( spep_3 + 142 -3, 1, 0.66, 0.66 );
setScaleKey( spep_3 + 144 -3, 1, 0.68, 0.68 );
setScaleKey( spep_3 + 146 -3, 1, 0.71, 0.71 );
setScaleKey( spep_3 + 148 -3, 1, 0.74, 0.74 );
setScaleKey( spep_3 + 150 -3, 1, 0.76, 0.76 );
setScaleKey( spep_3 + 152 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 156 -3, 1, 0.79, 0.79 );
setScaleKey( spep_3 + 158 -3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 170 -3, 1, 0.8, 0.8 );
setScaleKey( spep_3 + 172 -3, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 182 -3, 1, 0.81, 0.81 );
setScaleKey( spep_3 + 184 -3, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 194 -3, 1, 0.82, 0.82 );
setScaleKey( spep_3 + 196 -3, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 204 -3, 1, 0.83, 0.83 );
setScaleKey( spep_3 + 206 -3, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 214 -3, 1, 0.84, 0.84 );
setScaleKey( spep_3 + 216 -3, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 226 -3, 1, 0.85, 0.85 );
setScaleKey( spep_3 + 228 -3, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 236 -3, 1, 0.86, 0.86 );
setScaleKey( spep_3 + 238 -3, 1, 0.87, 0.87 );
setScaleKey( spep_3 + 244 -5, 1, 0.87, 0.87 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 + 21, 1, 0 );
setRotateKey( spep_3 + 22, 1, -49.2 );
setRotateKey( spep_3 + 244 -5, 1, -49.2 );


-- ** 音 ** --
SE013 = playSeVer2( spep_3 + 12 -3, 1145, "", 0, 6, 0, 0.7); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE013, 60  );
setStartTimeMs( SE013,  233 );
setPitch( spep_3 + 12 -3, SE013, 100 );
setTimeStretch( SE013, 1.07, 30, 4 );

SE015 = playSeVer2( spep_3 + 12 -3, 1204, "",spep_3 + 130 -3, 0, 12, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE015, 130  );

SE016 = playSeVer2( spep_3 + 12 -3, 1017, "", 0, 0, 0, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 12 -3, SE016, 66  );

SE017 = playSeVer2( spep_3 + 12 -3, 1286, "",spep_0 + 440, 0, 10, -1); --エネルギー放出

SE014 = playSeVer2( spep_3 + 34 -3, 1200, "",spep_3 + 138 -3, 14, 22, -1); --エネルギー放出
setSeVolumeByWorkId( spep_3 + 34 -3, SE014, 188  );
setStartTimeMs( SE014,  467 );

SE018 = playSeVer2( spep_3 + 114 -3, 1068, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_3 + 114 -3, SE018, 89  );

-- SE019 = playSeVer2( spep_3 + 320 -3, 1024, "", 0, 0, 0, -1); --爆発
-- setSeVolumeByWorkId( spep_3 + 320 -3, SE019, 89  );
SE019 = playSeVer2( spep_3 + 120 -3, 1024, "", 0, 0, 0, -1); --爆発
setSeVolumeByWorkId( spep_3 + 120 -3, SE019, 89  );


-- ** ダメージ表示 ** --
dealDamage( spep_3 + 130);
endPhase( spep_3 + 244 -4);


end
