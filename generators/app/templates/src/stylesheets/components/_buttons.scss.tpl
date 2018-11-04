/* ==================================================
   BUTTONS
   ================================================== */

.button {
  @include font-family('primary');
  @include font-weight('regular');
  line-height: 1;
  display: inline-block;
  cursor: pointer;
  transition: all .2s ease-in-out;

  & {
    &__rounded {
      @include border-radius(100px);
      color: $gray-medium;
      border: 1px solid $gray-medium;
      padding: 6px 18px;
      text-transform: uppercase;
      background-color: $white;

      &:active,
      &:hover {
        background-color: $gray-medium;
        color: $white;
      }
    }

    &__shadow {
      font-size: 18px;
      color: $white;
      padding: 12px 32px;
      background-color: rgba(0,0,0,0.50);
      border: 1px solid $white;

      &:active,
      &:hover {
        background-color: rgba(0,0,0,0.30);
      }
    }

    &__default {
      font-size: 16px;
      line-height: 19px;
      color: $white;
      background-color: $blue;
      padding: 16px 30px;
      text-transform: uppercase;
      border: none;

      &:active,
      &:hover {
        background-color: darken($blue, 20%);
      }
    }
  }
}
