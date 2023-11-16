struct Item: Identifiable {
    var id: Int
}

struct ContentView: View {
    @State var items: [Item] = (0 ..< 25).map { Item(id: $0) }

    var body: some View {
        ScrollView(.vertical) {
            LazyVStack {
                ForEach(items) { item in
                    ItemView(item: item)
                }
            }
        }
    }
}

struct ItemView: View {
    var item: Item

    var body: some View {
        Text(item, format: .number)
            .padding(.vertical)
            .frame(maxWidth: .infinity)
    }
}
