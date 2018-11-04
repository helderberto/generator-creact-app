/* ==================================================
   DEFAULT
   ================================================== */

*,
*:before,
*:after {
  @include box-sizing(border-box);
}

body {
  @include font('default');
  background-color: $white;
}

a {
  text-decoration: none;
  transition: all .3s ease-in-out;
}
