//
//  BottomSheetView.swift
//  WeTrade
//
//  Created by Felipe Joglar on 25/4/22.
//

import SwiftUI

/// Bottom Sheet based on https://swiftwithmajid.com/2019/12/11/building-bottom-sheet-in-swiftui/
/// Complete source: https://gist.github.com/mecid/78eab34d05498d6c60ae0f162bfd81ee
struct BottomSheetView<Header: View, Content: View>: View {
    @Binding private var isOpen: Bool
    
    private let maxHeight: CGFloat
    private let minHeight: CGFloat
    private let header: Header
    private let content: Content
    
    @GestureState private var translation: CGFloat = 0
    
    private let viewDidExpand: (() -> Void)?
    private let viewDidCollapse: (() -> Void)?
    
    private let SNAP_RATIO: CGFloat = 0.25
    private var offset: CGFloat {
        isOpen ? 0 : maxHeight - minHeight
    }
    
    init(
        isOpen: Binding<Bool>,
        maxHeight: CGFloat,
        minHeight: CGFloat = 80,
        onCollapsed: (() -> Void)? = nil,
        onExpanded: (() -> Void)? = nil,
        @ViewBuilder headerView: () -> Header,
        @ViewBuilder content: () -> Content
    ) {
        self.minHeight = minHeight
        self.maxHeight = maxHeight
        self.viewDidExpand = onExpanded
        self.viewDidCollapse = onCollapsed
        self.header = headerView()
        self.content = content()
        self._isOpen = isOpen
    }
    
    var body: some View {
        GeometryReader { geometry in
            VStack(spacing: 0) {
                self.header
                    .contentShape(Rectangle())
                    .onTapGesture {
                        self.isOpen.toggle()
                    }
                self.content
            }
            .frame(width: geometry.size.width, height: self.maxHeight, alignment: .top)
            .background(Theme.colors.surface)
            .frame(height: geometry.size.height, alignment: .bottom)
            .offset(y: max(self.offset + self.translation, 0))
            .animation(.interactiveSpring())
            .gesture(
                DragGesture().updating(self.$translation) { value, state, _ in
                    state = value.translation.height
                }.onEnded { value in
                    let snapDistance = self.maxHeight * self.SNAP_RATIO
                    guard abs(value.translation.height) > snapDistance else {
                        return
                    }
                    self.isOpen = value.translation.height < 0
                }
            )
            .onChange(of: self.isOpen) { isOpen in
                if isOpen {
                    self.viewDidExpand?()
                } else {
                    self.viewDidCollapse?()
                }
            }
        }
    }
}

struct BottomSheetView_Previews: PreviewProvider {
    static var previews: some View {
        GeometryReader { geometry in
            BottomSheetView(
                isOpen: .constant(false),
                maxHeight: geometry.size.height,
                headerView: { StockHeaderView() },
                content: { StocksView(stocks: Repository.stocks) }
            )
        }
        GeometryReader { geometry in
            BottomSheetView(
                isOpen: .constant(false),
                maxHeight: geometry.size.height,
                headerView: { StockHeaderView() },
                content: { StocksView(stocks: Repository.stocks) }
            )
        }
        .preferredColorScheme(.dark)
    }
}
