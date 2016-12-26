# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create! username: "admin", email: "admin@email.com", address: "số 4, Giang Văn Minh, Hà Nội", phone_number: "(04) 375 496 555",
  password: "123456", password_confirmation: "123456",  role: :admin
User.create! username: "Bùi Khánh Huyền", email: "buikhanhhuyen@gmail.com", address: "số 20 tổ 10 Mỗ Lao, Hà Đông, Hà Nội",
  phone_number: "0962516899",
  password: "123456", password_confirmation: "123456"
User.create! username: "Nguyễn Minh Anh", email: "nguyenminhanh@gmail.com", address: "số 27 ngõ 95 Bạch Mai, quận Hai Bà Trưng, Hà Nội",
  phone_number: "0125874569",
  password: "123456", password_confirmation: "123456"
User.create! username: "Trần Anh Tú", email: "trananhtu@gmail.com", address: "số 32 Phan Bội Châu, quận Hoàn Kiếm, Hà Nội",
  phone_number: "0943569874",
  password: "123456", password_confirmation: "123456"
User.create! username: "Lê Thị Thu", email: "lethithu@gmail.com", address: "số 67 ngách 23/59 Vũ Phạm Hàm, Hà Nội",
  phone_number: "0985236999",
  password: "123456", password_confirmation: "123456"
User.create! username: "Trần Quang Chiến", email: "tranquangchien@gmail.com", address: "số 24 ngõ 67 Thái Hà, Hà Nội",
  phone_number: "0123456789",
  password: "123456", password_confirmation: "123456"
User.create! username: "Bùi Trần Minh", email: "buitranminh@gmail.com", address: "Phòng 507 CT5 Skyline, Nguỵ Như Kom Tum, Hà Nội",
  phone_number: "0985412698",
  password: "123456", password_confirmation: "123456"
User.create! username: "Lê Văn Chiến", email: "levanchien@gmail.com", address: "số 305 đường Xuân Thuỷ, quận Cầu Giấy, Hà Nội",
  phone_number: "0974512698",
  password: "123456", password_confirmation: "123456"
User.create! username: "Đặng Thị Xuân", email: "dangthixuan@gmail.com", address: "số 56 ngõ 72, Tôn Thất Tùng, Hà Nội",
  phone_number: "0959784125",
  password: "123456", password_confirmation: "123456"
User.create! username: "Nguyễn Văn Sơn", email: "nguyenvanson@gmail.com", address: "LK 10.2 khu đô thị Yên Hoà, Cầu Giấy, Hà Nội",
  phone_number: "0932158789",
  password: "123456", password_confirmation: "123456"
User.create! username: "Lê Thu Hồng", email: "lethuhong@gmail.com", address: "số 78 đường Láng, quận Cầu Giấy, Hà Nội",
  phone_number: "0915487596",
  password: "123456", password_confirmation: "123456"

# (1..50).each do |i|
#   User.create! username: "user-#{i}", email: "user-#{i}@email.com", address: Faker::Address.street_address,
#     phone_number: Faker::PhoneNumber.phone_number,
#     password: "123456", password_confirmation: "123456"
# end

Category.create! title: "Du lịch trong nước", description: "Du lịch trong nước luôn là lựa chọn tuyệt vời. Đường bờ biển dài hơn 3260km, những khu bảo tồn thiên nhiên tuyệt vời, những thành phố nhộn nhịp, những di tích lịch sử hào hùng, nền văn hóa độc đáo và hấp dẫn, cùng một danh sách dài những món ăn ngon nhất thế giới, Việt Nam có tất cả những điều đó. Với lịch trình dày, khởi hành đúng thời gian cam kết, My Tour là công ty lữ hành uy tín nhất hiện nay tại Việt Nam, luôn sẵn sàng phục vụ du khách mọi lúc, mọi nơi, đảm bảo tính chuyên nghiệp và chất lượng dịch vụ tốt nhất thị trường."
Category.create! title: "Du lịch nước ngoài", description: "My Tour là công ty lữ hành số 1 Việt Nam, chuyên tổ chức các tour du lịch nước ngoài, với gần 1.000 tuyến khắp 5 châu. Bạn sẽ có dịp khám phá những miền đất mới tại các nước Đông Nam Á, Châu Á, châu Âu, Úc, Mỹ, hay khám phá những vùng đất Châu Phi xa xôi... Với lịch trình dày, khởi hành đúng thời gian cam kết, My Tour là công ty lữ hành uy tín nhất hiện nay tại Việt Nam, luôn sẵn sàng phục vụ du khách mọi lúc, mọi nơi, đảm bảo tính chuyên nghiệp và chất lượng dịch vụ tốt nhất thị trường."
Category.create! title: "Du lịch ngắn ngày", description: "Du lịch ngắn ngày luôn là lựa chọn tuyệt vời dành cho các gia đình trong các dịp nghỉ lễ ngắn ngày như Giáng Sinh, năm mới... Với những tour có độ dài từ 2-3 ngày, thậm chí là cả những chuyến đi picnic trong ngày nhưng cũng giúp cho du khách có những trải nghiệm thú vị và khó quên."
Category.create! title: "Du lịch dài ngày", description: "Du lịch dài ngày là lựa chọn thông minh và tuyệt vời dành cho các kì nghỉ dài ngày như nghỉ hè, nghỉ Tết Âm Lịch. My Tour cung cấp các chuyến đi dài ngày với lộ trình hấp dẫn giúp du khách có thể khám phá vẻ đẹp tuyệt vời của nơi đến cũng như có những trải nghiệm cực kỳ thú vị. Đồng thời, du khách khi đăng ký các tour dài ngày có thêm nhiều chương trình khuyến mại giúp du khách tiết kiệm hơn."

Discount.create! name: "Happy Christmas", percent: "20",
  description: "Cùng với không khí chào đón Giáng sinh 2016, My Tour đặc biệt đưa ra chương trình khuyến mại - Happy Christmas - với chiết khấu lên tới 20% và không phụ thu các dịch vụ giá trị gia tăng. Hãy đặt tour ngay hôm nay để tận hưởng không khí Giáng sinh an lành cùng gia đình và người thân.",
  start_date: "10/12/2016", end_date: "05/01/2017"

Discount.create! name: "Happy New Year", percent: "25",
  description: "Cùng với không khí chào đón năm mới 2017, My Tour đặc biệt đưa ra chương trình khuyến mại - Happy New Year - với chiết khấu lên tới 25% và không phụ thu các dịch vụ giá trị gia tăng. Hãy đặt tour ngay hôm nay để tận hưởng không khí năm mới sum vầy cùng gia đình và người thân.",
  start_date: "25/12/2016", end_date: "25/01/2017"

Discount.create! name: "Family for Year", percent: "35",
  description: "Cùng với không khí chào đón năm mới 2017, My Tour đặc biệt đưa ra chương trình khuyến mại - Happy New Year - với chiết khấu lên tới 25% và không phụ thu các dịch vụ giá trị gia tăng. Hãy đặt tour ngay hôm nay để tận hưởng không khí năm mới sum vầy cùng gia đình và người thân.",
  start_date: "15/01/2017", end_date: "15/02/2017"

Discount.create! name: "Valentine", percent: "15",
  description: "Cùng với không khí ngọt ngào ngày lễ Tình nhân 2017, My Tour đặc biệt đưa ra chương trình khuyến mại - Valentine - với chiết khấu lên tới 15% và không phụ thu các dịch vụ giá trị gia tăng. Hãy đặt tour ngay hôm nay để tận hưởng trải nghiệm ngọt ngào và đáng nhớ cùng với người thương.",
  start_date: "01/02/2017", end_date: "30/02/2017"

Place.create! name: "Hà Nội", description: "Hà Nội là thủ đô, đồng thời cũng là một trung tâm chính trị, văn hóa và du lịch quan trọng của Việt Nam.Hà Nội là thủ đô lâu đời và tháng 10 năm 2010 sẽ kỷ niệm 1000 năm Thăng Long. Hà Nội nằm ở hai bên bờ của con sông Hồng, cách thành phố Hồ Chí Minh 1760 km. Hà Nội nằm trong vùng châu thổ sông Hồng thuộc vùng đồng bằng Bắc Bộ, phía Bắc giáp Thái Nguyên và Vĩnh Phúc; phía Nam giáp Hà Nam và Hòa Bình; phía Đông giáp các tỉnh Bắc Giang, Bắc Ninh và Hưng Yên; phía Tây giáp tỉnh Hòa Bình và tỉnh Phú Thọ. Hà Nội có quá trình lịch sử lâu dài, nhiều công trình văn hóa kiến trúc, di tích lịch sử nổi tiếng. Hà Nội là điểm thu hút du khách quốc tế lớn nhất ở Việt Nam bởi dáng vẻ cổ kính, trầm mặc, thanh lịch và vẻ đẹp tiềm ẩn ở thành phố ngàn năm văn hiến này... "
Place.create! name: "TP Hồ Chí Minh", description: "TP Hồ Chí Minh là trung tâm kinh tế, chính trị và văn hóa lớn nhất ở miền Nam Việt Nam. Sài Gòn – TP.HCM cũng là một trung tâm du lịch lớn, với các di tích lịch sử và bảo tàng ghi lại dấu ấn thời chiến tranh chống Pháp và Mỹ. Tiêu biểu là hệ thống 11 bảo tàng trong đó nổi tiếng nhất là Bảo tàng chứng tích chiến tranh. Bên cạnh đó, các công trình kiến trúc thời thuộc địa cũng làm mãn nhãn du khách khi du lịch Sài Gòn, như Trụ sở Ủy Ban Nhân Dân Thành phố, Nhà hát lớn, Bưu điện trung tâm, Bến Nhà Rồng, Chợ Bến Thành và Dinh Độc Lập. Gần đây, các công trình mới như Diamond Plaza, Bitexco Financial Tower, Saigon Trade Center cũng làm đẹp thêm cảnh quan khu trung tâm thành phố. Ở vùng ngoại vi thành phố cũng có những điểm tham quan nổi bật như Địa đạo Củ Chi, Rừng ngập mặn Cần Giờ và Vườn Cò Thủ Đức."
Place.create! name: "Sapa", description: "Nằm ở phía tây bắc của Tổ quốc, Sa Pa là một huyện vùng cao của tỉnh Lào Cai, một vùng đất khiêm nhường, lặng lẽ nhưng ẩn chứa bao điều kỳ diệu của cảnh sắc thiên nhiên. Phong cảnh thiên nhiên của Sa Pa được kết hợp với sức sáng tạo của con người cùng với địa hình của núi đồi, màu xanh của rừng, như bức tranh có sự sắp xếp theo một bố cục hài hoà tạo nên một vùng có nhiều cảnh sắc thơ mộng hấp dẫn. Chìm trong làn mây bồng bềnh thị trấn Sa Pa như một thành phố trong sương huyền ảo, vẽ lên một bức tranh sơn thủy hữu tình. Nơi đây, có thứ tài nguyên vô giá đó là khí hậu trong lành mát mẻ, mang nhiều sắc thái đa dạng. Nằm ở độ cao trung bình 1500m – 1800m, nên khí hậu Sa Pa ít nhiều lại mang sắc thái của xứ ôn đới, với nhiệt độ trung bình 15-18°C. Từ tháng 5 đến tháng 8 có mưa nhiều. Sa Pa tên gọi này từ tiếng quan thoại. Tiếng quan thoại gọi Sa - Pả, “Sa” là cát, “Pả” là bãi. Địa danh của “bãi cát” này ở bên phải cầu km 32 từ Lào Cai vào Sa Pa. Ngày xưa chưa có thị trấn Sa Pa, cư dân ở vùng đất này đều họp chợ ở “bãi cát” đó. Do vậy, dân địa phương ai cũng nói là “đi chợ Sa Pả”. Từ hai chữ “Sa Pa”, người Phương Tây phát âm không có dấu, nên thành Sa Pa và họ đã viết bằng chữ Pháp hai chữ đó là “Cha Pa” và một thời gian rất lâu người ta đều gọi “Cha Pa” theo nghĩa của từ tiếng Việt. Còn thị trấn Sa Pa ngày nay, trước có một mạch nước đùn lên đục đỏ, nên dân địa phương gọi là “Hùng Hồ”, “Hùng” là đỏ, “Hồ” là hà, là suối, suối đỏ. Sa Pa có đỉnh Phan Si Păng cao 3.143m trên dãy Hoàng Liên Sơn. Gọi Hoàng Liên Sơn, bởi duy nhất trên dãy núi này có cây Hoàng Liên, một loại dược liệu quý, hiếm. Ngoài ra dãy Hoàng Liên còn là “mỏ” của loài gỗ quý như thông dầu, của bao chim thú, như gà gô, gấu, khỉ, sơn dương và của hàng ngàn loại thuốc. Khu rừng quốc gia Hoàng Liên Sơn có 136 loài chim, có 56 loài thú, 553 loài côn trùng. Có 37 loài thú được ghi trong “sách đỏ Việt Nam. Rừng Hoàng Liên Sơn có 864 loài thực vật, trong đó có 173 loài cây thuốc."
Place.create! name: "Đà Nẵng", description: "Đà Nẵng là một thành phố biển nằm ở miền Trung Việt Nam, có vị trí gần như là trung tâm khoảng cách giữa thủ đô Hà Nội và TP Hồ Chí Minh. Sở hữu rất nhiều cảnh quan thiên nhiên đa dạng, Đà Nẵng không chỉ thu hút du khách với bãi biển dài hơn 60 km, được tạp chí Forbes của Mỹ bình chọn là 1 trong 6 bãi biển quyến rũ nhất hành tinh, mà còn có rất nhiều cảnh quan ấn tượng như bán đảo Sơn Trà, khu du lịch Bà Nà Hills, danh thắng Ngũ Hành Sơn… Ngoài ra Đà Nẵng còn là trung tâm của 3 di sản văn hóa nổi tiếng thế giới là Cố đô Huế, phố cổ Hội An và thánh địa Mỹ Sơn. Không chỉ hấp dẫn với cảnh quan thiên nhiên xinh đẹp, Đà Nẵng còn là một thành phố đáng sống bởi sự trong lành và yên bình nơi đây. Thành phố rất an ninh trật tự, không có người lang thang xin ăn, không có người nghiện ma túy trong cộng đồng và hiếm khi xảy ra tình trạng kẹt xe. Đó là lý do mà bạn có thể hoàn toàn an tâm đến du lịch Đà Nẵng và thoải mái khi lang thang khám phá khắp thành phố này."
Place.create! name: "Đà Lạt", description: "Tọa lạc trên trung tâm cao nguyên, Đà Lạt là nơi thư giãn thật sự lý tưởng giành cho khách du lịch. Khu vực đồi núi nghỉ dưỡng của người Pháp thời xưa chỉ cách phía Bắc Sài Gòn chừng 300 Km. Đây là một nơi tuyệt vời giúp du khách thoát khỏi cái oi bức nóng nực của vùng đồng bằng Nam Bộ. Nằm ở độ cao 1500 m so với mực nước biển, Đà Lạt có khí hậu ôn đới mát lạnh so với các vùng thấp. Ngoài những danh lam thắng cảnh xinh đẹp, du khách còn có thể tham quan Cung điện Mùa hè với những kiến trúc và thiết kế mang tính nghệ thuật từ thời vua Bảo Đại, vị vua cuối cùng của nước Việt Nam. Bên cạnh đó, Hồ Xuân Hương, và chợ trung tâm Đà Lạt luôn sôi động và náo nhiệt chờ đón du khách."
Place.create! name: "Kyoto", description: "Kyoto là một thành phố nằm ở vùng Kinki. Có lẽ vì có nhiều kiến trúc mang giá trị lịch sử nên có rất nhiều người xem những hình ảnh đặc trưng của Kyoto như Cổng Torii đỏ của đền thờ Fushimi-Inari-taisha, vũ đài lớn ở chùa Kiyomizu-dera, Con đường xuyên rừng trúc (Bamboo Street) ở núi Arashiyama là những hình ảnh gợi đến một đất nước Nhật Bản. Không chỉ có các tòa nhà mà Kyoto còn có nhiều sản phẩm thủ công mỹ nghệ truyền thống, các điệu múa truyền thống, bánh kẹo và món ăn thuần Nhật. Kyoto là vùng đất tuyệt vời dành cho những vị khách du lịch muốn thưởng thức văn hóa truyền thống Nhật Bản với các địa điểm như Bảo tàng thủ công mỹ nghệ truyền thống Kyoto, Bảo tàng mỹ thuật đời sống Nishijin, Tomida-ya. Thời điểm lý tưởng để tham quan Kyoto là vào mùa thu lá đỏ và mùa hè khi có tổ chức lễ hội Gion Matsuri. Điểm tham quan không thể bỏ lỡ vào mùa thu là Chùa Jojakko-ji, Chùa Nisonin, Chùa Renge-ji. Lễ hội Gion Matsuri – một trong 3 lễ hội lớn của Nhật Bản, là lễ hội có bề dày lịch sử hơn 1000 năm. Lễ hội kéo dài trong suốt 1 tháng, và trong thời gian diễn ra lễ hội, trên khắp Kyoto diễn ra rất nhiều sự kiện thú vị. Kyoto vào mùa đông nhiệt độ giảm thấp và có tuyết rơi nên trước khi đến tham quan nên lưu ý thông tin về thời tiết và chuẩn bị trang phục cho phù hợp. Nội thành Kyoto có mạng lưới tàu điện và xe buýt rất thuận lợi. Phía Nam thành phố Kyoto hiện tại trước kia có kinh đô nên người ta đã cho làm các con đường cắt nhau ngang dọc, do đó, chỉ cần biết phương hướng sẽ rất dễ dàng để nhớ đường. Nằm tiếp giáp với phủ Osaka và tỉnh Nara, tỉnh Shiga nên từ Kyoto có thể dễ dàng đi đến các địa điểm khác thuộc vùng Kinki."
Place.create! name: "Tokyo", description: "Là thủ đô của đất nước Nhật Bản, Tokyo là một trong những thành phố lớn nhất, hiện đại và đông đúc nhất thế giới. Trong tiếng Nhật, Tokyo có nghĩa là thủ đô ở phía đông. Nói đến Tokyo chúng ta không thể không nhắc đến 2 người có công thành lập và xây dựng một Tokyo huy hoàng và hiện đại như ngày nay. Người đầu tiên là Tướng quân Tokugawa Ieyasu, người đã xây dựng, và thiết lập Tokyo như là một căn cứ với tên là Edo. Và người thứ hai chính là Thiên hoàng Minh Trị, người đã chọn Tokyo làm thủ đô và xây dựng nơi đây trở thành một trung tâm kinh tế, chính trị, văn hóa của Nhật Bản. Với hơn 12 triệu dân sinh sống, Tokyo là một trong những thành phố đông dân cư nhất thế giới. Nhịp sống ở Tokyo là không bao giờ ngừng lại, bạn có thể nhìn thấy tàu ra vào suốt đêm ngày ở ga Shinjuky, hay từng dòng, từng dòng người đi lại trên các đại lộ, các con đường của Tokyo. Nơi đây là một trong những địa điểm tập trung của những công ty hàng đầu thế giới, những thành tựu khoa học kĩ thuật mới nhất. Tuy hiện đại , nhưng Tokyo vẫn không đánh mất những giá trị truyền thống độc đáo của mình. Sự hấp dẫn, nổi tiếng của Tokyo không chỉ là những tòa nhà trọc trời với khu trung tâm mua sắm sầm uất, mà còn là những ngôi đền, những tượng phật vĩ đại và góp phần không nhỏ để làm nên một bản sắc riêng của Tokyo còn là phong cách ẩm thực. Dù cho bị chiến tranh tàn phá đến hơn 80% nhưng Tokyo vẫn giữ được những đia điểm, bản sắc của người dân Nhật Bản. Du khách có thể hoàn toàn hài lòng khi được đắm mình trong sự hòa quyện độc đáo giữa hiện đại và truyền thống tại Tokyo."
Place.create! name: "Bangkok", description: "Bangkok - một thành phố náo nhiệt, trung tâm mua sắm sầm uất nhất của Thái Lan. Du lịch Bangkok, quý khách không thể không ghé Pratunam – nơi được mệnh danh là thiên đường của hàng giá rẻ; City Complex – một trung tâm mua sắm chuyên cung cấp những mặt hàng phục vụ chị em như quần áo, túi xách, mỹ phẩm và trang sức; trung tâm Platinum Fashion Mall, Pantip Plaza – “ông hoàng” của những trung tâm điện máy… Khám phá Bangkok, quý khách cũng không thể bỏ qua các con phố ăn vặt ở Bangkok như Yaowarat nổi tiếng nhất với những món Thái truyền thống hay món Thái – Trung; Con phố nhỏ Sukhumvit Soi 38 bày bán đầy đủ các món ăn đường phố đặc sắc của Thái; chợ Sam Yan nổi tiếng với các món nướng, chiên, rán và thịt giá rẻ; Bangkok còn nổi tiếng với những ngôi chùa cổ như chùa Wat Saket, hay còn gọi là chùa Núi Vàng (Golden Mount), một trong những ngôi chùa cổ nhất tại Bangkok…"
Place.create! name: "Paris", description: "Paris là thành phố thủ đô của nước Pháp, cũng là trung tâm hành chính của vùng Île-de-France. Nằm ở phía Bắc nước Pháp, khu vực trung tâm của châu Âu, Paris được xây dựng hai bên bờ sông Seine với tâm là đảo Île de la Cité. Đây cũng là nơi hợp lưu của sông Seine và sông Marne. Paris nằm ở điểm gặp nhau của các hành trình thương mại đường bộ và đường sông, và là trung tâm của một vùng nông nghiệp giầu có. Vào thế kỷ X, Paris đã là một trong những thành phố chính của Pháp cùng các cung điện hoàng gia, các tu viện và nhà thờ. Từ thế kỷ XII, Paris trở thành một trong những trung tâm của châu Âu về giáo dục và nghệ thuật. Thế kỷ XIV, Paris là thành phố quan trọng bậc nhất của Cơ Đốc giáo và trong các thế kỷ XVI, XVII, đây là nơi diễn ra Cách mạng Pháp cùng nhiều sự kiện lịch sử quan trọng của Pháp và châu Âu. Đến thế kỷ XIX và XX, thành phố trở thành một trong những trung tâm văn hóa của thế giới, thủ đô của nghệ thuật và giải trí. Nổi tiếng với tên gọi Kinh đô ánh sáng, Paris là một trung tâm văn hóa lớn của thế giới và cũng là một trong những thành phố du lịch thu hút nhất. Sự nhộn nhịp, các công trình kiến trúc và không khí nghệ sĩ đã giúp Paris mỗi năm có đến 30 triệu khách nước ngoài. Thành phố còn được xem như kinh đô của thời trang cao cấp với nhiều khu phố xa xỉ cùng các trung tâm thương mại lớn. Là nơi đặt trụ sở chính của các tổ chức quốc tế như OECD, UNESCO... cộng với những hoạt động đa dạng về tài chính, kinh doanh, chính trị và du lịch đã khiến Paris trở thành một trong những trung tâm trung chuyển lớn nhất trên thế giới và được coi như một trong bốn thành phố toàn cầu cùng với New York, London, Tokyo."
Place.create! name: "New Yorks", description: "New York (phiên âm tiếng Việt: Nữu Ước) tên chính thức City of New York, là thành phố đông dân nhất tại Hoa Kỳ và trung tâm của Vùng đô thị New York, một trong những vùng đô thị đông dân nhất trên thế giới. Với vai trò là một thành phố toàn cầu tiên phong, New York có một tầm ảnh hưởng mạnh mẽ đối với thương mại, tài chính, văn hóa, thời trang và giải trí toàn cầu. Là nơi Liên Hiệp Quốc đặt tổng hành dinh nên nó cũng là một trung tâm quan trọng về các vấn đề quốc tế. Thành phố thường được gọi là New York City (Thành phố New York) để phân biệt với tiểu bang New York. Nằm trên một bến cảng thiên nhiên lớn thuộc duyên hải Đại Tây Dương của Đông Bắc Hoa Kỳ, thành phố gồm có năm quận: The Bronx, Brooklyn, Manhattan, Queens, và Đảo Staten. Dân số thành phố được ước tính vào năm 2007 khoảng trên 8,3 triệu người, với một diện tích đất là 789,4 km² (304,8 mi²). Dân số Vùng đô thị New York được ước tính là 18,8 triệu người trên diện tích 17.405 km² (6.720 dặm vuông Anh). Đây cũng là vùng đô thị đông dân nhất Hoa Kỳ."

# 20.times {
#   Place.create! name: Faker::Address.city, description: Faker::Lorem.paragraph
# }

Tour.create! name: "Hà Nội - Sapa",
  category_id: "1", start_place_id: "1", end_place_id: "3", price: "8500000",
  currency: "vnd", start_date: "01/01/2017", end_date: "06/01/2017", discount_id: "2",
  min_visitors: "5", max_visitors: "12", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "Hà Nội - Đà Nẵng",
  category_id: "1", start_place_id: "1", end_place_id: "4", price: "12500000",
  currency: "vnd", start_date: "01/01/2017", end_date: "06/01/2017", discount_id: "2",
  min_visitors: "4", max_visitors: "12", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "Hà Nội - Đà Lạt",
  category_id: "3", start_place_id: "1", end_place_id: "5", price: "7500000",
  currency: "vnd", start_date: "28/12/2016", end_date: "02/01/2017", discount_id: "1",
  min_visitors: "8", max_visitors: "15", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao, homestay",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "Hà Nội - Bangkok",
  category_id: "2", start_place_id: "1", end_place_id: "7", price: "25500000",
  currency: "vnd", start_date: "15/01/2017", end_date: "23/01/2017", discount_id: "3",
  min_visitors: "5", max_visitors: "10", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "Hà Nội - Tokyo",
  category_id: "2", start_place_id: "1", end_place_id: "3", price: "8500000",
  currency: "vnd", start_date: "01/01/2017", end_date: "06/01/2017", discount_id: "2",
  min_visitors: "5", max_visitors: "12", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "Hà Nội - New Yorks",
  category_id: "4", start_place_id: "1", end_place_id: "10", price: "48000000",
  currency: "vnd", start_date: "28/01/2017", end_date: "06/02/2017", discount_id: "",
  min_visitors: "5", max_visitors: "9", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "TP Hồ Chí Minh - Đà Nẵng",
  category_id: "2", start_place_id: "2", end_place_id: "4", price: "4500000",
  currency: "vnd", start_date: "01/02/2017", end_date: "04/02/2017", discount_id: "3",
  min_visitors: "5", max_visitors: "12", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"

Tour.create! name: "TP Hồ Chí Minh - Bangkok",
  category_id: "2", start_place_id: "2", end_place_id: "4", price: "25000000",
  currency: "vnd", start_date: "15/03/2017", end_date: "20/03/2017", discount_id: "4",
  min_visitors: "7", max_visitors: "15", meals: "Bữa ăn kèm theo chương trình (2 bữa: sáng và tối)",
  accommodation: "Nghỉ tại nhà khách, khách sạn 3 sao",
  transport: "Ôtô đưa đón giữa các địa điểm.",
  additional_services: "Tiền vé máy bay, tip cho hướng dẫn viên, tiền vé vào cửa tại các điểm tham quan"


# 20.times {
#   Tour.create! name: Faker::Name.title,
#     category_id: rand(3) + 1, start_place_id: rand(29) + 1, end_place_id: rand(29) + 1, price: rand(500..2000),
#     currency: :usd, start_date: Faker::Time.between(DateTime.now + 2, DateTime.now + 4), end_date: Faker::Time.between(DateTime.now + 9, DateTime.now + 12), discount_id: rand(4) + 1,
#     min_visitors: rand(3) + 5, max_visitors: rand(8) + 5, meals: Faker::Lorem.paragraph,
#     accommodation: Faker::Lorem.paragraph,
#     transport: Faker::Lorem.paragraph,
#     additional_services: Faker::Lorem.paragraph
# }
