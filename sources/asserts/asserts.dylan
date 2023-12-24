Module: asserts

// Welcome to the Dylan Koans.
// May the code stored here influence your enlightenment as a programmer.

// In order to progress, fill in the blanks, denoted by ____ in the source code.
// Sometimes, you will be asked to provide values that are equal to something.

define test test-fill-in-the-blanks ()
  assert-equal(____, 2);
  assert-equal(____, 3.14);
  assert-equal(____, "Hello World");
end test;

// Sometimes, you will be asked to say whether something is true or false,
// In Dylan, the canonical values for truth and falsehood are #t and #f.

define test test-assert-true ()
  assert-true(____);
end test;

define test test-assert-false ()
  assert-false(____);
end test;

// Insert the right assertions to make this test pass.
define test test-true-or-false ()
  assert-____(34 == 34);
  assert-____(19 == 78);
end test;

// Since Dylan source code is not case sensitive (except in string literals)
// you can type it in uppercase or lowercase. (It's traditional to type it in
// lowercase though.)

define test test-upcase-downcase ()
  // Try inserting a lowercase #t here.
  assert-equal(____, #T);
  // Try inserting an uppercase #F here.
  assert-equal(____, #f);
end test;

// Sometimes, you will be asked to provide a part of an expression that must be
// either true or false.

define test test-a-true-assertion ()
  assert-true(____ == 2 + 2);
end test;

define test test-a-false-assertion ()
  assert-false(____ == 2 + 2);
end test;

run-test-application();
