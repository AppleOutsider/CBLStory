//
//  File.swift
//
//
//  Created by YU WONGEUN on 2023/03/24.
//

import SwiftUI

// MARK: - Border 둥근모서리 ~~~
extension View {
    func border(width: CGFloat, edges: [Edge], color: Color) -> some View {
        overlay(EdgeBorder(width: width, edges: edges).foregroundColor(color))
    }
}

struct EdgeBorder: Shape {

    var width: CGFloat
    var edges: [Edge]

    func path(in rect: CGRect) -> Path {
        var path = Path()
        for edge in edges {
            var x: CGFloat {
                switch edge {
                case .top, .bottom, .leading: return rect.minX
                case .trailing: return rect.maxX - width
                }
            }

            var y: CGFloat {
                switch edge {
                case .top, .leading, .trailing: return rect.minY
                case .bottom: return rect.maxY - width
                }
            }

            var w: CGFloat {
                switch edge {
                case .top, .bottom: return rect.width
                case .leading, .trailing: return self.width
                }
            }

            var h: CGFloat {
                switch edge {
                case .top, .bottom: return self.width
                case .leading, .trailing: return rect.height
                }
            }
            path.addPath(Path(CGRect(x: x, y: y, width: w, height: h)))
        }
        return path
    }
}

// MARK: - 모서리 깎기 2

extension View {
    func cornerRadius(_ radius: CGFloat, corners: UIRectCorner) -> some View {
        clipShape( RoundedCorner(radius: radius, corners: corners) )
    }
}

struct RoundedCorner: Shape {

    var radius: CGFloat = .infinity
    var corners: UIRectCorner = .allCorners

    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect, byRoundingCorners: corners, cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
// MARK: - Shape 모서리 깍기 3....
struct CustomCorner: Shape {
    var radius: CGFloat
    var corners: UIRectCorner
    
    func path(in rect: CGRect) -> Path {
        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: corners,
                                cornerRadii: CGSize(width: radius, height: radius))
        return Path(path.cgPath)
    }
}
// MARK: - Customhidden
extension View {
    @ViewBuilder
    func customHidden(_ isHidden: Bool) -> some View {
        if isHidden {
            self.hidden()
        } else {
            self
        }
    }
}
// MARK: - gradientline
struct GradientLine: View {
    let startPoint: UnitPoint
    let endPoint: UnitPoint
    let colors: [Color]
    
    var body: some View {
        LinearGradient(
            gradient: Gradient(colors: colors),
            startPoint: startPoint,
            endPoint: endPoint
        )
        .frame(height: 2)
    }
}
// MARK: - textView Modifiers
                            
extension View {
    // 이름 text 하얀 수식어
    func textPersonWhite() -> some View {
        self
            .font(.customBold30)
            .foregroundColor(.white)
            .padding(.top , 30)
    }
    // 이름 text 검은 수식어
    func textPersonBlack() -> some View {
        self
            .font(.customBold30)
            .foregroundColor(.black)
            .padding(.top , 30)
    }
    // 대사 text 하얀 수식어
    func textTalkWhite() -> some View {
        self
            .font(.customLight30)
            .foregroundColor(.white)
    }
    // 대사 text 검은 수식어
    func textTalkBlack() -> some View {
        self
            .font(.customLight30)
            .foregroundColor(.black)
    }
    // VStack 내부 사이즈 조절
    func textVStackSize() -> some View {
        self
            .padding()
            .padding(.leading, 40)
            //.padding(.trailing, 600)
            
    }
    // 흰 배경 왼쪽 외부 사이즈 및 설정
    func textWhiteLeft(geo: GeometryProxy) -> some View {
        self
            .background(LinearGradient(gradient: Gradient(colors: [Color.whiteBack.opacity(0.75), Color.whiteBack.opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
            .frame(maxWidth: geo.size.width / 1.1, maxHeight: geo.size.height / 4)
            .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topRight])
            .overlay{
                CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topRight])
                    .stroke(.white, lineWidth: 1.5)
            }
    }
    // 흰 배경 오른쪽 외부 사이즈 및 설정
    func textWhiteRight(geo: GeometryProxy) -> some View {
        self
            .background(LinearGradient(gradient: Gradient(colors: [Color.whiteBack.opacity(0.75), Color.whiteBack.opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
            .frame(maxWidth: geo.size.width / 1.1, maxHeight: geo.size.height / 4)
            .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topLeft])
            .overlay{
                CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topLeft])
                    .stroke(.white, lineWidth: 1.5)
            }
    }
    // 흰 배경 가운데 or 여러명 외부 사이즈 및 설정
    func textWhiteCenter(geo: GeometryProxy) -> some View {
        self
            .background(LinearGradient(gradient: Gradient(colors: [Color.whiteBack.opacity(0.75), Color.whiteBack.opacity(0.5)]), startPoint: .leading, endPoint: .trailing))
            .frame(maxWidth: geo.size.width / 1.1, maxHeight: geo.size.height / 4)
            .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topRight, .topLeft])
            .overlay{
                CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topLeft, .topRight])
                    .stroke(.white, lineWidth: 1.5)
            }
    }
    // 검은 배경 내래이션
    func textBlack(geo: GeometryProxy) -> some View {
        self
            .background(Color.darkBack.opacity(0.5))
            .frame(maxWidth: geo.size.width / 1.1, maxHeight: geo.size.height / 4)
            .cornerRadius(43, corners: [.bottomLeft, .bottomRight, .topRight, .topLeft])
            .overlay{
                CustomCorner(radius: 43, corners: [.bottomLeft, .bottomRight, .topLeft, .topRight])
                    .stroke(.white.opacity(0.5), lineWidth: 1.5)
            }
    }
    // gradient line frame 값
    func gradientFrame(geo: GeometryProxy) -> some View {
        self
            .frame(maxWidth: geo.size.width / 3)
    }
}



