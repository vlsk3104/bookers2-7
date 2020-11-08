# bookers2-7
## DMM WEBCAMP 2ヶ月目応用課題

### 課題7 Bookers2に住所検索機能を追加しましょう
jpostal.jpとgem jp_prefectureを使用して住所を検索しましょう
##### 実装する機能
* モデル
* userモデルに郵便番号, 住所を格納するカラムを追加
* ビュー
* 新規登録画面に郵便番号を入力するフォームを追加
* 郵便番号を入力後、郵便番号に対応する住所を住所フォームに自動入力させる
* マイページに自分の住所の地図を表示 他人の詳細画面では住所を表示しないこと
* Google Map APIを使用すること
* APIトークンはgem dotenv-railsを使用し、環境変数として扱うこと

## 使用言語
Ruby on Rails

## 使用方法
### テスト手順の自動化
gemを入れて、specファイルを移動して、テストを実行するコマンドを打つという手順をまとめたcheck.shというファイルを作成した
アプリケーションのルートディレクトリにおいて
bash check.sh
というコマンドを打つと最後まで自動で終了する
ディレクトリが野原のディレクトリにあっているため、自分で修正が必要

### 実行コマンド
bundle exec rspec spec/ --format documentation

### 注意
カラム名が違うとほとんどのテストに失敗してしまうが、このコマンドですべてのファイルの文字列を変更することができる
例はopinionというカラム名で作られていたため、それをすべてbodyというカラム名に変更した
find . -type f | xargs sed -i 's/opinion/body/g'

一回テストを試していると、テスト用のデータベースtest.sqlite3ができているため、カラム名を変更したのちに再びやる時は
rm db/test.sqlite3によって、ファイルを削除してから実行する


## 参照
[DMM WEBCAMP カリキュラム](https://web-camp.online/lesson/curriculums)

