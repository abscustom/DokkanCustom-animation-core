--4029370:LR_超サイヤ人孫悟空_フィニッシュ(成功)：奇跡の拳
--sp_effect_b1_00296
--fi0015

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 163112 --うつむき〜KOまで ef_001
SP_02 = 163113 --うつむき〜KOまで ef_001_b

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0 );

changeAnime( 0, 0, 0 );
changeAnime( 0, 1, 100 );
setDisp( 0, 0, 0 );
setDisp( 0, 1, 0 );

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
    
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 750 -13 ); -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_0 + 1010 -1 ); -- スキップ先フレーム指定

           --ズームアウト
           SE032 = playSeVer2( spep_0 + 1010, 1072, "", 0, 0, 0, -1);

       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------

--はじめの準備
spep_0 = 0;

------------------------------------------------------
-- うつむき〜KOまで
------------------------------------------------------
MAX_FRAME_0 = 1710;

-- ** エフェクト等 ** --
base_f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  --うつむき〜KOまで(ef_001)
setEffMoveKey( spep_0 + 0, base_f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_f, 0 );
setEffAlphaKey( spep_0 + 0, base_f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_f, 255 );

base_b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0 );  --うつむき〜KOまで(ef_001_b)
setEffMoveKey( spep_0 + 0, base_b, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_b, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_b, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_b, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_b, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_b, 0 );
setEffAlphaKey( spep_0 + 0, base_b, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_b, 255 );

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 + 2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
--敵の動き_1
setDisp( spep_0 + 796 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 952 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 796 + OFFSET_X, 1, 10 );

setMoveKey( spep_0 + 796 + OFFSET_X, 1, -1060.4, 120.9 , 0 );
setMoveKey( spep_0 + 797 + OFFSET_X, 1, -1060.4, 120.9 , 0 );
setMoveKey( spep_0 + 798 + OFFSET_X, 1, -872.4, -21.2 , 0 );
setMoveKey( spep_0 + 799 + OFFSET_X, 1, -872.4, -21.2 , 0 );
setMoveKey( spep_0 + 800 + OFFSET_X, 1, -860.4, -28.2 , 0 );
setMoveKey( spep_0 + 801 + OFFSET_X, 1, -860.4, -28.2 , 0 );
setMoveKey( spep_0 + 802 + OFFSET_X, 1, -857.4, -30.2 , 0 );
setMoveKey( spep_0 + 803 + OFFSET_X, 1, -857.4, -30.2 , 0 );
setMoveKey( spep_0 + 804 + OFFSET_X, 1, -855.4, -32.2 , 0 );
setMoveKey( spep_0 + 809 + OFFSET_X, 1, -855.4, -32.2 , 0 );
setMoveKey( spep_0 + 810 + OFFSET_X, 1, -852.4, -35.2 , 0 );
setMoveKey( spep_0 + 813 + OFFSET_X, 1, -852.4, -35.2 , 0 );
setMoveKey( spep_0 + 814 + OFFSET_X, 1, -856.4, -32.2 , 0 );
setMoveKey( spep_0 + 819 + OFFSET_X, 1, -856.4, -32.2 , 0 );
setMoveKey( spep_0 + 820 + OFFSET_X, 1, -859.4, -29.2 , 0 );
setMoveKey( spep_0 + 823 + OFFSET_X, 1, -859.4, -29.2 , 0 );
setMoveKey( spep_0 + 824 + OFFSET_X, 1, -862.4, -27.2 , 0 );
setMoveKey( spep_0 + 829 + OFFSET_X, 1, -862.4, -27.2 , 0 );
setMoveKey( spep_0 + 830 + OFFSET_X, 1, -864.4, -25.2 , 0 );
setMoveKey( spep_0 + 833 + OFFSET_X, 1, -864.4, -25.2 , 0 );
setMoveKey( spep_0 + 834 + OFFSET_X, 1, -866.4, -23.2 , 0 );
setMoveKey( spep_0 + 839 + OFFSET_X, 1, -866.4, -23.2 , 0 );
setMoveKey( spep_0 + 840 + OFFSET_X, 1, -869.4, -21.2 , 0 );
setMoveKey( spep_0 + 843 + OFFSET_X, 1, -869.4, -21.2 , 0 );
setMoveKey( spep_0 + 844 + OFFSET_X, 1, -868.4, -22.2 , 0 );
setMoveKey( spep_0 + 849 + OFFSET_X, 1, -868.4, -22.2 , 0 );
setMoveKey( spep_0 + 850 + OFFSET_X, 1, -866.4, -25.2 , 0 );
setMoveKey( spep_0 + 853 + OFFSET_X, 1, -866.4, -25.2 , 0 );
setMoveKey( spep_0 + 854 + OFFSET_X, 1, -862.4, -27.2 , 0 );
setMoveKey( spep_0 + 859 + OFFSET_X, 1, -862.4, -27.2 , 0 );
setMoveKey( spep_0 + 860 + OFFSET_X, 1, -859.4, -30.2 , 0 );
setMoveKey( spep_0 + 863 + OFFSET_X, 1, -859.4, -30.2 , 0 );
setMoveKey( spep_0 + 864 + OFFSET_X, 1, -856.4, -32.2 , 0 );
setMoveKey( spep_0 + 869 + OFFSET_X, 1, -856.4, -32.2 , 0 );
setMoveKey( spep_0 + 870 + OFFSET_X, 1, -852.4, -37.2 , 0 );
setMoveKey( spep_0 + 873 + OFFSET_X, 1, -852.4, -37.2 , 0 );
setMoveKey( spep_0 + 874 + OFFSET_X, 1, -856.4, -34.2 , 0 );
setMoveKey( spep_0 + 877 + OFFSET_X, 1, -856.4, -34.2 , 0 );
setMoveKey( spep_0 + 878 + OFFSET_X, 1, -212, 27, 0 );
setMoveKey( spep_0 + 952 + OFFSET_X, 1, -212, 27, 0);

setScaleKey( spep_0 + 796 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 877 + OFFSET_X, 1, 9.53, 9.53 );
setScaleKey( spep_0 + 878 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 952 + OFFSET_X, 1, 1.98, 1.98 );

setRotateKey( spep_0 + 796 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 877 + OFFSET_X, 1, 5.7 );
setRotateKey( spep_0 + 878 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 952 + OFFSET_X, 1, 0 );

--敵の動き_2
setDisp( spep_0 + 958 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 970 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 962 + OFFSET_X, 1, 6 );

setMoveKey( spep_0 + 958 + OFFSET_X, 1, -212, 27, 0 );
setMoveKey( spep_0 + 961 + OFFSET_X, 1, -212, 27, 0 );
setMoveKey( spep_0 + 962 + OFFSET_X, 1, -218.1, 155.1 , 0 );
setMoveKey( spep_0 + 963 + OFFSET_X, 1, -218.1, 155.1 , 0 );
setMoveKey( spep_0 + 964 + OFFSET_X, 1, -359.4, 269 , 0 );
setMoveKey( spep_0 + 965 + OFFSET_X, 1, -359.4, 269 , 0 );
setMoveKey( spep_0 + 966 + OFFSET_X, 1, -500.7, 383 , 0 );
setMoveKey( spep_0 + 967 + OFFSET_X, 1, -500.7, 383 , 0 );
setMoveKey( spep_0 + 968 + OFFSET_X, 1, -642, 496.9 , 0 );
setMoveKey( spep_0 + 970 + OFFSET_X, 1, -642, 496.9 , 0 );

setScaleKey( spep_0 + 958 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 961 + OFFSET_X, 1, 1.98, 1.98 );
setScaleKey( spep_0 + 962 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 963 + OFFSET_X, 1, 1.74, 1.74 );
setScaleKey( spep_0 + 964 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 965 + OFFSET_X, 1, 1.83, 1.83 );
setScaleKey( spep_0 + 966 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 967 + OFFSET_X, 1, 1.91, 1.91 );
setScaleKey( spep_0 + 968 + OFFSET_X, 1, 1.99, 1.99 );
setScaleKey( spep_0 + 970 + OFFSET_X, 1, 1.99, 1.99 );

setRotateKey( spep_0 + 958 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 961 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 962 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 963 + OFFSET_X, 1, 33.2 );
setRotateKey( spep_0 + 964 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 965 + OFFSET_X, 1, 29.1 );
setRotateKey( spep_0 + 966 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_0 + 967 + OFFSET_X, 1, 25.1 );
setRotateKey( spep_0 + 968 + OFFSET_X, 1, 21 );
setRotateKey( spep_0 + 970 + OFFSET_X, 1, 21 );

setBlendColor( spep_0 + 958 + OFFSET_X, 1, 3, 0, 0, 0, 1);
setBlendColor( spep_0 + 962 + OFFSET_X, 1, 3, 0, 0, 0, 0);

--敵の動き_3
setDisp( spep_0 + 1164 + OFFSET_X, 1, 1 );
setDisp( spep_0 + 1332 + OFFSET_X, 1, 0 );

changeAnime( spep_0 + 1164 + OFFSET_X, 1, 107 );
changeAnime( spep_0 + 1210 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 1232 + OFFSET_X, 1, 105 );
changeAnime( spep_0 + 1266 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 1268 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 1270 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 1272 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 1274 + OFFSET_X, 1, 106 );
changeAnime( spep_0 + 1276 + OFFSET_X, 1, 5 );
changeAnime( spep_0 + 1282 + OFFSET_X, 1, 106 );

setMoveKey( spep_0 + 1164 + OFFSET_X, 1, -519.3, 166.6 , 0 );
setMoveKey( spep_0 + 1167 + OFFSET_X, 1, -519.3, 166.6 , 0 );
setMoveKey( spep_0 + 1168 + OFFSET_X, 1, -518.3, 167.6 , 0 );
setMoveKey( spep_0 + 1193 + OFFSET_X, 1, -518.3, 167.6 , 0 );
setMoveKey( spep_0 + 1194 + OFFSET_X, 1, -519.3, 167.6 , 0 );
setMoveKey( spep_0 + 1197 + OFFSET_X, 1, -519.3, 167.6 , 0 );
setMoveKey( spep_0 + 1198 + OFFSET_X, 1, -519.3, 166.6 , 0 );
setMoveKey( spep_0 + 1199 + OFFSET_X, 1, -519.3, 166.6 , 0 );
setMoveKey( spep_0 + 1200 + OFFSET_X, 1, -519.3, 191.6 , 0 );
setMoveKey( spep_0 + 1203 + OFFSET_X, 1, -519.3, 191.6 , 0 );
setMoveKey( spep_0 + 1204 + OFFSET_X, 1, -509.3, 251.6 , 0 );
setMoveKey( spep_0 + 1207 + OFFSET_X, 1, -509.3, 251.6 , 0 );
setMoveKey( spep_0 + 1208 + OFFSET_X, 1, -509.3, 231.6 , 0 );
setMoveKey( spep_0 + 1209 + OFFSET_X, 1, -509.3, 231.6 , 0 );
setMoveKey( spep_0 + 1210 + OFFSET_X, 1, -123.8, 56.5 , 0 );
setMoveKey( spep_0 + 1213 + OFFSET_X, 1, -123.8, 56.5 , 0 );
setMoveKey( spep_0 + 1214 + OFFSET_X, 1, -113.8, 75.5 , 0 );
setMoveKey( spep_0 + 1217 + OFFSET_X, 1, -113.8, 75.5 , 0 );
setMoveKey( spep_0 + 1218 + OFFSET_X, 1, -94, 106.3 , 0 );
setMoveKey( spep_0 + 1221 + OFFSET_X, 1, -94, 106.3 , 0 );
setMoveKey( spep_0 + 1222 + OFFSET_X, 1, -93.9, 118.3 , 0 );
setMoveKey( spep_0 + 1225 + OFFSET_X, 1, -93.9, 118.3 , 0 );
setMoveKey( spep_0 + 1226 + OFFSET_X, 1, -73.9, 138.2 , 0 );
setMoveKey( spep_0 + 1231 + OFFSET_X, 1, -73.9, 138.2 , 0 );
setMoveKey( spep_0 + 1232 + OFFSET_X, 1, -134, 66.1 , 0 );
setMoveKey( spep_0 + 1237 + OFFSET_X, 1, -134, 66.1 , 0 );
setMoveKey( spep_0 + 1238 + OFFSET_X, 1, -127.9, 88.6 , 0 );
setMoveKey( spep_0 + 1241 + OFFSET_X, 1, -127.9, 88.6 , 0 );
setMoveKey( spep_0 + 1242 + OFFSET_X, 1, -123.7, 103.7 , 0 );
setMoveKey( spep_0 + 1247 + OFFSET_X, 1, -123.7, 103.7 , 0 );
setMoveKey( spep_0 + 1248 + OFFSET_X, 1, -117.7, 126.2 , 0 );
setMoveKey( spep_0 + 1251 + OFFSET_X, 1, -117.7, 126.2 , 0 );
setMoveKey( spep_0 + 1252 + OFFSET_X, 1, -113.7, 141.1 , 0 );
setMoveKey( spep_0 + 1257 + OFFSET_X, 1, -113.7, 141.1 , 0 );
setMoveKey( spep_0 + 1258 + OFFSET_X, 1, -107.6, 163.4 , 0 );
setMoveKey( spep_0 + 1261 + OFFSET_X, 1, -107.6, 163.4 , 0 );
setMoveKey( spep_0 + 1262 + OFFSET_X, 1, -102.9, 177 , 0 );
setMoveKey( spep_0 + 1265 + OFFSET_X, 1, -102.9, 177 , 0 );
setMoveKey( spep_0 + 1266 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1267 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1268 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1269 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1270 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1271 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1272 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1273 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1274 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1275 + OFFSET_X, 1, 8, 128 , 0 );
setMoveKey( spep_0 + 1276 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1281 + OFFSET_X, 1, -3, 107 , 0 );
setMoveKey( spep_0 + 1282 + OFFSET_X, 1, 7.9, 127.9 , 0 );
setMoveKey( spep_0 + 1287 + OFFSET_X, 1, 7.9, 127.9 , 0 );
setMoveKey( spep_0 + 1288 + OFFSET_X, 1, 8.1, 128.1 , 0 );
setMoveKey( spep_0 + 1291 + OFFSET_X, 1, 8.1, 128.1 , 0 );
setMoveKey( spep_0 + 1292 + OFFSET_X, 1, 8, 128.3 , 0 );
setMoveKey( spep_0 + 1297 + OFFSET_X, 1, 8, 128.3 , 0 );
setMoveKey( spep_0 + 1298 + OFFSET_X, 1, 8.1, 128.4 , 0 );
setMoveKey( spep_0 + 1303 + OFFSET_X, 1, 8.1, 128.4 , 0 );
setMoveKey( spep_0 + 1304 + OFFSET_X, 1, 8.1, 128.5 , 0 );
setMoveKey( spep_0 + 1307 + OFFSET_X, 1, 8.1, 128.5 , 0 );
setMoveKey( spep_0 + 1308 + OFFSET_X, 1, 8.2, 128.6 , 0 );
setMoveKey( spep_0 + 1313 + OFFSET_X, 1, 8.2, 128.6 , 0 );
setMoveKey( spep_0 + 1314 + OFFSET_X, 1, 7.8, 128.1 , 0 );
setMoveKey( spep_0 + 1332 + OFFSET_X, 1, 7.8, 128.1 , 0 );

setScaleKey( spep_0 + 1164 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 1217 + OFFSET_X, 1, 5.8, 5.8 );
setScaleKey( spep_0 + 1218 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 1237 + OFFSET_X, 1, 3.48, 3.48 );
setScaleKey( spep_0 + 1238 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 1241 + OFFSET_X, 1, 3.32, 3.32 );
setScaleKey( spep_0 + 1242 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 1247 + OFFSET_X, 1, 3.21, 3.21 );
setScaleKey( spep_0 + 1248 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 1251 + OFFSET_X, 1, 3.05, 3.05 );
setScaleKey( spep_0 + 1252 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 1257 + OFFSET_X, 1, 2.95, 2.95 );
setScaleKey( spep_0 + 1258 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 1261 + OFFSET_X, 1, 2.79, 2.79 );
setScaleKey( spep_0 + 1262 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 1265 + OFFSET_X, 1, 2.68, 2.68 );
setScaleKey( spep_0 + 1266 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1267 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1268 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1269 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1270 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1271 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1272 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1273 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1274 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1275 + OFFSET_X, 1, 1.42, 1.42 );
setScaleKey( spep_0 + 1276 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1279 + OFFSET_X, 1, 1.63, 1.63 );
setScaleKey( spep_0 + 1280 + OFFSET_X, 1, 1.87, 1.66 );
setScaleKey( spep_0 + 1281 + OFFSET_X, 1, 1.87, 1.66 );
setScaleKey( spep_0 + 1282 + OFFSET_X, 1, 1.44, 1.61 );
setScaleKey( spep_0 + 1287 + OFFSET_X, 1, 1.44, 1.61 );
setScaleKey( spep_0 + 1288 + OFFSET_X, 1, 1.46, 1.66 );
setScaleKey( spep_0 + 1291 + OFFSET_X, 1, 1.46, 1.66 );
setScaleKey( spep_0 + 1292 + OFFSET_X, 1, 1.47, 1.7 );
setScaleKey( spep_0 + 1297 + OFFSET_X, 1, 1.47, 1.7 );
setScaleKey( spep_0 + 1298 + OFFSET_X, 1, 1.49, 1.76 );
setScaleKey( spep_0 + 1303 + OFFSET_X, 1, 1.49, 1.76 );
setScaleKey( spep_0 + 1304 + OFFSET_X, 1, 1.51, 1.81 );
setScaleKey( spep_0 + 1307 + OFFSET_X, 1, 1.51, 1.81 );
setScaleKey( spep_0 + 1308 + OFFSET_X, 1, 1.53, 1.85 );
setScaleKey( spep_0 + 1313 + OFFSET_X, 1, 1.53, 1.85 );
setScaleKey( spep_0 + 1314 + OFFSET_X, 1, 1.55, 1.9 );
setScaleKey( spep_0 + 1332 + OFFSET_X, 1, 1.55, 1.9 );

setRotateKey( spep_0 + 1164 + OFFSET_X, 1, -113 );
setRotateKey( spep_0 + 1209 + OFFSET_X, 1, -113 );
setRotateKey( spep_0 + 1210 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 1221 + OFFSET_X, 1, -57 );
setRotateKey( spep_0 + 1222 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 1225 + OFFSET_X, 1, -50.1 );
setRotateKey( spep_0 + 1226 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 1231 + OFFSET_X, 1, -40.3 );
setRotateKey( spep_0 + 1232 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 1237 + OFFSET_X, 1, 0.9 );
setRotateKey( spep_0 + 1238 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 1241 + OFFSET_X, 1, 3.4 );
setRotateKey( spep_0 + 1242 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 1247 + OFFSET_X, 1, 5 );
setRotateKey( spep_0 + 1248 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 1251 + OFFSET_X, 1, 7.5 );
setRotateKey( spep_0 + 1252 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 1257 + OFFSET_X, 1, 9.2 );
setRotateKey( spep_0 + 1258 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1261 + OFFSET_X, 1, 11.6 );
setRotateKey( spep_0 + 1262 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 1265 + OFFSET_X, 1, 13.3 );
setRotateKey( spep_0 + 1266 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1267 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1268 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1269 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1270 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1271 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1272 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1273 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1274 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1275 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1276 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1281 + OFFSET_X, 1, 52.2 );
setRotateKey( spep_0 + 1282 + OFFSET_X, 1, -17.2 );
setRotateKey( spep_0 + 1332 + OFFSET_X, 1, -17.2 );

-- ** 音 ** --
--セリフカットイン
SE001 = playSeVer2( spep_0 + 0, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 63 );

--エネルギー送る
SE002 = playSeVer2( spep_0 + 84, 1266, "",spep_0 + 302, 16, 32, -1);
setSeVolumeByWorkId( spep_0 + 84, SE002, 45 );
setStartTimeMs( SE002,  1300 );
SE003 = playSeVer2( spep_0 + 38, 1249, "",spep_0 + 246, 36, 30, -1);
setSeVolumeByWorkId( spep_0 + 38, SE003, 126 );
setPitch( spep_0 + 38, SE003, -400 );
setTimeStretch( SE003, 0.77, 30, 4 );

--画面遷移
SE004 = playSeVer2( spep_0 + 44, 1116, "",spep_0 + 96, 0, 28, -1);
setSeVolumeByWorkId( spep_0 + 44, SE004, 50 );
SE005 = playSeVer2( spep_0 + 112, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 112, SE005, 60 );
SE006 = playSeVer2( spep_0 + 174, 4, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 174, SE006, 74 );
SE007 = playSeVer2( spep_0 + 174, 1048, "", 0, 0, 0, -1);

--環境音
SE008 = playSeVer2( spep_0 + 218, 1269, "",spep_0 + 986, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 218, SE008, 25 );

--画面遷移
SE009 = playSeVer2( spep_0 + 218, 8, "", 0, 0, 0, -1);

--叫ぶ
SE010 = playSeVer2( spep_0 + 244, 40, "",spep_0 + 356, 0, 88, -1);
SE011 = playSeVer2( spep_0 + 244, 1179, "",spep_0 + 362, 0, 84, -1);
SE012 = playSeVer2( spep_0 + 244, 1003, "", 0, 0, 0, -1);

--ベジータ気を高める
SE015 = playSeVer2( spep_0 + 594, 1036, "", 0, 0, 0, -1);
SE016 = playSeVer2( spep_0 + 598, 1179, "",spep_0 + 664, 0, 44, -1);
setSeVolumeByWorkId( spep_0 + 598, SE016, 129 );
SE014 = playSeVer2( spep_0 + 600, 1035, "", 0, 8, 0, -1);
setStartTimeMs( SE014,  533 );
setPitch( spep_0 + 600, SE014, -200 );
setTimeStretch( SE014, 0.87, 30, 4 );

--ベジータエネルギー送る
SE013 = playSeVer2( spep_0 + 612, 1266, "",spep_0 + 696, 6, 32, -1);
setStartTimeMs( SE013,  1333 );
SE017 = playSeVer2( spep_0 + 612, 1249, "",spep_0 + 690, 6, 30, -1);
setPitch( spep_0 + 612, SE017, -400 );
setTimeStretch( SE017, 0.77, 30, 4 );

--画面遷移
SE018 = playSeVer2( spep_0 + 674, 8, "", 0, 0, 0, -1);

--力む
SE019 = playSeVer2( spep_0 + 710, 1344, "",spep_0 + 788, 0, 34, -1);

--顔こわばる
SE020 = playSeVer2( spep_0 + 736, 1189, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 736, SE020, 178 );
SE021 = playSeVer2( spep_0 + 738, 1179, "",spep_0 + 814, 0, 46, -1);

-- ** ボイス ** --
--「こいつを倒せるパワーをくれ！」
playVoice( spep_0 + 0, 820 );
setVoiceVolume( spep_0 + 0, 820, 110 );
--「サイヤ人の王子はこのオレだ！」
playVoice( spep_0 + 380, 822 );
setVoiceVolume( spep_0 + 380, 822, 110 );

--------------------------------------
--回避
--------------------------------------

if(_IS_DODGE_ == 1) then

  SP_dodge = spep_0 + 750 ; --エンドフェイズのフレーム数を置き換える
  
  playSe( SP_dodge - 12, 1042);
  stopSe( SP_dodge - 12, SE008, 0);
  stopSe( SP_dodge - 12, SE018, 0);
  stopSe( SP_dodge - 12, SE019, 0);
  stopSe( SP_dodge - 12, SE020, 0);
  stopSe( SP_dodge - 10, SE021, 0);

  pauseAll( SP_dodge, 67);
  
  speff = entryEffectUnpausable( SP_dodge-12, 1504, 0x100, -1, 0, 0, -350); -- eff_005 (カットイン)
  setEffReplaceTexture( speff, 3, 6); -- カットイン差し替え
  
  kaihi = entryEffectUnpausable( SP_dodge, 1575, 0x100, -1, 0, 0, 350); -- 回避の文字表示
  
  setBlendColor( SP_dodge + 8, 1, 3, 0, 0, 0, 0);

  entryFade(SP_dodge+5, 4, 7, 4, fcolor_r, fcolor_g, fcolor_b, 255); -- white fade
  endPhase(SP_dodge+10);
  
do return end
else end
--------------------------------------
--回避しなかった場合
--------------------------------------

-- ** 音 ** --
--パンチ受け止める
SE022 = playSeVer2( spep_0 + 776, 1003, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 784, 1153, "", 0, 0, 0, -1);
SE024 = playSeVer2( spep_0 + 784, 1414, "", 0, 0, 0, -1);
SE026 = playSeVer2( spep_0 + 788, 1192, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 788, SE026, 380 );

--空気音
SE025 = playSeVer2( spep_0 + 784, 1278, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 784, SE025, 38 );

--気が爆発する
SE027 = playSeVer2( spep_0 + 932, 1258, "", 0, 0, 0, -1);
SE028 = playSeVer2( spep_0 + 938, 1035, "", 0, 0, 0, -1);
SE029 = playSeVer2( spep_0 + 938, 1137, "", 0, 0, 0, -1);

--オーラ
SE030 = playSeVer2( spep_0 + 958, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 958, SE030, 71 );
SE031 = playSeVer2( spep_0 + 982, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 982, SE031, 71 );
SE033 = playSeVer2( spep_0 + 1006, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1006, SE033, 71 );
SE035 = playSeVer2( spep_0 + 1030, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1030, SE035, 71 );
SE036 = playSeVer2( spep_0 + 1054, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1054, SE036, 71 );
SE039 = playSeVer2( spep_0 + 1078, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE039, 71 );
SE041 = playSeVer2( spep_0 + 1102, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1102, SE041, 71 );
SE043 = playSeVer2( spep_0 + 1126, 1036, "", 0, 0, 0, -1);
SE050 = playSeVer2( spep_0 + 1186, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1186, SE050, 63 );
SE052 = playSeVer2( spep_0 + 1210, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1210, SE052, 63 );
SE053 = playSeVer2( spep_0 + 1234, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1234, SE053, 63 );
SE057 = playSeVer2( spep_0 + 1258, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1258, SE057, 63 );

--ズームアウト
SE032 = playSeVer2( spep_0 + 992, 1072, "", 0, 0, 0, -1);

--向かってくる
SE034 = playSeVer2( spep_0 + 1010, 1241, "", 0, 0, 0, -1);
SE037 = playSeVer2( spep_0 + 1072, 1182, "", 0, 0, 0, -1);
SE038 = playSeVer2( spep_0 + 1072, 1117, "", 0, 0, 0, -1);
SE040 = playSeVer2( spep_0 + 1078, 1167, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1078, SE040, 69 );
setTimeStretch( SE040, 1.11, 30, 4 );

--振りかぶる
SE042 = playSeVer2( spep_0 + 1122, 1116, "",spep_0 + 1168, 0, 20, -1);
SE044 = playSeVer2( spep_0 + 1136, 1004, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1126, SE043, 71 );

--パンチ
SE045 = playSeVer2( spep_0 + 1158, 1049, "", 0, 0, 0, -1);
SE046 = playSeVer2( spep_0 + 1158, 1187, "", 0, 0, 0, -1);
SE047 = playSeVer2( spep_0 + 1166, 1060, "", 0, 0, 0, -1);
SE048 = playSeVer2( spep_0 + 1172, 1153, "", 0, 0, 0, -1);
SE049 = playSeVer2( spep_0 + 1176, 1190, "", 0, 0, 0, -1);
SE051 = playSeVer2( spep_0 + 1194, 1024, "", 0, 0, 0, -1);

--光溢れる
SE054 = playSeVer2( spep_0 + 1248, 1124, "",spep_0 + 1342, 14, 20, -1);
setSeVolumeByWorkId( spep_0 + 1248, SE054, 91 );
setPitch( spep_0 + 1248, SE054, 200 );
setTimeStretch( SE054, 1.13, 30, 4 );
SE055 = playSeVer2( spep_0 + 1248, 1184, "",spep_0 + 1340, 32, 18, -1);
setSeVolumeByWorkId( spep_0 + 1248, SE055, 76 );
SE056 = playSeVer2( spep_0 + 1258, 1157, "",spep_0 + 1356, 0, 32, -1);

--悟空フレームイン
SE058 = playSeVer2( spep_0 + 1272, 1207, "",spep_0 + 1342, 24, 28, -1);
setStartTimeMs( SE058,  33 );

--爆発
SE059 = playSeVer2( spep_0 + 1320, 1159, "", 0, 0, 0, -1);
SE060 = playSeVer2( spep_0 + 1328, 1067, "", 0, 0, 0, -1);
SE061 = playSeVer2( spep_0 + 1348, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1348, SE061, 75 );

--悟空落ちていく
SE062 = playSeVer2( spep_0 + 1362, 1378, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1362, SE062, 106 );
SE063 = playSeVer2( spep_0 + 1362, 1227, "",spep_0 + 1740, 0, 34, -1);
SE064 = playSeVer2( spep_0 + 1410, 1168, "", 0, 64, 0, -1);
setSeVolumeByWorkId( spep_0 + 1410, SE064, 72 );

--連続爆発
SE065 = playSeVer2( spep_0 + 1476, 1033, "", 0, 0, 0, -1);
SE066 = playSeVer2( spep_0 + 1512, 1014, "", 0, 0, 0, -1);
SE067 = playSeVer2( spep_0 + 1554, 1188, "", 0, 0, 0, -1);
SE068 = playSeVer2( spep_0 + 1592, 1068, "", 0, 0, 0, -1);

-- ** ボイス ** --
--「オラたちのパワーが勝ったぁー！」
playVoice( spep_0 + 1440, 821 );
setVoiceVolume( spep_0 + 1440, 821, 110 );

-- ** ダメージ表示 ** --
hideKoScreen();
dealDamage( spep_0 + 1330 );
endPhase( spep_0 + MAX_FRAME_0 ); -- 1710f

end