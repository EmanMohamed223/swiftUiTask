//
//  ImageView.swift
//  HelloSwiftUiwithnocore
//
//  Created by Eman on 06/02/2023.
//

import SwiftUI

struct ImageView: View {
    var img : String
    var body: some View {
        Image(img)
            .resizable()
            .frame(width:300 ,height: 300)
            .clipShape(Circle())
          //  .shadow(radius: )
    }
}

struct ImageView_Previews: PreviewProvider {
    static var previews: some View {
        ImageView(img: "park")
    }
}
