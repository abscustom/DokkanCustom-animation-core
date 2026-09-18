--1027710 :UR_超フルパワーサイヤ人4・限界突破ベジット(ゼノ)_必殺技：ギャラクシースピリッツソード
--sp_effect_b4_00307
--sp2631

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162395;	--開幕〜奥に向かって蹴るまで	ef_001
SP_01b = 162397;	--開幕〜奥に向かって蹴るまで	ef_001b
SP_02 = 162399;	--巨大な剣を出現させる〜フィニッシュまで	ef_002
SP_02b = 162401;	--巨大な剣を出現させる〜フィニッシュまで	ef_002b

--エフェクト(てき)
SP_01r = 162396;	--開幕〜奥に向かって蹴るまで	ef_001r
SP_01br = 162398;	--開幕〜奥に向かって蹴るまで	ef_001br
SP_02r = 162400;	--巨大な剣を出現させる〜フィニッシュまで	ef_002r
SP_02br = 162402;	--巨大な剣を出現させる〜フィニッシュまで	ef_002br


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

ENABLE_AUTO_TIME_STRETCH(0.85);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜奥に向かって蹴るまで
-------------------------------------------------

MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01b, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 60;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, 0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, 1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, 1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, 1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, 1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 190 );  --黒背景

-- ** 敵キャラクター ** --
-- 敵の動き1
smk_1 = 1.15;

setDisp(spep_0 + 62 + OFFSET_X, 1, 1);
setDisp(spep_0 + 166 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 62 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 62 + OFFSET_X, 1, 3009.4, -2136.1 * smk_1, 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, 3009.4, -2136.1 * smk_1, 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, 2961.1, -2102.4 * smk_1, 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, 2961.1, -2102.4 * smk_1, 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, 2889.5, -2053.1 * smk_1, 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, 2889.5, -2053.1 * smk_1, 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, 2786.9, -1983.3 * smk_1, 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, 2786.9, -1983.3 * smk_1, 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, 2640.7, -1884.5 * smk_1, 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, 2640.7, -1884.5 * smk_1, 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, 2429.9, -1743.4 * smk_1, 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, 2429.9, -1743.4 * smk_1, 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, 2127.2, -1541.9 * smk_1, 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, 2127.2, -1541.9 * smk_1, 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, 1743.6, -1287.3 * smk_1, 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, 1743.6, -1287.3 * smk_1, 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, 1382.2, -1046.8 * smk_1, 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, 1382.2, -1046.8 * smk_1, 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, 1105.9, -861.3 * smk_1, 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 1105.9, -861.3 * smk_1, 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 901.9, -722.5 * smk_1, 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 901.9, -722.5 * smk_1, 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 748.3, -616.3 * smk_1, 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 748.3, -616.3 * smk_1, 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 630.7, -533.8 * smk_1, 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 630.7, -533.8 * smk_1, 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 539.1, -468.7 * smk_1, 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 539.1, -468.7 * smk_1, 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 467.1, -416.7 * smk_1, 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 467.1, -416.7 * smk_1, 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 410.2, -375 * smk_1, 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 410.2, -375 * smk_1, 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 365.2, -341.5 * smk_1, 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 365.2, -341.5 * smk_1, 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 330, -314.7 * smk_1, 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 330, -314.7 * smk_1, 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 302.6, -293.5 * smk_1, 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 302.6, -293.5 * smk_1, 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 282, -277 * smk_1, 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 282, -277 * smk_1, 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 267, -264.6 * smk_1, 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 267, -264.6 * smk_1, 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 256.9, -255.8 * smk_1, 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 256.9, -255.8 * smk_1, 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 251, -250.1 * smk_1, 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 251, -250.1 * smk_1, 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 248.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 248.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 248.4, -246.7 * smk_1, 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 248.4, -246.7 * smk_1, 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 248.2, -245.9 * smk_1, 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 248.2, -245.9 * smk_1, 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 248.1, -245.7 * smk_1, 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 248.1, -245.7 * smk_1, 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 248.2, -245.8 * smk_1, 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 248.2, -245.8 * smk_1, 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 248.4, -246.1 * smk_1, 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 248.4, -246.1 * smk_1, 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 248.9, -246.8 * smk_1, 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 248.9, -246.8 * smk_1, 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 249.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 249.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 251.4, -250 * smk_1, 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 251.4, -250 * smk_1, 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 253.7, -253.1 * smk_1, 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 253.7, -253.1 * smk_1, 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 257.2, -257.6 * smk_1, 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 257.2, -257.6 * smk_1, 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 262, -263.9 * smk_1, 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 262, -263.9 * smk_1, 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 268.5, -272.3 * smk_1, 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 268.5, -272.3 * smk_1, 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 277, -283.4 * smk_1, 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 277, -283.4 * smk_1, 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 288, -297.6 * smk_1, 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 288, -297.6 * smk_1, 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 301.8, -315.5 * smk_1, 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 301.8, -315.5 * smk_1, 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 318.9, -337.7 * smk_1, 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 318.9, -337.7 * smk_1, 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 339.9, -364.9 * smk_1, 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 339.9, -364.9 * smk_1, 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 365.1, -397.6 * smk_1, 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 365.1, -397.6 * smk_1, 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 395.2, -436.6 * smk_1, 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 395.2, -436.6 * smk_1, 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 430.8, -482.7 * smk_1, 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 430.8, -482.7 * smk_1, 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 472.4, -536.7 * smk_1, 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 472.4, -536.7 * smk_1, 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 520.8, -593.4 * smk_1, 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 520.8, -593.4 * smk_1, 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 576.6, -677.7 * smk_1, 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 576.6, -677.7 * smk_1, 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 640.6, -742.6 * smk_1, 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 640.6, -742.6 * smk_1, 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 713.4, -861.1 * smk_1, 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 713.4, -861.1 * smk_1, 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 795.9, -948.1 * smk_1, 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 795.9, -948.1 * smk_1, 0 );

setScaleKey( spep_0 + 62 + OFFSET_X, 1, 19.19, 19.19 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 19.19, 19.19 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 18.93, 18.93 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 18.93, 18.93 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 18.55, 18.55 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 18.55, 18.55 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 18.02, 18.02 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 18.02, 18.02 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 17.26, 17.26 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 17.26, 17.26 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 16.18, 16.18 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 16.18, 16.18 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 8.4, 8.4 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 8.4, 8.4 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 8.71, 8.71 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 8.71, 8.71 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 10.45, 10.45 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 10.45, 10.45 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 12.74, 12.74 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 12.74, 12.74 );

setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp(spep_0 + 178 + OFFSET_X, 1, 1);
setDisp(spep_0 + 457 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 178 + OFFSET_X, 1, 118 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 328 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 352 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 394 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, 286.1, -580.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 286.1, -580.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 275.5, -572.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 275.5, -572.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 260.4, -561.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 260.4, -561.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 300.3, -622.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 300.3, -622.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 299.4, -618.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 299.4, -618.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 330.1, -663.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 330.1, -663.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 343.2, -680.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 343.2, -680.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 381.7, -724.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 381.7, -724.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 429.8, -780.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 429.8, -780.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 493.7, -854.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 493.7, -854.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 567.8, -939.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 567.8, -939.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 652.9, -1033.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, 652.9, -1033.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 750.9, -1136.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, 750.9, -1136.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, 863.5, -1250.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, 863.5, -1250.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, 993, -1375.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, 993, -1375.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, 1141.9, -1512.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, 1141.9, -1512.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, 1313.3, -1664.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, 1313.3, -1664.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, 1510.3, -1830.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, 1510.3, -1830.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, 1736.8, -2013.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, 1736.8, -2013.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, 1997.3, -2215.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, 1997.3, -2215.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -66.1, -718.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -66.1, -718.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -154.8, -589.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, -154.8, -589.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -206.2, -432 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, -206.2, -432 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, -231.9, -444.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, -231.9, -444.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, -244.2, -445.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, -244.2, -445.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, -307.6, -498.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, -307.6, -498.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, -356.3, -539 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, -356.3, -539 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, -459.1, -634.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, -459.1, -634.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, -559.7, -729.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, -559.7, -729.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, -696, -861.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, -696, -861.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, -870, -1033.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, -870, -1033.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, -1087.5, -1240.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, -1087.5, -1240.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, -1359.4, -1488.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, -1359.4, -1488.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, -1699.2, -1785.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, -1699.2, -1785.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, -1700.9, -2142.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -1700.9, -2142.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -2126.1, -2571.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -2126.1, -2571.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 698.7, -802.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, 698.7, -802.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 686.9, -788.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 686.9, -788.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 651.5, -746.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 651.5, -746.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 592.5, -677.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 592.5, -677.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 509.9, -580.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 509.9, -580.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 383.4, -392.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 383.4, -392.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 304.6, -331 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 304.6, -331 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 248.2, -286.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 248.2, -286.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 218.4, -249.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 218.4, -249.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 179.4, -247.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 179.4, -247.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 167.7, -221.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 167.7, -221.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 179.3, -234.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 179.3, -234.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 257.5, -130.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 257.5, -130.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 232.8, -153.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 232.8, -153.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 232.1, -128.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 232.1, -128.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 255.3, -151.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 255.3, -151.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 254.6, -126.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 254.6, -126.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 229.9, -149.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 229.9, -149.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 229.2, -124.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 229.2, -124.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 252.4, -147.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 252.4, -147.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 251.7, -122.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 251.7, -122.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 9.7, -225.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 9.7, -225.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 9.8, -200.4 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 9.8, -200.4 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 34, -223.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 34, -223.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 30.2, -201.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 30.2, -201.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 14.3, -216.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 14.3, -216.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 14.5, -199 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 14.5, -199 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 30.6, -213.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 30.6, -213.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 34.8, -192.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, 34.8, -192.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 10.9, -214.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, 10.9, -214.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, 11.1, -189.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, 11.1, -189.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, 35.2, -212.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, 35.2, -212.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, 198.9, -162.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, 198.9, -162.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, 174.3, -185.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, 174.3, -185.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, 173.8, -159.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, 173.8, -159.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, 197.3, -182.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, 197.3, -182.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, 192.7, -161.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, 192.7, -161.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, 176.2, -176.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, 176.2, -176.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, 175.6, -158.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, 175.6, -158.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, 191.1, -173.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, 191.1, -173.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, 190.6, -156.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, 190.6, -156.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, 174, -171.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, 174, -171.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, 173.5, -153.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, 173.5, -153.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, 180.9, -160.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, 180.9, -160.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 82.7, 39.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 82.7, 39.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 82.5, 39.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 82.5, 39.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 82.4, 39.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 82.4, 39.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 82.2, 39.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 82.2, 39.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 81.9, 39.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 81.9, 39.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 81.6, 39.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 81.6, 39.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 81.2, 39.5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 81.2, 39.5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 88.8, 47.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 88.8, 47.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 72.4, 31.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 72.4, 31.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 71.9, 47.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 71.9, 47.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 87.3, 31.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 87.3, 31.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 86.8, 47.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 86.8, 47.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 70.1, 31.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 70.1, 31.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 69.4, 47.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 69.4, 47.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 84.7, 31.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 84.7, 31.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 25.4, 46 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 25.4, 46 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 67, 99.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 67, 99.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 80.9, 114.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 80.9, 114.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 117.9, 162.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 117.9, 162.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 130.6, 178.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 130.6, 178.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 159.2, 212.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 159.2, 212.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 160.9, 219.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 160.9, 219.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 191.8, 255.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 191.8, 255.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 187.1, 254.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 187.1, 254.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 195.6, 281.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 195.6, 281.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 217.1, 273.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 217.1, 273.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 214.2, 287.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 214.2, 287.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 209.4, 283.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 209.4, 283.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 205.7, 287.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 205.7, 287.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 209.2, 276.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 209.2, 276.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 204.1, 278.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 204.1, 278.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 194.9, 269.1 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 194.9, 269.1 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 189.1, 270.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 189.1, 270.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 191.3, 257.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 191.3, 257.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 184.8, 258.3 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 184.8, 258.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 180.4, 254.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 180.4, 254.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 179.5, 260.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 179.5, 260.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 187, 254.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 187, 254.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 186.1, 260.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 186.1, 260.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 181.7, 256.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 181.7, 256.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 180.8, 263.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 180.8, 263.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 188.3, 256.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 188.3, 256.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 187.5, 263.4 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 187.5, 263.4 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 183, 259.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 183, 259.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 182.1, 265.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 182.1, 265.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 189.6, 259.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 189.6, 259.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 188.4, 265.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 188.4, 265.3 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, 4.3 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, -26.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, -25.1 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, -25.2 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, -25.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, -25.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, -25.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, -26 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -26.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, -24.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -25 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -25.6 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -26.1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -26.4 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -26.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -26.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -27.1 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, -27.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, 31.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 170, 4, 28, -1);
setStartTimeMs( SE001,  1467 );
SE002 = playSeVer2( spep_0 + 0, 1227, "", spep_0 + 170, 0, 28, -1);
SE003 = playSeVer2( spep_0 + 0, 1407, "", spep_0 + 170, 0, 28, -1);

--手からソード出す
SE004 = playSeVer2( spep_0 + 0, 1282, "",spep_0 + 36, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 60 );
SE005 = playSeVer2( spep_0 + 0, 1152, "", spep_0 + 136, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 63 );
SE006 = playSeVer2( spep_0 + 30, 1122, "",spep_0 + 136, 0, 36, -1);
SE007 = playSeVer2( spep_0 + 30, 1179, "", spep_0 + 130, 0, 4, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 46, 1072, "", 0, 0, 0, 0.6);

--向かってくる
SE010 = playSeVer2( spep_0 + 138, 9, "",spep_0 + 200, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 71 );
SE011 = playSeVer2( spep_0 + 138, 1167, "",spep_0 + 184, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 138, SE011, 48 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--斬る
SE012 = playSeVer2( spep_0 + 170, 1114, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 170, 1143, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE014, 71 );
SE015 = playSeVer2( spep_0 + 180, 1032, "", 0, 0, 0, -1);

--斬る２
SE016 = playSeVer2( spep_0 + 214, 1114, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 214, 1143, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 214, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 224, 1032, "", 0, 0, 0, -1);

--向き直る
SE020 = playSeVer2( spep_0 + 246, 1003, "", 0, 0, 0, -1);

--連続突き
SE021 = playSeVer2( spep_0 + 266, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 272, 1032, "", spep_0 + 272 + 20, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 272, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE023, 74 );
SE024 = playSeVer2( spep_0 + 272, 1425, "",spep_0 + 360, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 272, SE024, 80 );
SE025 = playSeVer2( spep_0 + 282, 1032, "", spep_0 + 282 + 20, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 294, 1032, "", spep_0 + 294 + 20, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE026, 89 );
SE027 = playSeVer2( spep_0 + 294, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 302, 1032, "", spep_0 + 302 + 20,  0, 0, -1);
SE029 = playSeVer2( spep_0 + 306, 1031, "", spep_0 + 306 + 14, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE029, 68 );
SE030 = playSeVer2( spep_0 + 308, 1016, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 314, 1032, "", spep_0 + 314 + 20, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE031, 79 );
SE032 = playSeVer2( spep_0 + 326, 1032, "", spep_0 + 326 + 20, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 328, 1016, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 334, 1032, "", spep_0 + 334 + 20, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 338, 1031, "", spep_0 + 338 + 14, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE036, 81 );

--空間埋め
SE033 = playSeVer2( spep_0 + 326, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE033, 66 );

--蹴り飛ばす
SE037 = playSeVer2( spep_0 + 368, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 378, 1187, "",spep_0 + 472, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 378, SE038, 78 );
SE039 = playSeVer2( spep_0 + 378, 1120, "",spep_0 + 474, 0, 16, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_0 + 386, 1121, "",spep_0 + 474, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 386, SE040, 62 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --456


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- 巨大な剣を出現させる〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 398;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 190);  --黒 背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 202 + OFFSET_X, 1, 1);
setDisp(spep_1 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 202 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 276 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 202 + OFFSET_X, 1, 284, 233 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 284, 233 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 283.8, 232.8 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 283.8, 232.8 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 283.3, 232.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 283.3, 232.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 282.6, 231.6 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 282.6, 231.6 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 281.5, 230.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 281.5, 230.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 280.2, 229.1 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 280.2, 229.1 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 278.5, 227.4 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 278.5, 227.4 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 276.5, 225.3 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 276.5, 225.3 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 274.2, 223 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 274.2, 223 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 271.6, 220.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 271.6, 220.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 268.7, 217.4 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 268.7, 217.4 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 265.5, 214.1 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 265.5, 214.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 262, 210.5 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 262, 210.5 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 258.2, 206.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 258.2, 206.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 254.1, 202.4 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 254.1, 202.4 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 249.7, 197.9 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 249.7, 197.9 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 244.9, 193.1 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 244.9, 193.1 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 239.9, 187.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 239.9, 187.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 234.5, 182.4 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 234.5, 182.4 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 228.9, 176.7 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 228.9, 176.7 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 222.9, 170.6 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 222.9, 170.6 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 216.7, 164.1 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 216.7, 164.1 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 210.1, 157.4 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 210.1, 157.4 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 421.2, -72.4 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 421.2, -72.4 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 419.3, -72.3 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 419.3, -72.3 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 411.2, -71.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 411.2, -71.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 394, -68.9 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 394, -68.9 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 365.1, -64 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 365.1, -64 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 322.4, -56.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 322.4, -56.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 264.9, -44.2 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 264.9, -44.2 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 192.7, -27.6 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 192.7, -27.6 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 107, -5.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 107, -5.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 213.5, -166.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 213.5, -166.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 193.3, -187.1 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 193.3, -187.1 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 194, -148.4 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 194, -148.4 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 215.8, -171 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 215.8, -171 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 238.4, -154.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 238.4, -154.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 202, -199.6 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 202, -199.6 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 206.6, -165.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 206.6, -165.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 232.1, -192.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 232.1, -192.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 258.6, -181.1 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 258.6, -181.1 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 226, -230.6 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 226, -230.6 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 234.4, -201.2 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 234.4, -201.2 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 263.7, -232.9 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 263.7, -232.9 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 254, -265.8 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 254, -265.8 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 253.3, -225.2 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 253.3, -225.2 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 276.5, -240.7 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 276.5, -240.7 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 267.7, -248.2 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 267.7, -248.2 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 266.9, -237.6 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 266.9, -237.6 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 276.2, -249.1 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 276.2, -249.1 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 273.4, -238.6 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 273.4, -238.6 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 264.6, -246.1 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 264.6, -246.1 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 263.8, -235.5 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 263.8, -235.5 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 273.1, -247 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 273.1, -247 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 268.3, -238.5 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 268.3, -238.5 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 259.5, -245.9 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 259.5, -245.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 256.7, -229.4 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 256.7, -229.4 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 272, -248.9 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, 272, -248.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 267.2, -234.3 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, 267.2, -234.3 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 258.4, -241.8 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 258.4, -241.8 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, 257.6, -231.3 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, 257.6, -231.3 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 266.8, -242.7 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, 266.8, -242.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 264, -232.2 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 264, -232.2 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 255.3, -239.7 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 255.3, -239.7 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 254.5, -229.1 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 254.5, -229.1 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 263.7, -240.6 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 263.7, -240.6 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 258.9, -232.1 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 258.9, -232.1 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 250.1, -239.5 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 250.1, -239.5 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 247.3, -223 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 247.3, -223 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 262.5, -242.4 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 262.5, -242.4 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 257.7, -227.9 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 257.7, -227.9 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 248.9, -235.4 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 248.9, -235.4 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 248.2, -224.8 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 248.2, -224.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 257.4, -236.3 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 257.4, -236.3 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 254.6, -225.7 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 254.6, -225.7 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 245.8, -233.2 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 245.8, -233.2 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 245, -222.6 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 245, -222.6 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 254.2, -234.1 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 254.2, -234.1 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 249.4, -225.5 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 249.4, -225.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 240.6, -233 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 240.6, -233 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 237.8, -216.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 237.8, -216.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 253, -235.9 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 253, -235.9 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 248.2, -221.4 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 248.2, -221.4 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 239.4, -228.8 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 239.4, -228.8 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 238.6, -218.3 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 238.6, -218.3 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 247.8, -229.7 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 247.8, -229.7 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 245, -219.2 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 245, -219.2 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 236.2, -226.6 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 236.2, -226.6 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 235.4, -216 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 235.4, -216 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 244.6, -227.5 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 244.6, -227.5 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 241.8, -216.9 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 241.8, -216.9 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 232.9, -224.4 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 232.9, -224.4 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 232.1, -213.8 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 232.1, -213.8 , 0 );

setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 291 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 297 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 299 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 301 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 363 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 202 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 16.5 );

-- ** 音 ** --
--ソード大きくなる予兆
SE042 = playSeVer2( spep_1 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE042, 68 );
SE043 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 110, 0, 60, -1);
SE044 = playSeVer2( spep_1 + 0, 1405, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE044, 178 );

--ソード大きくなる
SE045 = playSeVer2( spep_1 + 26, 1426, "", 0, 0, 0, -1);
setPitch( spep_1 + 26, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );
SE046 = playSeVer2( spep_1 + 46, 1114, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 46, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE047, 78 );
SE048 = playSeVer2( spep_1 + 46, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE048, 71 );
setPitch( spep_1 + 46, SE048, 300 );
setTimeStretch( SE048, 1.2, 30, 4 );

--横斬り
SE049 = playSeVer2( spep_1 + 102, 1004, "", 0, 0, 0, -1);
setPitch( spep_1 + 102, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_1 + 110, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE050, 71 );
setPitch( spep_1 + 110, SE050, -500 );
setTimeStretch( SE050, 0.67, 30, 4 );
SE051 = playSeVer2( spep_1 + 110, 1240, "",spep_1 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 110, SE051, 191 );
setTimeStretch( SE051, 0.83, 30, 4 );
SE052 = playSeVer2( spep_1 + 110, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE052, 14 );
SE053 = playSeVer2( spep_1 + 110, 1187, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 112, 1142, "", 0, 0, 0, -1);

--ポタラひかる
SE055 = playSeVer2( spep_1 + 136, 1289, "",spep_1 + 234, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 136, SE055, 63 );

--向かっていく
SE056 = playSeVer2( spep_1 + 200, 1117, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 200, 1182, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_1 + 200, 9, "", 0, 0, 0, -1);

--ラスト斬りつける
SE059 = playSeVer2( spep_1 + 264, 1189, "", 0, 0, 0, -1);

--風圧音
SE060 = playSeVer2( spep_1 + 266, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE060, 60 );

--ラスト斬りつける
SE061 = playSeVer2( spep_1 + 260, 1032, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_1 + 266, 1143, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_1 + 266, 1120, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_1 + 266, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_1 + 266, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE065, 71 );

--敵飛んでいく
SE066 = playSeVer2( spep_1 + 296, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 296, SE066, 74 );
SE067 = playSeVer2( spep_1 + 296, 1121, "",spep_1 + 398, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 296, SE067, 61 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 294); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 398F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 開幕〜奥に向かって蹴るまで
-------------------------------------------------

MAX_FRAME_0 = 456;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001r
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001br
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 60;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
-- ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
-- setEffShake( spep_x + 16, ctgogo, 68, 10 );
-- setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
-- setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
-- setEffScaleKey( spep_x + 16, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 76, ctgogo, -0.7, 0.7 );
-- setEffScaleKey( spep_x + 78, ctgogo, -1.0, 1.0 );
-- setEffScaleKey( spep_x + 80, ctgogo, -1.09, 1.09 );
-- setEffScaleKey( spep_x + 82, ctgogo, -1.39, 1.39 );
-- setEffScaleKey( spep_x + 84, ctgogo, -1.69, 1.69 );
-- setEffRotateKey( spep_x + 16, ctgogo, 0 );
-- setEffRotateKey( spep_x + 84, ctgogo, 0 );
-- setEffAlphaKey( spep_x + 16, ctgogo, 255 );
-- setEffAlphaKey( spep_x + 84, ctgogo, 255 );

--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 190 );  --黒背景

-- ** 敵キャラクター ** --
-- 敵の動き1
smk_1 = 1.15;

setDisp(spep_0 + 62 + OFFSET_X, 1, 1);
setDisp(spep_0 + 166 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 62 + OFFSET_X, 1, 18 );

setMoveKey( spep_0 + 62 + OFFSET_X, 1, -3009.4, -2136.1 * smk_1, 0 );
setMoveKey( spep_0 + 63 + OFFSET_X, 1, -3009.4, -2136.1 * smk_1, 0 );
setMoveKey( spep_0 + 64 + OFFSET_X, 1, -2961.1, -2102.4 * smk_1, 0 );
setMoveKey( spep_0 + 65 + OFFSET_X, 1, -2961.1, -2102.4 * smk_1, 0 );
setMoveKey( spep_0 + 66 + OFFSET_X, 1, -2889.5, -2053.1 * smk_1, 0 );
setMoveKey( spep_0 + 67 + OFFSET_X, 1, -2889.5, -2053.1 * smk_1, 0 );
setMoveKey( spep_0 + 68 + OFFSET_X, 1, -2786.9, -1983.3 * smk_1, 0 );
setMoveKey( spep_0 + 69 + OFFSET_X, 1, -2786.9, -1983.3 * smk_1, 0 );
setMoveKey( spep_0 + 70 + OFFSET_X, 1, -2640.7, -1884.5 * smk_1, 0 );
setMoveKey( spep_0 + 71 + OFFSET_X, 1, -2640.7, -1884.5 * smk_1, 0 );
setMoveKey( spep_0 + 72 + OFFSET_X, 1, -2429.9, -1743.4 * smk_1, 0 );
setMoveKey( spep_0 + 73 + OFFSET_X, 1, -2429.9, -1743.4 * smk_1, 0 );
setMoveKey( spep_0 + 74 + OFFSET_X, 1, -2127.2, -1541.9 * smk_1, 0 );
setMoveKey( spep_0 + 75 + OFFSET_X, 1, -2127.2, -1541.9 * smk_1, 0 );
setMoveKey( spep_0 + 76 + OFFSET_X, 1, -1743.6, -1287.3 * smk_1, 0 );
setMoveKey( spep_0 + 77 + OFFSET_X, 1, -1743.6, -1287.3 * smk_1, 0 );
setMoveKey( spep_0 + 78 + OFFSET_X, 1, -1382.2, -1046.8 * smk_1, 0 );
setMoveKey( spep_0 + 79 + OFFSET_X, 1, -1382.2, -1046.8 * smk_1, 0 );
setMoveKey( spep_0 + 80 + OFFSET_X, 1, -1105.9, -861.3 * smk_1, 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -1105.9, -861.3 * smk_1, 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -901.9, -722.5 * smk_1, 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -901.9, -722.5 * smk_1, 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -748.3, -616.3 * smk_1, 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -748.3, -616.3 * smk_1, 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -630.7, -533.8 * smk_1, 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -630.7, -533.8 * smk_1, 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -539.1, -468.7 * smk_1, 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -539.1, -468.7 * smk_1, 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -467.1, -416.7 * smk_1, 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -467.1, -416.7 * smk_1, 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -410.2, -375 * smk_1, 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -410.2, -375 * smk_1, 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -365.2, -341.5 * smk_1, 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -365.2, -341.5 * smk_1, 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -330, -314.7 * smk_1, 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -330, -314.7 * smk_1, 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -302.6, -293.5 * smk_1, 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -302.6, -293.5 * smk_1, 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -282, -277 * smk_1, 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -282, -277 * smk_1, 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -267, -264.6 * smk_1, 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -267, -264.6 * smk_1, 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -256.9, -255.8 * smk_1, 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -256.9, -255.8 * smk_1, 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -251, -250.1 * smk_1, 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -251, -250.1 * smk_1, 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -248.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -248.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -248.4, -246.7 * smk_1, 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -248.4, -246.7 * smk_1, 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -248.2, -245.9 * smk_1, 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -248.2, -245.9 * smk_1, 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -248.1, -245.7 * smk_1, 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -248.1, -245.7 * smk_1, 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -248.2, -245.8 * smk_1, 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -248.2, -245.8 * smk_1, 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -248.4, -246.1 * smk_1, 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -248.4, -246.1 * smk_1, 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -248.9, -246.8 * smk_1, 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -248.9, -246.8 * smk_1, 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -249.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -249.8, -248 * smk_1, 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -251.4, -250 * smk_1, 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -251.4, -250 * smk_1, 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -253.7, -253.1 * smk_1, 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -253.7, -253.1 * smk_1, 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -257.2, -257.6 * smk_1, 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -257.2, -257.6 * smk_1, 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -262, -263.9 * smk_1, 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -262, -263.9 * smk_1, 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -268.5, -272.3 * smk_1, 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -268.5, -272.3 * smk_1, 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -277, -283.4 * smk_1, 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -277, -283.4 * smk_1, 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -288, -297.6 * smk_1, 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -288, -297.6 * smk_1, 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -301.8, -315.5 * smk_1, 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -301.8, -315.5 * smk_1, 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -318.9, -337.7 * smk_1, 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -318.9, -337.7 * smk_1, 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -339.9, -364.9 * smk_1, 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -339.9, -364.9 * smk_1, 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -365.1, -397.6 * smk_1, 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -365.1, -397.6 * smk_1, 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -395.2, -436.6 * smk_1, 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -395.2, -436.6 * smk_1, 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -430.8, -482.7 * smk_1, 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -430.8, -482.7 * smk_1, 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -472.4, -536.7 * smk_1, 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -472.4, -536.7 * smk_1, 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -520.8, -593.4 * smk_1, 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -520.8, -593.4 * smk_1, 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -576.6, -677.7 * smk_1, 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -576.6, -677.7 * smk_1, 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -640.6, -742.6 * smk_1, 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -640.6, -742.6 * smk_1, 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -713.4, -861.1 * smk_1, 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -713.4, -861.1 * smk_1, 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -795.9, -948.1 * smk_1, 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -795.9, -948.1 * smk_1, 0 );

setScaleKey( spep_0 + 62 + OFFSET_X, 1, 19.19, 19.19 );
setScaleKey( spep_0 + 63 + OFFSET_X, 1, 19.19, 19.19 );
setScaleKey( spep_0 + 64 + OFFSET_X, 1, 18.93, 18.93 );
setScaleKey( spep_0 + 65 + OFFSET_X, 1, 18.93, 18.93 );
setScaleKey( spep_0 + 66 + OFFSET_X, 1, 18.55, 18.55 );
setScaleKey( spep_0 + 67 + OFFSET_X, 1, 18.55, 18.55 );
setScaleKey( spep_0 + 68 + OFFSET_X, 1, 18.02, 18.02 );
setScaleKey( spep_0 + 69 + OFFSET_X, 1, 18.02, 18.02 );
setScaleKey( spep_0 + 70 + OFFSET_X, 1, 17.26, 17.26 );
setScaleKey( spep_0 + 71 + OFFSET_X, 1, 17.26, 17.26 );
setScaleKey( spep_0 + 72 + OFFSET_X, 1, 16.18, 16.18 );
setScaleKey( spep_0 + 73 + OFFSET_X, 1, 16.18, 16.18 );
setScaleKey( spep_0 + 74 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 75 + OFFSET_X, 1, 14.65, 14.65 );
setScaleKey( spep_0 + 76 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 77 + OFFSET_X, 1, 12.72, 12.72 );
setScaleKey( spep_0 + 78 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_0 + 79 + OFFSET_X, 1, 10.88, 10.88 );
setScaleKey( spep_0 + 80 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 9.47, 9.47 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 8.4, 8.4 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 8.4, 8.4 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 7.58, 7.58 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 6.94, 6.94 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 6.44, 6.44 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 91 + OFFSET_X, 1, 6.03, 6.03 );
setScaleKey( spep_0 + 92 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 5.7, 5.7 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 5.44, 5.44 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 5.22, 5.22 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 99 + OFFSET_X, 1, 5.05, 5.05 );
setScaleKey( spep_0 + 100 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 4.82, 4.82 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 4.75, 4.75 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 4.7, 4.7 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 4.66, 4.66 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 4.67, 4.67 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 4.69, 4.69 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 4.71, 4.71 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 4.73, 4.73 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 4.77, 4.77 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 4.81, 4.81 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 4.87, 4.87 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 4.95, 4.95 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 5.06, 5.06 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 5.19, 5.19 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 5.35, 5.35 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 5.55, 5.55 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 6.1, 6.1 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 6.47, 6.47 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 6.9, 6.9 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 7.41, 7.41 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 8.01, 8.01 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 8.71, 8.71 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 8.71, 8.71 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 9.51, 9.51 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 10.45, 10.45 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 10.45, 10.45 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 11.52, 11.52 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 12.74, 12.74 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 12.74, 12.74 );

setRotateKey( spep_0 + 62 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 0 );

-- 敵の動き2
setDisp(spep_0 + 178 + OFFSET_X, 1, 1);
setDisp(spep_0 + 457 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 178 + OFFSET_X, 1, 18 );
changeAnime( spep_0 + 180 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 288 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 306 + OFFSET_X, 1, 6 );
changeAnime( spep_0 + 328 + OFFSET_X, 1, 8 );
changeAnime( spep_0 + 352 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 394 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 178 + OFFSET_X, 1, -286.1, -580.4 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -286.1, -580.4 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -275.5, -572.9 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -275.5, -572.9 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -260.4, -561.8 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -260.4, -561.8 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -300.3, -622.1 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -300.3, -622.1 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -299.4, -618.5 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -299.4, -618.5 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -330.1, -663.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -330.1, -663.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -343.2, -680.3 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -343.2, -680.3 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -381.7, -724.4 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -381.7, -724.4 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -429.8, -780.3 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -429.8, -780.3 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -493.7, -854.3 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -493.7, -854.3 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -567.8, -939.3 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -567.8, -939.3 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -652.9, -1033.3 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -652.9, -1033.3 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -750.9, -1136.7 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -750.9, -1136.7 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -863.5, -1250.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -863.5, -1250.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -993, -1375.3 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -993, -1375.3 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -1141.9, -1512.9 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -1141.9, -1512.9 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -1313.3, -1664.2 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -1313.3, -1664.2 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -1510.3, -1830.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -1510.3, -1830.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -1736.8, -2013.6 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -1736.8, -2013.6 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1997.3, -2215.1 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -1997.3, -2215.1 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, 66.1, -718.8 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, 66.1, -718.8 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, 154.8, -589.5 , 0 );
setMoveKey( spep_0 + 227 + OFFSET_X, 1, 154.8, -589.5 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, 206.2, -432 , 0 );
setMoveKey( spep_0 + 229 + OFFSET_X, 1, 206.2, -432 , 0 );
setMoveKey( spep_0 + 230 + OFFSET_X, 1, 231.9, -444.5 , 0 );
setMoveKey( spep_0 + 231 + OFFSET_X, 1, 231.9, -444.5 , 0 );
setMoveKey( spep_0 + 232 + OFFSET_X, 1, 244.2, -445.3 , 0 );
setMoveKey( spep_0 + 233 + OFFSET_X, 1, 244.2, -445.3 , 0 );
setMoveKey( spep_0 + 234 + OFFSET_X, 1, 307.6, -498.7 , 0 );
setMoveKey( spep_0 + 235 + OFFSET_X, 1, 307.6, -498.7 , 0 );
setMoveKey( spep_0 + 236 + OFFSET_X, 1, 356.3, -539 , 0 );
setMoveKey( spep_0 + 237 + OFFSET_X, 1, 356.3, -539 , 0 );
setMoveKey( spep_0 + 238 + OFFSET_X, 1, 459.1, -634.7 , 0 );
setMoveKey( spep_0 + 239 + OFFSET_X, 1, 459.1, -634.7 , 0 );
setMoveKey( spep_0 + 240 + OFFSET_X, 1, 559.7, -729.5 , 0 );
setMoveKey( spep_0 + 241 + OFFSET_X, 1, 559.7, -729.5 , 0 );
setMoveKey( spep_0 + 242 + OFFSET_X, 1, 696, -861.2 , 0 );
setMoveKey( spep_0 + 243 + OFFSET_X, 1, 696, -861.2 , 0 );
setMoveKey( spep_0 + 244 + OFFSET_X, 1, 870, -1033.4 , 0 );
setMoveKey( spep_0 + 245 + OFFSET_X, 1, 870, -1033.4 , 0 );
setMoveKey( spep_0 + 246 + OFFSET_X, 1, 1087.5, -1240.1 , 0 );
setMoveKey( spep_0 + 247 + OFFSET_X, 1, 1087.5, -1240.1 , 0 );
setMoveKey( spep_0 + 248 + OFFSET_X, 1, 1359.4, -1488.2 , 0 );
setMoveKey( spep_0 + 249 + OFFSET_X, 1, 1359.4, -1488.2 , 0 );
setMoveKey( spep_0 + 250 + OFFSET_X, 1, 1699.2, -1785.8 , 0 );
setMoveKey( spep_0 + 251 + OFFSET_X, 1, 1699.2, -1785.8 , 0 );
setMoveKey( spep_0 + 252 + OFFSET_X, 1, 1700.9, -2142.9 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, 1700.9, -2142.9 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, 2126.1, -2571.5 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, 2126.1, -2571.5 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -698.7, -802.3 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -698.7, -802.3 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, -686.9, -788.5 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -686.9, -788.5 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -651.5, -746.9 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -651.5, -746.9 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -592.5, -677.4 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -592.5, -677.4 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -509.9, -580.1 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -509.9, -580.1 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -383.4, -392.8 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -383.4, -392.8 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -304.6, -331 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -304.6, -331 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -248.2, -286.8 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -248.2, -286.8 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -218.4, -249.1 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -218.4, -249.1 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -179.4, -247.1 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -179.4, -247.1 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -167.7, -221.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -167.7, -221.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -179.3, -234.4 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -179.3, -234.4 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -257.5, -130.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -257.5, -130.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -232.8, -153.4 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -232.8, -153.4 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -232.1, -128.4 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -232.1, -128.4 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -255.3, -151.3 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -255.3, -151.3 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -254.6, -126.3 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -254.6, -126.3 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -229.9, -149.3 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -229.9, -149.3 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -229.2, -124.3 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -229.2, -124.3 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -252.4, -147.2 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -252.4, -147.2 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -251.7, -122.2 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -251.7, -122.2 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -9.7, -225.8 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -9.7, -225.8 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -9.8, -200.4 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -9.8, -200.4 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -34, -223.1 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -34, -223.1 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -30.2, -201.7 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -30.2, -201.7 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -14.3, -216.4 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -14.3, -216.4 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -14.5, -199 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -14.5, -199 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -30.6, -213.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -30.6, -213.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -34.8, -192.3 , 0 );
setMoveKey( spep_0 + 321 + OFFSET_X, 1, -34.8, -192.3 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -10.9, -214.9 , 0 );
setMoveKey( spep_0 + 323 + OFFSET_X, 1, -10.9, -214.9 , 0 );
setMoveKey( spep_0 + 324 + OFFSET_X, 1, -11.1, -189.6 , 0 );
setMoveKey( spep_0 + 325 + OFFSET_X, 1, -11.1, -189.6 , 0 );
setMoveKey( spep_0 + 326 + OFFSET_X, 1, -35.2, -212.2 , 0 );
setMoveKey( spep_0 + 327 + OFFSET_X, 1, -35.2, -212.2 , 0 );
setMoveKey( spep_0 + 328 + OFFSET_X, 1, -198.9, -162.4 , 0 );
setMoveKey( spep_0 + 329 + OFFSET_X, 1, -198.9, -162.4 , 0 );
setMoveKey( spep_0 + 330 + OFFSET_X, 1, -174.3, -185.2 , 0 );
setMoveKey( spep_0 + 331 + OFFSET_X, 1, -174.3, -185.2 , 0 );
setMoveKey( spep_0 + 332 + OFFSET_X, 1, -173.8, -159.9 , 0 );
setMoveKey( spep_0 + 333 + OFFSET_X, 1, -173.8, -159.9 , 0 );
setMoveKey( spep_0 + 334 + OFFSET_X, 1, -197.3, -182.7 , 0 );
setMoveKey( spep_0 + 335 + OFFSET_X, 1, -197.3, -182.7 , 0 );
setMoveKey( spep_0 + 336 + OFFSET_X, 1, -192.7, -161.4 , 0 );
setMoveKey( spep_0 + 337 + OFFSET_X, 1, -192.7, -161.4 , 0 );
setMoveKey( spep_0 + 338 + OFFSET_X, 1, -176.2, -176.2 , 0 );
setMoveKey( spep_0 + 339 + OFFSET_X, 1, -176.2, -176.2 , 0 );
setMoveKey( spep_0 + 340 + OFFSET_X, 1, -175.6, -158.9 , 0 );
setMoveKey( spep_0 + 341 + OFFSET_X, 1, -175.6, -158.9 , 0 );
setMoveKey( spep_0 + 342 + OFFSET_X, 1, -191.1, -173.7 , 0 );
setMoveKey( spep_0 + 343 + OFFSET_X, 1, -191.1, -173.7 , 0 );
setMoveKey( spep_0 + 344 + OFFSET_X, 1, -190.6, -156.4 , 0 );
setMoveKey( spep_0 + 345 + OFFSET_X, 1, -190.6, -156.4 , 0 );
setMoveKey( spep_0 + 346 + OFFSET_X, 1, -174, -171.2 , 0 );
setMoveKey( spep_0 + 347 + OFFSET_X, 1, -174, -171.2 , 0 );
setMoveKey( spep_0 + 348 + OFFSET_X, 1, -173.5, -153.9 , 0 );
setMoveKey( spep_0 + 349 + OFFSET_X, 1, -173.5, -153.9 , 0 );
setMoveKey( spep_0 + 350 + OFFSET_X, 1, -180.9, -160.7 , 0 );
setMoveKey( spep_0 + 351 + OFFSET_X, 1, -180.9, -160.7 , 0 );
setMoveKey( spep_0 + 352 + OFFSET_X, 1, 82.7, 39.5 , 0 );
setMoveKey( spep_0 + 357 + OFFSET_X, 1, 82.7, 39.5 , 0 );
setMoveKey( spep_0 + 358 + OFFSET_X, 1, 82.5, 39.5 , 0 );
setMoveKey( spep_0 + 359 + OFFSET_X, 1, 82.5, 39.5 , 0 );
setMoveKey( spep_0 + 360 + OFFSET_X, 1, 82.4, 39.5 , 0 );
setMoveKey( spep_0 + 361 + OFFSET_X, 1, 82.4, 39.5 , 0 );
setMoveKey( spep_0 + 362 + OFFSET_X, 1, 82.2, 39.5 , 0 );
setMoveKey( spep_0 + 363 + OFFSET_X, 1, 82.2, 39.5 , 0 );
setMoveKey( spep_0 + 364 + OFFSET_X, 1, 81.9, 39.5 , 0 );
setMoveKey( spep_0 + 365 + OFFSET_X, 1, 81.9, 39.5 , 0 );
setMoveKey( spep_0 + 366 + OFFSET_X, 1, 81.6, 39.5 , 0 );
setMoveKey( spep_0 + 367 + OFFSET_X, 1, 81.6, 39.5 , 0 );
setMoveKey( spep_0 + 368 + OFFSET_X, 1, 81.2, 39.5 , 0 );
setMoveKey( spep_0 + 369 + OFFSET_X, 1, 81.2, 39.5 , 0 );
setMoveKey( spep_0 + 370 + OFFSET_X, 1, 88.8, 47.5 , 0 );
setMoveKey( spep_0 + 371 + OFFSET_X, 1, 88.8, 47.5 , 0 );
setMoveKey( spep_0 + 372 + OFFSET_X, 1, 72.4, 31.5 , 0 );
setMoveKey( spep_0 + 373 + OFFSET_X, 1, 72.4, 31.5 , 0 );
setMoveKey( spep_0 + 374 + OFFSET_X, 1, 71.9, 47.5 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 71.9, 47.5 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 87.3, 31.5 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 87.3, 31.5 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 86.8, 47.5 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 86.8, 47.5 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 70.1, 31.5 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 70.1, 31.5 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 69.4, 47.5 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 69.4, 47.5 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 84.7, 31.5 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 84.7, 31.5 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 25.4, 46 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 25.4, 46 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 67, 99.7 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 67, 99.7 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 80.9, 114.1 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 80.9, 114.1 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 117.9, 162.8 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 117.9, 162.8 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 130.6, 178.3 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 130.6, 178.3 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 159.2, 212.9 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 159.2, 212.9 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 160.9, 219.8 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 160.9, 219.8 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 191.8, 255.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 191.8, 255.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 187.1, 254.3 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 187.1, 254.3 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 195.6, 281.5 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 195.6, 281.5 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 217.1, 273.3 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 217.1, 273.3 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 214.2, 287.9 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 214.2, 287.9 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 209.4, 283.9 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 209.4, 283.9 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 205.7, 287.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 205.7, 287.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 209.2, 276.3 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 209.2, 276.3 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 204.1, 278.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 204.1, 278.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 194.9, 269.1 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 194.9, 269.1 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 189.1, 270.3 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 189.1, 270.3 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 191.3, 257.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 191.3, 257.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 184.8, 258.3 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 184.8, 258.3 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 180.4, 254.1 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 180.4, 254.1 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 179.5, 260.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 179.5, 260.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 187, 254.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 187, 254.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 186.1, 260.8 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 186.1, 260.8 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 181.7, 256.7 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 181.7, 256.7 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 180.8, 263.3 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 180.8, 263.3 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 188.3, 256.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 188.3, 256.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 187.5, 263.4 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 187.5, 263.4 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 183, 259.2 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 183, 259.2 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 182.1, 265.8 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 182.1, 265.8 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 189.6, 259.3 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 189.6, 259.3 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 188.4, 265.3 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 188.4, 265.3 , 0 );

setScaleKey( spep_0 + 178 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 6.68, 6.68 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 223 + OFFSET_X, 1, 5.3, 5.3 );
setScaleKey( spep_0 + 224 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 4.74, 4.74 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 227 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 229 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 230 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 231 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 232 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 233 + OFFSET_X, 1, 4.49, 4.49 );
setScaleKey( spep_0 + 234 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 235 + OFFSET_X, 1, 4.5, 4.5 );
setScaleKey( spep_0 + 236 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 237 + OFFSET_X, 1, 4.56, 4.56 );
setScaleKey( spep_0 + 238 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 239 + OFFSET_X, 1, 4.64, 4.64 );
setScaleKey( spep_0 + 240 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 241 + OFFSET_X, 1, 4.76, 4.76 );
setScaleKey( spep_0 + 242 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 4.92, 4.92 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 267 + OFFSET_X, 1, 4.86, 4.86 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 269 + OFFSET_X, 1, 4.68, 4.68 );
setScaleKey( spep_0 + 270 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 271 + OFFSET_X, 1, 4.38, 4.38 );
setScaleKey( spep_0 + 272 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 273 + OFFSET_X, 1, 3.96, 3.96 );
setScaleKey( spep_0 + 274 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 275 + OFFSET_X, 1, 3.19, 3.19 );
setScaleKey( spep_0 + 276 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 277 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 278 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 279 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 280 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 281 + OFFSET_X, 1, 2.66, 2.66 );
setScaleKey( spep_0 + 282 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 283 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 284 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 285 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 286 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 287 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 288 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 289 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 290 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 291 + OFFSET_X, 1, 2.81, 2.81 );
setScaleKey( spep_0 + 292 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 293 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 294 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 295 + OFFSET_X, 1, 2.78, 2.78 );
setScaleKey( spep_0 + 296 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 297 + OFFSET_X, 1, 2.77, 2.77 );
setScaleKey( spep_0 + 298 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 299 + OFFSET_X, 1, 2.76, 2.76 );
setScaleKey( spep_0 + 300 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 301 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_0 + 302 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 303 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_0 + 304 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 305 + OFFSET_X, 1, 2.73, 2.73 );
setScaleKey( spep_0 + 306 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 307 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_0 + 308 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 309 + OFFSET_X, 1, 2.43, 2.43 );
setScaleKey( spep_0 + 310 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 311 + OFFSET_X, 1, 2.42, 2.42 );
setScaleKey( spep_0 + 312 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 313 + OFFSET_X, 1, 2.41, 2.41 );
setScaleKey( spep_0 + 314 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 315 + OFFSET_X, 1, 2.4, 2.4 );
setScaleKey( spep_0 + 316 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 317 + OFFSET_X, 1, 2.39, 2.39 );
setScaleKey( spep_0 + 318 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 319 + OFFSET_X, 1, 2.38, 2.38 );
setScaleKey( spep_0 + 320 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 321 + OFFSET_X, 1, 2.37, 2.37 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 323 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_0 + 324 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 325 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 326 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 327 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 328 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 329 + OFFSET_X, 1, 2.6, 2.6 );
setScaleKey( spep_0 + 330 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 331 + OFFSET_X, 1, 2.59, 2.59 );
setScaleKey( spep_0 + 332 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 333 + OFFSET_X, 1, 2.58, 2.58 );
setScaleKey( spep_0 + 334 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 335 + OFFSET_X, 1, 2.56, 2.56 );
setScaleKey( spep_0 + 336 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 337 + OFFSET_X, 1, 2.55, 2.55 );
setScaleKey( spep_0 + 338 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 339 + OFFSET_X, 1, 2.54, 2.54 );
setScaleKey( spep_0 + 340 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 341 + OFFSET_X, 1, 2.53, 2.53 );
setScaleKey( spep_0 + 342 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 343 + OFFSET_X, 1, 2.52, 2.52 );
setScaleKey( spep_0 + 344 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 345 + OFFSET_X, 1, 2.51, 2.51 );
setScaleKey( spep_0 + 346 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 347 + OFFSET_X, 1, 2.5, 2.5 );
setScaleKey( spep_0 + 348 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 349 + OFFSET_X, 1, 2.49, 2.49 );
setScaleKey( spep_0 + 350 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 351 + OFFSET_X, 1, 2.48, 2.48 );
setScaleKey( spep_0 + 352 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 1.67, 1.67 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 1.59, 1.59 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 1.01, 1.01 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 445 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 446 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 451 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 452 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_0 + 457 + OFFSET_X, 1, 0.16, 0.16 );

setRotateKey( spep_0 + 178 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 179 + OFFSET_X, 1, -4.3 );
setRotateKey( spep_0 + 180 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 225 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 226 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_0 + 227 + OFFSET_X, 1, 26.2 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_0 + 231 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_0 + 232 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 233 + OFFSET_X, 1, 25.2 );
setRotateKey( spep_0 + 234 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 235 + OFFSET_X, 1, 25.3 );
setRotateKey( spep_0 + 236 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 237 + OFFSET_X, 1, 25.5 );
setRotateKey( spep_0 + 238 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 239 + OFFSET_X, 1, 25.7 );
setRotateKey( spep_0 + 240 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 241 + OFFSET_X, 1, 26 );
setRotateKey( spep_0 + 242 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, 26.3 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 24.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 25 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 25.6 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 26.1 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 26.4 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 26.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 27.1 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 327 + OFFSET_X, 1, 27.2 );
setRotateKey( spep_0 + 328 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 351 + OFFSET_X, 1, -31.8 );
setRotateKey( spep_0 + 352 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -34.9 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -0.5 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -0.9 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -1.3 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -2.6 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -2.8 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -3 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 417 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 418 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -3.3 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 423 + OFFSET_X, 1, -3.1 );
setRotateKey( spep_0 + 424 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -2.9 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 427 + OFFSET_X, 1, -2.7 );
setRotateKey( spep_0 + 428 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 429 + OFFSET_X, 1, -2.5 );
setRotateKey( spep_0 + 430 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -2.3 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 433 + OFFSET_X, 1, -2.1 );
setRotateKey( spep_0 + 434 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 435 + OFFSET_X, 1, -1.9 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -1.7 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 439 + OFFSET_X, 1, -1.6 );
setRotateKey( spep_0 + 440 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 441 + OFFSET_X, 1, -1.4 );
setRotateKey( spep_0 + 442 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 443 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 444 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 445 + OFFSET_X, 1, -1 );
setRotateKey( spep_0 + 446 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 447 + OFFSET_X, 1, -0.8 );
setRotateKey( spep_0 + 448 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 449 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 450 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 451 + OFFSET_X, 1, -0.4 );
setRotateKey( spep_0 + 452 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 453 + OFFSET_X, 1, -0.2 );
setRotateKey( spep_0 + 454 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 457 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--オーラ
SE001 = playSeVer2( spep_0 + 0, 1371, "",spep_0 + 170, 4, 28, -1);
setStartTimeMs( SE001,  1467 );
SE002 = playSeVer2( spep_0 + 0, 1227, "", spep_0 + 170, 0, 28, -1);
SE003 = playSeVer2( spep_0 + 0, 1407, "", spep_0 + 170, 0, 28, -1);

--手からソード出す
SE004 = playSeVer2( spep_0 + 0, 1282, "",spep_0 + 36, 0, 8, -1);
setSeVolumeByWorkId( spep_0 + 0, SE004, 60 );
SE005 = playSeVer2( spep_0 + 0, 1152, "", spep_0 + 136, 0, 2, -1);
setSeVolumeByWorkId( spep_0 + 0, SE005, 63 );
SE006 = playSeVer2( spep_0 + 30, 1122, "",spep_0 + 136, 0, 36, -1);
SE007 = playSeVer2( spep_0 + 30, 1179, "", spep_0 + 130, 0, 4, -1);

--画面遷移
SE008 = playSeVer2( spep_0 + 46, 1072, "", 0, 0, 0, 0.6);

--向かってくる
SE010 = playSeVer2( spep_0 + 138, 9, "",spep_0 + 200, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 71 );
SE011 = playSeVer2( spep_0 + 138, 1167, "",spep_0 + 184, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 138, SE011, 48 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 170; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE008, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE011, 0);
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
--斬る
SE012 = playSeVer2( spep_0 + 170, 1114, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 170, 1143, "", 0, 0, 0, -1);
SE014 = playSeVer2( spep_0 + 170, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 170, SE014, 71 );
SE015 = playSeVer2( spep_0 + 180, 1032, "", 0, 0, 0, -1);

--斬る２
SE016 = playSeVer2( spep_0 + 214, 1114, "", 0, 0, 0, -1);
SE017 = playSeVer2( spep_0 + 214, 1143, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 214, 1187, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 224, 1032, "", 0, 0, 0, -1);

--向き直る
SE020 = playSeVer2( spep_0 + 246, 1003, "", 0, 0, 0, -1);

--連続突き
SE021 = playSeVer2( spep_0 + 266, 1189, "", 0, 0, 0, -1);
SE022 = playSeVer2( spep_0 + 272, 1032, "", spep_0 + 272 + 20, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 272, 1026, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 272, SE023, 74 );
SE024 = playSeVer2( spep_0 + 272, 1425, "",spep_0 + 360, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 272, SE024, 80 );
SE025 = playSeVer2( spep_0 + 282, 1032, "", spep_0 + 282 + 20, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 294, 1032, "", spep_0 + 294 + 20, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 294, SE026, 89 );
SE027 = playSeVer2( spep_0 + 294, 1016, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 302, 1032, "", spep_0 + 302 + 20,  0, 0, -1);
SE029 = playSeVer2( spep_0 + 306, 1031, "", spep_0 + 306 + 14, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE029, 68 );
SE030 = playSeVer2( spep_0 + 308, 1016, "", 0, 0, 0, -1);
SE031 = playSeVer2( spep_0 + 314, 1032, "", spep_0 + 314 + 20, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 314, SE031, 79 );
SE032 = playSeVer2( spep_0 + 326, 1032, "", spep_0 + 326 + 20, 0, 0, -1);
SE034 = playSeVer2( spep_0 + 328, 1016, "", 0, 0, 0, -1);
SE035 = playSeVer2( spep_0 + 334, 1032, "", spep_0 + 334 + 20, 0, 0, -1);
SE036 = playSeVer2( spep_0 + 338, 1031, "", spep_0 + 338 + 14, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 338, SE036, 81 );

--空間埋め
SE033 = playSeVer2( spep_0 + 326, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 326, SE033, 66 );

--蹴り飛ばす
SE037 = playSeVer2( spep_0 + 368, 1003, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 378, 1187, "",spep_0 + 472, 0, 14, -1);
setSeVolumeByWorkId( spep_0 + 378, SE038, 78 );
SE039 = playSeVer2( spep_0 + 378, 1120, "",spep_0 + 474, 0, 16, -1);

--敵飛んでいく
SE040 = playSeVer2( spep_0 + 386, 1121, "",spep_0 + 474, 0, 16, -1);
setSeVolumeByWorkId( spep_0 + 386, SE040, 62 );

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --456


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- 巨大な剣を出現させる〜フィニッシュまで
-------------------------------------------------

MAX_FRAME_1 = 398;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002br
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 190);  --黒 背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 202 + OFFSET_X, 1, 1);
setDisp(spep_1 + 398 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 202 + OFFSET_X, 1, 106 );
changeAnime( spep_1 + 276 + OFFSET_X, 1, 108 );

setMoveKey( spep_1 + 202 + OFFSET_X, 1, 284, 233 , 0 );
setMoveKey( spep_1 + 203 + OFFSET_X, 1, 284, 233 , 0 );
setMoveKey( spep_1 + 204 + OFFSET_X, 1, 283.8, 232.8 , 0 );
setMoveKey( spep_1 + 205 + OFFSET_X, 1, 283.8, 232.8 , 0 );
setMoveKey( spep_1 + 206 + OFFSET_X, 1, 283.3, 232.3 , 0 );
setMoveKey( spep_1 + 207 + OFFSET_X, 1, 283.3, 232.3 , 0 );
setMoveKey( spep_1 + 208 + OFFSET_X, 1, 282.6, 231.6 , 0 );
setMoveKey( spep_1 + 209 + OFFSET_X, 1, 282.6, 231.6 , 0 );
setMoveKey( spep_1 + 210 + OFFSET_X, 1, 281.5, 230.5 , 0 );
setMoveKey( spep_1 + 211 + OFFSET_X, 1, 281.5, 230.5 , 0 );
setMoveKey( spep_1 + 212 + OFFSET_X, 1, 280.2, 229.1 , 0 );
setMoveKey( spep_1 + 213 + OFFSET_X, 1, 280.2, 229.1 , 0 );
setMoveKey( spep_1 + 214 + OFFSET_X, 1, 278.5, 227.4 , 0 );
setMoveKey( spep_1 + 215 + OFFSET_X, 1, 278.5, 227.4 , 0 );
setMoveKey( spep_1 + 216 + OFFSET_X, 1, 276.5, 225.3 , 0 );
setMoveKey( spep_1 + 217 + OFFSET_X, 1, 276.5, 225.3 , 0 );
setMoveKey( spep_1 + 218 + OFFSET_X, 1, 274.2, 223 , 0 );
setMoveKey( spep_1 + 219 + OFFSET_X, 1, 274.2, 223 , 0 );
setMoveKey( spep_1 + 220 + OFFSET_X, 1, 271.6, 220.3 , 0 );
setMoveKey( spep_1 + 221 + OFFSET_X, 1, 271.6, 220.3 , 0 );
setMoveKey( spep_1 + 222 + OFFSET_X, 1, 268.7, 217.4 , 0 );
setMoveKey( spep_1 + 223 + OFFSET_X, 1, 268.7, 217.4 , 0 );
setMoveKey( spep_1 + 224 + OFFSET_X, 1, 265.5, 214.1 , 0 );
setMoveKey( spep_1 + 225 + OFFSET_X, 1, 265.5, 214.1 , 0 );
setMoveKey( spep_1 + 226 + OFFSET_X, 1, 262, 210.5 , 0 );
setMoveKey( spep_1 + 227 + OFFSET_X, 1, 262, 210.5 , 0 );
setMoveKey( spep_1 + 228 + OFFSET_X, 1, 258.2, 206.6 , 0 );
setMoveKey( spep_1 + 229 + OFFSET_X, 1, 258.2, 206.6 , 0 );
setMoveKey( spep_1 + 230 + OFFSET_X, 1, 254.1, 202.4 , 0 );
setMoveKey( spep_1 + 231 + OFFSET_X, 1, 254.1, 202.4 , 0 );
setMoveKey( spep_1 + 232 + OFFSET_X, 1, 249.7, 197.9 , 0 );
setMoveKey( spep_1 + 233 + OFFSET_X, 1, 249.7, 197.9 , 0 );
setMoveKey( spep_1 + 234 + OFFSET_X, 1, 244.9, 193.1 , 0 );
setMoveKey( spep_1 + 235 + OFFSET_X, 1, 244.9, 193.1 , 0 );
setMoveKey( spep_1 + 236 + OFFSET_X, 1, 239.9, 187.9 , 0 );
setMoveKey( spep_1 + 237 + OFFSET_X, 1, 239.9, 187.9 , 0 );
setMoveKey( spep_1 + 238 + OFFSET_X, 1, 234.5, 182.4 , 0 );
setMoveKey( spep_1 + 239 + OFFSET_X, 1, 234.5, 182.4 , 0 );
setMoveKey( spep_1 + 240 + OFFSET_X, 1, 228.9, 176.7 , 0 );
setMoveKey( spep_1 + 241 + OFFSET_X, 1, 228.9, 176.7 , 0 );
setMoveKey( spep_1 + 242 + OFFSET_X, 1, 222.9, 170.6 , 0 );
setMoveKey( spep_1 + 243 + OFFSET_X, 1, 222.9, 170.6 , 0 );
setMoveKey( spep_1 + 244 + OFFSET_X, 1, 216.7, 164.1 , 0 );
setMoveKey( spep_1 + 245 + OFFSET_X, 1, 216.7, 164.1 , 0 );
setMoveKey( spep_1 + 246 + OFFSET_X, 1, 210.1, 157.4 , 0 );
setMoveKey( spep_1 + 247 + OFFSET_X, 1, 210.1, 157.4 , 0 );
setMoveKey( spep_1 + 248 + OFFSET_X, 1, 421.2, -72.4 , 0 );
setMoveKey( spep_1 + 249 + OFFSET_X, 1, 421.2, -72.4 , 0 );
setMoveKey( spep_1 + 250 + OFFSET_X, 1, 419.3, -72.3 , 0 );
setMoveKey( spep_1 + 251 + OFFSET_X, 1, 419.3, -72.3 , 0 );
setMoveKey( spep_1 + 252 + OFFSET_X, 1, 411.2, -71.4 , 0 );
setMoveKey( spep_1 + 253 + OFFSET_X, 1, 411.2, -71.4 , 0 );
setMoveKey( spep_1 + 254 + OFFSET_X, 1, 394, -68.9 , 0 );
setMoveKey( spep_1 + 255 + OFFSET_X, 1, 394, -68.9 , 0 );
setMoveKey( spep_1 + 256 + OFFSET_X, 1, 365.1, -64 , 0 );
setMoveKey( spep_1 + 257 + OFFSET_X, 1, 365.1, -64 , 0 );
setMoveKey( spep_1 + 258 + OFFSET_X, 1, 322.4, -56.1 , 0 );
setMoveKey( spep_1 + 259 + OFFSET_X, 1, 322.4, -56.1 , 0 );
setMoveKey( spep_1 + 260 + OFFSET_X, 1, 264.9, -44.2 , 0 );
setMoveKey( spep_1 + 261 + OFFSET_X, 1, 264.9, -44.2 , 0 );
setMoveKey( spep_1 + 262 + OFFSET_X, 1, 192.7, -27.6 , 0 );
setMoveKey( spep_1 + 263 + OFFSET_X, 1, 192.7, -27.6 , 0 );
setMoveKey( spep_1 + 264 + OFFSET_X, 1, 107, -5.5 , 0 );
setMoveKey( spep_1 + 275 + OFFSET_X, 1, 107, -5.5 , 0 );
setMoveKey( spep_1 + 276 + OFFSET_X, 1, 213.5, -166.9 , 0 );
setMoveKey( spep_1 + 277 + OFFSET_X, 1, 213.5, -166.9 , 0 );
setMoveKey( spep_1 + 278 + OFFSET_X, 1, 193.3, -187.1 , 0 );
setMoveKey( spep_1 + 279 + OFFSET_X, 1, 193.3, -187.1 , 0 );
setMoveKey( spep_1 + 280 + OFFSET_X, 1, 194, -148.4 , 0 );
setMoveKey( spep_1 + 281 + OFFSET_X, 1, 194, -148.4 , 0 );
setMoveKey( spep_1 + 282 + OFFSET_X, 1, 215.8, -171 , 0 );
setMoveKey( spep_1 + 283 + OFFSET_X, 1, 215.8, -171 , 0 );
setMoveKey( spep_1 + 284 + OFFSET_X, 1, 238.4, -154.7 , 0 );
setMoveKey( spep_1 + 285 + OFFSET_X, 1, 238.4, -154.7 , 0 );
setMoveKey( spep_1 + 286 + OFFSET_X, 1, 202, -199.6 , 0 );
setMoveKey( spep_1 + 287 + OFFSET_X, 1, 202, -199.6 , 0 );
setMoveKey( spep_1 + 288 + OFFSET_X, 1, 206.6, -165.6 , 0 );
setMoveKey( spep_1 + 289 + OFFSET_X, 1, 206.6, -165.6 , 0 );
setMoveKey( spep_1 + 290 + OFFSET_X, 1, 232.1, -192.8 , 0 );
setMoveKey( spep_1 + 291 + OFFSET_X, 1, 232.1, -192.8 , 0 );
setMoveKey( spep_1 + 292 + OFFSET_X, 1, 258.6, -181.1 , 0 );
setMoveKey( spep_1 + 293 + OFFSET_X, 1, 258.6, -181.1 , 0 );
setMoveKey( spep_1 + 294 + OFFSET_X, 1, 226, -230.6 , 0 );
setMoveKey( spep_1 + 295 + OFFSET_X, 1, 226, -230.6 , 0 );
setMoveKey( spep_1 + 296 + OFFSET_X, 1, 234.4, -201.2 , 0 );
setMoveKey( spep_1 + 297 + OFFSET_X, 1, 234.4, -201.2 , 0 );
setMoveKey( spep_1 + 298 + OFFSET_X, 1, 263.7, -232.9 , 0 );
setMoveKey( spep_1 + 299 + OFFSET_X, 1, 263.7, -232.9 , 0 );
setMoveKey( spep_1 + 300 + OFFSET_X, 1, 254, -265.8 , 0 );
setMoveKey( spep_1 + 301 + OFFSET_X, 1, 254, -265.8 , 0 );
setMoveKey( spep_1 + 302 + OFFSET_X, 1, 253.3, -225.2 , 0 );
setMoveKey( spep_1 + 303 + OFFSET_X, 1, 253.3, -225.2 , 0 );
setMoveKey( spep_1 + 304 + OFFSET_X, 1, 276.5, -240.7 , 0 );
setMoveKey( spep_1 + 305 + OFFSET_X, 1, 276.5, -240.7 , 0 );
setMoveKey( spep_1 + 306 + OFFSET_X, 1, 267.7, -248.2 , 0 );
setMoveKey( spep_1 + 307 + OFFSET_X, 1, 267.7, -248.2 , 0 );
setMoveKey( spep_1 + 308 + OFFSET_X, 1, 266.9, -237.6 , 0 );
setMoveKey( spep_1 + 309 + OFFSET_X, 1, 266.9, -237.6 , 0 );
setMoveKey( spep_1 + 310 + OFFSET_X, 1, 276.2, -249.1 , 0 );
setMoveKey( spep_1 + 311 + OFFSET_X, 1, 276.2, -249.1 , 0 );
setMoveKey( spep_1 + 312 + OFFSET_X, 1, 273.4, -238.6 , 0 );
setMoveKey( spep_1 + 313 + OFFSET_X, 1, 273.4, -238.6 , 0 );
setMoveKey( spep_1 + 314 + OFFSET_X, 1, 264.6, -246.1 , 0 );
setMoveKey( spep_1 + 315 + OFFSET_X, 1, 264.6, -246.1 , 0 );
setMoveKey( spep_1 + 316 + OFFSET_X, 1, 263.8, -235.5 , 0 );
setMoveKey( spep_1 + 317 + OFFSET_X, 1, 263.8, -235.5 , 0 );
setMoveKey( spep_1 + 318 + OFFSET_X, 1, 273.1, -247 , 0 );
setMoveKey( spep_1 + 319 + OFFSET_X, 1, 273.1, -247 , 0 );
setMoveKey( spep_1 + 320 + OFFSET_X, 1, 268.3, -238.5 , 0 );
setMoveKey( spep_1 + 321 + OFFSET_X, 1, 268.3, -238.5 , 0 );
setMoveKey( spep_1 + 322 + OFFSET_X, 1, 259.5, -245.9 , 0 );
setMoveKey( spep_1 + 323 + OFFSET_X, 1, 259.5, -245.9 , 0 );
setMoveKey( spep_1 + 324 + OFFSET_X, 1, 256.7, -229.4 , 0 );
setMoveKey( spep_1 + 325 + OFFSET_X, 1, 256.7, -229.4 , 0 );
setMoveKey( spep_1 + 326 + OFFSET_X, 1, 272, -248.9 , 0 );
setMoveKey( spep_1 + 327 + OFFSET_X, 1, 272, -248.9 , 0 );
setMoveKey( spep_1 + 328 + OFFSET_X, 1, 267.2, -234.3 , 0 );
setMoveKey( spep_1 + 329 + OFFSET_X, 1, 267.2, -234.3 , 0 );
setMoveKey( spep_1 + 330 + OFFSET_X, 1, 258.4, -241.8 , 0 );
setMoveKey( spep_1 + 331 + OFFSET_X, 1, 258.4, -241.8 , 0 );
setMoveKey( spep_1 + 332 + OFFSET_X, 1, 257.6, -231.3 , 0 );
setMoveKey( spep_1 + 333 + OFFSET_X, 1, 257.6, -231.3 , 0 );
setMoveKey( spep_1 + 334 + OFFSET_X, 1, 266.8, -242.7 , 0 );
setMoveKey( spep_1 + 335 + OFFSET_X, 1, 266.8, -242.7 , 0 );
setMoveKey( spep_1 + 336 + OFFSET_X, 1, 264, -232.2 , 0 );
setMoveKey( spep_1 + 337 + OFFSET_X, 1, 264, -232.2 , 0 );
setMoveKey( spep_1 + 338 + OFFSET_X, 1, 255.3, -239.7 , 0 );
setMoveKey( spep_1 + 339 + OFFSET_X, 1, 255.3, -239.7 , 0 );
setMoveKey( spep_1 + 340 + OFFSET_X, 1, 254.5, -229.1 , 0 );
setMoveKey( spep_1 + 341 + OFFSET_X, 1, 254.5, -229.1 , 0 );
setMoveKey( spep_1 + 342 + OFFSET_X, 1, 263.7, -240.6 , 0 );
setMoveKey( spep_1 + 343 + OFFSET_X, 1, 263.7, -240.6 , 0 );
setMoveKey( spep_1 + 344 + OFFSET_X, 1, 258.9, -232.1 , 0 );
setMoveKey( spep_1 + 345 + OFFSET_X, 1, 258.9, -232.1 , 0 );
setMoveKey( spep_1 + 346 + OFFSET_X, 1, 250.1, -239.5 , 0 );
setMoveKey( spep_1 + 347 + OFFSET_X, 1, 250.1, -239.5 , 0 );
setMoveKey( spep_1 + 348 + OFFSET_X, 1, 247.3, -223 , 0 );
setMoveKey( spep_1 + 349 + OFFSET_X, 1, 247.3, -223 , 0 );
setMoveKey( spep_1 + 350 + OFFSET_X, 1, 262.5, -242.4 , 0 );
setMoveKey( spep_1 + 351 + OFFSET_X, 1, 262.5, -242.4 , 0 );
setMoveKey( spep_1 + 352 + OFFSET_X, 1, 257.7, -227.9 , 0 );
setMoveKey( spep_1 + 353 + OFFSET_X, 1, 257.7, -227.9 , 0 );
setMoveKey( spep_1 + 354 + OFFSET_X, 1, 248.9, -235.4 , 0 );
setMoveKey( spep_1 + 355 + OFFSET_X, 1, 248.9, -235.4 , 0 );
setMoveKey( spep_1 + 356 + OFFSET_X, 1, 248.2, -224.8 , 0 );
setMoveKey( spep_1 + 357 + OFFSET_X, 1, 248.2, -224.8 , 0 );
setMoveKey( spep_1 + 358 + OFFSET_X, 1, 257.4, -236.3 , 0 );
setMoveKey( spep_1 + 359 + OFFSET_X, 1, 257.4, -236.3 , 0 );
setMoveKey( spep_1 + 360 + OFFSET_X, 1, 254.6, -225.7 , 0 );
setMoveKey( spep_1 + 361 + OFFSET_X, 1, 254.6, -225.7 , 0 );
setMoveKey( spep_1 + 362 + OFFSET_X, 1, 245.8, -233.2 , 0 );
setMoveKey( spep_1 + 363 + OFFSET_X, 1, 245.8, -233.2 , 0 );
setMoveKey( spep_1 + 364 + OFFSET_X, 1, 245, -222.6 , 0 );
setMoveKey( spep_1 + 365 + OFFSET_X, 1, 245, -222.6 , 0 );
setMoveKey( spep_1 + 366 + OFFSET_X, 1, 254.2, -234.1 , 0 );
setMoveKey( spep_1 + 367 + OFFSET_X, 1, 254.2, -234.1 , 0 );
setMoveKey( spep_1 + 368 + OFFSET_X, 1, 249.4, -225.5 , 0 );
setMoveKey( spep_1 + 369 + OFFSET_X, 1, 249.4, -225.5 , 0 );
setMoveKey( spep_1 + 370 + OFFSET_X, 1, 240.6, -233 , 0 );
setMoveKey( spep_1 + 371 + OFFSET_X, 1, 240.6, -233 , 0 );
setMoveKey( spep_1 + 372 + OFFSET_X, 1, 237.8, -216.5 , 0 );
setMoveKey( spep_1 + 373 + OFFSET_X, 1, 237.8, -216.5 , 0 );
setMoveKey( spep_1 + 374 + OFFSET_X, 1, 253, -235.9 , 0 );
setMoveKey( spep_1 + 375 + OFFSET_X, 1, 253, -235.9 , 0 );
setMoveKey( spep_1 + 376 + OFFSET_X, 1, 248.2, -221.4 , 0 );
setMoveKey( spep_1 + 377 + OFFSET_X, 1, 248.2, -221.4 , 0 );
setMoveKey( spep_1 + 378 + OFFSET_X, 1, 239.4, -228.8 , 0 );
setMoveKey( spep_1 + 379 + OFFSET_X, 1, 239.4, -228.8 , 0 );
setMoveKey( spep_1 + 380 + OFFSET_X, 1, 238.6, -218.3 , 0 );
setMoveKey( spep_1 + 381 + OFFSET_X, 1, 238.6, -218.3 , 0 );
setMoveKey( spep_1 + 382 + OFFSET_X, 1, 247.8, -229.7 , 0 );
setMoveKey( spep_1 + 383 + OFFSET_X, 1, 247.8, -229.7 , 0 );
setMoveKey( spep_1 + 384 + OFFSET_X, 1, 245, -219.2 , 0 );
setMoveKey( spep_1 + 385 + OFFSET_X, 1, 245, -219.2 , 0 );
setMoveKey( spep_1 + 386 + OFFSET_X, 1, 236.2, -226.6 , 0 );
setMoveKey( spep_1 + 387 + OFFSET_X, 1, 236.2, -226.6 , 0 );
setMoveKey( spep_1 + 388 + OFFSET_X, 1, 235.4, -216 , 0 );
setMoveKey( spep_1 + 389 + OFFSET_X, 1, 235.4, -216 , 0 );
setMoveKey( spep_1 + 390 + OFFSET_X, 1, 244.6, -227.5 , 0 );
setMoveKey( spep_1 + 391 + OFFSET_X, 1, 244.6, -227.5 , 0 );
setMoveKey( spep_1 + 392 + OFFSET_X, 1, 241.8, -216.9 , 0 );
setMoveKey( spep_1 + 393 + OFFSET_X, 1, 241.8, -216.9 , 0 );
setMoveKey( spep_1 + 394 + OFFSET_X, 1, 232.9, -224.4 , 0 );
setMoveKey( spep_1 + 395 + OFFSET_X, 1, 232.9, -224.4 , 0 );
setMoveKey( spep_1 + 396 + OFFSET_X, 1, 232.1, -213.8 , 0 );
setMoveKey( spep_1 + 398 + OFFSET_X, 1, 232.1, -213.8 , 0 );

setScaleKey( spep_1 + 202 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 207 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 208 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 211 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 212 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 213 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 214 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 215 + OFFSET_X, 1, 0.41, 0.41 );
setScaleKey( spep_1 + 216 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 217 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 218 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 219 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 220 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 221 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 222 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 223 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 224 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 225 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 226 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 227 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 228 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 229 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 230 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 231 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 232 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 233 + OFFSET_X, 1, 0.57, 0.57 );
setScaleKey( spep_1 + 234 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 235 + OFFSET_X, 1, 0.59, 0.59 );
setScaleKey( spep_1 + 236 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 237 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 238 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 239 + OFFSET_X, 1, 0.65, 0.65 );
setScaleKey( spep_1 + 240 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 241 + OFFSET_X, 1, 0.68, 0.68 );
setScaleKey( spep_1 + 242 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 243 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 244 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 245 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 246 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 247 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 248 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 251 + OFFSET_X, 1, 3.28, 3.28 );
setScaleKey( spep_1 + 252 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_1 + 253 + OFFSET_X, 1, 3.25, 3.25 );
setScaleKey( spep_1 + 254 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_1 + 255 + OFFSET_X, 1, 3.17, 3.17 );
setScaleKey( spep_1 + 256 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 257 + OFFSET_X, 1, 3.01, 3.01 );
setScaleKey( spep_1 + 258 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_1 + 259 + OFFSET_X, 1, 2.75, 2.75 );
setScaleKey( spep_1 + 260 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 261 + OFFSET_X, 1, 2.36, 2.36 );
setScaleKey( spep_1 + 262 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 263 + OFFSET_X, 1, 1.82, 1.82 );
setScaleKey( spep_1 + 264 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 275 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 276 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 277 + OFFSET_X, 1, 2.91, 2.91 );
setScaleKey( spep_1 + 278 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 279 + OFFSET_X, 1, 2.89, 2.89 );
setScaleKey( spep_1 + 280 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 281 + OFFSET_X, 1, 2.83, 2.83 );
setScaleKey( spep_1 + 282 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 283 + OFFSET_X, 1, 2.74, 2.74 );
setScaleKey( spep_1 + 284 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 285 + OFFSET_X, 1, 2.61, 2.61 );
setScaleKey( spep_1 + 286 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 287 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 288 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 289 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_1 + 290 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 291 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_1 + 292 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 293 + OFFSET_X, 1, 1.73, 1.73 );
setScaleKey( spep_1 + 294 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 295 + OFFSET_X, 1, 1.43, 1.43 );
setScaleKey( spep_1 + 296 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 297 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_1 + 298 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 299 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 300 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 301 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 302 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 303 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 304 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 305 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 306 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 307 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 308 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 311 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 312 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 313 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 314 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 315 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 316 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 319 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_1 + 320 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 321 + OFFSET_X, 1, 0.23, 0.23 );
setScaleKey( spep_1 + 322 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 325 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_1 + 326 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 327 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_1 + 328 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 331 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_1 + 332 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 335 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_1 + 336 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 339 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_1 + 340 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 343 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_1 + 344 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 347 + OFFSET_X, 1, 0.16, 0.16 );
setScaleKey( spep_1 + 348 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 351 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_1 + 352 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 357 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_1 + 358 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 363 + OFFSET_X, 1, 0.13, 0.13 );
setScaleKey( spep_1 + 364 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 371 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_1 + 372 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 381 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_1 + 382 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_1 + 398 + OFFSET_X, 1, 0.1, 0.1 );

setRotateKey( spep_1 + 202 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 247 + OFFSET_X, 1, -45.4 );
setRotateKey( spep_1 + 248 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_1 + 275 + OFFSET_X, 1, -30.5 );
setRotateKey( spep_1 + 276 + OFFSET_X, 1, 16.5 );
setRotateKey( spep_1 + 398 + OFFSET_X, 1, 16.5 );

-- ** 音 ** --
--ソード大きくなる予兆
SE042 = playSeVer2( spep_1 + 0, 1148, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE042, 68 );
SE043 = playSeVer2( spep_1 + 0, 1278, "",spep_1 + 110, 0, 60, -1);
SE044 = playSeVer2( spep_1 + 0, 1405, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE044, 178 );

--ソード大きくなる
SE045 = playSeVer2( spep_1 + 26, 1426, "", 0, 0, 0, -1);
setPitch( spep_1 + 26, SE045, -600 );
setTimeStretch( SE045, 0.6, 30, 4 );
SE046 = playSeVer2( spep_1 + 46, 1114, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_1 + 46, 1011, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE047, 78 );
SE048 = playSeVer2( spep_1 + 46, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 46, SE048, 71 );
setPitch( spep_1 + 46, SE048, 300 );
setTimeStretch( SE048, 1.2, 30, 4 );

--横斬り
SE049 = playSeVer2( spep_1 + 102, 1004, "", 0, 0, 0, -1);
setPitch( spep_1 + 102, SE049, -400 );
setTimeStretch( SE049, 0.73, 30, 4 );
SE050 = playSeVer2( spep_1 + 110, 1172, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE050, 71 );
setPitch( spep_1 + 110, SE050, -500 );
setTimeStretch( SE050, 0.67, 30, 4 );
SE051 = playSeVer2( spep_1 + 110, 1240, "",spep_1 + 200, 0, 14, -1);
setSeVolumeByWorkId( spep_1 + 110, SE051, 191 );
setTimeStretch( SE051, 0.83, 30, 4 );
SE052 = playSeVer2( spep_1 + 110, 1143, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 110, SE052, 14 );
SE053 = playSeVer2( spep_1 + 110, 1187, "", 0, 0, 0, -1);
SE054 = playSeVer2( spep_1 + 112, 1142, "", 0, 0, 0, -1);

--ポタラひかる
SE055 = playSeVer2( spep_1 + 136, 1289, "",spep_1 + 234, 0, 54, -1);
setSeVolumeByWorkId( spep_1 + 136, SE055, 63 );

--向かっていく
SE056 = playSeVer2( spep_1 + 200, 1117, "", 0, 0, 0, -1);
SE057 = playSeVer2( spep_1 + 200, 1182, "", 0, 0, 0, -1);
SE058 = playSeVer2( spep_1 + 200, 9, "", 0, 0, 0, -1);

--ラスト斬りつける
SE059 = playSeVer2( spep_1 + 264, 1189, "", 0, 0, 0, -1);

--風圧音
SE060 = playSeVer2( spep_1 + 266, 1427, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE060, 60 );

--ラスト斬りつける
SE061 = playSeVer2( spep_1 + 260, 1032, "", 0, 0, 0, -1);
SE062 = playSeVer2( spep_1 + 266, 1143, "", 0, 0, 0, -1);
SE063 = playSeVer2( spep_1 + 266, 1120, "", 0, 0, 0, -1);
SE064 = playSeVer2( spep_1 + 266, 1187, "", 0, 0, 0, -1);
SE065 = playSeVer2( spep_1 + 266, 1068, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 266, SE065, 71 );

--敵飛んでいく
SE066 = playSeVer2( spep_1 + 296, 1183, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 296, SE066, 74 );
SE067 = playSeVer2( spep_1 + 296, 1121, "",spep_1 + 398, 0, 40, -1);
setSeVolumeByWorkId( spep_1 + 296, SE067, 61 );

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 294); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 398F-4

end
