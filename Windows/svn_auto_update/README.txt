作業中

環境：
  OS：Windows2003以降
  Tortoise SVNを導入済み
  
使用方法：
  ・svn_auto_update.batとupdate_repos.batを任意の場所に置きます。
  ・svn_auto_update.batのbatPathに、update_repos.batのパスを設定します。
  ・svn_auto_update.batのrepoPathに、更新したいレポジトリのパスを設定します。（レポジトリ内の特定のフォルダでも可）
  ・svn_auto_update.batを起動します。
  ・タスクの削除には、remでコメントアウトしてあるコマンドを実行してください。


説明：
svn_auto_update.bat：
  SVNのレポジトリを一定時間毎に更新するタスクを登録するコマンド
  現在の設定
    ・08:10～20:10の間に2時間間隔で更新

update_repos.bat：
  SVNのレポジトリを更新するコマンド
  現在の設定
    ・更新ダイアログを（エラーがなかった場合）自動で閉じる