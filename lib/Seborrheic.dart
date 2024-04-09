import 'package:flutter/material.dart';

class Ser extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Seborrheic Dermatitis Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
                title: 'Description',
                content: 'Seborrheic dermatitis is a common skin condition characterized by red, inflamed, and scaly patches on the skin. It primarily affects areas rich in oil glands, such as the scalp, face, and upper chest, but it can occur anywhere on the body. The condition is often chronic and can be recurrent, with periods of flaring up and remission. It is commonly referred to as dandruff when it affects the scalp and cradle cap in infants.'
            ),
            BlogSection(
                title: 'Causes of Seborrheic Dermatitis',
                content: 'Malassezia: A type of yeast that naturally lives on the skins surface and can overgrow in certain conditions.'
            'Sebaceous Glands: Overproduction of oil from sebaceous glands.'

            'Hormonal Changes: Hormonal fluctuations can play a role, and it often affects adolescents and adults.'
            'Genetics: A family history of seborrheic dermatitis can increase the risk.'

            'Stress: Stress can exacerbate symptoms.'

                'Weather: Cold, dry weather can make the condition worse, while sunlight may improve it in some cases.'
            ),
            BlogSection(
                title: 'Preventing for Seborrheic Dermatitis',
                content: 'Maintain Good Hygiene: Regularly wash your hair and skin with mild, fragrance-free products.'

               ' Limit Hot Water: Avoid hot showers, as hot water can strip the skin of natural oils.'

            'Manage Stress: Find stress-reduction techniques that work for you, such as meditation or exercise.'

            'Diet: Some individuals find that avoiding certain foods, like sugary or greasy items, can help.'

            'Avoid Irritants: Use gentle skincare products and avoid harsh chemicals that can trigger flare-ups.'
            ),
            BlogSection(
                title: 'Remedies',
                content: 'Medicated Shampoos: Over-the-counter shampoos containing ingredients like zinc pyrithione, ketoconazole, or coal tar can help control scalp symptoms.'

                'Topical Creams: Prescription-strength creams or ointments with corticosteroids can reduce inflammation on affected areas of the skin.'

                'Antifungal Medications: In some cases, antifungal medications may be prescribed to target the yeast overgrowth.'

            'Natural Remedies: Natural options like aloe vera, tea tree oil, or apple cider vinegar may provide relief for mild cases.'

            'Moisturizers: Using non-comedogenic moisturizers can help reduce dryness and flakiness.'

            'Lifestyle Changes: Avoid excessive alcohol consumption and maintain a healthy diet and exercise routine to reduce the likelihood of flare-ups.'
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
