class SampleCode{
  String CodeCategory;
  List<Questions> question;

  SampleCode({this.question,this.CodeCategory});

  factory SampleCode.fromJson(Map<String,dynamic> json) {
    return SampleCode(
        CodeCategory: json['CodeCategory'],
      question: parseQuestions(json)
    );
  }

  static List<Questions> parseQuestions(QuestionsJson) {
    var list = QuestionsJson['Questions'] as List;
    List<Questions> questionlist = list.map((data) => Questions.fromJson(data)).toList();
    return questionlist;
  }
}

class Questions {
  String Question;
  String Code;
  String Output;

  Questions({this.Output,this.Code,this.Question});

  factory Questions.fromJson(Map<String,dynamic> parsejson){
    return Questions(Output: parsejson['Output'],Code: parsejson['Code'],Question: parsejson['Question']);
  }
}

