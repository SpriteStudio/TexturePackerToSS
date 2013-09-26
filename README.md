==============================================================================

  TexturePacker Exporter Plugin for OPTPiX SpriteStudio

  Copyright(C) 2013 Web Technology Corp.

==============================================================================

------------------------------------------------------------------------------
# はじめに

本プラグインは、TexturePacker で作成したテクスチャアトラスをSpriteStudioのssce
形式に変換するTexturePacker用のエクスポータです。

Texture Packerでアトラスを作成した際に使用した細切れの
イメージをSpriteStudioのセルとして使用できます。

このプラグインはTexture Packerにインストールしてご使用いただけます。

------------------------------------------------------------------------------
# 更新履歴

1.0 (2013/9/26)
- 初回リリース

------------------------------------------------------------------------------
# インストール手順

1. Texture Packerを起動します。

2. Texture Packerのメニュー内の「Preferences」を選びます。  
  (Windos版ではHelp内、MacではTexturePackerメニュー内に入っています。）

3. エクスポータのフォルダを選択します。  
  [Preferences]ダイアログ内の[Settings]タブ内にある、[Custom data exporters]に
  エクスポータのプラグインがあるフォルダを選択します。

  この時、プラグインのフォルダ階層は下記の様にして下さい。

 　　TexturePackerPlguins [例・任意]  
 　　　　SpriteStudio  
 　　　　　　|-exporter.xml  
 　　　　　　|-template.xml

  例として示している「TexturePackerPlguins」フォルダを上記の[Custom data exporters]フォルダ選択テキストボックスへ入力します。

4. Texture Packerを再起動して下さい。

以上で Output - Data Formatへ「SpriteStudio」形式の名前が表示されます。

------------------------------------------------------------------------------
# SpriteStudio へ取り込むための手順

1. まずパッキング対象となるイメージをTexturePackerへ登録し、各種設定を任意の値に
  変更します。

2. 一通りの設定が完了したら、Output ペインに移ります。

3. Data Format で SpriteStudio を選択します。

4. Data file name で出力するセルマップファイル(.ssce) の保存先とファイル名を指定
  します。

5. Texture file で出力する画像ファイルの保存先とファイル名を指定します。

  【ご注意！】
  セルマップ、出力画像ファイルの保存先フォルダは、利用するSpriteStudioプロジェ
  クトフォルダ以下を指定するようにして下さい。

6. Publish し、エラーが出ず完了したことを確認します。

7. SpriteStudio を起動し、追加先のプロジェクトを開いた状態にしておきます。

8. 出力された .ssce ファイルを SpriteStudio へドロップするか、「プロジェクト」メ
  ニューの「既存ファイルの追加」から .ssce ファイルを選択します。

------------------------------------------------------------------------------
# ご注意

- TextuePacker から出力した .ssce ファイルを正しく読み込むためには
  SpriteStudio 5.1.0 以降のバージョンが必要です。

- 一度 SpriteStudio に読み込んで、参照セルキーを追加した後に、該当するセルの元
  画像のファイル名を変更し、再度 TexturePacker から Publish すると変更前の名前
  を持つセルが見つからず、アニメーションが参照するセルが無効状態になります。
  
  こうなった場合、該当のセルを指定し直す必要がありますのでご注意下さい。
  パーツの画像ファイル名はなるべく事前に確定しておく事をお勧めします。

- Windows 版 の TexturePacker で出力する場合、全角文字は使えません。
  
  xml ファイルが shift-jis フォーマットになるため、Mac 版SpriteStudio と互換性
  が保てない事が理由です。
  
  ※出力された .ssce ファイルのヘッダにある encoding="utf-8" を
    encoding="shift-jis" に書き換えた上で Windows 版 SpriteStudio に読み込んで
    上書き保存すると utf-8 に変換され、Mac 版SpriteStudioでも読み込めるようにな
    ります。
  
  ※Mac 版 TexturePacker で保存した場合、UTF-8 になるため、SpriteStudio に問題
    なく読み込めます。

- FixedSize, MaxSize を越えてエリア外となる画像ファイルがある状態で Publish さ
  れた ssce は SpriteStudio に読み込めません。



==============================================================================
株式会社ウェブテクノロジ  
http://www.webtech.co.jp/  
Copyright(C) 2013 Web Technology Corp.  
==============================================================================

* OPTPiX SpriteStudio, Web Technologyは、株式会社ウェブテクノロジの登録商標です。
* その他の商品名は各社の登録商標または商標です。

[End of TEXT]
