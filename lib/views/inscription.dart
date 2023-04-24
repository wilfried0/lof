import 'package:flutter/material.dart';
import 'package:lof/components/custom_button.dart';
import 'package:lof/components/shared.dart';
import 'package:lof/utils/colors.dart';
import 'package:lof/utils/dimens.dart';

class Inscription extends StatefulWidget {
  const Inscription({Key? key}) : super(key: key);

  @override
  State<Inscription> createState() => _InscriptionState();
}

class _InscriptionState extends State<Inscription> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: LofColors.bg,
      //appBar: AppBar(elevation: 0.0, backgroundColor: LofColors.bg),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 60.0, 20.0, 20),
          child: Column(
            children: [
              title("Rejoindre LOF Mobile"),
              SizedBox(height: 5,),
              subTitle("Inscrire son groupe/association à l'ODYSSEE FINALE et bénéficier de ses avantages"),
              SizedBox(height: 20,),
              SizedBox(
                height: 150,
                width: 170,
                child: Image.asset("assets/images/logo.png")),
              SizedBox(height: 5,),
              Card(
                elevation: 8,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(10))
                ),
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      label("Téléphone"),
                      SizedBox(height: 5,),
                      _buildFieldPhone(),

                      SizedBox(height: 15,),

                      label("Mot de passe"),
                      SizedBox(height: 5,),
                      _buildFieldPassword(),

                      SizedBox(height: 15,),

                      label("Confirmer le mot de passe"),
                      SizedBox(height: 5,),
                      _buildFieldConfirmPassword(),

                      SizedBox(height: 25,),
                      CustomButton(
                        onPressed: () => null,
                        title: "S'INSCRIRE"
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20,),
              RichText(
                textAlign: TextAlign.center,
                text: TextSpan(
                  text: 'En vous inscrivant vous acceptez nos ',
                  style: TextStyle(color: LofColors.subTitle, fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Quicksand'),
                  children: [
                    TextSpan(text: 'CGU ',
                      style: TextStyle(color: LofColors.vert, fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Quicksand'),),
                    TextSpan(text: 'et notre ',
                      style: TextStyle(color: LofColors.subTitle, fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Quicksand'),),
                    TextSpan(text: 'Politique de Confidentialité',
                      style: TextStyle(color: LofColors.vert, fontWeight: FontWeight.w500, fontSize: 15, fontFamily: 'Quicksand'),)
                  ]
                )
              )
            ],
          ),
        ),
      ),
    );
  }

  _buildFieldPhone() => Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: LofDimens.fielHeight,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: LofColors.bleu, width: 1.5)
    ),
    child: Row(
      children: [
        Container(
            height: LofDimens.fielHeight,
            width: LofDimens.fielHeight,
            color: LofColors.bleu,
            child: Icon(Icons.phone, color: LofColors.blanc, size: 30,)),
        SizedBox(width: 10,),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration.collapsed(
                hintText: "Numéro de téléphone",
                hintStyle: TextStyle(
                    color: LofColors.hint,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
        ),
      ],
    ),
  );

  _buildFieldPassword() => Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: LofDimens.fielHeight,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: LofColors.bleu, width: 1.5)
    ),
    child: Row(
      children: [
        Container(
            height: LofDimens.fielHeight,
            width: LofDimens.fielHeight,
            color: LofColors.bleu,
            child: Icon(Icons.lock, color: LofColors.blanc, size: 30,)),
        SizedBox(width: 10,),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration.collapsed(
                hintText: "Mot de passe",
                hintStyle: TextStyle(
                    color: LofColors.hint,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
        ),
      ],
    ),
  );

  _buildFieldConfirmPassword() => Container(
    alignment: Alignment.center,
    width: MediaQuery.of(context).size.width,
    height: LofDimens.fielHeight,
    decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(5)),
        border: Border.all(color: LofColors.bleu, width: 1.5)
    ),
    child: Row(
      children: [
        Container(
            height: LofDimens.fielHeight,
            width: LofDimens.fielHeight,
            color: LofColors.bleu,
            child: Icon(Icons.lock, color: LofColors.blanc, size: 30,)),
        SizedBox(width: 10,),
        Expanded(
          child: TextFormField(
            decoration: InputDecoration.collapsed(
                hintText: "Confirmer le mot de passe",
                hintStyle: TextStyle(
                    color: LofColors.hint,
                    fontSize: 15,
                    fontWeight: FontWeight.w500
                )
            ),
          ),
        ),
      ],
    ),
  );
}
