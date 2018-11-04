/* ==================================================
   VARIABLES
   1. Colors
   2. Spaces
   3. Media queries
   4. Font family
   5. Font weight
   6. Font size
   ================================================== */

/*
   1. Colors
   ================================================== */

$gray-darken: #3E433E;
$gray-medium: #686868;
$gray-lighten: #979797;
$gray-weak: #808080;
$gray-light: #E4E4E4;
$gray-input: #BFBFBF;

$black: #000000;
$white: #FFFFFF;

$blue: #4990E2;
$red: #D0021B;
$purple: #BD10E0;
$green: #7CBB37;
$orange: #F5A623;

/*
  2. Spaces
  ================================================== */

$space-10: 10px;
$space-15: 15px;
$space-20: 20px;

/*
  3. Media queries
  ================================================== */

// A map of breakpoints.
$breakpoints: (
  xs: 576px,
  sm: 768px,
  md: 992px,
  lg: 1200px
);

// Extra small screen / phone
$screen-xs: 480px;
$screen-phone: $screen-xs;

// Small screen / tablet
$screen-sm: 768px;
$screen-tablet: $screen-sm;

// Medium screen / desktop
$screen-md: 992px;
$screen-desktop: $screen-md;

// Large screen / wide desktop
$screen-lg: 1200px;
$screen-lg-desktop: $screen-lg;

// So media queries don't overlap when required, provide a maximum
$screen-xs-max: ($screen-sm - 1);
$screen-sm-max: ($screen-md - 1);
$screen-md-max: ($screen-lg - 1);

//
// Grid system
// --------------------------------------------------

// Number of columns in the grid system
$grid-columns: 12;
// Padding, to be divided by two and applied to the left and right of all columns
$grid-gutter-width: 30px;
// Point at which the navbar stops collapsing
$grid-float-breakpoint: $screen-tablet;

// Container sizes
// --------------------------------------------------

// Small screen / tablet
$container-tablet: ((720px + $grid-gutter-width));

// Medium screen / desktop
$container-desktop: ((940px + $grid-gutter-width));

// Large screen / wide desktop
$container-lg-desktop: ((1140px + $grid-gutter-width));

/*
  4. Font family
  ================================================== */

$lato: 'Lato', sans-serif;
$open-sans: 'Open Sans', sans-serif;

/*
  5. Font weight
  ================================================== */

$regular: 400;
$bold: 700;

/*
  6. Font size
  ================================================== */

$base-text-size: 14px;
$base-text-line: 19px;
