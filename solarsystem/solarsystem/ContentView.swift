//
//  ContentView.swift
//  solarsystem
//
//  Created by AHMAD BARIZIE SIROJUL ILMI on 10/16/20.
//

import SwiftUI
import SceneKit

struct ContentView: View {
    var body: some View {
        
        Home()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
                
// Home View...

struct Home : View{
    
    @State var models = [
        
        Model(id: 0, name: "Matahari", modelName: "Sun.usdz", details: "Matahari ini merupakan bintang yang menjadi pusat dari tata surya. Matahari tersebut berupa bola pijar yang ukurannya itu sangat besar. Matahari tersebut dapat dikatakan yakni sebagai bintang disebabkan karna mempunyai energi cahaya sendiri. Cahaya matahari ini juga terlihat lebih cemerlang apabila dibandingkan dengan cahaya bintang lainnya. Matahari ini adalah bintang yang terdekat dari bumi. Matahari ini juga disebut sebagai pusat tata surya disebabkan karna memiliki gaya gravitasi yang tinggi. Hal tersebutlah menyebabkan matahari ini dikelilingi oleh planet-planet serta benda langit yang terdapat di dalam tatanan tata surya. Pada tata surya 98 % massa tata surya tersebut terkumpul pada matahari."),
        
        Model(id: 0, name: "Merkurius", modelName: "Mercury.usdz", details: "Planet Merkurius merupakan salah satu planet yang termasuk dalam sistem tata suya. Setelah planet Pluto tidak disahkan menjadi sebuah planet, planet merkurius menjadi planet yang paling kecil dalam sistem tata surya. Merkurius juga merupakan anak pertama yang terdekat dengan matahari. Karena jaraknya yang sangat dekat dengan matahari membuat masa revolusinya hanya selama 88 hari saja namun masa rotasinya cukup lama dibandingkan dengan bumi hanya berkisar 59 hari saja. planet merkurius ini bisa dilihat dari bumi pada saat subuh atau pada saat magrib saja karena sudut pandangnya dengan matahari sangat kecil dimana memang planet merukirus memang memiliki rentangan paling jauh sebesar 28,3 derajat."),
        
        Model(id: 0, name: "Venus", modelName: "Venus.usdz", details: "Planet Venus merupakan planet kedua setelah planet Merkurius yang memiliki jarak terdekat dengan matahari. Planet Venus tidak memiliki satelit seperti bumi, namun planet Venus menjadi planet paling terang setelah matahari dan bintang. Bentuk dari planet Venus mirip dengan Bumi dengan sebagian orang menganggap bahwa Venus merupakan kembaran dari Bumi. Dikarenakan bentuk, komposisi planet, dan gravitasi yang mirip dengan planet Bumi. Namun dalam kenyataannya Venus dengan Bumi adalah planet yang berbeda.Venus memiliki tekanan atmosfer lebih besar dari bumi yaitu 92 kali lipat. Planet Venus memiliki orbit mengelilingi matahari selama 224,7 hari (satuan pada planet Bumi). Planet Venus menjadi planet ter panas dalam tata surya karena memiliki suhu sekitar 735 Derajat Kelvin. Venus diselimuti oleh lapisan buram yang menjadikan bagian permukaan Planet Venus tidak terlihat di ruang angkasa. Lapisan buram yang menyelimuti Planet Venus disebabkan karena kandungan Karbon Dioksida sebesar 96,5% dan kandungan Nitrogen sebesar 3,5%. Planet Venus dikabarkan pernah memiliki samudra, namun karena suhu yang sangat panas pada Venus mengakibatkan air samudra menguap dan juga akibat dari efek rumah kaca. Planet Venus ini pula digunakan oleh orang-orang Suku Maya menjadi penanda waktu dan juga sistem kalender. Namun semenjak pengetahuan teknologi semakin maju, Planet Venus kini tak lagi menjadi bahan penelitian, karena diyakini tidak adanya kehidupan suhu pada Planet Venus juga sangat panas. Jadi para peneliti lebih meneliti tentang Planet Mars atau Planet Jupiter."),
        
        Model(id: 0, name: "Bumi", modelName: "Earth.usdz", details: "Bumi, merupakan salah satu planet di tata suya yang juga berpusat pada matahari. Sama dengan planet yang lain, Bumi juga melakukan revolusi bumi dan juga rotas sumi. Bumi menduduki posisi ketiga (jarak dari matahari) setelah planet Merkurius dan planet Venus. Mengenai Bumi sendiri, saya yakin pasti semua orang telah mengenal dengan baik, karena bumi sendiri merupakan rumah dimana manusia (kita) tinggal.Bumi merupakan planet yang paling istimewa. Dikatakan paling istimewa karena planet bumi merupakan satu- satunya planet yang cocok untuk dihuni makhluk hidup. Bukan hanya manusia, namun juga binatang dan tumbuh- tumbuhan. Suhu udara di Bumi tidak panas, namun juga tidak dingin. Bumi mendapatkan perlindungan dari atmosfer, sehingga suhu di bumi tidak terlalu panas, namun hangat. Karena letaknya yang tidak terlalu jauh dengan matahari, maka Bumi juga memperoleh sinar matahari cukup, sehingga mendukung proses kehidupan makhluk hidup. Selain perihal suhu dan juga kecukupan sinar matahari, yang membuat bumi menjadi planet istimewa adalah ketersediaan air sebagai salah satu sumber daya yang paling vital bagi makhluk hidup. Tanpa adanya jenis air,  manusia, binatang dan tumbuh- tumbuhan tidak akan bisa bertahan hidup lama. Planet- planet yang lain hanya mempunyai ketersediaan air yang terbatas. Sementara Bumi mempunyai air yang melimpah yang mempunyai siklus. Sehingga sebanyak apapun air yang digunakan, ketersediaannya tetaplah mencukupi. Inilah yang membuat makhluk hidup dapat bertahan hidup di Bumi."),
        
        Model(id: 0, name: "Mars", modelName: "Mars.usdz", details: "Mars adalah planet terdekat keempat dari Matahari. Namanya diambil dari nama Dewa Yunani kuno untuk perang. Namun planet ini juga dikenal sebagai planet merah karena penampakannya yang kemerah-merahan. Lingkungan Mars lebih bersahabat bagi kehidupan dibandingkan keadaan Planet Venus. Namun begitu, keadaannya tidak cukup ideal untuk manusia. Suhu udara yang cukup rendah dan tekanan udara yang rendah, ditambah dengan komposisi udara yang sebagian besar karbondioksida, menyebabkan manusia harus menggunakan alat bantu pernapasan jika ingin tinggal di sana. Misi-misi ke planet merah ini, sampai penghujung abad ke-20, belum menemukan jejak kehidupan di sana, meskipun yang amat sederhana."),
        
        Model(id: 0, name: "Jupiter", modelName: "Jupiter.usdz", details: "Planet yang biasa disebut planet jovian atau planet luar selain planet Yupiter adalah planet uranus, planet neptunium dan planet saturnus. Planet Yupiter sudah benyak dikenal oleh ahli astronom sejak zaman kuno. Dan planet Yupiter ini sering dikaitkan dengan kepercayaan religius oleh banyak peradaban. Oleh karena itu, Bangsa Romawi menamai planet ini dari nama dewa Yupiter dalam mitologi Romawi. Dalam keadaan tertentu, kita bisa mengamati Yupiter dari Bumi. Ketika kita mengamati planet jupiter kita bisa melihat kecerahannya mencapai -2,94, sehingga cukup terang dan bisa menghasilkan bayangan. Planet Yupiter bisa dikatakan sebagai benda langit tercerah ketiga setelah Bulan dan Planet venus. Tetapi, meskipun Planet mars mampu menyaingi kecerahan Yupiter pada keadaan tertentu, Planet raksasa ini tetap menempati posisi ketiga sebagai benda langit tercerah di Tata Surya. Planet Yupiter terdiri dari sebagian besar unsur hidrogen dan helium. Seperempat massa Planet Yupiter merupakan hellium, meskipun jumlah helium hanya sepersepuluh komposisi Yupiter. Selanjutnya kita akan mengkaji permukaan planet jupiter. Planet Yupiter memiliki inti yang kemungkinan adalah bebatuan padat dari unsur – unsur berat. Meskipun memiliki inti bebatuan, namun permukaan planet Yupiter tidak padat seperti planet – planet yang lainnya. Dalam foto yang saya kutip dan saya lihat dari ensiklopedia, Citra Planet Yupiter memiliki warna kecoklatan dan putih serta bintik – bintik merah. Dalam foto yang saya lihat, tampak titik hitam kecil yang ternyata adalah bayangan dari satelit planet jupiter. Satelit alami planet Yupiter ini dinamakan dengan nama Europa. Penemuan satelit Europa ini ditemukan oleh Galileo pada tahun 1610. Tentu saja, satelit ini sama seperti satelit planet yang lainnya selalu mengorbit terhadap planet Yupiter. Karena rotasinya yang cepat, Planet Yupiter ini secara visual tampak bulat pepat. Tidak hanya itu, Planet Yupiter memiliki tonjolan di sekitar khatulistiwa nya Planet Yupiter. Untuk masalah atmosfer jupiter, Atmosfer luar di Planet Yupiter ini terbagi menjadi beberapa lapisan di lintang Yupiter yang berbeda. Jadi, setiap lapisan atmosfer di Yupiter ini tidak seluruhnya sama seperti atmosfer di Bumi. Nah, perbedaan lapisan atmosfer di Yupiter inilah yang menyebabkan adanya Badai. Salah satu Badai yang tampak pada abad ke 17 adalah berwarna bintik merah. Pengamatan tersebut menggunakan teleskop. Di sekeliling Planet Yupiter terdapat cincin yang tipis serta terdapat magnetosfer yang kuat. Apa itu magnetosfer ? Magnetosfer adalah lapisan medan magnet yang menyelubungi benda angkasa, salah satunya adalah planet. Selain Bumi, ternyata planet jupiter juga memiliki Magnetosfer yang sangat kuat. Tak hanya satelit alami Europa, tenyata Yupiter memiliki sekitar 67 satelit alami, termasuk satelit yang ditemukan Galileo pada tahun 1610. Planet Yupiter memiliki satelit terbesar yaitu Ganymede, satelit yang memiliki diameter daripada planet Merkurius."),
              
       
        Model(id: 0, name: "Saturnus", modelName: "Saturn.usdz", details: "Saturnus merupakan planet yang terbesar kedua di tata surya setelah Jupiter, oleh karena itu pastilah ukurannya sangat besar dan yang pasti lebih besar daripada Bumi. Planet Saturnus memiliki jari- jari khatulistiwa 9,4492 kali lebih besar daripada planet Bumi. Jika diangkakan, maka diameter khatulistiwa planet saturnus adalah 120.536 kilometer. Sementara itu diameter yang dihitung dari kutub utara ke kutub selatan sekitar 108.728 kilometer. Luas permukaan planet Saturnus adalah 83,703 kali lebih besar daripada planet Bumi. Sementara volume planet Saturnus adalah 763,59 kali lebih besar daripada Bumi. Nah, tentu sudah terbayang betapa besarnya planet ini bukan? Ada keunikan lain yang dimiliki oleh planet saturnus. Planet saturnus merupakan satu- satunya planet di tata surya yang memiliki massa jenis lebih sedikit daripada air. Meskipun inti planet saturnus memiliki massa jenis yang lebih besar daripada air, namun planet saturnus memiliki atmosfer  yang mengandung gas sehingga massa jenis relatif yang dimiliki planet ini sebesar 0,69 g/cmᵌ. Dengan demikian, apabila planet saturnus berada di kolam yang penuh air, maka dia akan mengapung."),
        
        Model(id: 0, name: "Uranus", modelName: "Uranus.usdz", details: "Uranus ditemukan oleh William Herschel pada th. 1782 bersama dengan perlindungan teleskop di kebun belakang rumahnya di Bath, Inggris. Planet ini merupakan tidak benar satu planet yang jauh berasal dari Matahari. Terdiri atas gas utama yang berwujud hidrogen, metana, dan helium, serta mempunyai kandungan es. Keadaan ini mengakibatkan Uranus dingin dan beku. Jarak umumnya Uranus berasal dari matahari adalah 2.870.000.000 km dan mengelilingi matahari dalam satu kali lintasan selama 84,01 tahun. Uranus membawa diameter kira-kira 50.100 km pada ekuator dan kepadatannya kita-kira seperempat kepadatan bumi. Uranus berotasi di sekeliling sumbunya sekali tiap tiap 24 jam. Uranus hampir-hampir tidak sanggup diamati bersama dengan mata telanjang pada malam hari tanpa bulan. Melalui teleskop, planet itu tampak sebagai cakram yang bewarna hijau laut. Suhu maksimum permukaan planet itu adalah 180oC. Uranus punya atmosfer yang amat tipis, yang terdiri atas amonia dan metana.Uranus membawa satelit yang berputar mengelilinginya dalam bidang datar equator planet, di antaranya adalah Miranda, Ariel, Umbriel, Titania, dan Oberon. Pada th. 1977 pada ahli menemukan 5 buah cincin, dan saat ini udah ditemukan tersedia 15 buah cincin yang mengelilingi planet ini. Kelimabelas cincin itu tipis dan sempit berukuran pada 9 hingga 100 km dan bewarna gelap. Berbeda bersama dengan planet lainnya, Uranus punya poros yang sejajar bersama dengan orbitnya agar kutubnya lebih panas berasal dari sisi lainnya. Temperatur permukaannya meraih –210oC. Atmosfernya mempunyai kandungan hidrogen, helium, dan metana. Uranus punya sembilan cincin dan lima satelit, yaitu Oberon, Tirtania, Umbriel, Ariel, dan Miranda."),
        
        Model(id: 0, name: "Neptunus", modelName: "Neptune.usdz", details: "Neptunus adalah planet terjauh (kedelapan) jika ditinjau dari Matahari. Planet ini dinamai dari dewa lautan Romawi. Neptunus merupakan planet terbesar keempat berdasarkan diameter (49.530 km) dan terbesar ketiga berdasarkan massa. Massa Neptunus tercatat 17 kali lebih besar daripada Bumi, dan sedikit lebih besar daripada Uranus. Neptunus mengorbit Matahari pada jarak 30,1 SAatau sekitar 4.450 juta km. Periode rotasi planet ini adalah 16,1 jam, sedangkan periode revolusinya adalah 164,8 tahun. Simbol astronomisnya adalah ♆, yang merupakan trident dewa Neptunus. Neptunus ditemukan pada tanggal 23 September 1846. Planet ini merupakan planet pertama yang ditemukan melalui prediksi matematika. Perubahan yang tak terduga di orbit Uranus membuatAlexis Bouvard menyimpulkan bahwa hal tersebut diakibatkan oleh gangguan gravitasi dari planet yang tak dikenal. Neptunus selanjutnya diamati oleh Johann Galle dalam posisi yang diprediksikan oleh Urbain Le Verrier. Satelit alam terbesarnya, Triton, ditemukan segera sesudahnya, sementara 12 satelit alam lainnya baru ditemukan lewat teleskop pada abad ke-20. Neptunus telah dikunjungi oleh satu wahana angkasa, yaitu Voyager 2, yang terbang melewati planet tersebut pada tanggal 25 Agustus 1989."),
        
        ]
    
        @State var index = 0

        var body: some View{
            
            VStack{
                
                //Scene kit Scene View...
                
                //default is first object ie: Earth....
                
                //scene View has a default camera view...
                //if you need custom means add there...
                
                SceneView(scene: SCNScene(named: models[index].modelName), options: [.autoenablesDefaultLighting,.allowsCameraControl])
                
                //for user action
                //setting custom frame..
                    .frame(width: UIScreen.main.bounds.width , height: UIScreen.main.bounds.height / 2)
                
                Spacer(minLength: 0)
                
                ZStack{
                    
                    //forward and backward button...
                    
                    HStack{
                        
                        Button(action: {
                            
                            withAnimation{
                                
                                if index > 0{
                                    
                                    index -= 1
                                }
                            }
                            
                        }, label: {
                            
                            Image(systemName: "chevron.left")
                                .font(.system(size: 35, weight: .bold))
                                .foregroundColor(.white)
                                .opacity(index == 0 ? 0.3 : 1 )
                        })
                        .disabled(index == 0 ? true : false )
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                            withAnimation{
                                
                                if index < models.count{
                                    
                                    index += 1
                                }
                            }
                            
                        }, label: {
                            
                            Image(systemName: "chevron.right")
                                .font(.system(size: 35, weight: .bold))
                            //disabling button when no other data...
                                .opacity(index == models.count - 1 ? 0.3 : 1 )
                        })
                        .disabled(index == models.count - 1 ? true : false )
                    }
                    
                    Text(models[index].name)
                        .font(.system(size: 40, weight: .bold))
                }
             
                .foregroundColor(.white)
                .padding(.horizontal)
                .padding(.vertical,30)
                
                //details
                
                VStack(alignment: .leading, spacing: 20, content: {
                    
                    Text("Yuk dibaca!")
                        .font(.title2)
                        .fontWeight(.bold)
                    
                    ScrollView {
                        VStack {
                            Text(models[index].details)
                                .fixedSize(horizontal: false, vertical: true)
                        }
                            
                            }
                                HStack {
                                    Image("Image4")
                                        .resizable()
                                        .scaledToFill()
                                        .frame(width: 45, height: 50)
                                        .clipShape(Circle())
                                        .shadow(radius: 4)

                    }
            })
            .padding(.horizontal)
                
                Spacer(minLength: 0)
            }
            
            
        }
    }

//data model...

struct Model : Identifiable {
    
    var id : Int
    var name : String
    var modelName : String
    var details : String
    
}



