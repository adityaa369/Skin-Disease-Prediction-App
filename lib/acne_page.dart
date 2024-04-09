import 'package:flutter/material.dart';

class AcneBlogPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Acne Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
              title: 'Description',
              content: 'Acne, a common skin condition, affects individuals of all ages, causing discomfort and affecting self-esteem. As a dermatology student, its crucial to comprehend the underlying causes of acne and educate your patients on effective prevention and management. In this blog post, we will explore the primary causes of acne and provide valuable tips on prevention and treatment.'
                  'Acne, medically known as acne vulgaris, is a skin condition that occurs when hair follicles become clogged with oil and dead skin cells. This condition typically manifests as blackheads, whiteheads, pimples, and cysts. It mainly affects the face, neck, chest, back, and shoulders, where oil glands are most prominent.',
            ),
            BlogSection(
              title: 'Causes of Acne',
              content: 'Excess Sebum Production: One of the primary causes of acne is the overproduction of sebum, an oily substance produced by the sebaceous glands. When sebum is overproduced, it can clog hair follicles, leading to the formation of pimples.'

                'Clogged Pores: When dead skin cells do not shed properly, they can accumulate in hair follicles and mix with excess sebum. This combination forms a plug that clogs the pore and creates an ideal environment for bacteria to thrive.'

            'Bacterial Infection: Propionibacterium acnes (P. acnes) is a bacterium that resides on the skin. When hair follicles become clogged, this bacterium multiplies and causes inflammation, leading to acne lesions.'

          'Hormonal Fluctuations: Hormonal changes, especially during puberty, pregnancy, and the menstrual cycle, can stimulate the sebaceous glands, leading to increased sebum production. This can trigger or exacerbate acne.'

      'Diet and Lifestyle Factors: Some studies suggest a connection between a high-glycemic diet, dairy consumption, and the development of acne. Stress and certain medications may also play a role.'
            ),
            BlogSection(
              title: 'Preventing for Acne',
              content: 'Cleansing: Encourage daily cleansing with a gentle, non-comedogenic cleanser to remove excess oil, dirt, and makeup. However, avoid over-cleansing, as it can strip the skin of its natural oils.'

                'Moisturizing: Even individuals with oily skin should use a light, non-comedogenic moisturizer to maintain skin hydration.'

                'Sun Protection: Advise patients to use sunscreen daily to protect their skin from UV damage. Some acne medications can increase sensitivity to the sun.'

                'Healthy Diet: Recommend a balanced diet rich in fruits, vegetables, whole grains, and lean proteins. Limit high-glycemic foods and dairy if there is a suspected correlation with acne.'

                'Hydration: Encourage patients to drink plenty of water to maintain skin hydration.'

            'Stress Management: Teach stress-reduction techniques such as yoga, meditation, and exercise, as stress can exacerbate acne.'

            'Avoid Touching and Picking: Stress the importance of not picking or squeezing pimples, as it can worsen inflammation and lead to scarring.'
            ),
            BlogSection(
              title: '',
              content: 'Natural Remedies:'

                'While natural remedies may not work for everyone, some individuals find relief with these methods:'

           ' Tea Tree Oil: Diluted tea tree oil can be applied topically to reduce inflammation and fight bacteria.'

            'Honey and Cinnamon Mask: A mixture of honey and cinnamon can be used as a soothing and antibacterial face mask.'

            'Aloe Vera: Aloe vera gel can calm irritated skin and promote healing. Its especially useful for inflammatory acne.'

            'Green Tea: Green tea contains antioxidants and anti-inflammatory properties. Drinking it can help combat acne.'
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