import 'package:flutter/material.dart';

class ContactDermatitis extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Contact Dermatitis Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
                title: 'Description',
                content: 'Contact dermatitis is a common skin condition characterized by inflammation and irritation of the skin resulting from direct contact with certain substances. It can manifest as red, itchy, and sometimes blistering rashes. The severity can vary from mild discomfort to more severe symptoms depending on the individuals sensitivity to the irritant or allergen and the duration of exposure.'
            ),
            BlogSection(
                title: 'Causes of Contact Dermatitis',
                content:
                'Irritants: These are substances that directly damage the skin s outer layer. Common irritants include soaps, detergents, chemicals, and even water, especially when the skin is frequently exposed to wet conditions.'

            'Allergens: Some individuals develop allergic reactions to specific substances. Common allergens include certain metals (e.g., nickel in jewelry), fragrances, latex, and poison ivy.'

      'Occupational Exposures: People working in certain industries, like healthcare, mechanics, or food service, may be at a higher risk due to frequent contact with irritants or allergens in the workplace.'
            ),
            BlogSection(
                title: 'Preventing for Contact Dermatitis',
                content: 'Identify Triggers: Determine which substances trigger your dermatitis and avoid them. This may involve consulting with a dermatologist for allergy testing.'

                'Protective Clothing: When working with irritants or allergens, wear protective clothing like gloves or long-sleeved shirts to minimize skin exposure.'

            'Proper Hygiene: Wash your hands with mild soap and lukewarm water. Avoid using harsh soaps or excessive hand washing, which can exacerbate symptoms.'

            'Moisturize: Apply a hypoallergenic moisturizer regularly to maintain skin barrier function and reduce the risk of irritation.'

            'Avoid Fragrances: Choose fragrance-free personal care products, as fragrances are common allergens.'

            'Patch Testing: If you suspect specific allergens, consult a dermatologist for patch testing to identify the culprits.'
            ),
            BlogSection(
                title: 'Remedies',
                content: 'Topical Steroids: Over-the-counter or prescription-strength topical corticosteroids can help reduce inflammation and itching. Follow your doctors instructions when using them.'

            'Emollients: Apply emollient creams or ointments to hydrate and soothe the skin. Products containing ingredients like ceramides or colloidal oatmeal can be beneficial.'

            'Oral Antihistamines: Non-prescription antihistamines may help alleviate itching and discomfort.'

            'Cold Compress: Applying a cold, damp cloth to the affected area can provide relief from itching and inflammation.'

            'Avoid Scratching: Its essential to refrain from scratching, as it can worsen the condition and lead to potential infection.'

            'Prescription Medications: In severe cases, a doctor may prescribe stronger medications or recommend phototherapy for treatment.'
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
