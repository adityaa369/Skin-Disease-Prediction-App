import 'package:flutter/material.dart';

class Vitiligo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Vitiligo Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
              title: 'Description',
              content: 'Vitiligo is a skin condition characterized by the loss of pigmentation, resulting in white or depigmented patches on the skin. These patches can occur anywhere on the body and can vary in size. Vitiligo is not painful, contagious, or life-threatening, but it can have a significant impact on a persons self-esteem and body image.'
            ),
            BlogSection(
                title: 'Causes of Vitiligo',
                content:
                'Autoimmune Response: In many cases, vitiligo is thought to be an autoimmune disorder, where the immune system mistakenly attacks and destroys melanocytes, the cells responsible for producing pigment in the skin.'

            'Genetics: Family history may play a role in the development of vitiligo, as some individuals with a family history of the condition are at higher risk.'

                'Environmental Triggers: Certain environmental factors, such as sunburn, exposure to chemicals, or emotional stress, may trigger or worsen the condition in susceptible individuals.'
            ),
            BlogSection(
                title: 'Preventing for Vitiligo',
                content: 'Sun Protection: Since vitiligo-affected skin is more sensitive to sunburn, individuals with vitiligo should use sunscreen and wear protective clothing when exposed to the sun.'

                'Manage Stress: Reducing stress through techniques like relaxation, meditation, or therapy may help in preventing the worsening of vitiligo.'

            'Avoiding Trauma: Skin trauma, like cuts and burns, can trigger the development of new vitiligo patches. Avoiding such injuries is essential.'
            ),
            BlogSection(
                title: 'Remedies',
                content:
                'Topical Corticosteroids: These are creams or ointments that can help repigment the skin by reducing inflammation.'

            'Topical Calcineurin Inhibitors: These medications can be used for sensitive areas like the face and neck to stimulate repigmentation.'

            'Narrowband UVB Therapy: This involves exposing the skin to specific wavelengths of ultraviolet B light, which can stimulate melanocyte activity.'

            'Microskin and Tattooing: Specialized cosmetics or tattooing can be used to camouflage depigmented areas.'

                'Oral Medications: In some cases, oral medications like corticosteroids or immunomodulators may be prescribed to slow the progression of vitiligo.'

            'Surgery: Surgical options like grafting or melanocyte transplantation may be considered for stable cases of vitiligo.'
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
