class ProductValidator {

  String validateImages(List images){
    if(images.isEmpty) return "Adicione pelo menos uma imagem";
    return null;
  }

  String validateTitle (String text){
    if(text.isEmpty) {
      return "Preencha o título do produto";
    }else if(text.length > 21){
      return "Título deve ter no máximo 21 caracteres";
    }
    return null;
  }

  String validateDescription (String text){
    if(text.isEmpty) return "Preencha a descrição do produto";
    return null;
  }

  String validatePrice (String text){
    double price = double.tryParse(text);
    if(price != null){
      if(!text.contains(".") || text.split(".")[1].length != 2)
        return "Utilize 2 casas decímais";
    }else {
      return "Preço inválido";
    }
    return null;
  }


}