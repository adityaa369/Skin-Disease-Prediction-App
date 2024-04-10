import 'package:flutter/material.dart';

class Atopic extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Atopic Dermatitis Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
                title: 'Description',
                content: "Atopic dermatitis, often referred to as eczema, is a chronic skin condition characterized by inflammation and irritation of the skin. It is a common skin disorder that primarily affects children but can persist into adulthood. Atopic dermatitis typically presents as red, itchy, and dry patches on the skin, which can be both uncomfortable and unsightly. These symptoms can vary in severity, and in severe cases, the skin may become cracked, weeping, and prone to infection."
            ),
            BlogSection(
                title: 'Causes of Atopic Dermatitis',
                content: "Genetics: Atopic dermatitis tends to run in families, suggesting a genetic component. If one or both parents have a history of atopic conditions (asthma, eczema, or allergic rhinitis), a child is more likely to develop atopic dermatitis."

                'Immune System Dysfunction: The immune system in individuals with atopic dermatitis tends to overreact to triggers, leading to inflammation and skin irritation.'

            'Environmental Factors: Certain environmental factors can exacerbate the condition. These may include exposure to allergens, irritants, harsh weather, and stress.'

            ),
            BlogSection(
                title: 'Preventing for Atopic Dermatitis',
                content:
                'While atopic dermatitis cannot always be completely prevented, there are steps you can take to reduce the risk of developing or exacerbating the condition:'

            'Hydration: Keep the skin well-moisturized with hypoallergenic, fragrance-free creams or ointments. This helps to strengthen the skins natural barrier.'

            'Avoid Triggers: Identify and avoid triggers that worsen your symptoms. These can include certain foods, pet dander, or specific skincare products.'

               ' Gentle Cleansing: Use mild, fragrance-free cleansers when washing the affected areas, and avoid hot water, which can strip the skin of natural oils.'

            'Manage Stress: Stress can worsen atopic dermatitis symptoms. Employ stress-reduction techniques such as mindfulness, meditation, or yoga.'

                'Allergen Management: If you have known allergens, such as dust mites or pollen, make efforts to reduce exposure, particularly in your sleeping environment.'

                'Proper Clothing: Wear soft, breathable, and natural fabrics like cotton to reduce skin irritation.'

            ),
            BlogSection(
                title: 'Remedies',
                content:
                'Topical Steroids: These are the mainstay of treatment and can help reduce inflammation and itching. They should be used under the guidance of a healthcare professional.'

            'Emollients: Use moisturizers to keep the skin hydrated, which can prevent flare-ups and reduce itching.'

            'Antihistamines: Over-the-counter or prescription antihistamines can help alleviate itching and improve sleep.'

            'Wet Wrap Therapy: In severe cases, wet wrap therapy, where you apply a moisturizer and then wrap the skin, can provide relief.'

            'Avoid Scratching: Its essential to resist the urge to scratch, as this can exacerbate the condition. Keep nails short and consider wearing soft gloves at night.'

            'Prescription Medications: In severe cases, a dermatologist may prescribe immunosuppressant drugs or other treatments.'
            ),
          ],
        ),
      ),
    );
  }
}

class BlogSection extends StatelessWidget {
  final String title;
  final String content;

  BlogSection({
    required this.title,
    required this.content,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Text(
          title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        SizedBox(height: 8),
        Text(content),
        Divider(),
      ],
    );
  }
}
