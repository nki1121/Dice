import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "die.face.1")
                .resizable() // 画像の大きさ変更時につける
                .scaledToFit() // 画像の縦横の比率を固定する
                .frame(width: UIScreen.main.bounds.width/2) //オブジェクトの大きさを変更する.画面の横幅をの半分の大きさを取得する
                .padding() // 内側に余白をつける
            Button {
                print("ボタンが押されたよ")
            } label: {
                Text("サイコロを振る")
            }
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
