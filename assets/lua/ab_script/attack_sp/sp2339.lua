--1023730:UR_ジース&バータ_パープルコメットクラッシュ
--sp_effect_b1_00196
--sp2339

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
SP_01 = 159411;	--待機	ef_001
SP_02 = 159413;	--構える	ef_002
SP_02b = 159414;	--構える　奥	ef_002_back
SP_03 = 159417;	--連続攻撃	ef_003
SP_03b = 159418;	--連続攻撃　奥	ef_003_back
SP_04 = 159421;	--ヒップアタック	ef_004
SP_04b = 159422;	--ヒップアタック　奥	ef_004_back
SP_05 = 159425;	--溜める	ef_005
SP_06 = 159427;	--エネルギー融合	ef_006
SP_07 = 159429;	--爆撃	ef_007
SP_07b = 159430;	--爆撃　奥	ef_007_back

--エフェクト(てき)
SP_01r = 159412;	--待機　敵側	ef_001re
SP_02r = 159415;	--構える　敵側	ef_002re
SP_02br = 159416;	--構える　敵側　奥	ef_002re_back
SP_03r = 159419;	--連続攻撃　敵側	ef_003re
SP_03br = 159420;	--連続攻撃　敵側　奥	ef_003re_back
SP_04r = 159423;	--ヒップアタック　敵側	ef_004re
SP_04br = 159424;	--ヒップアタック　敵側　奥	ef_004re_back
SP_05r = 159426;	--溜める　敵側	ef_005re
SP_06r = 159428;	--エネルギー融合　敵側	ef_006re
SP_07r = 159431;	--爆撃　敵側	ef_007re
SP_07br = 159432;	--爆撃　敵側　奥	ef_007re_back

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

ENABLE_AUTO_TIME_STRETCH(0.85);

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then


------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01, 0x80, -1, 0, 0, 0); --待機	ef_001
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, 1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base_1, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 120 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 120 -5, base_1, 255);
setEffAlphaKey( spep_1 + 120 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え



-- ** 音 ** --
--顔カットイン
SE001 = playSeVer2( spep_1 + 8, 1018, "", 0, 0, 0, -1);

--顔合わせる
SE002 = playSeVer2( spep_1 + 84, 4, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 120 -4;

-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); --構える	ef_002
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 120 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, 1.0, 1.0);
setEffScaleKey( spep_2 + 120 -4, base_2f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 120 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 120 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 120 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02b, 0x80, -1, 0, 0, 0); --構える　奥	ef_002_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 120 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, 1.0, 1.0);
setEffScaleKey( spep_2 + 120 -4, base_2b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 120 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 120 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 120 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 76, 1, 1 );
-- setDisp( spep_2 -3 + 120, 1, 0 );

changeAnime( spep_2 -3 + 76, 1, 117 );

setMoveKey( spep_2 -3 + 76, 1, 82.1, -1130.7 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 82.1, -1130.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 81.2, -1020.3 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 81.2, -1020.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 79.5, -919.9 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 79.5, -919.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 77.1, -829.2 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 77.1, -829.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 74.1, -747.6 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 74.1, -747.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 71.1, -674 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 71.1, -674 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 67.7, -607.7 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 67.7, -607.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 64.3, -547.7 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 64.3, -547.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 60.9, -493.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 60.9, -493.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 57.5, -443.5 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 57.5, -443.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 54.2, -397.9 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 54.2, -397.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 51.1, -356 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 51.1, -356 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 48, -317.2 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 48, -317.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 45, -281 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 45, -281 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 41.9, -247.2 , 0 );
setMoveKey( spep_2 -3 + 105, 1, 41.9, -247.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 39, -215.5 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 39, -215.5 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 36.2, -185.5 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 36.2, -185.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 33.5, -157.1 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 33.5, -157.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 30.8, -130.1 , 0 );

setScaleKey( spep_2 -3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 77, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 78, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 79, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 80, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 81, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 82, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 83, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 84, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 85, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 86, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 87, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 89, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 90, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 91, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 92, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 93, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 94, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 95, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 96, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 97, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 99, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 101, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 102, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 103, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 104, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 105, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 107, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 108, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 109, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 111, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 112, 1, 0.59, 0.59 );

setRotateKey( spep_2 -3 + 76, 1, 7.8 );
setRotateKey( spep_2 -3 + 77, 1, 7.8 );
setRotateKey( spep_2 -3 + 78, 1, 7.8 );
setRotateKey( spep_2 -3 + 79, 1, 7.8 );
setRotateKey( spep_2 -3 + 80, 1, 5.5 );
setRotateKey( spep_2 -3 + 81, 1, 5.5 );
setRotateKey( spep_2 -3 + 82, 1, 3.4 );
setRotateKey( spep_2 -3 + 83, 1, 3.4 );
setRotateKey( spep_2 -3 + 84, 1, 1.6 );
setRotateKey( spep_2 -3 + 85, 1, 1.6 );
setRotateKey( spep_2 -3 + 86, 1, -0.1 );
setRotateKey( spep_2 -3 + 87, 1, -0.1 );
setRotateKey( spep_2 -3 + 88, 1, -1.6 );
setRotateKey( spep_2 -3 + 89, 1, -1.6 );
setRotateKey( spep_2 -3 + 90, 1, -2.9 );
setRotateKey( spep_2 -3 + 91, 1, -2.9 );
setRotateKey( spep_2 -3 + 92, 1, -4.1 );
setRotateKey( spep_2 -3 + 93, 1, -4.1 );
setRotateKey( spep_2 -3 + 94, 1, -5.2 );
setRotateKey( spep_2 -3 + 95, 1, -5.2 );
setRotateKey( spep_2 -3 + 96, 1, -6.3 );
setRotateKey( spep_2 -3 + 97, 1, -6.3 );
setRotateKey( spep_2 -3 + 98, 1, -7.2 );
setRotateKey( spep_2 -3 + 99, 1, -7.2 );
setRotateKey( spep_2 -3 + 100, 1, -8.1 );
setRotateKey( spep_2 -3 + 101, 1, -8.1 );
setRotateKey( spep_2 -3 + 102, 1, -8.9 );
setRotateKey( spep_2 -3 + 103, 1, -8.9 );
setRotateKey( spep_2 -3 + 104, 1, -9.6 );
setRotateKey( spep_2 -3 + 105, 1, -9.6 );
setRotateKey( spep_2 -3 + 106, 1, -10.3 );
setRotateKey( spep_2 -3 + 107, 1, -10.3 );
setRotateKey( spep_2 -3 + 108, 1, -11 );
setRotateKey( spep_2 -3 + 109, 1, -11 );
setRotateKey( spep_2 -3 + 110, 1, -11.7 );
setRotateKey( spep_2 -3 + 111, 1, -11.7 );
setRotateKey( spep_2 -3 + 112, 1, -12.3 );


-- ** 音 ** --
--二人構える
SE003 = playSeVer2( spep_2 + 0, 1013, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 0, 1192, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE004, 193 );
SE005 = playSeVer2( spep_2 + 12, 1007, "", 0, 0, 0, -1);

--二人飛び出す
SE006 = playSeVer2( spep_2 + 30, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 30, 1207, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 36, 1117, "", 0, 0, 0, -1);

--飛行中音
SE009 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 68, SE009, 158 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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


-- ** 敵キャラクター ** --
setMoveKey( spep_2 -3 + 113, 1, 30.8, -130.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 28.1, -104.3 , 0 );
setMoveKey( spep_2 -3 + 115, 1, 28.1, -104.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 25.5, -79.5 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 25.5, -79.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 22.9, -55.9 , 0 );
-- setMoveKey( spep_2 -5 + 120, 1, 22.9, -55.9 , 0 );

setScaleKey( spep_2 -3 + 113, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 114, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 115, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 116, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 117, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 118, 1, 0.56, 0.56 );
-- setScaleKey( spep_2 -5 + 120, 1, 0.56, 0.56 );

setRotateKey( spep_2 -3 + 113, 1, -12.3 );
setRotateKey( spep_2 -3 + 114, 1, -12.8 );
setRotateKey( spep_2 -3 + 115, 1, -12.8 );
setRotateKey( spep_2 -3 + 116, 1, -13.4 );
setRotateKey( spep_2 -3 + 117, 1, -13.4 );
setRotateKey( spep_2 -3 + 118, 1, -13.9 );
-- setRotateKey( spep_2 -5 + 120, 1, -13.9 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 120 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03, 0x100, -1, 0, 0, 0); --連続攻撃	ef_003
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03b, 0x80, -1, 0, 0, 0); --連続攻撃　奥	ef_003_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, 1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 -4 + 124, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 20, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, -37.4, -12.4 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -36.5, -12.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -35.6, -11.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -34.8, -11.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -33.9, -11.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -33, -10.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -32.1, -10.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -31.2, -10.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -30.4, -10.1 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 29.7, 131.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 9.5, -79.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -166.8, -31.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.1, 57 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -15.3, 17.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -75.9, 97.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -40, 13.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -60, 33.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -53.7, 37.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -47.3, 41.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -41, 45.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -34.6, 49.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -32.2, 47.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -31.2, 44.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -30.3, 42 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -29.4, 39.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -28.4, 36.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 51.9, -0.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 47.8, 47.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 5.8, 41.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 21.1, 26 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 19.9, 52.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 38.7, 48.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 26.6, 36.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 67, 97 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 59.6, 42.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 22.3, 36.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 52.7, 50.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 43.5, 69.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 30.6, 54.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 36.2, 44.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -0.7, 118 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 8.6, 44.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -6.8, 29.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 22.8, 6.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 7.7, -2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -5.9, 1.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -0.4, 1.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -57.6, -25 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -34.5, 1.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -27.1, -0.3 , 0 );
setMoveKey( spep_3 -3 + 99, 1, -27.1, -0.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -21.1, -2.4 , 0 );
setMoveKey( spep_3 -3 + 101, 1, -21.1, -2.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -15, -4.5 , 0 );
setMoveKey( spep_3 -3 + 103, 1, -15, -4.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -16.1, -4.8 , 0 );
setMoveKey( spep_3 -3 + 105, 1, -16.1, -4.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -17.2, -5.1 , 0 );
setMoveKey( spep_3 -3 + 107, 1, -17.2, -5.1 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -18.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 109, 1, -18.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -19.4, -5.8 , 0 );
setMoveKey( spep_3 -3 + 111, 1, -19.4, -5.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -20.5, -6.1 , 0 );
setMoveKey( spep_3 -3 + 113, 1, -20.5, -6.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -21.6, -6.4 , 0 );
setMoveKey( spep_3 -3 + 115, 1, -21.6, -6.4 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -22.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 117, 1, -22.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -23.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 119, 1, -23.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -24.9, -7.4 , 0 );
setMoveKey( spep_3 -5 + 124, 1, -24.9, -7.4 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1.75, 1.75 );
setScaleKey( spep_3 -2 + 2, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 19, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 20, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 34, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 38, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 44, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 48, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 50, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 54, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 56, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 58, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 60, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 62, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 64, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 66, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 70, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 72, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 74, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 76, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 78, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 80, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 82, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 84, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 86, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 88, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 90, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 92, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 96, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 98, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 100, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 102, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 104, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 106, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 108, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 111, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 112, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 113, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 114, 1, 1, 1 );
setScaleKey( spep_3 -3 + 115, 1, 1, 1 );
setScaleKey( spep_3 -3 + 116, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 117, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 118, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 119, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 120, 1, 1.15, 1.15 );
setScaleKey( spep_3 -5 + 124, 1, 1.15, 1.15 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 19, 1, 0 );
setRotateKey( spep_3 -3 + 20, 1, -27.2 );
setRotateKey( spep_3 -3 + 24, 1, -27.2 );
setRotateKey( spep_3 -3 + 26, 1, -27.3 );
setRotateKey( spep_3 -3 + 28, 1, -27.3 );
setRotateKey( spep_3 -3 + 30, 1, -27.4 );
setRotateKey( spep_3 -3 + 32, 1, -27.4 );
setRotateKey( spep_3 -3 + 34, 1, -27.5 );
setRotateKey( spep_3 -3 + 36, 1, -27.6 );
setRotateKey( spep_3 -3 + 38, 1, -27.6 );
setRotateKey( spep_3 -3 + 40, 1, -27.7 );
setRotateKey( spep_3 -3 + 44, 1, -27.7 );
setRotateKey( spep_3 -3 + 46, 1, -27.6 );
setRotateKey( spep_3 -3 + 48, 1, -27.5 );
setRotateKey( spep_3 -3 + 50, 1, -27.4 );
setRotateKey( spep_3 -3 + 52, 1, -27.3 );
setRotateKey( spep_3 -3 + 54, 1, -27.3 );
setRotateKey( spep_3 -3 + 56, 1, -27.2 );
setRotateKey( spep_3 -3 + 58, 1, -27.1 );
setRotateKey( spep_3 -3 + 60, 1, -27 );
setRotateKey( spep_3 -3 + 62, 1, -26.9 );
setRotateKey( spep_3 -3 + 64, 1, -26.9 );
setRotateKey( spep_3 -3 + 66, 1, -26.8 );
setRotateKey( spep_3 -3 + 68, 1, -26.7 );
setRotateKey( spep_3 -3 + 70, 1, -26.6 );
setRotateKey( spep_3 -3 + 72, 1, -26.5 );
setRotateKey( spep_3 -3 + 74, 1, -26.5 );
setRotateKey( spep_3 -3 + 76, 1, -26.4 );
setRotateKey( spep_3 -3 + 78, 1, -26.3 );
setRotateKey( spep_3 -3 + 80, 1, -26.2 );
setRotateKey( spep_3 -3 + 82, 1, -26.1 );
setRotateKey( spep_3 -3 + 84, 1, -26.1 );
setRotateKey( spep_3 -3 + 86, 1, -26 );
setRotateKey( spep_3 -3 + 88, 1, -25.9 );
setRotateKey( spep_3 -3 + 90, 1, -25.8 );
setRotateKey( spep_3 -3 + 92, 1, -25.7 );
setRotateKey( spep_3 -3 + 94, 1, -25.7 );
setRotateKey( spep_3 -3 + 96, 1, -25.6 );
setRotateKey( spep_3 -3 + 98, 1, -25.5 );
setRotateKey( spep_3 -5 + 124, 1, -25.5 );


-- ** 音 ** --
--二人初手アタック
SE010 = playSeVer2( spep_3 + 12, 1017, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 12, 1026, "",spep_3 + 60, 0, 30, -1);

--連続アタック
SE012 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 44, 1002, "", 0, 0, 0, 0.5);
SE014 = playSeVer2( spep_3 + 54, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 72, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 72, 1011, "", 0, 0, 0, 0.5);

--二人向かっていく
SE018 = playSeVer2( spep_3 + 94, 1019, "",spep_3 + 130, 0, 6, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- ヒップアタック
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --ヒップアタック	ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 100 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --ヒップアタック　奥	ef_004_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 100 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4b, 0);


-- ** 敵キャラクター ** --
-- setDisp( spep_4 -3 + 0, 1, 1 );
setDisp( spep_4 -3 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 24, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, -38, -12.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -36.5, -12.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -35.1, -11.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -33.9, -11.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -32.9, -10.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -32, -10.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -31.2, -10.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.7, -10.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -30.3, -10 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -29.9, -9.9 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -30.9, -10.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 34.2, -32.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 19.7, -63.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 156.1, -83.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 71.4, -54.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 189.5, -43.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 241.6, -158.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 216.4, -214.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 289.3, -221.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 264.5, -198.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 341.2, -261.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 401, -263.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 401, -310 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 449.6, -327 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 488, -356.3 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 2.53, 2.53 );
setScaleKey( spep_4 -2 + 2, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 4, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 6, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 10, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_4 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_4 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 18, 1, 2, 2 );
setScaleKey( spep_4 -3 + 20, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 23, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 24, 1, 1.76 *0.5, 1.76 *0.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.96 *0.5, 1.96 *0.5 );
setScaleKey( spep_4 -3 + 28, 1, 2.16 *0.5, 2.16 *0.5 );
setScaleKey( spep_4 -3 + 30, 1, 2.37 *0.5, 2.37 *0.5 );
setScaleKey( spep_4 -3 + 32, 1, 2.58 *0.5, 2.58 *0.5 );
setScaleKey( spep_4 -3 + 34, 1, 2.78 *0.5, 2.78 *0.5 );
setScaleKey( spep_4 -3 + 36, 1, 2.98 *0.5, 2.98 *0.5 );
setScaleKey( spep_4 -3 + 38, 1, 3.18 *0.5, 3.18 *0.5 );
setScaleKey( spep_4 -3 + 40, 1, 3.38 *0.5, 3.38 *0.5 );
setScaleKey( spep_4 -3 + 42, 1, 3.58 *0.5, 3.58 *0.5 );
setScaleKey( spep_4 -3 + 44, 1, 3.77 *0.5, 3.77 *0.5 );
setScaleKey( spep_4 -3 + 46, 1, 3.97 *0.5, 3.97 *0.5 );
setScaleKey( spep_4 -3 + 48, 1, 4.15 *0.5, 4.15 *0.5 );
setScaleKey( spep_4 -3 + 50, 1, 4.34 *0.5, 4.34 *0.5 );

setRotateKey( spep_4 + 0, 1, -44.2 );
setRotateKey( spep_4 -3 + 23, 1, -44.2 );
setRotateKey( spep_4 -3 + 24, 1, 64 );
setRotateKey( spep_4 -3 + 50, 1, 64 );


-- ** 音 ** --
--挟み撃ち
SE019 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 18, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 18, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE022 = playSeVer2( spep_4 + 74, 44, "",spep_4 + 102, 0, 6, -1);
SE023 = playSeVer2( spep_4 + 74, 1048, "",spep_4 + 102, 0, 6, -1);


-- ** 次の準備 ** --
spep_c = spep_4 + 100 -4;

-------------------------------------------------
--カードカットイン(94F)
-------------------------------------------------
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
spep_5 = spep_c + 94;

-------------------------------------------------
-- 溜める
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05, 0x80, -1, 0, 0, 0); --溜める	ef_005
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 180 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, 1.0, 1.0);
setEffScaleKey( spep_5 + 180 -4, base_5, 1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 180 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 180 -5, base_5, 255);
setEffAlphaKey( spep_5 + 180 -4, base_5, 0);


-- ** 音 ** --
--二人向き合う
SE025 = playSeVer2( spep_5 + 0, 8, "", 0, 0, 0, -1);

--バータエネルギー溜める
SE026 = playSeVer2( spep_5 + 38 -8, 1194, "",spep_5 + 140 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 38 -8, SE026, 132 );
SE027 = playSeVer2( spep_5 + 38 -8, 1175, "",spep_5 + 140 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 38 -8, SE027, 54 );
SE028 = playSeVer2( spep_5 + 56 -8, 1264, "",spep_5 + 168 -8, 0, 64, -1);	setSeVolumeByWorkId( spep_5 + 56 -8, SE028, 74 );
SE029 = playSeVer2( spep_5 + 56 -8, 1161, "",spep_5 + 136 -8, 0, 34, -1);	setSeVolumeByWorkId( spep_5 + 56 -8, SE029, 83 );

--ジースエネルギー溜める
SE030 = playSeVer2( spep_5 + 122 -8, 1194, "",spep_5 + 224 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 122 -8, SE030, 135 );
SE031 = playSeVer2( spep_5 + 122 -8, 1175, "",spep_5 + 280 -8, 0, 28, -1);	setSeVolumeByWorkId( spep_5 + 122 -8, SE031, 55 );
SE032 = playSeVer2( spep_5 + 138 -8, 1264, "",spep_5 + 218 -8, 0, 30, -1);	setSeVolumeByWorkId( spep_5 + 138 -8, SE032, 78 );
SE033 = playSeVer2( spep_5 + 138 -8, 1161, "",spep_5 + 280 -8, 0, 28, -1);	setSeVolumeByWorkId( spep_5 + 138 -8, SE033, 83 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 180 -4;

-------------------------------------------------
-- エネルギー融合
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_06, 0x80, -1, 0, 0, 0); --エネルギー融合	ef_006
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, 1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6, 1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 180 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 180 -5, base_6, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6, 0);


-- ** 音 ** --
--融合する
SE034 = playSeVer2( spep_6 + 60, 1025, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_6 + 60, 1162, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 68, 1200, "",spep_6 + 172, 0, 22, -1);
SE037 = playSeVer2( spep_6 + 74, 1227, "",spep_6 + 164, 0, 16, -1);
SE038 = playSeVer2( spep_6 + 86, 1353, "",spep_6 + 168, 0, 20, -1);

--飛んでいく
SE039 = playSeVer2( spep_6 + 112, 1167, "",spep_6 + 162, 0, 14, 0.6);	setSeVolumeByWorkId( spep_6 + 112, SE039, 60 );

--連続気弾
SE040 = playSeVer2( spep_6 + 140, 1016, "",spep_6 + 162, 0, 10, -1);
SE041 = playSeVer2( spep_6 + 140, 1027, "",spep_6 + 162, 0, 10, 0.6);	setSeVolumeByWorkId( spep_6 + 140, SE041, 72 );
SE042 = playSeVer2( spep_6 + 140, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 140, SE042, 138 );
SE043 = playSeVer2( spep_6 + 144, 1038, "",spep_6 + 188, 0, 12, -1);

--気弾飛んでいく
SE044 = playSeVer2( spep_6 + 158, 1212, "",spep_6 + 256, 16, 44, 0.6);		setStartTimeMs( SE044,  317 );

--連続気弾
SE045 = playSeVer2( spep_6 + 148, 1016, "",spep_6 + 166, 0, 8, -1);
SE046 = playSeVer2( spep_6 + 152, 1016, "",spep_6 + 172, 0, 10, -1);
SE047 = playSeVer2( spep_6 + 152, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 152, SE047, 135 );
SE048 = playSeVer2( spep_6 + 160, 1016, "",spep_6 + 182, 0, 10, -1);
SE049 = playSeVer2( spep_6 + 166, 1016, "",spep_6 + 188, 0, 10, -1);
SE050 = playSeVer2( spep_6 + 166, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 166, SE050, 127 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 180 -4;

-------------------------------------------------
-- 爆撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_07, 0x100, -1, 0, 0, 0); --爆撃	ef_007
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 160 -4, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, 1.0, 1.0);
setEffScaleKey( spep_7 + 160 -4, base_7f, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 160 -4, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 160 -4, base_7f, 255);

base_7b = entryEffect( spep_7 + 0, SP_07b, 0x80, -1, 0, 0, 0); --爆撃　奥	ef_007_back
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 160 -4, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, 1.0, 1.0);
setEffScaleKey( spep_7 + 160 -4, base_7b, 1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 160 -4, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 160 -4, base_7b, 255);


-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_7 + 40, 906, 160 -4 -40, 0x100, -1, 0, 0, 200 );  --集中線
setEffShake( spep_7 + 40, shuchusen_7, 000, 20 );
setEffMoveKey( spep_7 + 40, shuchusen_7, 0, 0, 200 );
setEffMoveKey( spep_7 + 160 -4, shuchusen_7, 0, 0, 200 );
setEffScaleKey( spep_7 + 40, shuchusen_7, 1.5, 1.5 );
setEffScaleKey( spep_7 + 160 -4, shuchusen_7, 1.5, 1.5 );
setEffRotateKey( spep_7 + 40, shuchusen_7, 0 );
setEffRotateKey( spep_7 + 160 -4, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 40, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 48, shuchusen_7, 255 );
setEffAlphaKey( spep_7 + 160 -4, shuchusen_7, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 40, 1, 0 );

changeAnime( spep_7 + 0, 1, 107 );

-- setMoveKey( spep_7 -3 + 1, 1, -1116.9, 415.9 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -212.6, -20.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -234.9, 3.4 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -256.1, 25.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -275.5, 46.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -292, 64.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -304.8, 78.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -313, 87.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -315.8, 91.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -312.2, 88.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -301.5, 78.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -282.9, 61 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -255.6, 34.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -218.8, -1.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -171.7, -47.9 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -113.7, -105.3 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -43.9, -174.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 38.3, -256.2 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 133.8, -351.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 243.1, -460.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 235.5, -452.1 , 0 );

-- setScaleKey( spep_7 -3 + 1, 1, 0.01, 0.01 );
setScaleKey( spep_7 -2 + 2, 1, 0.29 *0.5, 0.29 *0.5 );
setScaleKey( spep_7 -3 + 8, 1, 0.29 *0.5, 0.29 *0.5 );
setScaleKey( spep_7 -3 + 10, 1, 0.30 *0.5, 0.30 *0.5 );
setScaleKey( spep_7 -3 + 12, 1, 0.31 *0.5, 0.31 *0.5 );
setScaleKey( spep_7 -3 + 14, 1, 0.32 *0.5, 0.32 *0.5 );
setScaleKey( spep_7 -3 + 16, 1, 0.34 *0.5, 0.34 *0.5 );
setScaleKey( spep_7 -3 + 18, 1, 0.37 *0.5, 0.37 *0.5 );
setScaleKey( spep_7 -3 + 20, 1, 0.40 *0.5, 0.40 *0.5 );
setScaleKey( spep_7 -3 + 22, 1, 0.44 *0.5, 0.44 *0.5 );
setScaleKey( spep_7 -3 + 24, 1, 0.49 *0.5, 0.49 *0.5 );
setScaleKey( spep_7 -3 + 26, 1, 0.55 *0.5, 0.55 *0.5 );
setScaleKey( spep_7 -3 + 28, 1, 0.62 *0.5, 0.62 *0.5 );
setScaleKey( spep_7 -3 + 30, 1, 0.71 *0.5, 0.71 *0.5 );
setScaleKey( spep_7 -3 + 32, 1, 0.80 *0.5, 0.80 *0.5 );
setScaleKey( spep_7 -3 + 34, 1, 0.91 *0.5, 0.91 *0.5 );
setScaleKey( spep_7 -3 + 36, 1, 1.04 *0.5, 1.04 *0.5 );
setScaleKey( spep_7 -3 + 38, 1, 1.18 *0.5, 1.18 *0.5 );
setScaleKey( spep_7 -3 + 40, 1, 1.18 *0.5, 1.18 *0.5 );

setRotateKey( spep_7 + 0, 1, 45 );
setRotateKey( spep_7 -3 + 40, 1, 45 );


-- ** 音 ** --
--爆発
SE051 = playSeVer2( spep_7 + 38, 1159, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_7 + 52, 1024, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_7 + 68, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 38); -- ダメージ表示フレーム
endPhase( spep_7 + 160 -8); -- 終了フレーム

else

------------------------------------------------------------------------------------------------------------
--敵側の攻撃
------------------------------------------------------------------------------------------------------------


spep_1 = 0;


-------------------------------------------------
-- 待機
-------------------------------------------------
-- ** エフェクト等 ** --
base_1 = entryEffect( spep_1 + 0, SP_01r, 0x80, -1, 0, 0, 0); --待機　敵側	ef_001re
setEffMoveKey( spep_1 + 0, base_1, 0, 0 , 0);
setEffMoveKey( spep_1 + 120 -4, base_1, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1, -1.0, 1.0);
setEffScaleKey( spep_1 + 120 -4, base_1, -1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1, 0);
setEffRotateKey( spep_1 + 120 -4, base_1, 0);
setEffAlphaKey( spep_1 + 0, base_1, 255);
setEffAlphaKey( spep_1 + 120 -5, base_1, 255);
setEffAlphaKey( spep_1 + 120 -4, base_1, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_1 + 0;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0);  --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2);  --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0);  --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5);  --セリフカットイン差し替え


-- ** 音 ** --
--顔カットイン
--SE001 = playSeVer2( spep_1 + 8, 1018, "", 0, 0, 0, -1);

--顔合わせる
SE002 = playSeVer2( spep_1 + 84, 4, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_2 = spep_1 + 120 -4;

-------------------------------------------------
-- 構える
-------------------------------------------------
-- ** エフェクト等 ** --
base_2f = entryEffect( spep_2 + 0, SP_02r, 0x100, -1, 0, 0, 0); --構える　敵側	ef_002re
setEffMoveKey( spep_2 + 0, base_2f, 0, 0 , 0);
setEffMoveKey( spep_2 + 120 -4, base_2f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2f, -1.0, 1.0);
setEffScaleKey( spep_2 + 120 -4, base_2f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2f, 0);
setEffRotateKey( spep_2 + 120 -4, base_2f, 0);
setEffAlphaKey( spep_2 + 0, base_2f, 255);
setEffAlphaKey( spep_2 + 120 -5, base_2f, 255);
setEffAlphaKey( spep_2 + 120 -4, base_2f, 0);

base_2b = entryEffect( spep_2 + 0, SP_02br, 0x80, -1, 0, 0, 0); --構える　敵側　奥	ef_002re_back
setEffMoveKey( spep_2 + 0, base_2b, 0, 0 , 0);
setEffMoveKey( spep_2 + 120 -4, base_2b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, base_2b, -1.0, 1.0);
setEffScaleKey( spep_2 + 120 -4, base_2b, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, base_2b, 0);
setEffRotateKey( spep_2 + 120 -4, base_2b, 0);
setEffAlphaKey( spep_2 + 0, base_2b, 255);
setEffAlphaKey( spep_2 + 120 -5, base_2b, 255);
setEffAlphaKey( spep_2 + 120 -4, base_2b, 0);


-- ** 敵キャラクター ** --
setDisp( spep_2 -3 + 76, 1, 1 );
-- setDisp( spep_2 -3 + 120, 1, 0 );

changeAnime( spep_2 -3 + 76, 1, 117 );

setMoveKey( spep_2 -3 + 76, 1, 82.1, -1130.7 , 0 );
setMoveKey( spep_2 -3 + 77, 1, 82.1, -1130.7 , 0 );
setMoveKey( spep_2 -3 + 78, 1, 81.2, -1020.3 , 0 );
setMoveKey( spep_2 -3 + 79, 1, 81.2, -1020.3 , 0 );
setMoveKey( spep_2 -3 + 80, 1, 79.5, -919.9 , 0 );
setMoveKey( spep_2 -3 + 81, 1, 79.5, -919.9 , 0 );
setMoveKey( spep_2 -3 + 82, 1, 77.1, -829.2 , 0 );
setMoveKey( spep_2 -3 + 83, 1, 77.1, -829.2 , 0 );
setMoveKey( spep_2 -3 + 84, 1, 74.1, -747.6 , 0 );
setMoveKey( spep_2 -3 + 85, 1, 74.1, -747.6 , 0 );
setMoveKey( spep_2 -3 + 86, 1, 71.1, -674 , 0 );
setMoveKey( spep_2 -3 + 87, 1, 71.1, -674 , 0 );
setMoveKey( spep_2 -3 + 88, 1, 67.7, -607.7 , 0 );
setMoveKey( spep_2 -3 + 89, 1, 67.7, -607.7 , 0 );
setMoveKey( spep_2 -3 + 90, 1, 64.3, -547.7 , 0 );
setMoveKey( spep_2 -3 + 91, 1, 64.3, -547.7 , 0 );
setMoveKey( spep_2 -3 + 92, 1, 60.9, -493.2 , 0 );
setMoveKey( spep_2 -3 + 93, 1, 60.9, -493.2 , 0 );
setMoveKey( spep_2 -3 + 94, 1, 57.5, -443.5 , 0 );
setMoveKey( spep_2 -3 + 95, 1, 57.5, -443.5 , 0 );
setMoveKey( spep_2 -3 + 96, 1, 54.2, -397.9 , 0 );
setMoveKey( spep_2 -3 + 97, 1, 54.2, -397.9 , 0 );
setMoveKey( spep_2 -3 + 98, 1, 51.1, -356 , 0 );
setMoveKey( spep_2 -3 + 99, 1, 51.1, -356 , 0 );
setMoveKey( spep_2 -3 + 100, 1, 48, -317.2 , 0 );
setMoveKey( spep_2 -3 + 101, 1, 48, -317.2 , 0 );
setMoveKey( spep_2 -3 + 102, 1, 45, -281 , 0 );
setMoveKey( spep_2 -3 + 103, 1, 45, -281 , 0 );
setMoveKey( spep_2 -3 + 104, 1, 41.9, -247.2 , 0 );
setMoveKey( spep_2 -3 + 105, 1, 41.9, -247.2 , 0 );
setMoveKey( spep_2 -3 + 106, 1, 39, -215.5 , 0 );
setMoveKey( spep_2 -3 + 107, 1, 39, -215.5 , 0 );
setMoveKey( spep_2 -3 + 108, 1, 36.2, -185.5 , 0 );
setMoveKey( spep_2 -3 + 109, 1, 36.2, -185.5 , 0 );
setMoveKey( spep_2 -3 + 110, 1, 33.5, -157.1 , 0 );
setMoveKey( spep_2 -3 + 111, 1, 33.5, -157.1 , 0 );
setMoveKey( spep_2 -3 + 112, 1, 30.8, -130.1 , 0 );

setScaleKey( spep_2 -3 + 76, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 77, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 78, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 79, 1, 0.99, 0.99 );
setScaleKey( spep_2 -3 + 80, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 81, 1, 0.94, 0.94 );
setScaleKey( spep_2 -3 + 82, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 83, 1, 0.9, 0.9 );
setScaleKey( spep_2 -3 + 84, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 85, 1, 0.86, 0.86 );
setScaleKey( spep_2 -3 + 86, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 87, 1, 0.83, 0.83 );
setScaleKey( spep_2 -3 + 88, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 89, 1, 0.8, 0.8 );
setScaleKey( spep_2 -3 + 90, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 91, 1, 0.77, 0.77 );
setScaleKey( spep_2 -3 + 92, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 93, 1, 0.75, 0.75 );
setScaleKey( spep_2 -3 + 94, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 95, 1, 0.73, 0.73 );
setScaleKey( spep_2 -3 + 96, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 97, 1, 0.71, 0.71 );
setScaleKey( spep_2 -3 + 98, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 99, 1, 0.69, 0.69 );
setScaleKey( spep_2 -3 + 100, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 101, 1, 0.67, 0.67 );
setScaleKey( spep_2 -3 + 102, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 103, 1, 0.66, 0.66 );
setScaleKey( spep_2 -3 + 104, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 105, 1, 0.64, 0.64 );
setScaleKey( spep_2 -3 + 106, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 107, 1, 0.63, 0.63 );
setScaleKey( spep_2 -3 + 108, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 109, 1, 0.61, 0.61 );
setScaleKey( spep_2 -3 + 110, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 111, 1, 0.6, 0.6 );
setScaleKey( spep_2 -3 + 112, 1, 0.59, 0.59 );

setRotateKey( spep_2 -3 + 76, 1, 7.8 );
setRotateKey( spep_2 -3 + 77, 1, 7.8 );
setRotateKey( spep_2 -3 + 78, 1, 7.8 );
setRotateKey( spep_2 -3 + 79, 1, 7.8 );
setRotateKey( spep_2 -3 + 80, 1, 5.5 );
setRotateKey( spep_2 -3 + 81, 1, 5.5 );
setRotateKey( spep_2 -3 + 82, 1, 3.4 );
setRotateKey( spep_2 -3 + 83, 1, 3.4 );
setRotateKey( spep_2 -3 + 84, 1, 1.6 );
setRotateKey( spep_2 -3 + 85, 1, 1.6 );
setRotateKey( spep_2 -3 + 86, 1, -0.1 );
setRotateKey( spep_2 -3 + 87, 1, -0.1 );
setRotateKey( spep_2 -3 + 88, 1, -1.6 );
setRotateKey( spep_2 -3 + 89, 1, -1.6 );
setRotateKey( spep_2 -3 + 90, 1, -2.9 );
setRotateKey( spep_2 -3 + 91, 1, -2.9 );
setRotateKey( spep_2 -3 + 92, 1, -4.1 );
setRotateKey( spep_2 -3 + 93, 1, -4.1 );
setRotateKey( spep_2 -3 + 94, 1, -5.2 );
setRotateKey( spep_2 -3 + 95, 1, -5.2 );
setRotateKey( spep_2 -3 + 96, 1, -6.3 );
setRotateKey( spep_2 -3 + 97, 1, -6.3 );
setRotateKey( spep_2 -3 + 98, 1, -7.2 );
setRotateKey( spep_2 -3 + 99, 1, -7.2 );
setRotateKey( spep_2 -3 + 100, 1, -8.1 );
setRotateKey( spep_2 -3 + 101, 1, -8.1 );
setRotateKey( spep_2 -3 + 102, 1, -8.9 );
setRotateKey( spep_2 -3 + 103, 1, -8.9 );
setRotateKey( spep_2 -3 + 104, 1, -9.6 );
setRotateKey( spep_2 -3 + 105, 1, -9.6 );
setRotateKey( spep_2 -3 + 106, 1, -10.3 );
setRotateKey( spep_2 -3 + 107, 1, -10.3 );
setRotateKey( spep_2 -3 + 108, 1, -11 );
setRotateKey( spep_2 -3 + 109, 1, -11 );
setRotateKey( spep_2 -3 + 110, 1, -11.7 );
setRotateKey( spep_2 -3 + 111, 1, -11.7 );
setRotateKey( spep_2 -3 + 112, 1, -12.3 );


-- ** 音 ** --
--二人構える
SE003 = playSeVer2( spep_2 + 0, 1013, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_2 + 0, 1192, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE004, 193 );
SE005 = playSeVer2( spep_2 + 12, 1007, "", 0, 0, 0, -1);

--二人飛び出す
SE006 = playSeVer2( spep_2 + 30, 1182, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_2 + 30, 1207, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 36, 1117, "", 0, 0, 0, -1);

--飛行中音
SE009 = playSeVer2( spep_2 + 68, 1019, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 68, SE009, 158 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
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


-- ** 敵キャラクター ** --
setMoveKey( spep_2 -3 + 113, 1, 30.8, -130.1 , 0 );
setMoveKey( spep_2 -3 + 114, 1, 28.1, -104.3 , 0 );
setMoveKey( spep_2 -3 + 115, 1, 28.1, -104.3 , 0 );
setMoveKey( spep_2 -3 + 116, 1, 25.5, -79.5 , 0 );
setMoveKey( spep_2 -3 + 117, 1, 25.5, -79.5 , 0 );
setMoveKey( spep_2 -3 + 118, 1, 22.9, -55.9 , 0 );
-- setMoveKey( spep_2 -5 + 120, 1, 22.9, -55.9 , 0 );

setScaleKey( spep_2 -3 + 113, 1, 0.59, 0.59 );
setScaleKey( spep_2 -3 + 114, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 115, 1, 0.58, 0.58 );
setScaleKey( spep_2 -3 + 116, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 117, 1, 0.57, 0.57 );
setScaleKey( spep_2 -3 + 118, 1, 0.56, 0.56 );
-- setScaleKey( spep_2 -5 + 120, 1, 0.56, 0.56 );

setRotateKey( spep_2 -3 + 113, 1, -12.3 );
setRotateKey( spep_2 -3 + 114, 1, -12.8 );
setRotateKey( spep_2 -3 + 115, 1, -12.8 );
setRotateKey( spep_2 -3 + 116, 1, -13.4 );
setRotateKey( spep_2 -3 + 117, 1, -13.4 );
setRotateKey( spep_2 -3 + 118, 1, -13.9 );
-- setRotateKey( spep_2 -5 + 120, 1, -13.9 );


-- ** 次の準備 ** --
spep_3 = spep_2 + 120 -4;

-------------------------------------------------
-- 連続攻撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_3f = entryEffect( spep_3 + 0, SP_03r, 0x100, -1, 0, 0, 0); --連続攻撃　敵側	ef_003re
setEffMoveKey( spep_3 + 0, base_3f, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3f, -1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3f, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3f, 0);
setEffRotateKey( spep_3 + 124 -4, base_3f, 0);
setEffAlphaKey( spep_3 + 0, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3f, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3f, 0);

base_3b = entryEffect( spep_3 + 0, SP_03br, 0x80, -1, 0, 0, 0); --連続攻撃　敵側　奥	ef_003re_back
setEffMoveKey( spep_3 + 0, base_3b, 0, 0 , 0);
setEffMoveKey( spep_3 + 124 -4, base_3b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, base_3b, -1.0, 1.0);
setEffScaleKey( spep_3 + 124 -4, base_3b, -1.0, 1.0);
setEffRotateKey( spep_3 + 0, base_3b, 0);
setEffRotateKey( spep_3 + 124 -4, base_3b, 0);
setEffAlphaKey( spep_3 + 0, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -5, base_3b, 255);
setEffAlphaKey( spep_3 + 124 -4, base_3b, 0);


-- ** 敵キャラクター ** --
-- setDisp( spep_3 + 0, 1, 1 );
-- setDisp( spep_3 -4 + 124, 1, 0 );

changeAnime( spep_3 + 0, 1, 104 );
changeAnime( spep_3 -3 + 20, 1, 106 );

-- setMoveKey( spep_3 -3 + 0, 1, -37.4, -12.4 , 0 );
setMoveKey( spep_3 -2 + 2, 1, -36.5, -12.1 , 0 );
setMoveKey( spep_3 -3 + 4, 1, -35.6, -11.8 , 0 );
setMoveKey( spep_3 -3 + 6, 1, -34.8, -11.6 , 0 );
setMoveKey( spep_3 -3 + 8, 1, -33.9, -11.2 , 0 );
setMoveKey( spep_3 -3 + 10, 1, -33, -10.9 , 0 );
setMoveKey( spep_3 -3 + 12, 1, -32.1, -10.6 , 0 );
setMoveKey( spep_3 -3 + 14, 1, -31.2, -10.4 , 0 );
setMoveKey( spep_3 -3 + 16, 1, -30.4, -10.1 , 0 );
setMoveKey( spep_3 -3 + 19, 1, 29.7, 131.9 , 0 );
setMoveKey( spep_3 -3 + 20, 1, 9.5, -79.9 , 0 );
setMoveKey( spep_3 -3 + 22, 1, -166.8, -31.5 , 0 );
setMoveKey( spep_3 -3 + 24, 1, 8.1, 57 , 0 );
setMoveKey( spep_3 -3 + 26, 1, -15.3, 17.3 , 0 );
setMoveKey( spep_3 -3 + 28, 1, -75.9, 97.3 , 0 );
setMoveKey( spep_3 -3 + 30, 1, -40, 13.1 , 0 );
setMoveKey( spep_3 -3 + 32, 1, -60, 33.1 , 0 );
setMoveKey( spep_3 -3 + 34, 1, -53.7, 37.2 , 0 );
setMoveKey( spep_3 -3 + 36, 1, -47.3, 41.3 , 0 );
setMoveKey( spep_3 -3 + 38, 1, -41, 45.4 , 0 );
setMoveKey( spep_3 -3 + 40, 1, -34.6, 49.5 , 0 );
setMoveKey( spep_3 -3 + 42, 1, -32.2, 47.3 , 0 );
setMoveKey( spep_3 -3 + 44, 1, -31.2, 44.7 , 0 );
setMoveKey( spep_3 -3 + 46, 1, -30.3, 42 , 0 );
setMoveKey( spep_3 -3 + 48, 1, -29.4, 39.4 , 0 );
setMoveKey( spep_3 -3 + 50, 1, -28.4, 36.7 , 0 );
setMoveKey( spep_3 -3 + 52, 1, 51.9, -0.6 , 0 );
setMoveKey( spep_3 -3 + 54, 1, 47.8, 47.3 , 0 );
setMoveKey( spep_3 -3 + 56, 1, 5.8, 41.6 , 0 );
setMoveKey( spep_3 -3 + 58, 1, 21.1, 26 , 0 );
setMoveKey( spep_3 -3 + 60, 1, 19.9, 52.9 , 0 );
setMoveKey( spep_3 -3 + 62, 1, 38.7, 48.7 , 0 );
setMoveKey( spep_3 -3 + 64, 1, 26.6, 36.6 , 0 );
setMoveKey( spep_3 -3 + 66, 1, 67, 97 , 0 );
setMoveKey( spep_3 -3 + 68, 1, 59.6, 42.6 , 0 );
setMoveKey( spep_3 -3 + 70, 1, 22.3, 36.5 , 0 );
setMoveKey( spep_3 -3 + 72, 1, 52.7, 50.6 , 0 );
setMoveKey( spep_3 -3 + 74, 1, 43.5, 69.9 , 0 );
setMoveKey( spep_3 -3 + 76, 1, 30.6, 54.1 , 0 );
setMoveKey( spep_3 -3 + 78, 1, 36.2, 44.9 , 0 );
setMoveKey( spep_3 -3 + 80, 1, -0.7, 118 , 0 );
setMoveKey( spep_3 -3 + 82, 1, 8.6, 44.4 , 0 );
setMoveKey( spep_3 -3 + 84, 1, -6.8, 29.2 , 0 );
setMoveKey( spep_3 -3 + 86, 1, 22.8, 6.9 , 0 );
setMoveKey( spep_3 -3 + 88, 1, 7.7, -2 , 0 );
setMoveKey( spep_3 -3 + 90, 1, -5.9, 1.8 , 0 );
setMoveKey( spep_3 -3 + 92, 1, -0.4, 1.4 , 0 );
setMoveKey( spep_3 -3 + 94, 1, -57.6, -25 , 0 );
setMoveKey( spep_3 -3 + 96, 1, -34.5, 1.4 , 0 );
setMoveKey( spep_3 -3 + 98, 1, -27.1, -0.3 , 0 );
setMoveKey( spep_3 -3 + 99, 1, -27.1, -0.3 , 0 );
setMoveKey( spep_3 -3 + 100, 1, -21.1, -2.4 , 0 );
setMoveKey( spep_3 -3 + 101, 1, -21.1, -2.4 , 0 );
setMoveKey( spep_3 -3 + 102, 1, -15, -4.5 , 0 );
setMoveKey( spep_3 -3 + 103, 1, -15, -4.5 , 0 );
setMoveKey( spep_3 -3 + 104, 1, -16.1, -4.8 , 0 );
setMoveKey( spep_3 -3 + 105, 1, -16.1, -4.8 , 0 );
setMoveKey( spep_3 -3 + 106, 1, -17.2, -5.1 , 0 );
setMoveKey( spep_3 -3 + 107, 1, -17.2, -5.1 , 0 );
setMoveKey( spep_3 -3 + 108, 1, -18.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 109, 1, -18.3, -5.5 , 0 );
setMoveKey( spep_3 -3 + 110, 1, -19.4, -5.8 , 0 );
setMoveKey( spep_3 -3 + 111, 1, -19.4, -5.8 , 0 );
setMoveKey( spep_3 -3 + 112, 1, -20.5, -6.1 , 0 );
setMoveKey( spep_3 -3 + 113, 1, -20.5, -6.1 , 0 );
setMoveKey( spep_3 -3 + 114, 1, -21.6, -6.4 , 0 );
setMoveKey( spep_3 -3 + 115, 1, -21.6, -6.4 , 0 );
setMoveKey( spep_3 -3 + 116, 1, -22.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 117, 1, -22.7, -6.8 , 0 );
setMoveKey( spep_3 -3 + 118, 1, -23.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 119, 1, -23.8, -7.1 , 0 );
setMoveKey( spep_3 -3 + 120, 1, -24.9, -7.4 , 0 );
setMoveKey( spep_3 -5 + 124, 1, -24.9, -7.4 , 0 );

-- setScaleKey( spep_3 -3 + 0, 1, 1.75, 1.75 );
setScaleKey( spep_3 -2 + 2, 1, 1.71, 1.71 );
setScaleKey( spep_3 -3 + 4, 1, 1.67, 1.67 );
setScaleKey( spep_3 -3 + 6, 1, 1.62, 1.62 );
setScaleKey( spep_3 -3 + 8, 1, 1.58, 1.58 );
setScaleKey( spep_3 -3 + 10, 1, 1.54, 1.54 );
setScaleKey( spep_3 -3 + 12, 1, 1.5, 1.5 );
setScaleKey( spep_3 -3 + 14, 1, 1.46, 1.46 );
setScaleKey( spep_3 -3 + 16, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 19, 1, 1.42, 1.42 );
setScaleKey( spep_3 -3 + 20, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 22, 1, 1.41, 1.41 );
setScaleKey( spep_3 -3 + 24, 1, 1.4, 1.4 );
setScaleKey( spep_3 -3 + 26, 1, 1.33, 1.33 );
setScaleKey( spep_3 -3 + 28, 1, 1.25, 1.25 );
setScaleKey( spep_3 -3 + 30, 1, 1.18, 1.18 );
setScaleKey( spep_3 -3 + 32, 1, 1.11, 1.11 );
setScaleKey( spep_3 -3 + 34, 1, 1.04, 1.04 );
setScaleKey( spep_3 -3 + 36, 1, 0.96, 0.96 );
setScaleKey( spep_3 -3 + 38, 1, 0.89, 0.89 );
setScaleKey( spep_3 -3 + 40, 1, 0.82, 0.82 );
setScaleKey( spep_3 -3 + 42, 1, 0.75, 0.75 );
setScaleKey( spep_3 -3 + 44, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 46, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 48, 1, 0.73, 0.73 );
setScaleKey( spep_3 -3 + 50, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 52, 1, 0.72, 0.72 );
setScaleKey( spep_3 -3 + 54, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 56, 1, 0.71, 0.71 );
setScaleKey( spep_3 -3 + 58, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 60, 1, 0.7, 0.7 );
setScaleKey( spep_3 -3 + 62, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 64, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 66, 1, 0.68, 0.68 );
setScaleKey( spep_3 -3 + 68, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 70, 1, 0.67, 0.67 );
setScaleKey( spep_3 -3 + 72, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 74, 1, 0.66, 0.66 );
setScaleKey( spep_3 -3 + 76, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 78, 1, 0.65, 0.65 );
setScaleKey( spep_3 -3 + 80, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 82, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 84, 1, 0.63, 0.63 );
setScaleKey( spep_3 -3 + 86, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 88, 1, 0.62, 0.62 );
setScaleKey( spep_3 -3 + 90, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 92, 1, 0.61, 0.61 );
setScaleKey( spep_3 -3 + 94, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 96, 1, 0.6, 0.6 );
setScaleKey( spep_3 -3 + 98, 1, 0.59, 0.59 );
setScaleKey( spep_3 -3 + 100, 1, 0.64, 0.64 );
setScaleKey( spep_3 -3 + 102, 1, 0.69, 0.69 );
setScaleKey( spep_3 -3 + 104, 1, 0.74, 0.74 );
setScaleKey( spep_3 -3 + 106, 1, 0.8, 0.8 );
setScaleKey( spep_3 -3 + 108, 1, 0.85, 0.85 );
setScaleKey( spep_3 -3 + 110, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 111, 1, 0.9, 0.9 );
setScaleKey( spep_3 -3 + 112, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 113, 1, 0.95, 0.95 );
setScaleKey( spep_3 -3 + 114, 1, 1, 1 );
setScaleKey( spep_3 -3 + 115, 1, 1, 1 );
setScaleKey( spep_3 -3 + 116, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 117, 1, 1.05, 1.05 );
setScaleKey( spep_3 -3 + 118, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 119, 1, 1.1, 1.1 );
setScaleKey( spep_3 -3 + 120, 1, 1.15, 1.15 );
setScaleKey( spep_3 -5 + 124, 1, 1.15, 1.15 );

setRotateKey( spep_3 + 0, 1, 0 );
setRotateKey( spep_3 -3 + 19, 1, 0 );
setRotateKey( spep_3 -3 + 20, 1, -27.2 );
setRotateKey( spep_3 -3 + 24, 1, -27.2 );
setRotateKey( spep_3 -3 + 26, 1, -27.3 );
setRotateKey( spep_3 -3 + 28, 1, -27.3 );
setRotateKey( spep_3 -3 + 30, 1, -27.4 );
setRotateKey( spep_3 -3 + 32, 1, -27.4 );
setRotateKey( spep_3 -3 + 34, 1, -27.5 );
setRotateKey( spep_3 -3 + 36, 1, -27.6 );
setRotateKey( spep_3 -3 + 38, 1, -27.6 );
setRotateKey( spep_3 -3 + 40, 1, -27.7 );
setRotateKey( spep_3 -3 + 44, 1, -27.7 );
setRotateKey( spep_3 -3 + 46, 1, -27.6 );
setRotateKey( spep_3 -3 + 48, 1, -27.5 );
setRotateKey( spep_3 -3 + 50, 1, -27.4 );
setRotateKey( spep_3 -3 + 52, 1, -27.3 );
setRotateKey( spep_3 -3 + 54, 1, -27.3 );
setRotateKey( spep_3 -3 + 56, 1, -27.2 );
setRotateKey( spep_3 -3 + 58, 1, -27.1 );
setRotateKey( spep_3 -3 + 60, 1, -27 );
setRotateKey( spep_3 -3 + 62, 1, -26.9 );
setRotateKey( spep_3 -3 + 64, 1, -26.9 );
setRotateKey( spep_3 -3 + 66, 1, -26.8 );
setRotateKey( spep_3 -3 + 68, 1, -26.7 );
setRotateKey( spep_3 -3 + 70, 1, -26.6 );
setRotateKey( spep_3 -3 + 72, 1, -26.5 );
setRotateKey( spep_3 -3 + 74, 1, -26.5 );
setRotateKey( spep_3 -3 + 76, 1, -26.4 );
setRotateKey( spep_3 -3 + 78, 1, -26.3 );
setRotateKey( spep_3 -3 + 80, 1, -26.2 );
setRotateKey( spep_3 -3 + 82, 1, -26.1 );
setRotateKey( spep_3 -3 + 84, 1, -26.1 );
setRotateKey( spep_3 -3 + 86, 1, -26 );
setRotateKey( spep_3 -3 + 88, 1, -25.9 );
setRotateKey( spep_3 -3 + 90, 1, -25.8 );
setRotateKey( spep_3 -3 + 92, 1, -25.7 );
setRotateKey( spep_3 -3 + 94, 1, -25.7 );
setRotateKey( spep_3 -3 + 96, 1, -25.6 );
setRotateKey( spep_3 -3 + 98, 1, -25.5 );
setRotateKey( spep_3 -5 + 124, 1, -25.5 );


-- ** 音 ** --
--二人初手アタック
SE010 = playSeVer2( spep_3 + 12, 1017, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_3 + 12, 1026, "",spep_3 + 60, 0, 30, -1);

--連続アタック
SE012 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_3 + 44, 1002, "", 0, 0, 0, 0.5);
SE014 = playSeVer2( spep_3 + 54, 1110, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 72, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 72, 1011, "", 0, 0, 0, 0.5);

--二人向かっていく
SE018 = playSeVer2( spep_3 + 94, 1019, "",spep_3 + 130, 0, 6, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- ヒップアタック
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --ヒップアタック　敵側	ef_004re
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 100 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4f, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4f, 0);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --ヒップアタック　敵側　奥	ef_004re_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 100 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 100 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 100 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -5, base_4b, 255);
setEffAlphaKey( spep_4 + 100 -4, base_4b, 0);


-- ** 敵キャラクター ** --
-- setDisp( spep_4 -3 + 0, 1, 1 );
setDisp( spep_4 -3 + 50, 1, 0 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 24, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, -38, -12.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -36.5, -12.1 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -35.1, -11.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -33.9, -11.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -32.9, -10.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -32, -10.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -31.2, -10.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.7, -10.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -30.3, -10 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -29.9, -9.9 , 0 );
setMoveKey( spep_4 -3 + 23, 1, -30.9, -10.2 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 34.2, -32.4 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 19.7, -63.2 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 156.1, -83.4 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 71.4, -54.7 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 189.5, -43.8 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 241.6, -158.7 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 216.4, -214.5 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 289.3, -221.5 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 264.5, -198.5 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 341.2, -261.4 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 401, -263.8 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 401, -310 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 449.6, -327 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 488, -356.3 , 0 );

-- setScaleKey( spep_4 -3 + 0, 1, 2.53, 2.53 );
setScaleKey( spep_4 -2 + 2, 1, 2.43, 2.43 );
setScaleKey( spep_4 -3 + 4, 1, 2.34, 2.34 );
setScaleKey( spep_4 -3 + 6, 1, 2.26, 2.26 );
setScaleKey( spep_4 -3 + 8, 1, 2.19, 2.19 );
setScaleKey( spep_4 -3 + 10, 1, 2.13, 2.13 );
setScaleKey( spep_4 -3 + 12, 1, 2.08, 2.08 );
setScaleKey( spep_4 -3 + 14, 1, 2.04, 2.04 );
setScaleKey( spep_4 -3 + 16, 1, 2.01, 2.01 );
setScaleKey( spep_4 -3 + 18, 1, 2, 2 );
setScaleKey( spep_4 -3 + 20, 1, 1.99, 1.99 );
setScaleKey( spep_4 -3 + 23, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 24, 1, 1.76 *0.5, 1.76 *0.5 );
setScaleKey( spep_4 -3 + 26, 1, 1.96 *0.5, 1.96 *0.5 );
setScaleKey( spep_4 -3 + 28, 1, 2.16 *0.5, 2.16 *0.5 );
setScaleKey( spep_4 -3 + 30, 1, 2.37 *0.5, 2.37 *0.5 );
setScaleKey( spep_4 -3 + 32, 1, 2.58 *0.5, 2.58 *0.5 );
setScaleKey( spep_4 -3 + 34, 1, 2.78 *0.5, 2.78 *0.5 );
setScaleKey( spep_4 -3 + 36, 1, 2.98 *0.5, 2.98 *0.5 );
setScaleKey( spep_4 -3 + 38, 1, 3.18 *0.5, 3.18 *0.5 );
setScaleKey( spep_4 -3 + 40, 1, 3.38 *0.5, 3.38 *0.5 );
setScaleKey( spep_4 -3 + 42, 1, 3.58 *0.5, 3.58 *0.5 );
setScaleKey( spep_4 -3 + 44, 1, 3.77 *0.5, 3.77 *0.5 );
setScaleKey( spep_4 -3 + 46, 1, 3.97 *0.5, 3.97 *0.5 );
setScaleKey( spep_4 -3 + 48, 1, 4.15 *0.5, 4.15 *0.5 );
setScaleKey( spep_4 -3 + 50, 1, 4.34 *0.5, 4.34 *0.5 );

setRotateKey( spep_4 + 0, 1, -44.2 );
setRotateKey( spep_4 -3 + 23, 1, -44.2 );
setRotateKey( spep_4 -3 + 24, 1, 64 );
setRotateKey( spep_4 -3 + 50, 1, 64 );


-- ** 音 ** --
--挟み撃ち
SE019 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE020 = playSeVer2( spep_4 + 18, 1153, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 18, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE022 = playSeVer2( spep_4 + 74, 44, "",spep_4 + 102, 0, 6, -1);
SE023 = playSeVer2( spep_4 + 74, 1048, "",spep_4 + 102, 0, 6, -1);


-- ** 次の準備 ** --
spep_c = spep_4 + 100 -4;

-------------------------------------------------
--カードカットイン(94F)
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
spep_5 = spep_c + 94;

-------------------------------------------------
-- 溜める
-------------------------------------------------
-- ** エフェクト等 ** --
base_5 = entryEffect( spep_5 + 0, SP_05r, 0x80, -1, 0, 0, 0); --溜める　敵側	ef_005re
setEffMoveKey( spep_5 + 0, base_5, 0, 0 , 0);
setEffMoveKey( spep_5 + 180 -4, base_5, 0, 0 , 0);
setEffScaleKey( spep_5 + 0, base_5, -1.0, 1.0);
setEffScaleKey( spep_5 + 180 -4, base_5, -1.0, 1.0);
setEffRotateKey( spep_5 + 0, base_5, 0);
setEffRotateKey( spep_5 + 180 -4, base_5, 0);
setEffAlphaKey( spep_5 + 0, base_5, 255);
setEffAlphaKey( spep_5 + 180 -5, base_5, 255);
setEffAlphaKey( spep_5 + 180 -4, base_5, 0);


-- ** 音 ** --
--二人向き合う
SE025 = playSeVer2( spep_5 + 0, 8, "", 0, 0, 0, -1);

--バータエネルギー溜める
SE026 = playSeVer2( spep_5 + 38 -8, 1194, "",spep_5 + 140 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 38 -8, SE026, 132 );
SE027 = playSeVer2( spep_5 + 38 -8, 1175, "",spep_5 + 140 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 38 -8, SE027, 54 );
SE028 = playSeVer2( spep_5 + 56 -8, 1264, "",spep_5 + 168 -8, 0, 64, -1);	setSeVolumeByWorkId( spep_5 + 56 -8, SE028, 74 );
SE029 = playSeVer2( spep_5 + 56 -8, 1161, "",spep_5 + 136 -8, 0, 34, -1);	setSeVolumeByWorkId( spep_5 + 56 -8, SE029, 83 );

--ジースエネルギー溜める
SE030 = playSeVer2( spep_5 + 122 -8, 1194, "",spep_5 + 224 -8, 0, 32, -1);	setSeVolumeByWorkId( spep_5 + 122 -8, SE030, 135 );
SE031 = playSeVer2( spep_5 + 122 -8, 1175, "",spep_5 + 280 -8, 0, 28, -1);	setSeVolumeByWorkId( spep_5 + 122 -8, SE031, 55 );
SE032 = playSeVer2( spep_5 + 138 -8, 1264, "",spep_5 + 218 -8, 0, 30, -1);	setSeVolumeByWorkId( spep_5 + 138 -8, SE032, 78 );
SE033 = playSeVer2( spep_5 + 138 -8, 1161, "",spep_5 + 280 -8, 0, 28, -1);	setSeVolumeByWorkId( spep_5 + 138 -8, SE033, 83 );


-- ** 次の準備 ** --
spep_6 = spep_5 + 180 -4;

-------------------------------------------------
-- エネルギー融合
-------------------------------------------------
-- ** エフェクト等 ** --
base_6 = entryEffect( spep_6 + 0, SP_06r, 0x80, -1, 0, 0, 0); --エネルギー融合　敵側	ef_006re
setEffMoveKey( spep_6 + 0, base_6, 0, 0 , 0);
setEffMoveKey( spep_6 + 180 -4, base_6, 0, 0 , 0);
setEffScaleKey( spep_6 + 0, base_6, -1.0, 1.0);
setEffScaleKey( spep_6 + 180 -4, base_6, -1.0, 1.0);
setEffRotateKey( spep_6 + 0, base_6, 0);
setEffRotateKey( spep_6 + 180 -4, base_6, 0);
setEffAlphaKey( spep_6 + 0, base_6, 255);
setEffAlphaKey( spep_6 + 180 -5, base_6, 255);
setEffAlphaKey( spep_6 + 180 -4, base_6, 0);


-- ** 音 ** --
--融合する
SE034 = playSeVer2( spep_6 + 60, 1025, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_6 + 60, 1162, "", 0, 0, 0, -1);
SE036 = playSeVer2( spep_6 + 68, 1200, "",spep_6 + 172, 0, 22, -1);
SE037 = playSeVer2( spep_6 + 74, 1227, "",spep_6 + 164, 0, 16, -1);
SE038 = playSeVer2( spep_6 + 86, 1353, "",spep_6 + 168, 0, 20, -1);

--飛んでいく
SE039 = playSeVer2( spep_6 + 112, 1167, "",spep_6 + 162, 0, 14, 0.6);	setSeVolumeByWorkId( spep_6 + 112, SE039, 60 );

--連続気弾
SE040 = playSeVer2( spep_6 + 140, 1016, "",spep_6 + 162, 0, 10, -1);
SE041 = playSeVer2( spep_6 + 140, 1027, "",spep_6 + 162, 0, 10, 0.6);	setSeVolumeByWorkId( spep_6 + 140, SE041, 72 );
SE042 = playSeVer2( spep_6 + 140, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 140, SE042, 138 );
SE043 = playSeVer2( spep_6 + 144, 1038, "",spep_6 + 188, 0, 12, -1);

--気弾飛んでいく
SE044 = playSeVer2( spep_6 + 158, 1212, "",spep_6 + 256, 16, 44, 0.6);		setStartTimeMs( SE044,  317 );

--連続気弾
SE045 = playSeVer2( spep_6 + 148, 1016, "",spep_6 + 166, 0, 8, -1);
SE046 = playSeVer2( spep_6 + 152, 1016, "",spep_6 + 172, 0, 10, -1);
SE047 = playSeVer2( spep_6 + 152, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 152, SE047, 135 );
SE048 = playSeVer2( spep_6 + 160, 1016, "",spep_6 + 182, 0, 10, -1);
SE049 = playSeVer2( spep_6 + 166, 1016, "",spep_6 + 188, 0, 10, -1);
SE050 = playSeVer2( spep_6 + 166, 1201, "", 0, 0, 0, 0.6);	setSeVolumeByWorkId( spep_6 + 166, SE050, 127 );


-- ** 次の準備 ** --
spep_7 = spep_6 + 180 -4;

-------------------------------------------------
-- 爆撃
-------------------------------------------------
-- ** エフェクト等 ** --
base_7f = entryEffect( spep_7 + 0, SP_07r, 0x100, -1, 0, 0, 0); --爆撃　敵側	ef_007re
setEffMoveKey( spep_7 + 0, base_7f, 0, 0 , 0);
setEffMoveKey( spep_7 + 160 -4, base_7f, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7f, -1.0, 1.0);
setEffScaleKey( spep_7 + 160 -4, base_7f, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7f, 0);
setEffRotateKey( spep_7 + 160 -4, base_7f, 0);
setEffAlphaKey( spep_7 + 0, base_7f, 255);
setEffAlphaKey( spep_7 + 160 -4, base_7f, 255);

base_7b = entryEffect( spep_7 + 0, SP_07br, 0x80, -1, 0, 0, 0); --爆撃　敵側　奥	ef_007re_back
setEffMoveKey( spep_7 + 0, base_7b, 0, 0 , 0);
setEffMoveKey( spep_7 + 160 -4, base_7b, 0, 0 , 0);
setEffScaleKey( spep_7 + 0, base_7b, -1.0, 1.0);
setEffScaleKey( spep_7 + 160 -4, base_7b, -1.0, 1.0);
setEffRotateKey( spep_7 + 0, base_7b, 0);
setEffRotateKey( spep_7 + 160 -4, base_7b, 0);
setEffAlphaKey( spep_7 + 0, base_7b, 255);
setEffAlphaKey( spep_7 + 160 -4, base_7b, 255);


-- ** 集中線 ** --
shuchusen_7 = entryEffectLife( spep_7 + 40, 906, 160 -4 -40, 0x100, -1, 0, 0, 200 );  --集中線
setEffShake( spep_7 + 40, shuchusen_7, 000, 20 );
setEffMoveKey( spep_7 + 40, shuchusen_7, 0, 0, 200 );
setEffMoveKey( spep_7 + 160 -4, shuchusen_7, 0, 0, 200 );
setEffScaleKey( spep_7 + 40, shuchusen_7, 1.5, 1.5 );
setEffScaleKey( spep_7 + 160 -4, shuchusen_7, 1.5, 1.5 );
setEffRotateKey( spep_7 + 40, shuchusen_7, 0 );
setEffRotateKey( spep_7 + 160 -4, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 40, shuchusen_7, 0 );
setEffAlphaKey( spep_7 + 48, shuchusen_7, 255 );
setEffAlphaKey( spep_7 + 160 -4, shuchusen_7, 255 );


-- ** 敵キャラクター ** --
setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 40, 1, 0 );

changeAnime( spep_7 + 0, 1, 107 );

-- setMoveKey( spep_7 -3 + 1, 1, -1116.9, 415.9 , 0 );
setMoveKey( spep_7 -2 + 2, 1, -212.6, -20.2 , 0 );
setMoveKey( spep_7 -3 + 4, 1, -234.9, 3.4 , 0 );
setMoveKey( spep_7 -3 + 6, 1, -256.1, 25.9 , 0 );
setMoveKey( spep_7 -3 + 8, 1, -275.5, 46.4 , 0 );
setMoveKey( spep_7 -3 + 10, 1, -292, 64.1 , 0 );
setMoveKey( spep_7 -3 + 12, 1, -304.8, 78.1 , 0 );
setMoveKey( spep_7 -3 + 14, 1, -313, 87.4 , 0 );
setMoveKey( spep_7 -3 + 16, 1, -315.8, 91.2 , 0 );
setMoveKey( spep_7 -3 + 18, 1, -312.2, 88.6 , 0 );
setMoveKey( spep_7 -3 + 20, 1, -301.5, 78.8 , 0 );
setMoveKey( spep_7 -3 + 22, 1, -282.9, 61 , 0 );
setMoveKey( spep_7 -3 + 24, 1, -255.6, 34.5 , 0 );
setMoveKey( spep_7 -3 + 26, 1, -218.8, -1.5 , 0 );
setMoveKey( spep_7 -3 + 28, 1, -171.7, -47.9 , 0 );
setMoveKey( spep_7 -3 + 30, 1, -113.7, -105.3 , 0 );
setMoveKey( spep_7 -3 + 32, 1, -43.9, -174.5 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 38.3, -256.2 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 133.8, -351.3 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 243.1, -460.3 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 235.5, -452.1 , 0 );

-- setScaleKey( spep_7 -3 + 1, 1, 0.01, 0.01 );
setScaleKey( spep_7 -2 + 2, 1, 0.29 *0.5, 0.29 *0.5 );
setScaleKey( spep_7 -3 + 8, 1, 0.29 *0.5, 0.29 *0.5 );
setScaleKey( spep_7 -3 + 10, 1, 0.30 *0.5, 0.30 *0.5 );
setScaleKey( spep_7 -3 + 12, 1, 0.31 *0.5, 0.31 *0.5 );
setScaleKey( spep_7 -3 + 14, 1, 0.32 *0.5, 0.32 *0.5 );
setScaleKey( spep_7 -3 + 16, 1, 0.34 *0.5, 0.34 *0.5 );
setScaleKey( spep_7 -3 + 18, 1, 0.37 *0.5, 0.37 *0.5 );
setScaleKey( spep_7 -3 + 20, 1, 0.40 *0.5, 0.40 *0.5 );
setScaleKey( spep_7 -3 + 22, 1, 0.44 *0.5, 0.44 *0.5 );
setScaleKey( spep_7 -3 + 24, 1, 0.49 *0.5, 0.49 *0.5 );
setScaleKey( spep_7 -3 + 26, 1, 0.55 *0.5, 0.55 *0.5 );
setScaleKey( spep_7 -3 + 28, 1, 0.62 *0.5, 0.62 *0.5 );
setScaleKey( spep_7 -3 + 30, 1, 0.71 *0.5, 0.71 *0.5 );
setScaleKey( spep_7 -3 + 32, 1, 0.80 *0.5, 0.80 *0.5 );
setScaleKey( spep_7 -3 + 34, 1, 0.91 *0.5, 0.91 *0.5 );
setScaleKey( spep_7 -3 + 36, 1, 1.04 *0.5, 1.04 *0.5 );
setScaleKey( spep_7 -3 + 38, 1, 1.18 *0.5, 1.18 *0.5 );
setScaleKey( spep_7 -3 + 40, 1, 1.18 *0.5, 1.18 *0.5 );

setRotateKey( spep_7 + 0, 1, 45 );
setRotateKey( spep_7 -3 + 40, 1, 45 );


-- ** 音 ** --
--爆発
SE051 = playSeVer2( spep_7 + 38, 1159, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_7 + 52, 1024, "", 0, 0, 0, -1);
SE053 = playSeVer2( spep_7 + 68, 1023, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_7 + 38); -- ダメージ表示フレーム
endPhase( spep_7 + 160 -8); -- 終了フレーム

end
