--1026130:LR_孫悟飯(幼年期)_ピッコロさんといっしょに！(ユニット)
--sp_effect_a7_00059
--sp2519

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
SP_01 = 161565;	--ダッシュ＆ジャンプ	ef_001		
SP_02 = 161566;	--ジャンプ続き	ef_002		ef_013と同時再生
SP_03 = 161577;	--背景	ef_013		ef_002と同時再生
SP_04 = 161567;	--気弾攻撃	ef_003		
SP_05 = 161568;	--敵に向かって行く気弾	ef_004		ef_014と同時再生
SP_06 = 161578;	--背景	ef_014		ef_004と同時再生
SP_07 = 161569;	--ピッコロ登場	ef_005		
SP_08 = 161570;	--敵に向かって行くピッコロ	ef_006		ef_015と同時再生
SP_09 = 161579;	--背景	ef_015		ef_006と同時再生
SP_10 = 161571;	--エルボー　ピッコロ	ef_007		ef_016と同時再生
SP_11 = 161580;	--背景	ef_016		ef_007と同時再生
SP_12 = 161572;	--アッパー　ピッコロ	ef_008		
SP_13 = 161573;	--アッパーヒット	ef_009		ef_017と同時再生
SP_14 = 161581;	--背景	ef_017		ef_009と同時再生
SP_15 = 161574;	--ピッコロ　顔アップ	ef_010		
SP_16 = 161575;	--衝撃波	ef_011		
SP_17 = 161576;	--爆風	ef_012		ef_018と同時再生
SP_18 = 161582;	--背景	ef_018		ef_012と同時再生


------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

multi_frm = 2;

setVisibleUI( 0, 0);

if( _IS_EXTRA_ATTACK_ == 0 ) then
    adjustAttackerLabel( 0, 205);
end

changeAnime( 0, 0, 0);
setDisp( 0, 0, 0);

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

ENABLE_AUTO_TIME_STRETCH(0.9);

kame_flag = 0x00;
if (_IS_SPECIAL_AIM_ALL_ == 0) then --- 全体必殺技の初回時
if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------
-- 味方側
------------------------------------------------------
------------------------------------------------------
-- ダッシュ＆ジャンプ(124F)
------------------------------------------------------
spep_0 = 0;

-- ** エフェクト等 ** --
first_f = entryEffect( spep_0 + 0, SP_01, 0x80, -1, 0, 0, 0 );  --ダッシュ＆ジャンプ	ef_001
setEffMoveKey( spep_0 + 0, first_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + 124, first_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, first_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + 124, first_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, first_f, 0 );
setEffRotateKey( spep_0 + 124, first_f, 0 );
setEffAlphaKey( spep_0 + 0, first_f, 255 );
setEffAlphaKey( spep_0 + 124 -2, first_f, 255 );
setEffAlphaKey( spep_0 + 124 -1, first_f, 255 );
setEffAlphaKey( spep_0 + 124, first_f, 0 );

spep_x = spep_0 + 10;
-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 );  --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 );  --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 );  --セリフカットイン差し替え

-- ** 敵キャラクター ** --
changeAnime( spep_0 + 0, 1, 16 );
setDisp( spep_0 + 0, 1, 1 );
--setDisp( spep_0 + 124, 1, 0 );

y0 = 1.0;
setMoveKey( spep_0 + 0, 1, 125.6, 462.5 , 0 );
--setMoveKey( spep_0 + 1, 1, 125.6, 462.5 , 0 );
setMoveKey( spep_0 + 1, 1, 125.6, 422.2 , 0 );
setMoveKey( spep_0 + 2, 1, 125.6, 422.2 , 0 );
setMoveKey( spep_0 -3 + 6, 1, 125.5, 387.5 , 0 );
setMoveKey( spep_0 -3 + 7, 1, 125.5, 387.5 , 0 );
setMoveKey( spep_0 -3 + 8, 1, 125.5, 358.2 , 0 );
setMoveKey( spep_0 -3 + 9, 1, 125.5, 358.2 , 0 );
setMoveKey( spep_0 -3 + 10, 1, 125.5, 333.8 , 0 );
setMoveKey( spep_0 -3 + 11, 1, 125.5, 333.8 , 0 );
setMoveKey( spep_0 -3 + 12, 1, 125.5, 313.7 , 0 );
setMoveKey( spep_0 -3 + 13, 1, 125.5, 313.7 , 0 );
setMoveKey( spep_0 -3 + 14, 1, 125.4, 297.7 , 0 );
setMoveKey( spep_0 -3 + 15, 1, 125.4, 297.7 , 0 );
setMoveKey( spep_0 -3 + 16, 1, 125.4, 285.2 , 0 );
setMoveKey( spep_0 -3 + 17, 1, 125.4, 285.2 , 0 );
setMoveKey( spep_0 -3 + 18, 1, 125.4, 275.9 , 0 );
setMoveKey( spep_0 -3 + 19, 1, 125.4, 275.9 , 0 );
setMoveKey( spep_0 -3 + 20, 1, 125.4, 269.1 , 0 );
setMoveKey( spep_0 -3 + 21, 1, 125.4, 269.1 , 0 );
setMoveKey( spep_0 -3 + 22, 1, 125.4, 264.6 , 0 );
setMoveKey( spep_0 -3 + 23, 1, 125.4, 264.6 , 0 );
setMoveKey( spep_0 -3 + 24, 1, 125.4, 261.9 , 0 );
setMoveKey( spep_0 -3 + 25, 1, 125.4, 261.9 , 0 );
setMoveKey( spep_0 -3 + 26, 1, 125.4, 260.5 , 0 );
setMoveKey( spep_0 -3 + 27, 1, 125.4, 260.5 , 0 );
setMoveKey( spep_0 -3 + 28, 1, 125.3, 260 , 0 );
setMoveKey( spep_0 -3 + 29, 1, 125.3, 260 , 0 );
setMoveKey( spep_0 -3 + 30, 1, 125.3, 260 , 0 );
setMoveKey( spep_0 -3 + 31, 1, 125.3, 260 , 0 );
setMoveKey( spep_0 -3 + 32, 1, 125.3, 258.3 , 0 );
setMoveKey( spep_0 -3 + 33, 1, 125.3, 258.3 , 0 );
setMoveKey( spep_0 -3 + 34, 1, 125.4, 256.7 , 0 );
setMoveKey( spep_0 -3 + 35, 1, 125.4, 256.7 , 0 );
setMoveKey( spep_0 -3 + 36, 1, 125.4, 255.1 , 0 );
setMoveKey( spep_0 -3 + 37, 1, 125.4, 255.1 , 0 );
setMoveKey( spep_0 -3 + 38, 1, 125.4, 253.5 , 0 );
setMoveKey( spep_0 -3 + 39, 1, 125.4, 253.5 , 0 );
setMoveKey( spep_0 -3 + 40, 1, 125.4, 251.9 , 0 );
setMoveKey( spep_0 -3 + 41, 1, 125.4, 251.9 , 0 );
setMoveKey( spep_0 -3 + 42, 1, 125.4, 250.3 , 0 );
setMoveKey( spep_0 -3 + 43, 1, 125.4, 250.3 , 0 );
setMoveKey( spep_0 -3 + 44, 1, 125.4, 248.7 , 0 );
setMoveKey( spep_0 -3 + 45, 1, 125.4, 248.7 , 0 );
setMoveKey( spep_0 -3 + 46, 1, 125.4, 247 , 0 );
setMoveKey( spep_0 -3 + 47, 1, 125.4, 247 , 0 );
setMoveKey( spep_0 -3 + 48, 1, 125.4, 245.4 , 0 );
setMoveKey( spep_0 -3 + 49, 1, 125.4, 245.4 , 0 );
setMoveKey( spep_0 -3 + 50, 1, 125.4, 243.8 , 0 );
setMoveKey( spep_0 -3 + 51, 1, 125.4, 243.8 , 0 );
setMoveKey( spep_0 -3 + 52, 1, 125.4, 242.1 , 0 );
setMoveKey( spep_0 -3 + 53, 1, 125.4, 242.1 , 0 );
setMoveKey( spep_0 -3 + 54, 1, 125.4, 240.5 , 0 );
setMoveKey( spep_0 -3 + 55, 1, 125.4, 240.5 , 0 );
setMoveKey( spep_0 -3 + 56, 1, 125.4, 238.9 , 0 );
setMoveKey( spep_0 -3 + 57, 1, 125.4, 238.9 , 0 );
setMoveKey( spep_0 -3 + 58, 1, 125.4, 237.2 , 0 );
setMoveKey( spep_0 -3 + 59, 1, 125.4, 237.2 , 0 );
setMoveKey( spep_0 -3 + 60, 1, 125.3, 235.6 , 0 );
setMoveKey( spep_0 -3 + 111, 1, 125.3, 235.6 , 0 );
setMoveKey( spep_0 -3 + 112, 1, 132.8, 190.6 , 0 );
setMoveKey( spep_0 -3 + 113, 1, 132.8, 190.6 , 0 );
setMoveKey( spep_0 -3 + 114, 1, 137.4, 178.3 , 0 );
setMoveKey( spep_0 -3 + 115, 1, 137.4, 178.3 , 0 );
setMoveKey( spep_0 -3 + 116, 1, 87.2, 296.8 , 0 );
setMoveKey( spep_0 -3 + 117, 1, 87.2, 296.8 , 0 );
setMoveKey( spep_0 -3 + 118, 1, 92, 287.6 , 0 );
setMoveKey( spep_0 -3 + 119, 1, 92, 287.6 , 0 );
setMoveKey( spep_0 -3 + 120, 1, 86.4, 293.1 , 0 );
setMoveKey( spep_0 -3 + 121, 1, 86.4, 293.1 , 0 );
setMoveKey( spep_0 -3 + 122, 1, 86.4, 293 , 0 );
setMoveKey( spep_0 -3 + 123, 1, 86.4, 293 , 0 );
setMoveKey( spep_0 -3 + 124, 1, 86.4, 292.8 , 0 );
setMoveKey( spep_0 -3 + 125, 1, 86.4, 292.8 , 0 );
setMoveKey( spep_0 -3 + 126, 1, 86.4, 292.8 -y0 , 0 );
--setMoveKey( spep_0 -3 + 127, 1, 86.4, 292.8 -y0 , 0 );

s0 = 0.16;
setScaleKey( spep_0 + 0, 1, 0.1, 0.1 );
--setScaleKey( spep_0 + 1, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1, 1, 0.13, 0.13 );
setScaleKey( spep_0 + 2, 1, 0.13, 0.13 );
setScaleKey( spep_0 -3 + 6, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 7, 1, 0.16, 0.16 );
setScaleKey( spep_0 -3 + 8, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 9, 1, 0.18, 0.18 );
setScaleKey( spep_0 -3 + 10, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 11, 1, 0.21, 0.21 );
setScaleKey( spep_0 -3 + 12, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 13, 1, 0.24, 0.24 );
setScaleKey( spep_0 -3 + 14, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 15, 1, 0.26, 0.26 );
setScaleKey( spep_0 -3 + 16, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 17, 1, 0.29, 0.29 );
setScaleKey( spep_0 -3 + 18, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 19, 1, 0.32, 0.32 );
setScaleKey( spep_0 -3 + 20, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 21, 1, 0.34, 0.34 );
setScaleKey( spep_0 -3 + 22, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 23, 1, 0.37, 0.37 );
setScaleKey( spep_0 -3 + 24, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 25, 1, 0.4, 0.4 );
setScaleKey( spep_0 -3 + 26, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 27, 1, 0.42, 0.42 );
setScaleKey( spep_0 -3 + 28, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 29, 1, 0.45, 0.45 );
setScaleKey( spep_0 -3 + 30, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 31, 1, 0.48, 0.48 );
setScaleKey( spep_0 -3 + 32, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 33, 1, 0.49, 0.49 );
setScaleKey( spep_0 -3 + 34, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 35, 1, 0.53, 0.53 );
setScaleKey( spep_0 -3 + 36, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 37, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 38, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 39, 1, 0.57, 0.57 );
setScaleKey( spep_0 -3 + 40, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 41, 1, 0.62, 0.62 );
setScaleKey( spep_0 -3 + 42, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 43, 1, 0.61, 0.61 );
setScaleKey( spep_0 -3 + 44, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 45, 1, 0.63, 0.63 );
setScaleKey( spep_0 -3 + 46, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 47, 1, 0.65, 0.65 );
setScaleKey( spep_0 -3 + 48, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 49, 1, 0.64, 0.64 );
setScaleKey( spep_0 -3 + 50, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 51, 1, 0.66, 0.66 );
setScaleKey( spep_0 -3 + 52, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 53, 1, 0.68, 0.68 );
setScaleKey( spep_0 -3 + 54, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 55, 1, 0.67, 0.67 );
setScaleKey( spep_0 -3 + 56, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 57, 1, 0.69, 0.69 );
setScaleKey( spep_0 -3 + 58, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 59, 1, 0.71, 0.71 );
setScaleKey( spep_0 -3 + 60, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 61, 1, 0.7, 0.7 );
setScaleKey( spep_0 -3 + 62, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 63, 1, 0.72, 0.72 );
setScaleKey( spep_0 -3 + 64, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 65, 1, 0.74, 0.74 );
setScaleKey( spep_0 -3 + 66, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 67, 1, 0.73, 0.73 );
setScaleKey( spep_0 -3 + 68, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 69, 1, 0.75, 0.75 );
setScaleKey( spep_0 -3 + 70, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 71, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 72, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 73, 1, 0.76, 0.76 );
setScaleKey( spep_0 -3 + 74, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 75, 1, 0.78, 0.78 );
setScaleKey( spep_0 -3 + 76, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 77, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 78, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 79, 1, 0.79, 0.79 );
setScaleKey( spep_0 -3 + 80, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 81, 1, 0.81, 0.81 );
setScaleKey( spep_0 -3 + 82, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 83, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 84, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 85, 1, 0.82, 0.82 );
setScaleKey( spep_0 -3 + 86, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 87, 1, 0.84, 0.84 );
setScaleKey( spep_0 -3 + 88, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 89, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 90, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 91, 1, 0.85, 0.85 );
setScaleKey( spep_0 -3 + 92, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 93, 1, 0.87, 0.87 );
setScaleKey( spep_0 -3 + 94, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 95, 1, 0.9, 0.9 );
setScaleKey( spep_0 -3 + 96, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 97, 1, 0.88, 0.88 );
setScaleKey( spep_0 -3 + 98, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 99, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 100, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 101, 1, 0.93, 0.93 );
setScaleKey( spep_0 -3 + 102, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 103, 1, 0.91, 0.91 );
setScaleKey( spep_0 -3 + 104, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 105, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 106, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 107, 1, 0.96, 0.96 );
setScaleKey( spep_0 -3 + 108, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 109, 1, 0.94, 0.94 );
setScaleKey( spep_0 -3 + 110, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 111, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 112, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 113, 1, 0.99, 0.99 );
setScaleKey( spep_0 -3 + 114, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 115, 1, 0.97, 0.97 );
setScaleKey( spep_0 -3 + 116, 1, 1, 1 );
setScaleKey( spep_0 -3 + 117, 1, 1, 1 );
setScaleKey( spep_0 -3 + 118, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 119, 1, 1.02, 1.02 );
setScaleKey( spep_0 -3 + 120, 1, 1, 1 );
setScaleKey( spep_0 -3 + 121, 1, 1, 1 );
setScaleKey( spep_0 -3 + 122, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 123, 1, 1.19, 1.19 );
setScaleKey( spep_0 -3 + 124, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 125, 1, 1.38, 1.38 );
setScaleKey( spep_0 -3 + 126, 1, 1.38 +s0, 1.38 +s0 );
--setScaleKey( spep_0 -3 + 127, 1, 1.38 +s0, 1.38 +s0 );

setRotateKey( spep_0 + 0, 1, 0 );
--setRotateKey( spep_0 + 1, 1, 0 );
setRotateKey( spep_0 + 1, 1, 0.1 );
setRotateKey( spep_0 + 2, 1, 0.1 );
setRotateKey( spep_0 -3 + 6, 1, 0.3 );
setRotateKey( spep_0 -3 + 7, 1, 0.3 );
setRotateKey( spep_0 -3 + 8, 1, 0.4 );
setRotateKey( spep_0 -3 + 9, 1, 0.4 );
setRotateKey( spep_0 -3 + 10, 1, 0.6 );
setRotateKey( spep_0 -3 + 11, 1, 0.6 );
setRotateKey( spep_0 -3 + 12, 1, 0.7 );
setRotateKey( spep_0 -3 + 13, 1, 0.7 );
setRotateKey( spep_0 -3 + 14, 1, 0.9 );
setRotateKey( spep_0 -3 + 15, 1, 0.9 );
setRotateKey( spep_0 -3 + 16, 1, 1 );
setRotateKey( spep_0 -3 + 17, 1, 1 );
setRotateKey( spep_0 -3 + 18, 1, 1.2 );
setRotateKey( spep_0 -3 + 19, 1, 1.2 );
setRotateKey( spep_0 -3 + 20, 1, 1.3 );
setRotateKey( spep_0 -3 + 21, 1, 1.3 );
setRotateKey( spep_0 -3 + 22, 1, 1.5 );
setRotateKey( spep_0 -3 + 23, 1, 1.5 );
setRotateKey( spep_0 -3 + 24, 1, 1.6 );
setRotateKey( spep_0 -3 + 25, 1, 1.6 );
setRotateKey( spep_0 -3 + 26, 1, 1.8 );
setRotateKey( spep_0 -3 + 27, 1, 1.8 );
setRotateKey( spep_0 -3 + 28, 1, 1.9 );
setRotateKey( spep_0 -3 + 29, 1, 1.9 );
setRotateKey( spep_0 -3 + 30, 1, 2.1 );
setRotateKey( spep_0 -3 + 31, 1, 2.1 );
setRotateKey( spep_0 -3 + 32, 1, 2.2 );
setRotateKey( spep_0 -3 + 33, 1, 2.2 );
setRotateKey( spep_0 -3 + 34, 1, 2.4 );
setRotateKey( spep_0 -3 + 35, 1, 2.4 );
setRotateKey( spep_0 -3 + 36, 1, 2.5 );
setRotateKey( spep_0 -3 + 37, 1, 2.5 );
setRotateKey( spep_0 -3 + 38, 1, 2.7 );
setRotateKey( spep_0 -3 + 39, 1, 2.7 );
setRotateKey( spep_0 -3 + 40, 1, 2.8 );
setRotateKey( spep_0 -3 + 41, 1, 2.8 );
setRotateKey( spep_0 -3 + 42, 1, 3 );
setRotateKey( spep_0 -3 + 43, 1, 3 );
setRotateKey( spep_0 -3 + 44, 1, 3.2 );
setRotateKey( spep_0 -3 + 45, 1, 3.2 );
setRotateKey( spep_0 -3 + 46, 1, 3.3 );
setRotateKey( spep_0 -3 + 47, 1, 3.3 );
setRotateKey( spep_0 -3 + 48, 1, 3.5 );
setRotateKey( spep_0 -3 + 49, 1, 3.5 );
setRotateKey( spep_0 -3 + 50, 1, 3.7 );
setRotateKey( spep_0 -3 + 51, 1, 3.7 );
setRotateKey( spep_0 -3 + 52, 1, 3.9 );
setRotateKey( spep_0 -3 + 53, 1, 3.9 );
setRotateKey( spep_0 -3 + 54, 1, 4 );
setRotateKey( spep_0 -3 + 55, 1, 4 );
setRotateKey( spep_0 -3 + 56, 1, 4.2 );
setRotateKey( spep_0 -3 + 57, 1, 4.2 );
setRotateKey( spep_0 -3 + 58, 1, 4.4 );
setRotateKey( spep_0 -3 + 59, 1, 4.4 );
setRotateKey( spep_0 -3 + 60, 1, 4.6 );
setRotateKey( spep_0 -3 + 61, 1, 4.6 );
setRotateKey( spep_0 -3 + 62, 1, 4.7 );
setRotateKey( spep_0 -3 + 63, 1, 4.7 );
setRotateKey( spep_0 -3 + 64, 1, 4.9 );
setRotateKey( spep_0 -3 + 65, 1, 4.9 );
setRotateKey( spep_0 -3 + 66, 1, 5.1 );
setRotateKey( spep_0 -3 + 67, 1, 5.1 );
setRotateKey( spep_0 -3 + 68, 1, 5.3 );
setRotateKey( spep_0 -3 + 69, 1, 5.3 );
setRotateKey( spep_0 -3 + 70, 1, 5.4 );
setRotateKey( spep_0 -3 + 71, 1, 5.4 );
setRotateKey( spep_0 -3 + 72, 1, 5.6 );
setRotateKey( spep_0 -3 + 73, 1, 5.6 );
setRotateKey( spep_0 -3 + 74, 1, 5.8 );
setRotateKey( spep_0 -3 + 75, 1, 5.8 );
setRotateKey( spep_0 -3 + 76, 1, 6 );
setRotateKey( spep_0 -3 + 77, 1, 6 );
setRotateKey( spep_0 -3 + 78, 1, 6.1 );
setRotateKey( spep_0 -3 + 79, 1, 6.1 );
setRotateKey( spep_0 -3 + 80, 1, 6.3 );
setRotateKey( spep_0 -3 + 81, 1, 6.3 );
setRotateKey( spep_0 -3 + 82, 1, 6.5 );
setRotateKey( spep_0 -3 + 83, 1, 6.5 );
setRotateKey( spep_0 -3 + 84, 1, 6.7 );
setRotateKey( spep_0 -3 + 85, 1, 6.7 );
setRotateKey( spep_0 -3 + 86, 1, 6.8 );
setRotateKey( spep_0 -3 + 87, 1, 6.8 );
setRotateKey( spep_0 -3 + 88, 1, 7 );
setRotateKey( spep_0 -3 + 89, 1, 7 );
setRotateKey( spep_0 -3 + 90, 1, 7.2 );
setRotateKey( spep_0 -3 + 91, 1, 7.2 );
setRotateKey( spep_0 -3 + 92, 1, 7.4 );
setRotateKey( spep_0 -3 + 93, 1, 7.4 );
setRotateKey( spep_0 -3 + 94, 1, 7.5 );
setRotateKey( spep_0 -3 + 95, 1, 7.5 );
setRotateKey( spep_0 -3 + 96, 1, 7.7 );
setRotateKey( spep_0 -3 + 97, 1, 7.7 );
setRotateKey( spep_0 -3 + 98, 1, 7.9 );
setRotateKey( spep_0 -3 + 99, 1, 7.9 );
setRotateKey( spep_0 -3 + 100, 1, 8.1 );
setRotateKey( spep_0 -3 + 101, 1, 8.1 );
setRotateKey( spep_0 -3 + 102, 1, 8.2 );
setRotateKey( spep_0 -3 + 103, 1, 8.2 );
setRotateKey( spep_0 -3 + 104, 1, 8.4 );
setRotateKey( spep_0 -3 + 105, 1, 8.4 );
setRotateKey( spep_0 -3 + 106, 1, 8.6 );
setRotateKey( spep_0 -3 + 107, 1, 8.6 );
setRotateKey( spep_0 -3 + 108, 1, 8.8 );
setRotateKey( spep_0 -3 + 109, 1, 8.8 );
setRotateKey( spep_0 -3 + 110, 1, 8.9 );
setRotateKey( spep_0 -3 + 111, 1, 8.9 );
setRotateKey( spep_0 -3 + 112, 1, 9.1 );
setRotateKey( spep_0 -3 + 113, 1, 9.1 );
setRotateKey( spep_0 -3 + 114, 1, 9.3 );
setRotateKey( spep_0 -3 + 115, 1, 9.3 );
setRotateKey( spep_0 -3 + 116, 1, 9.5 );
setRotateKey( spep_0 -3 + 117, 1, 9.5 );
setRotateKey( spep_0 -3 + 118, 1, 9.6 );
setRotateKey( spep_0 -3 + 118, 1, 9.6 );
setRotateKey( spep_0 -3 + 120, 1, 9.8 );
setRotateKey( spep_0 -3 + 126, 1, 9.8 );
--setRotateKey( spep_0 -3 + 127, 1, 9.8 );

-- ** 音 ** --
--風力音
SE001 = playSeVer2( spep_0 + 0, 1175, "",spep_0 + 184, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--走ってくる
SE002 = playSeVer2( spep_0 + 4, 1367, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 12, 1108, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 24, 1108, "", 0, 0, 0, -1);				
SE008 = playSeVer2( spep_0 + 38, 1108, "", 0, 0, 0, -1);				
SE009 = playSeVer2( spep_0 + 52, 1108, "", 0, 0, 0, -1);				
SE010 = playSeVer2( spep_0 + 64, 1108, "", 0, 0, 0, -1);				
SE011 = playSeVer2( spep_0 + 78, 1108, "", 0, 0, 0, -1);				
SE012 = playSeVer2( spep_0 + 92, 1108, "", 0, 0, 0, -1);				

--敵追ってくる
SE003 = playSeVer2( spep_0 + 4, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 4, SE003, 35 );
setTimeStretch( SE003, 2, 30, 4 );
SE006 = playSeVer2( spep_0 + 22, 1304, "",spep_0 + 154, 0, 12, -1);
setPitch( spep_0 + 22, SE006, -600 );
setTimeStretch( SE006, 0.6, 30, 4 );

--踏み込む
SE013 = playSeVer2( spep_0 + 98, 1367, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 102, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE014, 207 );

--顔カットイン
SE005 = playSeVer2( spep_x + 12, 1018, "", 0, 0, 0, -1);

--走ってくる
SE015 = playSeVer2( spep_0 + 108, 1108, "", 0, 0, 0, -1);

--飛び上がる
SE016 = playSeVer2( spep_0 + 110, 1182, "",spep_0 + 192, 0, 6, -1);
SE017 = playSeVer2( spep_0 + 110, 1117, "",spep_0 + 192, 0, 6, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, 124 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_1 = spep_0 + 124;


------------------------------------------------------
-- ジャンプ続き(58F)
------------------------------------------------------
--spep_1 = 0;

-- ** エフェクト等 ** --
jump_f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0 );  --ジャンプ続き	ef_002		ef_013と同時再生
setEffMoveKey( spep_1 + 0, jump_f, 0, 0 , 0 );
setEffMoveKey( spep_1 + 58, jump_f, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_f, 1.0, 1.0 );
setEffScaleKey( spep_1 + 58, jump_f, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_f, 0 );
setEffRotateKey( spep_1 + 58, jump_f, 0 );
setEffAlphaKey( spep_1 + 0, jump_f, 255 );
setEffAlphaKey( spep_1 + 58 -2, jump_f, 255 );
setEffAlphaKey( spep_1 + 58 -1, jump_f, 255 );
setEffAlphaKey( spep_1 + 58, jump_f, 0 );

jump_b = entryEffect( spep_1 + 0, SP_03, 0x80, -1, 0, 0, 0 );  --背景	ef_013		ef_002と同時再生
setEffMoveKey( spep_1 + 0, jump_b, 0, 0 , 0 );
setEffMoveKey( spep_1 + 58, jump_b, 0, 0 , 0 );
setEffScaleKey( spep_1 + 0, jump_b, 1.0, 1.0 );
setEffScaleKey( spep_1 + 58, jump_b, 1.0, 1.0 );
setEffRotateKey( spep_1 + 0, jump_b, 0 );
setEffRotateKey( spep_1 + 58, jump_b, 0 );
setEffAlphaKey( spep_1 + 0, jump_b, 255 );
setEffAlphaKey( spep_1 + 58 -2, jump_b, 255 );
setEffAlphaKey( spep_1 + 58 -1, jump_b, 255 );
setEffAlphaKey( spep_1 + 58, jump_b, 0 );

--setDisp( spep_1 + 0, 1, 1 );
setDisp( spep_1 + 58, 1, 0 );
changeAnime( spep_1 + 0, 1, 103 );

setMoveKey( spep_1 + 0, 1, 256, -521.3 , 0 );
--setMoveKey( spep_1 + 1, 1, 256, -521.3 , 0 );
setMoveKey( spep_1 + 1, 1, 246, -501.5 , 0 );
setMoveKey( spep_1 + 2, 1, 246, -501.5 , 0 );
setMoveKey( spep_1 -3 + 6, 1, 236.2, -481.9 , 0 );
setMoveKey( spep_1 -3 + 7, 1, 236.2, -481.9 , 0 );
setMoveKey( spep_1 -3 + 8, 1, 226.7, -462.8 , 0 );
setMoveKey( spep_1 -3 + 9, 1, 226.7, -462.8 , 0 );
setMoveKey( spep_1 -3 + 10, 1, 217.5, -444.1 , 0 );
setMoveKey( spep_1 -3 + 11, 1, 217.5, -444.1 , 0 );
setMoveKey( spep_1 -3 + 12, 1, 208.4, -426.1 , 0 );
setMoveKey( spep_1 -3 + 13, 1, 208.4, -426.1 , 0 );
setMoveKey( spep_1 -3 + 14, 1, 199.4, -408.8 , 0 );
setMoveKey( spep_1 -3 + 15, 1, 199.4, -408.8 , 0 );
setMoveKey( spep_1 -3 + 16, 1, 190.8, -392.2 , 0 );
setMoveKey( spep_1 -3 + 17, 1, 190.8, -392.2 , 0 );
setMoveKey( spep_1 -3 + 18, 1, 182.5, -376.2 , 0 );
setMoveKey( spep_1 -3 + 19, 1, 182.5, -376.2 , 0 );
setMoveKey( spep_1 -3 + 20, 1, 174.3, -360.9 , 0 );
setMoveKey( spep_1 -3 + 21, 1, 174.3, -360.9 , 0 );
setMoveKey( spep_1 -3 + 22, 1, 166.4, -346.2 , 0 );
setMoveKey( spep_1 -3 + 23, 1, 166.4, -346.2 , 0 );
setMoveKey( spep_1 -3 + 24, 1, 158.7, -332 , 0 );
setMoveKey( spep_1 -3 + 25, 1, 158.7, -332 , 0 );
setMoveKey( spep_1 -3 + 26, 1, 151.1, -318.4 , 0 );
setMoveKey( spep_1 -3 + 27, 1, 151.1, -318.4 , 0 );
setMoveKey( spep_1 -3 + 28, 1, 143.9, -305.2 , 0 );
setMoveKey( spep_1 -3 + 29, 1, 143.9, -305.2 , 0 );
setMoveKey( spep_1 -3 + 30, 1, 136.8, -292.4 , 0 );
setMoveKey( spep_1 -3 + 31, 1, 136.8, -292.4 , 0 );
setMoveKey( spep_1 -3 + 32, 1, 130, -279.9 , 0 );
setMoveKey( spep_1 -3 + 33, 1, 130, -279.9 , 0 );
setMoveKey( spep_1 -3 + 34, 1, 123.3, -267.8 , 0 );
setMoveKey( spep_1 -3 + 35, 1, 123.3, -267.8 , 0 );
setMoveKey( spep_1 -3 + 36, 1, 116.9, -256 , 0 );
setMoveKey( spep_1 -3 + 37, 1, 116.9, -256 , 0 );
setMoveKey( spep_1 -3 + 38, 1, 110.5, -244.5 , 0 );
setMoveKey( spep_1 -3 + 39, 1, 110.5, -244.5 , 0 );
setMoveKey( spep_1 -3 + 40, 1, 104.5, -233.4 , 0 );
setMoveKey( spep_1 -3 + 41, 1, 104.5, -233.4 , 0 );
setMoveKey( spep_1 -3 + 42, 1, 98.6, -222.4 , 0 );
setMoveKey( spep_1 -3 + 43, 1, 98.6, -222.4 , 0 );
setMoveKey( spep_1 -3 + 44, 1, 92.8, -211.7 , 0 );
setMoveKey( spep_1 -3 + 45, 1, 92.8, -211.7 , 0 );
setMoveKey( spep_1 -3 + 46, 1, 87.3, -201.3 , 0 );
setMoveKey( spep_1 -3 + 47, 1, 87.3, -201.3 , 0 );
setMoveKey( spep_1 -3 + 48, 1, 81.9, -191.1 , 0 );
setMoveKey( spep_1 -3 + 49, 1, 81.9, -191.1 , 0 );
setMoveKey( spep_1 -3 + 50, 1, 76.7, -181.2 , 0 );
setMoveKey( spep_1 -3 + 51, 1, 76.7, -181.2 , 0 );
setMoveKey( spep_1 -3 + 52, 1, 71.7, -171.6 , 0 );
setMoveKey( spep_1 -3 + 53, 1, 71.7, -171.6 , 0 );
setMoveKey( spep_1 -3 + 54, 1, 67, -162.2 , 0 );
setMoveKey( spep_1 -3 + 55, 1, 67, -162.2 , 0 );
setMoveKey( spep_1 -3 + 56, 1, 62.4, -153 , 0 );
setMoveKey( spep_1 -3 + 57, 1, 62.4, -153 , 0 );
setMoveKey( spep_1 -3 + 58, 1, 58, -144.1 , 0 );
setMoveKey( spep_1 -3 + 59, 1, 58, -144.1 , 0 );
setMoveKey( spep_1 -3 + 60, 1, 54, -135.1 , 0 );
setMoveKey( spep_1 -3 + 61, 1, 54, -135.1 , 0 );

setScaleKey( spep_1 + 0, 1, 0.84, 0.84 );
setScaleKey( spep_1 + 2, 1, 0.84, 0.84 );
setScaleKey( spep_1 -3 + 6, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 7, 1, 0.83, 0.83 );
setScaleKey( spep_1 -3 + 8, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 9, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 10, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 11, 1, 0.82, 0.82 );
setScaleKey( spep_1 -3 + 12, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 13, 1, 0.81, 0.81 );
setScaleKey( spep_1 -3 + 14, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 17, 1, 0.8, 0.8 );
setScaleKey( spep_1 -3 + 18, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 19, 1, 0.79, 0.79 );
setScaleKey( spep_1 -3 + 20, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 21, 1, 0.78, 0.78 );
setScaleKey( spep_1 -3 + 22, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 23, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 24, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 25, 1, 0.77, 0.77 );
setScaleKey( spep_1 -3 + 26, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 27, 1, 0.76, 0.76 );
setScaleKey( spep_1 -3 + 28, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 29, 1, 0.75, 0.75 );
setScaleKey( spep_1 -3 + 30, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 31, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 32, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 33, 1, 0.74, 0.74 );
setScaleKey( spep_1 -3 + 34, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 35, 1, 0.73, 0.73 );
setScaleKey( spep_1 -3 + 36, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 37, 1, 0.72, 0.72 );
setScaleKey( spep_1 -3 + 38, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 39, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 40, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 41, 1, 0.71, 0.71 );
setScaleKey( spep_1 -3 + 42, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 43, 1, 0.7, 0.7 );
setScaleKey( spep_1 -3 + 44, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 45, 1, 0.69, 0.69 );
setScaleKey( spep_1 -3 + 46, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 47, 1, 0.68, 0.68 );
setScaleKey( spep_1 -3 + 48, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 49, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 50, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 51, 1, 0.67, 0.67 );
setScaleKey( spep_1 -3 + 52, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 53, 1, 0.66, 0.66 );
setScaleKey( spep_1 -3 + 54, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 55, 1, 0.65, 0.65 );
setScaleKey( spep_1 -3 + 56, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 57, 1, 0.64, 0.64 );
setScaleKey( spep_1 -3 + 58, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 59, 1, 0.63, 0.63 );
setScaleKey( spep_1 -3 + 60, 1, 0.62, 0.62 );
setScaleKey( spep_1 -3 + 61, 1, 0.62, 0.62 );

setRotateKey( spep_1 + 0, 1, 58.4 );
--setRotateKey( spep_1 + 1, 1, 58.4 );
setRotateKey( spep_1 + 1, 1, 58.6 );
setRotateKey( spep_1 + 2, 1, 58.6 );
setRotateKey( spep_1 -3 + 6, 1, 58.9 );
setRotateKey( spep_1 -3 + 7, 1, 58.9 );
setRotateKey( spep_1 -3 + 8, 1, 59.2 );
setRotateKey( spep_1 -3 + 9, 1, 59.2 );
setRotateKey( spep_1 -3 + 10, 1, 59.5 );
setRotateKey( spep_1 -3 + 11, 1, 59.5 );
setRotateKey( spep_1 -3 + 12, 1, 59.8 );
setRotateKey( spep_1 -3 + 13, 1, 59.8 );
setRotateKey( spep_1 -3 + 14, 1, 60 );
setRotateKey( spep_1 -3 + 15, 1, 60 );
setRotateKey( spep_1 -3 + 16, 1, 60.3 );
setRotateKey( spep_1 -3 + 17, 1, 60.3 );
setRotateKey( spep_1 -3 + 18, 1, 60.6 );
setRotateKey( spep_1 -3 + 19, 1, 60.6 );
setRotateKey( spep_1 -3 + 20, 1, 60.9 );
setRotateKey( spep_1 -3 + 21, 1, 60.9 );
setRotateKey( spep_1 -3 + 22, 1, 61.1 );
setRotateKey( spep_1 -3 + 23, 1, 61.1 );
setRotateKey( spep_1 -3 + 24, 1, 61.4 );
setRotateKey( spep_1 -3 + 25, 1, 61.4 );
setRotateKey( spep_1 -3 + 26, 1, 61.7 );
setRotateKey( spep_1 -3 + 27, 1, 61.7 );
setRotateKey( spep_1 -3 + 28, 1, 62 );
setRotateKey( spep_1 -3 + 29, 1, 62 );
setRotateKey( spep_1 -3 + 30, 1, 62.2 );
setRotateKey( spep_1 -3 + 31, 1, 62.2 );
setRotateKey( spep_1 -3 + 32, 1, 62.5 );
setRotateKey( spep_1 -3 + 33, 1, 62.5 );
setRotateKey( spep_1 -3 + 34, 1, 62.8 );
setRotateKey( spep_1 -3 + 35, 1, 62.8 );
setRotateKey( spep_1 -3 + 36, 1, 63.1 );
setRotateKey( spep_1 -3 + 37, 1, 63.1 );
setRotateKey( spep_1 -3 + 38, 1, 63.4 );
setRotateKey( spep_1 -3 + 39, 1, 63.4 );
setRotateKey( spep_1 -3 + 40, 1, 63.6 );
setRotateKey( spep_1 -3 + 41, 1, 63.6 );
setRotateKey( spep_1 -3 + 42, 1, 63.9 );
setRotateKey( spep_1 -3 + 43, 1, 63.9 );
setRotateKey( spep_1 -3 + 44, 1, 64.2 );
setRotateKey( spep_1 -3 + 45, 1, 64.2 );
setRotateKey( spep_1 -3 + 46, 1, 64.5 );
setRotateKey( spep_1 -3 + 47, 1, 64.5 );
setRotateKey( spep_1 -3 + 48, 1, 64.7 );
setRotateKey( spep_1 -3 + 49, 1, 64.7 );
setRotateKey( spep_1 -3 + 50, 1, 65 );
setRotateKey( spep_1 -3 + 51, 1, 65 );
setRotateKey( spep_1 -3 + 52, 1, 65.3 );
setRotateKey( spep_1 -3 + 53, 1, 65.3 );
setRotateKey( spep_1 -3 + 54, 1, 65.6 );
setRotateKey( spep_1 -3 + 55, 1, 65.6 );
setRotateKey( spep_1 -3 + 56, 1, 65.9 );
setRotateKey( spep_1 -3 + 57, 1, 65.9 );
setRotateKey( spep_1 -3 + 58, 1, 66.1 );
setRotateKey( spep_1 -3 + 59, 1, 66.1 );
setRotateKey( spep_1 -3 + 60, 1, 66.4 );
setRotateKey( spep_1 -3 + 61, 1, 66.4 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, 58 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_1 + 50, 4, 4, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_c = spep_1 + 58;

--------------------------------------
--カードカットイン(94F) 
--------------------------------------
-- ** カードカットイン ** --
if (_SPECIAL_SKILL_LEVEL_ == 0) then
	print ("_SPECIAL_SKILL_LEVEL_ == 0");
    SE_CUTIN = playSe( spep_c, SE_05);
    speff = entryEffect( spep_c, 1507, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 1) then
	print ("_SPECIAL_SKILL_LEVEL_ == 1");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1120, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え

elseif(_SPECIAL_SKILL_LEVEL_ == 2) then
	print ("_SPECIAL_SKILL_LEVEL_ == 2");
    SE_CUTIN = playSe( spep_c, SE_05);
	speff = entryEffect( spep_c, 1121, 0, -1, 0, 0, 0); -- カード
	setEffReplaceTexture( speff, 1, 1);
	setEffReplaceTexture( speff, 2, 0); -- カード差し替え
	setEffReplaceTexture( speff, 5, 4); -- 技名テクスチャ差し替え
end

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
-- playSe( spep_c + 0, SE_05 );

--画面遷移
SE019 = playSeVer2( spep_c + 86, 8, "", 0, 0, 0, -1);


-- ** 白背景 ** --
entryFadeBg( spep_c + 0, 0, 96, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --白　背景

-- ** 白フェード ** --
entryFade( spep_c + 0, 0, 2, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
entryFade( spep_c + 80, 6, 8, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** 次の準備 ** --
spep_3 = spep_c + 94;

------------------------------------------------------
-- 気弾攻撃(154F)
------------------------------------------------------
--spep_3 = 0;

-- ** エフェクト等 ** --
masenkou = entryEffectLife( spep_3 + 0, SP_04, 153, 0x100, -1, 0, 0, 0 );  --気弾攻撃	ef_003
setEffMoveKey( spep_3 + 0, masenkou, 0, 0 , 0 );
setEffMoveKey( spep_3 + 153, masenkou, 0, 0 , 0 );
setEffScaleKey( spep_3 + 0, masenkou, 1.0, 1.0 );
setEffScaleKey( spep_3 + 153, masenkou, 1.0, 1.0 );
setEffRotateKey( spep_3 + 0, masenkou, 0 );
setEffRotateKey( spep_3 + 153, masenkou, 0 );
setEffAlphaKey( spep_3 + 0, masenkou, 255 );
setEffAlphaKey( spep_3 + 153 -2, masenkou, 255 );
setEffAlphaKey( spep_3 + 153 -1, masenkou, 255 );
setEffAlphaKey( spep_3 + 153, masenkou, 0 );

-- ** 音 ** --
--構える
SE020 = playSeVer2( spep_3 + 24, 1003, "", 0, 0, 0, -1);

--魔閃光溜め
SE021 = playSeVer2( spep_3 + 38, 1265, "",spep_3 + 132, 0, 20, -1);
setSeVolumeByWorkId( spep_3 + 38, SE021, 48 );
SE022 = playSeVer2( spep_3 + 38, 1296, "",spep_3 + 132, 0, 20, -1);
SE023 = playSeVer2( spep_3 + 38, 1396, "",spep_3 + 132, 0, 20, -1);
SE024 = playSeVer2( spep_3 + 38, 1262, "",spep_3 + 132, 0, 20, -1);

--魔閃光発射
SE025 = playSeVer2( spep_3 + 106, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_3 + 106, SE025, 81 );
SE026 = playSeVer2( spep_3 + 106, 1145, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_3 + 106, 1284, "",spep_3 + 234, 0, 34, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_3 + 0, 0, 154 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

------------------------------------------------------
-- 回避
------------------------------------------------------
if(_IS_DODGE_ == 1) then

    SP_dodge = spep_3 + 130; --エンドフェイズのフレーム数を置き換える
    
    playSe( SP_dodge-12, 1042);
    stopSe( SP_dodge - 12, SE019, 0);
    stopSe( SP_dodge - 12, SE021, 0);
    stopSe( SP_dodge - 12, SE022, 0);
    stopSe( SP_dodge - 12, SE023, 0);
    stopSe( SP_dodge - 12, SE024, 0);
    stopSe( SP_dodge - 12, SE025, 0);
    stopSe( SP_dodge - 12, SE026, 0);
    stopSe( SP_dodge - 12, SE027, 0);
    
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

--魔閃光飛んでいく
SE028 = playSeVer2( spep_3 + 144, 1202, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_3 + 144, SE028, 232 );

-- ** 次の準備 ** --
spep_4 = spep_3 + 153;


------------------------------------------------------
-- 敵に向かって行く気弾(98F)
------------------------------------------------------
--spep_4 = 0;

-- ** エフェクト等 ** --
shot_f = entryEffect( spep_4 + 0, SP_05, 0x100, -1, 0, 0, 0 );  --敵に向かって行く気弾	ef_004		ef_014と同時再生
setEffMoveKey( spep_4 + 0, shot_f, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shot_f, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_f, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, shot_f, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_f, 0 );
setEffRotateKey( spep_4 + 98, shot_f, 0 );
setEffAlphaKey( spep_4 + 0, shot_f, 255 );
setEffAlphaKey( spep_4 + 98 -2, shot_f, 255 );
setEffAlphaKey( spep_4 + 98 -1, shot_f, 255 );
setEffAlphaKey( spep_4 + 98, shot_f, 0 );

shot_b = entryEffect( spep_4 + 0, SP_06, 0x80, -1, 0, 0, 0 );  --背景	ef_014		ef_004と同時再生
setEffMoveKey( spep_4 + 0, shot_b, 0, 0 , 0 );
setEffMoveKey( spep_4 + 98, shot_b, 0, 0 , 0 );
setEffScaleKey( spep_4 + 0, shot_b, 1.0, 1.0 );
setEffScaleKey( spep_4 + 98, shot_b, 1.0, 1.0 );
setEffRotateKey( spep_4 + 0, shot_b, 0 );
setEffRotateKey( spep_4 + 98, shot_b, 0 );
setEffAlphaKey( spep_4 + 0, shot_b, 255 );
setEffAlphaKey( spep_4 + 98 -2, shot_b, 255 );
setEffAlphaKey( spep_4 + 98 -1, shot_b, 255 );
setEffAlphaKey( spep_4 + 98, shot_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_4 + 0, 1, 1 );
setDisp( spep_4 -3 + 101, 1, 0 );
changeAnime( spep_4 + 0, 1, 104 );

setMoveKey( spep_4 + 0, 1, 907.9, -177.7 , 0 );
--setMoveKey( spep_4 + 2, 1, 907.9, -177.7 , 0 );
setMoveKey( spep_4 + 1, 1, 849.6, -167.4 , 0 );
setMoveKey( spep_4 -3 + 6, 1, 781.2, -125 , 0 );
setMoveKey( spep_4 -3 + 7, 1, 781.2, -125 , 0 );
setMoveKey( spep_4 -3 + 8, 1, 696.4, -175.4 , 0 );
setMoveKey( spep_4 -3 + 9, 1, 696.4, -175.4 , 0 );
setMoveKey( spep_4 -3 + 10, 1, 649.7, -90.1 , 0 );
setMoveKey( spep_4 -3 + 11, 1, 649.7, -90.1 , 0 );
setMoveKey( spep_4 -3 + 12, 1, 597.7, -81 , 0 );
setMoveKey( spep_4 -3 + 13, 1, 597.7, -81 , 0 );
setMoveKey( spep_4 -3 + 14, 1, 489.2, -130.5 , 0 );
setMoveKey( spep_4 -3 + 15, 1, 489.2, -130.5 , 0 );
setMoveKey( spep_4 -3 + 16, 1, 451.3, -45.2 , 0 );
setMoveKey( spep_4 -3 + 17, 1, 451.3, -45.2 , 0 );
setMoveKey( spep_4 -3 + 18, 1, 379.5, -71.5 , 0 );
setMoveKey( spep_4 -3 + 19, 1, 379.5, -71.5 , 0 );
setMoveKey( spep_4 -3 + 20, 1, 316.7, -36.5 , 0 );
setMoveKey( spep_4 -3 + 21, 1, 316.7, -36.5 , 0 );
setMoveKey( spep_4 -3 + 22, 1, 257.9, -44.5 , 0 );
setMoveKey( spep_4 -3 + 23, 1, 257.9, -44.5 , 0 );
setMoveKey( spep_4 -3 + 24, 1, 203.8, -14.1 , 0 );
setMoveKey( spep_4 -3 + 25, 1, 203.8, -14.1 , 0 );
setMoveKey( spep_4 -3 + 26, 1, 154.6, -21.9 , 0 );
setMoveKey( spep_4 -3 + 27, 1, 154.6, -21.9 , 0 );
setMoveKey( spep_4 -3 + 28, 1, 110.8, 5.6 , 0 );
setMoveKey( spep_4 -3 + 29, 1, 110.8, 5.6 , 0 );
setMoveKey( spep_4 -3 + 30, 1, 72.3, -3.5 , 0 );
setMoveKey( spep_4 -3 + 31, 1, 72.3, -3.5 , 0 );
setMoveKey( spep_4 -3 + 32, 1, 39, 20.6 , 0 );
setMoveKey( spep_4 -3 + 33, 1, 39, 20.6 , 0 );
setMoveKey( spep_4 -3 + 34, 1, 10.7, 10.2 , 0 );
setMoveKey( spep_4 -3 + 35, 1, 10.7, 10.2 , 0 );
setMoveKey( spep_4 -3 + 36, 1, 10.7, 26.7 , 0 );
setMoveKey( spep_4 -3 + 37, 1, 10.7, 26.7 , 0 );
setMoveKey( spep_4 -3 + 38, 1, 10.7, 10.2 , 0 );
setMoveKey( spep_4 -3 + 39, 1, 10.7, 10.2 , 0 );
setMoveKey( spep_4 -3 + 40, 1, 16.4, 48.9 , 0 );
setMoveKey( spep_4 -3 + 41, 1, 16.4, 48.9 , 0 );
setMoveKey( spep_4 -3 + 42, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 43, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 44, 1, -23.8, -31.2 , 0 );
setMoveKey( spep_4 -3 + 45, 1, -23.8, -31.2 , 0 );
setMoveKey( spep_4 -3 + 46, 1, 35.3, 47.8 , 0 );
setMoveKey( spep_4 -3 + 47, 1, 35.3, 47.8 , 0 );
setMoveKey( spep_4 -3 + 48, 1, 16.5, -32.9 , 0 );
setMoveKey( spep_4 -3 + 49, 1, 16.5, -32.9 , 0 );
setMoveKey( spep_4 -3 + 50, 1, -9.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 51, 1, -9.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 52, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 53, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 54, 1, -14.1, -21.6 , 0 );
setMoveKey( spep_4 -3 + 55, 1, -14.1, -21.6 , 0 );
setMoveKey( spep_4 -3 + 56, 1, 13.2, 14.6 , 0 );
setMoveKey( spep_4 -3 + 57, 1, 13.2, 14.6 , 0 );
setMoveKey( spep_4 -3 + 58, 1, -9.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 59, 1, -9.4, 53.8 , 0 );
setMoveKey( spep_4 -3 + 60, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 61, 1, 28.8, 43 , 0 );
setMoveKey( spep_4 -3 + 62, 1, -14.1, -21.6 , 0 );
setMoveKey( spep_4 -3 + 63, 1, -14.1, -21.6 , 0 );
setMoveKey( spep_4 -3 + 64, 1, 22.9, 29.1 , 0 );
setMoveKey( spep_4 -3 + 65, 1, 22.9, 29.1 , 0 );
setMoveKey( spep_4 -3 + 66, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 67, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 68, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 69, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 70, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 71, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 72, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 73, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 74, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 75, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 76, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 77, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 78, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 79, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 80, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 81, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 82, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 83, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 84, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 85, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 86, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 87, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 88, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 89, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 90, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 91, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 92, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 93, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 94, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 95, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 96, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 97, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 98, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 99, 1, 6.1, 18.3 , 0 );
setMoveKey( spep_4 -3 + 100, 1, 10.7, 16.5 , 0 );
setMoveKey( spep_4 -3 + 101, 1, 10.7, 16.5 , 0 );

setScaleKey( spep_4 + 0, 1, 0.8, 0.8 );
setScaleKey( spep_4 -3 + 101, 1, 0.8, 0.8 );

setRotateKey( spep_4 + 0, 1, 0 );
setRotateKey( spep_4 -3 + 101, 1, 0 );

-- ** 音 ** --
--爆発
SE029 = playSeVer2( spep_4 + 32, 1023, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_4 + 32, 1024, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_4 + 32, 1159, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_4 + 32, SE031, 77 );

-- ** 黒背景 ** --
entryFadeBg( spep_4 + 0, 0, 98 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_5 = spep_4 + 98;


------------------------------------------------------
-- ピッコロ登場(132F)
------------------------------------------------------
--spep_5 = 0;

-- ** エフェクト等 ** --
pikkorosan = entryEffect( spep_5 + 0, SP_07, 0x100, -1, 0, 0, 0 );  --ピッコロ登場	ef_005
setEffMoveKey( spep_5 + 0, pikkorosan, 0, 0 , 0 );
setEffMoveKey( spep_5 + 132, pikkorosan, 0, 0 , 0 );
setEffScaleKey( spep_5 + 0, pikkorosan, 1.0, 1.0 );
setEffScaleKey( spep_5 + 132, pikkorosan, 1.0, 1.0 );
setEffRotateKey( spep_5 + 0, pikkorosan, 0 );
setEffRotateKey( spep_5 + 132, pikkorosan, 0 );
setEffAlphaKey( spep_5 + 0, pikkorosan, 255 );
setEffAlphaKey( spep_5 + 132 -2, pikkorosan, 255 );
setEffAlphaKey( spep_5 + 132 -1, pikkorosan, 255 );
setEffAlphaKey( spep_5 + 132, pikkorosan, 0 );

-- ** 音 ** --
--ピッコロ降りてくる
SE032 = playSeVer2( spep_5 + 12, 44, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_5 + 26, 1332, "", 0, 0, 0, -1);

--ピッコロ向かっていく
SE034 = playSeVer2( spep_5 + 100, 1182, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_5 + 100, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_5 + 100, SE035, 88 );
SE036 = playSeVer2( spep_5 + 100, 1277, "", 0, 0, 0, -1);

--ピッコロ向かっていく
SE037 = playSeVer2( spep_5 + 130, 1117, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_5 + 0, 0, 132 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_6 = spep_5 + 132;


------------------------------------------------------
-- 敵に向かって行くピッコロ(48F)
------------------------------------------------------
--spep_6 = 0;

-- ** エフェクト等 ** --
move_f = entryEffect( spep_6 + 0, SP_08, 0x100, -1, 0, 0, 0 );  --敵に向かって行くピッコロ	ef_006		ef_015と同時再生
setEffMoveKey( spep_6 + 0, move_f, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, move_f, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move_f, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, move_f, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move_f, 0 );
setEffRotateKey( spep_6 + 48, move_f, 0 );
setEffAlphaKey( spep_6 + 0, move_f, 255 );
setEffAlphaKey( spep_6 + 48 -2, move_f, 255 );
setEffAlphaKey( spep_6 + 48 -1, move_f, 255 );
setEffAlphaKey( spep_6 + 48, move_f, 0 );

move_b = entryEffect( spep_6 + 0, SP_09, 0x80, -1, 0, 0, 0 );  --背景	ef_015		ef_006と同時再生
setEffMoveKey( spep_6 + 0, move_b, 0, 0 , 0 );
setEffMoveKey( spep_6 + 48, move_b, 0, 0 , 0 );
setEffScaleKey( spep_6 + 0, move_b, 1.0, 1.0 );
setEffScaleKey( spep_6 + 48, move_b, 1.0, 1.0 );
setEffRotateKey( spep_6 + 0, move_b, 0 );
setEffRotateKey( spep_6 + 48, move_b, 0 );
setEffAlphaKey( spep_6 + 0, move_b, 255 );
setEffAlphaKey( spep_6 + 48 -2, move_b, 255 );
setEffAlphaKey( spep_6 + 48 -1, move_b, 255 );
setEffAlphaKey( spep_6 + 48, move_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_6 + 0, 1, 1 );
--setDisp( spep_6 + 48, 1, 0 );
changeAnime( spep_6 + 0, 1, 117 );

setMoveKey( spep_6 + 0, 1, 49.5, -32.4 , 0 );
setMoveKey( spep_6 -3 + 6, 1, 49.5, -32.4 , 0 );
setMoveKey( spep_6 -3 + 7, 1, 49.5, -32.4 , 0 );
setMoveKey( spep_6 -3 + 8, 1, 49.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 9, 1, 49.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 10, 1, 49.3, -32.4 , 0 );
setMoveKey( spep_6 -3 + 11, 1, 49.3, -32.4 , 0 );
setMoveKey( spep_6 -3 + 12, 1, 49.2, -32.4 , 0 );
setMoveKey( spep_6 -3 + 13, 1, 49.2, -32.4 , 0 );
setMoveKey( spep_6 -3 + 14, 1, 49, -32.4 , 0 );
setMoveKey( spep_6 -3 + 15, 1, 49, -32.4 , 0 );
setMoveKey( spep_6 -3 + 16, 1, 48.7, -32.4 , 0 );
setMoveKey( spep_6 -3 + 17, 1, 48.7, -32.4 , 0 );
setMoveKey( spep_6 -3 + 18, 1, 48.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 19, 1, 48.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 20, 1, 47.9, -32.4 , 0 );
setMoveKey( spep_6 -3 + 21, 1, 47.9, -32.4 , 0 );
setMoveKey( spep_6 -3 + 22, 1, 47.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 23, 1, 47.4, -32.4 , 0 );
setMoveKey( spep_6 -3 + 24, 1, 46.7, -32.4 , 0 );
setMoveKey( spep_6 -3 + 25, 1, 46.7, -32.4 , 0 );
setMoveKey( spep_6 -3 + 26, 1, 45.8, -32.4 , 0 );
setMoveKey( spep_6 -3 + 27, 1, 45.8, -32.4 , 0 );
setMoveKey( spep_6 -3 + 28, 1, 44.8, -32.5 , 0 );
setMoveKey( spep_6 -3 + 29, 1, 44.8, -32.5 , 0 );
setMoveKey( spep_6 -3 + 30, 1, 43.7, -32.5 , 0 );
setMoveKey( spep_6 -3 + 31, 1, 43.7, -32.5 , 0 );
setMoveKey( spep_6 -3 + 32, 1, 42.4, -32.5 , 0 );
setMoveKey( spep_6 -3 + 33, 1, 42.4, -32.5 , 0 );
setMoveKey( spep_6 -3 + 34, 1, 40.8, -32.5 , 0 );
setMoveKey( spep_6 -3 + 35, 1, 40.8, -32.5 , 0 );
setMoveKey( spep_6 -3 + 36, 1, 39.1, -32.6 , 0 );
setMoveKey( spep_6 -3 + 37, 1, 39.1, -32.6 , 0 );
setMoveKey( spep_6 -3 + 38, 1, 37.2, -32.6 , 0 );
setMoveKey( spep_6 -3 + 39, 1, 37.2, -32.6 , 0 );
setMoveKey( spep_6 -3 + 40, 1, 35, -32.6 , 0 );
setMoveKey( spep_6 -3 + 41, 1, 35, -32.6 , 0 );
setMoveKey( spep_6 -3 + 42, 1, 24.7, -38.2 , 0 );
setMoveKey( spep_6 -3 + 43, 1, 24.7, -38.2 , 0 );
setMoveKey( spep_6 -3 + 44, 1, 18.4, -41.6 , 0 );
setMoveKey( spep_6 -3 + 45, 1, 18.4, -41.6 , 0 );
setMoveKey( spep_6 -3 + 46, 1, 15.1, -43.3 , 0 );
setMoveKey( spep_6 -3 + 47, 1, 15.1, -43.3 , 0 );
setMoveKey( spep_6 -3 + 48, 1, 14, -44 , 0 );
setMoveKey( spep_6 -3 + 49, 1, 14, -44 , 0 );
setMoveKey( spep_6 -3 + 50, 1, 13, -44.5 , 0 );
--setMoveKey( spep_6 -3 + 51, 1, 13, -44.5 , 0 );

setScaleKey( spep_6 + 0, 1, 0.53, 0.53 );
setScaleKey( spep_6 -3 + 8, 1, 0.53, 0.53 );
setScaleKey( spep_6 -3 + 9, 1, 0.53, 0.53 );
setScaleKey( spep_6 -3 + 10, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 17, 1, 0.54, 0.54 );
setScaleKey( spep_6 -3 + 18, 1, 0.55, 0.55 );
setScaleKey( spep_6 -3 + 19, 1, 0.55, 0.55 );
setScaleKey( spep_6 -3 + 20, 1, 0.56, 0.56 );
setScaleKey( spep_6 -3 + 21, 1, 0.56, 0.56 );
setScaleKey( spep_6 -3 + 22, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 23, 1, 0.57, 0.57 );
setScaleKey( spep_6 -3 + 24, 1, 0.58, 0.58 );
setScaleKey( spep_6 -3 + 25, 1, 0.58, 0.58 );
setScaleKey( spep_6 -3 + 26, 1, 0.59, 0.59 );
setScaleKey( spep_6 -3 + 27, 1, 0.59, 0.59 );
setScaleKey( spep_6 -3 + 28, 1, 0.61, 0.61 );
setScaleKey( spep_6 -3 + 29, 1, 0.61, 0.61 );
setScaleKey( spep_6 -3 + 30, 1, 0.63, 0.63 );
setScaleKey( spep_6 -3 + 31, 1, 0.63, 0.63 );
setScaleKey( spep_6 -3 + 32, 1, 0.65, 0.65 );
setScaleKey( spep_6 -3 + 33, 1, 0.65, 0.65 );
setScaleKey( spep_6 -3 + 34, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 35, 1, 0.67, 0.67 );
setScaleKey( spep_6 -3 + 36, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 37, 1, 0.7, 0.7 );
setScaleKey( spep_6 -3 + 38, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 39, 1, 0.73, 0.73 );
setScaleKey( spep_6 -3 + 40, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 41, 1, 0.77, 0.77 );
setScaleKey( spep_6 -3 + 42, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 43, 1, 0.99, 0.99 );
setScaleKey( spep_6 -3 + 44, 1, 1.12, 1.12 );
setScaleKey( spep_6 -3 + 45, 1, 1.12, 1.12 );
setScaleKey( spep_6 -3 + 46, 1, 1.19, 1.19 );
setScaleKey( spep_6 -3 + 47, 1, 1.19, 1.19 );
setScaleKey( spep_6 -3 + 48, 1, 1.22, 1.22 );
setScaleKey( spep_6 -3 + 49, 1, 1.22, 1.22 );
setScaleKey( spep_6 -3 + 50, 1, 1.24, 1.24 );
--setScaleKey( spep_6 -3 + 51, 1, 1.24, 1.24 );

setRotateKey( spep_6 + 0, 1, 4.8 );
setRotateKey( spep_6 -3 + 50, 1, 4.8 );
--setRotateKey( spep_6 -3 + 51, 1, 4.8 );

-- ** 音 ** --


-- ** 黒背景 ** --
entryFadeBg( spep_6 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_7 = spep_6 + 48;


------------------------------------------------------
-- エルボー(46F)
------------------------------------------------------
--spep_7 = 0;

-- ** エフェクト等 ** --
elbow_f = entryEffect( spep_7 + 0, SP_10, 0x100, -1, 0, 0, 0 );  --エルボー　ピッコロ	ef_007		ef_016と同時再生
setEffMoveKey( spep_7 + 0, elbow_f, 0, 0 , 0 );
setEffMoveKey( spep_7 + 48, elbow_f, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_f, 1.0, 1.0 );
setEffScaleKey( spep_7 + 48, elbow_f, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_f, 0 );
setEffRotateKey( spep_7 + 48, elbow_f, 0 );
setEffAlphaKey( spep_7 + 0, elbow_f, 255 );
setEffAlphaKey( spep_7 + 48 -2, elbow_f, 255 );
setEffAlphaKey( spep_7 + 48 -1, elbow_f, 255 );
setEffAlphaKey( spep_7 + 48, elbow_f, 0 );

elbow_b = entryEffect( spep_7 + 0, SP_11, 0x80, -1, 0, 0, 0 );  --背景	ef_016		ef_007と同時再生
setEffMoveKey( spep_7 + 0, elbow_b, 0, 0 , 0 );
setEffMoveKey( spep_7 + 48, elbow_b, 0, 0 , 0 );
setEffScaleKey( spep_7 + 0, elbow_b, 1.0, 1.0 );
setEffScaleKey( spep_7 + 48, elbow_b, 1.0, 1.0 );
setEffRotateKey( spep_7 + 0, elbow_b, 0 );
setEffRotateKey( spep_7 + 48, elbow_b, 0 );
setEffAlphaKey( spep_7 + 0, elbow_b, 255 );
setEffAlphaKey( spep_7 + 48 -2, elbow_b, 255 );
setEffAlphaKey( spep_7 + 48 -1, elbow_b, 255 );
setEffAlphaKey( spep_7 + 48, elbow_b, 0 );

-- ** 敵キャラクター ** --
--setDisp( spep_7 + 0, 1, 1 );
setDisp( spep_7 -3 + 51, 1, 0 );
changeAnime( spep_7 + 0, 1, 117 );
changeAnime( spep_7 -3 + 20, 1, 108 );
changeAnime( spep_7 -3 + 24, 1, 106 );
changeAnime( spep_7 -3 + 26, 1, 108 );

setMoveKey( spep_7 + 0, 1, 870.2, 15.3 , 0 );
setMoveKey( spep_7 + 1, 1, 773.2, 11 , 0 );
setMoveKey( spep_7 -3 + 6, 1, 677, 6.7 , 0 );
setMoveKey( spep_7 -3 + 8, 1, 582.1, 2.5 , 0 );
setMoveKey( spep_7 -3 + 10, 1, 489.4, -1.6 , 0 );
setMoveKey( spep_7 -3 + 12, 1, 399.5, -5.6 , 0 );
setMoveKey( spep_7 -3 + 14, 1, 313, -9.5 , 0 );
setMoveKey( spep_7 -3 + 16, 1, 230.4, -13.1 , 0 );
setMoveKey( spep_7 -3 + 19, 1, 152, -16.7 , 0 );
setMoveKey( spep_7 -3 + 20, 1, 358.1, -65.8 , 0 );
setMoveKey( spep_7 -3 + 23, 1, 298.8, -11.8 , 0 );
setMoveKey( spep_7 -3 + 24, 1, 321.3, -59.7 , 0 );
setMoveKey( spep_7 -3 + 25, 1, 321.3, -59.7 , 0 );
setMoveKey( spep_7 -3 + 26, 1, 282.9, -10.3 , 0 );
setMoveKey( spep_7 -3 + 28, 1, 302, -5.4 , 0 );
setMoveKey( spep_7 -3 + 30, 1, 295.9, -8.2 , 0 );
setMoveKey( spep_7 -3 + 32, 1, 306.4, -3.6 , 0 );
setMoveKey( spep_7 -3 + 34, 1, 306.1, -5.8 , 0 );
setMoveKey( spep_7 -3 + 36, 1, 316.8, -1.7 , 0 );
setMoveKey( spep_7 -3 + 38, 1, 311.9, -3.9 , 0 );
setMoveKey( spep_7 -3 + 40, 1, 324.5, 0.2 , 0 );
setMoveKey( spep_7 -3 + 42, 1, 315.7, -2.5 , 0 );
setMoveKey( spep_7 -3 + 44, 1, 317, -0.9 , 0 );
setMoveKey( spep_7 -3 + 46, 1, 318.9, 1.3 , 0 );
setMoveKey( spep_7 -3 + 48, 1, 315.8, 0 , 0 );
setMoveKey( spep_7 -3 + 50, 1, 318.9, 1.9 , 0 );
setMoveKey( spep_7 -3 + 51, 1, 318.9, 1.9 , 0 );

setScaleKey( spep_7 + 0, 1, 2.63, 2.63 );
setScaleKey( spep_7 -3 + 19, 1, 2.63, 2.63 );
setScaleKey( spep_7 -3 + 20, 1, 3.56, 3.56 );
setScaleKey( spep_7 -3 + 23, 1, 3, 3 );
setScaleKey( spep_7 -3 + 24, 1, 2.98, 2.98 );
setScaleKey( spep_7 -3 + 25, 1, 2.98, 2.98 );
setScaleKey( spep_7 -3 + 26, 1, 3, 3 );
setScaleKey( spep_7 -3 + 51, 1, 3, 3 );

setRotateKey( spep_7 -3 + 0, 1, 4.8 );
setRotateKey( spep_7 -3 + 23, 1, 4.8 );
setRotateKey( spep_7 -3 + 24, 1, -29.1 );
setRotateKey( spep_7 -3 + 25, 1, -29.1 );
setRotateKey( spep_7 -3 + 26, 1, 4.8 );
setRotateKey( spep_7 -3 + 51, 1, 4.8 );

-- ** 音 ** --
--ピッコロエルボー
SE038 = playSeVer2( spep_7 + 2, 1003, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_7 + 14, 1153, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_7 + 14, 1187, "", 0, 0, 0, -1);

--振りかぶる
SE041 = playSeVer2( spep_7 + 44, 1116, "",spep_7 + 38, 0, 18, -1);
SE042 = playSeVer2( spep_7 + 44, 1399, "",spep_7 + 148, 0, 76, -1);
setSeVolumeByWorkId( spep_7 + 44, SE042, 141 );
SE043 = playSeVer2( spep_7 + 44, 1278, "",spep_7 + 138, 0, 66, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_7 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_8 = spep_7 + 48;


------------------------------------------------------
-- アッパー(48F)
------------------------------------------------------
--spep_8 = 0;

-- ** エフェクト等 ** --
upper = entryEffect( spep_8 + 0, SP_12, 0x100, -1, 0, 0, 0 );  --アッパー　ピッコロ	ef_008
setEffMoveKey( spep_8 + 0, upper, 0, 0 , 0 );
setEffMoveKey( spep_8 + 48, upper, 0, 0 , 0 );
setEffScaleKey( spep_8 + 0, upper, 1.0, 1.0 );
setEffScaleKey( spep_8 + 48, upper, 1.0, 1.0 );
setEffRotateKey( spep_8 + 0, upper, 0 );
setEffRotateKey( spep_8 + 48, upper, 0 );
setEffAlphaKey( spep_8 + 0, upper, 255 );
setEffAlphaKey( spep_8 + 48 -2, upper, 255 );
setEffAlphaKey( spep_8 + 48 -1, upper, 255 );
setEffAlphaKey( spep_8 + 48, upper, 0 );

-- ** 音 ** --
--パンチ
SE044 = playSeVer2( spep_8 + 24, 1120, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_8 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_9 = spep_8 + 48;


------------------------------------------------------
-- アッパーヒット(28F)
------------------------------------------------------
--spep_9 = 0;

-- ** エフェクト等 ** --
hit_f = entryEffect( spep_9 + 0, SP_13, 0x100, -1, 0, 0, 0 );  --アッパーヒット	ef_009		ef_017と同時再生
setEffMoveKey( spep_9 + 0, hit_f, 0, 0 , 0 );
setEffMoveKey( spep_9 + 28, hit_f, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_f, 1.0, 1.0 );
setEffScaleKey( spep_9 + 28, hit_f, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_f, 0 );
setEffRotateKey( spep_9 + 28, hit_f, 0 );
setEffAlphaKey( spep_9 + 0, hit_f, 255 );
setEffAlphaKey( spep_9 + 28 -2, hit_f, 255 );
setEffAlphaKey( spep_9 + 28 -1, hit_f, 255 );
setEffAlphaKey( spep_9 + 28, hit_f, 0 );

hit_b = entryEffect( spep_9 + 0, SP_14, 0x80, -1, 0, 0, 0 );  --背景	ef_017		ef_009と同時再生
setEffMoveKey( spep_9 + 0, hit_b, 0, 0 , 0 );
setEffMoveKey( spep_9 + 28, hit_b, 0, 0 , 0 );
setEffScaleKey( spep_9 + 0, hit_b, 1.0, 1.0 );
setEffScaleKey( spep_9 + 28, hit_b, 1.0, 1.0 );
setEffRotateKey( spep_9 + 0, hit_b, 0 );
setEffRotateKey( spep_9 + 28, hit_b, 0 );
setEffAlphaKey( spep_9 + 0, hit_b, 255 );
setEffAlphaKey( spep_9 + 28 -2, hit_b, 255 );
setEffAlphaKey( spep_9 + 28 -1, hit_b, 255 );
setEffAlphaKey( spep_9 + 28, hit_b, 0 );

-- ** 敵キャラクター ** --
setDisp( spep_9 + 0, 1, 1 );
setDisp( spep_9 + 28, 1, 0 );
changeAnime( spep_9 + 0, 1, 106 );

x9 = 8.1;
y9 = 12;
setMoveKey( spep_9 + 0, 1, 67.8, 127.9 , 0 );
setMoveKey( spep_9 + 1, 1, 54.9, 151.4 , 0 );
setMoveKey( spep_9 + 2, 1, 54.9, 151.4 , 0 );
setMoveKey( spep_9 -3 + 6, 1, 76.2, 130.6 , 0 );
setMoveKey( spep_9 -3 + 7, 1, 76.2, 130.6 , 0 );
setMoveKey( spep_9 -3 + 8, 1, 58, 166.2 , 0 );
setMoveKey( spep_9 -3 + 9, 1, 58, 166.2 , 0 );
setMoveKey( spep_9 -3 + 10, 1, 74.2, 149.7 , 0 );
setMoveKey( spep_9 -3 + 11, 1, 74.2, 149.7 , 0 );
setMoveKey( spep_9 -3 + 12, 1, 60.6, 181.8 , 0 );
setMoveKey( spep_9 -3 + 13, 1, 60.6, 181.8 , 0 );
setMoveKey( spep_9 -3 + 14, 1, 73.7, 169.8 , 0 );
setMoveKey( spep_9 -3 + 15, 1, 73.7, 169.8 , 0 );
setMoveKey( spep_9 -3 + 16, 1, 65, 194.7 , 0 );
setMoveKey( spep_9 -3 + 17, 1, 65, 194.7 , 0 );
setMoveKey( spep_9 -3 + 18, 1, 67.1, 204.5 , 0 );
setMoveKey( spep_9 -3 + 20, 1, 69.8, 214.8 , 0 );
setMoveKey( spep_9 -3 + 22, 1, 73.3, 225.5 , 0 );
setMoveKey( spep_9 -3 + 24, 1, 77.9, 236.9 , 0 );
setMoveKey( spep_9 -3 + 26, 1, 83.9, 249.1 , 0 );
setMoveKey( spep_9 -3 + 28, 1, 92, 262.6 , 0 );
setMoveKey( spep_9 -3 + 30, 1, 92 +x9, 262.6 +y9 , 0 );
setMoveKey( spep_9 -3 + 31, 1, 92 +x9, 262.6 +y9 , 0 );

setScaleKey( spep_9 + 0, 1, 2.34, 2.34 );
setScaleKey( spep_9 -3 + 31, 1, 2.34, 2.34 );

setRotateKey( spep_9 + 0, 1, -43.9 );
setRotateKey( spep_9 + 1, 1, -43.1 );
setRotateKey( spep_9 + 2, 1, -43.1 );
setRotateKey( spep_9 -3 + 6, 1, -42.3 );
setRotateKey( spep_9 -3 + 7, 1, -42.3 );
setRotateKey( spep_9 -3 + 8, 1, -41.5 );
setRotateKey( spep_9 -3 + 9, 1, -41.5 );
setRotateKey( spep_9 -3 + 10, 1, -40.6 );
setRotateKey( spep_9 -3 + 11, 1, -40.6 );
setRotateKey( spep_9 -3 + 12, 1, -39.8 );
setRotateKey( spep_9 -3 + 13, 1, -39.8 );
setRotateKey( spep_9 -3 + 14, 1, -39 );
setRotateKey( spep_9 -3 + 15, 1, -39 );
setRotateKey( spep_9 -3 + 16, 1, -38.1 );
setRotateKey( spep_9 -3 + 17, 1, -38.1 );
setRotateKey( spep_9 -3 + 18, 1, -37.3 );
setRotateKey( spep_9 -3 + 20, 1, -36.5 );
setRotateKey( spep_9 -3 + 22, 1, -35.6 );
setRotateKey( spep_9 -3 + 24, 1, -34.8 );
setRotateKey( spep_9 -3 + 26, 1, -34 );
setRotateKey( spep_9 -3 + 28, 1, -33.2 );
setRotateKey( spep_9 -3 + 30, 1, -32.4 );
setRotateKey( spep_9 -3 + 31, 1, -32.4 );

-- ** 音 ** --

-- ** 黒背景 ** --
entryFadeBg( spep_9 + 0, 0, 28 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_10 = spep_9 + 28;


------------------------------------------------------
-- ピッコロ　顔アップ(48F)
------------------------------------------------------
--spep_10 = 0;

-- ** エフェクト等 ** --
faceup = entryEffect( spep_10 + 0, SP_15, 0x100, -1, 0, 0, 0 );  --ピッコロ　顔アップ	ef_010
setEffMoveKey( spep_10 + 0, faceup, 0, 0 , 0 );
setEffMoveKey( spep_10 + 48, faceup, 0, 0 , 0 );
setEffScaleKey( spep_10 + 0, faceup, 1.0, 1.0 );
setEffScaleKey( spep_10 + 48, faceup, 1.0, 1.0 );
setEffRotateKey( spep_10 + 0, faceup, 0 );
setEffRotateKey( spep_10 + 48, faceup, 0 );
setEffAlphaKey( spep_10 + 0, faceup, 255 );
setEffAlphaKey( spep_10 + 48 -2, faceup, 255 );
setEffAlphaKey( spep_10 + 48 -1, faceup, 255 );
setEffAlphaKey( spep_10 + 48, faceup, 0 );

-- ** 音 ** --
--目見開く
SE045 = playSeVer2( spep_10 + 16, 1237, "", 0, 2, 0, 0.6);
setStartTimeMs( SE045,  217 );
SE046 = playSeVer2( spep_10 + 14, 1048, "", 0, 0, 0, 0.6);
SE047 = playSeVer2( spep_10 + 16, 1179, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_10 + 16, 1170, "",spep_10 + 44, 0, 10, -1);

--ピッコロ光放つ
SE049 = playSeVer2( spep_10 + 44, 1122, "", 0, 0, 0, 0.6);
SE050 = playSeVer2( spep_10 + 44, 1264, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_10 + 44, SE050, 88 );
SE051 = playSeVer2( spep_10 + 44, 1303, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_10 + 44, SE051, 84 );
SE052 = playSeVer2( spep_10 + 44, 1320, "", 0, 0, 0, 0.6);
setSeVolumeByWorkId( spep_10 + 44, SE052, 84 );
SE053 = playSeVer2( spep_10 + 44, 1258, "", 0, 0, 0, 0.6);

-- ** 黒背景 ** --
entryFadeBg( spep_10 + 0, 0, 48 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_11 = spep_10 + 48;


------------------------------------------------------
-- 衝撃波(118F)
------------------------------------------------------
--spep_11 = 0;

-- ** エフェクト等 ** --
wave = entryEffect( spep_11 + 0, SP_16, 0x100, -1, 0, 0, 0 );  --衝撃波	ef_011		
setEffMoveKey( spep_11 + 0, wave, 0, 0 , 0 );
setEffMoveKey( spep_11 + 118, wave, 0, 0 , 0 );
setEffScaleKey( spep_11 + 0, wave, 1.0, 1.0 );
setEffScaleKey( spep_11 + 118, wave, 1.0, 1.0 );
setEffRotateKey( spep_11 + 0, wave, 0 );
setEffRotateKey( spep_11 + 118, wave, 0 );
setEffAlphaKey( spep_11 + 0, wave, 255 );
setEffAlphaKey( spep_11 + 118 -2, wave, 255 );
setEffAlphaKey( spep_11 + 118 -1, wave, 255 );
setEffAlphaKey( spep_11 + 118, wave, 0 );

-- ** 音 ** --
--ピッコロ光放つ
SE054 = playSeVer2( spep_11 + 16, 1157, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_11 + 0, 0, 118 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 次の準備 ** --
spep_12 = spep_11 + 118;


------------------------------------------------------
-- 爆風(148F)
------------------------------------------------------
--spep_12 = 0;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_12 + 0, SP_17, 0x100, -1, 0, 0, 0 );  --爆風	ef_012
setEffMoveKey( spep_12 + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_12 + 148, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_12 + 148, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish_f, 0 );
setEffRotateKey( spep_12 + 148, finish_f, 0 );
setEffAlphaKey( spep_12 + 0, finish_f, 255 );
setEffAlphaKey( spep_12 + 148, finish_f, 255 );

finish_b = entryEffect( spep_12 + 0, SP_18, 0x80, -1, 0, 0, 0 );  --背景	ef_018
setEffMoveKey( spep_12 + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_12 + 148, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_12 + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_12 + 148, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_12 + 0, finish_b, 0 );
setEffRotateKey( spep_12 + 148, finish_b, 0 );
setEffAlphaKey( spep_12 + 0, finish_b, 255 );
setEffAlphaKey( spep_12 + 148, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_12 + 0, 1, 1 );
setDisp( spep_12 -3 + 34, 1, 0 );
changeAnime( spep_12 + 0, 1, 105 );

setMoveKey( spep_12 + 0, 1, -722.5, -434.4 , 0 );
setMoveKey( spep_12 + 1, 1, -659.3, -394 , 0 );
setMoveKey( spep_12 -3 + 6, 1, -601.4, -361.5 , 0 );
setMoveKey( spep_12 -3 + 8, 1, -547.4, -334.8 , 0 );
setMoveKey( spep_12 -3 + 10, 1, -496.4, -312.6 , 0 );
setMoveKey( spep_12 -3 + 12, 1, -447.8, -294.1 , 0 );
setMoveKey( spep_12 -3 + 14, 1, -401.2, -278.7 , 0 );
setMoveKey( spep_12 -3 + 16, 1, -356.3, -266 , 0 );
setMoveKey( spep_12 -3 + 18, 1, -312.9, -255.8 , 0 );
setMoveKey( spep_12 -3 + 20, 1, -270.8, -247.8 , 0 );
setMoveKey( spep_12 -3 + 22, 1, -229.9, -242 , 0 );
setMoveKey( spep_12 -3 + 24, 1, -190, -238.1 , 0 );
setMoveKey( spep_12 -3 + 26, 1, -151.2, -236.4 , 0 );
setMoveKey( spep_12 -3 + 28, 1, -113.5, -236.8 , 0 );
setMoveKey( spep_12 -3 + 30, 1, -76.8, -239.7 , 0 );
setMoveKey( spep_12 -3 + 32, 1, -31.9, -284.6 , 0 );
setMoveKey( spep_12 -3 + 34, 1, -31.9, -284.6 , 0 );
--setMoveKey( spep_12 -3 + 36, 1, -31.9, -284.6 , 0 );

setScaleKey( spep_12 + 0, 1, 7.27, 7.27 );
setScaleKey( spep_12 + 1, 1, 6.82, 6.82 );
setScaleKey( spep_12 -3 + 6, 1, 6.37, 6.37 );
setScaleKey( spep_12 -3 + 8, 1, 5.92, 5.92 );
setScaleKey( spep_12 -3 + 10, 1, 5.48, 5.48 );
setScaleKey( spep_12 -3 + 12, 1, 5.03, 5.03 );
setScaleKey( spep_12 -3 + 14, 1, 4.58, 4.58 );
setScaleKey( spep_12 -3 + 16, 1, 4.13, 4.13 );
setScaleKey( spep_12 -3 + 18, 1, 3.69, 3.69 );
setScaleKey( spep_12 -3 + 20, 1, 3.24, 3.24 );
setScaleKey( spep_12 -3 + 22, 1, 2.79, 2.79 );
setScaleKey( spep_12 -3 + 24, 1, 2.34, 2.34 );
setScaleKey( spep_12 -3 + 26, 1, 1.9, 1.9 );
setScaleKey( spep_12 -3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_12 -3 + 30, 1, 1, 1 );
setScaleKey( spep_12 -3 + 32, 1, 0.59, 0.59 );
setScaleKey( spep_12 -3 + 34, 1, 0.59, 0.59 );
--setScaleKey( spep_12 -3 + 36, 1, 0.59, 0.59 );

setRotateKey( spep_12 + 0, 1, 3.5 );
setRotateKey( spep_12 + 1, 1, 9.1 );
setRotateKey( spep_12 -3 + 6, 1, 14.7 );
setRotateKey( spep_12 -3 + 8, 1, 20.2 );
setRotateKey( spep_12 -3 + 10, 1, 25.8 );
setRotateKey( spep_12 -3 + 12, 1, 31.4 );
setRotateKey( spep_12 -3 + 14, 1, 37 );
setRotateKey( spep_12 -3 + 16, 1, 42.5 );
setRotateKey( spep_12 -3 + 18, 1, 48.1 );
setRotateKey( spep_12 -3 + 20, 1, 53.7 );
setRotateKey( spep_12 -3 + 22, 1, 59.3 );
setRotateKey( spep_12 -3 + 24, 1, 64.9 );
setRotateKey( spep_12 -3 + 26, 1, 70.4 );
setRotateKey( spep_12 -3 + 28, 1, 76 );
setRotateKey( spep_12 -3 + 30, 1, 81.6 );
setRotateKey( spep_12 -3 + 32, 1, 87.4 );
setRotateKey( spep_12 -3 + 34, 1, 87.4 );
--setRotateKey( spep_12 -3 + 36, 1, 87.4 );

-- ** 音 ** --
--【全体攻撃】敵吹き飛ぶ
SE055 = playSeVer2( spep_12 + 2, 1258, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_12 + 8, 1027, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_12 + 26, 1023, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_12 + 30, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_12 + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_12 + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--entryFade( spep_12 + 118, 8, 22, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_12 + 34 );
endPhase( spep_12 + 138 );


else

------------------------------------------------------
-- 敵側
------------------------------------------------------


end

end

------------------------------------------------------
-- ２人目以降の演出
------------------------------------------------------

if (_IS_SPECIAL_AIM_ALL_ == 1) then
------------------------------------------------------
-- 全体攻撃 (46F)
------------------------------------------------------

spep_z = 0;

setVisibleUI( spep_z, 0);
setDisp( spep_z, 0, 0);

------------------------------------------------------
-- 回避
------------------------------------------------------

    if(_IS_DODGE_ == 1) then

    SP_dodge = spep_z; --エンドフェイズのフレーム数を置き換える

    playSe( SP_dodge-12, 1042);

    speff = entryEffectUnpausable(  SP_dodge-12,   1504,   0x100,     -1,  0,  0,  -350);   -- eff_005 (カットイン)
    setEffReplaceTexture( speff, 3, 6);                           -- カットイン差し替え

    kaihi = entryEffectUnpausable(  SP_dodge,   1575,  0x100,     -1,  0,  0,  350);   -- 回避の文字表示
        if (_IS_PLAYER_SIDE_ == 1) then

            setEffScaleKey( SP_dodge, kaihi, 1.0, 1.0);

        else

            setEffScaleKey( SP_dodge, kaihi, -1.0, 1.0);

        end

    setEffAlphaKey( SP_dodge, kaihi, 255);

    pauseAll( SP_dodge, 67);

    entryFade( SP_dodge+5, 4,  7, 4, fcolor_r, fcolor_g, fcolor_b, 255);     -- white fade

    endPhase(SP_dodge+10);
    do return end
    else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_z + 0, SP_17, 0x100, -1, 0, 0, 0 );  --爆風	ef_012
setEffMoveKey( spep_z + 0, finish_f, 0, 0 , 0 );
setEffMoveKey( spep_z + 148, finish_f, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_f, 1.0, 1.0 );
setEffScaleKey( spep_z + 148, finish_f, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_f, 0 );
setEffRotateKey( spep_z + 148, finish_f, 0 );
setEffAlphaKey( spep_z + 0, finish_f, 255 );
setEffAlphaKey( spep_z + 148, finish_f, 255 );

finish_b = entryEffect( spep_z + 0, SP_18, 0x80, -1, 0, 0, 0 );  --背景	ef_018
setEffMoveKey( spep_z + 0, finish_b, 0, 0 , 0 );
setEffMoveKey( spep_z + 148, finish_b, 0, 0 , 0 );
setEffScaleKey( spep_z + 0, finish_b, 1.0, 1.0 );
setEffScaleKey( spep_z + 148, finish_b, 1.0, 1.0 );
setEffRotateKey( spep_z + 0, finish_b, 0 );
setEffRotateKey( spep_z + 148, finish_b, 0 );
setEffAlphaKey( spep_z + 0, finish_b, 255 );
setEffAlphaKey( spep_z + 148, finish_b, 255 );

-- ** 敵キャラクター ** --
setDisp( spep_z + 0, 1, 1 );
setDisp( spep_z -3 + 34, 1, 0 );
changeAnime( spep_z + 0, 1, 105 );

setMoveKey( spep_z + 0, 1, -722.5, -434.4 , 0 );
setMoveKey( spep_z + 1, 1, -659.3, -394 , 0 );
setMoveKey( spep_z -3 + 6, 1, -601.4, -361.5 , 0 );
setMoveKey( spep_z -3 + 8, 1, -547.4, -334.8 , 0 );
setMoveKey( spep_z -3 + 10, 1, -496.4, -312.6 , 0 );
setMoveKey( spep_z -3 + 12, 1, -447.8, -294.1 , 0 );
setMoveKey( spep_z -3 + 14, 1, -401.2, -278.7 , 0 );
setMoveKey( spep_z -3 + 16, 1, -356.3, -266 , 0 );
setMoveKey( spep_z -3 + 18, 1, -312.9, -255.8 , 0 );
setMoveKey( spep_z -3 + 20, 1, -270.8, -247.8 , 0 );
setMoveKey( spep_z -3 + 22, 1, -229.9, -242 , 0 );
setMoveKey( spep_z -3 + 24, 1, -190, -238.1 , 0 );
setMoveKey( spep_z -3 + 26, 1, -151.2, -236.4 , 0 );
setMoveKey( spep_z -3 + 28, 1, -113.5, -236.8 , 0 );
setMoveKey( spep_z -3 + 30, 1, -76.8, -239.7 , 0 );
setMoveKey( spep_z -3 + 32, 1, -31.9, -284.6 , 0 );
setMoveKey( spep_z -3 + 34, 1, -31.9, -284.6 , 0 );
--setMoveKey( spep_z -3 + 36, 1, -31.9, -284.6 , 0 );

setScaleKey( spep_z + 0, 1, 7.27, 7.27 );
setScaleKey( spep_z + 1, 1, 6.82, 6.82 );
setScaleKey( spep_z -3 + 6, 1, 6.37, 6.37 );
setScaleKey( spep_z -3 + 8, 1, 5.92, 5.92 );
setScaleKey( spep_z -3 + 10, 1, 5.48, 5.48 );
setScaleKey( spep_z -3 + 12, 1, 5.03, 5.03 );
setScaleKey( spep_z -3 + 14, 1, 4.58, 4.58 );
setScaleKey( spep_z -3 + 16, 1, 4.13, 4.13 );
setScaleKey( spep_z -3 + 18, 1, 3.69, 3.69 );
setScaleKey( spep_z -3 + 20, 1, 3.24, 3.24 );
setScaleKey( spep_z -3 + 22, 1, 2.79, 2.79 );
setScaleKey( spep_z -3 + 24, 1, 2.34, 2.34 );
setScaleKey( spep_z -3 + 26, 1, 1.9, 1.9 );
setScaleKey( spep_z -3 + 28, 1, 1.45, 1.45 );
setScaleKey( spep_z -3 + 30, 1, 1, 1 );
setScaleKey( spep_z -3 + 32, 1, 0.59, 0.59 );
setScaleKey( spep_z -3 + 34, 1, 0.59, 0.59 );
--setScaleKey( spep_z -3 + 36, 1, 0.59, 0.59 );

setRotateKey( spep_z + 0, 1, 3.5 );
setRotateKey( spep_z + 1, 1, 9.1 );
setRotateKey( spep_z -3 + 6, 1, 14.7 );
setRotateKey( spep_z -3 + 8, 1, 20.2 );
setRotateKey( spep_z -3 + 10, 1, 25.8 );
setRotateKey( spep_z -3 + 12, 1, 31.4 );
setRotateKey( spep_z -3 + 14, 1, 37 );
setRotateKey( spep_z -3 + 16, 1, 42.5 );
setRotateKey( spep_z -3 + 18, 1, 48.1 );
setRotateKey( spep_z -3 + 20, 1, 53.7 );
setRotateKey( spep_z -3 + 22, 1, 59.3 );
setRotateKey( spep_z -3 + 24, 1, 64.9 );
setRotateKey( spep_z -3 + 26, 1, 70.4 );
setRotateKey( spep_z -3 + 28, 1, 76 );
setRotateKey( spep_z -3 + 30, 1, 81.6 );
setRotateKey( spep_z -3 + 32, 1, 87.4 );
setRotateKey( spep_z -3 + 34, 1, 87.4 );
--setRotateKey( spep_z -3 + 36, 1, 87.4 );

-- ** 音 ** --
--【全体攻撃】敵吹き飛ぶ
SE055 = playSeVer2( spep_z + 2, 1258, "", 0, 0, 0, -1);
SE056 = playSeVer2( spep_z + 8, 1027, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_z + 26, 1023, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_z + 30, 1159, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_z + 0, 0, 148 + 2, 0, 0, 0, 0, 255);       -- ベース暗め　背景

-- ** 白フェード ** --
entryFade( spep_z + 0, 0, 6, 4, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade
--entryFade( spep_z + 50, 8, 92, 0, fcolor_r, fcolor_g, fcolor_b, 255 );  --white fade

-- ** ダメージ表示 ** --
dealDamage( spep_z + 6 );
endPhase( spep_z + 96 );

end