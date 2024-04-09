import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "die.face.1")
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
