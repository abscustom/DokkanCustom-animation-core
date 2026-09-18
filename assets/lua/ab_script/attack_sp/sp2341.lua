--1023720:SSR_ジース&バータ_マグマハリケーン
--sp_effect_b1_00197
--sp2341

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
SP_01 = 159397;	--待機	ef_001
SP_02 = 159399;	--構える	ef_002
SP_02b = 159400;	--構える　奥	ef_002_back
SP_03 = 159403;	--連続攻撃	ef_003
SP_03b = 159404;	--連続攻撃　奥	ef_003_back
SP_04 = 159407;	--ヒップアタック	ef_004
SP_04b = 159408;	--ヒップアタック　奥	ef_004_back

--エフェクト(てき)
SP_01r = 159398;	--待機　敵側	ef_001re
SP_02r = 159401;	--構える　敵側	ef_002re
SP_02br = 159402;	--構える　敵側　奥	ef_002re_back
SP_03r = 159405;	--連続攻撃　敵側	ef_003re
SP_03br = 159406;	--連続攻撃　敵側　奥	ef_003re_back
SP_04r = 159409;	--ヒップアタック　敵側	ef_004re
SP_04br = 159410;	--ヒップアタック　敵側　奥	ef_004re_back


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
spep_c = spep_1 + 120 -4;

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
spep_2 = spep_c + 96;

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
SE004 = playSeVer2( spep_2 + 0, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 1192, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE005, 193 );
SE006 = playSeVer2( spep_2 + 10, 1007, "", 0, 0, 0, -1);

--二人飛び出す
SE007 = playSeVer2( spep_2 + 30, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 30, 1207, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);

--飛行中音
SE010 = playSeVer2( spep_2 + 66, 1019, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 66, SE010, 158 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
SE011 = playSeVer2( spep_3 + 12, 1017, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 12, 1026, "",spep_3 + 60, 0, 30, -1);


--連続アタック
SE013 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 44, 1002, "", 0, 0, 0, 0.5);
SE015 = playSeVer2( spep_3 + 54, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 70, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 70, 1011, "", 0, 0, 0, 0.5);

--二人向かっていく
SE019 = playSeVer2( spep_3 + 92, 1019, "",spep_3 + 130, 0, 8, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- ヒップアタック
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04, 0x100, -1, 0, 0, 0); --ヒップアタック	ef_004
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 216 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, 1.0, 1.0);
setEffScaleKey( spep_4 + 216 -4, base_4f, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 216 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 216 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04b, 0x80, -1, 0, 0, 0); --ヒップアタック　奥	ef_004_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 216 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, 1.0, 1.0);
setEffScaleKey( spep_4 + 216 -4, base_4b, 1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 216 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 216 -4, base_4b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 58, 1, 0 );
setDisp( spep_4 -3 + 84, 1, 1 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 30, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, -38, -12.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -36.6, -12.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -35.2, -11.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -34, -11.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -32.9, -10.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -32, -10.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -31.3, -10.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.7, -10.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -30.3, -10.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -30.9, -10.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 24.3, 17.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -83.3, -78.9 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 21, -41.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -26.5, 22.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 57, 60.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 74, -27 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 13.2, -54.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 50.2, -33.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -10.7, 17.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 88.7, -54.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 171.8, -66.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 195.5, -122.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 268, -149.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 328.3, -187.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 388.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 448.8, -264.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 508.8, -303.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 568.8, -341.7 , 0 );
setMoveKey( spep_4 +1 + 84, 1, -10.3, 2.6 , 0 );
setMoveKey( spep_4 +1 + 86, 1, -14, -3.1 , 0 );
setMoveKey( spep_4 +1 + 88, 1, -17.6, -8.4 , 0 );
setMoveKey( spep_4 +1 + 90, 1, -20.8, -14.3 , 0 );
setMoveKey( spep_4 +1 + 92, 1, -24.9, -20.2 , 0 );
setMoveKey( spep_4 +1 + 94, 1, -28.9, -24.9 , 0 );
setMoveKey( spep_4 +1 + 96, 1, -2.4, -106.9 , 0 );
setMoveKey( spep_4 +1 + 98, 1, -115, -104.1 , 0 );
setMoveKey( spep_4 +1 + 99, 1, -115, -104.1 , 0 );
setMoveKey( spep_4 +1 + 100, 1, 9.8, -10 , 0 );
setMoveKey( spep_4 +1 + 101, 1, 9.8, -10 , 0 );
setMoveKey( spep_4 +1 + 102, 1, -9.3, -89.7 , 0 );
setMoveKey( spep_4 +1 + 103, 1, -9.3, -89.7 , 0 );
setMoveKey( spep_4 +1 + 104, 1, -53.3, 4 , 0 );
setMoveKey( spep_4 +1 + 105, 1, -53.3, 4 , 0 );
setMoveKey( spep_4 +1 + 106, 1, -58.2, -49 , 0 );
setMoveKey( spep_4 +1 + 107, 1, -58.2, -49 , 0 );
setMoveKey( spep_4 +1 + 108, 1, -34.5, -24.1 , 0 );
setMoveKey( spep_4 +1 + 109, 1, -34.5, -24.1 , 0 );
setMoveKey( spep_4 +1 + 110, 1, -16.9, -77.2 , 0 );
setMoveKey( spep_4 +1 + 111, 1, -16.9, -77.2 , 0 );
setMoveKey( spep_4 +1 + 112, 1, -49.1, -37.1 , 0 );
setMoveKey( spep_4 +1 + 113, 1, -49.1, -37.1 , 0 );
setMoveKey( spep_4 +1 + 114, 1, -91.9, -77 , 0 );
setMoveKey( spep_4 +1 + 115, 1, -91.9, -77 , 0 );
setMoveKey( spep_4 +1 + 116, 1, -65.1, -85.9 , 0 );
setMoveKey( spep_4 +1 + 117, 1, -65.1, -85.9 , 0 );
setMoveKey( spep_4 +1 + 118, 1, -29.1, -60.9 , 0 );
setMoveKey( spep_4 +1 + 119, 1, -29.1, -60.9 , 0 );
setMoveKey( spep_4 +1 + 120, 1, -62.4, -40.8 , 0 );
setMoveKey( spep_4 -4 + 216, 1, -62.4, -40.8 , 0 );

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
setScaleKey( spep_4 -3 + 22, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 24, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 26, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 29, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 30, 1, 1.65 *0.5, 1.65 *0.5 );
setScaleKey( spep_4 -3 + 32, 1, 1.67 *0.5, 1.67 *0.5 );
setScaleKey( spep_4 -3 + 34, 1, 1.69 *0.5, 1.69 *0.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.71 *0.5, 1.71 *0.5 );
setScaleKey( spep_4 -3 + 38, 1, 1.73 *0.5, 1.73 *0.5 );
setScaleKey( spep_4 -3 + 40, 1, 1.74 *0.5, 1.74 *0.5 );
setScaleKey( spep_4 -3 + 42, 1, 2.08 *0.5, 2.08 *0.5 );
setScaleKey( spep_4 -3 + 44, 1, 2.43 *0.5, 2.43 *0.5 );
setScaleKey( spep_4 -3 + 46, 1, 2.78 *0.5, 2.77 *0.5 );
setScaleKey( spep_4 -3 + 48, 1, 3.12 *0.5, 3.12 *0.5 );
setScaleKey( spep_4 -3 + 50, 1, 3.47 *0.5, 3.46 *0.5 );
setScaleKey( spep_4 -3 + 52, 1, 3.81 *0.5, 3.81 *0.5 );
setScaleKey( spep_4 -3 + 54, 1, 4.15 *0.5, 4.14 *0.5 );
setScaleKey( spep_4 -3 + 56, 1, 4.49 *0.5, 4.48 *0.5 );
setScaleKey( spep_4 -3 + 58, 1, 4.83 *0.5, 4.82 *0.5 );
setScaleKey( spep_4 +1 + 84, 1, 0.40 *0.5, 0.40 *0.5 );
setScaleKey( spep_4 +1 + 86, 1, 0.84 *0.5, 0.83 *0.5 );
setScaleKey( spep_4 +1 + 88, 1, 1.27 *0.5, 1.27 *0.5 );
setScaleKey( spep_4 +1 + 90, 1, 1.71 *0.5, 1.71 *0.5 );
setScaleKey( spep_4 +1 + 92, 1, 2.14 *0.5, 2.14 *0.5 );
setScaleKey( spep_4 +1 + 94, 1, 2.58 *0.5, 2.57 *0.5 );
setScaleKey( spep_4 +1 + 96, 1, 3.01 *0.5, 3.01 *0.5 );
setScaleKey( spep_4 +1 + 98, 1, 3.45 *0.5, 3.44 *0.5 );
setScaleKey( spep_4 +1 + 99, 1, 3.45 *0.5, 3.44 *0.5 );
setScaleKey( spep_4 +1 + 100, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 101, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 102, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 103, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 104, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 105, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 106, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 107, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 108, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 109, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 110, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 111, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 112, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 113, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 114, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 -4 + 216, 1, 3.45 *0.5, 3.45 *0.5 );

setRotateKey( spep_4 + 0, 1, -44.2 );
setRotateKey( spep_4 -3 + 29, 1, -44.2 );
setRotateKey( spep_4 -3 + 30, 1, 64 );
setRotateKey( spep_4 -3 + 40, 1, 64 );
setRotateKey( spep_4 -3 + 42, 1, 62.4 );
setRotateKey( spep_4 -3 + 44, 1, 60.8 );
setRotateKey( spep_4 -3 + 46, 1, 59.2 );
setRotateKey( spep_4 -3 + 48, 1, 57.6 );
setRotateKey( spep_4 -3 + 50, 1, 56 );
setRotateKey( spep_4 -3 + 52, 1, 54.3 );
setRotateKey( spep_4 -3 + 54, 1, 52.7 );
setRotateKey( spep_4 -3 + 56, 1, 51.1 );
setRotateKey( spep_4 -3 + 58, 1, 49.5 );
setRotateKey( spep_4 -3 + 82, 1, 49.5 );
setRotateKey( spep_4 +1 + 84, 1, -122.8 );
setRotateKey( spep_4 +1 + 86, 1, -1 );
setRotateKey( spep_4 +1 + 88, 1, 120.7 );
setRotateKey( spep_4 +1 + 90, 1, 242.5 );
setRotateKey( spep_4 +1 + 92, 1, 364.3 );
setRotateKey( spep_4 +1 + 94, 1, 486 );
setRotateKey( spep_4 +1 + 96, 1, 607.8 );
setRotateKey( spep_4 +1 + 98, 1, 729.5 );
setRotateKey( spep_4 -4 + 216, 1, 729.5 );


-- ** 音 ** --
--挟み撃ち
SE020 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 18, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 18, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE023 = playSeVer2( spep_4 + 94, 1025, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 94, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 94); -- ダメージ表示フレーム
endPhase( spep_4 + 216 -8); -- 終了フレーム

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
SE001 = playSeVer2( spep_1 + 8, 1018, "", 0, 0, 0, -1);

--顔合わせる
SE002 = playSeVer2( spep_1 + 84, 4, "", 0, 0, 0, -1);


-- ** 次の準備 ** --
spep_c = spep_1 + 120 -4;

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
spep_2 = spep_c + 96;

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
SE004 = playSeVer2( spep_2 + 0, 1013, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_2 + 0, 1192, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 0, SE005, 193 );
SE006 = playSeVer2( spep_2 + 10, 1007, "", 0, 0, 0, -1);

--二人飛び出す
SE007 = playSeVer2( spep_2 + 30, 1182, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_2 + 30, 1207, "", 0, 0, 0, -1);
SE009 = playSeVer2( spep_2 + 34, 1117, "", 0, 0, 0, -1);

--飛行中音
SE010 = playSeVer2( spep_2 + 66, 1019, "", 0, 0, 0, -1);	setSeVolumeByWorkId( spep_2 + 66, SE010, 158 );


-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_2 + 110; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
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
SE011 = playSeVer2( spep_3 + 12, 1017, "", 0, 0, 0, -1);
SE012 = playSeVer2( spep_3 + 12, 1026, "",spep_3 + 60, 0, 30, -1);


--連続アタック
SE013 = playSeVer2( spep_3 + 44, 1110, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_3 + 44, 1002, "", 0, 0, 0, 0.5);
SE015 = playSeVer2( spep_3 + 54, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_3 + 62, 1110, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_3 + 70, 1110, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_3 + 70, 1011, "", 0, 0, 0, 0.5);

--二人向かっていく
SE019 = playSeVer2( spep_3 + 92, 1019, "",spep_3 + 130, 0, 8, -1);


-- ** 次の準備 ** --
spep_4 = spep_3 + 124 -4;

-------------------------------------------------
-- ヒップアタック
-------------------------------------------------
-- ** エフェクト等 ** --
base_4f = entryEffect( spep_4 + 0, SP_04r, 0x100, -1, 0, 0, 0); --ヒップアタック　敵側	ef_004re
setEffMoveKey( spep_4 + 0, base_4f, 0, 0 , 0);
setEffMoveKey( spep_4 + 216 -4, base_4f, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4f, -1.0, 1.0);
setEffScaleKey( spep_4 + 216 -4, base_4f, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4f, 0);
setEffRotateKey( spep_4 + 216 -4, base_4f, 0);
setEffAlphaKey( spep_4 + 0, base_4f, 255);
setEffAlphaKey( spep_4 + 216 -4, base_4f, 255);

base_4b = entryEffect( spep_4 + 0, SP_04br, 0x80, -1, 0, 0, 0); --ヒップアタック　敵側　奥	ef_004re_back
setEffMoveKey( spep_4 + 0, base_4b, 0, 0 , 0);
setEffMoveKey( spep_4 + 216 -4, base_4b, 0, 0 , 0);
setEffScaleKey( spep_4 + 0, base_4b, -1.0, 1.0);
setEffScaleKey( spep_4 + 216 -4, base_4b, -1.0, 1.0);
setEffRotateKey( spep_4 + 0, base_4b, 0);
setEffRotateKey( spep_4 + 216 -4, base_4b, 0);
setEffAlphaKey( spep_4 + 0, base_4b, 255);
setEffAlphaKey( spep_4 + 216 -4, base_4b, 255);


-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 58, 1, 0 );
setDisp( spep_4 -3 + 84, 1, 1 );

changeAnime( spep_4 + 0, 1, 106 );
changeAnime( spep_4 -3 + 30, 1, 107 );

-- setMoveKey( spep_4 -3 + 0, 1, -38, -12.7 , 0 );
setMoveKey( spep_4 -2 + 2, 1, -36.6, -12.2 , 0 );
setMoveKey( spep_4 -3 + 4, 1, -35.2, -11.7 , 0 );
setMoveKey( spep_4 -3 + 6, 1, -34, -11.3 , 0 );
setMoveKey( spep_4 -3 + 8, 1, -32.9, -10.9 , 0 );
setMoveKey( spep_4 -3 + 10, 1, -32, -10.6 , 0 );
setMoveKey( spep_4 -3 + 12, 1, -31.3, -10.4 , 0 );
setMoveKey( spep_4 -3 + 14, 1, -30.7, -10.2 , 0 );
setMoveKey( spep_4 -3 + 16, 1, -30.3, -10.1 , 0 );
setMoveKey( spep_4 -3 + 18, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 20, 1, -30, -10 , 0 );
setMoveKey( spep_4 -3 + 22, 1, -30.9, -10.3 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 24.3, 17.5 , 0 );
setMoveKey( spep_4 -3 + 26, 1, -83.3, -78.9 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 21, -41.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, -26.5, 22.2 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 57, 60.3 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 74, -27 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 13.2, -54.8 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 50.2, -33.6 , 0 );
setMoveKey( spep_4 -3 + 40, 1, -10.7, 17.8 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 88.7, -54.3 , 0 );
setMoveKey( spep_4 -3 + 44, 1, 171.8, -66.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 195.5, -122.3 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 268, -149.3 , 0 );
setMoveKey( spep_4 -3 + 50, 1, 328.3, -187.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 388.6, -226.3 , 0 );
setMoveKey( spep_4 -3 + 54, 1, 448.8, -264.8 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 508.8, -303.2 , 0 );
setMoveKey( spep_4 -3 + 58, 1, 568.8, -341.7 , 0 );
setMoveKey( spep_4 +1 + 84, 1, -10.3, 2.6 , 0 );
setMoveKey( spep_4 +1 + 86, 1, -14, -3.1 , 0 );
setMoveKey( spep_4 +1 + 88, 1, -17.6, -8.4 , 0 );
setMoveKey( spep_4 +1 + 90, 1, -20.8, -14.3 , 0 );
setMoveKey( spep_4 +1 + 92, 1, -24.9, -20.2 , 0 );
setMoveKey( spep_4 +1 + 94, 1, -28.9, -24.9 , 0 );
setMoveKey( spep_4 +1 + 96, 1, -2.4, -106.9 , 0 );
setMoveKey( spep_4 +1 + 98, 1, -115, -104.1 , 0 );
setMoveKey( spep_4 +1 + 99, 1, -115, -104.1 , 0 );
setMoveKey( spep_4 +1 + 100, 1, 9.8, -10 , 0 );
setMoveKey( spep_4 +1 + 101, 1, 9.8, -10 , 0 );
setMoveKey( spep_4 +1 + 102, 1, -9.3, -89.7 , 0 );
setMoveKey( spep_4 +1 + 103, 1, -9.3, -89.7 , 0 );
setMoveKey( spep_4 +1 + 104, 1, -53.3, 4 , 0 );
setMoveKey( spep_4 +1 + 105, 1, -53.3, 4 , 0 );
setMoveKey( spep_4 +1 + 106, 1, -58.2, -49 , 0 );
setMoveKey( spep_4 +1 + 107, 1, -58.2, -49 , 0 );
setMoveKey( spep_4 +1 + 108, 1, -34.5, -24.1 , 0 );
setMoveKey( spep_4 +1 + 109, 1, -34.5, -24.1 , 0 );
setMoveKey( spep_4 +1 + 110, 1, -16.9, -77.2 , 0 );
setMoveKey( spep_4 +1 + 111, 1, -16.9, -77.2 , 0 );
setMoveKey( spep_4 +1 + 112, 1, -49.1, -37.1 , 0 );
setMoveKey( spep_4 +1 + 113, 1, -49.1, -37.1 , 0 );
setMoveKey( spep_4 +1 + 114, 1, -91.9, -77 , 0 );
setMoveKey( spep_4 +1 + 115, 1, -91.9, -77 , 0 );
setMoveKey( spep_4 +1 + 116, 1, -65.1, -85.9 , 0 );
setMoveKey( spep_4 +1 + 117, 1, -65.1, -85.9 , 0 );
setMoveKey( spep_4 +1 + 118, 1, -29.1, -60.9 , 0 );
setMoveKey( spep_4 +1 + 119, 1, -29.1, -60.9 , 0 );
setMoveKey( spep_4 +1 + 120, 1, -62.4, -40.8 , 0 );
setMoveKey( spep_4 -4 + 216, 1, -62.4, -40.8 , 0 );

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
setScaleKey( spep_4 -3 + 22, 1, 2.05, 2.05 );
setScaleKey( spep_4 -3 + 24, 1, 2.11, 2.11 );
setScaleKey( spep_4 -3 + 26, 1, 2.16, 2.16 );
setScaleKey( spep_4 -3 + 29, 1, 2.2, 2.2 );
setScaleKey( spep_4 -3 + 30, 1, 1.65 *0.5, 1.65 *0.5 );
setScaleKey( spep_4 -3 + 32, 1, 1.67 *0.5, 1.67 *0.5 );
setScaleKey( spep_4 -3 + 34, 1, 1.69 *0.5, 1.69 *0.5 );
setScaleKey( spep_4 -3 + 36, 1, 1.71 *0.5, 1.71 *0.5 );
setScaleKey( spep_4 -3 + 38, 1, 1.73 *0.5, 1.73 *0.5 );
setScaleKey( spep_4 -3 + 40, 1, 1.74 *0.5, 1.74 *0.5 );
setScaleKey( spep_4 -3 + 42, 1, 2.08 *0.5, 2.08 *0.5 );
setScaleKey( spep_4 -3 + 44, 1, 2.43 *0.5, 2.43 *0.5 );
setScaleKey( spep_4 -3 + 46, 1, 2.78 *0.5, 2.77 *0.5 );
setScaleKey( spep_4 -3 + 48, 1, 3.12 *0.5, 3.12 *0.5 );
setScaleKey( spep_4 -3 + 50, 1, 3.47 *0.5, 3.46 *0.5 );
setScaleKey( spep_4 -3 + 52, 1, 3.81 *0.5, 3.81 *0.5 );
setScaleKey( spep_4 -3 + 54, 1, 4.15 *0.5, 4.14 *0.5 );
setScaleKey( spep_4 -3 + 56, 1, 4.49 *0.5, 4.48 *0.5 );
setScaleKey( spep_4 -3 + 58, 1, 4.83 *0.5, 4.82 *0.5 );
setScaleKey( spep_4 +1 + 84, 1, 0.40 *0.5, 0.40 *0.5 );
setScaleKey( spep_4 +1 + 86, 1, 0.84 *0.5, 0.83 *0.5 );
setScaleKey( spep_4 +1 + 88, 1, 1.27 *0.5, 1.27 *0.5 );
setScaleKey( spep_4 +1 + 90, 1, 1.71 *0.5, 1.71 *0.5 );
setScaleKey( spep_4 +1 + 92, 1, 2.14 *0.5, 2.14 *0.5 );
setScaleKey( spep_4 +1 + 94, 1, 2.58 *0.5, 2.57 *0.5 );
setScaleKey( spep_4 +1 + 96, 1, 3.01 *0.5, 3.01 *0.5 );
setScaleKey( spep_4 +1 + 98, 1, 3.45 *0.5, 3.44 *0.5 );
setScaleKey( spep_4 +1 + 99, 1, 3.45 *0.5, 3.44 *0.5 );
setScaleKey( spep_4 +1 + 100, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 101, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 102, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 103, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 104, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 105, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 106, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 107, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 108, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 109, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 110, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 111, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 +1 + 112, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 113, 1, 3.80 *0.5, 3.80 *0.5 );
setScaleKey( spep_4 +1 + 114, 1, 3.45 *0.5, 3.45 *0.5 );
setScaleKey( spep_4 -4 + 216, 1, 3.45 *0.5, 3.45 *0.5 );

setRotateKey( spep_4 + 0, 1, -44.2 );
setRotateKey( spep_4 -3 + 29, 1, -44.2 );
setRotateKey( spep_4 -3 + 30, 1, 64 );
setRotateKey( spep_4 -3 + 40, 1, 64 );
setRotateKey( spep_4 -3 + 42, 1, 62.4 );
setRotateKey( spep_4 -3 + 44, 1, 60.8 );
setRotateKey( spep_4 -3 + 46, 1, 59.2 );
setRotateKey( spep_4 -3 + 48, 1, 57.6 );
setRotateKey( spep_4 -3 + 50, 1, 56 );
setRotateKey( spep_4 -3 + 52, 1, 54.3 );
setRotateKey( spep_4 -3 + 54, 1, 52.7 );
setRotateKey( spep_4 -3 + 56, 1, 51.1 );
setRotateKey( spep_4 -3 + 58, 1, 49.5 );
setRotateKey( spep_4 -3 + 82, 1, 49.5 );
setRotateKey( spep_4 +1 + 84, 1, -122.8 );
setRotateKey( spep_4 +1 + 86, 1, -1 );
setRotateKey( spep_4 +1 + 88, 1, 120.7 );
setRotateKey( spep_4 +1 + 90, 1, 242.5 );
setRotateKey( spep_4 +1 + 92, 1, 364.3 );
setRotateKey( spep_4 +1 + 94, 1, 486 );
setRotateKey( spep_4 +1 + 96, 1, 607.8 );
setRotateKey( spep_4 +1 + 98, 1, 729.5 );
setRotateKey( spep_4 -4 + 216, 1, 729.5 );


-- ** 音 ** --
--挟み撃ち
SE020 = playSeVer2( spep_4 + 0, 1004, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_4 + 18, 1153, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_4 + 18, 1187, "", 0, 0, 0, -1);

--飛び上がる
SE023 = playSeVer2( spep_4 + 94, 1025, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_4 + 94, 1054, "", 0, 0, 0, -1);


-- ** ダメージ表示 ** --
dealDamage( spep_4 + 94); -- ダメージ表示フレーム
endPhase( spep_4 + 216 -8); -- 終了フレーム

end
