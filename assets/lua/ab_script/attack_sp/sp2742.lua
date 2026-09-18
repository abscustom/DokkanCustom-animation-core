--4029780:UR_超サイヤ人べジータ_必殺技：プラネットバースト
--sp_effect_b4_00347
--sp2742

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163090;  --開幕～宙返り蹴り着地まで ef_001
SP_01b = 163092;  --開幕～宙返り蹴り着地まで ef_001b
SP_02 = 163094;  --気弾生成～爆発まで ef_002
SP_02b = 163096;  --気弾生成～爆発まで ef_002b

--エフェクト(敵)
SP_01r = 163091;  --開幕～宙返り蹴り着地まで ef_001r
SP_01br = 163093;  --開幕～宙返り蹴り着地まで ef_001br
SP_02r = 163095;  --気弾生成～爆発まで ef_002r
SP_02br = 163097;  --気弾生成～爆発まで ef_002br


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

if (_IS_PLAYER_SIDE_ == 1) then

------------------------------------------------------------------------------------------------------------
--味方側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;
setupMovie(0 , SP_01, 0, 1);
-------------------------------------------------
-- 開幕～宙返り蹴り着地まで
-------------------------------------------------
MAX_FRAME_0 = 524;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～宙返り蹴り着地まで(ef_001)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1--

setDisp( spep_0 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 106 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 106 + OFFSET_X, 1, -7.5, 50.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -7.5, 50.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -8.8, 51.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -8.8, 51.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -6.9, 50.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -6.9, 50.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -6.7, 48.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -6.7, 48.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -6.4, 50.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -6.4, 50.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -4.6, 51.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -4.6, 51.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -5.9, 50.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -5.9, 50.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -4, 50.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -4, 50.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -5.3, 50.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -5.3, 50.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -6.6, 51.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -6.6, 51.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -4.8, 50.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -4.8, 50.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -3, 50.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -3, 50.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -4.3, 50.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -4.3, 50.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -5.5, 51.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -5.5, 51.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -3.7, 50 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -3.7, 50 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -5, 48.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -5, 48.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -3.2, 50 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -3.2, 50 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -4.5, 51.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -4.5, 51.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, -2.6, 49.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, -2.6, 49.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, -2.4, 51.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, -2.4, 51.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, -2.1, 49.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, -2.1, 49.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, -1.8, 48.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, -1.8, 48.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, -1.6, 49.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, -1.6, 49.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, -2.8, 51.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, -2.8, 51.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -1, 49.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -1, 49.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -0.8, 51.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -0.8, 51.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -0.5, 49.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -0.5, 49.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -1.8, 51.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -1.8, 51.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 0.1, 49.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 0.1, 49.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 1.9, 48 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 1.9, 48 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 0.6, 49.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 0.6, 49.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -0.7, 51 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -0.7, 51 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 1.1, 49.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 1.1, 49.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 1.4, 47.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 1.4, 47.9 , 0 );

setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.37, 1.37 );

setRotateKey( spep_0 + 106 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, -15.4 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, -15.1 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, -14.8 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, -14.5 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, -14.3 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, -14 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, -13.7 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, -13.4 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, -13.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, -12.8 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, -12.5 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, -12.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, -12 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, -11.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, -11.4 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, -11.1 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, -10.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -10.5 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, -10.2 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, -10 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, -9.7 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, -9.4 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, -9.1 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, -8.8 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, -8.5 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, -8.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, -7.9 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, -7.7 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, -7.4 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, -7.1 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, -6.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, -6.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, -6.2 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, -5.9 );

--敵の動き2--

setDisp( spep_0 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 258 + OFFSET_X, 1, 94, -14.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, 94, -14.7 , 0 );

setScaleKey( spep_0 + 258 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_0 + 258 + OFFSET_X, 1, -8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, -8 );

--敵の動き3--
setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, 92.7, -42.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, 92.7, -42.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 268.4, 112 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, 268.4, 112 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, 237.1, 78.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, 237.1, 78.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, 272, 110.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, 272, 110.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, 250.9, 87.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, 250.9, 87.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, 278.2, 112.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, 278.2, 112.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, 262, 94 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, 262, 94 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, 284, 113.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, 284, 113.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, 272.6, 100.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, 272.6, 100.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, 289, 114.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, 289, 114.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, 282.3, 106.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, 282.3, 106.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, 293.2, 115.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, 293.2, 115.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, 291.2, 111.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, 291.2, 111.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, 296.5, 115.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, 296.5, 115.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, 299.1, 116.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, 299.1, 116.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, 301.5, 117.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, 301.5, 117.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, 303.6, 118.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, 303.6, 118.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, 305.6, 119.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, 305.6, 119.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, 307.4, 120.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, 307.4, 120.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, 309, 121.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, 309, 121.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, 310.5, 122 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, 310.5, 122 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, 311.8, 122.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, 311.8, 122.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, 312.9, 123.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, 312.9, 123.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, 313.9, 123.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, 313.9, 123.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, 314.8, 124.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, 314.8, 124.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, 315.6, 124.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, 315.6, 124.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, 316.3, 124.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, 316.3, 124.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, 316.8, 125 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, 316.8, 125 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, -39.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, -39.6 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, -39.3 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, -39 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, -38.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, -38.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, -38.1 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, -37.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, -37.5 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, -37.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, -37 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, -36.8 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, -36.6 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, -36.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, -36.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, -36 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, -35.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, -35.7 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, -35.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, -35.5 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, -35.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, -35.3 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, -35.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, -35.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, -35 );

--敵の動き4--

setDisp( spep_0 + 384 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 526 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 384 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 438 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 384 + OFFSET_X, 1, -27, 55.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, -27, 55.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, 35.1, -7.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, 35.1, -7.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -15.1, 41.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -15.1, 41.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, 40.2, -14.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, 40.2, -14.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -3.8, 29.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -3.8, 29.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, 44.7, -20 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, 44.7, -20 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, 6.7, 17.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, 6.7, 17.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, 48.5, -25 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, 48.5, -25 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, 16.6, 6.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, 16.6, 6.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, 51.6, -29.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, 51.6, -29.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, 25.7, -3.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, 25.7, -3.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, 54, -32.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, 54, -32.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, 34.1, -13.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, 34.1, -13.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, 55.7, -35.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, 55.7, -35.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, 41.9, -21.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, 41.9, -21.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, 56.7, -36.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, 56.7, -36.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, 47.3, -27.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, 47.3, -27.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, 58.6, -39.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, 58.6, -39.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, 52.1, -33 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, 52.1, -33 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, 59.8, -41 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, 59.8, -41 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, 56.1, -37.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, 56.1, -37.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, 60.3, -41.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, 60.3, -41.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, 59.5, -41.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, 59.5, -41.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, 60.1, -41.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, 60.1, -41.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, 60.5, -42.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, 60.5, -42.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, 60.8, -42.7 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, 60.8, -42.7 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, 60.9, -42.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, 60.9, -42.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, 131.8, 1.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, 131.8, 1.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, 132, 0.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, 132, 0.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, 132.2, 0.3 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, 132.2, 0.3 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, 132.5, -0.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, 132.5, -0.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, 132.7, -0.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, 132.7, -0.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, 133, -1.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, 133, -1.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, 133.2, -1.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, 133.2, -1.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, 133.5, -2.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, 133.5, -2.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, 133.7, -2.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, 133.7, -2.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, 133.9, -3.1 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, 133.9, -3.1 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, 134.2, -3.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, 134.2, -3.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, 134.4, -4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, 134.4, -4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, 134.7, -4.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, 134.7, -4.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, 134.9, -4.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, 134.9, -4.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, 135.1, -5.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, 135.1, -5.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, 135.3, -5.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, 135.3, -5.8 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, 135.5, -6.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, 135.5, -6.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, 135.8, -6.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, 135.8, -6.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, 136, -7.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, 136, -7.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, 136.2, -7.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, 136.2, -7.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, 136.4, -7.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, 136.4, -7.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, 136.6, -8.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, 136.6, -8.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, 136.7, -8.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, 136.7, -8.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, 136.9, -8.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, 136.9, -8.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, 137.1, -9.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, 137.1, -9.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, 137.3, -9.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, 137.3, -9.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, 137.4, -9.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, 137.4, -9.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, 137.6, -10.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, 137.6, -10.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, 137.7, -10.5 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, 137.7, -10.5 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, 137.9, -10.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, 137.9, -10.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, 138, -11.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, 138, -11.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, 138.2, -11.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, 138.2, -11.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, 138.3, -11.6 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, 138.3, -11.6 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, 138.4, -11.8 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, 138.4, -11.8 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, 138.5, -12.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, 138.5, -12.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, 138.6, -12.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, 138.6, -12.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, 138.8, -12.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, 138.8, -12.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, 138.9, -12.7 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, 138.9, -12.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, 139, -12.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, 139, -12.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, 139.1, -13.1 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, 139.1, -13.1 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, 139.2, -13.3 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, 139.2, -13.3 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, 139.2, -13.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, 139.2, -13.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, 139.3, -13.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, 139.3, -13.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, 139.4, -13.8 , 0 );

setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_0 + 384 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 3.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 3.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, 4.2 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, 4.4 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, 4.5 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, 4.7 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, 4.8 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, 4.9 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, 5.1 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, 5.2 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, 5.3 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, 5.4 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, 5.5 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, 5.6 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, 5.8 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, 6 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, 30.2 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, 30.2 );

-- ** 音 ** --

--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 1304, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1019, "", 0, 0, 0, -1);

--一人称向かっていく
SE007 = playSeVer2( spep_0 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE007, 39 );
setTimeStretch( SE007, 1.4, 30, 4 );
SE008 = playSeVer2( spep_0 + 92, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 73 );

--飛んでくる
SE010 = playSeVer2( spep_0 + 118, 1019, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 160, 1116, "",spep_0 + 226, 0, 34, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 164, 1121, "", 0, 12, 0, -1);
setStartTimeMs( SE009,  867 );

--画面遷移
SE012 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE013, 40 );

--飛んでくる
SE014 = playSeVer2( spep_0 + 182, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 136 );

--オーラ
SE015 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE015, 40 );
SE016 = playSeVer2( spep_0 + 222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE016, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 244; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

--パンチ
SE017 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);

--飛んでくる
SE018 = playSeVer2( spep_0 + 246, 1019, "",spep_0 + 290, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 246, SE018, 145 );

--オーラ
SE019 = playSeVer2( spep_0 + 246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE019, 40 );

--パンチ
SE020 = playSeVer2( spep_0 + 252, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 252, 1153, "", 0, 0, 0, -1);

--バク宙
SE022 = playSeVer2( spep_0 + 320, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 320, 1117, "",spep_0 + 394, 0, 20, -1);

--キック
SE024 = playSeVer2( spep_0 + 356, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE024, 178 );
SE025 = playSeVer2( spep_0 + 364, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE025, 77 );
SE026 = playSeVer2( spep_0 + 370, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE026, 50 );

--画面遷移
SE027 = playSeVer2( spep_0 + 428, 1232, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE028, 63 );

SE029 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE029, 63 );

--着地
SE030 = playSeVer2( spep_0 + 472, 63, "",spep_0 + 524, 0, 20, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE031, 63 );

--着地
SE032 = playSeVer2( spep_0 + 494, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE032, 251 );

--オーラ
SE033 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE033, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 524F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------



spep_2 = showCardCutin(spep_1, 0) +2;

-- ** 音 ** --

--オーラ
SE035 = playSeVer2( spep_1 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE035, 50 );

-------------------------------------------------
-- 気弾生成～爆発まで
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾生成～爆発まで(ef_002)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, 1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, 1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1--

setDisp( spep_2 + 228 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 228 + OFFSET_X, 1, 106 );

setMoveKey( spep_2 + 228 + OFFSET_X, 1, 132.9, 148.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, 132.9, 148.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, 128.7, 130.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, 128.7, 130.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, 139.6, 118 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, 139.6, 118 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, 135.7, 100.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, 135.7, 100.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, 145.8, 93.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, 145.8, 93.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, 145.9, 102.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, 145.9, 102.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, 136, 102.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, 136, 102.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, 146, 92.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, 146, 92.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, 143.6, 102.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, 143.6, 102.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, 136.2, 92.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, 136.2, 92.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, 136.3, 99.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, 136.3, 99.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, 143.9, 102.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, 143.9, 102.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, 144, 94.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, 144, 94.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, 136.5, 99.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, 136.5, 99.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, 146.6, 91.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, 146.6, 91.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, 146.7, 101.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, 146.7, 101.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, 136.8, 94 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, 136.8, 94 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, 136.9, 98.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, 136.9, 98.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, 144.5, 101.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, 144.5, 101.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, 137.1, 93.6 , 0 );

setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 228 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, -5.9 );

-- ** 音 ** --

--腕上げる
SE036 = playSeVer2( spep_2 + 6, 1116, "",spep_2 + 58, 0, 26, -1);

--オーラ
SE037 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE037, 50 );

--気弾溜め
SE038 = playSeVer2( spep_2 + 24, 1296, "",spep_2 + 206, 0, 14, -1);
SE039 = playSeVer2( spep_2 + 24, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE039, 71 );

--オーラ
SE040 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE040, 50 );
SE041 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE041, 50 );
SE042 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE042, 50 );

--飛び上がる
SE043 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 84, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE044, 80 );
SE045 = playSeVer2( spep_2 + 98, 44, "", 0, 0, 0, -1);

--オーラ
SE046 = playSeVer2( spep_2 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE046, 50 );
SE047 = playSeVer2( spep_2 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE047, 50 );
SE048 = playSeVer2( spep_2 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE048, 50 );

--気弾発射
SE049 = playSeVer2( spep_2 + 168, 1003, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_2 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE050, 50 );

--気弾発射
SE051 = playSeVer2( spep_2 + 184, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 184, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE053 = playSeVer2( spep_2 + 204, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE053, 158 );

--爆発
SE054 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 254, 1159, "", 0, 0, 0, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE056, 56 );
SE057 = playSeVer2( spep_2 + 290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE057, 56 );
SE058 = playSeVer2( spep_2 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE058, 56 );
SE059 = playSeVer2( spep_2 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 338, SE059, 56 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 382F -4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------

spep_0 = 0;

setupMovie(0 , SP_01, 0, 1);

-------------------------------------------------
-- 開幕～宙返り蹴り着地まで
-------------------------------------------------
MAX_FRAME_0 = 524;

-- ** エフェクト等 ** --
start_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 開幕～宙返り蹴り着地まで(ef_001r)
setEffMoveKey( spep_0 + 0, start_f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, start_f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, start_f, -1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, start_f, -1.0, 1.0);
setEffRotateKey( spep_0 + 0, start_f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, start_f, 0);
setEffAlphaKey( spep_0 + 0, start_f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, start_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒　背景

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 2;

-- ** 顔カットイン ** --
--speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
--setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
--speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
--setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--[[
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 105, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 105, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 105, 515.5 , 0 );
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
]]
--顔カットイン
--SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
--敵の動き1--

setDisp( spep_0 + 106 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 174 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 106 + OFFSET_X, 1, 17 );

setMoveKey( spep_0 + 106 + OFFSET_X, 1, 7.5, 50.4 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 7.5, 50.4 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 8.8, 51.9 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 8.8, 51.9 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 6.9, 50.4 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 6.9, 50.4 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 6.7, 48.8 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 6.7, 48.8 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 6.4, 50.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 6.4, 50.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 4.6, 51.8 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 4.6, 51.8 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 5.9, 50.3 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 5.9, 50.3 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 4, 50.2 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 4, 50.2 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 5.3, 50.2 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 5.3, 50.2 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 6.6, 51.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 6.6, 51.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 4.8, 50.1 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 4.8, 50.1 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 3, 50.1 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 3, 50.1 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 4.3, 50.1 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 4.3, 50.1 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 5.5, 51.6 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 5.5, 51.6 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 3.7, 50 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 3.7, 50 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 5, 48.5 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 5, 48.5 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 3.2, 50 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 3.2, 50 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 4.5, 51.5 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 4.5, 51.5 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 2.6, 49.9 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 2.6, 49.9 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 2.4, 51.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 2.4, 51.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 2.1, 49.9 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 2.1, 49.9 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 1.8, 48.3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 1.8, 48.3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 1.6, 49.8 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 1.6, 49.8 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 2.8, 51.3 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 2.8, 51.3 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 1, 49.7 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 1, 49.7 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 0.8, 51.2 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 0.8, 51.2 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 0.5, 49.7 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 0.5, 49.7 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 1.8, 51.2 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 1.8, 51.2 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -0.1, 49.6 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -0.1, 49.6 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -1.9, 48 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -1.9, 48 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -0.6, 49.5 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -0.6, 49.5 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 0.7, 51 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 0.7, 51 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -1.1, 49.5 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -1.1, 49.5 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1.4, 47.9 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -1.4, 47.9 , 0 );

setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.02, 1.02 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 109 + OFFSET_X, 1, 1.03, 1.03 );
setScaleKey( spep_0 + 110 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 117 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 118 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 125 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 126 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 133 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 134 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 143 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 144 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 147 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 148 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 149 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 150 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.28, 1.28 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.29, 1.29 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.3, 1.3 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 1.31, 1.31 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.33, 1.33 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.34, 1.34 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.35, 1.35 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.37, 1.37 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.37, 1.37 );

setRotateKey( spep_0 + 106 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 107 + OFFSET_X, 1, 15.4 );
setRotateKey( spep_0 + 108 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 109 + OFFSET_X, 1, 15.1 );
setRotateKey( spep_0 + 110 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 111 + OFFSET_X, 1, 14.8 );
setRotateKey( spep_0 + 112 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 113 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 114 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 115 + OFFSET_X, 1, 14.3 );
setRotateKey( spep_0 + 116 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 117 + OFFSET_X, 1, 14 );
setRotateKey( spep_0 + 118 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 119 + OFFSET_X, 1, 13.7 );
setRotateKey( spep_0 + 120 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 121 + OFFSET_X, 1, 13.4 );
setRotateKey( spep_0 + 122 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 123 + OFFSET_X, 1, 13.1 );
setRotateKey( spep_0 + 124 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 125 + OFFSET_X, 1, 12.8 );
setRotateKey( spep_0 + 126 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 127 + OFFSET_X, 1, 12.5 );
setRotateKey( spep_0 + 128 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 129 + OFFSET_X, 1, 12.2 );
setRotateKey( spep_0 + 130 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 131 + OFFSET_X, 1, 12 );
setRotateKey( spep_0 + 132 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 133 + OFFSET_X, 1, 11.7 );
setRotateKey( spep_0 + 134 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_0 + 135 + OFFSET_X, 1, 11.4 );
setRotateKey( spep_0 + 136 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 137 + OFFSET_X, 1, 11.1 );
setRotateKey( spep_0 + 138 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 139 + OFFSET_X, 1, 10.8 );
setRotateKey( spep_0 + 140 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, 10.5 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 143 + OFFSET_X, 1, 10.2 );
setRotateKey( spep_0 + 144 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 145 + OFFSET_X, 1, 10 );
setRotateKey( spep_0 + 146 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 147 + OFFSET_X, 1, 9.7 );
setRotateKey( spep_0 + 148 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 149 + OFFSET_X, 1, 9.4 );
setRotateKey( spep_0 + 150 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 151 + OFFSET_X, 1, 9.1 );
setRotateKey( spep_0 + 152 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 153 + OFFSET_X, 1, 8.8 );
setRotateKey( spep_0 + 154 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 155 + OFFSET_X, 1, 8.5 );
setRotateKey( spep_0 + 156 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 157 + OFFSET_X, 1, 8.2 );
setRotateKey( spep_0 + 158 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 159 + OFFSET_X, 1, 7.9 );
setRotateKey( spep_0 + 160 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 161 + OFFSET_X, 1, 7.7 );
setRotateKey( spep_0 + 162 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 163 + OFFSET_X, 1, 7.4 );
setRotateKey( spep_0 + 164 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 165 + OFFSET_X, 1, 7.1 );
setRotateKey( spep_0 + 166 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 167 + OFFSET_X, 1, 6.8 );
setRotateKey( spep_0 + 168 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 169 + OFFSET_X, 1, 6.5 );
setRotateKey( spep_0 + 170 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 171 + OFFSET_X, 1, 6.2 );
setRotateKey( spep_0 + 172 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_0 + 174 + OFFSET_X, 1, 5.9 );

--敵の動き2--

setDisp( spep_0 + 258 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 264 + OFFSET_X, 1, 0 );

setMoveKey( spep_0 + 258 + OFFSET_X, 1, -94, -14.7 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -94, -14.7 , 0 );

setScaleKey( spep_0 + 258 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 2.82, 2.82 );

setRotateKey( spep_0 + 258 + OFFSET_X, 1, 8 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 8 );

--敵の動き3--

setDisp( spep_0 + 266 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 322 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 266 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 266 + OFFSET_X, 1, -92.7, -42.3 , 0 );
setMoveKey( spep_0 + 267 + OFFSET_X, 1, -92.7, -42.3 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, -268.4, 112 , 0 );
setMoveKey( spep_0 + 269 + OFFSET_X, 1, -268.4, 112 , 0 );
setMoveKey( spep_0 + 270 + OFFSET_X, 1, -237.1, 78.3 , 0 );
setMoveKey( spep_0 + 271 + OFFSET_X, 1, -237.1, 78.3 , 0 );
setMoveKey( spep_0 + 272 + OFFSET_X, 1, -272, 110.9 , 0 );
setMoveKey( spep_0 + 273 + OFFSET_X, 1, -272, 110.9 , 0 );
setMoveKey( spep_0 + 274 + OFFSET_X, 1, -250.9, 87.5 , 0 );
setMoveKey( spep_0 + 275 + OFFSET_X, 1, -250.9, 87.5 , 0 );
setMoveKey( spep_0 + 276 + OFFSET_X, 1, -278.2, 112.4 , 0 );
setMoveKey( spep_0 + 277 + OFFSET_X, 1, -278.2, 112.4 , 0 );
setMoveKey( spep_0 + 278 + OFFSET_X, 1, -262, 94 , 0 );
setMoveKey( spep_0 + 279 + OFFSET_X, 1, -262, 94 , 0 );
setMoveKey( spep_0 + 280 + OFFSET_X, 1, -284, 113.8 , 0 );
setMoveKey( spep_0 + 281 + OFFSET_X, 1, -284, 113.8 , 0 );
setMoveKey( spep_0 + 282 + OFFSET_X, 1, -272.6, 100.3 , 0 );
setMoveKey( spep_0 + 283 + OFFSET_X, 1, -272.6, 100.3 , 0 );
setMoveKey( spep_0 + 284 + OFFSET_X, 1, -289, 114.8 , 0 );
setMoveKey( spep_0 + 285 + OFFSET_X, 1, -289, 114.8 , 0 );
setMoveKey( spep_0 + 286 + OFFSET_X, 1, -282.3, 106.2 , 0 );
setMoveKey( spep_0 + 287 + OFFSET_X, 1, -282.3, 106.2 , 0 );
setMoveKey( spep_0 + 288 + OFFSET_X, 1, -293.2, 115.4 , 0 );
setMoveKey( spep_0 + 289 + OFFSET_X, 1, -293.2, 115.4 , 0 );
setMoveKey( spep_0 + 290 + OFFSET_X, 1, -291.2, 111.7 , 0 );
setMoveKey( spep_0 + 291 + OFFSET_X, 1, -291.2, 111.7 , 0 );
setMoveKey( spep_0 + 292 + OFFSET_X, 1, -296.5, 115.5 , 0 );
setMoveKey( spep_0 + 293 + OFFSET_X, 1, -296.5, 115.5 , 0 );
setMoveKey( spep_0 + 294 + OFFSET_X, 1, -299.1, 116.7 , 0 );
setMoveKey( spep_0 + 295 + OFFSET_X, 1, -299.1, 116.7 , 0 );
setMoveKey( spep_0 + 296 + OFFSET_X, 1, -301.5, 117.8 , 0 );
setMoveKey( spep_0 + 297 + OFFSET_X, 1, -301.5, 117.8 , 0 );
setMoveKey( spep_0 + 298 + OFFSET_X, 1, -303.6, 118.9 , 0 );
setMoveKey( spep_0 + 299 + OFFSET_X, 1, -303.6, 118.9 , 0 );
setMoveKey( spep_0 + 300 + OFFSET_X, 1, -305.6, 119.8 , 0 );
setMoveKey( spep_0 + 301 + OFFSET_X, 1, -305.6, 119.8 , 0 );
setMoveKey( spep_0 + 302 + OFFSET_X, 1, -307.4, 120.6 , 0 );
setMoveKey( spep_0 + 303 + OFFSET_X, 1, -307.4, 120.6 , 0 );
setMoveKey( spep_0 + 304 + OFFSET_X, 1, -309, 121.3 , 0 );
setMoveKey( spep_0 + 305 + OFFSET_X, 1, -309, 121.3 , 0 );
setMoveKey( spep_0 + 306 + OFFSET_X, 1, -310.5, 122 , 0 );
setMoveKey( spep_0 + 307 + OFFSET_X, 1, -310.5, 122 , 0 );
setMoveKey( spep_0 + 308 + OFFSET_X, 1, -311.8, 122.6 , 0 );
setMoveKey( spep_0 + 309 + OFFSET_X, 1, -311.8, 122.6 , 0 );
setMoveKey( spep_0 + 310 + OFFSET_X, 1, -312.9, 123.2 , 0 );
setMoveKey( spep_0 + 311 + OFFSET_X, 1, -312.9, 123.2 , 0 );
setMoveKey( spep_0 + 312 + OFFSET_X, 1, -313.9, 123.6 , 0 );
setMoveKey( spep_0 + 313 + OFFSET_X, 1, -313.9, 123.6 , 0 );
setMoveKey( spep_0 + 314 + OFFSET_X, 1, -314.8, 124.1 , 0 );
setMoveKey( spep_0 + 315 + OFFSET_X, 1, -314.8, 124.1 , 0 );
setMoveKey( spep_0 + 316 + OFFSET_X, 1, -315.6, 124.4 , 0 );
setMoveKey( spep_0 + 317 + OFFSET_X, 1, -315.6, 124.4 , 0 );
setMoveKey( spep_0 + 318 + OFFSET_X, 1, -316.3, 124.7 , 0 );
setMoveKey( spep_0 + 319 + OFFSET_X, 1, -316.3, 124.7 , 0 );
setMoveKey( spep_0 + 320 + OFFSET_X, 1, -316.8, 125 , 0 );
setMoveKey( spep_0 + 322 + OFFSET_X, 1, -316.8, 125 , 0 );

setScaleKey( spep_0 + 266 + OFFSET_X, 1, 3.68, 3.68 );
setScaleKey( spep_0 + 322 + OFFSET_X, 1, 3.68, 3.68 );

setRotateKey( spep_0 + 266 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 267 + OFFSET_X, 1, 39.9 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 269 + OFFSET_X, 1, 39.6 );
setRotateKey( spep_0 + 270 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 271 + OFFSET_X, 1, 39.3 );
setRotateKey( spep_0 + 272 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 273 + OFFSET_X, 1, 39 );
setRotateKey( spep_0 + 274 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 275 + OFFSET_X, 1, 38.7 );
setRotateKey( spep_0 + 276 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 277 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_0 + 278 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 279 + OFFSET_X, 1, 38.1 );
setRotateKey( spep_0 + 280 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_0 + 281 + OFFSET_X, 1, 37.8 );
setRotateKey( spep_0 + 282 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 283 + OFFSET_X, 1, 37.5 );
setRotateKey( spep_0 + 284 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_0 + 285 + OFFSET_X, 1, 37.3 );
setRotateKey( spep_0 + 286 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 287 + OFFSET_X, 1, 37 );
setRotateKey( spep_0 + 288 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 289 + OFFSET_X, 1, 36.8 );
setRotateKey( spep_0 + 290 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 291 + OFFSET_X, 1, 36.6 );
setRotateKey( spep_0 + 292 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 293 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_0 + 294 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 295 + OFFSET_X, 1, 36.2 );
setRotateKey( spep_0 + 296 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 297 + OFFSET_X, 1, 36 );
setRotateKey( spep_0 + 298 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 299 + OFFSET_X, 1, 35.9 );
setRotateKey( spep_0 + 300 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 301 + OFFSET_X, 1, 35.7 );
setRotateKey( spep_0 + 302 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_0 + 303 + OFFSET_X, 1, 35.6 );
setRotateKey( spep_0 + 304 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 305 + OFFSET_X, 1, 35.5 );
setRotateKey( spep_0 + 306 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 307 + OFFSET_X, 1, 35.4 );
setRotateKey( spep_0 + 308 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 309 + OFFSET_X, 1, 35.3 );
setRotateKey( spep_0 + 310 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 313 + OFFSET_X, 1, 35.2 );
setRotateKey( spep_0 + 314 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 315 + OFFSET_X, 1, 35.1 );
setRotateKey( spep_0 + 316 + OFFSET_X, 1, 35 );
setRotateKey( spep_0 + 322 + OFFSET_X, 1, 35 );

--敵の動き4--

setDisp( spep_0 + 384 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 526 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 384 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 438 + OFFSET_X, 1, 8 );

setMoveKey( spep_0 + 384 + OFFSET_X, 1, 27, 55.3 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 27, 55.3 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -35.1, -7.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -35.1, -7.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, 15.1, 41.8 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, 15.1, 41.8 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -40.2, -14.2 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -40.2, -14.2 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, 3.8, 29.2 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, 3.8, 29.2 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -44.7, -20 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -44.7, -20 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -6.7, 17.4 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -6.7, 17.4 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -48.5, -25 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -48.5, -25 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -16.6, 6.4 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -16.6, 6.4 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -51.6, -29.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -51.6, -29.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -25.7, -3.8 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -25.7, -3.8 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -54, -32.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -54, -32.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -34.1, -13.1 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -34.1, -13.1 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -55.7, -35.1 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -55.7, -35.1 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -41.9, -21.6 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -41.9, -21.6 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -56.7, -36.8 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -56.7, -36.8 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -47.3, -27.7 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -47.3, -27.7 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -58.6, -39.3 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -58.6, -39.3 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -52.1, -33 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -52.1, -33 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -59.8, -41 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -59.8, -41 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -56.1, -37.5 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -56.1, -37.5 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -60.3, -41.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -60.3, -41.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -59.5, -41.2 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -59.5, -41.2 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -60.1, -41.9 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -60.1, -41.9 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -60.5, -42.4 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -60.5, -42.4 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -60.8, -42.7 , 0 );
setMoveKey( spep_0 + 435 + OFFSET_X, 1, -60.8, -42.7 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -60.9, -42.8 , 0 );
setMoveKey( spep_0 + 437 + OFFSET_X, 1, -60.9, -42.8 , 0 );
setMoveKey( spep_0 + 438 + OFFSET_X, 1, -131.8, 1.2 , 0 );
setMoveKey( spep_0 + 439 + OFFSET_X, 1, -131.8, 1.2 , 0 );
setMoveKey( spep_0 + 440 + OFFSET_X, 1, -132, 0.7 , 0 );
setMoveKey( spep_0 + 441 + OFFSET_X, 1, -132, 0.7 , 0 );
setMoveKey( spep_0 + 442 + OFFSET_X, 1, -132.2, 0.3 , 0 );
setMoveKey( spep_0 + 443 + OFFSET_X, 1, -132.2, 0.3 , 0 );
setMoveKey( spep_0 + 444 + OFFSET_X, 1, -132.5, -0.2 , 0 );
setMoveKey( spep_0 + 445 + OFFSET_X, 1, -132.5, -0.2 , 0 );
setMoveKey( spep_0 + 446 + OFFSET_X, 1, -132.7, -0.7 , 0 );
setMoveKey( spep_0 + 447 + OFFSET_X, 1, -132.7, -0.7 , 0 );
setMoveKey( spep_0 + 448 + OFFSET_X, 1, -133, -1.2 , 0 );
setMoveKey( spep_0 + 449 + OFFSET_X, 1, -133, -1.2 , 0 );
setMoveKey( spep_0 + 450 + OFFSET_X, 1, -133.2, -1.7 , 0 );
setMoveKey( spep_0 + 451 + OFFSET_X, 1, -133.2, -1.7 , 0 );
setMoveKey( spep_0 + 452 + OFFSET_X, 1, -133.5, -2.1 , 0 );
setMoveKey( spep_0 + 453 + OFFSET_X, 1, -133.5, -2.1 , 0 );
setMoveKey( spep_0 + 454 + OFFSET_X, 1, -133.7, -2.6 , 0 );
setMoveKey( spep_0 + 455 + OFFSET_X, 1, -133.7, -2.6 , 0 );
setMoveKey( spep_0 + 456 + OFFSET_X, 1, -133.9, -3.1 , 0 );
setMoveKey( spep_0 + 457 + OFFSET_X, 1, -133.9, -3.1 , 0 );
setMoveKey( spep_0 + 458 + OFFSET_X, 1, -134.2, -3.6 , 0 );
setMoveKey( spep_0 + 459 + OFFSET_X, 1, -134.2, -3.6 , 0 );
setMoveKey( spep_0 + 460 + OFFSET_X, 1, -134.4, -4 , 0 );
setMoveKey( spep_0 + 461 + OFFSET_X, 1, -134.4, -4 , 0 );
setMoveKey( spep_0 + 462 + OFFSET_X, 1, -134.7, -4.5 , 0 );
setMoveKey( spep_0 + 463 + OFFSET_X, 1, -134.7, -4.5 , 0 );
setMoveKey( spep_0 + 464 + OFFSET_X, 1, -134.9, -4.9 , 0 );
setMoveKey( spep_0 + 465 + OFFSET_X, 1, -134.9, -4.9 , 0 );
setMoveKey( spep_0 + 466 + OFFSET_X, 1, -135.1, -5.4 , 0 );
setMoveKey( spep_0 + 467 + OFFSET_X, 1, -135.1, -5.4 , 0 );
setMoveKey( spep_0 + 468 + OFFSET_X, 1, -135.3, -5.8 , 0 );
setMoveKey( spep_0 + 469 + OFFSET_X, 1, -135.3, -5.8 , 0 );
setMoveKey( spep_0 + 470 + OFFSET_X, 1, -135.5, -6.2 , 0 );
setMoveKey( spep_0 + 471 + OFFSET_X, 1, -135.5, -6.2 , 0 );
setMoveKey( spep_0 + 472 + OFFSET_X, 1, -135.8, -6.7 , 0 );
setMoveKey( spep_0 + 473 + OFFSET_X, 1, -135.8, -6.7 , 0 );
setMoveKey( spep_0 + 474 + OFFSET_X, 1, -136, -7.1 , 0 );
setMoveKey( spep_0 + 475 + OFFSET_X, 1, -136, -7.1 , 0 );
setMoveKey( spep_0 + 476 + OFFSET_X, 1, -136.2, -7.5 , 0 );
setMoveKey( spep_0 + 477 + OFFSET_X, 1, -136.2, -7.5 , 0 );
setMoveKey( spep_0 + 478 + OFFSET_X, 1, -136.4, -7.8 , 0 );
setMoveKey( spep_0 + 479 + OFFSET_X, 1, -136.4, -7.8 , 0 );
setMoveKey( spep_0 + 480 + OFFSET_X, 1, -136.6, -8.2 , 0 );
setMoveKey( spep_0 + 481 + OFFSET_X, 1, -136.6, -8.2 , 0 );
setMoveKey( spep_0 + 482 + OFFSET_X, 1, -136.7, -8.6 , 0 );
setMoveKey( spep_0 + 483 + OFFSET_X, 1, -136.7, -8.6 , 0 );
setMoveKey( spep_0 + 484 + OFFSET_X, 1, -136.9, -8.9 , 0 );
setMoveKey( spep_0 + 485 + OFFSET_X, 1, -136.9, -8.9 , 0 );
setMoveKey( spep_0 + 486 + OFFSET_X, 1, -137.1, -9.3 , 0 );
setMoveKey( spep_0 + 487 + OFFSET_X, 1, -137.1, -9.3 , 0 );
setMoveKey( spep_0 + 488 + OFFSET_X, 1, -137.3, -9.6 , 0 );
setMoveKey( spep_0 + 489 + OFFSET_X, 1, -137.3, -9.6 , 0 );
setMoveKey( spep_0 + 490 + OFFSET_X, 1, -137.4, -9.9 , 0 );
setMoveKey( spep_0 + 491 + OFFSET_X, 1, -137.4, -9.9 , 0 );
setMoveKey( spep_0 + 492 + OFFSET_X, 1, -137.6, -10.2 , 0 );
setMoveKey( spep_0 + 493 + OFFSET_X, 1, -137.6, -10.2 , 0 );
setMoveKey( spep_0 + 494 + OFFSET_X, 1, -137.7, -10.5 , 0 );
setMoveKey( spep_0 + 495 + OFFSET_X, 1, -137.7, -10.5 , 0 );
setMoveKey( spep_0 + 496 + OFFSET_X, 1, -137.9, -10.8 , 0 );
setMoveKey( spep_0 + 497 + OFFSET_X, 1, -137.9, -10.8 , 0 );
setMoveKey( spep_0 + 498 + OFFSET_X, 1, -138, -11.1 , 0 );
setMoveKey( spep_0 + 499 + OFFSET_X, 1, -138, -11.1 , 0 );
setMoveKey( spep_0 + 500 + OFFSET_X, 1, -138.2, -11.3 , 0 );
setMoveKey( spep_0 + 501 + OFFSET_X, 1, -138.2, -11.3 , 0 );
setMoveKey( spep_0 + 502 + OFFSET_X, 1, -138.3, -11.6 , 0 );
setMoveKey( spep_0 + 503 + OFFSET_X, 1, -138.3, -11.6 , 0 );
setMoveKey( spep_0 + 504 + OFFSET_X, 1, -138.4, -11.8 , 0 );
setMoveKey( spep_0 + 505 + OFFSET_X, 1, -138.4, -11.8 , 0 );
setMoveKey( spep_0 + 506 + OFFSET_X, 1, -138.5, -12.1 , 0 );
setMoveKey( spep_0 + 507 + OFFSET_X, 1, -138.5, -12.1 , 0 );
setMoveKey( spep_0 + 508 + OFFSET_X, 1, -138.6, -12.3 , 0 );
setMoveKey( spep_0 + 509 + OFFSET_X, 1, -138.6, -12.3 , 0 );
setMoveKey( spep_0 + 510 + OFFSET_X, 1, -138.8, -12.5 , 0 );
setMoveKey( spep_0 + 511 + OFFSET_X, 1, -138.8, -12.5 , 0 );
setMoveKey( spep_0 + 512 + OFFSET_X, 1, -138.9, -12.7 , 0 );
setMoveKey( spep_0 + 513 + OFFSET_X, 1, -138.9, -12.7 , 0 );
setMoveKey( spep_0 + 514 + OFFSET_X, 1, -139, -12.9 , 0 );
setMoveKey( spep_0 + 515 + OFFSET_X, 1, -139, -12.9 , 0 );
setMoveKey( spep_0 + 516 + OFFSET_X, 1, -139.1, -13.1 , 0 );
setMoveKey( spep_0 + 517 + OFFSET_X, 1, -139.1, -13.1 , 0 );
setMoveKey( spep_0 + 518 + OFFSET_X, 1, -139.2, -13.3 , 0 );
setMoveKey( spep_0 + 519 + OFFSET_X, 1, -139.2, -13.3 , 0 );
setMoveKey( spep_0 + 520 + OFFSET_X, 1, -139.2, -13.5 , 0 );
setMoveKey( spep_0 + 521 + OFFSET_X, 1, -139.2, -13.5 , 0 );
setMoveKey( spep_0 + 522 + OFFSET_X, 1, -139.3, -13.6 , 0 );
setMoveKey( spep_0 + 523 + OFFSET_X, 1, -139.3, -13.6 , 0 );
setMoveKey( spep_0 + 526 + OFFSET_X, 1, -139.4, -13.8 , 0 );

setScaleKey( spep_0 + 384 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 437 + OFFSET_X, 1, 2.82, 2.82 );
setScaleKey( spep_0 + 438 + OFFSET_X, 1, 2.03, 2.03 );
setScaleKey( spep_0 + 526 + OFFSET_X, 1, 2.03, 2.03 );

setRotateKey( spep_0 + 384 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, -3.2 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, -3.4 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, -3.6 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, -3.8 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, -4 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -4.2 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -4.4 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 399 + OFFSET_X, 1, -4.5 );
setRotateKey( spep_0 + 400 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 401 + OFFSET_X, 1, -4.7 );
setRotateKey( spep_0 + 402 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 403 + OFFSET_X, 1, -4.8 );
setRotateKey( spep_0 + 404 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 405 + OFFSET_X, 1, -4.9 );
setRotateKey( spep_0 + 406 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 407 + OFFSET_X, 1, -5.1 );
setRotateKey( spep_0 + 408 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 409 + OFFSET_X, 1, -5.2 );
setRotateKey( spep_0 + 410 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 411 + OFFSET_X, 1, -5.3 );
setRotateKey( spep_0 + 412 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 413 + OFFSET_X, 1, -5.4 );
setRotateKey( spep_0 + 414 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 415 + OFFSET_X, 1, -5.5 );
setRotateKey( spep_0 + 416 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 419 + OFFSET_X, 1, -5.6 );
setRotateKey( spep_0 + 420 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 421 + OFFSET_X, 1, -5.7 );
setRotateKey( spep_0 + 422 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 425 + OFFSET_X, 1, -5.8 );
setRotateKey( spep_0 + 426 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 431 + OFFSET_X, 1, -5.9 );
setRotateKey( spep_0 + 432 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 437 + OFFSET_X, 1, -6 );
setRotateKey( spep_0 + 438 + OFFSET_X, 1, -30.2 );
setRotateKey( spep_0 + 526 + OFFSET_X, 1, -30.2 );

-- ** 音 ** --

--飛んでくる
SE001 = playSeVer2( spep_0 + 0, 1182, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 0, 1117, "", 0, 0, 0, -1);
SE003 = playSeVer2( spep_0 + 0, 1019, "", 0, 0, 0, -1);
SE004 = playSeVer2( spep_0 + 0, 1304, "", 0, 0, 0, -1);
SE006 = playSeVer2( spep_0 + 58, 1019, "", 0, 0, 0, -1);

--一人称向かっていく
SE007 = playSeVer2( spep_0 + 88, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 88, SE007, 39 );
setTimeStretch( SE007, 1.4, 30, 4 );
SE008 = playSeVer2( spep_0 + 92, 9, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 92, SE008, 73 );

--飛んでくる
SE010 = playSeVer2( spep_0 + 118, 1019, "", 0, 0, 0, -1);

--画面遷移
SE011 = playSeVer2( spep_0 + 160, 1116, "",spep_0 + 226, 0, 34, -1);

--向かっていく
SE009 = playSeVer2( spep_0 + 164, 1121, "", 0, 12, 0, -1);
setStartTimeMs( SE009,  867 );

--画面遷移
SE012 = playSeVer2( spep_0 + 166, 1004, "", 0, 0, 0, -1);

--オーラ
SE013 = playSeVer2( spep_0 + 174, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE013, 40 );

--飛んでくる
SE014 = playSeVer2( spep_0 + 182, 1019, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 182, SE014, 136 );

--オーラ
SE015 = playSeVer2( spep_0 + 198, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 198, SE015, 40 );
SE016 = playSeVer2( spep_0 + 222, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 222, SE016, 40 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 244; --エンドフェイズのフレーム数を置き換える
pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止
playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE009, 0);
stopSe( SP_dodge - 12, SE010, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
stopSe( SP_dodge - 12, SE016, 0);
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

--パンチ
SE017 = playSeVer2( spep_0 + 234, 1004, "", 0, 0, 0, -1);

--飛んでくる
SE018 = playSeVer2( spep_0 + 246, 1019, "",spep_0 + 290, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 246, SE018, 145 );

--オーラ
SE019 = playSeVer2( spep_0 + 246, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 246, SE019, 40 );

--パンチ
SE020 = playSeVer2( spep_0 + 252, 1187, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 252, 1153, "", 0, 0, 0, -1);

--バク宙
SE022 = playSeVer2( spep_0 + 320, 1004, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 320, 1117, "",spep_0 + 394, 0, 20, -1);

--キック
SE024 = playSeVer2( spep_0 + 356, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 356, SE024, 178 );
SE025 = playSeVer2( spep_0 + 364, 1123, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE025, 77 );
SE026 = playSeVer2( spep_0 + 370, 1187, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 370, SE026, 50 );

--画面遷移
SE027 = playSeVer2( spep_0 + 428, 1232, "", 0, 0, 0, -1);

--オーラ
SE028 = playSeVer2( spep_0 + 428, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 428, SE028, 63 );

SE029 = playSeVer2( spep_0 + 452, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 452, SE029, 63 );

--着地
SE030 = playSeVer2( spep_0 + 472, 63, "",spep_0 + 524, 0, 20, -1);

--オーラ
SE031 = playSeVer2( spep_0 + 476, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 476, SE031, 63 );

--着地
SE032 = playSeVer2( spep_0 + 494, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 494, SE032, 251 );

--オーラ
SE033 = playSeVer2( spep_0 + 500, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 500, SE033, 63 );

-- ** 次の準備 ** --
spep_1 = spep_0 + MAX_FRAME_0; -- 524F

--------------------------------------
-- カードカットイン(94F)
--------------------------------------

spep_2 = showCardCutin(spep_1, 0) + 2;

-- ** 音 ** --

--オーラ
SE035 = playSeVer2( spep_1 + 86, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 86, SE035, 50 );

-------------------------------------------------
-- 気弾生成～爆発まで
-------------------------------------------------
MAX_FRAME_2 = 382;

-- ** エフェクト等 ** --
finish_f = entryEffect( spep_2 + 0, SP_02, 0x100, -1, 0, 0, 0); -- 気弾生成～爆発まで(ef_002r)
setEffMoveKey( spep_2 + 0, finish_f, 0, 0 , 0);
setEffMoveKey( spep_2 + MAX_FRAME_2, finish_f, 0, 0 , 0);
setEffScaleKey( spep_2 + 0, finish_f, -1.0, 1.0);
setEffScaleKey( spep_2 + MAX_FRAME_2, finish_f, -1.0, 1.0);
setEffRotateKey( spep_2 + 0, finish_f, 0);
setEffRotateKey( spep_2 + MAX_FRAME_2, finish_f, 0);
setEffAlphaKey( spep_2 + 0, finish_f, 255);
setEffAlphaKey( spep_2 + MAX_FRAME_2, finish_f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_2 + 0, 0, MAX_FRAME_2 +2, 0, 0, 0, 0, 255);  --黒　背景

-- ** 敵キャラクター ** --
--敵の動き1--

setDisp( spep_2 + 228 + OFFSET_X, 1, 1 );
setDisp( spep_2 + 266 + OFFSET_X, 1, 0 );

changeAnime( spep_2 + 228 + OFFSET_X, 1, 6 );

setMoveKey( spep_2 + 228 + OFFSET_X, 1, -132.9, 148.1 , 0 );
setMoveKey( spep_2 + 229 + OFFSET_X, 1, -132.9, 148.1 , 0 );
setMoveKey( spep_2 + 230 + OFFSET_X, 1, -128.7, 130.5 , 0 );
setMoveKey( spep_2 + 231 + OFFSET_X, 1, -128.7, 130.5 , 0 );
setMoveKey( spep_2 + 232 + OFFSET_X, 1, -139.6, 118 , 0 );
setMoveKey( spep_2 + 233 + OFFSET_X, 1, -139.6, 118 , 0 );
setMoveKey( spep_2 + 234 + OFFSET_X, 1, -135.7, 100.7 , 0 );
setMoveKey( spep_2 + 235 + OFFSET_X, 1, -135.7, 100.7 , 0 );
setMoveKey( spep_2 + 236 + OFFSET_X, 1, -145.8, 93.1 , 0 );
setMoveKey( spep_2 + 237 + OFFSET_X, 1, -145.8, 93.1 , 0 );
setMoveKey( spep_2 + 238 + OFFSET_X, 1, -145.9, 102.9 , 0 );
setMoveKey( spep_2 + 239 + OFFSET_X, 1, -145.9, 102.9 , 0 );
setMoveKey( spep_2 + 240 + OFFSET_X, 1, -136, 102.8 , 0 );
setMoveKey( spep_2 + 241 + OFFSET_X, 1, -136, 102.8 , 0 );
setMoveKey( spep_2 + 242 + OFFSET_X, 1, -146, 92.7 , 0 );
setMoveKey( spep_2 + 243 + OFFSET_X, 1, -146, 92.7 , 0 );
setMoveKey( spep_2 + 244 + OFFSET_X, 1, -143.6, 102.5 , 0 );
setMoveKey( spep_2 + 245 + OFFSET_X, 1, -143.6, 102.5 , 0 );
setMoveKey( spep_2 + 246 + OFFSET_X, 1, -136.2, 92.4 , 0 );
setMoveKey( spep_2 + 247 + OFFSET_X, 1, -136.2, 92.4 , 0 );
setMoveKey( spep_2 + 248 + OFFSET_X, 1, -136.3, 99.8 , 0 );
setMoveKey( spep_2 + 249 + OFFSET_X, 1, -136.3, 99.8 , 0 );
setMoveKey( spep_2 + 250 + OFFSET_X, 1, -143.9, 102.1 , 0 );
setMoveKey( spep_2 + 251 + OFFSET_X, 1, -143.9, 102.1 , 0 );
setMoveKey( spep_2 + 252 + OFFSET_X, 1, -144, 94.5 , 0 );
setMoveKey( spep_2 + 253 + OFFSET_X, 1, -144, 94.5 , 0 );
setMoveKey( spep_2 + 254 + OFFSET_X, 1, -136.5, 99.4 , 0 );
setMoveKey( spep_2 + 255 + OFFSET_X, 1, -136.5, 99.4 , 0 );
setMoveKey( spep_2 + 256 + OFFSET_X, 1, -146.6, 91.8 , 0 );
setMoveKey( spep_2 + 257 + OFFSET_X, 1, -146.6, 91.8 , 0 );
setMoveKey( spep_2 + 258 + OFFSET_X, 1, -146.7, 101.6 , 0 );
setMoveKey( spep_2 + 259 + OFFSET_X, 1, -146.7, 101.6 , 0 );
setMoveKey( spep_2 + 260 + OFFSET_X, 1, -136.8, 94 , 0 );
setMoveKey( spep_2 + 261 + OFFSET_X, 1, -136.8, 94 , 0 );
setMoveKey( spep_2 + 262 + OFFSET_X, 1, -136.9, 98.8 , 0 );
setMoveKey( spep_2 + 263 + OFFSET_X, 1, -136.9, 98.8 , 0 );
setMoveKey( spep_2 + 264 + OFFSET_X, 1, -144.5, 101.2 , 0 );
setMoveKey( spep_2 + 265 + OFFSET_X, 1, -144.5, 101.2 , 0 );
setMoveKey( spep_2 + 266 + OFFSET_X, 1, -137.1, 93.6 , 0 );

setScaleKey( spep_2 + 228 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 229 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_2 + 230 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 231 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_2 + 232 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 233 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_2 + 234 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 245 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_2 + 246 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_2 + 266 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_2 + 228 + OFFSET_X, 1, 5.9 );
setRotateKey( spep_2 + 266 + OFFSET_X, 1, 5.9 );

-- ** 音 ** --

--腕上げる
SE036 = playSeVer2( spep_2 + 6, 1116, "",spep_2 + 58, 0, 26, -1);

--オーラ
SE037 = playSeVer2( spep_2 + 12, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 12, SE037, 50 );

--気弾溜め
SE038 = playSeVer2( spep_2 + 24, 1296, "",spep_2 + 206, 0, 14, -1);
SE039 = playSeVer2( spep_2 + 24, 1178, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 24, SE039, 71 );

--オーラ
SE040 = playSeVer2( spep_2 + 36, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 36, SE040, 50 );
SE041 = playSeVer2( spep_2 + 60, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 60, SE041, 50 );
SE042 = playSeVer2( spep_2 + 84, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE042, 50 );

--飛び上がる
SE043 = playSeVer2( spep_2 + 84, 1000, "", 0, 0, 0, -1);
SE044 = playSeVer2( spep_2 + 84, 1207, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 84, SE044, 80 );
SE045 = playSeVer2( spep_2 + 98, 44, "", 0, 0, 0, -1);

--オーラ
SE046 = playSeVer2( spep_2 + 108, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 108, SE046, 50 );
SE047 = playSeVer2( spep_2 + 132, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 132, SE047, 50 );
SE048 = playSeVer2( spep_2 + 156, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 156, SE048, 50 );

--気弾発射
SE049 = playSeVer2( spep_2 + 168, 1003, "", 0, 0, 0, -1);

--オーラ
SE050 = playSeVer2( spep_2 + 180, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 180, SE050, 50 );

--気弾発射
SE051 = playSeVer2( spep_2 + 184, 1027, "", 0, 0, 0, -1);
SE052 = playSeVer2( spep_2 + 184, 1145, "", 0, 0, 0, -1);

--気弾飛んでいく
SE053 = playSeVer2( spep_2 + 204, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 204, SE053, 158 );

--爆発
SE054 = playSeVer2( spep_2 + 254, 1024, "", 0, 0, 0, -1);
SE055 = playSeVer2( spep_2 + 254, 1159, "", 0, 0, 0, -1);

--オーラ
SE056 = playSeVer2( spep_2 + 266, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 266, SE056, 56 );
SE057 = playSeVer2( spep_2 + 290, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 290, SE057, 56 );
SE058 = playSeVer2( spep_2 + 314, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 314, SE058, 56 );
SE059 = playSeVer2( spep_2 + 338, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_2 + 338, SE059, 56 );

-- ** ダメージ表示 ** --
dealDamage( spep_2 + 266); -- ダメージ表示フレーム
endPhase( spep_2 + MAX_FRAME_2 -4); -- 382F -4

end