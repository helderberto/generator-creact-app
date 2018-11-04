/* ==================================================
   INPUTS
   ================================================== */

.input {
  padding: 8px;
  outline: none;
  border: 1px solid $gray-input;
  height: 40px;
  width: 100%;

  &:hover,
  &:focus {
    border-color: darken($gray-input, 20%);
    transition: all .2s ease-in-out;
  }
}
