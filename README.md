# SwiftUIRadioButtons

Radio buttons collection views written puerly in SwiftUI follwing its philshophy.

## Components:

#### HRadioCollection:
a structure that renders a horizontal collection of radio buttons given a collection of identifaiable data.

#### VRadioCollection:
a structure that renders a vertical collection of radio buttons given a collection of identifaiable data.


## How to Use:


```
struct Country: Identifiable {
    let id = UUID()
    var imageName: String
    var label: String
}


struct SelectCountryView: View {
    @State private var selectedCountry: Country? = nil
    private let countries = [
        Country(imageName: "Egypt", label: "Egypt"),
        Country(imageName: "aue_flag", label: "UAE"),
        Country(imageName: "Saudi-Arabia", label: "KSA"),
    ]
    
    var body: some View {
        VStack {
            Text(selectedCountry?.label ?? "No selection yet")
            HRadioCollection(selectedData: $selectedCountry, data: countries) { country in
                HStack {
                    Image(country.imageName)
                    Text(country.label)
                        .font(Font.system(size: 14.relativeHeight))
                        .bold()
                }
            }
            .radioForegroundColor(.red)
            .padding()
        }
    }
}
```

![ Alt text](https://github.com/imokhtar/SwiftUIRadioButtons/blob/main/Sources/radio_example.gif)
