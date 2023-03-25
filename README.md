# コードでの画面遷移のやり方
https://qiita.com/Imael/items/0c75a2a5fbe5202a79c6
# はじめに
コードで画面遷移するとき混乱したのでメモ、備忘録
ストーリーボードでsegue、ストーリーボードリファレンスでも画面遷移できますが条件をつけて遷移するときコードの方が便利！
サンプルです
https://github.com/kabikira/TestScreenTransition

# 同じstoryboard上で遷移したい場合
![スクリーンショット 2023-03-25 20.04.58.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/2883687/298e2ee7-a6ac-0370-fcdc-ca0a3a8c88f1.png)

storyboardIDを指定して行う。
```swift
// 同じストーリーボードに遷移したい画面があるとき
if let vc = storyboard?.instantiateViewController(withIdentifier: "FirstDetail") as? FristDetailViewController {
            navigationController?.pushViewController(vc, animated: true)
```
            
            
# ViewControllerのみの場合
![スクリーンショット 2023-03-25 20.06.36.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/2883687/16568b63-8e50-b4de-9bc2-c3deceefcef2.png)

storyboardがなくViewControllerだけのときはこれだけ
```swift
// ViewControllerだけのとき
let vc = SecondDetailViewController()
navigationController?.pushViewController(vc, animated: true)
```

# 違うストーリーボードとViewControllerに遷移するとき
![スクリーンショット 2023-03-25 20.06.54.png](https://qiita-image-store.s3.ap-northeast-1.amazonaws.com/0/2883687/37265948-d303-901d-adf9-8d4f023905f0.png)

storyboardの名前を指定して画面遷移します。
```swift
// 違うストーリーボードに遷移するとき
if let vc = UIStoryboard(name: "ThirdDetail", bundle: nil).instantiateInitialViewController() as? ThirdDetailViewController {
navigationController?.pushViewController(vc, animated: true)
```

# おわりに
間違ってたら教えてください！
サンプルです
https://github.com/kabikira/TestScreenTransition
