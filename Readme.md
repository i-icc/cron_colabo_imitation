## はじめに
* これは、Docker を使用して google colab に似た環境である jupyter notebook を動作させるファイルです。
* 簡易的に準備・使用できるように本来必要な権限周りの設定等を入れてないので、ローカルマシン以外では使用しないでください。
* このドキュメントは非エンジニアを対象に書いておりますが、不明点も多々あるかもしれません。その際は `google先生` もしくは `最寄りのエンジニア` までご相談ください。

### 対象者
* google colabotry をローカルマシンで動かしたい人
* google colabotry を定期実行したいと考えている人
* エンジニアではないが google colabotry は利用できる方

### jupyter notebook とは
* https://jupyter.org/
* ウェブブラウザ上で Python などのコードを実行することができ、データ分析などでよく使用されるツールです。
* colab は jupyter notebook をベースに作成されているので似たような操作感で使用することができます。
* 

## セットアップ
* Docker がPCに入っていない方は Docker(DockerDesktop)をインストールしてください。
    * PC に入っているか確かめる方法
        * MacOS を使用している方は `CMD + Space` を押して `Spotlight` を開きます。`Docker` と検索して出て来た場合はインストール済みです。
        * WindowsOS を使用している方は `Windowsマークのボタン` を押して、`Docker` と検索します。出て来た場合はインストール済みです。
    * インストールされてない方は `<使用しているOS> Docker インストール方法` と google で検索して良さそうな記事を参考にインストールしてください。
* 
* 先程ダウンロードした`docker compose build` 

## 実行
* `docker compose up -d` を `docker compose build` を実行した位置と同じ
* Chrom や Edge, Safali 等お好きなブラウザを利用してurlを入力する欄に `localhost:8888` と入力してください。


## Tips

### colab で作成したコードを利用するには
* hoge

### google drive と接続するには
* hoge

### 新しくライブラリを使用するには
* hoge

### 定期実行するには
* 注意点

## 補足(読まなくていいです)
* Docker を使用した背景
    * ローカル環境を汚さない
    * 強めの権限を与えるので
    * OS とかを気にしたくないため