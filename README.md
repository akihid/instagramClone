- Ruby on Railsを使ったアプリケーションであること
- HTML,CSS,bootstrapを使用して、現実のInstagramに似せたデザインにすること（任意　詳しくは後述）
- pictureの投稿・投稿確認・編集・一覧表示・削除機能があること
- userのプロフィール画像が登録できること
- userのプロフィール編集機能があること
- 他人の投稿・プロフィールが編集できないように、controllerでアクセス制限をかけ、さらにviewではボタンを非表示にすること。
- ログイン機能があること
- pictureを投稿した際、投稿者に確認メールが届くようにすること
- UserとPictureをひも付けて誰がPictureを投稿したか分かるようにすること
- 画像と文章が投稿できるようにすること
- pictureをお気に入りし、お気に入りのpictureの一覧画面を、新しいルーティングのページで作成すること
- CSS、JavaScript、Helperのファイルをrails g コマンドで自動生成しない設定を記述して、これらの余分なファイルができないようにすること（下記ヒントあり）
- Githubにソースコードを送信し、そのリポジトリのURLを提出すること
- Herokuにアップロードしてある状態であること
- 404,500のエラーページを実装すること
- seedデータがあり、Userが50件以上存在すること（pictureはなくて構わない）
- .envファイルを作成し、それをGitに上げないようにする設定をしておくこと
- 辞書ファイルで、エラーメッセージやモデル名などの日本語化がされていること
- 変数名やアソシエーション名は具体的で、一目見て概ね理解できる名前にすること
- Gitのコミットメッセージが、一目見てそのコミットで何をしたかがわかるものであること
- 一つの機能を作成したら、一つのコミットをするようにすること（下記ヒントあり）
- インデントは半角スペース二つで揃えること
- Gemfileはコメント行をあらかじめ消しておくこと
- 改行は意味のある単位で行なった方がみやすいため、そうすること
- 意味のない空行は消しておく
- ロケット記法は使わないこと
- 変数やアソシエーション名は、機能に関連した名前づけを心がけ、good_answersのようにスネークケースできちんと単語を分けること
- 変数やアソシエーション名に省略した名称は基本的に使わない(意味を予測しづらいため)
- privateより下の行はprivateと同じレベルのインデントにする
- updateなどの記述の際、バリデーションが発火した時の処理も考慮しておくこと。（レンダリングするviewが見つけられなくてエラーになったりしないように注意する）
- タイムゾーンの設定を日本にしておくこと（下記ヒントあり）