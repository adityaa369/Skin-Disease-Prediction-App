import 'package:flutter/material.dart';

class Scabies extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Scabies Blog'),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            BlogSection(
                title: 'Description',
                content: 'Scabies is a contagious skin infestation caused by the Sarcoptes scabiei mite. This microscopic parasite burrows into the top layer of the skin, where it lays eggs and triggers an allergic response that leads to intense itching and a rash. Scabies is a common skin condition that affects people of all ages and backgrounds worldwide. It is often transmitted through close personal contact, such as holding hands or sexual activity, but can also spread via contaminated bedding, clothing, or furniture.'
            ),
            BlogSection(
                title: 'Causes of Scabies',
                content: 'Direct Skin-to-Skin Contact: The most common mode of transmission is through close physical contact with an infected person. This can include activities like hugging, holding hands, or sexual contact.'

                'Indirect Transmission: Scabies mites can survive away from the human body for a short period. They may be passed through sharing infested bedding, towels, or clothing.'

                'Outbreaks: In crowded environments, such as nursing homes or childcare facilities, scabies can spread rapidly.'
            ),
            BlogSection(
                title: 'Preventing for Scabies',
                content: 'Maintain Personal Hygiene: Regularly wash your hands and body with soap and water, and keep your nails trimmed.'

                'Avoid Close Contact: If someone in your household has scabies, avoid close physical contact until they have been treated and are no longer contagious.'

            'Launder Bedding and Clothing: Wash bedding, towels, and clothing in hot water and dry them on high heat if someone in the household has scabies.'

            'Isolate Infected Individuals: Those diagnosed with scabies should be treated promptly and avoid contact with others until they are no longer contagious.'

            'Inform Close Contacts: Let people you have been in close contact with know if you are diagnosed with scabies so they can take precautions.'
            ),
            BlogSection(
                title: 'Remedies',
                content: 'Prescription Medications: Doctors often prescribe topical creams or lotions that contain permethrin or ivermectin. These medications should be applied to the entire body and left on for a specified time.'

                'Oral Medications: In some cases, oral medications like ivermectin may be prescribed.'

            'Antihistamines: These can help alleviate itching and discomfort associated with scabies.'

            'Steroid Creams: In severe cases, corticosteroid creams may be recommended to reduce inflammation and itching.'

            'Environmental Measures: Clean and disinfect your home, including bedding and clothing. Vacuum carpets and upholstery, and discard or isolate items that cant be washed.'
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
