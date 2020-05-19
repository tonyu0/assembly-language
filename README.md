# assembly-language
src以下をボリュームとしてalpineが入ったdockerコンテナ上で実行
- make build
  - アセンブリ言語実行用dockerイメージの作成
- make run
  - 上で作ったコンテナ起動、src以下のasmファイルをアセンブルして実行