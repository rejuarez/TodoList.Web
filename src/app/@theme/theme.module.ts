import { CommonModule } from '@angular/common';
import { ModuleWithProviders, NgModule } from '@angular/core';
import { NbEvaIconsModule } from '@nebular/eva-icons';
import { NbActionsModule, NbButtonModule, NbContextMenuModule, NbIconModule, NbLayoutModule, NbMenuModule, NbSearchModule, NbSelectModule, NbSidebarModule, NbThemeModule, NbUserModule } from '@nebular/theme';
import { HeaderComponent } from './components/header/header.component';
import { CORPORATE_THEME } from './styles/theme.corporate';
import { COSMIC_THEME } from './styles/theme.cosmic';
import { DARK_THEME } from './styles/theme.dark';
// import {
//   FooterComponent,
//   HeaderComponent,
//   SearchInputComponent,
//   TinyMCEComponent,
// } from './components';
// import {
//   CapitalizePipe,
//   PluralPipe,
//   RoundPipe,
//   TimingPipe,
//   NumberWithCommasPipe,
// } from './pipes';
// import {
//   OneColumnLayoutComponent,
//   ThreeColumnsLayoutComponent,
//   TwoColumnsLayoutComponent,
// } from './layouts';
import { DEFAULT_THEME } from './styles/theme.default';


const NB_MODULES = [
  NbLayoutModule,
  NbMenuModule,
  NbUserModule,
  NbActionsModule,
  NbSearchModule,
  NbSidebarModule,
  NbContextMenuModule,
  NbButtonModule,
  NbSelectModule,
  NbIconModule,
  NbEvaIconsModule,
];
const COMPONENTS = [
  HeaderComponent,
  // FooterComponent,
  // SearchInputComponent,
  // TinyMCEComponent,
  // OneColumnLayoutComponent,
  // ThreeColumnsLayoutComponent,
  // TwoColumnsLayoutComponent,
];
const PIPES = [
  // CapitalizePipe,
  // PluralPipe,
  // RoundPipe,
  // TimingPipe,
  // NumberWithCommasPipe,
];

@NgModule({
  imports: [CommonModule, ...NB_MODULES],
  exports: [CommonModule, ...PIPES, ...COMPONENTS],
  declarations: [...COMPONENTS, ...PIPES],
})
export class ThemeModule {
  static forRoot(): ModuleWithProviders {
    return <ModuleWithProviders>{
      ngModule: ThemeModule,
      providers: [
        ...NbThemeModule.forRoot(
          {
            name: 'dark',
          },
          [DEFAULT_THEME, COSMIC_THEME, CORPORATE_THEME, DARK_THEME],
        ).providers,
      ],
    };
  }
}
