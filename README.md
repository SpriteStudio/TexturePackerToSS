==============================================================================

  TexturePacker To SS
  
  TexturePacker Exporter Plugin for OPTPiX SpriteStudio 5

  Copyright(C) Web Technology Corp.

==============================================================================

------------------------------------------------------------------------------
# はじめに

本プラグインは、TexturePacker で作成したテクスチャアトラスをOPTPiX SpriteStudio 5 の
ssce 形式に変換するTexturePacker用のエクスポータです。

Texture Packerでアトラスを作成した際に使用した細切れの
イメージをSpriteStudioのセルとして使用できます。

このプラグインはTexture Packerにインストールしてご使用いただけます。

------------------------------------------------------------------------------
# 更新履歴

1.1 (2014/12/16)
- Pivot の出力に対応しました。
  ※TexturePacker 3.4.0 以降が必要です。
  ※SpriteStudio上で原点を指定している方はPublish時に原点情報が上書きされるため
    v1.0 を使用してください。

1.0 (2013/9/26)
- 初回リリース

------------------------------------------------------------------------------
# ダウンロード手順

このページ右側の [Download ZIP] ボタンを押して .zip ファイルを保存してください。

------------------------------------------------------------------------------
# インストール手順

1. ダウンロードした.zipファイルを解凍しておきます。

1. Texture Packerを起動します。

1. Texture Packerのメニュー内の「Preferences」を選びます。  

  (Windows版ではFile、MacではTexturePackerメニュー内に入っています。）

1. エクスポータのフォルダを設定します。  

  [Settings]タブに移動します。
  
  [Custom data Exporters] の Exporter Directory テキストボックスを確認します。

  空の場合は、新規にフォルダを作成します。

  例えば、任意の場所に"TexturePackerPlugins"(例)という名前のフォルダを作成し、このフォルダを指定します。

1. エクスポータフォルダの中に先ほど解凍してできたSpriteStudioフォルダを移動します。

  例としてWindows版でダウンロード先にエクスポータフォルダを作成した場合、下記のようになります。
  
  `C:\Users\ユーザー名\Downloads\TexturePackerPlugins\SpriteStudio`
  
  このフォルダ内に下記２ファイルが存在することになります。
    - exporter.xml  
    - template.xml

1. Texture Packerを再起動します。

以上で Output - Data Formatへ「SpriteStudio」形式の名前が表示されます。

表示されない場合は、エクスポータフォルダが直接 SpriteStudio フォルダを指していないかご確認ください。
この場合は、１つ上のフォルダを指すよう変更してTexture Packer を再起動してください。

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

- セルの原点を維持する方法

 ●TexturePacker で設定した原点を維持する場合
 
  本エクスポータのバージョンは v1.1 を使用して下さい。
  TexturePacker v3.5.3 以下ではセル単位で異なる原点を指定することができませんので
  ご注意ください。
  
 ●SpriteStudio で設定した原点を維持する場合
  
  本エクスポータのバージョンは v1.0 を使用してください。
  
  TexturePacker 自体には原点の情報が含まれないため、
  1. TexturePacker で Publish
  2. SpriteStudio で原点設定
  3. TexturePacker で再度 Publish
  
  すると、原点の設定が失われてしまいます。

  これを回避するには、SpriteStudio を起動したままの状態で、TexturePacker でPublish し、セルマップファイルを上書きするようにします。
  次に SpriteStudio に切り替えて該当のセルマップファイルを選択し、右メニューから「リロード」を選択します。

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
Copyright(C) Web Technology Corp.  
==============================================================================

* OPTPiX SpriteStudio, Web Technologyは、株式会社ウェブテクノロジの登録商標です。
* その他の商品名は各社の登録商標または商標です。

[End of TEXT]
