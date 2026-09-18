-- カウンターフィニッシュ演出スキップカットイン再生スクリプト
setPhase(0);
setVisibleUI(0, 0);

cutin = entryEffect(0, 6001, 0x100, -1, 0, 0, 0); -- eff_004 (バナー)
setEffMoveKey(0, cutin, 0, 0, 0);
setEffReplaceTexture(cutin, 3, 2); -- カットイン差し替え

playSe(0, 1022);

entryFadeBg(0, 0, 30, 20, 10, 10, 10, 180); -- ベース暗め　背景

setVisibleUI(62, 1);
endPhase(62);
