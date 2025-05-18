enum FromWho { me, hers } //esto es para saber si hablo yo o la otra persona

class Message {
  //creo una clase mensaje que puede ser un texto una imagen  y que me indica quien la envio
  final String text;
  final String? imageUrl;
  final FromWho fromWho;

  Message({
    //creo el constructor
    required this.text,
    this.imageUrl,
    required this.fromWho,
  });
}
