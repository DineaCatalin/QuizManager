import { Injectable } from '@angular/core';

@Injectable()
export class TranslateService {

  Language:string="en";

  Translations=[
    // Question Page

    {ID:"question-page.lbl.title",
      de:"Fragenliste",
      en:"Question List"},



    {ID:"lbl.Edit",
      de:"Verandern",
      en:"Edit"},

    {ID:"lbl.Delete",
      de:"Löschen",
      en:"Delete"},

    {ID:"lbl.Question",
      de:"Frage",
      en:"Question"},

    {ID:"lbl.Difficulty",
      de:"Schwierigkeit",
      en:"Difficulty"},

    {ID:"lbl.Points",
      de:"Punktenanzahl",
      en:"Points"},

    {ID:"lbl.TotalPoints",
      de:"Totale Punktenanzahl",
      en:"Total points"},

    {ID:"lbl.AveragePoints",
      de:"Durchnittliche Punktenanzahl",
      en:"Average Points"},

    {ID:"lbl.GeneralInfo",
      de:"Allgemeine Informationen",
      en:"General info"},

    {ID:"lbl.Answers",
      de:"Antworten",
      en:"Answers"},

    {ID:"lbl.Language",
      de:"Sprache",
      en:"Language"},

    {ID:"lbl.Login",
      de:"Einloggen",
      en:"Login"},

    {ID:"lbl.True",
      de:"Wahr",
      en:"True"},

    {ID:"lbl.False",
      de:"Falsch",
      en:"False"},

    {ID:"lbl.Answer",
      de:"Antwort",
      en:"Answer"},

    {ID:"lbl.Answers",
      de:"Antworten",
      en:"Answers"},

    {ID:"lbl.ProgrammingLanguage",
      de:"Programmierungssprache",
      en:"Programming Language"},

    {ID:"lbl.Domain",
      de:"Bereich",
      en:"Domain"},

    {ID:"lbl.Technology",
      de:"Technologie",
      en:"Technology"},

    {ID:"lbl.NumberOfCorrectAnswers",
      de:"Anzahl der richtigen Antworten",
      en:"Number of correct answers"},

    {ID:"lbl.SequenceOfCharacters",
      de:"Charakterensequenz",
      en:"Sequence of characters"},


    {ID:"lbl.CaseSensitive",
      de:"Groß-/Kleinschreibung beachten",
      en:"Case-sensitive"},


    {ID:"lbl.SelectDeselectAll",
      de:"Alles Selektieren/Deselektieren",
      en:"Select/Deselect All"},


    {ID:"lbl.ResetParameters",
      de:"Parameter zurücksetzen",
      en:"Reset parameters"},


    {ID:"lbl.Search",
      de:"Suchen",
      en:"Search"},

    {ID:"lbl.FilterOptions",
      de:"Filteroptionen",
      en:"Filter options"},

    {ID:"lbl.ClearFilter",
      de:"Filter löschen",
      en:"Clear filter"},

    {ID:"lbl.English",
      de:"Englisch",
      en:"English"},

    {ID:"lbl.German",
      de:"Deutsch",
      en:"German"},

    {ID:"lbl.Romanian",
      de:"Rumänisch",
      en:"Romanian"},

    {ID:"lbl.AddQuestion",
      de:"Frage hinzufügen",
      en:"Add question"},

    {ID:"lbl.ShowAnswers",
      de:"Antworten zeigen",
      en:"Show answers"},

    {ID:"lbl.HideAnswers",
      de:"Antworten verstecken",
      en:"Hide answers"},

    {ID:"lbl.question-page",
      de:"Fragen filtern und anzeigen",
      en:"Filter and list questions"},

    {ID:"lbl.create-question-page",
      de:"Frage hinzufügen",
      en:"Add Question"},

    {ID:"lbl.genenrateQuiz",
      de:"Quiz generieren",
      en:"Generate Quiz"},

    {ID:"lbl.create-user-page",
      de:"Benutzer erstellen",
      en:"Create user"},

    {ID:"lbl.logout-page",
      de:"Ausloggen",
      en:"Logout"},

    {ID:"lbl.Logout",
      de:"Ausloggen",
      en:"Logout"},

    {ID:"lbl.History",
      de:"Verlauf",
      en:"History"},

    {ID:"lbl.EditQuestion",
      de:"Frage bearbeiten",
      en:"Edit question"},

    {ID:"lbl.GenerateAQuiz",
      de:"Generiere ein Quiz",
      en:"Generate A Quiz"},

    {ID:"lbl.NumberOfQuestions",
      de:"Fragenanzahl",
      en:"Number of questions"},

    {ID:"lbl.DifficultyLevel",
      de:"Schwierigkeitsniveau",
      en:"Difficulty Level"},

    {ID:"lbl.Generate",
      de:"Generieren",
      en:"Generate"},

    {ID:"lbl.CreateUser",
      de:"Benutzer erstellen",
      en:"Create User"},

    {ID:"lbl.Username",
      de:"Benutzername",
      en:"Username"},

    {ID:"lbl.Password",
      de:"Passwort",
      en:"Password"},

    {ID:"lbl.ConfirmPassword",
      de:"Passwort bestätigen",
      en:"Confirm password"},

    {ID:"lbl.LoginSuccesful",
      de:"Sie wurden erfolgreich eingeloggt!",
      en:"Login succesful!"},

    {ID:"lbl.LogoutSuccesful",
      de:"Sie wurden erfolgreich ausgeloggt!",
      en:"You were logged out succesfully!"},
    // -----------------------------------------------------------------------------------

    //
  ];

  public GetTranslations(ElementID):string
  {
    for(let i of this.Translations)
    {
      if(i.ID===ElementID)
        return i[this.Language];
    }
  }
  constructor() { }

}
