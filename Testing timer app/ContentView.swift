import SwiftUI
import Combine

struct ContentView: View {
    @StateObject private var counter = CounterModel()
    @State private var isTimerRunning = false

    var body: some View {
        VStack {
            Text("Count: \(counter.count)")
                .font(.largeTitle)
                .padding()
            
            Text("Player State: " + String(counter.stayStill))
                .font(.largeTitle)
                .padding()
            
            Button(action: {
                if isTimerRunning {
                    counter.stopTimer()
                } else {
                    counter.startTimer()
                }
                isTimerRunning.toggle()
            }) {
                Text(isTimerRunning ? "Stop Game" : "Start Game")
                    .padding()
                    .background(Color.blue)
                    .foregroundColor(.white)
                    .cornerRadius(10)
            }
            Button(action: {
                counter.restartTimer()
                counter.stopTimer()
                if isTimerRunning {
                    isTimerRunning.toggle()
                }
            }) {
                Text("Restart Game")
                    .padding()
                    .background(Color.red)
                    .foregroundColor(.white)
                    .cornerRadius(10)
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
