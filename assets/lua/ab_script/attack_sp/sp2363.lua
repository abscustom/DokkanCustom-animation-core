--1023630:UR_トランクス(青年期)_シャイニングスラッシュ
--sp_effect_b2_00050
--sp2363

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
SP_01 = 159668;	--前方ダッシュ	ef_001
SP_02 = 159669;	--殴りラッシュ	ef_002
SP_03 = 159671;	--抜刀	ef_003
SP_04 = 159672;	--斬りかかり	ef_004
SP_05 = 159673;	--フィニッシュ	ef_005

--エフェクト(てき)
SP_02r = 159670;	--殴りラッシュ　敵側	ef_002e
SP_05r = 159674;	--フィニッシュ　敵側	ef_005e

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5136,   0);
setMoveKey(   1,   0,    0, -5136,   0);
setMoveKey(   2,   0,    0, -5136,   0);
setMoveKey(   3,   0,    0, -5136,   0);
setMoveKey(   4,   0,    0, -5136,   0);
setMoveKey(   5,   0,    0, -5136,   0);
setMoveKey(   6,   0,    0, -5136,   0);
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

setMoveKey(   0,   1,    0, -5136,   0);
setMoveKey(   1,   1,    0, -5136,   0);
setMoveKey(   2,   1,    0, -5136,   0);
setMoveKey(   3,   1,    0, -5136,   0);
setMoveKey(   4,   1,    0, -5136,   0);
setMoveKey(   5,   1,    0, -5136,   0);
setMoveKey(   6,   1,    0, -5136,   0);
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


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --前方ダッシュ	ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 60 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 60 -5, base_1, 255);
setEffAlphaKey( spep_1 + 60 -4, base_1, 0);


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE001, 1.25, 30, 4 );

SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- 殴りラッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --殴りラッシュ	ef_002
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 184 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 184 -5, base_2, 255);
setEffAlphaKey( spep_2 + 184 -4, base_2, 0);


-- ** 黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 184 -4, 0, 0, 0, 0, 205 );  --black bg fade


-- ** 流線(横) ** --
ryusen_2 = entryEffectLife( spep_2 + 0, 920, 184 -4, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2 + 0, ryusen_2, 0, 0, 0);
setEffMoveKey( spep_2 + 184 -4, ryusen_2, 0, 0, 0);
setEffRotateKey( spep_2, ryusen_2, 0);
setEffRotateKey( spep_2 + 184 -4, ryusen_2, 0);
setEffScaleKey( spep_2 + 0, ryusen_2, 1.6, 1.6);
setEffScaleKey( spep_2 + 184 -4, ryusen_2, 1.6, 1.6);
setEffAlphaKey( spep_2 + 0, ryusen_2, 128);
setEffAlphaKey( spep_2 + 184 -5, ryusen_2, 128);
setEffAlphaKey( spep_2 + 184 -4, ryusen_2, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 184, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 22, 1, 108 );
changeAnime( spep_2 -3 + 28, 1, 106 );
changeAnime( spep_2 -3 + 38, 1, 108 );
changeAnime( spep_2 -3 + 50, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 70, 1, 106 );
changeAnime( spep_2 -3 + 80, 1, 108 );
changeAnime( spep_2 -3 + 90, 1, 106 );
changeAnime( spep_2 -3 + 100, 1, 108 );
changeAnime( spep_2 -3 + 110, 1, 106 );
changeAnime( spep_2 -3 + 120, 1, 108 );
changeAnime( spep_2 -3 + 130, 1, 106 );
changeAnime( spep_2 -3 + 134, 1, 108 );
changeAnime( spep_2 -3 + 162, 1, 106 );

setMoveKey( spep_2 + 0, 1, 595.4, -39.9 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 496.2, -35.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 408.6, -32 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 332.7, -28.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 268.4, -26.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 215.9, -23.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 175, -22.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 145.8, -20.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 128.3, -20.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 157.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 187.6, 41.7 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 145.6, -41 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 123.9, 8.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 164.4, -25.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.8, 13.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 175.5, -8.2 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 173.2, 17 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 208.1, 10.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 236.1, 17.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 270.4, 6.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 270.3, 15.7 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 269.5, 17.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 154.2, 1.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 157.5, -0.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 150.8, 7.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 152.7, 0.6 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 159.3, -2.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 187, 11.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191.6, 20 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.2, 20.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 222.8, 17.5 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 212.7, 24.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 166.1, 6.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 161.7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 174.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 178.5, 1 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 170.8, -1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 176.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.2, 16.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 228.2, 19.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 233.7, 15.5 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 233.3, 13.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 154.5, 1.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 180.8, 3.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 196.5, -0.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 195.1, -1.4 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 197.3, 0.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 172.8, 16 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 199.6, 16.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 232.9, 16.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 228.8, 14.5 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 228.4, 9.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 165.8, 10.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 165.1, 10.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 179.2, -1.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 169.2, 12.9 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 177.2, 0.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 177.7, 13.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 187.4, 17 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 216.6, 15.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 203.4, 13.9 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 213.9, 13.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 160.7, 8.1 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 218.8, -1.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 255.4, -2.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 262.8, -3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 279.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 285.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 290.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 293.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 296.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 297, 0.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 297.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 282.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 246.6, 0.2 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 136.3, 19.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 167.7, 64.4 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 172.5, 56.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 122.1, 38.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 262.3, 50.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 445, 25.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 999.2, -31.4 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 969.2, -45.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 951.4, -18.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 964.2, -34.1 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 966.4, -12.1 , 0 );
setMoveKey( spep_2 -4 + 184, 1, 974.1, -24.8 , 0 );

setScaleKey( spep_2 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_2 -4 + 184, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 21, 1, 0 );
setRotateKey( spep_2 -3 + 22, 1, -4 );
setRotateKey( spep_2 -3 + 27, 1, -4 );
setRotateKey( spep_2 -3 + 28, 1, -43.7 );
setRotateKey( spep_2 -3 + 30, 1, -39.4 );
setRotateKey( spep_2 -3 + 32, 1, -35.2 );
setRotateKey( spep_2 -3 + 34, 1, -30.9 );
setRotateKey( spep_2 -3 + 37, 1, -30.9 );
setRotateKey( spep_2 -3 + 38, 1, -4 );
setRotateKey( spep_2 -3 + 49, 1, -4 );
setRotateKey( spep_2 -3 + 50, 1, -43.7 );
setRotateKey( spep_2 -3 + 59, 1, -43.7 );
setRotateKey( spep_2 -3 + 60, 1, -4 );
setRotateKey( spep_2 -3 + 69, 1, -4 );
setRotateKey( spep_2 -3 + 70, 1, -43.7 );
setRotateKey( spep_2 -3 + 72, 1, -32.9 );
setRotateKey( spep_2 -3 + 74, 1, -22.2 );
setRotateKey( spep_2 -3 + 79, 1, -22.2 );
setRotateKey( spep_2 -3 + 80, 1, -4 );
setRotateKey( spep_2 -3 + 89, 1, -4 );
setRotateKey( spep_2 -3 + 90, 1, -43.7 );
setRotateKey( spep_2 -3 + 92, 1, -32.2 );
setRotateKey( spep_2 -3 + 94, 1, -20.7 );
setRotateKey( spep_2 -3 + 99, 1, -20.7 );
setRotateKey( spep_2 -3 + 100, 1, -4 );
setRotateKey( spep_2 -3 + 109, 1, -4 );
setRotateKey( spep_2 -3 + 110, 1, -43.7 );
setRotateKey( spep_2 -3 + 112, 1, -37.2 );
setRotateKey( spep_2 -3 + 114, 1, -30.7 );
setRotateKey( spep_2 -3 + 119, 1, -30.7 );
setRotateKey( spep_2 -3 + 120, 1, -4 );
setRotateKey( spep_2 -3 + 129, 1, -4 );
setRotateKey( spep_2 -3 + 130, 1, -31.7 );
setRotateKey( spep_2 -3 + 133, 1, -35.8 );
setRotateKey( spep_2 -3 + 134, 1, 1.3 );
setRotateKey( spep_2 -3 + 136, 1, -0.5 );
setRotateKey( spep_2 -3 + 138, 1, -1.8 );
setRotateKey( spep_2 -3 + 140, 1, -2.6 );
setRotateKey( spep_2 -3 + 142, 1, -3.1 );
setRotateKey( spep_2 -3 + 144, 1, -3.5 );
setRotateKey( spep_2 -3 + 146, 1, -3.7 );
setRotateKey( spep_2 -3 + 148, 1, -3.9 );
setRotateKey( spep_2 -3 + 150, 1, -4 );
setRotateKey( spep_2 -3 + 161, 1, -4 );
setRotateKey( spep_2 -3 + 162, 1, -20.2 );
setRotateKey( spep_2 -3 + 164, 1, -20.2 );
setRotateKey( spep_2 -3 + 166, 1, -20 );
setRotateKey( spep_2 -3 + 168, 1, -18.8 );
setRotateKey( spep_2 -3 + 170, 1, -14 );
setRotateKey( spep_2 -3 + 172, 1, -1.3 );
setRotateKey( spep_2 -3 + 174, 1, 26.8 );
setRotateKey( spep_2 -4 + 184, 1, 26.8 );


-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_2 -3 + 24,  10005, 34 - 24, 0x100, -1, 0, 106.9, 197.7 );  --ガッ
setEffMoveKey( spep_2 -3 + 24, ctgaf, 106.9, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctgaf, 140.1, 233.8 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctgaf, 152.9, 241.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctgaf, 150.3, 250.2 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctgaf, 163.7, 255 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctgaf, 164.5, 256.9 , 0 );
setEffScaleKey( spep_2 -3 + 24, ctgaf, 1.03, 1.03 );
setEffScaleKey( spep_2 -3 + 26, ctgaf, 1.55, 1.54 );
setEffScaleKey( spep_2 -3 + 28, ctgaf, 1.66, 1.64 );
setEffScaleKey( spep_2 -3 + 30, ctgaf, 1.72, 1.71 );
setEffScaleKey( spep_2 -3 + 32, ctgaf, 1.76, 1.75 );
setEffScaleKey( spep_2 -3 + 34, ctgaf, 1.78, 1.76 );
setEffRotateKey( spep_2 -3 + 24, ctgaf, 0 );
setEffRotateKey( spep_2 -3 + 34, ctgaf, 0 );
setEffAlphaKey( spep_2 -3 + 24, ctgaf, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctgaf, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctgaf, 113 );
setEffAlphaKey( spep_2 -3 + 32, ctgaf, 28 );
setEffAlphaKey( spep_2 -3 + 34, ctgaf, 0 );

ctdogaga = entryEffectLife( spep_2 -3 + 40, 10017, 150 - 40, 0x100, -1, 0, 64.5, 202.7 );	--ドガガガッ
setEffMoveKey( spep_2 -3 + 40, ctdogaga, 64.5, 202.7 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, -2.4, 295.2 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, -5.8, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, -15.2, 297.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, 1.2, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, -20.3, 305.7 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, 0.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogaga, -16.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogaga, -5, 303.4 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogaga, -8.9, 311.2 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogaga, -15.3, 313.2 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogaga, 3.1, 318 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogaga, -16.4, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdogaga, -4.3, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdogaga, -21.5, 309.8 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdogaga, -0.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdogaga, -17.4, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdogaga, -1.8, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdogaga, -14.8, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdogaga, -3.5, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdogaga, -6.7, 319.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdogaga, -9.5, 303.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctdogaga, -8.1, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctdogaga, -17.4, 299.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogaga, 0.3, 316.9 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogaga, -15.8, 305.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogaga, -1.3, 316.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogaga, -10.5, 299.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogaga, -1.3, 316.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogaga, -18.9, 306.2 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogaga, -3.7, 317.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdogaga, -10.6, 300.2 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdogaga, -5.8, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdogaga, -15.2, 297.7 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdogaga, 1.2, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdogaga, -20.3, 305.7 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdogaga, 0.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdogaga, -16.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdogaga, -5, 303.4 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdogaga, -8.9, 311.2 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdogaga, -15.3, 313.2 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdogaga, 3.1, 318 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdogaga, -16.4, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdogaga, -4.3, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdogaga, -21.5, 309.8 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdogaga, -0.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdogaga, -17.4, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdogaga, -1.8, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdogaga, -14.8, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdogaga, -3.5, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctdogaga, -6.7, 319.5 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctdogaga, -9.5, 303.2 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctdogaga, -8.1, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctdogaga, -15, 337.3 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctdogaga, -12.3, 364.5 , 0 );
setEffMoveKey( spep_2 -3 + 150, ctdogaga, -31.7, 383.9 , 0 );
setEffScaleKey( spep_2 -3 + 40, ctdogaga, 1.91, 1.94 );
setEffScaleKey( spep_2 -3 + 42, ctdogaga, 2.71, 2.75 );
setEffScaleKey( spep_2 -3 + 44, ctdogaga, 2.87, 2.91 );
setEffScaleKey( spep_2 -3 + 144, ctdogaga, 2.87, 2.91 );
setEffScaleKey( spep_2 -3 + 146, ctdogaga, 3.04, 3.1 );
setEffScaleKey( spep_2 -3 + 148, ctdogaga, 3.21, 3.28 );
setEffScaleKey( spep_2 -3 + 150, ctdogaga, 3.38, 3.46 );
setEffRotateKey( spep_2 -3 + 40, ctdogaga, 0 );
setEffRotateKey( spep_2 -3 + 150, ctdogaga, 0 );
setEffAlphaKey( spep_2 -3 + 40, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 146, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 148, ctdogaga, 128 );
setEffAlphaKey( spep_2 -3 + 150, ctdogaga, 0 );

ctbaki = entryEffectLife( spep_2 -3 + 164,  10020, 176 - 164, 0x100, -1, 0, 202.8, 203.2 );	--バキッ
setEffMoveKey( spep_2 -3 + 164, ctbaki, 202.8, 203.2 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctbaki, 167.1, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctbaki, 146.2, 311.5 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctbaki, 135.7, 308.1 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctbaki, 148.4, 320.6 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctbaki, 137.3, 316.8 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctbaki, 138.2, 321.1 , 0 );
setEffScaleKey( spep_2 -3 + 164, ctbaki, 1, 1 );
setEffScaleKey( spep_2 -3 + 166, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_2 -3 + 168, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 170, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_2 -3 + 172, ctbaki, 3.23, 3.23 );
setEffScaleKey( spep_2 -3 + 174, ctbaki, 3.31, 3.31 );
setEffScaleKey( spep_2 -3 + 176, ctbaki, 3.39, 3.39 );
setEffRotateKey( spep_2 -3 + 164, ctbaki, 28.9 );
setEffRotateKey( spep_2 -3 + 176, ctbaki, 28.9 );
setEffAlphaKey( spep_2 -3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 168, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 170, ctbaki, 191 );
setEffAlphaKey( spep_2 -3 + 172, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 174, ctbaki, 64 );
setEffAlphaKey( spep_2 -3 + 176, ctbaki, 0 );


-- ** 音 ** --
--連続パンチ
SE003 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 14, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 14, 1110, "",spep_2 + 38, 0, 12, 0.6);
SE006 = playSeVer2( spep_2 + 22, 1110, "",spep_2 + 46, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 22, SE006, 95 );
SE007 = playSeVer2( spep_2 + 28, 1000, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 30, 1110, "",spep_2 + 54, 0, 12, 0.6);
setSeVolumeByWorkId( spep_2 + 30, SE008, 91 );
SE009 = playSeVer2( spep_2 + 38, 1110, "",spep_2 + 62, 0, 10, 0.6);
setPitch( spep_2 + 38, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 52, 1110, "",spep_2 + 76, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE010, 89 );
SE011 = playSeVer2( spep_2 + 62, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE011, 82 );
SE012 = playSeVer2( spep_2 + 62, 1110, "",spep_2 + 86, 0, 10, 0.6);
SE013 = playSeVer2( spep_2 + 70, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE013, 89 );
SE014 = playSeVer2( spep_2 + 70, 1110, "",spep_2 + 94, 0, 12, 0.6);
setPitch( spep_2 + 70, SE014, 200 );
setTimeStretch( SE014, 1.13, 30, 4 );
SE015 = playSeVer2( spep_2 + 80, 1110, "",spep_2 + 104, 0, 12, 0.6);
SE016 = playSeVer2( spep_2 + 90, 1110, "",spep_2 + 114, 0, 10, 0.6);
setPitch( spep_2 + 90, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_2 + 100, 1110, "",spep_2 + 124, 0, 12, 0.6);
SE018 = playSeVer2( spep_2 + 110, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE018, 88 );
SE019 = playSeVer2( spep_2 + 110, 1110, "",spep_2 + 134, 0, 12, 0.6);
setPitch( spep_2 + 110, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );
SE020 = playSeVer2( spep_2 + 120, 1110, "",spep_2 + 144, 0, 12, 0.6);

--殴り飛ばし
SE021 = playSeVer2( spep_2 + 154, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 160, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 184 -4;

-------------------------------------------------
-- 抜刀
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --抜刀	ef_003
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 128 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, 1.0, 1.0);
setEffScaleKey( spep_3 + 128 -4, base_3, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 128 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 128 -5, base_3, 255);
setEffAlphaKey( spep_3 + 128 -4, base_3, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_3 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, 40 -220, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, 40 -220, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, 40 -220, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, 80 -220, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, 0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, 2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--顔カットイン
SE023 = playSeVer2( spep_3 + 0, 1018, "", 0, 0, 0, -1);

--剣抜く
SE024 = playSeVer2( spep_3 + 4, 1061, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 4, 1007, "", 0, 0, 0, -1);

--向かってくる
SE026 = playSeVer2( spep_3 + 74, 1182, "",spep_3 + 132, 0, 8, -1);
SE028 = playSeVer2( spep_3 + 74, 1117, "",spep_3 + 132, 0, 8, -1);
SE029 = playSeVer2( spep_3 + 74, 1314, "",spep_3 + 132, 0, 8, -1);


-- ** 次の準備 ** --
spep_c = spep_3 + 128 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
--[[speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
]]

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
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
--playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_4 = spep_c + 96;


-------------------------------------------------
-- 斬りかかり
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0); --斬りかかり	ef_004
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, 1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base_4, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 120 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 120 -5, base_4, 255);
setEffAlphaKey( spep_4 + 120 -4, base_4, 0);


-- ** 音 ** --
--向かってくる２
SE030 = playSeVer2( spep_4 + -8, 9, "", 0, 0, 0, -1);

--振りかぶる
SE031 = playSeVer2( spep_4 + 26, 1004, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_4 + 32, 1142, "", 0, 0, 0, -1);

--斬る
SE033 = playSeVer2( spep_4 + 54, 1032, "", 0, 0, 0, -1);
SE034 = playSeVer2( spep_4 + 54, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE034, 67 );
SE035 = playSeVer2( spep_4 + 54, 1318, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_4 + 58, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE036, 69 );

--斬った余韻
SE037 = playSeVer2( spep_4 + 62, 1319, "",spep_4 + 186, 0, 20, -1);
SE038 = playSeVer2( spep_4 + 96, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 96, SE038, 77 );
SE039 = playSeVer2( spep_4 + 96, 1157, "",spep_4 + 176, 0, 10, -1);
SE040 = playSeVer2( spep_4 + 96, 1305, "",spep_4 + 176, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 96, SE040, 78 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0); --フィニッシュ	ef_005
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 168 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 168 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 168 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 168 -4, base_5, 255);


-- ** 音 ** --
--爆発
SE041 = playSeVer2( spep_5 + 46, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 46, SE041, 67 );
SE042 = playSeVer2( spep_5 + 46, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 54); -- ダメージ表示フレーム
endPhase( spep_5 + 168 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 前方ダッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --前方ダッシュ	ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 60 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 60 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 60 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 60 -5, base_1, 255);
setEffAlphaKey( spep_1 + 60 -4, base_1, 0);


-- ** 音 ** --
--向かってくる
SE001 = playSeVer2( spep_1 + 0, 9, "", 0, 0, 0, -1);
setTimeStretch( SE001, 1.25, 30, 4 );

SE002 = playSeVer2( spep_1 + 0, 1182, "", 0, 0, 0, -1);


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 52; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge+10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------


-- ** 次の準備 ** --
spep_2 = spep_1 + 60 -4;

-------------------------------------------------
-- 殴りラッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_2 = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --殴りラッシュ　敵側	ef_002e
setEffMoveKey( spep_2 + 0, base_2, 0, 0 , 0);
setEffMoveKey( spep_2 + 184 -4, base_2, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2, 1.0, 1.0);
setEffScaleKey( spep_2 + 184 -4, base_2, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2, 0);
setEffRotateKey( spep_2 + 184 -4, base_2, 0);
setEffAlphaKey( spep_2 + 0, base_2, 255);
setEffAlphaKey( spep_2 + 184 -5, base_2, 255);
setEffAlphaKey( spep_2 + 184 -4, base_2, 0);


-- ** 黒フェード ** --
entryFadeBg( spep_2 + 0, 0, 184 -4, 0, 0, 0, 0, 205 );  --black bg fade


-- ** 流線(横) ** --
ryusen_2 = entryEffectLife( spep_2 + 0, 920, 184 -4, 0x80,  -1,  0,  0,  0); -- 流線
setEffMoveKey( spep_2 + 0, ryusen_2, 0, 0, 0);
setEffMoveKey( spep_2 + 184 -4, ryusen_2, 0, 0, 0);
setEffRotateKey( spep_2, ryusen_2, 0);
setEffRotateKey( spep_2 + 184 -4, ryusen_2, 0);
setEffScaleKey( spep_2 + 0, ryusen_2, 1.6, 1.6);
setEffScaleKey( spep_2 + 184 -4, ryusen_2, 1.6, 1.6);
setEffAlphaKey( spep_2 + 0, ryusen_2, 128);
setEffAlphaKey( spep_2 + 184 -5, ryusen_2, 128);
setEffAlphaKey( spep_2 + 184 -4, ryusen_2, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 -4 + 184, 1, 0 );

changeAnime( spep_2 + 0, 1, 101 );
changeAnime( spep_2 -3 + 18, 1, 104 );
changeAnime( spep_2 -3 + 22, 1, 108 );
changeAnime( spep_2 -3 + 28, 1, 106 );
changeAnime( spep_2 -3 + 38, 1, 108 );
changeAnime( spep_2 -3 + 50, 1, 106 );
changeAnime( spep_2 -3 + 60, 1, 108 );
changeAnime( spep_2 -3 + 70, 1, 106 );
changeAnime( spep_2 -3 + 80, 1, 108 );
changeAnime( spep_2 -3 + 90, 1, 106 );
changeAnime( spep_2 -3 + 100, 1, 108 );
changeAnime( spep_2 -3 + 110, 1, 106 );
changeAnime( spep_2 -3 + 120, 1, 108 );
changeAnime( spep_2 -3 + 130, 1, 106 );
changeAnime( spep_2 -3 + 134, 1, 108 );
changeAnime( spep_2 -3 + 162, 1, 106 );

setMoveKey( spep_2 + 0, 1, 595.4, -39.9 , 0 );
setMoveKey( spep_2 -3 + 2, 1, 496.2, -35.7 , 0 );
setMoveKey( spep_2 -3 + 4, 1, 408.6, -32 , 0 );
setMoveKey( spep_2 -3 + 6, 1, 332.7, -28.8 , 0 );
setMoveKey( spep_2 -3 + 8, 1, 268.4, -26.1 , 0 );
setMoveKey( spep_2 -3 + 10, 1, 215.9, -23.8 , 0 );
setMoveKey( spep_2 -3 + 12, 1, 175, -22.1 , 0 );
setMoveKey( spep_2 -3 + 14, 1, 145.8, -20.9 , 0 );
setMoveKey( spep_2 -3 + 17, 1, 128.3, -20.1 , 0 );
setMoveKey( spep_2 -3 + 18, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_2 -3 + 21, 1, 122.4, -19.9 , 0 );
setMoveKey( spep_2 -3 + 22, 1, 157.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 24, 1, 187.6, 41.7 , 0 );
setMoveKey( spep_2 -3 + 27, 1, 145.6, -41 , 0 );
setMoveKey( spep_2 -3 + 28, 1, 123.9, 8.3 , 0 );
setMoveKey( spep_2 -3 + 30, 1, 164.4, -25.5 , 0 );
setMoveKey( spep_2 -3 + 32, 1, 180.8, 13.8 , 0 );
setMoveKey( spep_2 -3 + 34, 1, 175.5, -8.2 , 0 );
setMoveKey( spep_2 -3 + 37, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 38, 1, 173.2, 17 , 0 );
setMoveKey( spep_2 -3 + 40, 1, 208.1, 10.6 , 0 );
setMoveKey( spep_2 -3 + 42, 1, 236.1, 17.3 , 0 );
setMoveKey( spep_2 -3 + 44, 1, 270.4, 6.7 , 0 );
setMoveKey( spep_2 -3 + 46, 1, 270.3, 15.7 , 0 );
setMoveKey( spep_2 -3 + 49, 1, 269.5, 17.8 , 0 );
setMoveKey( spep_2 -3 + 50, 1, 154.2, 1.4 , 0 );
setMoveKey( spep_2 -3 + 52, 1, 157.5, -0.4 , 0 );
setMoveKey( spep_2 -3 + 54, 1, 150.8, 7.6 , 0 );
setMoveKey( spep_2 -3 + 56, 1, 152.7, 0.6 , 0 );
setMoveKey( spep_2 -3 + 59, 1, 159.3, -2.1 , 0 );
setMoveKey( spep_2 -3 + 60, 1, 187, 11.6 , 0 );
setMoveKey( spep_2 -3 + 62, 1, 191.6, 20 , 0 );
setMoveKey( spep_2 -3 + 64, 1, 207.2, 20.3 , 0 );
setMoveKey( spep_2 -3 + 66, 1, 222.8, 17.5 , 0 );
setMoveKey( spep_2 -3 + 69, 1, 212.7, 24.2 , 0 );
setMoveKey( spep_2 -3 + 70, 1, 166.1, 6.3 , 0 );
setMoveKey( spep_2 -3 + 72, 1, 161.7, 1.1 , 0 );
setMoveKey( spep_2 -3 + 74, 1, 174.3, -1.5 , 0 );
setMoveKey( spep_2 -3 + 76, 1, 178.5, 1 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 170.8, -1 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 176.8, 19.6 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 203.2, 16.3 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 228.2, 19.2 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 233.7, 15.5 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 233.3, 13.3 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 154.5, 1.1 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 180.8, 3.8 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 196.5, -0.8 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 195.1, -1.4 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 197.3, 0.3 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 172.8, 16 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 199.6, 16.7 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 232.9, 16.6 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 228.8, 14.5 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 228.4, 9.4 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 165.8, 10.7 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 165.1, 10.2 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 179.2, -1.8 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 169.2, 12.9 , 0 );
setMoveKey( spep_2 -3 + 119, 1, 177.2, 0.1 , 0 );
setMoveKey( spep_2 -3 + 120, 1, 177.7, 13.1 , 0 );
setMoveKey( spep_2 -3 + 122, 1, 187.4, 17 , 0 );
setMoveKey( spep_2 -3 + 124, 1, 216.6, 15.6 , 0 );
setMoveKey( spep_2 -3 + 126, 1, 203.4, 13.9 , 0 );
setMoveKey( spep_2 -3 + 129, 1, 213.9, 13.5 , 0 );
setMoveKey( spep_2 -3 + 130, 1, 160.7, 8.1 , 0 );
setMoveKey( spep_2 -3 + 133, 1, 218.8, -1.1 , 0 );
setMoveKey( spep_2 -3 + 134, 1, 255.4, -2.8 , 0 );
setMoveKey( spep_2 -3 + 136, 1, 262.8, -3 , 0 );
setMoveKey( spep_2 -3 + 138, 1, 279.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 140, 1, 285.9, 0.2 , 0 );
setMoveKey( spep_2 -3 + 142, 1, 290.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 144, 1, 293.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 146, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_2 -3 + 148, 1, 296.4, 0.2 , 0 );
setMoveKey( spep_2 -3 + 150, 1, 297, 0.2 , 0 );
setMoveKey( spep_2 -3 + 152, 1, 297.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 154, 1, 295.3, 0.2 , 0 );
setMoveKey( spep_2 -3 + 156, 1, 282.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 158, 1, 246.6, 0.2 , 0 );
setMoveKey( spep_2 -3 + 161, 1, 177.2, 0.2 , 0 );
setMoveKey( spep_2 -3 + 162, 1, 136.3, 19.2 , 0 );
setMoveKey( spep_2 -3 + 164, 1, 167.7, 64.4 , 0 );
setMoveKey( spep_2 -3 + 166, 1, 172.5, 56.9 , 0 );
setMoveKey( spep_2 -3 + 168, 1, 122.1, 38.1 , 0 );
setMoveKey( spep_2 -3 + 170, 1, 262.3, 50.6 , 0 );
setMoveKey( spep_2 -3 + 172, 1, 445, 25.6 , 0 );
setMoveKey( spep_2 -3 + 174, 1, 999.2, -31.4 , 0 );
setMoveKey( spep_2 -3 + 176, 1, 969.2, -45.7 , 0 );
setMoveKey( spep_2 -3 + 178, 1, 951.4, -18.4 , 0 );
setMoveKey( spep_2 -3 + 180, 1, 964.2, -34.1 , 0 );
setMoveKey( spep_2 -3 + 182, 1, 966.4, -12.1 , 0 );
setMoveKey( spep_2 -4 + 184, 1, 974.1, -24.8 , 0 );

setScaleKey( spep_2 + 0, 1, 2.1, 2.1 );
setScaleKey( spep_2 -4 + 184, 1, 2.1, 2.1 );

setRotateKey( spep_2 + 0, 1, 0 );
setRotateKey( spep_2 -3 + 21, 1, 0 );
setRotateKey( spep_2 -3 + 22, 1, -4 );
setRotateKey( spep_2 -3 + 27, 1, -4 );
setRotateKey( spep_2 -3 + 28, 1, -43.7 );
setRotateKey( spep_2 -3 + 30, 1, -39.4 );
setRotateKey( spep_2 -3 + 32, 1, -35.2 );
setRotateKey( spep_2 -3 + 34, 1, -30.9 );
setRotateKey( spep_2 -3 + 37, 1, -30.9 );
setRotateKey( spep_2 -3 + 38, 1, -4 );
setRotateKey( spep_2 -3 + 49, 1, -4 );
setRotateKey( spep_2 -3 + 50, 1, -43.7 );
setRotateKey( spep_2 -3 + 59, 1, -43.7 );
setRotateKey( spep_2 -3 + 60, 1, -4 );
setRotateKey( spep_2 -3 + 69, 1, -4 );
setRotateKey( spep_2 -3 + 70, 1, -43.7 );
setRotateKey( spep_2 -3 + 72, 1, -32.9 );
setRotateKey( spep_2 -3 + 74, 1, -22.2 );
setRotateKey( spep_2 -3 + 79, 1, -22.2 );
setRotateKey( spep_2 -3 + 80, 1, -4 );
setRotateKey( spep_2 -3 + 89, 1, -4 );
setRotateKey( spep_2 -3 + 90, 1, -43.7 );
setRotateKey( spep_2 -3 + 92, 1, -32.2 );
setRotateKey( spep_2 -3 + 94, 1, -20.7 );
setRotateKey( spep_2 -3 + 99, 1, -20.7 );
setRotateKey( spep_2 -3 + 100, 1, -4 );
setRotateKey( spep_2 -3 + 109, 1, -4 );
setRotateKey( spep_2 -3 + 110, 1, -43.7 );
setRotateKey( spep_2 -3 + 112, 1, -37.2 );
setRotateKey( spep_2 -3 + 114, 1, -30.7 );
setRotateKey( spep_2 -3 + 119, 1, -30.7 );
setRotateKey( spep_2 -3 + 120, 1, -4 );
setRotateKey( spep_2 -3 + 129, 1, -4 );
setRotateKey( spep_2 -3 + 130, 1, -31.7 );
setRotateKey( spep_2 -3 + 133, 1, -35.8 );
setRotateKey( spep_2 -3 + 134, 1, 1.3 );
setRotateKey( spep_2 -3 + 136, 1, -0.5 );
setRotateKey( spep_2 -3 + 138, 1, -1.8 );
setRotateKey( spep_2 -3 + 140, 1, -2.6 );
setRotateKey( spep_2 -3 + 142, 1, -3.1 );
setRotateKey( spep_2 -3 + 144, 1, -3.5 );
setRotateKey( spep_2 -3 + 146, 1, -3.7 );
setRotateKey( spep_2 -3 + 148, 1, -3.9 );
setRotateKey( spep_2 -3 + 150, 1, -4 );
setRotateKey( spep_2 -3 + 161, 1, -4 );
setRotateKey( spep_2 -3 + 162, 1, -20.2 );
setRotateKey( spep_2 -3 + 164, 1, -20.2 );
setRotateKey( spep_2 -3 + 166, 1, -20 );
setRotateKey( spep_2 -3 + 168, 1, -18.8 );
setRotateKey( spep_2 -3 + 170, 1, -14 );
setRotateKey( spep_2 -3 + 172, 1, -1.3 );
setRotateKey( spep_2 -3 + 174, 1, 26.8 );
setRotateKey( spep_2 -4 + 184, 1, 26.8 );


-- ** 書き文字エントリー ** --
ctgaf = entryEffectLife( spep_2 -3 + 24,  10005, 34 - 24, 0x100, -1, 0, 106.9, 197.7 );  --ガッ
setEffMoveKey( spep_2 -3 + 24, ctgaf, 106.9, 197.7 , 0 );
setEffMoveKey( spep_2 -3 + 26, ctgaf, 140.1, 233.8 , 0 );
setEffMoveKey( spep_2 -3 + 28, ctgaf, 152.9, 241.3 , 0 );
setEffMoveKey( spep_2 -3 + 30, ctgaf, 150.3, 250.2 , 0 );
setEffMoveKey( spep_2 -3 + 32, ctgaf, 163.7, 255 , 0 );
setEffMoveKey( spep_2 -3 + 34, ctgaf, 164.5, 256.9 , 0 );
setEffScaleKey( spep_2 -3 + 24, ctgaf, 1.03, 1.03 );
setEffScaleKey( spep_2 -3 + 26, ctgaf, 1.55, 1.54 );
setEffScaleKey( spep_2 -3 + 28, ctgaf, 1.66, 1.64 );
setEffScaleKey( spep_2 -3 + 30, ctgaf, 1.72, 1.71 );
setEffScaleKey( spep_2 -3 + 32, ctgaf, 1.76, 1.75 );
setEffScaleKey( spep_2 -3 + 34, ctgaf, 1.78, 1.76 );
setEffRotateKey( spep_2 -3 + 24, ctgaf, 0 );
setEffRotateKey( spep_2 -3 + 34, ctgaf, 0 );
setEffAlphaKey( spep_2 -3 + 24, ctgaf, 255 );
setEffAlphaKey( spep_2 -3 + 28, ctgaf, 255 );
setEffAlphaKey( spep_2 -3 + 30, ctgaf, 113 );
setEffAlphaKey( spep_2 -3 + 32, ctgaf, 28 );
setEffAlphaKey( spep_2 -3 + 34, ctgaf, 0 );

ctdogaga = entryEffectLife( spep_2 -3 + 40, 10017, 150 - 40, 0x100, -1, 0, 64.5, 202.7 );	--ドガガガッ
setEffMoveKey( spep_2 -3 + 40, ctdogaga, 64.5, 202.7 , 0 );
setEffMoveKey( spep_2 -3 + 42, ctdogaga, -2.4, 295.2 , 0 );
setEffMoveKey( spep_2 -3 + 44, ctdogaga, -5.8, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 46, ctdogaga, -15.2, 297.7 , 0 );
setEffMoveKey( spep_2 -3 + 48, ctdogaga, 1.2, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 50, ctdogaga, -20.3, 305.7 , 0 );
setEffMoveKey( spep_2 -3 + 52, ctdogaga, 0.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 54, ctdogaga, -16.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 56, ctdogaga, -5, 303.4 , 0 );
setEffMoveKey( spep_2 -3 + 58, ctdogaga, -8.9, 311.2 , 0 );
setEffMoveKey( spep_2 -3 + 60, ctdogaga, -15.3, 313.2 , 0 );
setEffMoveKey( spep_2 -3 + 62, ctdogaga, 3.1, 318 , 0 );
setEffMoveKey( spep_2 -3 + 64, ctdogaga, -16.4, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 66, ctdogaga, -4.3, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 68, ctdogaga, -21.5, 309.8 , 0 );
setEffMoveKey( spep_2 -3 + 70, ctdogaga, -0.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 72, ctdogaga, -17.4, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 74, ctdogaga, -1.8, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 76, ctdogaga, -14.8, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 78, ctdogaga, -3.5, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 80, ctdogaga, -6.7, 319.5 , 0 );
setEffMoveKey( spep_2 -3 + 82, ctdogaga, -9.5, 303.2 , 0 );
setEffMoveKey( spep_2 -3 + 84, ctdogaga, -8.1, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 86, ctdogaga, -17.4, 299.6 , 0 );
setEffMoveKey( spep_2 -3 + 88, ctdogaga, 0.3, 316.9 , 0 );
setEffMoveKey( spep_2 -3 + 90, ctdogaga, -15.8, 305.5 , 0 );
setEffMoveKey( spep_2 -3 + 92, ctdogaga, -1.3, 316.5 , 0 );
setEffMoveKey( spep_2 -3 + 94, ctdogaga, -10.5, 299.9 , 0 );
setEffMoveKey( spep_2 -3 + 96, ctdogaga, -1.3, 316.4 , 0 );
setEffMoveKey( spep_2 -3 + 98, ctdogaga, -18.9, 306.2 , 0 );
setEffMoveKey( spep_2 -3 + 100, ctdogaga, -3.7, 317.1 , 0 );
setEffMoveKey( spep_2 -3 + 102, ctdogaga, -10.6, 300.2 , 0 );
setEffMoveKey( spep_2 -3 + 104, ctdogaga, -5.8, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 106, ctdogaga, -15.2, 297.7 , 0 );
setEffMoveKey( spep_2 -3 + 108, ctdogaga, 1.2, 315.3 , 0 );
setEffMoveKey( spep_2 -3 + 110, ctdogaga, -20.3, 305.7 , 0 );
setEffMoveKey( spep_2 -3 + 112, ctdogaga, 0.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 114, ctdogaga, -16.8, 310.8 , 0 );
setEffMoveKey( spep_2 -3 + 116, ctdogaga, -5, 303.4 , 0 );
setEffMoveKey( spep_2 -3 + 118, ctdogaga, -8.9, 311.2 , 0 );
setEffMoveKey( spep_2 -3 + 120, ctdogaga, -15.3, 313.2 , 0 );
setEffMoveKey( spep_2 -3 + 122, ctdogaga, 3.1, 318 , 0 );
setEffMoveKey( spep_2 -3 + 124, ctdogaga, -16.4, 309.9 , 0 );
setEffMoveKey( spep_2 -3 + 126, ctdogaga, -4.3, 304.3 , 0 );
setEffMoveKey( spep_2 -3 + 128, ctdogaga, -21.5, 309.8 , 0 );
setEffMoveKey( spep_2 -3 + 130, ctdogaga, -0.6, 301.3 , 0 );
setEffMoveKey( spep_2 -3 + 132, ctdogaga, -17.4, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 134, ctdogaga, -1.8, 311.8 , 0 );
setEffMoveKey( spep_2 -3 + 136, ctdogaga, -14.8, 316.1 , 0 );
setEffMoveKey( spep_2 -3 + 138, ctdogaga, -3.5, 306.5 , 0 );
setEffMoveKey( spep_2 -3 + 140, ctdogaga, -6.7, 319.5 , 0 );
setEffMoveKey( spep_2 -3 + 142, ctdogaga, -9.5, 303.2 , 0 );
setEffMoveKey( spep_2 -3 + 144, ctdogaga, -8.1, 320.3 , 0 );
setEffMoveKey( spep_2 -3 + 146, ctdogaga, -15, 337.3 , 0 );
setEffMoveKey( spep_2 -3 + 148, ctdogaga, -12.3, 364.5 , 0 );
setEffMoveKey( spep_2 -3 + 150, ctdogaga, -31.7, 383.9 , 0 );
setEffScaleKey( spep_2 -3 + 40, ctdogaga, 1.91, 1.94 );
setEffScaleKey( spep_2 -3 + 42, ctdogaga, 2.71, 2.75 );
setEffScaleKey( spep_2 -3 + 44, ctdogaga, 2.87, 2.91 );
setEffScaleKey( spep_2 -3 + 144, ctdogaga, 2.87, 2.91 );
setEffScaleKey( spep_2 -3 + 146, ctdogaga, 3.04, 3.1 );
setEffScaleKey( spep_2 -3 + 148, ctdogaga, 3.21, 3.28 );
setEffScaleKey( spep_2 -3 + 150, ctdogaga, 3.38, 3.46 );
setEffRotateKey( spep_2 -3 + 40, ctdogaga, 0 );
setEffRotateKey( spep_2 -3 + 150, ctdogaga, 0 );
setEffAlphaKey( spep_2 -3 + 40, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 146, ctdogaga, 255 );
setEffAlphaKey( spep_2 -3 + 148, ctdogaga, 128 );
setEffAlphaKey( spep_2 -3 + 150, ctdogaga, 0 );

ctbaki = entryEffectLife( spep_2 -3 + 164,  10020, 176 - 164, 0x100, -1, 0, 202.8, 203.2 );	--バキッ
setEffMoveKey( spep_2 -3 + 164, ctbaki, 202.8, 203.2 , 0 );
setEffMoveKey( spep_2 -3 + 166, ctbaki, 167.1, 252.2 , 0 );
setEffMoveKey( spep_2 -3 + 168, ctbaki, 146.2, 311.5 , 0 );
setEffMoveKey( spep_2 -3 + 170, ctbaki, 135.7, 308.1 , 0 );
setEffMoveKey( spep_2 -3 + 172, ctbaki, 148.4, 320.6 , 0 );
setEffMoveKey( spep_2 -3 + 174, ctbaki, 137.3, 316.8 , 0 );
setEffMoveKey( spep_2 -3 + 176, ctbaki, 138.2, 321.1 , 0 );
setEffScaleKey( spep_2 -3 + 164, ctbaki, 1, 1 );
setEffScaleKey( spep_2 -3 + 166, ctbaki, 2.03, 2.03 );
setEffScaleKey( spep_2 -3 + 168, ctbaki, 3.07, 3.07 );
setEffScaleKey( spep_2 -3 + 170, ctbaki, 3.15, 3.15 );
setEffScaleKey( spep_2 -3 + 172, ctbaki, 3.23, 3.23 );
setEffScaleKey( spep_2 -3 + 174, ctbaki, 3.31, 3.31 );
setEffScaleKey( spep_2 -3 + 176, ctbaki, 3.39, 3.39 );
setEffRotateKey( spep_2 -3 + 164, ctbaki, 28.9 -60 );
setEffRotateKey( spep_2 -3 + 176, ctbaki, 28.9 -60 );
setEffAlphaKey( spep_2 -3 + 164, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 168, ctbaki, 255 );
setEffAlphaKey( spep_2 -3 + 170, ctbaki, 191 );
setEffAlphaKey( spep_2 -3 + 172, ctbaki, 128 );
setEffAlphaKey( spep_2 -3 + 174, ctbaki, 64 );
setEffAlphaKey( spep_2 -3 + 176, ctbaki, 0 );


-- ** 音 ** --
--連続パンチ
SE003 = playSeVer2( spep_2 + 4, 1003, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 14, 1009, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 14, 1110, "",spep_2 + 38, 0, 12, 0.6);
SE006 = playSeVer2( spep_2 + 22, 1110, "",spep_2 + 46, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 22, SE006, 95 );
SE007 = playSeVer2( spep_2 + 28, 1000, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 30, 1110, "",spep_2 + 54, 0, 12, 0.6);
setSeVolumeByWorkId( spep_2 + 30, SE008, 91 );
SE009 = playSeVer2( spep_2 + 38, 1110, "",spep_2 + 62, 0, 10, 0.6);
setPitch( spep_2 + 38, SE009, -200 );
setTimeStretch( SE009, 0.87, 30, 4 );
SE010 = playSeVer2( spep_2 + 52, 1110, "",spep_2 + 76, 0, 10, 0.6);
setSeVolumeByWorkId( spep_2 + 52, SE010, 89 );
SE011 = playSeVer2( spep_2 + 62, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 62, SE011, 82 );
SE012 = playSeVer2( spep_2 + 62, 1110, "",spep_2 + 86, 0, 10, 0.6);
SE013 = playSeVer2( spep_2 + 70, 1009, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 70, SE013, 89 );
SE014 = playSeVer2( spep_2 + 70, 1110, "",spep_2 + 94, 0, 12, 0.6);
setPitch( spep_2 + 70, SE014, 200 );
setTimeStretch( SE014, 1.13, 30, 4 );
SE015 = playSeVer2( spep_2 + 80, 1110, "",spep_2 + 104, 0, 12, 0.6);
SE016 = playSeVer2( spep_2 + 90, 1110, "",spep_2 + 114, 0, 10, 0.6);
setPitch( spep_2 + 90, SE016, -200 );
setTimeStretch( SE016, 0.87, 30, 4 );
SE017 = playSeVer2( spep_2 + 100, 1110, "",spep_2 + 124, 0, 12, 0.6);
SE018 = playSeVer2( spep_2 + 110, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 110, SE018, 88 );
SE019 = playSeVer2( spep_2 + 110, 1110, "",spep_2 + 134, 0, 12, 0.6);
setPitch( spep_2 + 110, SE019, 100 );
setTimeStretch( SE019, 1.07, 30, 4 );
SE020 = playSeVer2( spep_2 + 120, 1110, "",spep_2 + 144, 0, 12, 0.6);

--殴り飛ばし
SE021 = playSeVer2( spep_2 + 154, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_2 + 160, 1120, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_3 = spep_2 + 184 -4;

-------------------------------------------------
-- 抜刀
-------------------------------------------------
-- ** エフェクト等 ** --
base_3 = entryEffect( spep_3 + 0, SP_03, 0x80, -1, 0, 0, 0); --抜刀	ef_003
setEffMoveKey( spep_3 + 0, base_3, 0, 0 , 0);
setEffMoveKey( spep_3 + 128 -4, base_3, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3, -1.0, 1.0);
setEffScaleKey( spep_3 + 128 -4, base_3, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3, 0);
setEffRotateKey( spep_3 + 128 -4, base_3, 0);
setEffAlphaKey( spep_3 + 0, base_3, 255);
setEffAlphaKey( spep_3 + 128 -5, base_3, 255);
setEffAlphaKey( spep_3 + 128 -4, base_3, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_3 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 14, 190006, 72, 0x100, -1, 0, -40 +220, 525); --ゴゴゴゴ
setEffShake( spep_x + 14, ctgogo, 70 -6, 10);
setEffMoveKey( spep_x + 14, ctgogo, -40 +220, 525 , 0);
setEffMoveKey( spep_x + 78, ctgogo, -40 +220, 525 , 0);
setEffMoveKey( spep_x + 84, ctgogo, -80 +220, 525 , 0);
setEffScaleKey( spep_x + 14, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 78, ctgogo, -0.7, 0.7);
setEffScaleKey( spep_x + 84, ctgogo, -2.0, 2.0);
setEffAlphaKey( spep_x + 14, ctgogo, 255);
setEffAlphaKey( spep_x + 78, ctgogo, 255);
setEffAlphaKey( spep_x + 85, ctgogo, 0);
setEffRotateKey( spep_x + 14, ctgogo, 0);
setEffRotateKey( spep_x + 84, ctgogo, 0);


-- ** 音 ** --
--顔カットイン
SE023 = playSeVer2( spep_3 + 0, 1018, "", 0, 0, 0, -1);

--剣抜く
SE024 = playSeVer2( spep_3 + 4, 1061, "", 0, 0, 0, -1);
SE025 = playSeVer2( spep_3 + 4, 1007, "", 0, 0, 0, -1);

--向かってくる
SE026 = playSeVer2( spep_3 + 74, 1182, "",spep_3 + 132, 0, 8, -1);
SE028 = playSeVer2( spep_3 + 74, 1117, "",spep_3 + 132, 0, 8, -1);
SE029 = playSeVer2( spep_3 + 74, 1314, "",spep_3 + 132, 0, 8, -1);



-- ** 次の準備 ** --
spep_c = spep_3 + 128 -4;

-------------------------------------------------
--カードカットイン(96F)
-------------------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_c + 0, 1507, 0x100, -1, 0, 0, 0);   -- カード
setEffReplaceTexture( speff2, 1, 1);
setEffReplaceTexture( speff2, 2, 0);-- カード差し替え
setEffReplaceTexture( speff2, 5, 4);-- 技名テクスチャ差し替え
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0);  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20);
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0);
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0);
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6);
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6);
setEffRotateKey( spep_c + 0, shuchusen, 0);
setEffRotateKey( spep_c + 90, shuchusen, 0);
setEffAlphaKey( spep_c + 0, shuchusen, 255);
setEffAlphaKey( spep_c + 90, shuchusen, 255);
-- ** 音 ** --
playSe( spep_c + 0, SE_05);
-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --白　背景
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255);  --white fade


-- ** 次の準備 ** --
spep_4 = spep_c + 96;


-------------------------------------------------
-- 斬りかかり
-------------------------------------------------
-- ** エフェクト等 ** --
base_4 = entryEffect( spep_4 + 0, SP_04, 0x80, -1, 0, 0, 0); --斬りかかり	ef_004
setEffMoveKey( spep_4 + 0, base_4, 0, 0 , 0);
setEffMoveKey( spep_4 + 120 -4, base_4, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4, -1.0, 1.0);
setEffScaleKey( spep_4 + 120 -4, base_4, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4, 0);
setEffRotateKey( spep_4 + 120 -4, base_4, 0);
setEffAlphaKey( spep_4 + 0, base_4, 255);
setEffAlphaKey( spep_4 + 120 -5, base_4, 255);
setEffAlphaKey( spep_4 + 120 -4, base_4, 0);


-- ** 音 ** --
--向かってくる２
SE030 = playSeVer2( spep_4 + -8, 9, "", 0, 0, 0, -1);

--振りかぶる
SE031 = playSeVer2( spep_4 + 26, 1004, "", 0, 0, 0, -1);

SE032 = playSeVer2( spep_4 + 32, 1142, "", 0, 0, 0, -1);

--斬る
SE033 = playSeVer2( spep_4 + 54, 1032, "", 0, 0, 0, -1);

SE034 = playSeVer2( spep_4 + 54, 1141, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 54, SE034, 67 );

SE035 = playSeVer2( spep_4 + 54, 1318, "", 0, 0, 0, -1);

SE036 = playSeVer2( spep_4 + 58, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 58, SE036, 69 );

--斬った余韻
SE037 = playSeVer2( spep_4 + 62, 1319, "",spep_4 + 186, 0, 20, -1);

SE038 = playSeVer2( spep_4 + 96, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 96, SE038, 77 );

SE039 = playSeVer2( spep_4 + 96, 1157, "",spep_4 + 176, 0, 10, -1);

SE040 = playSeVer2( spep_4 + 96, 1305, "",spep_4 + 176, 0, 10, -1);
setSeVolumeByWorkId( spep_4 + 96, SE040, 78 );


-- ** 次の準備 ** --
spep_5 = spep_4 + 120 -4;

-------------------------------------------------
-- フィニッシュ
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05r, 0x80, -1, 0, 0, 0); --フィニッシュ　敵側	ef_005e
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 168 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 168 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 168 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 168 -4, base_5, 255);


-- ** 音 ** --
--爆発
SE041 = playSeVer2( spep_5 + 46, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 46, SE041, 67 );
SE042 = playSeVer2( spep_5 + 46, 1024, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_5 + 54); -- ダメージ表示フレーム
endPhase( spep_5 + 168 -8); -- 終了フレーム

end
