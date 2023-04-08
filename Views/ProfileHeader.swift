
import SwiftUI

struct ProfileHeader: View {
    
    let user: User
    
    var body: some View {
        HStack {
            Image(user.userImage)
                .resizable()
                .frame(width: 120, height: 120, alignment: .center)
                .cornerRadius(60)
                .clipped()
                .padding()
            Spacer()
            
            VStack {
                Text("205")
                    .font(Font.system(size: 16, weight: .bold))
                Text("Posts")
                    .font(Font.system(size: 14, weight: .medium))
            }
            Spacer()

            VStack {
                Text("364")
                    .font(Font.system(size: 16, weight: .bold))
                Text("Followers")
                    .font(Font.system(size: 14, weight: .medium))
            }
            Spacer()

            VStack {
                Text("358")
                    .font(Font.system(size: 16, weight: .bold))
                Text("Following")
                    .font(Font.system(size: 14, weight: .medium))
            }
            Spacer()
        }

        HStack {
            Text("SRM'26")
                .font(.caption)
                .padding(.horizontal)
            Spacer()
        }
        
    }
}

struct ProfileHeader_Previews: PreviewProvider {
    static var previews: some View {
        ProfileHeader(user: User(userName: "kritikadhuper", userImage: "sample_post"))
    }
}
