// ignore: non_constant_identifier_names
double Score = 0;
// ignore: non_constant_identifier_names
ReponseChoix(int indexQuestion, int indexReponse) {
  if (indexQuestion == 0) {
    if (indexReponse == 2) {
      Score += (1 / 6);
    }
  } else if (indexQuestion == 1) {
    if (indexReponse == 0) {
      Score += (1 / 6);
    }
  } else if (indexQuestion == 2) {
    if (indexReponse == 0) {
      Score += (1 / 6);
    }
  } else if (indexQuestion == 3) {
    if (indexReponse == 3) {
      Score += (1 / 6);
    }
  } else if (indexQuestion == 4) {
    if (indexReponse == 2) {
      Score += (1 / 6);
    }
  } else if (indexQuestion == 5) {
    if (indexReponse == 0) {
      Score += (1 / 6);
    }
  }
}
