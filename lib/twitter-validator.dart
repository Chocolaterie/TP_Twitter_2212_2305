class TwitterValidator {

  static String? validateEmail (String? value){
    // Erreur : Email 3 caracteres
    if (value!.length < 4){
      return "L'email doit avoir au moins 4 caractères";
    }

    // Erreur : Regex
    final bool emailValid =
    RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value);
    if(!emailValid) {
      return "Le format de l'email est incorrecte";
    }

    return null;
  }

  static String? validatePassword (String? value){
    // Erreur : Mot de passe 6 caracteres
    if (value!.length < 6){
      return "Le mot de passe doit avoir au moins 6 caractères";
    }

    return null;
  }
}