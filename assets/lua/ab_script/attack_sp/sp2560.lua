--1026790:UR_ダイーズ&カカオ_クラッシャーインベーション
--sp_effect_b4_00287
--sp2560

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
SP_01 = 161933; --ef_001　開幕〜セリフカットインまで
SP_02 = 161934; --ef_002　拳アップ〜格闘　敵より前
SP_03 = 161936; --ef_003　拳アップ〜格闘　敵より後ろ
SP_04 = 161938; --ef_004　カカオ地面落下〜ダイーズ追撃　敵より前
SP_05 = 161940; --ef_005　カカオ地面落下〜ダイーズ追撃　敵より後ろ
SP_06 = 161942; --ef_006　ダメージ表示　爆発　敵より前
SP_07 = 161944; --ef_007　ダメージ表示　爆発　敵より後ろ

--エフェクト(敵)
SP_02r = 161935; --ef_002_r　拳アップ〜格闘　敵より前
SP_03r = 161937; --ef_003_r　拳アップ〜格闘　敵より後ろ
SP_04r = 161939; --ef_004_r　カカオ地面落下〜ダイーズ追撃　敵より前
SP_05r = 161941; --ef_005_r　カカオ地面落下〜ダイーズ追撃　敵より後ろ
SP_06r = 161943; --ef_006_r　ダメージ表示　爆発　敵より前
SP_07r = 161945; --ef_007_r　ダメージ表示　爆発　敵より後ろ

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜セリフカットインまで(208f)
-------------------------------------------------
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + 208, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, 1.0, 1.0);
setEffScaleKey( spep_0 + 208, start, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + 208, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + 208 -2, start, 255);
setEffAlphaKey( spep_0 + 208 -1, start, 255);
setEffAlphaKey( spep_0 + 208, start, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 208 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--石キャッチ
SE002 = playSeVer2( spep_0 + 86, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 86, SE002, 126 );
setPitch( spep_0 + 86, SE002, 600 );
setTimeStretch( SE002, 1.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 88, 29, "", 0, 0, 0, 1.0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

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
--石キャッチ2
SE004 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 178, SE004, 126 );
setPitch( spep_0 + 178, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 180, 29, "", 0, 0, 0, -1);

--石割る
SE006 = playSeVer2( spep_0 + 196, 1007, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 196, 1168, "",spep_0 +264, 0, 50, -1);
setBandpassFilter( spep_0 + 196, SE007, 1150, 24000 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 208;

-------------------------------------------------
-- 拳アップ〜格闘(218f)
-------------------------------------------------

grapple_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 218, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 218, grapple_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_f, 0);
setEffRotateKey( spep_1 + 218, grapple_f, 0);
setEffAlphaKey( spep_1 + 0, grapple_f, 255);
setEffAlphaKey( spep_1 + 218, grapple_f, 255);

grapple_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 218, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 218, grapple_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_b, 0);
setEffRotateKey( spep_1 + 218, grapple_b, 0);
setEffAlphaKey( spep_1 + 0, grapple_b, 255);
setEffAlphaKey( spep_1 + 218, grapple_b, 255);

-- ** 敵キャラクター ** --
OFFSET_1 = -1;

setDisp( spep_1 + 52 + OFFSET_1, 1, 1 );
setDisp( spep_1 + 219 + OFFSET_1, 1, 0 );

changeAnime( spep_1 + 52 + OFFSET_1, 1, 104 );
changeAnime( spep_1 + 76 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 124 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 146 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 156 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 206 + OFFSET_1, 1, 107 );

setMoveKey( spep_1 + 52 + OFFSET_1, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_1, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_1, 1, 97.9, -217.8 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_1, 1, 97.9, -217.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_1, 1, 109.5, -264.3 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_1, 1, 109.5, -264.3 , 0 );

setScaleKey( spep_1 + 52 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 75 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 76 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 103 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 104 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 123 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 124 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 145 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 146 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 155 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 156 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 197 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 198 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 199 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 200 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 201 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 202 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 203 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 204 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 205 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 206 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 207 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 208 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 209 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 210 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 211 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 212 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 213 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 214 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 215 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 216 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 217 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 218 + OFFSET_1, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 219 + OFFSET_1, 1, 1.55, 1.55 );

setRotateKey( spep_1 + 52 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 77 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 78 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 79 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 80 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 81 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 82 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 83 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 84 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 85 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 86 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 87 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 88 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 89 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 90 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 91 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 92 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 93 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 94 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 95 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 96 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 97 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 98 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 99 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 100 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 101 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 102 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 103 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 104 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 105 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 106 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 107 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 108 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 109 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 110 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 111 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 112 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 113 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 114 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 115 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 116 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 117 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 118 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 119 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 120 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 121 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 122 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 123 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 124 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 125 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 126 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 127 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 128 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 129 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 130 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 131 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 132 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 133 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 134 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 135 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 136 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 137 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 138 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 139 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 140 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 141 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 142 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 143 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 144 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 145 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 146 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 147 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 148 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 149 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 150 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 151 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 152 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 153 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 154 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 155 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 156 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 157 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 158 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 159 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 160 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 161 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 162 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 163 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 164 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 165 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 166 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 167 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 168 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 169 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 170 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 171 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 172 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 173 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 174 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 175 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 176 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 177 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 178 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 179 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 180 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 181 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 182 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 183 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 184 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 185 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 186 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 187 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 188 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 189 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 190 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 191 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 192 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 193 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 194 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 197 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 198 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 199 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 200 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 201 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 202 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 203 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 204 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 205 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 206 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 207 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 208 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 211 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 212 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 213 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 214 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 215 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 216 + OFFSET_1, 1, -0.6 );
setRotateKey( spep_1 + 217 + OFFSET_1, 1, -0.6 );
setRotateKey( spep_1 + 218 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 219 + OFFSET_1, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_1 + 36, 1109, "", 0, 0, 0, -1);

--キック
SE009 = playSeVer2( spep_1 + 68, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE010, 78 );
SE011 = playSeVer2( spep_1 + 74, 1110, "", 0, 0, 0, -1);

--キック2
SE012 = playSeVer2( spep_1 + 102, 1187, "",spep_1 + 166, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 102, SE012, 87 );
SE013 = playSeVer2( spep_1 + 102, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE013, 79 );

--画面前移動
SE014 = playSeVer2( spep_1 + 118, 1004, "", 0, 0, 0, -1);

--ラッシュ
SE015 = playSeVer2( spep_1 + 146, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 146, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_1 + 150, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE018 = playSeVer2( spep_1 + 160, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 160, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_1 + 174, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE021 = playSeVer2( spep_1 + 202, 1187, "",spep_1 + 234, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 202, SE021, 73 );
SE022 = playSeVer2( spep_1 + 202, 1120, "",spep_1 + 234, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 218;

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_c, 0);

-------------------------------------------------
-- カカオ地面落下〜ダイーズ追撃(336f)
-------------------------------------------------

slamming_f = entryEffect( spep_2 + 0, SP_04, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_2 + 0, slamming_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 336, slamming_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, slamming_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 336, slamming_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, slamming_f, 0);
setEffRotateKey( spep_2 + 336, slamming_f, 0);
setEffAlphaKey( spep_2 + 0, slamming_f, 255);
setEffAlphaKey( spep_2 + 336, slamming_f, 255);

slamming_b = entryEffect( spep_2 + 0, SP_05, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_2 + 0, slamming_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 336, slamming_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, slamming_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 336, slamming_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, slamming_b, 0);
setEffRotateKey( spep_2 + 336, slamming_b, 0);
setEffAlphaKey( spep_2 + 0, slamming_b, 255);
setEffAlphaKey( spep_2 + 336, slamming_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_2 = -1;

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 111 + OFFSET_2, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );
changeAnime( spep_2 + 30 + OFFSET_2, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_2, 1, 107 );

setMoveKey( spep_2 + 0, 1, 78.2, 4.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_2, 1, 83.4, -0.2 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_2, 1, 83.4, -0.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_2, 1, 88.5, -4.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_2, 1, 88.5, -4.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_2, 1, 93.3, -8.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_2, 1, 93.3, -8.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_2, 1, 97.7, -13.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_2, 1, 97.7, -13.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_2, 1, 101.7, -17.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_2, 1, 101.7, -17.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_2, 1, 104.9, -21.8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_2, 1, 104.9, -21.8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_2, 1, 107.4, -26.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_2, 1, 107.4, -26.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_2, 1, 109.1, -30.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_2, 1, 109.1, -30.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_2, 1, 109.6, -34.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_2, 1, 109.6, -34.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_2, 1, 109.1, -39 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_2, 1, 109.1, -39 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_2, 1, 107.2, -43.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_2, 1, 107.2, -43.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_2, 1, 103.9, -47.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_2, 1, 103.9, -47.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_2, 1, 99.1, -51.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_2, 1, 99.1, -51.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_2, 1, 92.6, -56.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_2, 1, 92.6, -56.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_2, 1, 65.3, -61.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_2, 1, 65.3, -61.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_2, 1, 49.9, -61.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_2, 1, 49.9, -61.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_2, 1, 32.4, -62 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_2, 1, 32.4, -62 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_2, 1, 46.9, -73.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_2, 1, 46.9, -73.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_2, 1, 61, -86.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_2, 1, 61, -86.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_2, 1, 69, -91.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_2, 1, 69, -91.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_2, 1, 77.9, -97.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_2, 1, 77.9, -97.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_2, 1, 87.4, -103.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_2, 1, 87.4, -103.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_2, 1, 97.3, -109.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_2, 1, 97.3, -109.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_2, 1, 107.4, -115.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_2, 1, 107.4, -115.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_2, 1, 117.4, -121.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_2, 1, 117.4, -121.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_2, 1, 126.8, -126.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_2, 1, 126.8, -126.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_2, 1, 135.3, -131.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_2, 1, 135.3, -131.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_2, 1, 142.3, -135.9 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_2, 1, 142.3, -135.9 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_2, 1, 145.2, -140.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_2, 1, 145.2, -140.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_2, 1, 148.4, -144.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_2, 1, 148.4, -144.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_2, 1, 187.2, -179.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_2, 1, 187.2, -179.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_2, 1, 185, -180.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_2, 1, 185, -180.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_2, 1, 183, -181.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_2, 1, 183, -181.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_2, 1, 181.3, -182.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_2, 1, 181.3, -182.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_2, 1, 179.9, -183.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_2, 1, 179.9, -183.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_2, 1, 178.8, -184.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_2, 1, 178.8, -184.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_2, 1, 177.9, -185 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_2, 1, 177.9, -185 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_2, 1, 177.4, -185.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_2, 1, 177.4, -185.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_2, 1, 177.1, -186.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_2, 1, 177.1, -186.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_2, 1, 177.1, -187.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_2, 1, 177.1, -187.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_2, 1, 177.3, -188.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_2, 1, 177.3, -188.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_2, 1, 177.9, -189.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_2, 1, 177.9, -189.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_2, 1, 178.8, -190.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_2, 1, 178.8, -190.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_2, 1, 179.9, -191 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_2, 1, 179.9, -191 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_2, 1, 180.3, -191.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_2, 1, 180.3, -191.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_2, 1, 180.7, -191.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_2, 1, 180.7, -191.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_2, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_2, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_2, 1, 181.5, -192.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_2, 1, 181.5, -192.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_2, 1, 181.8, -193 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_2, 1, 181.8, -193 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_2, 1, 10.5, 302.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_2, 1, 10.5, 302.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_2, 1, 12.3, 272.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_2, 1, 12.3, 272.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_2, 1, 14.7, 206.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_2, 1, 14.7, 206.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_2, 1, 17.2, 59.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_2, 1, 17.2, 59.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_2, 1, 27.1, -86.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_2, 1, 27.1, -86.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_2, 1, 27.1, -108.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 2 + OFFSET_2, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 3 + OFFSET_2, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 4 + OFFSET_2, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 5 + OFFSET_2, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 6 + OFFSET_2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 7 + OFFSET_2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 8 + OFFSET_2, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 9 + OFFSET_2, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 10 + OFFSET_2, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 11 + OFFSET_2, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 12 + OFFSET_2, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 13 + OFFSET_2, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 14 + OFFSET_2, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 15 + OFFSET_2, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 16 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 17 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 18 + OFFSET_2, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 19 + OFFSET_2, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 20 + OFFSET_2, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 21 + OFFSET_2, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 22 + OFFSET_2, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 23 + OFFSET_2, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 24 + OFFSET_2, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 25 + OFFSET_2, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 26 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 27 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 28 + OFFSET_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 29 + OFFSET_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 30 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 32 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 33 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 34 + OFFSET_2, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 35 + OFFSET_2, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 36 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 38 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 39 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 40 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 41 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 42 + OFFSET_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 43 + OFFSET_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 44 + OFFSET_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 45 + OFFSET_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 46 + OFFSET_2, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 47 + OFFSET_2, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 48 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 49 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 50 + OFFSET_2, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 51 + OFFSET_2, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 52 + OFFSET_2, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 53 + OFFSET_2, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 54 + OFFSET_2, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 55 + OFFSET_2, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 56 + OFFSET_2, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 57 + OFFSET_2, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 58 + OFFSET_2, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 59 + OFFSET_2, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 60 + OFFSET_2, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 61 + OFFSET_2, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 62 + OFFSET_2, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 74 + OFFSET_2, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 75 + OFFSET_2, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 76 + OFFSET_2, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 95 + OFFSET_2, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 96 + OFFSET_2, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 99 + OFFSET_2, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 100 + OFFSET_2, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 101 + OFFSET_2, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 102 + OFFSET_2, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 103 + OFFSET_2, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 104 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 105 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 106 + OFFSET_2, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 107 + OFFSET_2, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 108 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 111 + OFFSET_2, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 0, 1, 22.2 );
setRotateKey( spep_2 + 2 + OFFSET_2, 1, 21.7 );
setRotateKey( spep_2 + 3 + OFFSET_2, 1, 21.7 );
setRotateKey( spep_2 + 4 + OFFSET_2, 1, 21.2 );
setRotateKey( spep_2 + 5 + OFFSET_2, 1, 21.2 );
setRotateKey( spep_2 + 6 + OFFSET_2, 1, 20.7 );
setRotateKey( spep_2 + 7 + OFFSET_2, 1, 20.7 );
setRotateKey( spep_2 + 8 + OFFSET_2, 1, 20.2 );
setRotateKey( spep_2 + 9 + OFFSET_2, 1, 20.2 );
setRotateKey( spep_2 + 10 + OFFSET_2, 1, 19.7 );
setRotateKey( spep_2 + 11 + OFFSET_2, 1, 19.7 );
setRotateKey( spep_2 + 12 + OFFSET_2, 1, 19.2 );
setRotateKey( spep_2 + 13 + OFFSET_2, 1, 19.2 );
setRotateKey( spep_2 + 14 + OFFSET_2, 1, 18.7 );
setRotateKey( spep_2 + 15 + OFFSET_2, 1, 18.7 );
setRotateKey( spep_2 + 16 + OFFSET_2, 1, 18.2 );
setRotateKey( spep_2 + 17 + OFFSET_2, 1, 18.2 );
setRotateKey( spep_2 + 18 + OFFSET_2, 1, 17.7 );
setRotateKey( spep_2 + 19 + OFFSET_2, 1, 17.7 );
setRotateKey( spep_2 + 20 + OFFSET_2, 1, 17.2 );
setRotateKey( spep_2 + 21 + OFFSET_2, 1, 17.2 );
setRotateKey( spep_2 + 22 + OFFSET_2, 1, 16.7 );
setRotateKey( spep_2 + 23 + OFFSET_2, 1, 16.7 );
setRotateKey( spep_2 + 24 + OFFSET_2, 1, 16.2 );
setRotateKey( spep_2 + 25 + OFFSET_2, 1, 16.2 );
setRotateKey( spep_2 + 26 + OFFSET_2, 1, 15.7 );
setRotateKey( spep_2 + 27 + OFFSET_2, 1, 15.7 );
setRotateKey( spep_2 + 28 + OFFSET_2, 1, 15.2 );
setRotateKey( spep_2 + 29 + OFFSET_2, 1, 15.2 );
setRotateKey( spep_2 + 30 + OFFSET_2, 1, 41.9 );
setRotateKey( spep_2 + 99 + OFFSET_2, 1, 41.9 );
setRotateKey( spep_2 + 100 + OFFSET_2, 1, 40.9 );
setRotateKey( spep_2 + 111 + OFFSET_2, 1, 40.9 );

-- ** 音 ** --
--体当たりで突っ込んでいく
SE024 = playSeVer2( spep_2 + 36, 1121, "",spep_2 + 130, 14, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 36, SE024, 91 );
setStartTimeMs( SE024,  933 );
setPitch( spep_2 + 36, SE024, 400 );
setTimeStretch( SE024, 1.27, 30, 4 );

--瞬間移動
SE025 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);

--体当たりで突っ込んでいく
SE026 = playSeVer2( spep_2 + 22, 1116, "",spep_2 + 58, 0, 18, -1);
SE027 = playSeVer2( spep_2 + 22, 9, "",spep_2 + 82, 0, 28, -1);
SE028 = playSeVer2( spep_2 + 24, 1277, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 28, 1258, "",spep_2 + 128, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 28, SE029, 63 );
SE030 = playSeVer2( spep_2 + 28, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 188, 1109, "", 0, 0, 0, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 108, 1068, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 108, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 146, 1024, "", 0, 0, 0, -1);

--カメラズームアウト
SE035 = playSeVer2( spep_2 + 228, 1072, "", 0, 0, 0, 0.6);

--気弾溜め
SE036 = playSeVer2( spep_2 + 270, 1295, "",spep_2 + 336, 0, 12, -1);
SE037 = playSeVer2( spep_2 + 270, 1296, "",spep_2 + 338, 0, 14, -1);
setPitch( spep_2 + 270, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );
SE038 = playSeVer2( spep_2 + 274, 1262, "",spep_2 + 336, 0, 12, -1);

--気弾発射
SE039 = playSeVer2( spep_2 + 322, 1193, "",spep_2 + 400, 0, 40, -1);
SE040 = playSeVer2( spep_2 + 322, 1145, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;

-------------------------------------------------
-- ダメージ表示　爆発(158f)
-------------------------------------------------

finish_f = entryEffect( spep_3 + 0, SP_06, 0x100, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 158, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 158, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + 158, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + 158, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_07, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 158, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 158, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + 158, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + 158, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_3 = -1;

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 156 + OFFSET_3, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_3, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_3, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_3, 1, 41.9, -85.5 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_3, 1, 41.9, -85.5 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_3, 1, 25.9, -101.5 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_3, 1, 25.9, -101.5 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_3, 1, 41.9, -117.5 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_3, 1, 41.9, -117.5 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_3, 1, 57.9, -93.5 , 0 );
setMoveKey( spep_3 + 39 + OFFSET_3, 1, 57.9, -93.5 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_3, 1, 25.9, -93.5 , 0 );
setMoveKey( spep_3 + 41 + OFFSET_3, 1, 25.9, -93.5 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_3, 1, 49.9, -117.5 , 0 );
setMoveKey( spep_3 + 43 + OFFSET_3, 1, 49.9, -117.5 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_3, 1, 41.9, -77.5 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_3, 1, 41.9, -77.5 , 0 );
setMoveKey( spep_3 + 47 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 156 + OFFSET_3, 1, 49.9, -109.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 156 + OFFSET_3, 1, 0.5, 0.5 );

setRotateKey( spep_3 + 0, 1, 5.7 );
setRotateKey( spep_3 + 156 + OFFSET_3, 1, 5.7 );

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_3 + 0 -6, 1130, "", 0, 0, 0, 0.6);
setPitch( spep_3 + 0 -6, SE041, 300 );
setTimeStretch( SE041, 1.2, 30, 4 );

--爆発
SE042 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_3 + 30, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 38, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 54 ); -- ダメージ表示フレーム
endPhase( spep_3 + 158 - 4 ); -- 終了フレーム

else
------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------
spep_0 = 0;


-------------------------------------------------
-- 開幕〜セリフカットインまで(208f)
-------------------------------------------------
-- ** エフェクト等 ** --
start = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, start, 0, 0 , 0);
setEffMoveKey( spep_0 + 208, start, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start, -1.0, 1.0);
setEffScaleKey( spep_0 + 208, start, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start, 0);
setEffRotateKey( spep_0 + 208, start, 0);
setEffAlphaKey( spep_0 + 0, start, 255);
setEffAlphaKey( spep_0 + 208 -2, start, 255);
setEffAlphaKey( spep_0 + 208 -1, start, 255);
setEffAlphaKey( spep_0 + 208, start, 0);


-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 24;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -55, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -55, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -55, 515.5 , 0 );
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
--SE00X = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 208 + 2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 音 ** --
--石キャッチ
SE002 = playSeVer2( spep_0 + 86, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 86, SE002, 126 );
setPitch( spep_0 + 86, SE002, 600 );
setTimeStretch( SE002, 1.4, 30, 4 );
SE003 = playSeVer2( spep_0 + 88, 29, "", 0, 0, 0, 1.0);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 136; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE00X, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);

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
--石キャッチ2
SE004 = playSeVer2( spep_0 + 178, 1108, "", 0, 0, 0, 1.0);
setSeVolumeByWorkId( spep_0 + 178, SE004, 126 );
setPitch( spep_0 + 178, SE004, 600 );
setTimeStretch( SE004, 1.4, 30, 4 );
SE005 = playSeVer2( spep_0 + 180, 29, "", 0, 0, 0, -1);

--石割る
SE006 = playSeVer2( spep_0 + 196, 1007, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 196, 1168, "",spep_0 +264, 0, 50, -1);
setBandpassFilter( spep_0 + 196, SE007, 1150, 24000 );

-- ** 次の準備 ** --
spep_1 = spep_0 + 208;

-------------------------------------------------
-- 拳アップ〜格闘(218f)
-------------------------------------------------

grapple_f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, grapple_f, 0, 0 , 0);
setEffMoveKey( spep_1 + 218, grapple_f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_f, 1.0, 1.0);
setEffScaleKey( spep_1 + 218, grapple_f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_f, 0);
setEffRotateKey( spep_1 + 218, grapple_f, 0);
setEffAlphaKey( spep_1 + 0, grapple_f, 255);
setEffAlphaKey( spep_1 + 218, grapple_f, 255);

grapple_b = entryEffect( spep_1 + 0, SP_03r, 0x80, -1, 0, 0, 0); -- ef_003
setEffMoveKey( spep_1 + 0, grapple_b, 0, 0 , 0);
setEffMoveKey( spep_1 + 218, grapple_b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, grapple_b, 1.0, 1.0);
setEffScaleKey( spep_1 + 218, grapple_b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, grapple_b, 0);
setEffRotateKey( spep_1 + 218, grapple_b, 0);
setEffAlphaKey( spep_1 + 0, grapple_b, 255);
setEffAlphaKey( spep_1 + 218, grapple_b, 255);

-- ** 敵キャラクター ** --
OFFSET_1 = -1;

setDisp( spep_1 + 52 + OFFSET_1, 1, 1 );
setDisp( spep_1 + 219 + OFFSET_1, 1, 0 );

changeAnime( spep_1 + 52 + OFFSET_1, 1, 104 );
changeAnime( spep_1 + 76 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 104 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 124 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 146 + OFFSET_1, 1, 106 );
changeAnime( spep_1 + 156 + OFFSET_1, 1, 108 );
changeAnime( spep_1 + 206 + OFFSET_1, 1, 107 );

setMoveKey( spep_1 + 52 + OFFSET_1, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_1, 1, 72.5, -16.9 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_1, 1, 73, -16.9 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_1, 1, 73.4, -16.9 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_1, 1, 73.9, -16.9 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_1, 1, 74.4, -16.9 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_1, 1, 74.8, -16.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_1, 1, 75.3, -16.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_1, 1, 75.8, -16.9 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_1, 1, 76.2, -16.9 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_1, 1, 76.7, -16.9 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_1, 1, 77.1, -16.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_1, 1, 77.6, -16.9 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_1, 1, 104, 26 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_1, 1, 160.1, 8.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_1, 1, 124.4, 10.4 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_1, 1, 150.7, 40.8 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_1, 1, 135.1, 23.1 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_1, 1, 135.4, 21.4 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_1, 1, 135.8, 19.8 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_1, 1, 136.1, 18.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_1, 1, 136.5, 16.4 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_1, 1, 136.8, 14.8 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_1, 1, 137.1, 13.1 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_1, 1, 137.5, 11.4 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_1, 1, 137.8, 9.8 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_1, 1, 138.2, 8.1 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_1, 1, 125.1, 19.1 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_1, 1, 101.8, 40.5 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_1, 1, 150.5, 5.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_1, 1, 120, 9.2 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_1, 1, 151.4, 40.5 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_1, 1, 140.9, 23.8 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_1, 1, 145.6, 23.1 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_1, 1, 150.4, 22.4 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_1, 1, 155.1, 21.8 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_1, 1, 159.8, 21.1 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_1, 1, 217.9, 19 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_1, 1, 219.8, 19.7 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 129 + OFFSET_1, 1, 221.8, 20.4 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 131 + OFFSET_1, 1, 223.8, 21.2 , 0 );
setMoveKey( spep_1 + 132 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 133 + OFFSET_1, 1, 225.7, 21.9 , 0 );
setMoveKey( spep_1 + 134 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 135 + OFFSET_1, 1, 227.7, 22.6 , 0 );
setMoveKey( spep_1 + 136 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 137 + OFFSET_1, 1, 229.7, 23.3 , 0 );
setMoveKey( spep_1 + 138 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 139 + OFFSET_1, 1, 231.6, 24 , 0 );
setMoveKey( spep_1 + 140 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 141 + OFFSET_1, 1, 233.6, 24.7 , 0 );
setMoveKey( spep_1 + 142 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 143 + OFFSET_1, 1, 235.6, 25.4 , 0 );
setMoveKey( spep_1 + 144 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 145 + OFFSET_1, 1, 237.5, 26.2 , 0 );
setMoveKey( spep_1 + 146 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 147 + OFFSET_1, 1, 149.1, 33.6 , 0 );
setMoveKey( spep_1 + 148 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 149 + OFFSET_1, 1, 95.9, 56.6 , 0 );
setMoveKey( spep_1 + 150 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 151 + OFFSET_1, 1, 114.7, 23.5 , 0 );
setMoveKey( spep_1 + 152 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 153 + OFFSET_1, 1, 63.6, 32.4 , 0 );
setMoveKey( spep_1 + 154 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 155 + OFFSET_1, 1, 74.4, 69.4 , 0 );
setMoveKey( spep_1 + 156 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 157 + OFFSET_1, 1, 107, 35.4 , 0 );
setMoveKey( spep_1 + 158 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 159 + OFFSET_1, 1, 140.1, 30.7 , 0 );
setMoveKey( spep_1 + 160 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 161 + OFFSET_1, 1, 173.1, 26 , 0 );
setMoveKey( spep_1 + 162 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 163 + OFFSET_1, 1, 160.1, 39.2 , 0 );
setMoveKey( spep_1 + 164 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 165 + OFFSET_1, 1, 219.1, -3.5 , 0 );
setMoveKey( spep_1 + 166 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 167 + OFFSET_1, 1, 208.2, -4.2 , 0 );
setMoveKey( spep_1 + 168 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 169 + OFFSET_1, 1, 228.2, 27.6 , 0 );
setMoveKey( spep_1 + 170 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 171 + OFFSET_1, 1, 206.3, 11.3 , 0 );
setMoveKey( spep_1 + 172 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 173 + OFFSET_1, 1, 198.4, 11.1 , 0 );
setMoveKey( spep_1 + 174 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 175 + OFFSET_1, 1, 190.4, 10.9 , 0 );
setMoveKey( spep_1 + 176 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 177 + OFFSET_1, 1, 182.5, 10.7 , 0 );
setMoveKey( spep_1 + 178 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 179 + OFFSET_1, 1, 174.6, 10.5 , 0 );
setMoveKey( spep_1 + 180 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 181 + OFFSET_1, 1, 166.7, 10.3 , 0 );
setMoveKey( spep_1 + 182 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 183 + OFFSET_1, 1, 158.7, 10.1 , 0 );
setMoveKey( spep_1 + 184 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 185 + OFFSET_1, 1, 150.8, 9.9 , 0 );
setMoveKey( spep_1 + 186 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 187 + OFFSET_1, 1, 142.9, 9.6 , 0 );
setMoveKey( spep_1 + 188 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 189 + OFFSET_1, 1, 135, 9.4 , 0 );
setMoveKey( spep_1 + 190 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 191 + OFFSET_1, 1, 127.1, 9.2 , 0 );
setMoveKey( spep_1 + 192 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 193 + OFFSET_1, 1, 119.1, 9 , 0 );
setMoveKey( spep_1 + 194 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 197 + OFFSET_1, 1, 111.2, 8.8 , 0 );
setMoveKey( spep_1 + 198 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 199 + OFFSET_1, 1, 115.2, 1.4 , 0 );
setMoveKey( spep_1 + 200 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 201 + OFFSET_1, 1, 117.6, -6 , 0 );
setMoveKey( spep_1 + 202 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_1, 1, 118.4, -13.4 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_1, 1, 117.5, -20.9 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_1, 1, 43.1, -17.5 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_1, 1, 58.1, -68.1 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_1, 1, 63, -78 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_1, 1, 74.6, -124.6 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_1, 1, 86.2, -171.2 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_1, 1, 97.9, -217.8 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_1, 1, 97.9, -217.8 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_1, 1, 109.5, -264.3 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_1, 1, 109.5, -264.3 , 0 );

setScaleKey( spep_1 + 52 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 75 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 76 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 103 + OFFSET_1, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 104 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 123 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 124 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 145 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 146 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 155 + OFFSET_1, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 156 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 197 + OFFSET_1, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 198 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 199 + OFFSET_1, 1, 1.70, 1.70 );
setScaleKey( spep_1 + 200 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 201 + OFFSET_1, 1, 1.84, 1.84 );
setScaleKey( spep_1 + 202 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 203 + OFFSET_1, 1, 1.99, 1.99 );
setScaleKey( spep_1 + 204 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 205 + OFFSET_1, 1, 2.13, 2.13 );
setScaleKey( spep_1 + 206 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 207 + OFFSET_1, 1, 0.91, 0.91 );
setScaleKey( spep_1 + 208 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 209 + OFFSET_1, 1, 1.07, 1.07 );
setScaleKey( spep_1 + 210 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 211 + OFFSET_1, 1, 1.14, 1.14 );
setScaleKey( spep_1 + 212 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 213 + OFFSET_1, 1, 1.24, 1.24 );
setScaleKey( spep_1 + 214 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 215 + OFFSET_1, 1, 1.35, 1.35 );
setScaleKey( spep_1 + 216 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 217 + OFFSET_1, 1, 1.45, 1.45 );
setScaleKey( spep_1 + 218 + OFFSET_1, 1, 1.55, 1.55 );
setScaleKey( spep_1 + 219 + OFFSET_1, 1, 1.55, 1.55 );

setRotateKey( spep_1 + 52 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 77 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 78 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 79 + OFFSET_1, 1, 17 );
setRotateKey( spep_1 + 80 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 81 + OFFSET_1, 1, 17.9 );
setRotateKey( spep_1 + 82 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 83 + OFFSET_1, 1, 18.8 );
setRotateKey( spep_1 + 84 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 85 + OFFSET_1, 1, 19.7 );
setRotateKey( spep_1 + 86 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 87 + OFFSET_1, 1, 20.6 );
setRotateKey( spep_1 + 88 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 89 + OFFSET_1, 1, 21.5 );
setRotateKey( spep_1 + 90 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 91 + OFFSET_1, 1, 22.4 );
setRotateKey( spep_1 + 92 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 93 + OFFSET_1, 1, 23.3 );
setRotateKey( spep_1 + 94 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 95 + OFFSET_1, 1, 24.2 );
setRotateKey( spep_1 + 96 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 97 + OFFSET_1, 1, 25.1 );
setRotateKey( spep_1 + 98 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 99 + OFFSET_1, 1, 26 );
setRotateKey( spep_1 + 100 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 101 + OFFSET_1, 1, 26.9 );
setRotateKey( spep_1 + 102 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 103 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 104 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 105 + OFFSET_1, 1, -38.4 );
setRotateKey( spep_1 + 106 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 107 + OFFSET_1, 1, -30.4 );
setRotateKey( spep_1 + 108 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 109 + OFFSET_1, 1, -22.3 );
setRotateKey( spep_1 + 110 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 111 + OFFSET_1, 1, -20.3 );
setRotateKey( spep_1 + 112 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 113 + OFFSET_1, 1, -18.3 );
setRotateKey( spep_1 + 114 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 115 + OFFSET_1, 1, -16.4 );
setRotateKey( spep_1 + 116 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 117 + OFFSET_1, 1, -14.4 );
setRotateKey( spep_1 + 118 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 119 + OFFSET_1, 1, -12.4 );
setRotateKey( spep_1 + 120 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 121 + OFFSET_1, 1, -10.5 );
setRotateKey( spep_1 + 122 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 123 + OFFSET_1, 1, -8.5 );
setRotateKey( spep_1 + 124 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 125 + OFFSET_1, 1, 18.5 );
setRotateKey( spep_1 + 126 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 127 + OFFSET_1, 1, 18.9 );
setRotateKey( spep_1 + 128 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 129 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 130 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 131 + OFFSET_1, 1, 19.8 );
setRotateKey( spep_1 + 132 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 133 + OFFSET_1, 1, 20.3 );
setRotateKey( spep_1 + 134 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 135 + OFFSET_1, 1, 20.7 );
setRotateKey( spep_1 + 136 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 137 + OFFSET_1, 1, 21.2 );
setRotateKey( spep_1 + 138 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 139 + OFFSET_1, 1, 21.6 );
setRotateKey( spep_1 + 140 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 141 + OFFSET_1, 1, 22.1 );
setRotateKey( spep_1 + 142 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 143 + OFFSET_1, 1, 22.5 );
setRotateKey( spep_1 + 144 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 145 + OFFSET_1, 1, 23 );
setRotateKey( spep_1 + 146 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 147 + OFFSET_1, 1, -32 );
setRotateKey( spep_1 + 148 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 149 + OFFSET_1, 1, -39 );
setRotateKey( spep_1 + 150 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 151 + OFFSET_1, 1, -46 );
setRotateKey( spep_1 + 152 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 153 + OFFSET_1, 1, -53 );
setRotateKey( spep_1 + 154 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 155 + OFFSET_1, 1, -60 );
setRotateKey( spep_1 + 156 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 157 + OFFSET_1, 1, 4 );
setRotateKey( spep_1 + 158 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 159 + OFFSET_1, 1, 7.9 );
setRotateKey( spep_1 + 160 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 161 + OFFSET_1, 1, 11.7 );
setRotateKey( spep_1 + 162 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 163 + OFFSET_1, 1, 15.5 );
setRotateKey( spep_1 + 164 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 165 + OFFSET_1, 1, 19.4 );
setRotateKey( spep_1 + 166 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 167 + OFFSET_1, 1, 23.2 );
setRotateKey( spep_1 + 168 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 169 + OFFSET_1, 1, 24.4 );
setRotateKey( spep_1 + 170 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 171 + OFFSET_1, 1, 25.5 );
setRotateKey( spep_1 + 172 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 173 + OFFSET_1, 1, 26.6 );
setRotateKey( spep_1 + 174 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 175 + OFFSET_1, 1, 27.8 );
setRotateKey( spep_1 + 176 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 177 + OFFSET_1, 1, 28.9 );
setRotateKey( spep_1 + 178 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 179 + OFFSET_1, 1, 30 );
setRotateKey( spep_1 + 180 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 181 + OFFSET_1, 1, 31.2 );
setRotateKey( spep_1 + 182 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 183 + OFFSET_1, 1, 32.3 );
setRotateKey( spep_1 + 184 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 185 + OFFSET_1, 1, 33.4 );
setRotateKey( spep_1 + 186 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 187 + OFFSET_1, 1, 34.6 );
setRotateKey( spep_1 + 188 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 189 + OFFSET_1, 1, 35.7 );
setRotateKey( spep_1 + 190 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 191 + OFFSET_1, 1, 36.8 );
setRotateKey( spep_1 + 192 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 193 + OFFSET_1, 1, 38 );
setRotateKey( spep_1 + 194 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 197 + OFFSET_1, 1, 39.1 );
setRotateKey( spep_1 + 198 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 199 + OFFSET_1, 1, 40.3 );
setRotateKey( spep_1 + 200 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 201 + OFFSET_1, 1, 41.4 );
setRotateKey( spep_1 + 202 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 203 + OFFSET_1, 1, 42.5 );
setRotateKey( spep_1 + 204 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 205 + OFFSET_1, 1, 43.7 );
setRotateKey( spep_1 + 206 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 207 + OFFSET_1, 1, -3.2 );
setRotateKey( spep_1 + 208 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 211 + OFFSET_1, 1, -2.6 );
setRotateKey( spep_1 + 212 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 213 + OFFSET_1, 1, -1.9 );
setRotateKey( spep_1 + 214 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 215 + OFFSET_1, 1, -1.3 );
setRotateKey( spep_1 + 216 + OFFSET_1, 1, -0.6 );
setRotateKey( spep_1 + 217 + OFFSET_1, 1, -0.6 );
setRotateKey( spep_1 + 218 + OFFSET_1, 1, 0 );
setRotateKey( spep_1 + 219 + OFFSET_1, 1, 0 );

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 218 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 音 ** --
--瞬間移動
SE008 = playSeVer2( spep_1 + 36, 1109, "", 0, 0, 0, -1);

--キック
SE009 = playSeVer2( spep_1 + 68, 1189, "", 0, 0, 0, -1);
SE010 = playSeVer2( spep_1 + 74, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 74, SE010, 78 );
SE011 = playSeVer2( spep_1 + 74, 1110, "", 0, 0, 0, -1);

--キック2
SE012 = playSeVer2( spep_1 + 102, 1187, "",spep_1 + 166, 0, 28, -1);
setSeVolumeByWorkId( spep_1 + 102, SE012, 87 );
SE013 = playSeVer2( spep_1 + 102, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 102, SE013, 79 );

--画面前移動
SE014 = playSeVer2( spep_1 + 118, 1004, "", 0, 0, 0, -1);

--ラッシュ
SE015 = playSeVer2( spep_1 + 146, 1110, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_1 + 146, 1009, "", 0, 0, 0, -1);

--瞬間移動
SE017 = playSeVer2( spep_1 + 150, 1109, "", 0, 0, 0, -1);

--ラッシュ
SE018 = playSeVer2( spep_1 + 160, 1153, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_1 + 160, 1110, "", 0, 0, 0, -1);

--瞬間移動
SE020 = playSeVer2( spep_1 + 174, 1109, "", 0, 0, 0, -1);

--殴り飛ばす
SE021 = playSeVer2( spep_1 + 202, 1187, "",spep_1 + 234, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 202, SE021, 73 );
SE022 = playSeVer2( spep_1 + 202, 1120, "",spep_1 + 234, 0, 14, -1);

-- ** 次の準備 ** --
spep_c = spep_1 + 218;

--------------------------------------
--カードカットイン(94F)
--------------------------------------
-- ** カードカットイン ** --
speff2 = entryEffectLife( spep_c + 0, 1507, 90, 0x100, -1, 0, 0, 0 );   -- カード
setEffReplaceTexture( speff2, 1, 1 );
setEffReplaceTexture( speff2, 2, 0 );-- カード差し替え
setEffReplaceTexture( speff2, 5, 4 );-- 技名テクスチャ差し替え

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
playSe( spep_c + 0, SE_05 );

-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade


-- ** 次の準備 ** --
spep_2 = spep_c + 94;

-------------------------------------------------
-- カカオ地面落下〜ダイーズ追撃(336f)
-------------------------------------------------

slamming_f = entryEffect( spep_2 + 0, SP_04r, 0x100, -1, 0, 0, 0); -- ef_004
setEffMoveKey( spep_2 + 0, slamming_f, 0, 0 , 0);
setEffMoveKey( spep_2 + 336, slamming_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, slamming_f, 1.0, 1.0);
setEffScaleKey( spep_2 + 336, slamming_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, slamming_f, 0);
setEffRotateKey( spep_2 + 336, slamming_f, 0);
setEffAlphaKey( spep_2 + 0, slamming_f, 255);
setEffAlphaKey( spep_2 + 336, slamming_f, 255);

slamming_b = entryEffect( spep_2 + 0, SP_05r, 0x80, -1, 0, 0, 0); -- ef_005
setEffMoveKey( spep_2 + 0, slamming_b, 0, 0 , 0);
setEffMoveKey( spep_2 + 336, slamming_b, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, slamming_b, 1.0, 1.0);
setEffScaleKey( spep_2 + 336, slamming_b, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, slamming_b, 0);
setEffRotateKey( spep_2 + 336, slamming_b, 0);
setEffAlphaKey( spep_2 + 0, slamming_b, 255);
setEffAlphaKey( spep_2 + 336, slamming_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, 336 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_2 = -1;

setDisp( spep_2 + 0, 1, 1 );
setDisp( spep_2 + 111 + OFFSET_2, 1, 0 );

changeAnime( spep_2 + 0, 1, 105 );
changeAnime( spep_2 + 30 + OFFSET_2, 1, 108 );
changeAnime( spep_2 + 100 + OFFSET_2, 1, 107 );

setMoveKey( spep_2 + 0, 1, 78.2, 4.1 , 0 );
setMoveKey( spep_2 + 2 + OFFSET_2, 1, 83.4, -0.2 , 0 );
setMoveKey( spep_2 + 3 + OFFSET_2, 1, 83.4, -0.2 , 0 );
setMoveKey( spep_2 + 4 + OFFSET_2, 1, 88.5, -4.5 , 0 );
setMoveKey( spep_2 + 5 + OFFSET_2, 1, 88.5, -4.5 , 0 );
setMoveKey( spep_2 + 6 + OFFSET_2, 1, 93.3, -8.8 , 0 );
setMoveKey( spep_2 + 7 + OFFSET_2, 1, 93.3, -8.8 , 0 );
setMoveKey( spep_2 + 8 + OFFSET_2, 1, 97.7, -13.1 , 0 );
setMoveKey( spep_2 + 9 + OFFSET_2, 1, 97.7, -13.1 , 0 );
setMoveKey( spep_2 + 10 + OFFSET_2, 1, 101.7, -17.4 , 0 );
setMoveKey( spep_2 + 11 + OFFSET_2, 1, 101.7, -17.4 , 0 );
setMoveKey( spep_2 + 12 + OFFSET_2, 1, 104.9, -21.8 , 0 );
setMoveKey( spep_2 + 13 + OFFSET_2, 1, 104.9, -21.8 , 0 );
setMoveKey( spep_2 + 14 + OFFSET_2, 1, 107.4, -26.1 , 0 );
setMoveKey( spep_2 + 15 + OFFSET_2, 1, 107.4, -26.1 , 0 );
setMoveKey( spep_2 + 16 + OFFSET_2, 1, 109.1, -30.4 , 0 );
setMoveKey( spep_2 + 17 + OFFSET_2, 1, 109.1, -30.4 , 0 );
setMoveKey( spep_2 + 18 + OFFSET_2, 1, 109.6, -34.7 , 0 );
setMoveKey( spep_2 + 19 + OFFSET_2, 1, 109.6, -34.7 , 0 );
setMoveKey( spep_2 + 20 + OFFSET_2, 1, 109.1, -39 , 0 );
setMoveKey( spep_2 + 21 + OFFSET_2, 1, 109.1, -39 , 0 );
setMoveKey( spep_2 + 22 + OFFSET_2, 1, 107.2, -43.3 , 0 );
setMoveKey( spep_2 + 23 + OFFSET_2, 1, 107.2, -43.3 , 0 );
setMoveKey( spep_2 + 24 + OFFSET_2, 1, 103.9, -47.6 , 0 );
setMoveKey( spep_2 + 25 + OFFSET_2, 1, 103.9, -47.6 , 0 );
setMoveKey( spep_2 + 26 + OFFSET_2, 1, 99.1, -51.9 , 0 );
setMoveKey( spep_2 + 27 + OFFSET_2, 1, 99.1, -51.9 , 0 );
setMoveKey( spep_2 + 28 + OFFSET_2, 1, 92.6, -56.3 , 0 );
setMoveKey( spep_2 + 29 + OFFSET_2, 1, 92.6, -56.3 , 0 );
setMoveKey( spep_2 + 30 + OFFSET_2, 1, 65.3, -61.1 , 0 );
setMoveKey( spep_2 + 31 + OFFSET_2, 1, 65.3, -61.1 , 0 );
setMoveKey( spep_2 + 32 + OFFSET_2, 1, 49.9, -61.2 , 0 );
setMoveKey( spep_2 + 33 + OFFSET_2, 1, 49.9, -61.2 , 0 );
setMoveKey( spep_2 + 34 + OFFSET_2, 1, 32.4, -62 , 0 );
setMoveKey( spep_2 + 35 + OFFSET_2, 1, 32.4, -62 , 0 );
setMoveKey( spep_2 + 36 + OFFSET_2, 1, 46.9, -73.8 , 0 );
setMoveKey( spep_2 + 37 + OFFSET_2, 1, 46.9, -73.8 , 0 );
setMoveKey( spep_2 + 38 + OFFSET_2, 1, 61, -86.3 , 0 );
setMoveKey( spep_2 + 39 + OFFSET_2, 1, 61, -86.3 , 0 );
setMoveKey( spep_2 + 40 + OFFSET_2, 1, 69, -91.8 , 0 );
setMoveKey( spep_2 + 41 + OFFSET_2, 1, 69, -91.8 , 0 );
setMoveKey( spep_2 + 42 + OFFSET_2, 1, 77.9, -97.6 , 0 );
setMoveKey( spep_2 + 43 + OFFSET_2, 1, 77.9, -97.6 , 0 );
setMoveKey( spep_2 + 44 + OFFSET_2, 1, 87.4, -103.5 , 0 );
setMoveKey( spep_2 + 45 + OFFSET_2, 1, 87.4, -103.5 , 0 );
setMoveKey( spep_2 + 46 + OFFSET_2, 1, 97.3, -109.4 , 0 );
setMoveKey( spep_2 + 47 + OFFSET_2, 1, 97.3, -109.4 , 0 );
setMoveKey( spep_2 + 48 + OFFSET_2, 1, 107.4, -115.3 , 0 );
setMoveKey( spep_2 + 49 + OFFSET_2, 1, 107.4, -115.3 , 0 );
setMoveKey( spep_2 + 50 + OFFSET_2, 1, 117.4, -121.1 , 0 );
setMoveKey( spep_2 + 51 + OFFSET_2, 1, 117.4, -121.1 , 0 );
setMoveKey( spep_2 + 52 + OFFSET_2, 1, 126.8, -126.5 , 0 );
setMoveKey( spep_2 + 53 + OFFSET_2, 1, 126.8, -126.5 , 0 );
setMoveKey( spep_2 + 54 + OFFSET_2, 1, 135.3, -131.5 , 0 );
setMoveKey( spep_2 + 55 + OFFSET_2, 1, 135.3, -131.5 , 0 );
setMoveKey( spep_2 + 56 + OFFSET_2, 1, 142.3, -135.9 , 0 );
setMoveKey( spep_2 + 57 + OFFSET_2, 1, 142.3, -135.9 , 0 );
setMoveKey( spep_2 + 58 + OFFSET_2, 1, 145.2, -140.2 , 0 );
setMoveKey( spep_2 + 59 + OFFSET_2, 1, 145.2, -140.2 , 0 );
setMoveKey( spep_2 + 60 + OFFSET_2, 1, 148.4, -144.5 , 0 );
setMoveKey( spep_2 + 61 + OFFSET_2, 1, 148.4, -144.5 , 0 );
setMoveKey( spep_2 + 62 + OFFSET_2, 1, 187.2, -179.9 , 0 );
setMoveKey( spep_2 + 63 + OFFSET_2, 1, 187.2, -179.9 , 0 );
setMoveKey( spep_2 + 64 + OFFSET_2, 1, 185, -180.7 , 0 );
setMoveKey( spep_2 + 65 + OFFSET_2, 1, 185, -180.7 , 0 );
setMoveKey( spep_2 + 66 + OFFSET_2, 1, 183, -181.6 , 0 );
setMoveKey( spep_2 + 67 + OFFSET_2, 1, 183, -181.6 , 0 );
setMoveKey( spep_2 + 68 + OFFSET_2, 1, 181.3, -182.4 , 0 );
setMoveKey( spep_2 + 69 + OFFSET_2, 1, 181.3, -182.4 , 0 );
setMoveKey( spep_2 + 70 + OFFSET_2, 1, 179.9, -183.3 , 0 );
setMoveKey( spep_2 + 71 + OFFSET_2, 1, 179.9, -183.3 , 0 );
setMoveKey( spep_2 + 72 + OFFSET_2, 1, 178.8, -184.1 , 0 );
setMoveKey( spep_2 + 73 + OFFSET_2, 1, 178.8, -184.1 , 0 );
setMoveKey( spep_2 + 74 + OFFSET_2, 1, 177.9, -185 , 0 );
setMoveKey( spep_2 + 75 + OFFSET_2, 1, 177.9, -185 , 0 );
setMoveKey( spep_2 + 76 + OFFSET_2, 1, 177.4, -185.8 , 0 );
setMoveKey( spep_2 + 77 + OFFSET_2, 1, 177.4, -185.8 , 0 );
setMoveKey( spep_2 + 78 + OFFSET_2, 1, 177.1, -186.7 , 0 );
setMoveKey( spep_2 + 79 + OFFSET_2, 1, 177.1, -186.7 , 0 );
setMoveKey( spep_2 + 80 + OFFSET_2, 1, 177.1, -187.6 , 0 );
setMoveKey( spep_2 + 81 + OFFSET_2, 1, 177.1, -187.6 , 0 );
setMoveKey( spep_2 + 82 + OFFSET_2, 1, 177.3, -188.4 , 0 );
setMoveKey( spep_2 + 83 + OFFSET_2, 1, 177.3, -188.4 , 0 );
setMoveKey( spep_2 + 84 + OFFSET_2, 1, 177.9, -189.3 , 0 );
setMoveKey( spep_2 + 85 + OFFSET_2, 1, 177.9, -189.3 , 0 );
setMoveKey( spep_2 + 86 + OFFSET_2, 1, 178.8, -190.2 , 0 );
setMoveKey( spep_2 + 87 + OFFSET_2, 1, 178.8, -190.2 , 0 );
setMoveKey( spep_2 + 88 + OFFSET_2, 1, 179.9, -191 , 0 );
setMoveKey( spep_2 + 89 + OFFSET_2, 1, 179.9, -191 , 0 );
setMoveKey( spep_2 + 90 + OFFSET_2, 1, 180.3, -191.4 , 0 );
setMoveKey( spep_2 + 91 + OFFSET_2, 1, 180.3, -191.4 , 0 );
setMoveKey( spep_2 + 92 + OFFSET_2, 1, 180.7, -191.8 , 0 );
setMoveKey( spep_2 + 93 + OFFSET_2, 1, 180.7, -191.8 , 0 );
setMoveKey( spep_2 + 94 + OFFSET_2, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 95 + OFFSET_2, 1, 181.1, -192.2 , 0 );
setMoveKey( spep_2 + 96 + OFFSET_2, 1, 181.5, -192.6 , 0 );
setMoveKey( spep_2 + 97 + OFFSET_2, 1, 181.5, -192.6 , 0 );
setMoveKey( spep_2 + 98 + OFFSET_2, 1, 181.8, -193 , 0 );
setMoveKey( spep_2 + 99 + OFFSET_2, 1, 181.8, -193 , 0 );
setMoveKey( spep_2 + 100 + OFFSET_2, 1, 10.5, 302.8 , 0 );
setMoveKey( spep_2 + 101 + OFFSET_2, 1, 10.5, 302.8 , 0 );
setMoveKey( spep_2 + 102 + OFFSET_2, 1, 12.3, 272.3 , 0 );
setMoveKey( spep_2 + 103 + OFFSET_2, 1, 12.3, 272.3 , 0 );
setMoveKey( spep_2 + 104 + OFFSET_2, 1, 14.7, 206.8 , 0 );
setMoveKey( spep_2 + 105 + OFFSET_2, 1, 14.7, 206.8 , 0 );
setMoveKey( spep_2 + 106 + OFFSET_2, 1, 17.2, 59.4 , 0 );
setMoveKey( spep_2 + 107 + OFFSET_2, 1, 17.2, 59.4 , 0 );
setMoveKey( spep_2 + 108 + OFFSET_2, 1, 27.1, -86.8 , 0 );
setMoveKey( spep_2 + 109 + OFFSET_2, 1, 27.1, -86.8 , 0 );
setMoveKey( spep_2 + 111 + OFFSET_2, 1, 27.1, -108.3 , 0 );

setScaleKey( spep_2 + 0, 1, 1.25, 1.25 );
setScaleKey( spep_2 + 2 + OFFSET_2, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 3 + OFFSET_2, 1, 1.23, 1.23 );
setScaleKey( spep_2 + 4 + OFFSET_2, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 5 + OFFSET_2, 1, 1.21, 1.21 );
setScaleKey( spep_2 + 6 + OFFSET_2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 7 + OFFSET_2, 1, 1.19, 1.19 );
setScaleKey( spep_2 + 8 + OFFSET_2, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 9 + OFFSET_2, 1, 1.17, 1.17 );
setScaleKey( spep_2 + 10 + OFFSET_2, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 11 + OFFSET_2, 1, 1.15, 1.15 );
setScaleKey( spep_2 + 12 + OFFSET_2, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 13 + OFFSET_2, 1, 1.13, 1.13 );
setScaleKey( spep_2 + 14 + OFFSET_2, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 15 + OFFSET_2, 1, 1.11, 1.11 );
setScaleKey( spep_2 + 16 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 17 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 18 + OFFSET_2, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 19 + OFFSET_2, 1, 1.08, 1.08 );
setScaleKey( spep_2 + 20 + OFFSET_2, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 21 + OFFSET_2, 1, 1.06, 1.06 );
setScaleKey( spep_2 + 22 + OFFSET_2, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 23 + OFFSET_2, 1, 1.04, 1.04 );
setScaleKey( spep_2 + 24 + OFFSET_2, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 25 + OFFSET_2, 1, 1.02, 1.02 );
setScaleKey( spep_2 + 26 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 27 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 28 + OFFSET_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 29 + OFFSET_2, 1, 0.98, 0.98 );
setScaleKey( spep_2 + 30 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 33 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 34 + OFFSET_2, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 35 + OFFSET_2, 1, 1.26, 1.26 );
setScaleKey( spep_2 + 36 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 39 + OFFSET_2, 1, 1.1, 1.1 );
setScaleKey( spep_2 + 40 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 41 + OFFSET_2, 1, 1, 1 );
setScaleKey( spep_2 + 42 + OFFSET_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 43 + OFFSET_2, 1, 0.89, 0.89 );
setScaleKey( spep_2 + 44 + OFFSET_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 45 + OFFSET_2, 1, 0.77, 0.77 );
setScaleKey( spep_2 + 46 + OFFSET_2, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 47 + OFFSET_2, 1, 0.66, 0.66 );
setScaleKey( spep_2 + 48 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 49 + OFFSET_2, 1, 0.55, 0.55 );
setScaleKey( spep_2 + 50 + OFFSET_2, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 51 + OFFSET_2, 1, 0.44, 0.44 );
setScaleKey( spep_2 + 52 + OFFSET_2, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 53 + OFFSET_2, 1, 0.33, 0.33 );
setScaleKey( spep_2 + 54 + OFFSET_2, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 55 + OFFSET_2, 1, 0.24, 0.24 );
setScaleKey( spep_2 + 56 + OFFSET_2, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 57 + OFFSET_2, 1, 0.16, 0.16 );
setScaleKey( spep_2 + 58 + OFFSET_2, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 59 + OFFSET_2, 1, 0.13, 0.13 );
setScaleKey( spep_2 + 60 + OFFSET_2, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 61 + OFFSET_2, 1, 0.1, 0.1 );
setScaleKey( spep_2 + 62 + OFFSET_2, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 75 + OFFSET_2, 1, 0.05, 0.05 );
setScaleKey( spep_2 + 76 + OFFSET_2, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 95 + OFFSET_2, 1, 0.04, 0.04 );
setScaleKey( spep_2 + 96 + OFFSET_2, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 99 + OFFSET_2, 1, 0.03, 0.03 );
setScaleKey( spep_2 + 100 + OFFSET_2, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 101 + OFFSET_2, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 102 + OFFSET_2, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 103 + OFFSET_2, 1, 0.32, 0.32 );
setScaleKey( spep_2 + 104 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 105 + OFFSET_2, 1, 0.47, 0.47 );
setScaleKey( spep_2 + 106 + OFFSET_2, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 107 + OFFSET_2, 1, 0.68, 0.68 );
setScaleKey( spep_2 + 108 + OFFSET_2, 1, 0.83, 0.83 );
setScaleKey( spep_2 + 111 + OFFSET_2, 1, 0.83, 0.83 );

setRotateKey( spep_2 + 0, 1, 22.2 );
setRotateKey( spep_2 + 2 + OFFSET_2, 1, 21.7 );
setRotateKey( spep_2 + 3 + OFFSET_2, 1, 21.7 );
setRotateKey( spep_2 + 4 + OFFSET_2, 1, 21.2 );
setRotateKey( spep_2 + 5 + OFFSET_2, 1, 21.2 );
setRotateKey( spep_2 + 6 + OFFSET_2, 1, 20.7 );
setRotateKey( spep_2 + 7 + OFFSET_2, 1, 20.7 );
setRotateKey( spep_2 + 8 + OFFSET_2, 1, 20.2 );
setRotateKey( spep_2 + 9 + OFFSET_2, 1, 20.2 );
setRotateKey( spep_2 + 10 + OFFSET_2, 1, 19.7 );
setRotateKey( spep_2 + 11 + OFFSET_2, 1, 19.7 );
setRotateKey( spep_2 + 12 + OFFSET_2, 1, 19.2 );
setRotateKey( spep_2 + 13 + OFFSET_2, 1, 19.2 );
setRotateKey( spep_2 + 14 + OFFSET_2, 1, 18.7 );
setRotateKey( spep_2 + 15 + OFFSET_2, 1, 18.7 );
setRotateKey( spep_2 + 16 + OFFSET_2, 1, 18.2 );
setRotateKey( spep_2 + 17 + OFFSET_2, 1, 18.2 );
setRotateKey( spep_2 + 18 + OFFSET_2, 1, 17.7 );
setRotateKey( spep_2 + 19 + OFFSET_2, 1, 17.7 );
setRotateKey( spep_2 + 20 + OFFSET_2, 1, 17.2 );
setRotateKey( spep_2 + 21 + OFFSET_2, 1, 17.2 );
setRotateKey( spep_2 + 22 + OFFSET_2, 1, 16.7 );
setRotateKey( spep_2 + 23 + OFFSET_2, 1, 16.7 );
setRotateKey( spep_2 + 24 + OFFSET_2, 1, 16.2 );
setRotateKey( spep_2 + 25 + OFFSET_2, 1, 16.2 );
setRotateKey( spep_2 + 26 + OFFSET_2, 1, 15.7 );
setRotateKey( spep_2 + 27 + OFFSET_2, 1, 15.7 );
setRotateKey( spep_2 + 28 + OFFSET_2, 1, 15.2 );
setRotateKey( spep_2 + 29 + OFFSET_2, 1, 15.2 );
setRotateKey( spep_2 + 30 + OFFSET_2, 1, 41.9 );
setRotateKey( spep_2 + 99 + OFFSET_2, 1, 41.9 );
setRotateKey( spep_2 + 100 + OFFSET_2, 1, 40.9 );
setRotateKey( spep_2 + 111 + OFFSET_2, 1, 40.9 );

-- ** 音 ** --
--体当たりで突っ込んでいく
SE024 = playSeVer2( spep_2 + 36, 1121, "",spep_2 + 130, 14, 16, 0.6);
setSeVolumeByWorkId( spep_2 + 36, SE024, 91 );
setStartTimeMs( SE024,  933 );
setPitch( spep_2 + 36, SE024, 400 );
setTimeStretch( SE024, 1.27, 30, 4 );

--瞬間移動
SE025 = playSeVer2( spep_2 + 0, 1109, "", 0, 0, 0, -1);

--体当たりで突っ込んでいく
SE026 = playSeVer2( spep_2 + 22, 1116, "",spep_2 + 58, 0, 18, -1);
SE027 = playSeVer2( spep_2 + 22, 9, "",spep_2 + 82, 0, 28, -1);
SE028 = playSeVer2( spep_2 + 24, 1277, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_2 + 28, 1258, "",spep_2 + 128, 0, 12, -1);
setSeVolumeByWorkId( spep_2 + 28, SE029, 63 );
SE030 = playSeVer2( spep_2 + 28, 1120, "", 0, 0, 0, -1);

--瞬間移動
SE034 = playSeVer2( spep_2 + 188, 1109, "", 0, 0, 0, -1);

--地面激突
SE031 = playSeVer2( spep_2 + 108, 1068, "", 0, 0, 0, -1);
SE032 = playSeVer2( spep_2 + 108, 1159, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_2 + 146, 1024, "", 0, 0, 0, -1);

--カメラズームアウト
SE035 = playSeVer2( spep_2 + 228, 1072, "", 0, 0, 0, 0.6);

--気弾溜め
SE036 = playSeVer2( spep_2 + 270, 1295, "",spep_2 + 336, 0, 12, -1);
SE037 = playSeVer2( spep_2 + 270, 1296, "",spep_2 + 338, 0, 14, -1);
setPitch( spep_2 + 270, SE037, -500 );
setTimeStretch( SE037, 0.67, 30, 4 );
SE038 = playSeVer2( spep_2 + 274, 1262, "",spep_2 + 336, 0, 12, -1);

--気弾発射
SE039 = playSeVer2( spep_2 + 322, 1193, "",spep_2 + 400, 0, 40, -1);
SE040 = playSeVer2( spep_2 + 322, 1145, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_3 = spep_2 + 336;

-------------------------------------------------
-- ダメージ表示　爆発(158f)
-------------------------------------------------

finish_f = entryEffect( spep_3 + 0, SP_06r, 0x100, -1, 0, 0, 0); -- ef_006
setEffMoveKey( spep_3 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_3 + 158, finish_f, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_3 + 158, finish_f, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_f, 0);
setEffRotateKey( spep_3 + 158, finish_f, 0);
setEffAlphaKey( spep_3 + 0, finish_f, 255);
setEffAlphaKey( spep_3 + 158, finish_f, 255);

finish_b = entryEffect( spep_3 + 0, SP_07r, 0x80, -1, 0, 0, 0); -- ef_007
setEffMoveKey( spep_3 + 0, finish_b, 0, 0 , 0);
setEffMoveKey( spep_3 + 158, finish_b, 0, 0 , 0);
setEffScaleKey( spep_3 + 0, finish_b, 1.0, 1.0);
setEffScaleKey( spep_3 + 158, finish_b, 1.0, 1.0);
setEffRotateKey( spep_3 + 0, finish_b, 0);
setEffRotateKey( spep_3 + 158, finish_b, 0);
setEffAlphaKey( spep_3 + 0, finish_b, 255);
setEffAlphaKey( spep_3 + 158, finish_b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 158 + 2, 0, 0, 0, 0, 255);  --黒 背景


-- ** 敵キャラクター ** --
OFFSET_3 = -1;

setDisp( spep_3 + 0, 1, 1 );
setDisp( spep_3 + 156 + OFFSET_3, 1, 0 );

changeAnime( spep_3 + 0, 1, 106 );

setMoveKey( spep_3 + 0, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 28 + OFFSET_3, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 29 + OFFSET_3, 1, 41.8, -101.5 , 0 );
setMoveKey( spep_3 + 30 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 31 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 32 + OFFSET_3, 1, 41.9, -85.5 , 0 );
setMoveKey( spep_3 + 33 + OFFSET_3, 1, 41.9, -85.5 , 0 );
setMoveKey( spep_3 + 34 + OFFSET_3, 1, 25.9, -101.5 , 0 );
setMoveKey( spep_3 + 35 + OFFSET_3, 1, 25.9, -101.5 , 0 );
setMoveKey( spep_3 + 36 + OFFSET_3, 1, 41.9, -117.5 , 0 );
setMoveKey( spep_3 + 37 + OFFSET_3, 1, 41.9, -117.5 , 0 );
setMoveKey( spep_3 + 38 + OFFSET_3, 1, 57.9, -93.5 , 0 );
setMoveKey( spep_3 + 39 + OFFSET_3, 1, 57.9, -93.5 , 0 );
setMoveKey( spep_3 + 40 + OFFSET_3, 1, 25.9, -93.5 , 0 );
setMoveKey( spep_3 + 41 + OFFSET_3, 1, 25.9, -93.5 , 0 );
setMoveKey( spep_3 + 42 + OFFSET_3, 1, 49.9, -117.5 , 0 );
setMoveKey( spep_3 + 43 + OFFSET_3, 1, 49.9, -117.5 , 0 );
setMoveKey( spep_3 + 44 + OFFSET_3, 1, 41.9, -77.5 , 0 );
setMoveKey( spep_3 + 46 + OFFSET_3, 1, 41.9, -77.5 , 0 );
setMoveKey( spep_3 + 47 + OFFSET_3, 1, 49.9, -109.5 , 0 );
setMoveKey( spep_3 + 156 + OFFSET_3, 1, 49.9, -109.5 , 0 );

setScaleKey( spep_3 + 0, 1, 0.5, 0.5 );
setScaleKey( spep_3 + 156 + OFFSET_3, 1, 0.5, 0.5 );

setRotateKey( spep_3 + 0, 1, 5.7 );
setRotateKey( spep_3 + 156 + OFFSET_3, 1, 5.7 );

-- ** 音 ** --
--気弾発射
SE041 = playSeVer2( spep_3 + 0 -6, 1130, "", 0, 0, 0, 0.6);
setPitch( spep_3 + 0 -6, SE041, 300 );
setTimeStretch( SE041, 1.2, 30, 4 );

--爆発
SE042 = playSeVer2( spep_3 + 30, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_3 + 30, 1159, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_3 + 38, 1067, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_3 + 54 ); -- ダメージ表示フレーム
endPhase( spep_3 + 158 - 4 ); -- 終了フレーム

end
