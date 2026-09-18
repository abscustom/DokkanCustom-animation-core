--1027690:UR_ボージャック_必殺技：グランドスマッシャー
--sp_effect_a2_00234
--sp2623

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 162505;	 --瞬間移動から振り向き	ef_001
SP_01b = 162506;	 --瞬間移動から振り向き	ef_001b
SP_02 = 162507;	 --気をてめて発射から爆発	ef_002
SP_02b = 162508;	 --気をてめて発射から爆発	ef_002b

--エフェクト(てき)
SP_01r = 162509;	--瞬間移動から振り向き	ef_001r
SP_01br = 162510;	--瞬間移動から振り向き	ef_001br
SP_02r = 162511;	--気をてめて発射から爆発	ef_002r
SP_02br = 162512;	--気をてめて発射から爆発	ef_002br


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
-- 瞬間移動から振り向き
-------------------------------------------------

MAX_FRAME_0 = 224;

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

setBgScroll( spep_0 + 0, -10);
setBgScroll( spep_0 + 126, -120);
setBgScroll( spep_0 + 224, -10);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え

-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
setDisp( spep_0 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 128 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 128 + OFFSET_X, 1, 477.8, 4.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 477.8, 4.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 244.9, 4.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 244.9, 4.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 125.4, 4.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 125.4, 4.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 81.3, 4.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 81.3, 4.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 75, 4.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 75, 4.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 72.9, 3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 72.9, 3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 58, -9.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 58, -9.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 17.4, -42.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 17.4, -42.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -61.4, -106.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -61.4, -106.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -191.5, -212.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -191.5, -212.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -385.5, -370.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -385.5, -370.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -656.3, -590.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -656.3, -590.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -1016.6, -884 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -1016.6, -884 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -1016.8, -884.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -1016.8, -884.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -1018.3, -886.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -1018.3, -886.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -1022.6, -891.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -1022.6, -891.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -1030.8, -900.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -1030.8, -900.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1044.3, -916.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -1044.3, -916.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -1064.5, -940.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -1064.5, -940.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -1084.7, -963.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -1084.7, -963.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -1098.3, -979.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -1098.3, -979.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -1106.5, -989.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -1106.5, -989.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -1110.7, -994.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -1110.7, -994.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -1112.2, -996 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -1112.2, -996 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -1112.5, -996.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -1112.5, -996.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -1120.3, -1001.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -1120.3, -1001.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -1128.2, -1006.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -1128.2, -1006.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -1136, -1011.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -1136, -1011.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -1143.9, -1017 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -1143.9, -1017 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -1151.8, -1022.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -1151.8, -1022.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -1153.5, -1023.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -1153.5, -1023.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -1156, -1025.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -1156, -1025.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -1159.2, -1028.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -1159.2, -1028.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -1163.2, -1031.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -1163.2, -1031.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -1168.2, -1035.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -1168.2, -1035.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -1174.4, -1040.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -1174.4, -1040.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -1181.9, -1046.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -1181.9, -1046.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -1191, -1053.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -1191, -1053.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -1201.8, -1062.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -1201.8, -1062.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1214.2, -1072.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -1214.2, -1072.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -1228.2, -1083.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -1228.2, -1083.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -1243.5, -1095.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -1243.5, -1095.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -1259.4, -1108.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -1259.4, -1108.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -1275.4, -1121.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -1275.4, -1121.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -1285.8, -1133.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -1285.8, -1133.7 , 0 );

setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_0 + 128 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 2, 1004, "", 0, 0, 0, -1);
--瞬間移動
SE004 = playSeVer2( spep_0 + 96, 1109, "", 0, 0, 0, -1);
--画面遷移
SE005 = playSeVer2( spep_0 + 116, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 216 );
SE006 = playSeVer2( spep_0 + 116, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 110 );
--飛び上がる
SE007 = playSeVer2( spep_0 + 152, 1116, "",spep_0 + 188, 0, 22, -1);
SE008 = playSeVer2( spep_0 + 152, 1117, "",spep_0 + 236, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 152, 1264, "",spep_0 + 236, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 152, SE009, 68 );
SE010 = playSeVer2( spep_0 + 162, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --224F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- 気をてめて発射から爆発
-------------------------------------------------

MAX_FRAME_1 = 246;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02b, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 60 + OFFSET_X, 1, 1)
setDisp(spep_1 + 130 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 118 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 128 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, -2454.7, -2822.2 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, -2454.7, -2822.2 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, -2490.4, -2971.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, -2490.4, -2971.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, -2523.7, -3114 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -2523.7, -3114 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -2360, -3257.3 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -2360, -3257.3 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -2201.7, -3382.2 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -2201.7, -3382.2 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -2051.6, -3489.3 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -2051.6, -3489.3 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -1911.9, -3580.2 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -1911.9, -3580.2 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -1783.3, -3656.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -1783.3, -3656.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, -1666.4, -3720.9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, -1666.4, -3720.9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, -1556.9, -3780.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, -1556.9, -3780.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -1452.8, -3768.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -1452.8, -3768.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -1169.9, -3722.4 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -1169.9, -3722.4 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, -897.4, -3380.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -897.4, -3380.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, -471.3, -2698.7 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -471.3, -2698.7 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -83.4, -1735.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -83.4, -1735.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 58.3, -1088.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 58.3, -1088.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 96.5, -760 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 96.5, -760 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 103.8, -601.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 103.8, -601.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 94.8, -508.7 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 94.8, -508.7 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 86.4, -423.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 86.4, -423.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 79.2, -349.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 79.2, -349.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 73.4, -289.9 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 73.4, -289.9 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 68.7, -242.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 68.7, -242.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 65.1, -206.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 65.1, -206.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 62.4, -178.1 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 62.4, -178.1 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 60.3, -156.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 60.3, -156.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 58.6, -139.6 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 58.6, -139.6 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 57.4, -127.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 57.4, -127.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 56.5, -117.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 56.5, -117.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 17.2, -110.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 17.2, -110.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 17.1, -105.9 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 17.1, -105.9 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 19.9, -107.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 19.9, -107.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 9.9, -79.9 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 9.9, -79.9 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 10.27, 10.27 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 10.27, 10.27 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 9.91, 9.91 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 9.91, 9.91 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_1 + 61 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_1 + 62 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, 1.5 );

setBlendColor( spep_1 + 60 + OFFSET_X, 1, 1, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 128 + OFFSET_X, 1, 1, 1.0, 1.0, 1.0, 1.0);
setBlendColor( spep_1 + 130 + OFFSET_X, 1, 1, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--気弾溜め
SE012 = playSeVer2( spep_1 + 0, 1271, "",spep_1 + 72, 10, 18, 0.6);
setStartTimeMs( SE012,  333 );
SE013 = playSeVer2( spep_1 + 2, 1274, "",spep_1 + 72, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 2, SE013, 143 );
SE014 = playSeVer2( spep_1 + 6, 1240, "",spep_1 + 90, 0, 16, 0.6);
SE015 = playSeVer2( spep_1 + 6, 1265, "",spep_1 + 72, 0, 18, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
SE016 = playSeVer2( spep_1 + 48, 1193, "",spep_1 + 100, 0, 24, -1);
SE017 = playSeVer2( spep_1 + 48, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 48, 1177, "",spep_1 + 160, 0, 20, -1);
--気弾飛んでいく
SE019 = playSeVer2( spep_1 + 72, 1202, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 72, SE019, 209 );
--爆発
SE020 = playSeVer2( spep_1 + 130, 1024, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 130, 1011, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム 246F - 4

else

------------------------------------------------------------------------------------------------------------
--敵側
------------------------------------------------------------------------------------------------------------


spep_0 = 0;


-------------------------------------------------
-- 瞬間移動から振り向き
-------------------------------------------------

MAX_FRAME_0 = 224;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01r, 0x100, -1, 0, 0, 0); -- ef_001
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

base_0b = entryEffect( spep_0 + 0, SP_01br, 0x80, -1, 0, 0, 0); -- ef_001b
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

setBgScroll( spep_0 + 0, -10);
setBgScroll( spep_0 + 126, 120);
setBgScroll( spep_0 + 224, -10);

-----------------------------
-- 顔カットイン
-----------------------------
spep_x = spep_0 + 0;

-- ** 顔カットイン ** --
--[[
speff = entryEffect( spep_x + 0, 1504, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(顔)
setEffReplaceTexture( speff, 3, 2 ); --カットイン差し替え
speff1 = entryEffect( spep_x + 0, 1505, 0x100, -1, 0, 0, 0, 1000 ); --カットイン(セリフ)
setEffReplaceTexture( speff1, 4, 5 ); --セリフカットイン差し替え
--]]
-- ** 書き文字エントリー ** --
ctgogo = entryEffectLife( spep_x + 16, 190006, 68, 0x100, -1, 0, 0, 515.5, 3000 ); --ゴゴゴ
setEffShake( spep_x + 16, ctgogo, 68, 10 );
setEffMoveKey( spep_x + 16, ctgogo, 0, 515.5 , 0 );
setEffMoveKey( spep_x + 84, ctgogo, 0, 515.5 , 0 );
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
setDisp( spep_0 + 128 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 228 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 128 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 128 + OFFSET_X, 1, 477.8, 4.7 , 0 );
setMoveKey( spep_0 + 129 + OFFSET_X, 1, 477.8, 4.7 , 0 );
setMoveKey( spep_0 + 130 + OFFSET_X, 1, 244.9, 4.7 , 0 );
setMoveKey( spep_0 + 131 + OFFSET_X, 1, 244.9, 4.7 , 0 );
setMoveKey( spep_0 + 132 + OFFSET_X, 1, 125.4, 4.7 , 0 );
setMoveKey( spep_0 + 133 + OFFSET_X, 1, 125.4, 4.7 , 0 );
setMoveKey( spep_0 + 134 + OFFSET_X, 1, 81.3, 4.7 , 0 );
setMoveKey( spep_0 + 135 + OFFSET_X, 1, 81.3, 4.7 , 0 );
setMoveKey( spep_0 + 136 + OFFSET_X, 1, 75, 4.7 , 0 );
setMoveKey( spep_0 + 147 + OFFSET_X, 1, 75, 4.7 , 0 );
setMoveKey( spep_0 + 148 + OFFSET_X, 1, 72.9, 3 , 0 );
setMoveKey( spep_0 + 149 + OFFSET_X, 1, 72.9, 3 , 0 );
setMoveKey( spep_0 + 150 + OFFSET_X, 1, 58, -9.2 , 0 );
setMoveKey( spep_0 + 151 + OFFSET_X, 1, 58, -9.2 , 0 );
setMoveKey( spep_0 + 152 + OFFSET_X, 1, 17.4, -42.1 , 0 );
setMoveKey( spep_0 + 153 + OFFSET_X, 1, 17.4, -42.1 , 0 );
setMoveKey( spep_0 + 154 + OFFSET_X, 1, -61.4, -106.4 , 0 );
setMoveKey( spep_0 + 155 + OFFSET_X, 1, -61.4, -106.4 , 0 );
setMoveKey( spep_0 + 156 + OFFSET_X, 1, -191.5, -212.3 , 0 );
setMoveKey( spep_0 + 157 + OFFSET_X, 1, -191.5, -212.3 , 0 );
setMoveKey( spep_0 + 158 + OFFSET_X, 1, -385.5, -370.2 , 0 );
setMoveKey( spep_0 + 159 + OFFSET_X, 1, -385.5, -370.2 , 0 );
setMoveKey( spep_0 + 160 + OFFSET_X, 1, -656.3, -590.7 , 0 );
setMoveKey( spep_0 + 161 + OFFSET_X, 1, -656.3, -590.7 , 0 );
setMoveKey( spep_0 + 162 + OFFSET_X, 1, -1016.6, -884 , 0 );
setMoveKey( spep_0 + 163 + OFFSET_X, 1, -1016.6, -884 , 0 );
setMoveKey( spep_0 + 164 + OFFSET_X, 1, -1016.8, -884.3 , 0 );
setMoveKey( spep_0 + 165 + OFFSET_X, 1, -1016.8, -884.3 , 0 );
setMoveKey( spep_0 + 166 + OFFSET_X, 1, -1018.3, -886.1 , 0 );
setMoveKey( spep_0 + 167 + OFFSET_X, 1, -1018.3, -886.1 , 0 );
setMoveKey( spep_0 + 168 + OFFSET_X, 1, -1022.6, -891.1 , 0 );
setMoveKey( spep_0 + 169 + OFFSET_X, 1, -1022.6, -891.1 , 0 );
setMoveKey( spep_0 + 170 + OFFSET_X, 1, -1030.8, -900.7 , 0 );
setMoveKey( spep_0 + 171 + OFFSET_X, 1, -1030.8, -900.7 , 0 );
setMoveKey( spep_0 + 172 + OFFSET_X, 1, -1044.3, -916.5 , 0 );
setMoveKey( spep_0 + 173 + OFFSET_X, 1, -1044.3, -916.5 , 0 );
setMoveKey( spep_0 + 174 + OFFSET_X, 1, -1064.5, -940.1 , 0 );
setMoveKey( spep_0 + 175 + OFFSET_X, 1, -1064.5, -940.1 , 0 );
setMoveKey( spep_0 + 176 + OFFSET_X, 1, -1084.7, -963.8 , 0 );
setMoveKey( spep_0 + 177 + OFFSET_X, 1, -1084.7, -963.8 , 0 );
setMoveKey( spep_0 + 178 + OFFSET_X, 1, -1098.3, -979.6 , 0 );
setMoveKey( spep_0 + 179 + OFFSET_X, 1, -1098.3, -979.6 , 0 );
setMoveKey( spep_0 + 180 + OFFSET_X, 1, -1106.5, -989.2 , 0 );
setMoveKey( spep_0 + 181 + OFFSET_X, 1, -1106.5, -989.2 , 0 );
setMoveKey( spep_0 + 182 + OFFSET_X, 1, -1110.7, -994.2 , 0 );
setMoveKey( spep_0 + 183 + OFFSET_X, 1, -1110.7, -994.2 , 0 );
setMoveKey( spep_0 + 184 + OFFSET_X, 1, -1112.2, -996 , 0 );
setMoveKey( spep_0 + 185 + OFFSET_X, 1, -1112.2, -996 , 0 );
setMoveKey( spep_0 + 186 + OFFSET_X, 1, -1112.5, -996.2 , 0 );
setMoveKey( spep_0 + 187 + OFFSET_X, 1, -1112.5, -996.2 , 0 );
setMoveKey( spep_0 + 188 + OFFSET_X, 1, -1120.3, -1001.4 , 0 );
setMoveKey( spep_0 + 189 + OFFSET_X, 1, -1120.3, -1001.4 , 0 );
setMoveKey( spep_0 + 190 + OFFSET_X, 1, -1128.2, -1006.6 , 0 );
setMoveKey( spep_0 + 191 + OFFSET_X, 1, -1128.2, -1006.6 , 0 );
setMoveKey( spep_0 + 192 + OFFSET_X, 1, -1136, -1011.8 , 0 );
setMoveKey( spep_0 + 193 + OFFSET_X, 1, -1136, -1011.8 , 0 );
setMoveKey( spep_0 + 194 + OFFSET_X, 1, -1143.9, -1017 , 0 );
setMoveKey( spep_0 + 195 + OFFSET_X, 1, -1143.9, -1017 , 0 );
setMoveKey( spep_0 + 196 + OFFSET_X, 1, -1151.8, -1022.2 , 0 );
setMoveKey( spep_0 + 197 + OFFSET_X, 1, -1151.8, -1022.2 , 0 );
setMoveKey( spep_0 + 198 + OFFSET_X, 1, -1153.5, -1023.6 , 0 );
setMoveKey( spep_0 + 199 + OFFSET_X, 1, -1153.5, -1023.6 , 0 );
setMoveKey( spep_0 + 200 + OFFSET_X, 1, -1156, -1025.6 , 0 );
setMoveKey( spep_0 + 201 + OFFSET_X, 1, -1156, -1025.6 , 0 );
setMoveKey( spep_0 + 202 + OFFSET_X, 1, -1159.2, -1028.1 , 0 );
setMoveKey( spep_0 + 203 + OFFSET_X, 1, -1159.2, -1028.1 , 0 );
setMoveKey( spep_0 + 204 + OFFSET_X, 1, -1163.2, -1031.3 , 0 );
setMoveKey( spep_0 + 205 + OFFSET_X, 1, -1163.2, -1031.3 , 0 );
setMoveKey( spep_0 + 206 + OFFSET_X, 1, -1168.2, -1035.4 , 0 );
setMoveKey( spep_0 + 207 + OFFSET_X, 1, -1168.2, -1035.4 , 0 );
setMoveKey( spep_0 + 208 + OFFSET_X, 1, -1174.4, -1040.3 , 0 );
setMoveKey( spep_0 + 209 + OFFSET_X, 1, -1174.4, -1040.3 , 0 );
setMoveKey( spep_0 + 210 + OFFSET_X, 1, -1181.9, -1046.4 , 0 );
setMoveKey( spep_0 + 211 + OFFSET_X, 1, -1181.9, -1046.4 , 0 );
setMoveKey( spep_0 + 212 + OFFSET_X, 1, -1191, -1053.6 , 0 );
setMoveKey( spep_0 + 213 + OFFSET_X, 1, -1191, -1053.6 , 0 );
setMoveKey( spep_0 + 214 + OFFSET_X, 1, -1201.8, -1062.2 , 0 );
setMoveKey( spep_0 + 215 + OFFSET_X, 1, -1201.8, -1062.2 , 0 );
setMoveKey( spep_0 + 216 + OFFSET_X, 1, -1214.2, -1072.1 , 0 );
setMoveKey( spep_0 + 217 + OFFSET_X, 1, -1214.2, -1072.1 , 0 );
setMoveKey( spep_0 + 218 + OFFSET_X, 1, -1228.2, -1083.4 , 0 );
setMoveKey( spep_0 + 219 + OFFSET_X, 1, -1228.2, -1083.4 , 0 );
setMoveKey( spep_0 + 220 + OFFSET_X, 1, -1243.5, -1095.6 , 0 );
setMoveKey( spep_0 + 221 + OFFSET_X, 1, -1243.5, -1095.6 , 0 );
setMoveKey( spep_0 + 222 + OFFSET_X, 1, -1259.4, -1108.3 , 0 );
setMoveKey( spep_0 + 223 + OFFSET_X, 1, -1259.4, -1108.3 , 0 );
setMoveKey( spep_0 + 224 + OFFSET_X, 1, -1275.4, -1121.1 , 0 );
setMoveKey( spep_0 + 225 + OFFSET_X, 1, -1275.4, -1121.1 , 0 );
setMoveKey( spep_0 + 226 + OFFSET_X, 1, -1285.8, -1133.7 , 0 );
setMoveKey( spep_0 + 228 + OFFSET_X, 1, -1285.8, -1133.7 , 0 );

setScaleKey( spep_0 + 128 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 151 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_0 + 152 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 153 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_0 + 154 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 155 + OFFSET_X, 1, 1.55, 1.55 );
setScaleKey( spep_0 + 156 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 157 + OFFSET_X, 1, 1.58, 1.58 );
setScaleKey( spep_0 + 158 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 159 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 160 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 161 + OFFSET_X, 1, 1.7, 1.7 );
setScaleKey( spep_0 + 162 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 165 + OFFSET_X, 1, 1.8, 1.8 );
setScaleKey( spep_0 + 166 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 167 + OFFSET_X, 1, 1.81, 1.81 );
setScaleKey( spep_0 + 168 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 169 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 170 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 171 + OFFSET_X, 1, 1.86, 1.86 );
setScaleKey( spep_0 + 172 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 173 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 174 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 175 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 176 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 177 + OFFSET_X, 1, 2.07, 2.07 );
setScaleKey( spep_0 + 178 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 179 + OFFSET_X, 1, 2.13, 2.13 );
setScaleKey( spep_0 + 180 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 181 + OFFSET_X, 1, 2.16, 2.16 );
setScaleKey( spep_0 + 182 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 183 + OFFSET_X, 1, 2.18, 2.18 );
setScaleKey( spep_0 + 184 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 187 + OFFSET_X, 1, 2.19, 2.19 );
setScaleKey( spep_0 + 188 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 189 + OFFSET_X, 1, 2.2, 2.2 );
setScaleKey( spep_0 + 190 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 191 + OFFSET_X, 1, 2.21, 2.21 );
setScaleKey( spep_0 + 192 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 193 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_0 + 194 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 195 + OFFSET_X, 1, 2.24, 2.24 );
setScaleKey( spep_0 + 196 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 203 + OFFSET_X, 1, 2.25, 2.25 );
setScaleKey( spep_0 + 204 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 213 + OFFSET_X, 1, 2.26, 2.26 );
setScaleKey( spep_0 + 214 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 217 + OFFSET_X, 1, 2.27, 2.27 );
setScaleKey( spep_0 + 218 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 221 + OFFSET_X, 1, 2.28, 2.28 );
setScaleKey( spep_0 + 222 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 225 + OFFSET_X, 1, 2.29, 2.29 );
setScaleKey( spep_0 + 226 + OFFSET_X, 1, 2.3, 2.3 );
setScaleKey( spep_0 + 228 + OFFSET_X, 1, 2.3, 2.3 );

setRotateKey( spep_0 + 128 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 228 + OFFSET_X, 1, 0 );

-- ** 音 ** --
--入り
SE001 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);
SE002 = playSeVer2( spep_0 + 2, 1004, "", 0, 0, 0, -1);
--瞬間移動
SE004 = playSeVer2( spep_0 + 96, 1109, "", 0, 0, 0, -1);
--画面遷移
SE005 = playSeVer2( spep_0 + 116, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE005, 216 );
SE006 = playSeVer2( spep_0 + 116, 37, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 116, SE006, 110 );
--飛び上がる
SE007 = playSeVer2( spep_0 + 152, 1116, "",spep_0 + 188, 0, 22, -1);
SE008 = playSeVer2( spep_0 + 152, 1117, "",spep_0 + 236, 0, 12, -1);
SE009 = playSeVer2( spep_0 + 152, 1264, "",spep_0 + 236, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 152, SE009, 68 );
SE010 = playSeVer2( spep_0 + 162, 1109, "", 0, 0, 0, -1);

-- ** 次の準備 ** --
spep_c = spep_0 + MAX_FRAME_0;  --224F

--------------------------------------
--カードカットイン(94F)
--------------------------------------
spep_1 = showCardCutin(spep_c, 1);

-------------------------------------------------
-- 気をてめて発射から爆発
-------------------------------------------------

MAX_FRAME_1 = 246;

-- ** エフェクト等 ** --
base_1f = entryEffect( spep_1 + 0, SP_02r, 0x100, -1, 0, 0, 0); -- ef_002
setEffMoveKey( spep_1 + 0, base_1f, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1f, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1f, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1f, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1f, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1f, 0);
setEffAlphaKey( spep_1 + 0, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1f, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1f, 0);

base_1b = entryEffect( spep_1 + 0, SP_02br, 0x80, -1, 0, 0, 0); -- ef_002b
setEffMoveKey( spep_1 + 0, base_1b, 0, 0 , 0);
setEffMoveKey( spep_1 + MAX_FRAME_1, base_1b, 0, 0 , 0);
setEffScaleKey( spep_1 + 0, base_1b, 1.0, 1.0);
setEffScaleKey( spep_1 + MAX_FRAME_1, base_1b, 1.0, 1.0);
setEffRotateKey( spep_1 + 0, base_1b, 0);
setEffRotateKey( spep_1 + MAX_FRAME_1, base_1b, 0);
setEffAlphaKey( spep_1 + 0, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -2, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1 -1, base_1b, 255);
setEffAlphaKey( spep_1 + MAX_FRAME_1, base_1b, 0);

-- ** 黒背景 ** --
entryFadeBg( spep_1 + 0, 0, MAX_FRAME_1 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
setDisp(spep_1 + 60 + OFFSET_X, 1, 1)
setDisp(spep_1 + 130 + OFFSET_X, 1, 0)

changeAnime( spep_1 + 60 + OFFSET_X, 1, 118 );
changeAnime( spep_1 + 118 + OFFSET_X, 1, 104 );
changeAnime( spep_1 + 128 + OFFSET_X, 1, 106 );

setMoveKey( spep_1 + 60 + OFFSET_X, 1, -2454.7, -2822.2 , 0 );
setMoveKey( spep_1 + 61 + OFFSET_X, 1, -2454.7, -2822.2 , 0 );
setMoveKey( spep_1 + 62 + OFFSET_X, 1, -2490.4, -2971.9 , 0 );
setMoveKey( spep_1 + 63 + OFFSET_X, 1, -2490.4, -2971.9 , 0 );
setMoveKey( spep_1 + 64 + OFFSET_X, 1, -2523.7, -3114 , 0 );
setMoveKey( spep_1 + 65 + OFFSET_X, 1, -2523.7, -3114 , 0 );
setMoveKey( spep_1 + 66 + OFFSET_X, 1, -2360, -3257.3 , 0 );
setMoveKey( spep_1 + 67 + OFFSET_X, 1, -2360, -3257.3 , 0 );
setMoveKey( spep_1 + 68 + OFFSET_X, 1, -2201.7, -3382.2 , 0 );
setMoveKey( spep_1 + 69 + OFFSET_X, 1, -2201.7, -3382.2 , 0 );
setMoveKey( spep_1 + 70 + OFFSET_X, 1, -2051.6, -3489.3 , 0 );
setMoveKey( spep_1 + 71 + OFFSET_X, 1, -2051.6, -3489.3 , 0 );
setMoveKey( spep_1 + 72 + OFFSET_X, 1, -1911.9, -3580.2 , 0 );
setMoveKey( spep_1 + 73 + OFFSET_X, 1, -1911.9, -3580.2 , 0 );
setMoveKey( spep_1 + 74 + OFFSET_X, 1, -1783.3, -3656.7 , 0 );
setMoveKey( spep_1 + 75 + OFFSET_X, 1, -1783.3, -3656.7 , 0 );
setMoveKey( spep_1 + 76 + OFFSET_X, 1, -1666.4, -3720.9 , 0 );
setMoveKey( spep_1 + 77 + OFFSET_X, 1, -1666.4, -3720.9 , 0 );
setMoveKey( spep_1 + 78 + OFFSET_X, 1, -1556.9, -3780.1 , 0 );
setMoveKey( spep_1 + 79 + OFFSET_X, 1, -1556.9, -3780.1 , 0 );
setMoveKey( spep_1 + 80 + OFFSET_X, 1, -1452.8, -3768.7 , 0 );
setMoveKey( spep_1 + 81 + OFFSET_X, 1, -1452.8, -3768.7 , 0 );
setMoveKey( spep_1 + 82 + OFFSET_X, 1, -1169.9, -3722.4 , 0 );
setMoveKey( spep_1 + 83 + OFFSET_X, 1, -1169.9, -3722.4 , 0 );
setMoveKey( spep_1 + 84 + OFFSET_X, 1, -897.4, -3380.8 , 0 );
setMoveKey( spep_1 + 85 + OFFSET_X, 1, -897.4, -3380.8 , 0 );
setMoveKey( spep_1 + 86 + OFFSET_X, 1, -471.3, -2698.7 , 0 );
setMoveKey( spep_1 + 87 + OFFSET_X, 1, -471.3, -2698.7 , 0 );
setMoveKey( spep_1 + 88 + OFFSET_X, 1, -83.4, -1735.2 , 0 );
setMoveKey( spep_1 + 89 + OFFSET_X, 1, -83.4, -1735.2 , 0 );
setMoveKey( spep_1 + 90 + OFFSET_X, 1, 58.3, -1088.1 , 0 );
setMoveKey( spep_1 + 91 + OFFSET_X, 1, 58.3, -1088.1 , 0 );
setMoveKey( spep_1 + 92 + OFFSET_X, 1, 96.5, -760 , 0 );
setMoveKey( spep_1 + 93 + OFFSET_X, 1, 96.5, -760 , 0 );
setMoveKey( spep_1 + 94 + OFFSET_X, 1, 103.8, -601.2 , 0 );
setMoveKey( spep_1 + 95 + OFFSET_X, 1, 103.8, -601.2 , 0 );
setMoveKey( spep_1 + 96 + OFFSET_X, 1, 94.8, -508.7 , 0 );
setMoveKey( spep_1 + 97 + OFFSET_X, 1, 94.8, -508.7 , 0 );
setMoveKey( spep_1 + 98 + OFFSET_X, 1, 86.4, -423.1 , 0 );
setMoveKey( spep_1 + 99 + OFFSET_X, 1, 86.4, -423.1 , 0 );
setMoveKey( spep_1 + 100 + OFFSET_X, 1, 79.2, -349.5 , 0 );
setMoveKey( spep_1 + 101 + OFFSET_X, 1, 79.2, -349.5 , 0 );
setMoveKey( spep_1 + 102 + OFFSET_X, 1, 73.4, -289.9 , 0 );
setMoveKey( spep_1 + 103 + OFFSET_X, 1, 73.4, -289.9 , 0 );
setMoveKey( spep_1 + 104 + OFFSET_X, 1, 68.7, -242.8 , 0 );
setMoveKey( spep_1 + 105 + OFFSET_X, 1, 68.7, -242.8 , 0 );
setMoveKey( spep_1 + 106 + OFFSET_X, 1, 65.1, -206.4 , 0 );
setMoveKey( spep_1 + 107 + OFFSET_X, 1, 65.1, -206.4 , 0 );
setMoveKey( spep_1 + 108 + OFFSET_X, 1, 62.4, -178.1 , 0 );
setMoveKey( spep_1 + 109 + OFFSET_X, 1, 62.4, -178.1 , 0 );
setMoveKey( spep_1 + 110 + OFFSET_X, 1, 60.3, -156.4 , 0 );
setMoveKey( spep_1 + 111 + OFFSET_X, 1, 60.3, -156.4 , 0 );
setMoveKey( spep_1 + 112 + OFFSET_X, 1, 58.6, -139.6 , 0 );
setMoveKey( spep_1 + 113 + OFFSET_X, 1, 58.6, -139.6 , 0 );
setMoveKey( spep_1 + 114 + OFFSET_X, 1, 57.4, -127.1 , 0 );
setMoveKey( spep_1 + 115 + OFFSET_X, 1, 57.4, -127.1 , 0 );
setMoveKey( spep_1 + 116 + OFFSET_X, 1, 56.5, -117.8 , 0 );
setMoveKey( spep_1 + 117 + OFFSET_X, 1, 56.5, -117.8 , 0 );
setMoveKey( spep_1 + 118 + OFFSET_X, 1, 17.2, -110.2 , 0 );
setMoveKey( spep_1 + 119 + OFFSET_X, 1, 17.2, -110.2 , 0 );
setMoveKey( spep_1 + 120 + OFFSET_X, 1, 17.1, -105.9 , 0 );
setMoveKey( spep_1 + 121 + OFFSET_X, 1, 17.1, -105.9 , 0 );
setMoveKey( spep_1 + 122 + OFFSET_X, 1, 19.9, -107.9 , 0 );
setMoveKey( spep_1 + 127 + OFFSET_X, 1, 19.9, -107.9 , 0 );
setMoveKey( spep_1 + 128 + OFFSET_X, 1, 9.9, -79.9 , 0 );
setMoveKey( spep_1 + 130 + OFFSET_X, 1, 9.9, -79.9 , 0 );

setScaleKey( spep_1 + 60 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_1 + 65 + OFFSET_X, 1, 10.41, 10.41 );
setScaleKey( spep_1 + 66 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_1 + 75 + OFFSET_X, 1, 10.4, 10.4 );
setScaleKey( spep_1 + 76 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_1 + 79 + OFFSET_X, 1, 10.39, 10.39 );
setScaleKey( spep_1 + 80 + OFFSET_X, 1, 10.27, 10.27 );
setScaleKey( spep_1 + 81 + OFFSET_X, 1, 10.27, 10.27 );
setScaleKey( spep_1 + 82 + OFFSET_X, 1, 9.91, 9.91 );
setScaleKey( spep_1 + 83 + OFFSET_X, 1, 9.91, 9.91 );
setScaleKey( spep_1 + 84 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_1 + 85 + OFFSET_X, 1, 9.02, 9.02 );
setScaleKey( spep_1 + 86 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_1 + 87 + OFFSET_X, 1, 7.35, 7.35 );
setScaleKey( spep_1 + 88 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_1 + 89 + OFFSET_X, 1, 5.15, 5.15 );
setScaleKey( spep_1 + 90 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_1 + 91 + OFFSET_X, 1, 3.72, 3.72 );
setScaleKey( spep_1 + 92 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 93 + OFFSET_X, 1, 3, 3 );
setScaleKey( spep_1 + 94 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 95 + OFFSET_X, 1, 2.67, 2.67 );
setScaleKey( spep_1 + 96 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 97 + OFFSET_X, 1, 2.44, 2.44 );
setScaleKey( spep_1 + 98 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 99 + OFFSET_X, 1, 2.23, 2.23 );
setScaleKey( spep_1 + 100 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 101 + OFFSET_X, 1, 2.04, 2.04 );
setScaleKey( spep_1 + 102 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 103 + OFFSET_X, 1, 1.9, 1.9 );
setScaleKey( spep_1 + 104 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 105 + OFFSET_X, 1, 1.78, 1.78 );
setScaleKey( spep_1 + 106 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 107 + OFFSET_X, 1, 1.69, 1.69 );
setScaleKey( spep_1 + 108 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 109 + OFFSET_X, 1, 1.62, 1.62 );
setScaleKey( spep_1 + 110 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 111 + OFFSET_X, 1, 1.56, 1.56 );
setScaleKey( spep_1 + 112 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 113 + OFFSET_X, 1, 1.52, 1.52 );
setScaleKey( spep_1 + 114 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 115 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 116 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 117 + OFFSET_X, 1, 1.47, 1.47 );
setScaleKey( spep_1 + 118 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 119 + OFFSET_X, 1, 1.51, 1.51 );
setScaleKey( spep_1 + 120 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 121 + OFFSET_X, 1, 1.5, 1.5 );
setScaleKey( spep_1 + 122 + OFFSET_X, 1, 1.49, 1.49 );
setScaleKey( spep_1 + 130 + OFFSET_X, 1, 1.49, 1.49 );

setRotateKey( spep_1 + 60 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_1 + 61 + OFFSET_X, 1, 53.7 );
setRotateKey( spep_1 + 62 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_1 + 63 + OFFSET_X, 1, 52.6 );
setRotateKey( spep_1 + 64 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_1 + 65 + OFFSET_X, 1, 51.5 );
setRotateKey( spep_1 + 66 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_1 + 67 + OFFSET_X, 1, 48.4 );
setRotateKey( spep_1 + 68 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_1 + 69 + OFFSET_X, 1, 45.5 );
setRotateKey( spep_1 + 70 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 71 + OFFSET_X, 1, 42.9 );
setRotateKey( spep_1 + 72 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_1 + 73 + OFFSET_X, 1, 40.5 );
setRotateKey( spep_1 + 74 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 75 + OFFSET_X, 1, 38.4 );
setRotateKey( spep_1 + 76 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 77 + OFFSET_X, 1, 36.4 );
setRotateKey( spep_1 + 78 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_1 + 79 + OFFSET_X, 1, 34.7 );
setRotateKey( spep_1 + 80 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_1 + 81 + OFFSET_X, 1, 33.4 );
setRotateKey( spep_1 + 82 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_1 + 83 + OFFSET_X, 1, 29.7 );
setRotateKey( spep_1 + 84 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 85 + OFFSET_X, 1, 26.9 );
setRotateKey( spep_1 + 86 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_1 + 87 + OFFSET_X, 1, 21.6 );
setRotateKey( spep_1 + 88 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 89 + OFFSET_X, 1, 14.6 );
setRotateKey( spep_1 + 90 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 91 + OFFSET_X, 1, 10.1 );
setRotateKey( spep_1 + 92 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 93 + OFFSET_X, 1, 7.8 );
setRotateKey( spep_1 + 94 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 117 + OFFSET_X, 1, 6.7 );
setRotateKey( spep_1 + 118 + OFFSET_X, 1, 1.5 );
setRotateKey( spep_1 + 130 + OFFSET_X, 1, 1.5 );

setBlendColor( spep_1 + 60 + OFFSET_X, 1, 1, 0.0, 0.0, 0.0, 0.0);
setBlendColor( spep_1 + 128 + OFFSET_X, 1, 1, 1.0, 1.0, 1.0, 1.0);
setBlendColor( spep_1 + 130 + OFFSET_X, 1, 1, 0.0, 0.0, 0.0, 0.0);

-- ** 音 ** --
--気弾溜め
SE012 = playSeVer2( spep_1 + 0, 1271, "",spep_1 + 72, 10, 18, 0.6);
setStartTimeMs( SE012,  333 );
SE013 = playSeVer2( spep_1 + 2, 1274, "",spep_1 + 72, 0, 16, 0.6);
setSeVolumeByWorkId( spep_1 + 2, SE013, 143 );
SE014 = playSeVer2( spep_1 + 6, 1240, "",spep_1 + 90, 0, 16, 0.6);
SE015 = playSeVer2( spep_1 + 6, 1265, "",spep_1 + 72, 0, 18, 0.6);

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_1 + 20; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE_CUTIN, 0);
stopSe( SP_dodge - 12, SE012, 0);
stopSe( SP_dodge - 12, SE013, 0);
stopSe( SP_dodge - 12, SE014, 0);
stopSe( SP_dodge - 12, SE015, 0);
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
SE016 = playSeVer2( spep_1 + 48, 1193, "",spep_1 + 100, 0, 24, -1);
SE017 = playSeVer2( spep_1 + 48, 1109, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_1 + 48, 1177, "",spep_1 + 160, 0, 20, -1);
--気弾飛んでいく
SE019 = playSeVer2( spep_1 + 72, 1202, "", 0, 0, 0, 0.5);
setSeVolumeByWorkId( spep_1 + 72, SE019, 209 );
--爆発
SE020 = playSeVer2( spep_1 + 130, 1024, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_1 + 130, 1011, "", 0, 0, 0, -1);

-- ** ダメージ表示 ** --
dealDamage( spep_1 + 140); -- ダメージ表示フレーム
endPhase( spep_1 + MAX_FRAME_1 - 4); -- 終了フレーム 246F - 4

end