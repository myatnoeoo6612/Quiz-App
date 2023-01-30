class Question {
  final int? id, ansewer;
  final String? question;
  final List<String>? options;

  Question({this.id, this.question, this.ansewer, this.options});
}

const List sample_data = [
  {
    "id": 1,
    "question":
        "Flutter is an open-source UI software development kit create by _____",
    "option": ['Apple', 'Google', 'Facebook', 'Microsoft'],
    "answer_index": 1,
  },
  {
    "id": 2,
    "question":
        "When google release Fluter.",
    "option": ['January 2017', 'June 2017', 'May 2017', 'May 2018'],
    "answer_index": 2,
  },
  {
    "id": 3,
    "question":
        "A memory location that holds a single leter or number.",
    "option": ['Double', 'Int', 'Char', 'Word'],
    "answer_index": 2,
  },
  {
    "id": 4,
    "question":
        "What command do you use to output data to the screen?",
    "option": ['Cin', 'Cout>>', 'Cout', 'Output>>'],
    "answer_index": 2,
  },
];