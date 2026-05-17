import SwiftUI

struct ContentView: View {
    @State private var isOn = false
    @State private var bgImage = "bg2"
    
    var body: some View {
        ZStack {
            Image(bgImage)
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Text("Background: \(bgImage)")
                    .foregroundColor(.white)
                    .font(.title)
                    .padding()
                    .background(Color.black.opacity(0.5))
                    .cornerRadius(10)
                
                Toggle("Switch background", isOn: $isOn)
                    .padding()
                    .background(Color.white.opacity(0.7))
                    .cornerRadius(10)
                    .padding()
                    .onChange(of: isOn) { value in
                        bgImage = value ? "bg1" : "bg2"
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
