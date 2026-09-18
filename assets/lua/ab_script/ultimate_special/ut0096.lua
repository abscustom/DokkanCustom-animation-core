-- 4031230:LR_超サイヤ人2ケール+超サイヤ人2カリフラ_アクティブ必殺技：ケール暴走！！
-- sp_effect_b4_00382
-- ut0096

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163824;  --   ef_001 最初～最後まで

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

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
setAlphaKey( 0, 1, 255 );

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

ENABLE_AUTO_TIME_STRETCH(0.9);

OFFSET_X = -1;

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;---記載するspepの数に要注意

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 1138 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
           setupMovie(spep_0 + 1138 -13, SP_01, spep_0 + 1138 -13 + 2, 1);

        else
           skipFrame(0, spep_0 + 1152);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1152, SP_01, spep_0 + 1152 -1 + 2, 1);

            --スキップタイミング直前から鳴らしておきたいSEをここに記載
            --気弾発射
            SE062 = playSeVer2( spep_0 + 1152, 1145, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 1152, SE062, 78 );
            SE063 = playSeVer2( spep_0 + 1152, 1193, "",spep_0 + 1318, 0, 114, -1);
            SE064 = playSeVer2( spep_0 + 1152, 1027, "", 0, 0, 0, -1);
            setSeVolumeByWorkId( spep_0 + 1152, SE064, 79 );

       end
    else
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- 最初～最後まで
------------------------------------------------------
MAX_FRAME_0 = 1334;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- 最初～最後まで(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 1150 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1176 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1150 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 1150 + OFFSET_X, 1, 38.4, -193.5 , 0 );
setMoveKey( spep_0 + 1151 + OFFSET_X, 1, 38.4, -193.5 , 0 );
setMoveKey( spep_0 + 1152 + OFFSET_X, 1, 46.2, -201.3 , 0 );
setMoveKey( spep_0 + 1153 + OFFSET_X, 1, 46.2, -201.3 , 0 );
setMoveKey( spep_0 + 1154 + OFFSET_X, 1, 38.4, -193.5 , 0 );
setMoveKey( spep_0 + 1155 + OFFSET_X, 1, 38.4, -193.5 , 0 );
setMoveKey( spep_0 + 1156 + OFFSET_X, 1, 48.1, -201.3 , 0 );
setMoveKey( spep_0 + 1157 + OFFSET_X, 1, 48.1, -201.3 , 0 );
setMoveKey( spep_0 + 1158 + OFFSET_X, 1, 34.5, -191.5 , 0 );
setMoveKey( spep_0 + 1159 + OFFSET_X, 1, 34.5, -191.5 , 0 );
setMoveKey( spep_0 + 1160 + OFFSET_X, 1, 48.1, -203.3 , 0 );
setMoveKey( spep_0 + 1161 + OFFSET_X, 1, 48.1, -203.3 , 0 );
setMoveKey( spep_0 + 1162 + OFFSET_X, 1, 48.1, -189.6 , 0 );
setMoveKey( spep_0 + 1163 + OFFSET_X, 1, 48.1, -189.6 , 0 );
setMoveKey( spep_0 + 1164 + OFFSET_X, 1, 34.5, -205.3 , 0 );
setMoveKey( spep_0 + 1165 + OFFSET_X, 1, 34.5, -205.3 , 0 );
setMoveKey( spep_0 + 1166 + OFFSET_X, 1, 36.5, -189.7 , 0 );
setMoveKey( spep_0 + 1167 + OFFSET_X, 1, 36.5, -189.7 , 0 );
setMoveKey( spep_0 + 1168 + OFFSET_X, 1, 50.1, -205.4 , 0 );
setMoveKey( spep_0 + 1169 + OFFSET_X, 1, 50.1, -205.4 , 0 );
setMoveKey( spep_0 + 1170 + OFFSET_X, 1, 48.2, -193.8 , 0 );
setMoveKey( spep_0 + 1171 + OFFSET_X, 1, 48.2, -193.8 , 0 );
setMoveKey( spep_0 + 1172 + OFFSET_X, 1, 46.2, -201.7 , 0 );
setMoveKey( spep_0 + 1173 + OFFSET_X, 1, 46.2, -201.7 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, 42.3, -199.8 , 0 );
setMoveKey( spep_0 + 1176 + OFFSET_X, 1, 42.3, -199.8 , 0 );

setScaleKey( spep_0 + 1150 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1159 + OFFSET_X, 1, 0.43, 0.43 );
setScaleKey( spep_0 + 1160 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1161 + OFFSET_X, 1, 0.44, 0.44 );
setScaleKey( spep_0 + 1162 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1165 + OFFSET_X, 1, 0.45, 0.45 );
setScaleKey( spep_0 + 1166 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 1167 + OFFSET_X, 1, 0.47, 0.47 );
setScaleKey( spep_0 + 1168 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1169 + OFFSET_X, 1, 0.48, 0.48 );
setScaleKey( spep_0 + 1170 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1171 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 1172 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1173 + OFFSET_X, 1, 0.52, 0.52 );
setScaleKey( spep_0 + 1174 + OFFSET_X, 1, 0.55, 0.55 );
setScaleKey( spep_0 + 1176 + OFFSET_X, 1, 0.55, 0.55 );

setRotateKey( spep_0 + 1150 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 1176 + OFFSET_X, 1, -22 );

--敵の動き2
setDisp( spep_0 + 1182 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1226 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1182 + OFFSET_X, 1, 108 );

setMoveKey( spep_0 + 1182 + OFFSET_X, 1, 101.6, -143.9 , 0 );
setMoveKey( spep_0 + 1183 + OFFSET_X, 1, 101.6, -143.9 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, 109.3, -136.2 , 0 );
setMoveKey( spep_0 + 1185 + OFFSET_X, 1, 109.3, -136.2 , 0 );
setMoveKey( spep_0 + 1186 + OFFSET_X, 1, 104.6, -121.1 , 0 );
setMoveKey( spep_0 + 1187 + OFFSET_X, 1, 104.6, -121.1 , 0 );
setMoveKey( spep_0 + 1188 + OFFSET_X, 1, 110.9, -108 , 0 );
setMoveKey( spep_0 + 1189 + OFFSET_X, 1, 110.9, -108 , 0 );
setMoveKey( spep_0 + 1190 + OFFSET_X, 1, 105, -95.8 , 0 );
setMoveKey( spep_0 + 1191 + OFFSET_X, 1, 105, -95.8 , 0 );
setMoveKey( spep_0 + 1192 + OFFSET_X, 1, 110.1, -88.9 , 0 );
setMoveKey( spep_0 + 1193 + OFFSET_X, 1, 110.1, -88.9 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, 103.5, -73.6 , 0 );
setMoveKey( spep_0 + 1195 + OFFSET_X, 1, 103.5, -73.6 , 0 );
setMoveKey( spep_0 + 1196 + OFFSET_X, 1, 104.4, -67.2 , 0 );
setMoveKey( spep_0 + 1197 + OFFSET_X, 1, 104.4, -67.2 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, 103.3, -59.8 , 0 );
setMoveKey( spep_0 + 1199 + OFFSET_X, 1, 103.3, -59.8 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, 108.1, -53.3 , 0 );
setMoveKey( spep_0 + 1201 + OFFSET_X, 1, 108.1, -53.3 , 0 );
setMoveKey( spep_0 + 1202 + OFFSET_X, 1, 99.3, -47.5 , 0 );
setMoveKey( spep_0 + 1203 + OFFSET_X, 1, 99.3, -47.5 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, 104.1, -46.3 , 0 );
setMoveKey( spep_0 + 1205 + OFFSET_X, 1, 104.1, -46.3 , 0 );
setMoveKey( spep_0 + 1206 + OFFSET_X, 1, 97.4, -37.9 , 0 );
setMoveKey( spep_0 + 1207 + OFFSET_X, 1, 97.4, -37.9 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, 102.4, -37.9 , 0 );
setMoveKey( spep_0 + 1209 + OFFSET_X, 1, 102.4, -37.9 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, 97.7, -30.5 , 0 );
setMoveKey( spep_0 + 1211 + OFFSET_X, 1, 97.7, -30.5 , 0 );
setMoveKey( spep_0 + 1212 + OFFSET_X, 1, 100.9, -31.4 , 0 );
setMoveKey( spep_0 + 1213 + OFFSET_X, 1, 100.9, -31.4 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, 96.4, -24.9 , 0 );
setMoveKey( spep_0 + 1215 + OFFSET_X, 1, 96.4, -24.9 , 0 );
setMoveKey( spep_0 + 1216 + OFFSET_X, 1, 97.8, -26.6 , 0 );
setMoveKey( spep_0 + 1217 + OFFSET_X, 1, 97.8, -26.6 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, 93.4, -20.9 , 0 );
setMoveKey( spep_0 + 1219 + OFFSET_X, 1, 93.4, -20.9 , 0 );
setMoveKey( spep_0 + 1220 + OFFSET_X, 1, 98.8, -23.3 , 0 );
setMoveKey( spep_0 + 1221 + OFFSET_X, 1, 98.8, -23.3 , 0 );
setMoveKey( spep_0 + 1222 + OFFSET_X, 1, 94.6, -18.1 , 0 );
setMoveKey( spep_0 + 1223 + OFFSET_X, 1, 94.6, -18.1 , 0 );
setMoveKey( spep_0 + 1224 + OFFSET_X, 1, 97.9, -20.8 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, 97.9, -20.8 , 0 );

setScaleKey( spep_0 + 1182 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1183 + OFFSET_X, 1, 0.39, 0.39 );
setScaleKey( spep_0 + 1184 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1185 + OFFSET_X, 1, 0.36, 0.36 );
setScaleKey( spep_0 + 1186 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1187 + OFFSET_X, 1, 0.32, 0.32 );
setScaleKey( spep_0 + 1188 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1189 + OFFSET_X, 1, 0.3, 0.3 );
setScaleKey( spep_0 + 1190 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 1191 + OFFSET_X, 1, 0.27, 0.27 );
setScaleKey( spep_0 + 1192 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1193 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1194 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 1195 + OFFSET_X, 1, 0.22, 0.22 );
setScaleKey( spep_0 + 1196 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1197 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1198 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 1199 + OFFSET_X, 1, 0.18, 0.18 );
setScaleKey( spep_0 + 1200 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1201 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 1202 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1203 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1204 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1205 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 1206 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1207 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1208 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 1209 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 1210 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1213 + OFFSET_X, 1, 0.1, 0.1 );
setScaleKey( spep_0 + 1214 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 1215 + OFFSET_X, 1, 0.09, 0.09 );
setScaleKey( spep_0 + 1216 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 1219 + OFFSET_X, 1, 0.08, 0.08 );
setScaleKey( spep_0 + 1220 + OFFSET_X, 1, 0.07, 0.07 );
setScaleKey( spep_0 + 1226 + OFFSET_X, 1, 0.07, 0.07 );

setRotateKey( spep_0 + 1182 + OFFSET_X, 1, -22 );
setRotateKey( spep_0 + 1226 + OFFSET_X, 1, -22 );

-- ** 音 ** --
--地響き
SE001 = playSeVer2( spep_0 + 0, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 42 );

--オーラ
SE002 = playSeVer2( spep_0 + 0, 1176, "",spep_0 + 408, 0, 62, -1);
SE003 = playSeVer2( spep_0 + 0, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE003, 63 );
SE004 = playSeVer2( spep_0 + 18, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 18, SE004, 63 );
SE005 = playSeVer2( spep_0 + 42, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 42, SE005, 63 );
SE006 = playSeVer2( spep_0 + 66, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 66, SE006, 63 );
SE007 = playSeVer2( spep_0 + 90, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 90, SE007, 63 );
SE009 = playSeVer2( spep_0 + 114, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 114, SE009, 63 );
SE010 = playSeVer2( spep_0 + 138, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 138, SE010, 63 );
SE012 = playSeVer2( spep_0 + 162, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 162, SE012, 63 );
SE014 = playSeVer2( spep_0 + 186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 186, SE014, 63 );
SE016 = playSeVer2( spep_0 + 210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 210, SE016, 63 );
SE019 = playSeVer2( spep_0 + 234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 234, SE019, 63 );
SE020 = playSeVer2( spep_0 + 258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 258, SE020, 63 );
SE022 = playSeVer2( spep_0 + 282, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 282, SE022, 63 );
SE024 = playSeVer2( spep_0 + 306, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 306, SE024, 63 );
SE025 = playSeVer2( spep_0 + 330, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 330, SE025, 63 );
SE029 = playSeVer2( spep_0 + 354, 1176, "",spep_0 + 1142, 0, 42, -1);
setSeVolumeByWorkId( spep_0 + 354, SE029, 71 );
SE030 = playSeVer2( spep_0 + 354, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 354, SE030, 63 );
SE032 = playSeVer2( spep_0 + 378, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 378, SE032, 63 );

--電気走る
SE008 = playSeVer2( spep_0 + 102, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 102, SE008, 71 );
SE011 = playSeVer2( spep_0 + 138, 1491, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 176, 1491, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 176, SE013, 71 );

--風圧
SE015 = playSeVer2( spep_0 + 198, 1427, "",spep_0 + 292, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 198, SE015, 75 );

--光集まる
SE017 = playSeVer2( spep_0 + 224, 1179, "", 0, 0, 0, -1);
SE018 = playSeVer2( spep_0 + 248, 1274, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 248, SE018, 178 );
setStartTimeMs( SE018,  300 );
SE021 = playSeVer2( spep_0 + 284, 1274, "", 0, 14, 0, -1);
setSeVolumeByWorkId( spep_0 + 284, SE021, 130 );
setStartTimeMs( SE021,  333 );
setPitch( spep_0 + 284, SE021, -300 );
setTimeStretch( SE021, 0.8, 30, 4 );
SE023 = playSeVer2( spep_0 + 282, 8, "", 0, 0, 0, -1);

--爆発する
SE026 = playSeVer2( spep_0 + 328, 1068, "", 0, 0, 0, -1);
SE027 = playSeVer2( spep_0 + 338, 1067, "", 0, 0, 0, -1);

--地響き
SE028 = playSeVer2( spep_0 + 352, 1226, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 352, SE028, 42 );

--煙あがる
SE031 = playSeVer2( spep_0 + 364, 1219, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 364, SE031, 145 );
setPitch( spep_0 + 364, SE031, -900 );
setTimeStretch( SE031, 0.4, 30, 4 );

--セリフカットイン
SE033 = playSeVer2( spep_0 + 488, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 488, SE033, 63 );

--オーラ
SE036 = playSeVer2( spep_0 + 676, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 676, SE036, 63 );
SE038 = playSeVer2( spep_0 + 700, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 700, SE038, 63 );
SE039 = playSeVer2( spep_0 + 724, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 724, SE039, 63 );
SE040 = playSeVer2( spep_0 + 748, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 748, SE040, 63 );
SE041 = playSeVer2( spep_0 + 772, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE041, 63 );
SE042 = playSeVer2( spep_0 + 796, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE042, 63 );
SE043 = playSeVer2( spep_0 + 820, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 820, SE043, 63 );
SE044 = playSeVer2( spep_0 + 844, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 844, SE044, 63 );
SE046 = playSeVer2( spep_0 + 868, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 868, SE046, 63 );
SE047 = playSeVer2( spep_0 + 892, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 892, SE047, 63 );
SE049 = playSeVer2( spep_0 + 916, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 916, SE049, 63 );
SE051 = playSeVer2( spep_0 + 940, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 940, SE051, 63 );
SE053 = playSeVer2( spep_0 + 964, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE053, 63 );
SE057 = playSeVer2( spep_0 + 988, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 988, SE057, 79 );
SE058 = playSeVer2( spep_0 + 1012, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1012, SE058, 79 );
SE059 = playSeVer2( spep_0 + 1036, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1036, SE059, 79 );
SE060 = playSeVer2( spep_0 + 1060, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1060, SE060, 79 );
SE061 = playSeVer2( spep_0 + 1084, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1084, SE061, 79 );

--気を高める
SE034 = playSeVer2( spep_0 + 668, 1440, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE034, 170 );
SE035 = playSeVer2( spep_0 + 668, 1379, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE035, 158 );
SE037 = playSeVer2( spep_0 + 680, 1159, "",spep_0 + 866, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 680, SE037, 72 );

--気弾溜め
SE045 = playSeVer2( spep_0 + 890, 1216, "",spep_0 + 970, 6, 32, -1);
setSeVolumeByWorkId( spep_0 + 890, SE045, 85 );
setStartTimeMs( SE045,  567 );
SE048 = playSeVer2( spep_0 + 892, 1360, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 920, 1371, "",spep_0 + 992, 0, 44, -1);
setPitch( spep_0 + 920, SE050, 100 );
setTimeStretch( SE050, 1.07, 30, 4 );
SE052 = playSeVer2( spep_0 + 944, 1479, "",spep_0 + 1034, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 944, SE052, 126 );
SE054 = playSeVer2( spep_0 + 964, 1442, "",spep_0 + 1152, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 964, SE054, 266 );
SE055 = playSeVer2( spep_0 + 964, 1282, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 964, SE055, 71 );
SE056 = playSeVer2( spep_0 + 968, 1441, "",spep_0 + 1150, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 968, SE056, 107 );
setPitch( spep_0 + 968, SE056, 800 );
setTimeStretch( SE056, 1.53, 30, 4 );

--気弾発射
SE062 = playSeVer2( spep_0 + 1094, 1145, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1094, SE062, 78 );
SE063 = playSeVer2( spep_0 + 1096, 1193, "",spep_0 + 1318, 0, 114, -1);
SE064 = playSeVer2( spep_0 + 1096, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1096, SE064, 79 );

-- ** ボイス ** --
--「はあぁぁぁぁ!!!!」
playVoice( spep_0 + 0, 999 );
setVoiceVolume( spep_0 + 0, 999, 128 );

--「気が高まる… …あふれる…」
playVoice( spep_0 + 484, 1000 );
setVoiceVolume( spep_0 + 490, 1000, 128 );

--「はあぁぁぁぁ!!!!」
playVoice( spep_0 + 658, 1001 );
setVoiceVolume( spep_0 + 664, 1001, 128 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1138; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE054, 0);
stopSe( SP_dodge - 12, SE056, 0);
stopSe( SP_dodge - 12, SE062, 0);
stopSe( SP_dodge - 12, SE063, 0);
stopSe( SP_dodge - 12, SE064, 0);

pauseAll( SP_dodge, 67);

speff = entryEffectUnpausable( SP_dodge - 12, 1504, 0x100, - 1, 0, 0, - 350); -- eff_005 (カットイン)
setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え

kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, - 1, 0, 0, 350); -- 回避の文字表示

entryFade(SP_dodge + 5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
endPhase(SP_dodge + 10);

do return end
else end

-----------------------------
--回避しなかった場合
-----------------------------
-- ** 音 ** --
--気弾飛んでいく
SE065 = playSeVer2( spep_0 + 1142, 1021, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 1186, 1202, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1186, SE067, 200 );

--気弾ヒット
SE066 = playSeVer2( spep_0 + 1172, 1153, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1172, SE066, 83 );

--爆発
SE068 = playSeVer2( spep_0 + 1228, 1159, "", 0, 0, 0, -1);
SE069 = playSeVer2( spep_0 + 1238, 1067, "", 0, 0, 0, -1);


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1330 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
fadeKoLabel( 1, 0.5 );
dealDamage( spep_0 + 1228 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1334f

else end
