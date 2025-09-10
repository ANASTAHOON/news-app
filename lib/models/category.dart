import 'package:news_app/const.dart';

class Category {
  final String title;
  final String image;

  Category({required this.title, required this.image});
}

List<Category> categories = [
  Category(title: "Sports", image: "https://i.pinimg.com/1200x/48/49/ba/4849ba2ea6517f805785071120cccc08.jpg"),
  Category(title: "Business", image: "https://images.pexels.com/photos/955395/pexels-photo-955395.jpeg"),
  Category(title: "Entertainment", image: "https://images.pexels.com/photos/1190297/pexels-photo-1190297.jpeg"),
  Category(title: "General", image: "https://images.pexels.com/photos/25070447/pexels-photo-25070447.jpeg"),
  Category(title: "Health", image: "https://images.pexels.com/photos/40568/medical-appointment-doctor-healthcare-40568.jpeg"),
  Category(title: "Technology", image: "https://images.pexels.com/photos/546819/pexels-photo-546819.jpeg"),
];

class News {
  final String title;
  final String description;
  final String image;

  News({required this.title, required this.description, required this.image});
}

Map<String, List<News>> categoryNews = {
  "Business": [
    News(title: "Stock Market Soars", description: "Markets hit new highs amid economic recovery. This surge is attributed to positive earnings reports and favorable economic data from major indices.", image: "https://images.pexels.com/photos/5716001/pexels-photo-5716001.jpeg"),
    News(title: "Tech Giant Merger", description: "Two major companies announce merger. The deal is expected to reshape the industry landscape and create new opportunities for innovation and growth.", image: "https://images.pexels.com/photos/9951677/pexels-photo-9951677.jpeg"),
    News(title: "Inflation Concerns", description: "Economists warn about rising prices. Recent data shows inflation rates climbing, prompting discussions on potential interest rate adjustments by central banks.", image: "https://images.pexels.com/photos/7680373/pexels-photo-7680373.jpeg"),
    News(title: "Startup Funding Boom", description: "Venture capital investments reach record levels. Startups in tech and biotech sectors are seeing unprecedented funding rounds amid investor optimism.", image: "https://images.pexels.com/photos/7413891/pexels-photo-7413891.jpeg"),
    News(title: "Corporate Earnings Report", description: "Quarterly results exceed expectations. Many companies report higher than anticipated profits, boosting stock prices and market confidence.", image: "https://images.pexels.com/photos/3811082/pexels-photo-3811082.jpeg"),
  ],
  "Entertainment": [
    News(title: "New Movie Release", description: "Blockbuster hits theaters this weekend. The highly anticipated film features A-list stars and is projected to break box office records.", image: "https://images.pexels.com/photos/69206/pexels-photo-69206.jpeg"),
    News(title: "Celebrity Wedding", description: "Hollywood stars tie the knot. The lavish ceremony was attended by numerous celebrities and featured in major entertainment magazines.", image: "https://images.pexels.com/photos/11957072/pexels-photo-11957072.jpeg"),
    News(title: "Music Festival Lineup", description: "Major festival announces headliners. The event promises a diverse lineup and exciting performances.", image: "https://images.pexels.com/photos/167636/pexels-photo-167636.jpeg"),
    News(title: "TV Show Renewal", description: "Popular series gets another season. Fans are thrilled with the continuation of the critically acclaimed show.", image: "https://images.pexels.com/photos/4668516/pexels-photo-4668516.jpeg"),
    News(title: "Award Show Highlights", description: "Stars shine at annual awards. Memorable moments include surprising wins and emotional speeches.", image: "https://images.pexels.com/photos/3326684/pexels-photo-3326684.jpeg"),
  ],
  "General": [
    News(title: "Global Summit", description: "World leaders discuss climate change. The summit focuses on sustainable solutions and international cooperation.", image: "https://images.pexels.com/photos/936137/pexels-photo-936137.jpeg"),
    News(title: "Charity Event", description: "Community raises millions for cause. The event brought together thousands for a noble cause.", image: "https://images.pexels.com/photos/3171837/pexels-photo-3171837.jpeg"),
    News(title: "Local Election Results", description: "New mayor elected in tight race. The election saw high voter turnout and intense competition.", image: "https://images.pexels.com/photos/3183186/pexels-photo-3183186.jpeg"),
    News(title: "Education Reform", description: "New policies aim to improve schools. The reforms focus on modernizing curricula and teacher training.", image: "https://images.pexels.com/photos/256417/pexels-photo-256417.jpeg"),
    News(title: "Cultural Festival", description: "City celebrates heritage with events. The festival showcases local art, music, and food.", image: "https://images.pexels.com/photos/1190298/pexels-photo-1190298.jpeg"),
  ],
  "Health": [
    News(title: "Vaccine Rollout", description: "New vaccine approved for public use. The rollout aims to curb the spread of a major disease.", image: "https://images.pexels.com/photos/5863397/pexels-photo-5863397.jpeg"),
    News(title: "Mental Health Awareness", description: "Campaign promotes mental wellness. Initiatives focus on reducing stigma and providing resources.", image: "https://images.pexels.com/photos/4101143/pexels-photo-4101143.jpeg"),
    News(title: "Breakthrough Treatment", description: "New therapy shows promising results. The treatment could revolutionize care for chronic illnesses.", image: "https://images.pexels.com/photos/139398/pexels-photo-139398.jpeg"),
    News(title: "Fitness Trends", description: "Wearable tech drives fitness boom. New devices help users track and improve their health.", image: "https://images.pexels.com/photos/1552242/pexels-photo-1552242.jpeg"),
    News(title: "Nutrition Study", description: "Research highlights diet benefits. A balanced diet is linked to improved long-term health.", image: "https://images.pexels.com/photos/1640777/pexels-photo-1640777.jpeg"),
  ],
  "Sports": [
    News(title: "Championship Game", description: "Team wins in overtime thriller. The game was a nail-biter with multiple lead changes and dramatic plays.", image: "https://i.pinimg.com/1200x/07/69/19/0769190ad59e414684d23bbec898f022.jpg" , ),
    News(title: "Athlete Retirement", description: "Legend calls it quits after 20 years. The athlete leaves behind a legacy of records and inspirational moments.", image: "https://images.pexels.com/photos/6292444/pexels-photo-6292444.jpeg"),
    News(title: "Olympic Preparations", description: "Athletes train for upcoming games. Intensive training regimens are in place as competitors aim for gold.", image: "https://images.pexels.com/photos/863988/pexels-photo-863988.jpeg"),
    News(title: "Transfer News", description: "Barcelona Real Madrid star Arda Guler opened up on being compared to Barcelona sensation Lamine Yamal as the young midfielder is preparing to take on Spain with Turkey in a 2026 World Cup qualifying game on Sunday. Twenty-year-old Guler, who joined Los Blancos in the summer of 2023, has finally established himself as a first-team starter under new manager Xabi Alonso.", image: "https://i.pinimg.com/736x/52/28/24/5228245a055836937fc3cc413c597af3.jpg"),
    News(title: "Injury Update", description: "Key player returns to lineup. After months of recovery, the player is set to make a comeback.", image: "https://i.pinimg.com/1200x/cc/27/a7/cc27a7a80a3e7e7792445c80f8133422.jpg"),
  ],
  "Technology": [
    News(title: "AI Breakthrough", description: "New model surpasses human intelligence in specific tasks. This development has implications for various industries including healthcare and finance.", image: "https://i.pinimg.com/736x/af/d8/f3/afd8f33d32fc367949575dfccf2014c6.jpg"),
    News(title: "Gadget Review", description: "Latest smartphone impresses critics. Features include advanced camera systems and long battery life.", image: "https://i.pinimg.com/1200x/54/ab/c6/54abc658eb3b61c05f674c9838b3bb79.jpg"),
    News(title: "Cybersecurity Alert", description: "Major breach affects millions. Experts advise immediate password changes and enhanced security measures.", image: "https://i.pinimg.com/1200x/0a/74/ba/0a74bae45bd5a441d8259bd75b8b4abe.jpg"),
    News(title: "5G Expansion", description: "Network coverage reaches rural areas. This expansion bridges the digital divide and enables new technologies.", image: "https://i.pinimg.com/736x/4d/8d/93/4d8d93d27083b2c5e14d6dc8640b5198.jpg"),
    News(title: "VR Advancements", description: "Immersive experiences get more realistic. New hardware and software make virtual worlds indistinguishable from reality.", image: "https://i.pinimg.com/1200x/d8/fd/0b/d8fd0be2f17641cf2633c9c7cc423a91.jpg"),
  ],
};