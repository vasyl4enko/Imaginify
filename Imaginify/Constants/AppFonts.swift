//
//  AppFonts.swift
//  Imaginify
//
//  Created by Oleksandr on 28.06.2023.
//
import SwiftUI
enum AppFont: String {
    case plusJakartaSansBold = "PlusJakartaSans-Bold"
    case plusJakartaSansMedium = "PlusJakartaSans-Medium"
    case plusJakartaSansSemiBold =  "PlusJakartaSans-SemiBold"
    case poppinsSemiBold = "Poppins-SemiBold"
}

public class FontTemplate {
    private var id: UUID
    public var font: Font
    public var weight: Font.Weight
//    public var foregroundColor: Color
    public var italic: Bool
    public var lineSpacing: CGFloat
    public init(font: Font,
                weight: Font.Weight,
//                foregroundColor: Color,
                italic: Bool = false,
                lineSpacing: CGFloat = 10.0) {
        self.id = UUID()
        self.font = font
        self.weight = weight
//        self.foregroundColor = foregroundColor
        self.italic = italic
        self.lineSpacing = lineSpacing
    }
}

struct FontTemplateModifier: ViewModifier {
    let template: FontTemplate
    init(template: FontTemplate) {
        self.template = template
    }
    func body(content: Content) -> some View {
        content
            .font(template.font
                    .weight(template.weight)
                    .italic(template.italic))
            .lineSpacing(template.lineSpacing)
    }
}

struct AppFontTemplate {
    // MARK: Poppins
    static let h2 = FontTemplate(font: Font.custom(AppFont.poppinsSemiBold.rawValue, size: 40),
                                 weight: .bold,
                                 lineSpacing: 48)
    // MARK: Plus Jakarta Sans
}

extension Font {
    public func italic(_ value: Bool) -> Font {
        return value ? self.italic() : self
    }
}
