// ignore: non_constant_identifier_names
get_score_message(double score) {
  if (score < 0.4) {
    return "Vous devez en apprendre plus";
  }
  if (score >= 0.4 && score < 0.7) {
    return "Vous pouvez mieux faire";
  }
  if (score >= 0.7) {
    return "Vous avez bien repondu à toutes les questions";
  }
}
