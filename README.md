いつものPHPプロジェクトスケルトン
=======
スケルトンを取得して init.sh を実行するとディレクトリ内のファイルが書き換わる。
このとき init.sh や README.md など不要なファイルが削除される。


使い方
----------
Usage:
./init.sh GitHubリポジトリ名 トップレベルネームスペース

GitHubリポジトリ名: composerのパッケージ名に
トップレベルネームスペース: オートローダーの設定に

例
-----------------
ex)
./init.sh hoge-fuga HogeFuga
