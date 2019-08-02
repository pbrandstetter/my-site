import { async, ComponentFixture, TestBed } from '@angular/core/testing';

import { CodingComponent } from './coding.component';
import { RouterTestingModule } from '@angular/router/testing';
import { MusicComponent } from '../music/music.component';
import { routes } from '../app-routing.module';
import { Router } from '@angular/router';

describe('CodingComponent', () => {
  let component: CodingComponent;
  let fixture: ComponentFixture<CodingComponent>;
  let router: Router;
  let location: Location;

  beforeEach(async(() => {
    TestBed.configureTestingModule({
      declarations: [ CodingComponent ]
    })
    .compileComponents();
  }));

  beforeEach(() => {
    TestBed.configureTestingModule({
      imports: [RouterTestingModule.withRoutes(routes)],
      declarations: [
        CodingComponent,
        MusicComponent
      ]
    });
    fixture = TestBed.createComponent(CodingComponent);
    location = TestBed.get(Location);
    router = TestBed.get(Router);
    component = fixture.componentInstance;
    fixture.detectChanges();
  });

  xit('should create', () => {
    expect(component).toBeTruthy();
  });

  it('should redirect to music when clicking on the right side', () => {
    // https://codecraft.tv/courses/angular/unit-testing/routing/
    fixture.detectChanges();
    const a = fixture.debugElement.nativeElement.querySelector('.musician');
    a.click();
    expect(location.pathname).toBe('/music');
    router.initialNavigation();
  });
});
