--1028720:LR_ギニュー(特戦隊)_必殺技：先攻ジャンケン(バータ)
--sp_effect_a1_00433
--sp2696

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162804;	--じゃんけん	ef_001
SP_02 = 162805;	--攻撃	ef_002
SP_02b = 162806;--背景	ef_002b

--エフェクト(てき)
SP_02r = 162807;--攻撃　敵側	ef_002r

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

changeAnime( 0, 0, 0);
changeAnime( 0, 1, 100);
setDisp( 0, 0, 0);
setDisp( 0, 1, 0);

setMoveKey(   0,   0,    0, -5000,   0 );
setMoveKey(   1,   0,    0, -5000,   0 );
setMoveKey(   2,   0,    0, -5000,   0 );
setMoveKey(   3,   0,    0, -5000,   0 );
setMoveKey(   4,   0,    0, -5000,   0 );
setMoveKey(   5,   0,    0, -5000,   0 );
setMoveKey(   6,   0,    0, -5000,   0 );
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

setMoveKey(   0,   1,    0, -5000,   0 );
setMoveKey(   1,   1,    0, -5000,   0 );
setMoveKey(   2,   1,    0, -5000,   0 );
setMoveKey(   3,   1,    0, -5000,   0 );
setMoveKey(   4,   1,    0, -5000,   0 );
setMoveKey(   5,   1,    0, -5000,   0 );
setMoveKey(   6,   1,    0, -5000,   0 );
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

OFFSET_X = -1;

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- じゃんけん
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 79 );
setStartTimeMs( SE003,  133 );
SE004 = playSeVer2( spep_0 + 58, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 79 );
SE005 = playSeVer2( spep_0 + 58, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
--setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
--setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
--setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
--setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- 攻撃
-------------------------------------------------

MAX_FRAME_1 = 248;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 攻撃	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 58 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 58 + OFFSET_X, 1, 175.2, -50.2 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 175.2, -50.2 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 175.2, -47.2 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 175.2, -47.2 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 175.2, -48.3 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 175.2, -48.3 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 175.2, -51.3 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 175.2, -51.3 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 175.2, -49 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 175.2, -49 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 175.2, -49.1 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 175.2, -49.1 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 175.2, -49.4 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 175.2, -49.4 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 175.2, -49.2 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 175.2, -49.2 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 232.8, -49 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 232.8, -49 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 222.4, -54.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 222.4, -54.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 214.1, -45.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 214.1, -45.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 214.5, -54.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 214.5, -54.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 221.5, -47 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 221.5, -47 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 227, -53 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 227, -53 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 229.9, -48.5 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 229.9, -48.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 235.4, -53.2 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 235.4, -53.2 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 241.6, -49 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 241.6, -49 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 247.7, -52.7 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 247.7, -52.7 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 253.8, -52.3 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 253.8, -52.3 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 259.9, -49.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 259.9, -49.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 266, -51.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 266, -51.8 , 0 );

setScaleKey( spep_1 + 58 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_1 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, 13.8 );

-- ** 音 ** --
--腕前に出す
SE007 = playSeVer2( spep_1 + 10, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE007, 79 );
--気弾発射
SE008 = playSeVer2( spep_1 + 26, 1133, "",spep_1 + 84, 0, 32, -1);
SE009 = playSeVer2( spep_1 + 26, 1177, "",spep_1 + 132, 0, 14, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
--気弾飛んでいく
SE010 = playSeVer2( spep_1 + 74, 1202, "", 0, 0, 0, -1);
--敵ヒット
SE011 = playSeVer2( spep_1 + 82, 1011, "", 0, 0, 0, -1);
--爆発
SE012 = playSeVer2( spep_1 + 110, 1159, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 248F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;


-------------------------------------------------
-- じゃんけん
-------------------------------------------------

MAX_FRAME_0 = 128;

-- ** エフェクト等 ** --
base_0 = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- じゃんけん	ef_001
setEffMoveKey( spep_0 + 0, base_0, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0, 0);
setEffAlphaKey( spep_0 + 0, base_0, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 白フェード ** --
entryFade( spep_0 + 118, 8, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 4;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
--ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -70, 515.5, 3000 ); --ゴゴゴ
--setEffShake( spep_x + 16, ctgogo, 68, 10 );
--setEffMoveKey( spep_x + 16, ctgogo, -70, 515.5 , 0 );
--setEffMoveKey( spep_x + 84, ctgogo, -70, 515.5 , 0 );
--setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
--setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
--setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
--setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
--setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
--setEffRotateKey( spep_x + 16, ctgogo, 0 );
--setEffRotateKey( spep_x + 84, ctgogo, 0 );
--setEffAlphaKey( spep_x + 16, ctgogo, 255 );
--setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1349, "",spep_0 + 150, 0, 18, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 50 );
--じゃんけん
SE003 = playSeVer2( spep_0 + 56, 1237, "",spep_0 + 150, 4, 18, -1);
setSeVolumeByWorkId( spep_0 + 56, SE003, 79 );
setStartTimeMs( SE003,  133 );
SE004 = playSeVer2( spep_0 + 58, 13, "",spep_0 + 154, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 58, SE004, 79 );
SE005 = playSeVer2( spep_0 + 58, 10, "",spep_0 + 156, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 58, SE005, 68 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --128F


--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1513, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffScaleKey( spep_c + 0, speff2, -1.0, 1.0);  -- 敵側のみ
setEffScaleKey( spep_c + 90, speff2, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え
 
spname = entryEffectLife( spep_c + 0, 1512, 90, 0x100, -1, 0, 0, -188 ); 
setEffScaleKey( spep_c + 0, spname, -1.0, 1.0); -- 敵側のみ
setEffScaleKey( spep_c + 90, spname, -1.0, 1.0); -- 敵側のみ
setEffReplaceTexture( spname, 5, 4 );-- 技名テクスチャ差し替え
 
-- ** 放射線(黄) ** --
housha = entryEffectLife( spep_c + 0, 1511, 90, 0x100, -1, 0, 0, 0 );  --黄色放射
setEffMoveKey( spep_c + 0, housha, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, housha, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, housha, 1.0, 1.0 );
setEffScaleKey( spep_c + 90, housha, 1.0, 1.0 );
setEffRotateKey( spep_c + 0, housha, 0 );
setEffRotateKey( spep_c + 90, housha, 0 );
setEffAlphaKey( spep_c + 0, housha, 255 );
setEffAlphaKey( spep_c + 90, housha, 255 );
 
-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_c + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_c + 0, shuchusen, 90, 20 );
setEffMoveKey( spep_c + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_c + 90, shuchusen, 0, 0 , 0 );
setEffScaleKey( spep_c + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_c + 90, shuchusen, 1.6, 1.6 );
setEffRotateKey( spep_c + 0, shuchusen, 0 );
setEffRotateKey( spep_c + 90, shuchusen, 0 );
setEffAlphaKey( spep_c + 0, shuchusen, 255 );
setEffAlphaKey( spep_c + 90, shuchusen, 255 );
 
-- ** 音 ** --
--カードカットイン
SE_CUTIN = playSeVer2( spep_c + 0, 1035, "", 0, 0, 0, -1);

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 6, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
 
-- ** 次の準備 ** --
spep_1 = spep_c + 94;

-------------------------------------------------
-- 攻撃
-------------------------------------------------

MAX_FRAME_1 = 248;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- 攻撃	ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- 攻撃	ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_1 + 58 + OFFSET_X, 1, 1 );
setDisp( spep_1 + 112 + OFFSET_X, 1, 0 );

changeAnime( spep_1 + 58 + OFFSET_X, 1, 117 );
changeAnime( spep_1 + 86 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 58 + OFFSET_X, 1, 175.2, -50.2 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 175.2, -50.2 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 175.2, -47.2 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 175.2, -47.2 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 175.2, -48.3 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 175.2, -48.3 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 175.2, -51.3 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 175.2, -51.3 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 175.2, -49 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 175.2, -49 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 175.2, -51.5 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 175.2, -49.1 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 175.2, -49.1 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 175.2, -51.2 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 175.2, -49.4 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 175.2, -49.4 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 175.2, -49.2 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 175.2, -49.2 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 175.2, -51.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 232.8, -49 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 232.8, -49 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 222.4, -54.9 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 222.4, -54.9 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 214.1, -45.4 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 214.1, -45.4 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 214.5, -54.2 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 214.5, -54.2 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 221.5, -47 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 221.5, -47 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 227, -53 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 227, -53 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 229.9, -48.5 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 229.9, -48.5 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 235.4, -53.2 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 235.4, -53.2 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 241.6, -49 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 241.6, -49 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 247.7, -52.7 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 247.7, -52.7 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 253.8, -52.3 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 253.8, -52.3 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 259.9, -49.7 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 259.9, -49.7 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 266, -51.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 266, -51.8 , 0 );

setScaleKey( spep_1 + 58 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 1.38, 1.38 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 1.04, 1.04 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.53, 0.53 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 0.45, 0.45 );

setRotateKey( spep_1 + 58 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 0 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 13.8 );
setRotateKey( spep_1 + 112 + OFFSET_X, 1, 13.8 );

-- ** 音 ** --
--腕前に出す
SE007 = playSeVer2( spep_1 + 10, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 10, SE007, 79 );
--気弾発射
SE008 = playSeVer2( spep_1 + 26, 1133, "",spep_1 + 84, 0, 32, -1);
SE009 = playSeVer2( spep_1 + 26, 1177, "",spep_1 + 132, 0, 14, -1);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 44; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE007, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
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

-- ** 音 ** --
--気弾飛んでいく
SE010 = playSeVer2( spep_1 + 74, 1202, "", 0, 0, 0, -1);
--敵ヒット
SE011 = playSeVer2( spep_1 + 82, 1011, "", 0, 0, 0, -1);
--爆発
SE012 = playSeVer2( spep_1 + 110, 1159, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_1 + 116, 1024, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 248F-4


end
