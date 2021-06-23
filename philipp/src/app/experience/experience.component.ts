import { Component, OnInit } from '@angular/core';

import ExperienceJson from '../../assets/experience.json';

class Experience {
  title: string;
  desc: string;
  time: string;
  img: string;
}

@Component({
  selector: 'app-experience',
  templateUrl: './experience.component.html',
  styleUrls: ['./experience.component.scss'],
})
export class ExperienceComponent implements OnInit {
  experiences: Experience[];

  constructor() {}

  ngOnInit(): void {
    this.experiences = ExperienceJson.experiences;
  }
}
