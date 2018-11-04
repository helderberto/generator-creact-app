/* ==================================================
   MIXINS
   1. Clearfix
   2. Box sizing
   3. Grid system
   4. Border-radius
   5. Respond media queries
   ================================================== */

/*
  1. Clearfix
  ================================================== */

  @mixin clearfix() {
  &:before,
  &:after {
    content: " "; /* 1 */
    display: table; /* 2 */
  }
  &:after {
    clear: both;
  }
}

/*
  2. Fonts
  ================================================== */

@mixin font-family($font) {
  @if ($font == 'primary') {
    font-family: $lato;
  }

  @if ($font == 'secondary') {
    font-family: $open-sans;
  }
}

@mixin font-weight($weight: '') {
  @if ($weight == 'regular') {
    font-weight: $regular;
  }

  @if ($weight == 'bold') {
    font-weight: $bold;
  }
}

@mixin font($type, $size: '') {
  @if ($type == 'default') {
    @include font-family('secondary');
    font-size: $base-text-size;
    line-height: $base-text-line;
  }

  @if ($type == 'h1') {
    @include font-family('primary');
    @include font-weight('regular');
    font-size: 24px;
    line-height: 29px;

  }

  @if ($type == 'h3') {
    @include font-family('primary');
    @include font-weight('regular');
    font-size: 14px;
    line-height: 17px;
  }
}

/*
  3. Box sizing
  ================================================== */

@mixin box-sizing($box) {
  -webkit-box-sizing: $box;
  -moz-box-sizing: $box;
  box-sizing: $box;
}

/*
  4. Grid system
  ================================================== */

// Centered container element
@mixin container-fixed() {
  margin-right: auto;
  margin-left: auto;
  padding-left: ($grid-gutter-width / 2);
  padding-right: ($grid-gutter-width / 2);
  @include clearfix();
}

// Creates a wrapper for a series of columns
@mixin make-row($gutter: $grid-gutter-width) {
  margin-left: ($gutter / -2);
  margin-right: ($gutter / -2);
  @include clearfix();
}

// Generate the extra small columns
@mixin make-xs-column($columns, $gutter: $grid-gutter-width) {
  position: relative;
  float: left;
  width: percentage(($columns / $grid-columns));
  // Prevent columns from collapsing when empty
  min-height: 1px;
  // Inner gutter via padding
  padding-left: ($gutter / 2);
  padding-right: ($gutter / 2);
}

// Generate the small columns
@mixin make-sm-column($columns, $gutter: $grid-gutter-width) {
  position: relative;
  // Prevent columns from collapsing when empty
  min-height: 1px;
  // Inner gutter via padding
  padding-left: ($gutter / 2);
  padding-right: ($gutter / 2);

  // Calculate width based on number of columns available
  @media (min-width: $screen-sm) {
    float: left;
    width: percentage(($columns / $grid-columns));
  }
}

// Generate the small column offsets
@mixin make-sm-column-offset($columns) {
  @media (min-width: $screen-sm) {
    margin-left: percentage(($columns / $grid-columns));
  }
}
@mixin make-sm-column-push($columns) {
  @media (min-width: $screen-sm) {
    left: percentage(($columns / $grid-columns));
  }
}
@mixin make-sm-column-pull($columns) {
  @media (min-width: $screen-sm) {
    right: percentage(($columns / $grid-columns));
  }
}

// Generate the medium columns
@mixin make-md-column($columns, $gutter: $grid-gutter-width) {
  position: relative;
  // Prevent columns from collapsing when empty
  min-height: 1px;
  // Inner gutter via padding
  padding-left: ($gutter / 2);
  padding-right: ($gutter / 2);

  // Calculate width based on number of columns available
  @media (min-width: $screen-md) {
    float: left;
    width: percentage(($columns / $grid-columns));
  }
}

// Generate the large column offsets
@mixin make-md-column-offset($columns) {
  @media (min-width: $screen-md) {
    margin-left: percentage(($columns / $grid-columns));
  }
}
@mixin make-md-column-push($columns) {
  @media (min-width: $screen-md) {
    left: percentage(($columns / $grid-columns));
  }
}
@mixin make-md-column-pull($columns) {
  @media (min-width: $screen-md) {
    right: percentage(($columns / $grid-columns));
  }
}

// Generate the large columns
@mixin make-lg-column($columns, $gutter: $grid-gutter-width) {
  position: relative;
  // Prevent columns from collapsing when empty
  min-height: 1px;
  // Inner gutter via padding
  padding-left: ($gutter / 2);
  padding-right: ($gutter / 2);

  // Calculate width based on number of columns available
  @media (min-width: $screen-lg) {
    float: left;
    width: percentage(($columns / $grid-columns));
  }
}

// Generate the large column offsets
@mixin make-lg-column-offset($columns) {
  @media (min-width: $screen-lg) {
    margin-left: percentage(($columns / $grid-columns));
  }
}
@mixin make-lg-column-push($columns) {
  @media (min-width: $screen-lg) {
    left: percentage(($columns / $grid-columns));
  }
}
@mixin make-lg-column-pull($columns) {
  @media (min-width: $screen-lg) {
    right: percentage(($columns / $grid-columns));
  }
}

/*
  4. Border-radius
  ================================================== */

@mixin border-radius($pixel...) {
  border-radius: $pixel;
}

/*
  5. Respond media queries
  ================================================== */

//
//  RESPOND ABOVE
//––––––––––––––––––––––––––––––––––––––––––––––––––

// @include respond-above(sm) {}
@mixin respond-above($breakpoint) {

  // If the breakpoint exists in the map.
  @if map-has-key($breakpoints, $breakpoint) {

    // Get the breakpoint value.
    $breakpoint-value: map-get($breakpoints, $breakpoint);

    // Write the media query.
    @media (min-width: $breakpoint-value) {
      @content;
    }

  // If the breakpoint doesn't exist in the map.
  } @else {

    // Log a warning.
    @warn 'Invalid breakpoint: #{$breakpoint}.';
  }
}


//
//  RESPOND BELOW
//––––––––––––––––––––––––––––––––––––––––––––––––––

// @include respond-below(sm) {}
@mixin respond-below($breakpoint) {

  // If the breakpoint exists in the map.
  @if map-has-key($breakpoints, $breakpoint) {

    // Get the breakpoint value.
    $breakpoint-value: map-get($breakpoints, $breakpoint);

    // Write the media query.
    @media (max-width: ($breakpoint-value - 1)) {
      @content;
    }

  // If the breakpoint doesn't exist in the map.
  } @else {

    // Log a warning.
    @warn 'Invalid breakpoint: #{$breakpoint}.';
  }
}


//
//  RESPOND MEDIA QUERIES
//––––––––––––––––––––––––––––––––––––––––––––––––––

// @include respond-between(sm, md) {}
@mixin respond-between($lower, $upper) {

  // If both the lower and upper breakpoints exist in the map.
  @if map-has-key($breakpoints, $lower) and map-has-key($breakpoints, $upper) {

    // Get the lower and upper breakpoints.
    $lower-breakpoint: map-get($breakpoints, $lower);
    $upper-breakpoint: map-get($breakpoints, $upper);

    // Write the media query.
    @media (min-width: $lower-breakpoint) and (max-width: ($upper-breakpoint - 1)) {
      @content;
    }

  // If one or both of the breakpoints don't exist.
  } @else {

    // If lower breakpoint is invalid.
    @if (map-has-key($breakpoints, $lower) == false) {

      // Log a warning.
      @warn 'Your lower breakpoint was invalid: #{$lower}.';
    }

    // If upper breakpoint is invalid.
    @if (map-has-key($breakpoints, $upper) == false) {

      // Log a warning.
      @warn 'Your upper breakpoint was invalid: #{$upper}.';
    }
  }
}
