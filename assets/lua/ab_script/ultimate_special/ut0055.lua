--1026820：LR_孫悟空_スーパー元気玉(アクティブ)
--sp_effect_a2_00216
--ut0055

fcolor_r = 245;
fcolor_g = 245;
fcolor_b = 245;

--エフェクト(味方)
SP_01 = 161970; --手前側 ef_001
SP_02 = 161971; --背面側 ef_002

------------------------------------------------------
-- テンプレ構文
------------------------------------------------------

setVisibleUI( 0, 0);

ENABLE_AUTO_TIME_STRETCH(0.8);


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

if (_IS_PLAYER_SIDE_ == 1) then
    if (_IS_SKIP_ == 1) then
        spep_0 = 0;
        spep_1 = spep_0 + 1190;

       if(_IS_DODGE_ == 1) then
           skipFrame(0, spep_0 + 563 - 1 -13);   -- スキップかつ回避された時のスキップ先フレーム指定
       else
           skipFrame(0, spep_1 + 1);  -- スキップ先フレーム指定
       end
    else end
------------------------------------------------------------------------------------------------------------
-- 味方側
------------------------------------------------------------------------------------------------------------
------------------------------------------------------
-- スーパー元気玉(1370F)
------------------------------------------------------

spep_0 = 0;
MAX_FRAME_0 = 1370;

-- ** エフェクト等 ** --
base_0f = entryEffect( spep_0 + 0, SP_01, 0x100, -1, 0, 0, 0 );  -- ef_001 手前側　反転無し
setEffMoveKey( spep_0 + 0, base_0f, 0, 0 , 0 );
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0f, 0, 0 , 0 );
setEffScaleKey( spep_0 + 0, base_0f, 1.0, 1.0 );
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0f, 1.0, 1.0 );
setEffRotateKey( spep_0 + 0, base_0f, 0 );
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0f, 0 );
setEffAlphaKey( spep_0 + 0, base_0f, 255 );
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0f, 255 );

base_0b = entryEffect( spep_0 + 0, SP_02, 0x80, -1, 0, 0, 0); -- ef_002	背面側　反転無し
setEffMoveKey( spep_0 + 0, base_0b, 0, 0 , 0);
setEffMoveKey( spep_0 + MAX_FRAME_0, base_0b, 0, 0 , 0);
setEffScaleKey( spep_0 + 0, base_0b, 1.0, 1.0);
setEffScaleKey( spep_0 + MAX_FRAME_0, base_0b, 1.0, 1.0);
setEffRotateKey( spep_0 + 0, base_0b, 0);
setEffRotateKey( spep_0 + MAX_FRAME_0, base_0b, 0);
setEffAlphaKey( spep_0 + 0, base_0b, 255);
setEffAlphaKey( spep_0 + MAX_FRAME_0, base_0b, 255);

-- ** 黒背景 ** --
entryFadeBg( spep_0 + 0, 0, MAX_FRAME_0 +2, 0, 0, 0, 0, 255);  --黒 背景

-- ** 敵キャラクター ** --
OFFSET_X = -1

setDisp(spep_0 + 550 + OFFSET_X,1,1)
setDisp(spep_0 + 1190 + OFFSET_X,1,0)

changeAnime( spep_0 + 550 + OFFSET_X, 1, 100 );
changeAnime( spep_0 + 708 + OFFSET_X, 1, 104 );
changeAnime( spep_0 + 735 + OFFSET_X, 1, 108 );
changeAnime( spep_0 + 1152 + OFFSET_X, 1, 106 );

-- ** 敵キャラクター ** --
setMoveKey( spep_0 + 550 + OFFSET_X, 1, 83.4, -227.5 , 0 );
setMoveKey( spep_0 + 551 + OFFSET_X, 1, 83.4, -227.5 , 0 );
setMoveKey( spep_0 + 552 + OFFSET_X, 1, 83.4, -219.9 , 0 );
setMoveKey( spep_0 + 553 + OFFSET_X, 1, 83.4, -219.9 , 0 );
setMoveKey( spep_0 + 554 + OFFSET_X, 1, 83.4, -212.2 , 0 );
setMoveKey( spep_0 + 555 + OFFSET_X, 1, 83.4, -212.2 , 0 );
setMoveKey( spep_0 + 556 + OFFSET_X, 1, 83.4, -204.6 , 0 );
setMoveKey( spep_0 + 557 + OFFSET_X, 1, 83.4, -204.6 , 0 );
setMoveKey( spep_0 + 558 + OFFSET_X, 1, 83.4, -196.9 , 0 );
setMoveKey( spep_0 + 559 + OFFSET_X, 1, 83.4, -196.9 , 0 );
setMoveKey( spep_0 + 560 + OFFSET_X, 1, 83.4, -189.3 , 0 );
setMoveKey( spep_0 + 707 + OFFSET_X, 1, 83.4, -189.3 , 0 );
setMoveKey( spep_0 + 708 + OFFSET_X, 1, 156.7, 312.2 , 0 );
setMoveKey( spep_0 + 712 + OFFSET_X, 1, 156.7, 312.2 , 0 );
setMoveKey( spep_0 + 713 + OFFSET_X, 1, 156.7, 312.2 , 0 );
setMoveKey( spep_0 + 714 + OFFSET_X, 1, 148.3, 282.8 , 0 );
setMoveKey( spep_0 + 715 + OFFSET_X, 1, 148.3, 282.8 , 0 );
setMoveKey( spep_0 + 716 + OFFSET_X, 1, 139.9, 253.4 , 0 );
setMoveKey( spep_0 + 717 + OFFSET_X, 1, 139.9, 253.4 , 0 );
setMoveKey( spep_0 + 718 + OFFSET_X, 1, 131.5, 224 , 0 );
setMoveKey( spep_0 + 719 + OFFSET_X, 1, 131.5, 224 , 0 );
setMoveKey( spep_0 + 720 + OFFSET_X, 1, 123.1, 194.5 , 0 );
setMoveKey( spep_0 + 721 + OFFSET_X, 1, 123.1, 194.5 , 0 );
setMoveKey( spep_0 + 722 + OFFSET_X, 1, 114.7, 165.1 , 0 );
setMoveKey( spep_0 + 723 + OFFSET_X, 1, 114.7, 165.1 , 0 );
setMoveKey( spep_0 + 724 + OFFSET_X, 1, 106.3, 135.7 , 0 );
setMoveKey( spep_0 + 725 + OFFSET_X, 1, 106.3, 135.7 , 0 );
setMoveKey( spep_0 + 726 + OFFSET_X, 1, 97.9, 106.3 , 0 );
setMoveKey( spep_0 + 727 + OFFSET_X, 1, 97.9, 106.3 , 0 );
setMoveKey( spep_0 + 728 + OFFSET_X, 1, 89.6, 76.8 , 0 );
setMoveKey( spep_0 + 729 + OFFSET_X, 1, 89.6, 76.8 , 0 );
setMoveKey( spep_0 + 730 + OFFSET_X, 1, 71.3, 42.9 , 0 );
setMoveKey( spep_0 + 735 + OFFSET_X, 1, 71.3, 42.9 , 0 );
setMoveKey( spep_0 + 736 + OFFSET_X, 1, 71.2, 42.8 , 0 );
setMoveKey( spep_0 + 737 + OFFSET_X, 1, 71.2, 42.8 , 0 );
setMoveKey( spep_0 + 738 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 739 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 740 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 745 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 746 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 747 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 748 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 753 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 754 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 755 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 756 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 761 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 762 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 763 + OFFSET_X, 1, 68.1, 52.1 , 0 );
setMoveKey( spep_0 + 764 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 765 + OFFSET_X, 1, 74.3, 36.6 , 0 );
setMoveKey( spep_0 + 766 + OFFSET_X, 1, 74.3, 49 , 0 );
setMoveKey( spep_0 + 991 + OFFSET_X, 1, 74.3, 49 , 0 );
setMoveKey( spep_0 + 992 + OFFSET_X, 1, 23, -24.2 , 0 );
setMoveKey( spep_0 + 993 + OFFSET_X, 1, 23, -24.2 , 0 );
setMoveKey( spep_0 + 994 + OFFSET_X, 1, 15.3, -8.7 , 0 );
setMoveKey( spep_0 + 995 + OFFSET_X, 1, 15.3, -8.7 , 0 );
setMoveKey( spep_0 + 996 + OFFSET_X, 1, 30.8, -34.9 , 0 );
setMoveKey( spep_0 + 997 + OFFSET_X, 1, 30.8, -34.9 , 0 );
setMoveKey( spep_0 + 998 + OFFSET_X, 1, 31.3, -2.3 , 0 );
setMoveKey( spep_0 + 999 + OFFSET_X, 1, 31.3, -2.3 , 0 );
setMoveKey( spep_0 + 1000 + OFFSET_X, 1, 14.7, -43.8 , 0 );
setMoveKey( spep_0 + 1001 + OFFSET_X, 1, 14.7, -43.8 , 0 );
setMoveKey( spep_0 + 1002 + OFFSET_X, 1, 24.9, -15.9 , 0 );
setMoveKey( spep_0 + 1003 + OFFSET_X, 1, 24.9, -15.9 , 0 );
setMoveKey( spep_0 + 1004 + OFFSET_X, 1, 21.2, -20.5 , 0 );
setMoveKey( spep_0 + 1005 + OFFSET_X, 1, 21.2, -20.5 , 0 );
setMoveKey( spep_0 + 1006 + OFFSET_X, 1, 33.7, -14.3 , 0 );
setMoveKey( spep_0 + 1007 + OFFSET_X, 1, 33.7, -14.3 , 0 );
setMoveKey( spep_0 + 1008 + OFFSET_X, 1, 19.5, -31.8 , 0 );
setMoveKey( spep_0 + 1009 + OFFSET_X, 1, 19.5, -31.8 , 0 );
setMoveKey( spep_0 + 1010 + OFFSET_X, 1, 17.7, -23.1 , 0 );
setMoveKey( spep_0 + 1011 + OFFSET_X, 1, 17.7, -23.1 , 0 );
setMoveKey( spep_0 + 1012 + OFFSET_X, 1, 30.8, -27.7 , 0 );
setMoveKey( spep_0 + 1013 + OFFSET_X, 1, 30.8, -27.7 , 0 );
setMoveKey( spep_0 + 1014 + OFFSET_X, 1, 24.1, 0.2 , 0 );
setMoveKey( spep_0 + 1015 + OFFSET_X, 1, 24.1, 0.2 , 0 );
setMoveKey( spep_0 + 1016 + OFFSET_X, 1, 21.9, -43.8 , 0 );
setMoveKey( spep_0 + 1017 + OFFSET_X, 1, 21.9, -43.8 , 0 );
setMoveKey( spep_0 + 1018 + OFFSET_X, 1, 22.5, -11.1 , 0 );
setMoveKey( spep_0 + 1019 + OFFSET_X, 1, 22.5, -11.1 , 0 );
setMoveKey( spep_0 + 1020 + OFFSET_X, 1, 23.6, -34.9 , 0 );
setMoveKey( spep_0 + 1021 + OFFSET_X, 1, 23.6, -34.9 , 0 );
setMoveKey( spep_0 + 1022 + OFFSET_X, 1, 33.7, -7.1 , 0 );
setMoveKey( spep_0 + 1023 + OFFSET_X, 1, 33.7, -7.1 , 0 );
setMoveKey( spep_0 + 1024 + OFFSET_X, 1, 12.3, -29.4 , 0 );
setMoveKey( spep_0 + 1025 + OFFSET_X, 1, 12.3, -29.4 , 0 );
setMoveKey( spep_0 + 1026 + OFFSET_X, 1, 24.9, -23.1 , 0 );
setMoveKey( spep_0 + 1027 + OFFSET_X, 1, 24.9, -23.1 , 0 );
setMoveKey( spep_0 + 1028 + OFFSET_X, 1, 28.4, -22.9 , 0 );
setMoveKey( spep_0 + 1029 + OFFSET_X, 1, 28.4, -22.9 , 0 );
setMoveKey( spep_0 + 1030 + OFFSET_X, 1, 26.5, -14.3 , 0 );
setMoveKey( spep_0 + 1031 + OFFSET_X, 1, 26.5, -14.3 , 0 );
setMoveKey( spep_0 + 1032 + OFFSET_X, 1, 21.9, -36.6 , 0 );
setMoveKey( spep_0 + 1033 + OFFSET_X, 1, 21.9, -36.6 , 0 );
setMoveKey( spep_0 + 1034 + OFFSET_X, 1, 15.3, -8.7 , 0 );
setMoveKey( spep_0 + 1035 + OFFSET_X, 1, 15.3, -8.7 , 0 );
setMoveKey( spep_0 + 1036 + OFFSET_X, 1, 30.8, -34.9 , 0 );
setMoveKey( spep_0 + 1037 + OFFSET_X, 1, 30.8, -34.9 , 0 );
setMoveKey( spep_0 + 1038 + OFFSET_X, 1, 31.3, -2.3 , 0 );
setMoveKey( spep_0 + 1039 + OFFSET_X, 1, 31.3, -2.3 , 0 );
setMoveKey( spep_0 + 1040 + OFFSET_X, 1, 14.7, -43.8 , 0 );
setMoveKey( spep_0 + 1041 + OFFSET_X, 1, 14.7, -43.8 , 0 );
setMoveKey( spep_0 + 1042 + OFFSET_X, 1, 24.9, -15.9 , 0 );
setMoveKey( spep_0 + 1043 + OFFSET_X, 1, 24.9, -15.9 , 0 );
setMoveKey( spep_0 + 1044 + OFFSET_X, 1, 21.2, -20.5 , 0 );
setMoveKey( spep_0 + 1045 + OFFSET_X, 1, 21.2, -20.5 , 0 );
setMoveKey( spep_0 + 1046 + OFFSET_X, 1, 33.7, -14.3 , 0 );
setMoveKey( spep_0 + 1047 + OFFSET_X, 1, 33.7, -14.3 , 0 );
setMoveKey( spep_0 + 1048 + OFFSET_X, 1, 19.5, -31.8 , 0 );
setMoveKey( spep_0 + 1049 + OFFSET_X, 1, 19.5, -31.8 , 0 );
setMoveKey( spep_0 + 1050 + OFFSET_X, 1, 20.6, -29 , 0 );
setMoveKey( spep_0 + 1131 + OFFSET_X, 1, 20.6, -29 , 0 );
setMoveKey( spep_0 + 1132 + OFFSET_X, 1, 23, -24.1 , 0 );
setMoveKey( spep_0 + 1133 + OFFSET_X, 1, 23, -24.1 , 0 );
setMoveKey( spep_0 + 1134 + OFFSET_X, 1, 18.2, -14.5 , 0 );
setMoveKey( spep_0 + 1135 + OFFSET_X, 1, 18.2, -14.5 , 0 );
setMoveKey( spep_0 + 1136 + OFFSET_X, 1, 27.8, -28.9 , 0 );
setMoveKey( spep_0 + 1137 + OFFSET_X, 1, 27.8, -28.9 , 0 );
setMoveKey( spep_0 + 1138 + OFFSET_X, 1, 25.4, -16.9 , 0 );
setMoveKey( spep_0 + 1139 + OFFSET_X, 1, 25.4, -16.9 , 0 );
setMoveKey( spep_0 + 1140 + OFFSET_X, 1, 20.6, -28.9 , 0 );
setMoveKey( spep_0 + 1141 + OFFSET_X, 1, 20.6, -28.9 , 0 );
setMoveKey( spep_0 + 1142 + OFFSET_X, 1, 27.8, -21.7 , 0 );
setMoveKey( spep_0 + 1143 + OFFSET_X, 1, 27.8, -21.7 , 0 );
setMoveKey( spep_0 + 1144 + OFFSET_X, 1, 18.2, -14.5 , 0 );
setMoveKey( spep_0 + 1145 + OFFSET_X, 1, 18.2, -14.5 , 0 );
setMoveKey( spep_0 + 1146 + OFFSET_X, 1, 27.8, -28.9 , 0 );
setMoveKey( spep_0 + 1147 + OFFSET_X, 1, 27.8, -28.9 , 0 );
setMoveKey( spep_0 + 1148 + OFFSET_X, 1, 25.4, -16.9 , 0 );
setMoveKey( spep_0 + 1149 + OFFSET_X, 1, 25.4, -16.9 , 0 );
setMoveKey( spep_0 + 1150 + OFFSET_X, 1, 20.6, -28.9 , 0 );
setMoveKey( spep_0 + 1151 + OFFSET_X, 1, 20.6, -28.9 , 0 );
setMoveKey( spep_0 + 1152 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1153 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1154 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1155 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1156 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1157 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1158 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1159 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1160 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1161 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1162 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1163 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1164 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1165 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1166 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1167 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1168 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1169 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1170 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1171 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1172 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1173 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1174 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1175 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1176 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1177 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1178 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1179 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1180 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1181 + OFFSET_X, 1, 20.5, -29.1 , 0 );
setMoveKey( spep_0 + 1182 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1183 + OFFSET_X, 1, 27.7, -21.9 , 0 );
setMoveKey( spep_0 + 1184 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1185 + OFFSET_X, 1, 18.1, -14.7 , 0 );
setMoveKey( spep_0 + 1186 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1187 + OFFSET_X, 1, 27.7, -29.1 , 0 );
setMoveKey( spep_0 + 1188 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1189 + OFFSET_X, 1, 25.3, -17.1 , 0 );
setMoveKey( spep_0 + 1190 + OFFSET_X, 1, 20.5, -29.1 , 0 );

setScaleKey( spep_0 + 550 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 707 + OFFSET_X, 1, 0.8, 0.8 );
setScaleKey( spep_0 + 708 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 713 + OFFSET_X, 1, 0.5, 0.5 );
setScaleKey( spep_0 + 714 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 715 + OFFSET_X, 1, 0.56, 0.56 );
setScaleKey( spep_0 + 716 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 717 + OFFSET_X, 1, 0.63, 0.63 );
setScaleKey( spep_0 + 718 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 719 + OFFSET_X, 1, 0.69, 0.69 );
setScaleKey( spep_0 + 720 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 721 + OFFSET_X, 1, 0.75, 0.75 );
setScaleKey( spep_0 + 722 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 723 + OFFSET_X, 1, 0.81, 0.81 );
setScaleKey( spep_0 + 724 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 725 + OFFSET_X, 1, 0.88, 0.88 );
setScaleKey( spep_0 + 726 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 727 + OFFSET_X, 1, 0.94, 0.94 );
setScaleKey( spep_0 + 728 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 735 + OFFSET_X, 1, 1, 1 );
setScaleKey( spep_0 + 736 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 991 + OFFSET_X, 1, 1.2, 1.2 );
setScaleKey( spep_0 + 992 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1131 + OFFSET_X, 1, 2, 2 );
setScaleKey( spep_0 + 1132 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1151 + OFFSET_X, 1, 2.8, 2.8 );
setScaleKey( spep_0 + 1152 + OFFSET_X, 1, 2.7, 2.7 );
setScaleKey( spep_0 + 1190 + OFFSET_X, 1, 2.7, 2.7 );

setRotateKey( spep_0 + 550 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1151 + OFFSET_X, 1, 0 );
setRotateKey( spep_0 + 1152 + OFFSET_X, 1, -43.9 );
setRotateKey( spep_0 + 1190 + OFFSET_X, 1, -43.9 );

setBlendColor( spep_0 + 550 + OFFSET_X, 1, 3, 0, 0, 0, 0)
setBlendColor( spep_0 + 739 + OFFSET_X, 1, 3, 0, 0, 0, 0)
setBlendColor( spep_0 + 740 + OFFSET_X, 1, 3, 0, 0, 0, 1)
setBlendColor( spep_0 + 1190 + OFFSET_X, 1, 3, 0, 0, 0, 1)
setBlendColor( spep_0 + 1191 + OFFSET_X, 1, 3, 0, 0, 0, 0)

-- ** 音 ** --
--光大きくなる
SE001 = playSeVer2( spep_0 + 0, 1210, "",spep_0 + 420, 0, 100, -1);
setSeVolumeByWorkId( spep_0 + 0, SE001, 40 );
setStartTimeMs( SE001, 500 );
setTimeStretch( SE001, 2, 30, 4 );

--画面遷移
SE002 = playSeVer2( spep_0 + 278, 1072, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 278, SE002, 56 );

--環境音
SE003 = playSeVer2( spep_0 + 300, 1349, "",spep_0 + 624, 0, 30, -1);
setSeVolumeByWorkId( spep_0 + 300, SE003, 25 );

--セリフカットイン
SE004 = playSeVer2( spep_0 + 360, 1018, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 360, SE004, 56 );

--カメラズーム
SE005 = playSeVer2( spep_0 + 434, 8, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 434, SE005, 72 );
SE006 = playSeVer2( spep_0 + 450, 44, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE006, 71 );
SE007 = playSeVer2( spep_0 + 450, 1232, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 450, SE007, 86 );
SE008 = playSeVer2( spep_0 + 460, 20, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 460, SE008, 67 );

--ボイス
-- 「あったけぇ…　な…なんだこれは…？」
playVoice( spep_0 + 1, 645 );
setVoiceVolume( spep_0 + 1, 645, 126 );

-- 「おめえだけは許せねぇ！」
playVoice( spep_0 + 354, 646 );
setVoiceVolume( spep_0 + 354, 646, 126 );

-----------------------------
-- 回避
-----------------------------
if(_IS_DODGE_ == 1) then

SP_dodge = spep_0 + 563 + OFFSET_X; --エンドフェイズのフレーム数を置き換える

playSe( SP_dodge - 12, 1042);
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
--気弾溜める
SE009 = playSeVer2( spep_0 + 602, 1296, "",spep_0 + 704, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 602, SE009, 115 );
setPitch( spep_0 + 602, SE009, -300 );
setTimeStretch( SE009, 0.8, 30, 4 );
SE010 = playSeVer2( spep_0 + 602, 1201, "", 0, 0, 0, -1);
SE011 = playSeVer2( spep_0 + 601, 1133, "",spep_0 + 648, 0, 26, -1);
setSeVolumeByWorkId( spep_0 + 602, SE011, 65 );
setPitch( spep_0 + 602, SE011, -200 );
setTimeStretch( SE011, 0.87, 30, 4 );
SE012 = playSeVer2( spep_0 + 602, 1000, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 602, SE012, 71 );

--気弾投げる
SE014 = playSeVer2( spep_0 + 668, 1027, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 668, SE014, 75 );
SE015 = playSeVer2( spep_0 + 668, 1193, "",spep_0 + 800, 0, 62, -1);
setPitch( spep_0 + 668, SE015, 400 );
setTimeStretch( SE015, 1.27, 30, 4 );
SE016 = playSeVer2( spep_0 + 668, 1146, "", 0, 0, 0, -1);

--気弾ヒット
SE017 = playSeVer2( spep_0 + 736, 1133, "", 0, 0, 0, -1);

--爆発
SE013 = playSeVer2( spep_0 + 770, 1371, "",spep_0 + 956, 22, 38, -1);
setStartTimeMs( SE013,  1800 );

--爆発
SE018 = playSeVer2( spep_0 + 772, 1231, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 772, SE018, 251 );
SE019 = playSeVer2( spep_0 + 772, 1161, "",spep_0 + 954, 0, 34, -1);
setSeVolumeByWorkId( spep_0 + 772, SE019, 71 );

--爆発二手に分かれる
SE020 = playSeVer2( spep_0 + 830, 1321, "", 0, 8, 0, -1);
setStartTimeMs( SE020,  967 );
setPitch( spep_0 + 830, SE020, 400 );
setTimeStretch( SE020, 1.27, 30, 4 );
SE021 = playSeVer2( spep_0 + 820, 1052, "", 0, 0, 0, -1);

--天井爆発
SE022 = playSeVer2( spep_0 + 910, 1011, "", 0, 0, 0, -1);
SE023 = playSeVer2( spep_0 + 912, 1024, "", 0, 0, 0, -1);

--木の中移動
SE024 = playSeVer2( spep_0 + 932, 1044, "",spep_0 + 1206, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 932, SE024, 79 );
SE025 = playSeVer2( spep_0 + 932, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 932, SE025, 40 );
SE026 = playSeVer2( spep_0 + 940, 1121, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 940, SE026, 63 );
setPitch( spep_0 + 940, SE026, 300 );
setTimeStretch( SE026, 1.2, 30, 4 );
SE027 = playSeVer2( spep_0 + 956, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 956, SE027, 40 );
SE028 = playSeVer2( spep_0 + 980, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 980, SE028, 40 );

--敵シルエット
SE029 = playSeVer2( spep_0 + 992, 1161, "",spep_0 + 1206, 0, 18, -1);
SE030 = playSeVer2( spep_0 + 998, 1024, "", 0, 0, 0, -1);

--木の中移動
SE031 = playSeVer2( spep_0 + 1000, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1000, SE031, 40 );
SE032 = playSeVer2( spep_0 + 1026, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1026, SE032, 40 );
SE033 = playSeVer2( spep_0 + 1050, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1050, SE033, 40 );
SE034 = playSeVer2( spep_0 + 1050, 1121, "",spep_0 + 1204, 0, 12, -1);
setSeVolumeByWorkId( spep_0 + 1050, SE034, 62 );
setPitch( spep_0 + 1050, SE034, 300 );
setTimeStretch( SE034, 1.2, 30, 4 );
SE035 = playSeVer2( spep_0 + 1074, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1074, SE035, 40 );
SE036 = playSeVer2( spep_0 + 1098, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1098, SE036, 40 );
SE037 = playSeVer2( spep_0 + 1122, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1122, SE037, 40 );

--敵飲み込まれる
SE038 = playSeVer2( spep_0 + 1132, 1258, "",spep_0 + 1206, 0, 10, -1);
setSeVolumeByWorkId( spep_0 + 1132, SE038, 76 );

--木の中移動
SE039 = playSeVer2( spep_0 + 1146, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1146, SE039, 40 );
SE040 = playSeVer2( spep_0 + 1170, 1036, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1170, SE040, 40 );

--爆発
SE041 = playSeVer2( spep_0 + 1192, 1159, "", 0, 0, 0, -1);
SE042 = playSeVer2( spep_0 + 1200, 1067, "", 0, 0, 0, -1);
SE043 = playSeVer2( spep_0 + 1206, 1188, "", 0, 0, 0, -1);
setSeVolumeByWorkId( spep_0 + 1206, SE043, 85 );
SE044 = playSeVer2( spep_0 + 1216, 1069, "", 0, 22, 0, -1);
setSeVolumeByWorkId( spep_0 + 1216, SE044, 90 );
setStartTimeMs( SE044,  167 );

--ボイス
-- 「受けてみろー！」
playVoice( spep_0 + 574, 647 );
setVoiceVolume( spep_0 + 574, 647, 126 );


--終わり
-- hideKoScreen();
dealDamage( spep_0 + 1192);
endPhase( spep_0 + MAX_FRAME_0);--1370

else end
