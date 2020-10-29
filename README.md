# SwiftUIRadioButtons

Radio buttons collection views written puerly in SwiftUI follwing its philshophy.

## Components:

#### HRadioCollection:
a structure that renders a horizontal collection of radio buttons given a collection of identifaiable data.

#### VRadioCollection:
a structure that renders a vertical collection of radio buttons given a collection of identifaiable data.


## How to Use:


```
struct CountryPresentationEntity: Identifiable {
    let id = UUID()
    var imageName: String
    var label: String
}


struct CountryAndLanguageView: View {
    @State private var selectedCountry: CountryPresentationEntity? = nil
    
    var countries: [CountryPresentationEntity] = [
        CountryPresentationEntity(imageName: "aue_flag", label: "Egypt"),
        CountryPresentationEntity(imageName: "aue_flag", label: "AUE"),
        CountryPresentationEntity(imageName: "aue_flag", label: "KSA"),
    ]
    
    var body: some View {
        VStack {
            HRadioCollection(selectedData: $selectedCountry, data: countries, content: radioContent)
                .radioForegroundColor(.yellow)
                .foregroundColor(.red)
        }
    }
}
```
