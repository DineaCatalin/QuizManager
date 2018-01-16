import { Injectable } from '@angular/core';

@Injectable()
export class TranslateService {

  Language:string="en";

  Translations=[
    {ID:"lbl.title",
      de:"Fragen Liste",
      en:"Question List"},



    {ID:"lbl.Edit",
      de:"Verandern",
      en:"Edit"},

    {ID:"lbl.Delete",
      de:"Loschen",
      en:"Delete"},

    {ID:"lbl.Question",
      de:"Fragen",
      en:"Question"},

    {ID:"lbl.Language",
      de:"Sprache",
      en:"Question"},

    {ID:"lbl.Points",
      de:"Punktenanzahl",
      en:"Points"},
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
