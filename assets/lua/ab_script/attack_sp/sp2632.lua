--1027750:UR_紅き仮面のサイヤ人(超サイヤ人ロゼ3)_必殺技：神縛裂光弾
--sp_effect_a2_00227
--sp2632

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162387;	--正面アップ～セリフカットイン	ef_001
SP_01b = 162388;	--正面アップ～セリフカットイン	ef_001b
SP_02 = 162391;	--オーラ落とす～フィニッシュ	ef_002
SP_02b = 162392;	--オーラ落とす～フィニッシュ	ef_002b

--エフェクト(てき)
SP_01r = 162389;	--正面アップ～セリフカットイン　敵側	ef_001r
SP_01br = 162390;	--正面アップ～セリフカットイン　敵側	ef_001br
SP_02r = 162393;	--オーラ落とす～フィニッシュ　敵側	ef_002r
SP_02br = 162394;	--オーラ落とす～フィニッシュ　敵側	ef_002br


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


-------------------------------------------------
-- 正面アップ～セリフカットイン
-------------------------------------------------

MAX_FRAME_0 = 540;

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
spep_x = spep_0 + 455;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp(spep_0 + 80 + OFFSET_X, 1, 1);
setDisp(spep_0 + 202 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 80 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 88 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, -23.3, -64.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, -23.3, -64.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, -23.1, -34.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, -23.1, -34.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, -22.9, -5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, -22.9, -5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, -23.2, -4.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, -23.2, -4.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, -23.4, -4.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, -23.4, -4.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, -17.7, 10.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, -17.7, 10.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, -53.9, -27.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, -53.9, -27.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, -36.3, 9.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, -36.3, 9.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, -2.5, -26.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, -2.5, -26.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, -24.8, -2.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, -24.8, -2.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, -25.1, 8.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, -25.1, 8.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, -35.4, -11.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, -35.4, -11.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, -25.6, -0.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, -25.6, -0.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, -20, 11.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, -20, 11.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, -38.2, 0 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, -38.2, 0 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, -26.5, -9.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, -26.5, -9.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, -18.8, 6.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, -18.8, 6.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, -33.1, 1.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, -33.1, 1.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, -27.3, 7.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, -27.3, 7.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, -27.7, 6.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, -27.7, 6.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, -19.9, 18.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, -19.9, 18.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, -34.8, -6.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, -34.8, -6.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, -25.9, 24.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, -25.9, 24.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, -28.8, 3.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, -28.8, 3.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, -29, 4.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, -29, 4.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, -29.4, 4.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, -29.4, 4.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, -29.6, 5.1 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, -29.6, 5.1 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, -29.9, 5.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, -29.9, 5.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, -30.2, 6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, -30.2, 6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, -30.5, 6.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, -30.5, 6.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, -30.7, 6.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, -30.7, 6.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 113.7, -239.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 113.7, -239.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 113.3, -238.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 113.3, -238.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 112.9, -237.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 112.9, -237.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 112.5, -236.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 112.5, -236.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 112.1, -236 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 112.1, -236 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 111.7, -235.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 111.7, -235.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 111.3, -234.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 111.3, -234.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 110.8, -233.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 110.8, -233.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 110.4, -232.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 110.4, -232.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 110, -232 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 110, -232 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 109.6, -231.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 109.6, -231.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 109.2, -230.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 109.2, -230.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 108.8, -229.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 108.8, -229.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 108.4, -228.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 108.4, -228.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 108, -228 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 108, -228 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 107.6, -227.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 107.6, -227.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 107.2, -226.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 107.2, -226.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.8, -225.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 106.8, -225.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 106.4, -224.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 106.4, -224.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 106, -224 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 106, -224 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 105.6, -223.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 105.6, -223.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 105.2, -222.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 105.2, -222.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 104.8, -221.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 104.8, -221.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 104.4, -220.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 104.4, -220.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 104, -220 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 104, -220 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 103.6, -219.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 103.6, -219.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 103.2, -218.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 103.2, -218.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 102.8, -217.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 102.8, -217.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 102.4, -216.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 102.4, -216.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 102, -216 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 102, -216 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -35 );

-- 敵の動き2
setDisp(spep_0 + 252 + OFFSET_X, 1, 1);
setDisp(spep_0 + 268+ OFFSET_X, 1, 0);

changeAnime( spep_0 + 264 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, -703.9, 726 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -703.9, 726 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -649.4, 697.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -649.4, 697.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -573.1, 658.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -573.1, 658.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -474.8, 609.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -474.8, 609.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -354.5, 548.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -354.5, 548.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -211.9, 478.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -211.9, 478.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -65.4, 201.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -65.4, 201.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 70.1, -97.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 70.1, -97.6 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -53.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -53.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 14.5 );

-- 敵の動き3
setDisp(spep_0 + 374 + OFFSET_X, 1, 1);
setDisp(spep_0 + 436+ OFFSET_X, 1, 0);

changeAnime( spep_0 + 374 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 374 + OFFSET_X, 1, 173.7, 118.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 173.7, 118.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 149.8, 78 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 149.8, 78 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 113, 117.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 113, 117.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 66.3, 76.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 66.3, 76.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 35.7, 87.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 35.7, 87.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 4.8, 82.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 4.8, 82.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -25.8, 77.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -25.8, 77.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -84.6, 64 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -84.6, 64 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -79.1, 102.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -79.1, 102.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -114.1, 34.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -114.1, 34.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -144.9, 79.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -144.9, 79.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -159.5, 40.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -159.5, 40.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -164.2, 56.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -164.2, 56.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -174, 37.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -174, 37.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -183, 30.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -183, 30.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -191.1, 22.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -191.1, 22.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -226.3, 42.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -226.3, 42.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -180.6, 2.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -180.6, 2.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -198.2, -38.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -198.2, -38.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -175.1, 25 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -175.1, 25 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -226.5, -44.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -226.5, -44.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -163.8, -6.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -163.8, -6.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -175.6, -97.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -175.6, -97.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -157.5, -72.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -157.5, -72.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -141.8, -87.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -141.8, -87.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -124.2, -104.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -124.2, -104.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -76.8, -96.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -76.8, -96.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -99.9, -178.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -99.9, -178.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -37, -168.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -37, -168.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -36.5, -174.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -36.5, -174.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -10.3, -194 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -10.3, -194 , 0 );

setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.75, 1.75 );

setRotateKey( spep_0 + 374 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -1.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE001, 0.81, 30, 4 );

--気弾溜め
SE002 = playSeVer2( spep_0 + 34, 1397, "",spep_0 + 96, 8, 14, -1);
setStartTimeMs( SE002,  533 );
SE003 = playSeVer2( spep_0 + 34, 1274, "", 0, 10, 0, -1);
setStartTimeMs( SE003,  167 );
SE004 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1221, "",spep_0 + 96, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 129 );
SE006 = playSeVer2( spep_0 + 36, 1252, "",spep_0 + 98, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 36, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 69 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 72; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--気弾発射
SE008 = playSeVer2( spep_0 + 80, 1255, "",spep_0 + 284, 14, 22, -1);
setStartTimeMs( SE008,  2700 );
SE009 = playSeVer2( spep_0 + 72, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 135 );
SE010 = playSeVer2( spep_0 + 78, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE010, 63 );
SE011 = playSeVer2( spep_0 + 78, 1176, "",spep_0 + 282, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 78, SE011, 61 );

--腕上げる
SE012 = playSeVer2( spep_0 + 198, 1004, "", 0, 0, 0, -1);

--腕下げる
SE013 = playSeVer2( spep_0 + 224, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE013, 85 );
setPitch( spep_0 + 224, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

--地面叩きつける
SE014 = playSeVer2( spep_0 + 246, 1277, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 260, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 260, 1023, "", 0, 0, 0, -1);

--腕おろす
SE017 = playSeVer2( spep_0 + 330, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 330, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--敵地面引き摺る
SE018 = playSeVer2( spep_0 + 366, 1226, "",spep_0 + 460, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 366, SE018, 76 );
SE019 = playSeVer2( spep_0 + 368, 1044, "",spep_0 + 460, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 368, SE019, 141 );
SE020 = playSeVer2( spep_0 + 368, 1008, "", spep_0 + 418, 0, 6, -1);
stopSeIfDoubleSpeed( spep_0 + 368, SE020 );
SE021 = playSeVer2( spep_0 + 378, 1025, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 378, SE021, 94 );
stopSeIfDoubleSpeed( spep_0 + 378, SE021 );
SE022 = playSeVer2( spep_0 + 388, 1008, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 388, SE022, 83 );
stopSeIfDoubleSpeed( spep_0 + 388, SE022 );

--気弾頭上溜め
SE023 = playSeVer2( spep_0 + 424, 1397, "",spep_0 + 564, 8, 24, -1);
setStartTimeMs( SE023,  533 );

--敵地面引き摺る
SE024 = playSeVer2( spep_0 + 400, 1025, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 400, SE024, 79 );
stopSeIfDoubleSpeed( spep_0 + 400, SE024 );

--気弾頭上溜め
SE025 = playSeVer2( spep_0 + 424, 1274, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  167 );

--画面遷移
SE026 = playSeVer2( spep_0 + 424, 1232, "", 0, 0, 0, -1);

--気弾頭上溜め
SE027 = playSeVer2( spep_0 + 424, 1221, "",spep_0 + 560, 0, 18, -1);
SE028 = playSeVer2( spep_0 + 424, 1252, "",spep_0 + 562, 0, 20, -1);
SE029 = playSeVer2( spep_0 + 424, 1020, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 424, 1199, "", 0, 0, 0, -1);

--気弾頭上溜め
SE032 = playSeVer2( spep_0 + 490, 1199, "",spep_0 + 562, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --540


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- オーラ落とす～フィニッシュ
-------------------------------------------------

MAX_FRAME_1 = 284;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_0, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_0, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_0, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_0, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_0, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_0, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_0, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_0, base_1b, 255);

-- ** 敵キャラクター ** --
setDisp(spep_1 + 0, 1, 1);
setDisp(spep_1 + 126 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 0, 1, 105 );
changeAnime( spep_1 + 80 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 0, 1, 236.6, -309.2 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 236.6, -309.2 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 236.7, -309.2 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 236.7, -309.2 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 235.9, -309.9 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 235.9, -309.9 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 235, -292.2 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 235, -292.2 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 234.2, -330 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 234.2, -330 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 214.8, -312.2 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 214.8, -312.2 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 232.5, -313 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 232.5, -313 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 231.6, -313.7 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 231.6, -313.7 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 230.7, -314.5 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 230.7, -314.5 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 229.9, -315.3 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 229.9, -315.3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 229, -316 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 229, -316 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 228.2, -316.8 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 228.2, -316.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 227.3, -317.5 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 227.3, -317.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 226.5, -318.3 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 226.5, -318.3 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 225.6, -319.1 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 225.6, -319.1 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 224.8, -319.8 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 224.8, -319.8 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 223.9, -320.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 223.9, -320.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 223, -321.4 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 223, -321.4 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 222.2, -322.1 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 222.2, -322.1 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 221.4, -322.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 221.4, -322.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 220.5, -323.6 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 220.5, -323.6 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 219.7, -324.4 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 219.7, -324.4 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 218.8, -325.2 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 218.8, -325.2 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 217.9, -325.9 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 217.9, -325.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 217.1, -326.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 217.1, -326.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 216.2, -327.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 216.2, -327.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 215.4, -328.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 215.4, -328.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 131.4, -248.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 131.4, -248.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 140, -251.3 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 140, -251.3 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 120.9, -253.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 120.9, -253.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 135.1, -248.6 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 135.1, -248.6 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 136.3, -265.8 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 136.3, -265.8 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 145, -260.7 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 145, -260.7 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 125.8, -263.1 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 125.8, -263.1 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 140, -258 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 140, -258 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 141.3, -275.2 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 141.3, -275.2 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 149.9, -270.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 149.9, -270.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 130.8, -272.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 130.8, -272.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 145, -267.4 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 145, -267.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 146.3, -284.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 146.3, -284.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 127.1, -279.6 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 127.1, -279.6 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 167.2, -281.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 167.2, -281.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 150, -265.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 150, -265.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 151.2, -305.1 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 151.2, -305.1 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 132.1, -289 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 132.1, -289 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 172.2, -291.3 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 172.2, -291.3 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 154.9, -275.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 154.9, -275.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 156.2, -314.5 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 156.2, -314.5 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 137.1, -298.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 137.1, -298.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 177.2, -300.8 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 177.2, -300.8 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 159.9, -284.6 , 0 );

setScaleKey( spep_1 + 0, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 2 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 3 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 4 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 5 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 8 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 9 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 10 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 11 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 12 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 13 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 15 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 16 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 21 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 22 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 23 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 27 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 33 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 39 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 45 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 47 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 51 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 53 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 57 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_1 + 0, 1, 16.7 );
setRotateKey( spep_1 + 3 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_1 + 4 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, 16.8 );

-- ** 音 ** --
--気弾発射前溜め
SE034 = playSeVer2( spep_1 + 0, 1252, "",spep_1 + 52, 4, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE034, 119 );
setStartTimeMs( SE034,  367 );
SE035 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 52, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE035, 116 );
SE036 = playSeVer2( spep_1 + 0, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE036, 72 );
SE037 = playSeVer2( spep_1 + 20, 1020, "",spep_1 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 20, SE037, 86 );

----気弾発射
SE038 = playSeVer2( spep_1 + 28, 1027, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 28, 1193, "",spep_1 + 174, 0, 40, -1);
SE040 = playSeVer2( spep_1 + 28, 1145, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 28, 1215, "",spep_1 + 172, 0, 38, -1);

----爆発
SE042 = playSeVer2( spep_1 + 126, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 132, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 160); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 284F-4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 正面アップ～セリフカットイン
-------------------------------------------------

MAX_FRAME_0 = 540;

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
spep_x = spep_0 + 455;

-- ** 顔カットイン ** --
-- speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
-- setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
-- speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
-- setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, -50, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, -50, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, -50, 515.5 , 0 );
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
SE00X = playSeVer2( spep_x + 0, 1018, "", 0, 0, 0, -1);

-- ** 敵キャラクター ** --
-- 敵の動き1
setDisp(spep_0 + 80 + OFFSET_X, 1, 1);
setDisp(spep_0 + 202 + OFFSET_X, 1, 0);

changeAnime( spep_0 + 80 + OFFSET_X, 1, 117 );
changeAnime( spep_0 + 88 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 80 + OFFSET_X, 1, 23.3, -64.6 , 0 );
setMoveKey( spep_0 + 81 + OFFSET_X, 1, 23.3, -64.6 , 0 );
setMoveKey( spep_0 + 82 + OFFSET_X, 1, 23.1, -34.8 , 0 );
setMoveKey( spep_0 + 83 + OFFSET_X, 1, 23.1, -34.8 , 0 );
setMoveKey( spep_0 + 84 + OFFSET_X, 1, 22.9, -5 , 0 );
setMoveKey( spep_0 + 85 + OFFSET_X, 1, 22.9, -5 , 0 );
setMoveKey( spep_0 + 86 + OFFSET_X, 1, 23.2, -4.5 , 0 );
setMoveKey( spep_0 + 87 + OFFSET_X, 1, 23.2, -4.5 , 0 );
setMoveKey( spep_0 + 88 + OFFSET_X, 1, 23.4, -4.2 , 0 );
setMoveKey( spep_0 + 89 + OFFSET_X, 1, 23.4, -4.2 , 0 );
setMoveKey( spep_0 + 90 + OFFSET_X, 1, 17.7, 10.2 , 0 );
setMoveKey( spep_0 + 91 + OFFSET_X, 1, 17.7, 10.2 , 0 );
setMoveKey( spep_0 + 92 + OFFSET_X, 1, 53.9, -27.4 , 0 );
setMoveKey( spep_0 + 93 + OFFSET_X, 1, 53.9, -27.4 , 0 );
setMoveKey( spep_0 + 94 + OFFSET_X, 1, 36.3, 9.1 , 0 );
setMoveKey( spep_0 + 95 + OFFSET_X, 1, 36.3, 9.1 , 0 );
setMoveKey( spep_0 + 96 + OFFSET_X, 1, 2.5, -26.6 , 0 );
setMoveKey( spep_0 + 97 + OFFSET_X, 1, 2.5, -26.6 , 0 );
setMoveKey( spep_0 + 98 + OFFSET_X, 1, 24.8, -2.1 , 0 );
setMoveKey( spep_0 + 99 + OFFSET_X, 1, 24.8, -2.1 , 0 );
setMoveKey( spep_0 + 100 + OFFSET_X, 1, 25.1, 8.3 , 0 );
setMoveKey( spep_0 + 101 + OFFSET_X, 1, 25.1, 8.3 , 0 );
setMoveKey( spep_0 + 102 + OFFSET_X, 1, 35.4, -11.3 , 0 );
setMoveKey( spep_0 + 103 + OFFSET_X, 1, 35.4, -11.3 , 0 );
setMoveKey( spep_0 + 104 + OFFSET_X, 1, 25.6, -0.8 , 0 );
setMoveKey( spep_0 + 105 + OFFSET_X, 1, 25.6, -0.8 , 0 );
setMoveKey( spep_0 + 106 + OFFSET_X, 1, 20, 11.6 , 0 );
setMoveKey( spep_0 + 107 + OFFSET_X, 1, 20, 11.6 , 0 );
setMoveKey( spep_0 + 108 + OFFSET_X, 1, 38.2, 0 , 0 );
setMoveKey( spep_0 + 109 + OFFSET_X, 1, 38.2, 0 , 0 );
setMoveKey( spep_0 + 110 + OFFSET_X, 1, 26.5, -9.6 , 0 );
setMoveKey( spep_0 + 111 + OFFSET_X, 1, 26.5, -9.6 , 0 );
setMoveKey( spep_0 + 112 + OFFSET_X, 1, 18.8, 6.9 , 0 );
setMoveKey( spep_0 + 113 + OFFSET_X, 1, 18.8, 6.9 , 0 );
setMoveKey( spep_0 + 114 + OFFSET_X, 1, 33.1, 1.3 , 0 );
setMoveKey( spep_0 + 115 + OFFSET_X, 1, 33.1, 1.3 , 0 );
setMoveKey( spep_0 + 116 + OFFSET_X, 1, 27.3, 7.7 , 0 );
setMoveKey( spep_0 + 117 + OFFSET_X, 1, 27.3, 7.7 , 0 );
setMoveKey( spep_0 + 118 + OFFSET_X, 1, 27.7, 6.2 , 0 );
setMoveKey( spep_0 + 119 + OFFSET_X, 1, 27.7, 6.2 , 0 );
setMoveKey( spep_0 + 120 + OFFSET_X, 1, 19.9, 18.6 , 0 );
setMoveKey( spep_0 + 121 + OFFSET_X, 1, 19.9, 18.6 , 0 );
setMoveKey( spep_0 + 122 + OFFSET_X, 1, 34.8, -6.3 , 0 );
setMoveKey( spep_0 + 123 + OFFSET_X, 1, 34.8, -6.3 , 0 );
setMoveKey( spep_0 + 124 + OFFSET_X, 1, 25.9, 24.7 , 0 );
setMoveKey( spep_0 + 125 + OFFSET_X, 1, 25.9, 24.7 , 0 );
setMoveKey( spep_0 + 126 + OFFSET_X, 1, 28.8, 3.9 , 0 );
setMoveKey( spep_0 + 127 + OFFSET_X, 1, 28.8, 3.9 , 0 );
setMoveKey( spep_0 + 128 + OFFSET_X, 1, 29, 4.3 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 29, 4.3 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 29.4, 4.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 29.4, 4.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 29.6, 5.1 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 29.6, 5.1 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 29.9, 5.6 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 29.9, 5.6 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 30.2, 6 , 0 );
setMoveKey( spep_0 + 137 + OFFSET_X, 1, 30.2, 6 , 0 );
setMoveKey( spep_0 + 138 + OFFSET_X, 1, 30.5, 6.4 , 0 );
setMoveKey( spep_0 + 139 + OFFSET_X, 1, 30.5, 6.4 , 0 );
setMoveKey( spep_0 + 140 + OFFSET_X, 1, 30.7, 6.8 , 0 );
setMoveKey( spep_0 + 141 + OFFSET_X, 1, 30.7, 6.8 , 0 );
setMoveKey( spep_0 + 142 + OFFSET_X, 1, 113.7, -239.2 , 0 );
setMoveKey( spep_0 + 143 + OFFSET_X, 1, 113.7, -239.2 , 0 );
setMoveKey( spep_0 + 144 + OFFSET_X, 1, 113.3, -238.4 , 0 );
setMoveKey( spep_0 + 145 + OFFSET_X, 1, 113.3, -238.4 , 0 );
setMoveKey( spep_0 + 146 + OFFSET_X, 1, 112.9, -237.6 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 112.9, -237.6 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 112.5, -236.8 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 112.5, -236.8 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 112.1, -236 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 112.1, -236 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 111.7, -235.2 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 111.7, -235.2 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, 111.3, -234.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, 111.3, -234.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, 110.8, -233.6 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, 110.8, -233.6 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, 110.4, -232.8 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, 110.4, -232.8 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, 110, -232 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, 110, -232 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, 109.6, -231.2 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, 109.6, -231.2 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, 109.2, -230.4 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, 109.2, -230.4 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, 108.8, -229.6 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, 108.8, -229.6 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, 108.4, -228.8 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, 108.4, -228.8 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, 108, -228 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, 108, -228 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, 107.6, -227.2 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, 107.6, -227.2 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, 107.2, -226.4 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, 107.2, -226.4 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, 106.8, -225.6 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, 106.8, -225.6 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, 106.4, -224.8 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, 106.4, -224.8 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, 106, -224 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, 106, -224 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, 105.6, -223.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, 105.6, -223.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, 105.2, -222.4 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, 105.2, -222.4 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, 104.8, -221.6 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, 104.8, -221.6 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, 104.4, -220.8 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, 104.4, -220.8 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, 104, -220 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, 104, -220 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, 103.6, -219.2 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, 103.6, -219.2 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, 103.2, -218.4 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, 103.2, -218.4 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, 102.8, -217.6 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, 102.8, -217.6 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, 102.4, -216.8 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, 102.4, -216.8 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, 102, -216 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, 102, -216 , 0 );

setScaleKey( spep_0 + 80 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 81 + OFFSET_X, 1, 2.34, 2.34 );
setScaleKey( spep_0 + 82 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 83 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 84 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 85 + OFFSET_X, 1, 1.27, 1.27 );
setScaleKey( spep_0 + 86 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 87 + OFFSET_X, 1, 1.26, 1.26 );
setScaleKey( spep_0 + 88 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 89 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 90 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 93 + OFFSET_X, 1, 1.24, 1.24 );
setScaleKey( spep_0 + 94 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 95 + OFFSET_X, 1, 1.23, 1.23 );
setScaleKey( spep_0 + 96 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 97 + OFFSET_X, 1, 1.22, 1.22 );
setScaleKey( spep_0 + 98 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 101 + OFFSET_X, 1, 1.21, 1.21 );
setScaleKey( spep_0 + 102 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 103 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 104 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 105 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 106 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 107 + OFFSET_X, 1, 1.18, 1.18 );
setScaleKey( spep_0 + 108 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 111 + OFFSET_X, 1, 1.17, 1.17 );
setScaleKey( spep_0 + 112 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 113 + OFFSET_X, 1, 1.16, 1.16 );
setScaleKey( spep_0 + 114 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 115 + OFFSET_X, 1, 1.15, 1.15 );
setScaleKey( spep_0 + 116 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 119 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 120 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 121 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 122 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 123 + OFFSET_X, 1, 1.12, 1.12 );
setScaleKey( spep_0 + 124 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 127 + OFFSET_X, 1, 1.11, 1.11 );
setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 129 + OFFSET_X, 1, 1.1, 1.1 );
setScaleKey( spep_0 + 130 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 131 + OFFSET_X, 1, 1.09, 1.09 );
setScaleKey( spep_0 + 132 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 135 + OFFSET_X, 1, 1.08, 1.08 );
setScaleKey( spep_0 + 136 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 137 + OFFSET_X, 1, 1.07, 1.07 );
setScaleKey( spep_0 + 138 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 139 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 140 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 141 + OFFSET_X, 1, 1.05, 1.05 );
setScaleKey( spep_0 + 142 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 145 + OFFSET_X, 1, 0.93, 0.93 );
setScaleKey( spep_0 + 146 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 0.92, 0.92 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 0.91, 0.91 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 163 + OFFSET_X, 1, 0.9, 0.9 );
setScaleKey( spep_0 + 164 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 0.89, 0.89 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 0.87, 0.87 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 0.85, 0.85 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 0.84, 0.84 );
setScaleKey( spep_0 + 202 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_0 + 80 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 87 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 88 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 141 + OFFSET_X, 1, -51.9 );
setRotateKey( spep_0 + 142 + OFFSET_X, 1, -35 );
setRotateKey( spep_0 + 202 + OFFSET_X, 1, -35 );

-- 敵の動き2
setDisp(spep_0 + 252 + OFFSET_X, 1, 1);
setDisp(spep_0 + 268+ OFFSET_X, 1, 0);

changeAnime( spep_0 + 264 + OFFSET_X, 1, 105 );

setMoveKey( spep_0 + 252 + OFFSET_X, 1, -703.9, 726 , 0 );
setMoveKey( spep_0 + 253 + OFFSET_X, 1, -703.9, 726 , 0 );
setMoveKey( spep_0 + 254 + OFFSET_X, 1, -649.4, 697.9 , 0 );
setMoveKey( spep_0 + 255 + OFFSET_X, 1, -649.4, 697.9 , 0 );
setMoveKey( spep_0 + 256 + OFFSET_X, 1, -573.1, 658.9 , 0 );
setMoveKey( spep_0 + 257 + OFFSET_X, 1, -573.1, 658.9 , 0 );
setMoveKey( spep_0 + 258 + OFFSET_X, 1, -474.8, 609.1 , 0 );
setMoveKey( spep_0 + 259 + OFFSET_X, 1, -474.8, 609.1 , 0 );
setMoveKey( spep_0 + 260 + OFFSET_X, 1, -354.5, 548.9 , 0 );
setMoveKey( spep_0 + 261 + OFFSET_X, 1, -354.5, 548.9 , 0 );
setMoveKey( spep_0 + 262 + OFFSET_X, 1, -211.9, 478.6 , 0 );
setMoveKey( spep_0 + 263 + OFFSET_X, 1, -211.9, 478.6 , 0 );
setMoveKey( spep_0 + 264 + OFFSET_X, 1, -65.4, 201.8 , 0 );
setMoveKey( spep_0 + 265 + OFFSET_X, 1, -65.4, 201.8 , 0 );
setMoveKey( spep_0 + 266 + OFFSET_X, 1, 70.1, -97.6 , 0 );
setMoveKey( spep_0 + 268 + OFFSET_X, 1, 70.1, -97.6 , 0 );

setScaleKey( spep_0 + 252 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 253 + OFFSET_X, 1, 4.91, 4.91 );
setScaleKey( spep_0 + 254 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 255 + OFFSET_X, 1, 4.63, 4.63 );
setScaleKey( spep_0 + 256 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 257 + OFFSET_X, 1, 4.23, 4.23 );
setScaleKey( spep_0 + 258 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 259 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_0 + 260 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 261 + OFFSET_X, 1, 3.09, 3.09 );
setScaleKey( spep_0 + 262 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 263 + OFFSET_X, 1, 2.35, 2.35 );
setScaleKey( spep_0 + 264 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 265 + OFFSET_X, 1, 1.14, 1.14 );
setScaleKey( spep_0 + 266 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_0 + 268 + OFFSET_X, 1, 0.29, 0.29 );

setRotateKey( spep_0 + 252 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 253 + OFFSET_X, 1, -54.6 );
setRotateKey( spep_0 + 254 + OFFSET_X, 1, -53.8 );
setRotateKey( spep_0 + 255 + OFFSET_X, 1, -53.8 );
setRotateKey( spep_0 + 256 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 257 + OFFSET_X, 1, -52.8 );
setRotateKey( spep_0 + 258 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 259 + OFFSET_X, 1, -51.5 );
setRotateKey( spep_0 + 260 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 261 + OFFSET_X, 1, -49.8 );
setRotateKey( spep_0 + 262 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 263 + OFFSET_X, 1, -47.9 );
setRotateKey( spep_0 + 264 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 265 + OFFSET_X, 1, 3.2 );
setRotateKey( spep_0 + 266 + OFFSET_X, 1, 14.5 );
setRotateKey( spep_0 + 268 + OFFSET_X, 1, 14.5 );

-- 敵の動き3
setDisp(spep_0 + 374 + OFFSET_X, 1, 1);
setDisp(spep_0 + 436+ OFFSET_X, 1, 0);

changeAnime( spep_0 + 374 + OFFSET_X, 1, 7 );
changeAnime( spep_0 + 398 + OFFSET_X, 1, 107 );

setMoveKey( spep_0 + 374 + OFFSET_X, 1, 173.7, 118.7 , 0 );
setMoveKey( spep_0 + 375 + OFFSET_X, 1, 173.7, 118.7 , 0 );
setMoveKey( spep_0 + 376 + OFFSET_X, 1, 149.8, 78 , 0 );
setMoveKey( spep_0 + 377 + OFFSET_X, 1, 149.8, 78 , 0 );
setMoveKey( spep_0 + 378 + OFFSET_X, 1, 113, 117.2 , 0 );
setMoveKey( spep_0 + 379 + OFFSET_X, 1, 113, 117.2 , 0 );
setMoveKey( spep_0 + 380 + OFFSET_X, 1, 66.3, 76.8 , 0 );
setMoveKey( spep_0 + 381 + OFFSET_X, 1, 66.3, 76.8 , 0 );
setMoveKey( spep_0 + 382 + OFFSET_X, 1, 35.7, 87.9 , 0 );
setMoveKey( spep_0 + 383 + OFFSET_X, 1, 35.7, 87.9 , 0 );
setMoveKey( spep_0 + 384 + OFFSET_X, 1, 4.8, 82.6 , 0 );
setMoveKey( spep_0 + 385 + OFFSET_X, 1, 4.8, 82.6 , 0 );
setMoveKey( spep_0 + 386 + OFFSET_X, 1, -25.8, 77.5 , 0 );
setMoveKey( spep_0 + 387 + OFFSET_X, 1, -25.8, 77.5 , 0 );
setMoveKey( spep_0 + 388 + OFFSET_X, 1, -84.6, 64 , 0 );
setMoveKey( spep_0 + 389 + OFFSET_X, 1, -84.6, 64 , 0 );
setMoveKey( spep_0 + 390 + OFFSET_X, 1, -79.1, 102.1 , 0 );
setMoveKey( spep_0 + 391 + OFFSET_X, 1, -79.1, 102.1 , 0 );
setMoveKey( spep_0 + 392 + OFFSET_X, 1, -114.1, 34.8 , 0 );
setMoveKey( spep_0 + 393 + OFFSET_X, 1, -114.1, 34.8 , 0 );
setMoveKey( spep_0 + 394 + OFFSET_X, 1, -144.9, 79.8 , 0 );
setMoveKey( spep_0 + 395 + OFFSET_X, 1, -144.9, 79.8 , 0 );
setMoveKey( spep_0 + 396 + OFFSET_X, 1, -159.5, 40.1 , 0 );
setMoveKey( spep_0 + 397 + OFFSET_X, 1, -159.5, 40.1 , 0 );
setMoveKey( spep_0 + 398 + OFFSET_X, 1, -164.2, 56.9 , 0 );
setMoveKey( spep_0 + 399 + OFFSET_X, 1, -164.2, 56.9 , 0 );
setMoveKey( spep_0 + 400 + OFFSET_X, 1, -174, 37.6 , 0 );
setMoveKey( spep_0 + 401 + OFFSET_X, 1, -174, 37.6 , 0 );
setMoveKey( spep_0 + 402 + OFFSET_X, 1, -183, 30.2 , 0 );
setMoveKey( spep_0 + 403 + OFFSET_X, 1, -183, 30.2 , 0 );
setMoveKey( spep_0 + 404 + OFFSET_X, 1, -191.1, 22.5 , 0 );
setMoveKey( spep_0 + 405 + OFFSET_X, 1, -191.1, 22.5 , 0 );
setMoveKey( spep_0 + 406 + OFFSET_X, 1, -226.3, 42.5 , 0 );
setMoveKey( spep_0 + 407 + OFFSET_X, 1, -226.3, 42.5 , 0 );
setMoveKey( spep_0 + 408 + OFFSET_X, 1, -180.6, 2.2 , 0 );
setMoveKey( spep_0 + 409 + OFFSET_X, 1, -180.6, 2.2 , 0 );
setMoveKey( spep_0 + 410 + OFFSET_X, 1, -198.2, -38.4 , 0 );
setMoveKey( spep_0 + 411 + OFFSET_X, 1, -198.2, -38.4 , 0 );
setMoveKey( spep_0 + 412 + OFFSET_X, 1, -175.1, 25 , 0 );
setMoveKey( spep_0 + 413 + OFFSET_X, 1, -175.1, 25 , 0 );
setMoveKey( spep_0 + 414 + OFFSET_X, 1, -226.5, -44.6 , 0 );
setMoveKey( spep_0 + 415 + OFFSET_X, 1, -226.5, -44.6 , 0 );
setMoveKey( spep_0 + 416 + OFFSET_X, 1, -163.8, -6.4 , 0 );
setMoveKey( spep_0 + 417 + OFFSET_X, 1, -163.8, -6.4 , 0 );
setMoveKey( spep_0 + 418 + OFFSET_X, 1, -175.6, -97.2 , 0 );
setMoveKey( spep_0 + 419 + OFFSET_X, 1, -175.6, -97.2 , 0 );
setMoveKey( spep_0 + 420 + OFFSET_X, 1, -157.5, -72.2 , 0 );
setMoveKey( spep_0 + 421 + OFFSET_X, 1, -157.5, -72.2 , 0 );
setMoveKey( spep_0 + 422 + OFFSET_X, 1, -141.8, -87.9 , 0 );
setMoveKey( spep_0 + 423 + OFFSET_X, 1, -141.8, -87.9 , 0 );
setMoveKey( spep_0 + 424 + OFFSET_X, 1, -124.2, -104.1 , 0 );
setMoveKey( spep_0 + 425 + OFFSET_X, 1, -124.2, -104.1 , 0 );
setMoveKey( spep_0 + 426 + OFFSET_X, 1, -76.8, -96.8 , 0 );
setMoveKey( spep_0 + 427 + OFFSET_X, 1, -76.8, -96.8 , 0 );
setMoveKey( spep_0 + 428 + OFFSET_X, 1, -99.9, -178.5 , 0 );
setMoveKey( spep_0 + 429 + OFFSET_X, 1, -99.9, -178.5 , 0 );
setMoveKey( spep_0 + 430 + OFFSET_X, 1, -37, -168.4 , 0 );
setMoveKey( spep_0 + 431 + OFFSET_X, 1, -37, -168.4 , 0 );
setMoveKey( spep_0 + 432 + OFFSET_X, 1, -36.5, -174.9 , 0 );
setMoveKey( spep_0 + 433 + OFFSET_X, 1, -36.5, -174.9 , 0 );
setMoveKey( spep_0 + 434 + OFFSET_X, 1, -10.3, -194 , 0 );
setMoveKey( spep_0 + 436 + OFFSET_X, 1, -10.3, -194 , 0 );

setScaleKey( spep_0 + 374 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 375 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 376 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 377 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 378 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 379 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 380 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 381 + OFFSET_X, 1, 0.21, 0.21 );
setScaleKey( spep_0 + 382 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 383 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 384 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 385 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_0 + 386 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 387 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_0 + 388 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 389 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_0 + 390 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 391 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_0 + 392 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 393 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 394 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 395 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 396 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 397 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_0 + 398 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 399 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 400 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 401 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 402 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 403 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_0 + 404 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 405 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 406 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 407 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_0 + 408 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 409 + OFFSET_X, 1, 0.86, 0.86 );
setScaleKey( spep_0 + 410 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 411 + OFFSET_X, 1, 0.95, 0.95 );
setScaleKey( spep_0 + 412 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 413 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 414 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 415 + OFFSET_X, 1, 1.06, 1.06 );
setScaleKey( spep_0 + 416 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 417 + OFFSET_X, 1, 1.13, 1.13 );
setScaleKey( spep_0 + 418 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 419 + OFFSET_X, 1, 1.19, 1.19 );
setScaleKey( spep_0 + 420 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 421 + OFFSET_X, 1, 1.25, 1.25 );
setScaleKey( spep_0 + 422 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 423 + OFFSET_X, 1, 1.32, 1.32 );
setScaleKey( spep_0 + 424 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 425 + OFFSET_X, 1, 1.39, 1.39 );
setScaleKey( spep_0 + 426 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 427 + OFFSET_X, 1, 1.46, 1.46 );
setScaleKey( spep_0 + 428 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 429 + OFFSET_X, 1, 1.53, 1.53 );
setScaleKey( spep_0 + 430 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 431 + OFFSET_X, 1, 1.6, 1.6 );
setScaleKey( spep_0 + 432 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 433 + OFFSET_X, 1, 1.68, 1.68 );
setScaleKey( spep_0 + 434 + OFFSET_X, 1, 1.75, 1.75 );
setScaleKey( spep_0 + 436 + OFFSET_X, 1, 1.75, 1.75 );

setRotateKey( spep_0 + 374 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 375 + OFFSET_X, 1, 3.7 );
setRotateKey( spep_0 + 376 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_0 + 377 + OFFSET_X, 1, 3.3 );
setRotateKey( spep_0 + 378 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 379 + OFFSET_X, 1, 2.9 );
setRotateKey( spep_0 + 380 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 381 + OFFSET_X, 1, 2.5 );
setRotateKey( spep_0 + 382 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 383 + OFFSET_X, 1, 2.1 );
setRotateKey( spep_0 + 384 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 385 + OFFSET_X, 1, 1.7 );
setRotateKey( spep_0 + 386 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 387 + OFFSET_X, 1, 1.3 );
setRotateKey( spep_0 + 388 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 389 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 390 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 391 + OFFSET_X, 1, 0.5 );
setRotateKey( spep_0 + 392 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 393 + OFFSET_X, 1, 0.1 );
setRotateKey( spep_0 + 394 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 395 + OFFSET_X, 1, -0.3 );
setRotateKey( spep_0 + 396 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 397 + OFFSET_X, 1, -0.6 );
setRotateKey( spep_0 + 398 + OFFSET_X, 1, -1.2 );
setRotateKey( spep_0 + 436 + OFFSET_X, 1, -1.2 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 1072, "", 0, 0, 0, 0.5);
setTimeStretch( SE001, 0.81, 30, 4 );

--気弾溜め
SE002 = playSeVer2( spep_0 + 34, 1397, "",spep_0 + 96, 8, 14, -1);
setStartTimeMs( SE002,  533 );
SE003 = playSeVer2( spep_0 + 34, 1274, "", 0, 10, 0, -1);
setStartTimeMs( SE003,  167 );
SE004 = playSeVer2( spep_0 + 30, 1003, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 36, 1221, "",spep_0 + 96, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 36, SE005, 129 );
SE006 = playSeVer2( spep_0 + 36, 1252, "",spep_0 + 98, 0, 24, -1);
SE007 = playSeVer2( spep_0 + 36, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 36, SE007, 69 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 72; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE001, 0);
stopSe( SP_dodge - 12, SE002, 0);
stopSe( SP_dodge - 12, SE003, 0);
stopSe( SP_dodge - 12, SE004, 0);
stopSe( SP_dodge - 12, SE005, 0);
stopSe( SP_dodge - 12, SE006, 0);
stopSe( SP_dodge - 12, SE007, 0);
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
--気弾発射
SE008 = playSeVer2( spep_0 + 80, 1255, "",spep_0 + 284, 14, 22, -1);
setStartTimeMs( SE008,  2700 );
SE009 = playSeVer2( spep_0 + 72, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 72, SE009, 135 );
SE010 = playSeVer2( spep_0 + 78, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 78, SE010, 63 );
SE011 = playSeVer2( spep_0 + 78, 1176, "",spep_0 + 282, 0, 22, -1);
setSeVolumeByWorkId( spep_0 + 78, SE011, 61 );

--腕上げる
SE012 = playSeVer2( spep_0 + 198, 1004, "", 0, 0, 0, -1);

--腕下げる
SE013 = playSeVer2( spep_0 + 224, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 224, SE013, 85 );
setPitch( spep_0 + 224, SE013, -400 );
setTimeStretch( SE013, 0.73, 30, 4 );

--地面叩きつける
SE014 = playSeVer2( spep_0 + 246, 1277, "", 0, 0, 0, -1);
SE015 = playSeVer2( spep_0 + 260, 1159, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 260, 1023, "", 0, 0, 0, -1);

--腕おろす
SE017 = playSeVer2( spep_0 + 330, 1004, "", 0, 0, 0, -1);
setPitch( spep_0 + 330, SE017, -400 );
setTimeStretch( SE017, 0.73, 30, 4 );

--敵地面引き摺る
SE018 = playSeVer2( spep_0 + 366, 1226, "",spep_0 + 460, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 366, SE018, 76 );
SE019 = playSeVer2( spep_0 + 368, 1044, "",spep_0 + 460, 0, 32, -1);
setSeVolumeByWorkId( spep_0 + 368, SE019, 141 );
SE020 = playSeVer2( spep_0 + 368, 1008, "", spep_0 + 418, 0, 6, -1);
stopSeIfDoubleSpeed( spep_0 + 368, SE020 );
SE021 = playSeVer2( spep_0 + 378, 1025, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 378, SE021, 94 );
stopSeIfDoubleSpeed( spep_0 + 378, SE021 );
SE022 = playSeVer2( spep_0 + 388, 1008, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 388, SE022, 83 );
stopSeIfDoubleSpeed( spep_0 + 388, SE022 );

--気弾頭上溜め
SE023 = playSeVer2( spep_0 + 424, 1397, "",spep_0 + 564, 8, 24, -1);
setStartTimeMs( SE023,  533 );

--敵地面引き摺る
SE024 = playSeVer2( spep_0 + 400, 1025, "", spep_0 + 418, 0, 6, -1);
setSeVolumeByWorkId( spep_0 + 400, SE024, 79 );
stopSeIfDoubleSpeed( spep_0 + 400, SE024 );

--気弾頭上溜め
SE025 = playSeVer2( spep_0 + 424, 1274, "", 0, 10, 0, -1);
setStartTimeMs( SE025,  167 );

--画面遷移
SE026 = playSeVer2( spep_0 + 424, 1232, "", 0, 0, 0, -1);

--気弾頭上溜め
SE027 = playSeVer2( spep_0 + 424, 1221, "",spep_0 + 560, 0, 18, -1);
SE028 = playSeVer2( spep_0 + 424, 1252, "",spep_0 + 562, 0, 20, -1);
SE029 = playSeVer2( spep_0 + 424, 1020, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 424, 1199, "", 0, 0, 0, -1);

--気弾頭上溜め
SE032 = playSeVer2( spep_0 + 490, 1199, "",spep_0 + 562, 0, 22, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --540


--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);


-------------------------------------------------
-- オーラ落とす～フィニッシュ
-------------------------------------------------

MAX_FRAME_1 = 284;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002r
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_0, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_0, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_0, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_0, base_1f, 255);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002br
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_0, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_0, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_0, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_0, base_1b, 255);

-- ** 敵キャラクター ** --
setDisp(spep_1 + 0, 1, 1);
setDisp(spep_1 + 126 + OFFSET_X, 1, 0);

changeAnime( spep_1 + 0, 1, 105 );
changeAnime( spep_1 + 80 + OFFSET_X, 1, 107 );

setMoveKey( spep_1 + 0, 1, 236.6, -309.2 , 0 );
setMoveKey( spep_1 + 13 + OFFSET_X, 1, 236.6, -309.2 , 0 );
setMoveKey( spep_1 + 14 + OFFSET_X, 1, 236.7, -309.2 , 0 );
setMoveKey( spep_1 + 29 + OFFSET_X, 1, 236.7, -309.2 , 0 );
setMoveKey( spep_1 + 30 + OFFSET_X, 1, 235.9, -309.9 , 0 );
setMoveKey( spep_1 + 31 + OFFSET_X, 1, 235.9, -309.9 , 0 );
setMoveKey( spep_1 + 32 + OFFSET_X, 1, 235, -292.2 , 0 );
setMoveKey( spep_1 + 33 + OFFSET_X, 1, 235, -292.2 , 0 );
setMoveKey( spep_1 + 34 + OFFSET_X, 1, 234.2, -330 , 0 );
setMoveKey( spep_1 + 35 + OFFSET_X, 1, 234.2, -330 , 0 );
setMoveKey( spep_1 + 36 + OFFSET_X, 1, 214.8, -312.2 , 0 );
setMoveKey( spep_1 + 37 + OFFSET_X, 1, 214.8, -312.2 , 0 );
setMoveKey( spep_1 + 38 + OFFSET_X, 1, 232.5, -313 , 0 );
setMoveKey( spep_1 + 39 + OFFSET_X, 1, 232.5, -313 , 0 );
setMoveKey( spep_1 + 40 + OFFSET_X, 1, 231.6, -313.7 , 0 );
setMoveKey( spep_1 + 41 + OFFSET_X, 1, 231.6, -313.7 , 0 );
setMoveKey( spep_1 + 42 + OFFSET_X, 1, 230.7, -314.5 , 0 );
setMoveKey( spep_1 + 43 + OFFSET_X, 1, 230.7, -314.5 , 0 );
setMoveKey( spep_1 + 44 + OFFSET_X, 1, 229.9, -315.3 , 0 );
setMoveKey( spep_1 + 45 + OFFSET_X, 1, 229.9, -315.3 , 0 );
setMoveKey( spep_1 + 46 + OFFSET_X, 1, 229, -316 , 0 );
setMoveKey( spep_1 + 47 + OFFSET_X, 1, 229, -316 , 0 );
setMoveKey( spep_1 + 48 + OFFSET_X, 1, 228.2, -316.8 , 0 );
setMoveKey( spep_1 + 49 + OFFSET_X, 1, 228.2, -316.8 , 0 );
setMoveKey( spep_1 + 50 + OFFSET_X, 1, 227.3, -317.5 , 0 );
setMoveKey( spep_1 + 51 + OFFSET_X, 1, 227.3, -317.5 , 0 );
setMoveKey( spep_1 + 52 + OFFSET_X, 1, 226.5, -318.3 , 0 );
setMoveKey( spep_1 + 53 + OFFSET_X, 1, 226.5, -318.3 , 0 );
setMoveKey( spep_1 + 54 + OFFSET_X, 1, 225.6, -319.1 , 0 );
setMoveKey( spep_1 + 55 + OFFSET_X, 1, 225.6, -319.1 , 0 );
setMoveKey( spep_1 + 56 + OFFSET_X, 1, 224.8, -319.8 , 0 );
setMoveKey( spep_1 + 57 + OFFSET_X, 1, 224.8, -319.8 , 0 );
setMoveKey( spep_1 + 58 + OFFSET_X, 1, 223.9, -320.6 , 0 );
setMoveKey( spep_1 + 59 + OFFSET_X, 1, 223.9, -320.6 , 0 );
setMoveKey( spep_1 + 60 + OFFSET_X, 1, 223, -321.4 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, 223, -321.4 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, 222.2, -322.1 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, 222.2, -322.1 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, 221.4, -322.9 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, 221.4, -322.9 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, 220.5, -323.6 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, 220.5, -323.6 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, 219.7, -324.4 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, 219.7, -324.4 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, 218.8, -325.2 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, 218.8, -325.2 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, 217.9, -325.9 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, 217.9, -325.9 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, 217.1, -326.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, 217.1, -326.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, 216.2, -327.4 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, 216.2, -327.4 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, 215.4, -328.2 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, 215.4, -328.2 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, 131.4, -248.9 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, 131.4, -248.9 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, 140, -251.3 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, 140, -251.3 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, 120.9, -253.7 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, 120.9, -253.7 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, 135.1, -248.6 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, 135.1, -248.6 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, 136.3, -265.8 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, 136.3, -265.8 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 145, -260.7 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 145, -260.7 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 125.8, -263.1 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 125.8, -263.1 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 140, -258 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 140, -258 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 141.3, -275.2 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 141.3, -275.2 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 149.9, -270.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 149.9, -270.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 130.8, -272.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 130.8, -272.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 145, -267.4 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 145, -267.4 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 146.3, -284.6 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 146.3, -284.6 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 127.1, -279.6 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 127.1, -279.6 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 167.2, -281.9 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 167.2, -281.9 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 150, -265.8 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 150, -265.8 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 151.2, -305.1 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 151.2, -305.1 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 132.1, -289 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 132.1, -289 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 172.2, -291.3 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 172.2, -291.3 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 154.9, -275.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 154.9, -275.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 156.2, -314.5 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 156.2, -314.5 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 137.1, -298.4 , 0 );
setMoveKey( spep_1 + 123 + OFFSET_X, 1, 137.1, -298.4 , 0 );
setMoveKey( spep_1 + 124 + OFFSET_X, 1, 177.2, -300.8 , 0 );
setMoveKey( spep_1 + 125 + OFFSET_X, 1, 177.2, -300.8 , 0 );
setMoveKey( spep_1 + 126 + OFFSET_X, 1, 159.9, -284.6 , 0 );

setScaleKey( spep_1 + 0, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 2 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 3 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 4 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 5 + OFFSET_X, 1, 0.66, 0.66 );
setScaleKey( spep_1 + 6 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 7 + OFFSET_X, 1, 0.64, 0.64 );
setScaleKey( spep_1 + 8 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 9 + OFFSET_X, 1, 0.62, 0.62 );
setScaleKey( spep_1 + 10 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 11 + OFFSET_X, 1, 0.6, 0.6 );
setScaleKey( spep_1 + 12 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 13 + OFFSET_X, 1, 0.58, 0.58 );
setScaleKey( spep_1 + 14 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 15 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_1 + 16 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 17 + OFFSET_X, 1, 0.54, 0.54 );
setScaleKey( spep_1 + 18 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 19 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_1 + 20 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 21 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_1 + 22 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 23 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_1 + 24 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 25 + OFFSET_X, 1, 0.46, 0.46 );
setScaleKey( spep_1 + 26 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 27 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_1 + 28 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 29 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_1 + 30 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 31 + OFFSET_X, 1, 0.42, 0.42 );
setScaleKey( spep_1 + 32 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 33 + OFFSET_X, 1, 0.4, 0.4 );
setScaleKey( spep_1 + 34 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 35 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_1 + 36 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 37 + OFFSET_X, 1, 0.38, 0.38 );
setScaleKey( spep_1 + 38 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 39 + OFFSET_X, 1, 0.37, 0.37 );
setScaleKey( spep_1 + 40 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 41 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_1 + 42 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 43 + OFFSET_X, 1, 0.35, 0.35 );
setScaleKey( spep_1 + 44 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 45 + OFFSET_X, 1, 0.34, 0.34 );
setScaleKey( spep_1 + 46 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 47 + OFFSET_X, 1, 0.33, 0.33 );
setScaleKey( spep_1 + 48 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 49 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_1 + 50 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 51 + OFFSET_X, 1, 0.31, 0.31 );
setScaleKey( spep_1 + 52 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 53 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_1 + 54 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 57 + OFFSET_X, 1, 0.29, 0.29 );
setScaleKey( spep_1 + 58 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 61 + OFFSET_X, 1, 0.28, 0.28 );
setScaleKey( spep_1 + 62 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 77 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_1 + 78 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 0.26, 0.26 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 0.7, 0.7 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 0.71, 0.71 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 0.72, 0.72 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 0.73, 0.73 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 0.74, 0.74 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 0.76, 0.76 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 0.77, 0.77 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 0.78, 0.78 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 0.79, 0.79 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 0.82, 0.82 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 125 + OFFSET_X, 1, 0.83, 0.83 );
setScaleKey( spep_1 + 126 + OFFSET_X, 1, 0.84, 0.84 );

setRotateKey( spep_1 + 0, 1, 16.7 );
setRotateKey( spep_1 + 3 + OFFSET_X, 1, 16.7 );
setRotateKey( spep_1 + 4 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 16.6 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 16.8 );
setRotateKey( spep_1 + 126 + OFFSET_X, 1, 16.8 );

-- ** 音 ** --
--気弾発射前溜め
SE034 = playSeVer2( spep_1 + 0, 1252, "",spep_1 + 52, 4, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE034, 119 );
setStartTimeMs( SE034,  367 );
SE035 = playSeVer2( spep_1 + 0, 1199, "",spep_1 + 52, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 0, SE035, 116 );
SE036 = playSeVer2( spep_1 + 0, 1020, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_1 + 0, SE036, 72 );
SE037 = playSeVer2( spep_1 + 20, 1020, "",spep_1 + 42, 0, 12, -1);
setSeVolumeByWorkId( spep_1 + 20, SE037, 86 );

----気弾発射
SE038 = playSeVer2( spep_1 + 28, 1027, "", 0, 0, 0, -1);
SE039 = playSeVer2( spep_1 + 28, 1193, "",spep_1 + 174, 0, 40, -1);
SE040 = playSeVer2( spep_1 + 28, 1145, "", 0, 0, 0, -1);
SE041 = playSeVer2( spep_1 + 28, 1215, "",spep_1 + 172, 0, 38, -1);

----爆発
SE042 = playSeVer2( spep_1 + 126, 1024, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_1 + 132, 1159, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 160); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 -4); -- 終了フレーム 284F-4

end
