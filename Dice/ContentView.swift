import SwiftUI

struct ContentView: View {
    
    @State var randomNumber = 1
    @State var timer: Timer?

    var body: some View {
        VStack {
            Spacer()
            Image(systemName: "die.face.\(randomNumber)")
                .resizable() // 画像の大きさ変更時につける
                .scaledToFit() // 画像の縦横の比率を固定する
                .frame(width: UIScreen.main.bounds.width/2) //オブジェクトの大きさを変更する.画面の横幅をの半分の大きさを取得する
                .padding() // 内側に余白をつける
            Spacer()
            Button {
                print("ボタンが押されたよ")
                timer = Timer.scheduledTimer(withTimeInterval: 0.1, repeats: true) {
                    _ in randomNumber = Int.random(in: 1...6)
                }
                // 0.5秒遅らせて処理を行いたいとき
                DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
                    // タイマーをストップさせる2行
                    timer?.invalidate()
                    timer = nil
                }
            } label: {
                Text("サイコロを振る")
                    .padding()
                    .background(Color.orange)
                    .foregroundColor(.black) // 文字色を黒にする
                    .cornerRadius(10) // ボタンの角に丸みをつける
            }
            Spacer()
        }
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
