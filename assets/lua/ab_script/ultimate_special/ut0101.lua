-- 1031430:LR_ゴクウブラック(超サイヤ人ロゼ)+ザマス_アクティブ必殺技：神裂光弾
-- sp_effect_a2_00261
-- ut0101

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

-- 味方側
SP_01  = 163877;  --   ef_001 ブラックとザマス並ぶ〜フィニッシュ
SP_02  = 163880;  --   ef_002 KOループ

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
           setupMovie(spep_0 + 1138 -13, SP_01, spep_0 + 1138 -13, 1);

        else
           skipFrame(0, spep_0 + 1250);  -- スキップ先フレーム指定
           setupMovie(spep_0 + 1250, SP_01, spep_0 + 1250, 1);

           --気弾飛んでいく
           SE022 = playSeVer2( spep_0 + 1250, 1212, "", 0, 0, 0, -1);
           setSeVolumeByWorkId( spep_0 + 1250, SE022, 65 );
           setStartTimeMs( SE022,  2200 );
           setTimeStretch( SE022, 1.42, 30, 4 );
           SE023 = playSeVer2( spep_0 + 1250, 1193, "", 0, 0, 0, -1);
           setStartTimeMs( SE023,  2833 );

           --気弾飛んでくる
           SE025 = playSeVer2( spep_0 + 1250, 1226, "",spep_0 + 1502, 92, 200, -1);
           SE027 = playSeVer2( spep_0 + 1250, 1259, "", 0, 0, 0, -1);
           setStartTimeMs( SE027,  433 );
       end
    else 
        setupMovie(0, SP_01, 0, 1);
    end

------------------------------------------------------
-- 味方側
------------------------------------------------------

spep_0 = 0;

------------------------------------------------------
-- ブラックとザマス並ぶ〜フィニッシュ
------------------------------------------------------
MAX_FRAME_0 = 1506;

if ( _IS_DEAD_LAST_ == 1 ) then
    MAX_FRAME_0 = 1588;
end

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0); -- ブラックとザマス並ぶ〜フィニッシュ(ef_001)
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0f, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0);
setEffAlphaKey( spep_0 + 0, base_0f, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255);

KO = entryEffectLife( spep_0 + 1580, SP_02, 140, 0x100, -1, 0, 0, 0); -- KO(ef_002)
setEffMoveKey( spep_0 + 1580, KO, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0 + 140, KO, 0, 0 , 0);
setEffScaleKey( spep_0 + 1580, KO, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0 + 140, KO, 1.0, 1.0);
setEffRotateKey( spep_0 + 1580, KO, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0 + 140, KO, 0);
setEffAlphaKey( spep_0 + 1580, KO, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0 + 140, KO, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255 );

-- ** 敵キャラクター ** --
--敵の動き1
setDisp( spep_0 + 940 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1020 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 940 + OFFSET_X, 1, 117 );

setMoveKey( spep_0 + 940 + OFFSET_X, 1, 2, -304.1 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 2, -304.1 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 2, -301.1 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 2, -301.1 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 2, -300.1 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 2, -300.1 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 2, -294.1 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 2, -294.1 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 2, -274.1 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 2, -274.1 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 2, -224.1 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 2, -224.1 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 2, -122.1 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 2, -122.1 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 2, -70.1 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 2, -70.1 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 2, -44.1 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 2, -44.1 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 2, -34.1 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 2, -30.1 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 2, -30.1 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 2, -24.1 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 2, -24.1 , 0 );

setScaleKey( spep_0 + 940 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 977 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 978 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 979 + OFFSET_X, 1, 0.19, 0.19 );
setScaleKey( spep_0 + 980 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 983 + OFFSET_X, 1, 0.17, 0.17 );
setScaleKey( spep_0 + 984 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 987 + OFFSET_X, 1, 0.14, 0.14 );
setScaleKey( spep_0 + 988 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 1003 + OFFSET_X, 1, 0.11, 0.11 );
setScaleKey( spep_0 + 1004 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1005 + OFFSET_X, 1, 0.12, 0.12 );
setScaleKey( spep_0 + 1006 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1007 + OFFSET_X, 1, 0.15, 0.15 );
setScaleKey( spep_0 + 1008 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1009 + OFFSET_X, 1, 0.2, 0.2 );
setScaleKey( spep_0 + 1010 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1013 + OFFSET_X, 1, 0.24, 0.24 );
setScaleKey( spep_0 + 1014 + OFFSET_X, 1, 0.25, 0.25 );
setScaleKey( spep_0 + 1020 + OFFSET_X, 1, 0.25, 0.25 );

setRotateKey( spep_0 + 940 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1020 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 940 + OFFSET_X, 1, 3, 0.101, 0.101, 0.101, 0.4 );
setBlendColor( spep_0 + 1020 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

--敵の動き2
setDisp( spep_0 + 1170 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1250 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1170 + OFFSET_X, 1, 118 );

setMoveKey( spep_0 + 1170 + OFFSET_X, 1, 0.2, 0.6 , 0 );
setMoveKey( spep_0 + 1193 + OFFSET_X, 1, 0.2, 0.6 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1195 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1196 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1197 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1199 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, 0.5, 0.1 , 0 );
setMoveKey( spep_0 + 1201 + OFFSET_X, 1, 0.5, 0.1 , 0 );
setMoveKey( spep_0 + 1202 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1203 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1205 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1206 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1207 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1209 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1211 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1212 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1213 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1215 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1216 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1217 + OFFSET_X, 1, 1.5, 0.1 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1219 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1220 + OFFSET_X, 1, 2.5, 0.1 , 0 );
setMoveKey( spep_0 + 1221 + OFFSET_X, 1, 2.5, 0.1 , 0 );
setMoveKey( spep_0 + 1222 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1223 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1224 + OFFSET_X, 1, 2.5, 0.1 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, 2.5, 0.1 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1227 + OFFSET_X, 1, -1.5, 1.5 , 0 );
setMoveKey( spep_0 + 1228 + OFFSET_X, 1, 2.5, -10.1 , 0 );
setMoveKey( spep_0 + 1229 + OFFSET_X, 1, 2.5, -10.1 , 0 );
setMoveKey( spep_0 + 1230 + OFFSET_X, 1, 5.5, 10.1 , 0 );
setMoveKey( spep_0 + 1231 + OFFSET_X, 1, 5.5, 10.1 , 0 );
setMoveKey( spep_0 + 1232 + OFFSET_X, 1, 2.5, -10.1 , 0 );
setMoveKey( spep_0 + 1235 + OFFSET_X, 1, 2.5, -10.1 , 0 );
setMoveKey( spep_0 + 1236 + OFFSET_X, 1, 0.5, 15.1 , 0 );
setMoveKey( spep_0 + 1237 + OFFSET_X, 1, 0.5, 15.1 , 0 );
setMoveKey( spep_0 + 1238 + OFFSET_X, 1, 5.5, -20.1 , 0 );
setMoveKey( spep_0 + 1239 + OFFSET_X, 1, 5.5, -20.1 , 0 );
setMoveKey( spep_0 + 1240 + OFFSET_X, 1, 0.5, 5.1 , 0 );
setMoveKey( spep_0 + 1241 + OFFSET_X, 1, 0.5, 5.1 , 0 );
setMoveKey( spep_0 + 1242 + OFFSET_X, 1, 4.5, -20.1 , 0 );
setMoveKey( spep_0 + 1243 + OFFSET_X, 1, 4.5, -20.1 , 0 );
setMoveKey( spep_0 + 1244 + OFFSET_X, 1, 0.5, 10.66 , 0 );
setMoveKey( spep_0 + 1247 + OFFSET_X, 1, 0.5, 10.66 , 0 );
setMoveKey( spep_0 + 1248 + OFFSET_X, 1, 0.5, 0.16 , 0 );
setMoveKey( spep_0 + 1250 + OFFSET_X, 1, 0.5, 0.16 , 0 );

setScaleKey( spep_0 + 1170 + OFFSET_X, 1, 0.49, 0.49 );
setScaleKey( spep_0 + 1250 + OFFSET_X, 1, 0.49, 0.49 );

setRotateKey( spep_0 + 1170 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1250 + OFFSET_X, 1, 0 );

setBlendColor( spep_0 + 1218 + OFFSET_X, 1, 3, 0.686, 0.196, 0.686, 0.2 );
setBlendColor( spep_0 + 1222 + OFFSET_X, 1, 3, 0.686, 0.196, 0.686, 0.3 );
setBlendColor( spep_0 + 1226 + OFFSET_X, 1, 3, 0.686, 0.196, 0.686, 0.4 );
setBlendColor( spep_0 + 1230 + OFFSET_X, 1, 3, 0.686, 0.196, 0.686, 0.6 );
setBlendColor( spep_0 + 1250 + OFFSET_X, 1, 3, 0.0, 0.0, 0.0, 0.0 );

-- ** 音 ** --
--環境音
SE001 = playSeVer2( spep_0 + 0, 1269, "",spep_0 + 1046, 0, 86, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 25 );

--入り
SE002 = playSeVer2( spep_0 + 0, 44, "", 0, 0, 0, -1);

--セリフカットイン
SE003 = playSeVer2( spep_0 + 10, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 10, SE003, 63 );

--画面遷移
SE004 = playSeVer2( spep_0 + 340, 1373, "", 0, 0, 0, -1);
SE005 = playSeVer2( spep_0 + 350, 1235, "",spep_0 + 424, 0, 40, -1);
setSeVolumeByWorkId( spep_0 + 350, SE005, 59 );

--踏み出す
SE006 = playSeVer2( spep_0 + 656, 1233, "", 0, 0, 0, -1);
SE007 = playSeVer2( spep_0 + 658, 1189, "", 0, 0, 0, -1);
SE008 = playSeVer2( spep_0 + 670, 1192, "", 0, 0, 0, -1);

--構える
SE009 = playSeVer2( spep_0 + 704, 1116, "",spep_0 + 756, 0, 24, -1);
SE010 = playSeVer2( spep_0 + 704, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 704, SE010, 51 );
SE011 = playSeVer2( spep_0 + 772, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE011, 60 );
SE012 = playSeVer2( spep_0 + 792, 1189, "", 0, 0, 0, -1);
SE013 = playSeVer2( spep_0 + 796, 1006, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 796, SE013, 52 );

--気弾溜め
SE014 = playSeVer2( spep_0 + 890, 1200, "", 0, 16, 0, -1);
setStartTimeMs( SE014,  1233 );
SE015 = playSeVer2( spep_0 + 894, 1445, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 894, SE015, 136 );
SE016 = playSeVer2( spep_0 + 902, 1037, "",spep_0 + 1064, 0, 58, -1);
setSeVolumeByWorkId( spep_0 + 902, SE016, 88 );
SE017 = playSeVer2( spep_0 + 902, 1204, "",spep_0 + 1084, 0, 44, -1);

--気弾発射
SE018 = playSeVer2( spep_0 + 1034, 1145, "", 0, 0, 0, -1);
SE019 = playSeVer2( spep_0 + 1034, 1256, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE019, 122 );
SE020 = playSeVer2( spep_0 + 1034, 1179, "", 0, 0, 0, -1);
SE021 = playSeVer2( spep_0 + 1034, 1302, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1034, SE021, 79 );

--気弾飛んでいく
SE022 = playSeVer2( spep_0 + 1072, 1212, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1072, SE022, 65 );
setTimeStretch( SE022, 1.42, 30, 4 );
SE023 = playSeVer2( spep_0 + 1072, 1193, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「我が願い人間０計画を成し遂げるため」
playVoice( spep_0 + 6, 1025 );
setVoiceVolume( spep_0 + 6, 1025, 118 );

--「もっとも醜いものには重い罰を受けてもらう」
playVoice( spep_0 + 378, 1026 );
setVoiceVolume( spep_0 + 378, 1026, 118 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 1138; --エンドフェイズのフレーム数を置き換える

pauseMovie( SP_dodge + 0, 1 );   -- 一時停止
pauseMovie( SP_dodge + 5, 0 );   -- 一時停止解除
stopMovie( SP_dodge + 9 );   -- 停止

playSe( SP_dodge - 12, 1042);
stopSe( SP_dodge - 12, SE018, 0);
stopSe( SP_dodge - 12, SE019, 0);
stopSe( SP_dodge - 12, SE020, 0);
stopSe( SP_dodge - 12, SE021, 0);
stopSe( SP_dodge - 12, SE022, 0);
stopSe( SP_dodge - 12, SE023, 0);

setBlendColor( SP_dodge + 9, 1, 3, 0.0, 0.0, 0.0, 0.0 );

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
--融合する
SE024 = playSeVer2( spep_0 + 1132, 20, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 1144, 1422, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1144, SE026, 132 );
setPitch( spep_0 + 1144, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );

--気弾飛んでくる
SE025 = playSeVer2( spep_0 + 1144, 1226, "",spep_0 + 1502, 92, 200, -1);
SE027 = playSeVer2( spep_0 + 1196, 1259, "", 0, 0, 0, -1);

--爆発
SE028 = playSeVer2( spep_0 + 1310, 1159, "", 0, 0, 0, -1);
SE030 = playSeVer2( spep_0 + 1310, 1024, "", 0, 0, 0, -1);
SE033 = playSeVer2( spep_0 + 1390, 1067, "", 0, 0, 0, -1);

--地響き
SE029 = playSeVer2( spep_0 + 1294, 1226, "", 0, 0, 0, -1);

--炎
SE031 = playSeVer2( spep_0 + 1356, 1268, "", 0, 0, 0, -1);

--空気音
SE032 = playSeVer2( spep_0 + 1374, 1427, "", 0, 0, 0, -1);


if ( _IS_DEAD_LAST_ == 0 ) then
    entryFade( spep_0 + 1502 + OFFSET_X, 6, 30, 0, 0, 0, 0, 255);  -- black fade
end

-- ** おわり ** --
hideKoScreen();
fadeKoLabel( 1, 0.5 );
dealDamage( spep_0 + 1362 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 終了フレーム 1506f (KO時 1588f)

else end
