--1022720:キャウェイ_必殺技：キャウェイの不意打ち
--sp_effect_b4_00198
--sp2247

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

--エフェクト(味方)
SP_01= 157800;-- ブーメランが飛んできて敵にあたる
SP_02= 157801;-- ブーメランが飛んできて敵にあたる
SP_03= 157804;-- 岩裏からキャウェイが飛び出る
SP_04= 157806;-- セリフカットイン
SP_05= 157808;-- 槍をつく
SP_06= 157809;-- 槍をつく
SP_07= 157812;-- キャウェイの横向きジャンプ
SP_08= 157814;-- ハンマーを構える（敵側共通）
SP_09= 157815;-- ハンマー振り下ろし～フィニッシュ
SP_10= 157816;-- ハンマー振り下ろし～フィニッシュ

--エフェクト(てき)
SP_01x= 157802;-- ブーメランが飛んできて敵にあたる(敵)
SP_02x= 157803;-- ブーメランが飛んできて敵にあたる(敵)
SP_03x= 157805;-- 岩裏からキャウェイが飛び出る(敵)
SP_04x= 157807;-- セリフカットイン	(敵)
SP_05x= 157810;-- 槍をつく(敵)
SP_06x= 157811;-- 槍をつく(敵)
SP_07x= 157813;-- キャウェイの横向きジャンプ(敵)
SP_08x= 157814;-- ハンマーを構える（敵側共通）
SP_09x= 157817;-- ハンマー振り下ろし～フィニッシュ(敵)
SP_10x= 157818;-- ハンマー振り下ろし～フィニッシュ(敵)

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------
multi_frm = 2;

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.75);


setDisp( 0, 0, 0);
changeAnime( 0, 0, 0);


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

setDisp( 0, 1, 0);
changeAnime( 0, 1, 100);

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

kame_flag = 0x00;
if (_IS_PLAYER_SIDE_ == 1) then
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ブーメランが飛んできて敵にあたる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
boomerang_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_f, 0 );
setEffRotateKey( spep_0 + 116, boomerang_f, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_f, 0 );

-- ** エフェクト等 ** --
boomerang_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_b, 0 );
setEffRotateKey( spep_0 + 116, boomerang_b, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_b, 0 );

--SE
--ブーメラン飛んでくる
SE001 = playSe( spep_0 + 8, 1117 );
SE002 = playSe( spep_0 + 8, 1116 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 66 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 72, 1, 1);
setDisp( spep_0-3 + 116, 1, 0);

changeAnime( spep_0-3 + 72, 1, 100);
changeAnime( spep_0-3 + 80, 1, 106);

setMoveKey( spep_0-3 + 72, 1, 3.4, -19.8 , 0 );
setMoveKey( spep_0-3 + 74, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, -0.2, -33.7 , 0 );
setMoveKey( spep_0-3 + 79, 1, -0.2, -33.7 , 0 );

setMoveKey( spep_0-3 + 80, 1, -121.9, 49.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -194.5, 76.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, -234.1, 140 , 0 );
setMoveKey( spep_0-3 + 86, 1, -274.6, 193.2 , 0 );
setMoveKey( spep_0-3 + 88, 1, -326.2, 214.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, -373.2, 226 , 0 );
setMoveKey( spep_0-3 + 92, 1, -399.6, 274.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -437.6, 306.5 , 0 );
setMoveKey( spep_0-3 + 96, 1, -455.4, 313.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, -477, 337.5 , 0 );
setMoveKey( spep_0-3 + 100, 1, -498.8, 355.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, -517.2, 370 , 0 );
setMoveKey( spep_0-3 + 104, 1, -532.3, 382.3 , 0 );
setMoveKey( spep_0-3 + 106, 1, -544, 392 , 0 );
setMoveKey( spep_0-3 + 108, 1, -552.6, 399.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, -558, 403.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, -560.4, 406 , 0 );
setMoveKey( spep_0-3 + 114, 1, -559.8, 405.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, -556.3, 403.4 , 0 );

setScaleKey( spep_0-3 + 72, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 80, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 82, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 86, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 88, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 92, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 94, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 98, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 100, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 110, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 112, 1, 1.2,1.2);
setScaleKey( spep_0-3 + 116, 1, 1.2,1.2);

setRotateKey( spep_0-3 + 72, 1, 0 );
setRotateKey( spep_0-3 + 79, 1, 0 );

setRotateKey( spep_0-3 + 80, 1, -96.5 );
setRotateKey( spep_0-3 + 116, 1, -96.5 );

--SE
--ブーメラン飛んでくる
stopSe( spep_0 + 28, SE001, 6 );
stopSe( spep_0 + 86, SE002, 8 );
SE003 = playSe( spep_0 + 26, 1117 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 107 );
setPitch( spep_0 + 26, SE003, 100 );
setTimeStretch( SE003, 1.07, 10, 1 );
stopSe( spep_0 + 40, SE003, 8 );
SE004 = playSe( spep_0 + 38, 1117 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 111 );
setPitch( spep_0 + 38, SE004, 200 );
setTimeStretch( SE004, 1.13, 10, 1 );
stopSe( spep_0 + 56, SE004, 4 );
SE005 = playSe( spep_0 + 48, 1117 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 127 );
setPitch( spep_0 + 48, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );
stopSe( spep_0 + 64, SE005, 6 );
SE006 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 143 );
setPitch( spep_0 + 56, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 70, SE006, 10 );

--ブーメランヒット
SE007 = playSe( spep_0 + 76, 1003 );
SE008 = playSe( spep_0 + 82, 1159 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 80 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
--岩裏からキャウェイが飛び出る
------------------------------------------------------
-- ** エフェクト等 ** --
fri = entryEffect( spep_1 + 0, SP_03, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fri, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, fri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, fri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fri, 0 );
setEffRotateKey( spep_1 + 110, fri, 0 );
setEffAlphaKey( spep_1 + 0, fri, 255 );
setEffAlphaKey( spep_1 + 108, fri, 255 );
setEffAlphaKey( spep_1 + 109, fri, 255 );
setEffAlphaKey( spep_1 + 110, fri, 0 );

--SE
--ブーメランヒット
stopSe( spep_1 + 18, SE008, 74 );

--岩から顔出す
SE009 = playSe( spep_1 + 0, 4 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 124 );

--岩から出てくる
SE010 = playSe( spep_1 + 34, 1048 );
SE011 = playSe( spep_1 + 34, 1106 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 168 );
SE012 = playSe( spep_1 + 34, 1182 );
setSeVolumeByWorkId( spep_1 + 34, SE012, 83 );

--ダッシュ
SE013 = playSe( spep_1 + 52, 44 );
SE014 = playSe( spep_1 + 52, 1314 );

--回転
SE015 = playSe( spep_1 + 88, 1004 );
setSeVolumeByWorkId( spep_1 + 88, SE015, 188 );
setPitch( spep_1 + 88, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+110;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serif = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, serif, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, serif, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, serif, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, serif, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, serif, 0 );
setEffRotateKey( spep_2 + 90, serif, 0 );
setEffAlphaKey( spep_2 + 0, serif, 255 );
setEffAlphaKey( spep_2 + 90, serif, 255 );

--顔カットインのタイミング指定
spep_x=spep_2 +10;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, 1.07, 1.07);

--SE
--ダッシュ
stopSe( spep_2 + 80, SE014, 8 );

--顔カットイン
SE016 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
--speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
--setEffReplaceTexture( speff2, 1, 1 );
--setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
--setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

if (_SPECIAL_SKILL_LEVEL_ == 0) then
    print ("_SPECIAL_SKILL_LEVEL_ == 0");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1507, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
    print ("_SPECIAL_SKILL_LEVEL_ == 1");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1120, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
 
elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
    print ("_SPECIAL_SKILL_LEVEL_ == 2");
    playSe( spep_3, SE_05);
    speff = entryEffect( spep_3, 1121, 0, -1, 0, 0, 0); -- カード
    setEffReplaceTexture( speff, 1, 1);
    setEffReplaceTexture( speff, 2, 0); -- カード差し替え
    setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
--playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94; --410f
------------------------------------------------------
--槍をつく
------------------------------------------------------
-- ** エフェクト等 ** --
spear_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, spear_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 110, spear_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, spear_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, spear_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, spear_f, 0 );
setEffRotateKey( spep_4 + 110, spear_f, 0 );
setEffAlphaKey( spep_4 + 0, spear_f, 255 );
setEffAlphaKey( spep_4 + 108, spear_f, 255 );
setEffAlphaKey( spep_4 + 109, spear_f, 255 );
setEffAlphaKey( spep_4 + 110, spear_f, 0 );

-- ** エフェクト等 ** --
spear_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, spear_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 110, spear_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, spear_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, spear_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, spear_b, 0 );
setEffRotateKey( spep_4 + 110, spear_b, 0 );
setEffAlphaKey( spep_4 + 0, spear_b, 255 );
setEffAlphaKey( spep_4 + 108, spear_b, 255 );
setEffAlphaKey( spep_4 + 109, spear_b, 255 );
setEffAlphaKey( spep_4 + 110, spear_b, 0 );

--敵の動き
setDisp( spep_4-3 + 60, 1, 1);
setDisp( spep_4-1 + 110, 1, 0);

changeAnime( spep_4-3 + 60, 1, 108);
--changeAnime( spep_4-3 + 76, 1, 105);

setShakeChara(spep_4-3 + 60 ,1 , 15 ,25);  --揺らしてる
--setShakeChara(spep_4-3 + 64 ,1 , 46 ,10);

a=100;
b=40;
c=20;

setMoveKey( spep_4-3 + 60, 1, 158.2+a, 31.3+b , 0 );  --揺らす
setMoveKey( spep_4-3 + 62, 1, 86.1+a, 27.3+b , 0 );
setMoveKey( spep_4-3 + 64, 1, 125.4+a, 39.9+b , 0 );

setMoveKey( spep_4-3 + 66, 1, 175.4, 52.9+c , 0 );
setMoveKey( spep_4-3 + 68, 1, 167.7, 54.5+c , 0 );
setMoveKey( spep_4-3 + 70, 1, 165.3, 49.3+c , 0 );
setMoveKey( spep_4-3 + 72, 1, 180.4, 67.1+c , 0 );
setMoveKey( spep_4-3 + 74, 1, 179.1, 56+c , 0 );  --揺れ終わり
setMoveKey( spep_4-3 + 75, 1, 179.1, 56+c , 0 );  --揺れ終わり

setMoveKey( spep_4-3 + 76, 1, 195.8, 77+c , 0 );
setMoveKey( spep_4-3 + 78, 1, 196.2, 67.8+c , 0 );
setMoveKey( spep_4-3 + 80, 1, 208.2, 80.3+c , 0 );
setMoveKey( spep_4-3 + 82, 1, 201.8, 90.4+c , 0 );
setMoveKey( spep_4-3 + 84, 1, 213, 80.3+c , 0 );
setMoveKey( spep_4-3 + 86, 1, 217.7, 91.8+c , 0 );
setMoveKey( spep_4-3 + 88, 1, 219, 95.7+c , 0 );
setMoveKey( spep_4-3 + 90, 1, 220, 99.5+c , 0 );
setMoveKey( spep_4-3 + 92, 1, 221.1, 103.2+c , 0 );
setMoveKey( spep_4-3 + 94, 1, 221.9, 106.7+c , 0 );
setMoveKey( spep_4-3 + 96, 1, 222.5, 110.1+c , 0 );
setMoveKey( spep_4-3 + 98, 1, 222.8, 113.2+c , 0 );
setMoveKey( spep_4-3 + 100, 1, 222.8, 116.1+c , 0 );
setMoveKey( spep_4-3 + 102, 1, 222.3, 118.8+c , 0 );
setMoveKey( spep_4-3 + 104, 1, 221.4, 121+c , 0 );
setMoveKey( spep_4-3 + 106, 1, 220, 122.9+c , 0 );
setMoveKey( spep_4-3 + 108, 1, 218, 124.4+c , 0 );
setMoveKey( spep_4-1 + 110, 1, 215.8, 125.7+c , 0 );

--[[
setScaleKey( spep_4-3 + 60, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 64, 1, 2.66,2.66);
]]--
setScaleKey( spep_4-3 + 60, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 64, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 74, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 75, 1, 2.66,2.66);

d=0.9
e=0.16
setScaleKey( spep_4-3 + 76 , 1, 2.61 -d,2.61 -d);
setScaleKey( spep_4-3 + 77, 1, 2.61 -d,2.61 -d);
--setScaleKey( spep_4-3 + 64, 1, 1.96,1.96);
setScaleKey( spep_4-1 + 110, 1, 0.52-e,0.52-e);

setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-1 + 110, 1, 0 );

--SE
--飛んでいく
SE018 = playSe( spep_4 + 0, 1314 );
stopSe( spep_4 + 58, SE018, 8 );
SE019 = playSe( spep_4 + 0, 9 );

--槍突き出す
SE020 = playSe( spep_4 + 16, 1003 );

--槍ヒット
SE021 = playSe( spep_4 + 60, 1009 ,"",1.0);
SE022 = playSe( spep_4 + 60, 1153 ,"",1.0);
setSeVolumeByWorkId( spep_4 + 60, SE022, 79 );
SE023 = playSe( spep_4 + 62, 1110 ,"",1.0);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 108;
------------------------------------------------------
--キャウェイの横向きジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, jump, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump, 0 );
setEffRotateKey( spep_5 + 56, jump, 0 );
setEffAlphaKey( spep_5 + 0, jump, 255 );
setEffAlphaKey( spep_5 + 54, jump, 255 );
setEffAlphaKey( spep_5 + 55, jump, 255 );
setEffAlphaKey( spep_5 + 56, jump, 0 );

--SE
--着地
SE024 = playSe( spep_5 + 0, 1108 );
setSeVolumeByWorkId( spep_5 + 0, SE024, 170 );
SE025 = playSe( spep_5 + 2, 1107 );
setSeVolumeByWorkId( spep_5 + 2, SE025, 207 );

--ジャンプ
SE026 = playSe( spep_5 + 26, 1004 );
SE027 = playSe( spep_5 + 28, 1207 );
setSeVolumeByWorkId( spep_5 + 28, SE027, 75 );
SE028 = playSe( spep_5 + 28, 44 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56;
------------------------------------------------------
--ハンマーを構える
------------------------------------------------------
-- ** エフェクト等 ** --
hammer = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hammer, 0, 0, 0 );
setEffMoveKey( spep_6 + 160, hammer, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hammer, 1.0, 1.0 );
setEffScaleKey( spep_6 + 160, hammer, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hammer, 0 );
setEffRotateKey( spep_6 + 160, hammer, 0 );
setEffAlphaKey( spep_6 + 0, hammer, 255 );
setEffAlphaKey( spep_6 + 158, hammer, 255 );
setEffAlphaKey( spep_6 + 159, hammer, 255 );
setEffAlphaKey( spep_6 + 160, hammer, 0 );

--SE
--ジャンプ
stopSe( spep_6 + 2, SE027, 38 );

--ハンマー出現
SE030 = playSe( spep_6 + 12, 1302 );
setSeVolumeByWorkId( spep_6 + 12, SE030, 79 );
SE031 = playSe( spep_6 + 12, 1179 );
stopSe( spep_6 + 48, SE031, 26 );
SE029 = playSe( spep_6 + 14, 1265 );
setSeVolumeByWorkId( spep_6 + 14, SE029, 0 );
setSeVolumeByWorkId( spep_6 + 15, SE029, 20.8 );
setSeVolumeByWorkId( spep_6 + 16, SE029, 41.6 );
setSeVolumeByWorkId( spep_6 + 17, SE029, 62.4 );
setSeVolumeByWorkId( spep_6 + 18, SE029, 83 );
setStartTimeMs( SE029,  333 );
stopSe( spep_6 + 46, SE029, 22 );

--ハンマー握る
SE032 = playSe( spep_6 + 36, 1006 );

--ハンマー振りかぶる
SE033 = playSe( spep_6 + 62, 1312 );
SE034 = playSe( spep_6 + 88, 1278 );
SE035 = playSe( spep_6 + 98, 1116 );
stopSe( spep_6 + 124, SE035, 10 );
SE036 = playSe( spep_6 + 106, 63 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 160, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 160;
------------------------------------------------------
--ハンマー振り下ろし～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 164, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 164, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 164, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 164, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 164, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 164, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 164, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 164, finish_b, 255 );

--敵の動き
setDisp( spep_7-3 + 28, 1, 1 );
setDisp( spep_7-1 + 40, 1, 0 );

changeAnime( spep_7-3 + 28, 1, 108 );

setMoveKey( spep_7-3 + 28, 1, 61.3, -243.1 , 0 );
setMoveKey( spep_7-3 + 30, 1, 49.6, -241 , 0 );
setMoveKey( spep_7-3 + 32, 1, 37.8, -238.9 , 0 );
setMoveKey( spep_7-3 + 34, 1, 26.1, -236.8 , 0 );
setMoveKey( spep_7-3 + 36, 1, 14.4, -234.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 2.6, -232.5 , 0 );
setMoveKey( spep_7-1 + 40, 1, -9.1, -230.4 , 0 );

setScaleKey( spep_7-3 + 28, 1, 0.82,0.82);
setScaleKey( spep_7-1 + 40, 1, 0.82,0.82);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-1 + 40, 1, 0 );

--SE
--ハンマー振りかぶる
stopSe( spep_7 + 42, SE034, 8 );

--落下
SE037 = playSe( spep_7 + 0, 1118 ,"",0.5);
setSeVolumeByWorkId( spep_7 + 0, SE037, 47 );
stopSe( spep_7 + 36, SE037, 12 );
SE038 = playSe( spep_7 + 0, 9 );

--爆発
SE039 = playSe( spep_7 + 40, 1024 );
setSeVolumeByWorkId( spep_7 + 40, SE039, 84 );
SE040 = playSe( spep_7 + 40, 1159 );
setSeVolumeByWorkId( spep_7 + 40, SE040, 87 );

--終わり
dealDamage(spep_7+44);
endPhase( spep_7 + 154 ); 
else 
------------------------------------------------------------------------------------------------------------
-- てき側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
--ブーメランが飛んできて敵にあたる
------------------------------------------------------
--はじめの準備
spep_0=0;
-- ** エフェクト等 ** --
boomerang_f = entryEffect( spep_0 + 0, SP_01x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_f, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_f, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_f, 0 );
setEffRotateKey( spep_0 + 116, boomerang_f, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_f, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_f, 0 );

-- ** エフェクト等 ** --
boomerang_b = entryEffect( spep_0 + 0, SP_02x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_0 + 0, boomerang_b, 0, 0, 0 );
setEffMoveKey( spep_0 + 116, boomerang_b, 0, 0, 0 );
setEffScaleKey( spep_0 + 0, boomerang_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + 116, boomerang_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, boomerang_b, 0 );
setEffRotateKey( spep_0 + 116, boomerang_b, 0 );
setEffAlphaKey( spep_0 + 0, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 114, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 115, boomerang_b, 255 );
setEffAlphaKey( spep_0 + 116, boomerang_b, 0 );

--SE
--ブーメラン飛んでくる
SE001 = playSe( spep_0 + 8, 1117 );
SE002 = playSe( spep_0 + 8, 1116 );
setSeVolumeByWorkId( spep_0 + 8, SE002, 66 );
setPitch( spep_0 + 8, SE002, 500 );
setTimeStretch( SE002, 1.33, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_0 , 0, 120, 0,  0, 0, 0, 255 ); --くろ 背景
------------------------------------------------------
-- 回避
------------------------------------------------------

if(_IS_DODGE_ == 1) then

    SP_dodge = spep_0 + 30; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE001, 0 );
    stopSe( SP_dodge - 12, SE002, 0 );
    
    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え
    
    kaihi1 = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
    setEffScaleKey( SP_dodge, kaihi1, 1.0, 1.0);
    setEffAlphaKey( SP_dodge, kaihi1, 255);
    
    pauseAll( SP_dodge, 67);
    
    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade
    endPhase(SP_dodge+10);
    
    do return end
    else end
------------------------------------------------------
-- 回避しなかった場合
------------------------------------------------------
--敵の動き
setDisp( spep_0-3 + 72, 1, 1);
setDisp( spep_0-3 + 116, 1, 0);

changeAnime( spep_0-3 + 72, 1, 100);
changeAnime( spep_0-3 + 80, 1, 106);

setMoveKey( spep_0-3 + 72, 1, 3.4, -19.8 , 0 );
setMoveKey( spep_0-3 + 74, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 76, 1, -0.2, -19.7 , 0 );
setMoveKey( spep_0-3 + 78, 1, -0.2, -33.7 , 0 );
setMoveKey( spep_0-3 + 79, 1, -0.2, -33.7 , 0 );

setMoveKey( spep_0-3 + 80, 1, -121.9, 49.6 , 0 );
setMoveKey( spep_0-3 + 82, 1, -194.5, 76.9 , 0 );
setMoveKey( spep_0-3 + 84, 1, -234.1, 140 , 0 );
setMoveKey( spep_0-3 + 86, 1, -274.6, 193.2 , 0 );
setMoveKey( spep_0-3 + 88, 1, -326.2, 214.5 , 0 );
setMoveKey( spep_0-3 + 90, 1, -373.2, 226 , 0 );
setMoveKey( spep_0-3 + 92, 1, -399.6, 274.1 , 0 );
setMoveKey( spep_0-3 + 94, 1, -437.6, 306.5 , 0 );
setMoveKey( spep_0-3 + 96, 1, -455.4, 313.6 , 0 );
setMoveKey( spep_0-3 + 98, 1, -477, 337.5 , 0 );
setMoveKey( spep_0-3 + 100, 1, -498.8, 355.1 , 0 );
setMoveKey( spep_0-3 + 102, 1, -517.2, 370 , 0 );
setMoveKey( spep_0-3 + 104, 1, -532.3, 382.3 , 0 );
setMoveKey( spep_0-3 + 106, 1, -544, 392 , 0 );
setMoveKey( spep_0-3 + 108, 1, -552.6, 399.1 , 0 );
setMoveKey( spep_0-3 + 110, 1, -558, 403.7 , 0 );
setMoveKey( spep_0-3 + 112, 1, -560.4, 406 , 0 );
setMoveKey( spep_0-3 + 114, 1, -559.8, 405.9 , 0 );
setMoveKey( spep_0-3 + 116, 1, -556.3, 403.4 , 0 );

setScaleKey( spep_0-3 + 72, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 80, 1, 1.5,1.5);
setScaleKey( spep_0-3 + 82, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 86, 1, 1.44,1.44);
setScaleKey( spep_0-3 + 88, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 92, 1, 1.38,1.38);
setScaleKey( spep_0-3 + 94, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 98, 1, 1.32,1.32);
setScaleKey( spep_0-3 + 100, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 110, 1, 1.26,1.26);
setScaleKey( spep_0-3 + 112, 1, 1.2,1.2);
setScaleKey( spep_0-3 + 116, 1, 1.2,1.2);

setRotateKey( spep_0-3 + 72, 1, 0 );
setRotateKey( spep_0-3 + 79, 1, 0 );

setRotateKey( spep_0-3 + 80, 1, -96.5 );
setRotateKey( spep_0-3 + 116, 1, -96.5 );

--SE
--ブーメラン飛んでくる
stopSe( spep_0 + 28, SE001, 6 );
stopSe( spep_0 + 86, SE002, 8 );
SE003 = playSe( spep_0 + 26, 1117 );
setSeVolumeByWorkId( spep_0 + 26, SE003, 107 );
setPitch( spep_0 + 26, SE003, 100 );
setTimeStretch( SE003, 1.07, 10, 1 );
stopSe( spep_0 + 40, SE003, 8 );
SE004 = playSe( spep_0 + 38, 1117 );
setSeVolumeByWorkId( spep_0 + 38, SE004, 111 );
setPitch( spep_0 + 38, SE004, 200 );
setTimeStretch( SE004, 1.13, 10, 1 );
stopSe( spep_0 + 56, SE004, 4 );
SE005 = playSe( spep_0 + 48, 1117 );
setSeVolumeByWorkId( spep_0 + 48, SE005, 127 );
setPitch( spep_0 + 48, SE005, 300 );
setTimeStretch( SE005, 1.2, 10, 1 );
stopSe( spep_0 + 64, SE005, 6 );
SE006 = playSe( spep_0 + 56, 1117 );
setSeVolumeByWorkId( spep_0 + 56, SE006, 143 );
setPitch( spep_0 + 56, SE006, 400 );
setTimeStretch( SE006, 1.27, 10, 1 );
stopSe( spep_0 + 70, SE006, 10 );

--ブーメランヒット
SE007 = playSe( spep_0 + 76, 1003 );
SE008 = playSe( spep_0 + 82, 1159 );
setSeVolumeByWorkId( spep_0 + 82, SE008, 80 );

--次の準備
spep_1=spep_0+116;
------------------------------------------------------
--岩裏からキャウェイが飛び出る
------------------------------------------------------
-- ** エフェクト等 ** --
fri = entryEffect( spep_1 + 0, SP_03x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_1 + 0, fri, 0, 0, 0 );
setEffMoveKey( spep_1 + 110, fri, 0, 0, 0 );
setEffScaleKey( spep_1 + 0, fri, 1.0, 1.0 );
setEffScaleKey( spep_1 + 110, fri, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, fri, 0 );
setEffRotateKey( spep_1 + 110, fri, 0 );
setEffAlphaKey( spep_1 + 0, fri, 255 );
setEffAlphaKey( spep_1 + 108, fri, 255 );
setEffAlphaKey( spep_1 + 109, fri, 255 );
setEffAlphaKey( spep_1 + 110, fri, 0 );

--SE
--ブーメランヒット
stopSe( spep_1 + 18, SE008, 74 );

--岩から顔出す
SE009 = playSe( spep_1 + 0, 4 );
setSeVolumeByWorkId( spep_1 + 0, SE009, 124 );

--岩から出てくる
SE010 = playSe( spep_1 + 34, 1048 );
SE011 = playSe( spep_1 + 34, 1106 );
setSeVolumeByWorkId( spep_1 + 34, SE011, 168 );
SE012 = playSe( spep_1 + 34, 1182 );
setSeVolumeByWorkId( spep_1 + 34, SE012, 83 );

--ダッシュ
SE013 = playSe( spep_1 + 52, 44 );
SE014 = playSe( spep_1 + 52, 1314 );

--回転
SE015 = playSe( spep_1 + 88, 1004 );
setSeVolumeByWorkId( spep_1 + 88, SE015, 188 );
setPitch( spep_1 + 88, SE015, -400 );
setTimeStretch( SE015, 0.73, 10, 1 );

-- ** くろ背景 ** --
entryFadeBg( spep_1 , 0, 110, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_2=spep_1+110;
------------------------------------------------------
--セリフカットイン
------------------------------------------------------
-- ** エフェクト等 ** --
serif = entryEffect( spep_2 + 0, SP_04x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_2 + 0, serif, 0, 0, 0 );
setEffMoveKey( spep_2 + 90, serif, 0, 0, 0 );
setEffScaleKey( spep_2 + 0, serif, 1.0, 1.0 );
setEffScaleKey( spep_2 + 90, serif, 1.0, 1.0 );
setEffRotateKey( spep_2 + 0, serif, 0 );
setEffRotateKey( spep_2 + 90, serif, 0 );
setEffAlphaKey( spep_2 + 0, serif, 255 );
setEffAlphaKey( spep_2 + 90, serif, 255 );

--顔カットインのタイミング指定
spep_x=spep_2 +10;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x  , 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
--speff1 = entryEffect( spep_x  , 1505, 0x100, -1, 0, 0, 0, 1100 );  --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- 文字エントリー --
ctgogo = entryEffectLife( spep_x +12, 190006, 72, 0x102, -1, 0, 50, 515, 2000);-- ゴゴゴゴ

setEffMoveKey(  spep_x +12,  ctgogo,  50,  515);
setEffMoveKey(  spep_x +84,  ctgogo,  50,  515);

setEffAlphaKey( spep_x +12, ctgogo, 0 );
setEffAlphaKey( spep_x + 13, ctgogo, 255 );
setEffAlphaKey( spep_x + 14, ctgogo, 255 );
setEffAlphaKey( spep_x + 78, ctgogo, 255 );
setEffAlphaKey( spep_x + 80, ctgogo, 191 );
setEffAlphaKey( spep_x + 82, ctgogo, 112 );
setEffAlphaKey( spep_x + 84, ctgogo, 64 );

setEffRotateKey(  spep_x +12,  ctgogo,  0);
setEffRotateKey(  spep_x +84,  ctgogo,  0);

setEffScaleKey(  spep_x +12,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +80,  ctgogo,  -0.7,  0.7);
setEffScaleKey(  spep_x +84,  ctgogo, -1.07, 1.07);

--SE
--ダッシュ
stopSe( spep_2 + 80, SE014, 8 );

--顔カットイン
SE016 = playSe( spep_x + 12, 1018 );

--白フェード
entryFade( spep_2 + 82, 4, 8, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** くろ背景 ** --
entryFadeBg( spep_2 , 0, 90, 0,  0, 0, 0, 255 ); --くろ 背景

--次の準備
spep_3=spep_2+90;
--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffect( spep_3 + 0, 1507, 0x80, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

-- ** 集中線 ** --
shuchusen = entryEffectLife( spep_3 + 0, 906, 90, 0x100, -1, 0, 0, 0 );  --集中線
setEffShake( spep_3 + 0, shuchusen, 90, 20 );

setEffMoveKey( spep_3 + 0, shuchusen, 0, 0 , 0 );
setEffMoveKey( spep_3 + 90, shuchusen, 0, 0 , 0 );

setEffScaleKey( spep_3 + 0, shuchusen, 1.6, 1.6 );
setEffScaleKey( spep_3 + 90, shuchusen, 1.6, 1.6 );

setEffRotateKey( spep_3 + 0, shuchusen, 0 );
setEffRotateKey( spep_3 + 90, shuchusen, 0 );

setEffAlphaKey( spep_3 + 0, shuchusen, 255 );
setEffAlphaKey( spep_3 + 90, shuchusen, 255 );

-- ** 音 ** --
playSe( spep_3 + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_3 + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景
 
-- ** 白フェード ** --
entryFade( spep_3 + 0, 0, 4, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_3 + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_4= spep_3 + 94;
------------------------------------------------------
--槍をつく
------------------------------------------------------
-- ** エフェクト等 ** --
spear_f = entryEffect( spep_4 + 0, SP_05x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, spear_f, 0, 0, 0 );
setEffMoveKey( spep_4 + 110, spear_f, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, spear_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, spear_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, spear_f, 0 );
setEffRotateKey( spep_4 + 110, spear_f, 0 );
setEffAlphaKey( spep_4 + 0, spear_f, 255 );
setEffAlphaKey( spep_4 + 108, spear_f, 255 );
setEffAlphaKey( spep_4 + 109, spear_f, 255 );
setEffAlphaKey( spep_4 + 110, spear_f, 0 );

-- ** エフェクト等 ** --
spear_b = entryEffect( spep_4 + 0, SP_06x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_4 + 0, spear_b, 0, 0, 0 );
setEffMoveKey( spep_4 + 110, spear_b, 0, 0, 0 );
setEffScaleKey( spep_4 + 0, spear_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 110, spear_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, spear_b, 0 );
setEffRotateKey( spep_4 + 110, spear_b, 0 );
setEffAlphaKey( spep_4 + 0, spear_b, 255 );
setEffAlphaKey( spep_4 + 108, spear_b, 255 );
setEffAlphaKey( spep_4 + 109, spear_b, 255 );
setEffAlphaKey( spep_4 + 110, spear_b, 0 );

--敵の動き
setDisp( spep_4-3 + 60, 1, 1);
setDisp( spep_4-1 + 110, 1, 0);

changeAnime( spep_4-3 + 60, 1, 108);

setShakeChara(spep_4-3 + 60 ,1 , 15 ,25);  --揺らしてる
--setShakeChara(spep_4-3 + 64 ,1 , 46 ,10);

a=100;
b=40;
c=20;

setMoveKey( spep_4-3 + 60, 1, 158.2+a, 31.3+b , 0 );  --揺らす
setMoveKey( spep_4-3 + 62, 1, 86.1+a, 27.3+b , 0 );
setMoveKey( spep_4-3 + 64, 1, 125.4+a, 39.9+b , 0 );

setMoveKey( spep_4-3 + 66, 1, 175.4, 52.9+c , 0 );
setMoveKey( spep_4-3 + 68, 1, 167.7, 54.5+c , 0 );
setMoveKey( spep_4-3 + 70, 1, 165.3, 49.3+c , 0 );
setMoveKey( spep_4-3 + 72, 1, 180.4, 67.1+c , 0 );
setMoveKey( spep_4-3 + 74, 1, 179.1, 56+c , 0 );  --揺れ終わり
setMoveKey( spep_4-3 + 75, 1, 179.1, 56+c , 0 );  --揺れ終わり

setMoveKey( spep_4-3 + 76, 1, 195.8, 77+c , 0 );
setMoveKey( spep_4-3 + 78, 1, 196.2, 67.8+c , 0 );
setMoveKey( spep_4-3 + 80, 1, 208.2, 80.3+c , 0 );
setMoveKey( spep_4-3 + 82, 1, 201.8, 90.4+c , 0 );
setMoveKey( spep_4-3 + 84, 1, 213, 80.3+c , 0 );
setMoveKey( spep_4-3 + 86, 1, 217.7, 91.8+c , 0 );
setMoveKey( spep_4-3 + 88, 1, 219, 95.7+c , 0 );
setMoveKey( spep_4-3 + 90, 1, 220, 99.5+c , 0 );
setMoveKey( spep_4-3 + 92, 1, 221.1, 103.2+c , 0 );
setMoveKey( spep_4-3 + 94, 1, 221.9, 106.7+c , 0 );
setMoveKey( spep_4-3 + 96, 1, 222.5, 110.1+c , 0 );
setMoveKey( spep_4-3 + 98, 1, 222.8, 113.2+c , 0 );
setMoveKey( spep_4-3 + 100, 1, 222.8, 116.1+c , 0 );
setMoveKey( spep_4-3 + 102, 1, 222.3, 118.8+c , 0 );
setMoveKey( spep_4-3 + 104, 1, 221.4, 121+c , 0 );
setMoveKey( spep_4-3 + 106, 1, 220, 122.9+c , 0 );
setMoveKey( spep_4-3 + 108, 1, 218, 124.4+c , 0 );
setMoveKey( spep_4-1 + 110, 1, 215.8, 125.7+c , 0 );

--[[
setScaleKey( spep_4-3 + 60, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 64, 1, 2.66,2.66);
]]--
setScaleKey( spep_4-3 + 60, 1, 2.93,2.93);
setScaleKey( spep_4-3 + 62, 1, 2.86,2.86);
setScaleKey( spep_4-3 + 64, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 74, 1, 2.66,2.66);
setScaleKey( spep_4-3 + 75, 1, 2.66,2.66);

d=0.9
e=0.16
setScaleKey( spep_4-3 + 76 , 1, 2.61 -d,2.61 -d);
setScaleKey( spep_4-3 + 77, 1, 2.61 -d,2.61 -d);
--setScaleKey( spep_4-3 + 64, 1, 1.96,1.96);
setScaleKey( spep_4-1 + 110, 1, 0.52-e,0.52-e);

setRotateKey( spep_4-3 + 60, 1, 0 );
setRotateKey( spep_4-1 + 110, 1, 0 );

--SE
--飛んでいく
SE018 = playSe( spep_4 + 0, 1314 );
stopSe( spep_4 + 58, SE018, 8 );
SE019 = playSe( spep_4 + 0, 9 );

--槍突き出す
SE020 = playSe( spep_4 + 16, 1003 );

--槍ヒット
SE021 = playSe( spep_4 + 60, 1009 ,"",1.0);
SE022 = playSe( spep_4 + 60, 1153 ,"",1.0);
setSeVolumeByWorkId( spep_4 + 60, SE022, 79 );
SE023 = playSe( spep_4 + 62, 1110 ,"",1.0);

-- ** くろ背景 ** --
entryFadeBg( spep_4 + 0, 0, 120, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_5= spep_4 + 108;
------------------------------------------------------
--キャウェイの横向きジャンプ
------------------------------------------------------
-- ** エフェクト等 ** --
jump = entryEffect( spep_5 + 0, SP_07x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_5 + 0, jump, 0, 0, 0 );
setEffMoveKey( spep_5 + 56, jump, 0, 0, 0 );
setEffScaleKey( spep_5 + 0, jump, 1.0, 1.0 );
setEffScaleKey( spep_5 + 56, jump, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, jump, 0 );
setEffRotateKey( spep_5 + 56, jump, 0 );
setEffAlphaKey( spep_5 + 0, jump, 255 );
setEffAlphaKey( spep_5 + 54, jump, 255 );
setEffAlphaKey( spep_5 + 55, jump, 255 );
setEffAlphaKey( spep_5 + 56, jump, 0 );

--SE
--着地
SE024 = playSe( spep_5 + 0, 1108 );
setSeVolumeByWorkId( spep_5 + 0, SE024, 170 );
SE025 = playSe( spep_5 + 2, 1107 );
setSeVolumeByWorkId( spep_5 + 2, SE025, 207 );

--ジャンプ
SE026 = playSe( spep_5 + 26, 1004 );
SE027 = playSe( spep_5 + 28, 1207 );
setSeVolumeByWorkId( spep_5 + 28, SE027, 75 );
SE028 = playSe( spep_5 + 28, 44 );

-- ** くろ背景 ** --
entryFadeBg( spep_5 + 0, 0, 60, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_6= spep_5 + 56;
------------------------------------------------------
--ハンマーを構える
------------------------------------------------------
-- ** エフェクト等 ** --
hammer = entryEffect( spep_6 + 0, SP_08x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_6 + 0, hammer, 0, 0, 0 );
setEffMoveKey( spep_6 + 160, hammer, 0, 0, 0 );
setEffScaleKey( spep_6 + 0, hammer, -1.0, 1.0 );
setEffScaleKey( spep_6 + 160, hammer, -1.0, 1.0 );
setEffRotateKey( spep_6 + 0, hammer, 0 );
setEffRotateKey( spep_6 + 160, hammer, 0 );
setEffAlphaKey( spep_6 + 0, hammer, 255 );
setEffAlphaKey( spep_6 + 158, hammer, 255 );
setEffAlphaKey( spep_6 + 159, hammer, 255 );
setEffAlphaKey( spep_6 + 160, hammer, 0 );

--SE
--ジャンプ
stopSe( spep_6 + 2, SE027, 38 );

--ハンマー出現
SE030 = playSe( spep_6 + 12, 1302 );
setSeVolumeByWorkId( spep_6 + 12, SE030, 79 );
SE031 = playSe( spep_6 + 12, 1179 );
stopSe( spep_6 + 48, SE031, 26 );
SE029 = playSe( spep_6 + 14, 1265 );
setSeVolumeByWorkId( spep_6 + 14, SE029, 0 );
setSeVolumeByWorkId( spep_6 + 15, SE029, 20.8 );
setSeVolumeByWorkId( spep_6 + 16, SE029, 41.6 );
setSeVolumeByWorkId( spep_6 + 17, SE029, 62.4 );
setSeVolumeByWorkId( spep_6 + 18, SE029, 83 );
setStartTimeMs( SE029,  333 );
stopSe( spep_6 + 46, SE029, 22 );

--ハンマー握る
SE032 = playSe( spep_6 + 36, 1006 );

--ハンマー振りかぶる
SE033 = playSe( spep_6 + 62, 1312 );
SE034 = playSe( spep_6 + 88, 1278 );
SE035 = playSe( spep_6 + 98, 1116 );
stopSe( spep_6 + 124, SE035, 10 );
SE036 = playSe( spep_6 + 106, 63 );

-- ** くろ背景 ** --
entryFadeBg( spep_6 + 0, 0, 160, 0, 0, 0, 0, 255 ); --くろ 背景

-- ** 次の準備 ** --
spep_7= spep_6 + 160;
------------------------------------------------------
--ハンマー振り下ろし～フィニッシュ
------------------------------------------------------
-- ** エフェクト等 ** --
finish_f = entryEffect( spep_7 + 0, SP_09x, 0x100, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_f, 0, 0, 0 );
setEffMoveKey( spep_7 + 164, finish_f, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 164, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_f, 0 );
setEffRotateKey( spep_7 + 164, finish_f, 0 );
setEffAlphaKey( spep_7 + 0, finish_f, 255 );
setEffAlphaKey( spep_7 + 164, finish_f, 255 );

-- ** エフェクト等 ** --
finish_b = entryEffect( spep_7 + 0, SP_10x, 0x80, -1, 0, 0, 0 ); 
setEffMoveKey( spep_7 + 0, finish_b, 0, 0, 0 );
setEffMoveKey( spep_7 + 164, finish_b, 0, 0, 0 );
setEffScaleKey( spep_7 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 164, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, finish_b, 0 );
setEffRotateKey( spep_7 + 164, finish_b, 0 );
setEffAlphaKey( spep_7 + 0, finish_b, 255 );
setEffAlphaKey( spep_7 + 164, finish_b, 255 );

--敵の動き
setDisp( spep_7-3 + 28, 1, 1 );
setDisp( spep_7-1 + 40, 1, 0 );

changeAnime( spep_7-3 + 28, 1, 108 );

setMoveKey( spep_7-3 + 28, 1, 61.3, -243.1 , 0 );
setMoveKey( spep_7-3 + 30, 1, 49.6, -241 , 0 );
setMoveKey( spep_7-3 + 32, 1, 37.8, -238.9 , 0 );
setMoveKey( spep_7-3 + 34, 1, 26.1, -236.8 , 0 );
setMoveKey( spep_7-3 + 36, 1, 14.4, -234.7 , 0 );
setMoveKey( spep_7-3 + 38, 1, 2.6, -232.5 , 0 );
setMoveKey( spep_7-1 + 40, 1, -9.1, -230.4 , 0 );

setScaleKey( spep_7-3 + 28, 1, 0.82,0.82);
setScaleKey( spep_7-1 + 40, 1, 0.82,0.82);

setRotateKey( spep_7 + 0, 1, 0 );
setRotateKey( spep_7-1 + 40, 1, 0 );

--SE
--ハンマー振りかぶる
stopSe( spep_7 + 42, SE034, 8 );

--落下
SE037 = playSe( spep_7 + 0, 1118 ,"",0.5);
setSeVolumeByWorkId( spep_7 + 0, SE037, 47 );
stopSe( spep_7 + 36, SE037, 12 );
SE038 = playSe( spep_7 + 0, 9 );

--爆発
SE039 = playSe( spep_7 + 40, 1024 );
setSeVolumeByWorkId( spep_7 + 40, SE039, 84 );
SE040 = playSe( spep_7 + 40, 1159 );
setSeVolumeByWorkId( spep_7 + 40, SE040, 87 );

--終わり
dealDamage(spep_7+44);
endPhase( spep_7 + 154 ); 
end