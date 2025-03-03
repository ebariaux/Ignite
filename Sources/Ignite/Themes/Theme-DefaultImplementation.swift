//
// Theme-DefaultImplementation.swift
// Ignite
// https://www.github.com/twostraws/Ignite
// See LICENSE for license information.
//

/// Default implementation providing Bootstrap's default light theme values
/// Default implementation providing Bootstrap's default theme values
public extension Theme {
    var accent: Color {
        colorScheme == .dark ?
        Color(hex: "#6ea8fe") :
        Color(hex: "#0d6efd")
    }

    var secondaryAccent: Color {
        colorScheme == .dark ?
        Color(hex: "#a7acb1") :
        Color(hex: "#6c757d")
    }

    var success: Color {
        colorScheme == .dark ?
        Color(hex: "#75b798") :
        Color(hex: "#198754")
    }

    var info: Color {
        colorScheme == .dark ?
        Color(hex: "#6edff6") :
        Color(hex: "#0dcaf0")
    }

    var warning: Color {
        colorScheme == .dark ?
        Color(hex: "#ffda6a") :
        Color(hex: "#ffc107")
    }

    var danger: Color {
        colorScheme == .dark ?
        Color(hex: "#ea868f") :
        Color(hex: "#dc3545")
    }

    var offWhite: Color {
        Color(hex: "#f8f9fa")
    }

    var offBlack: Color {
        Color(hex: "#212529")
    }

    var primary: Color {
        colorScheme == .dark ?
        Color(hex: "#f8f9fa") :
        Color(hex: "#212529")
    }

    var emphasis: Color {
        colorScheme == .dark ?
        Color(hex: "#f8f9fa") :
        Color(hex: "#212529")
    }

    var secondary: Color {
        colorScheme == .dark ?
        Color(red: 248, green: 249, blue: 250, opacity: 0.75) :
        Color(red: 33, green: 37, blue: 41, opacity: 0.75)
    }

    var tertiary: Color {
        colorScheme == .dark ?
        Color(red: 248, green: 249, blue: 250, opacity: 0.5) :
        Color(red: 33, green: 37, blue: 41, opacity: 0.5)
    }

    var background: Color {
        colorScheme == .dark ?
        Color(hex: "#212529") :
        Color(hex: "#ffffff")
    }

    var secondaryBackground: Color {
        colorScheme == .dark ?
        Color(hex: "#343a40") :
        Color(hex: "#e9ecef")
    }

    var tertiaryBackground: Color {
        colorScheme == .dark ?
        Color(hex: "#2b3035") :
        Color(hex: "#f8f9fa")
    }

    var border: Color {
        colorScheme == .dark ?
        Color(hex: "#495057") :
        Color(hex: "#dee2e6")
    }

    var syntaxHighlighterTheme: HighlighterTheme {
        colorScheme == .dark ?
        .xcodeDark :
        .automatic
    }

    var link: Color {
        colorScheme == .dark ?
        Color(hex: "#6ea8fe") :
        Color(hex: "#0d6efd")
    }

    var linkHover: Color {
        colorScheme == .dark ?
        Color(hex: "#9ec5fe") :
        Color(hex: "#0a58ca")
    }

    // Links
    var linkDecoration: TextDecoration { .underline }

    // Font Families
    var monospaceFont: Font { .default }
    var font: Font { .default }

    // Font Sizes
    var rootFontSize: LengthUnit { .default }
    var bodyFontSize: ResponsiveValues { .default }
    var inlineCodeFontSize: LengthUnit { .default }
    var codeBlockFontSize: LengthUnit { .default }

    // Line Heights
    var lineHeight: LengthUnit { .default }

    // Heading Sizes
    var h1Size: ResponsiveValues { .default }
    var h2Size: ResponsiveValues { .default }
    var h3Size: ResponsiveValues { .default }
    var h4Size: ResponsiveValues { .default }
    var h5Size: ResponsiveValues { .default }
    var h6Size: ResponsiveValues { .default }

    // Heading Properties
    var headingFont: Font { .default }
    var headingFontWeight: FontWeight { .default }
    var headingLineHeight: LengthUnit { .default }

    // Bottom Margins
    var headingBottomMargin: LengthUnit { .default }
    var paragraphBottomMargin: LengthUnit { .default }

    // Breakpoints
    var breakpoints: ResponsiveValues { .default}

    // Maximum widths
    var siteWidth: ResponsiveValues { .default }
}

public extension Theme {
    /// The unique identifier for this theme instance, including any system-generated suffix.
    var id: String {
        Self.id
    }

    /// The display name of this theme instance.
    var name: String {
        Self.name
    }

    /// Internal identifier used for theme switching and CSS selectors.
    /// Automatically appends "-light" or "-dark" suffix based on protocol conformance.
    static var id: String {
        let baseID = name.kebabCased()

        guard baseID != "light" && baseID != "dark" else {
            return baseID
        }

        switch colorScheme {
        case .light: return baseID + "-light"
        case .dark: return baseID + "-dark"
        default: return baseID
        }
    }
}

extension Theme {
    /// The appearance mode this theme represents
    var colorScheme: ColorScheme {
        Self.colorScheme
    }
}
