## Tortoise SVNの指定したパスを自動更新する
---

### 環境：
* OS：Windows2003以降
* Tortoise SVNを導入済み
※コマンドプロンプトで"TortoiseProc"と入力して、ダイアログが表示されればOKです。
---

### ※以下の点を検討した上で導入を決めてください。
_メリット_

* 意識しなくてもある程度、レポジトリの状況の新しさが保証される。  
* 競合が発生した場合、早い段階で気づける。 
* 重い更新がまとまる可能性が低減される。
* 更新をする手間が低減される。

_デメリット_

* 意図せずにダイアログとコンソールが表示される。
* ファイルを開く際に手動で更新する癖が付いている場合、あまり意味がない。
* どのファイルが更新されたかを、ダイアログでチェックできない（update_repos.batの設定で対応可能）
* ファイルを開いていただけで、競合とみなされることがある。

  
### 使用方法：
* svn_auto_update.batとupdate_repos.batを任意の場所に置きます。
* svn_auto_update.batのbatPathに、update_repos.batのパスを設定します。
* svn_auto_update.batのrepoPathに、更新したいレポジトリのパスを設定します。（レポジトリ内の特定のフォルダでも可）
* svn_auto_update.batを起動します。
* コメントアウトしてある「テスト用コマンド」を実行して、正しくパスが通っていることが確認できれば完了です。

以下の設定はお好みに合わせて変更すると使いやすいでしょう。

* svn_auto_update.bat 

  * _/sc_ 更新の間隔。（hourly, minuteどちらかを推奨）    
  * _/mo_ 更新の頻度。sc×moの間隔で更新される。
  
* update_repos.bat

  * _/closeoned:_   
    0 ダイアログを自動で閉じない。
    1 エラーが無ければダイアログを自動で閉じる。 
    2 エラーや競合が無ければダイアログを自動で閉じる。
    3 エラー、競合、マージが無ければダイアログを自動で閉じる。
    
    
### 設定の変更、削除
* svn_auto_update.batの設定を変更した場合は、svn_auto_update.batを再度実行して、タスクの上書きをしてください。
* update_repos.batの設定を変更した場合は、特に何もしなくても大丈夫です。
* タスクを削除する場合は、コメントアウトしてある「タスク削除用コマンド」を実行してください。
    
---


### 説明：
#### svn_auto_update.bat：
SVNのレポジトリを一定時間毎に更新するタスクを登録するコマンドです。  
現在の設定  

* 08:10～20:10の間に2時間間隔で更新  

本家の説明はこちら [http://support.microsoft.com/kb/814596/ja](http://support.microsoft.com/kb/814596/ja)
    
#### update_repos.bat：
SVNのレポジトリを更新するコマンドです。
現在の設定

* 更新ダイアログを（エラー・競合・マージがなかった場合）自動で閉じる


参考にしたサイトはこちら[http://tortoisesvn.net/docs/release/TortoiseSVN_ja/tsvn-automation.html](http://tortoisesvn.net/docs/release/TortoiseSVN_ja/tsvn-automation.html)
