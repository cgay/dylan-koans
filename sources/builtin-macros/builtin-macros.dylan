Module: builtin-macros

// This library teaches about a few of Dylan's built-in macros. There are many
// more built-in macros, some of which are shown in other Dylan Koans. See
// https://opendylan.org/books/drm/Built-In_Macros_and_Special_Definitions for
// the full list.

// A unique value to mark the expressions you should fill in.
// This prevents compiler errors, but assertions that use it will fail.
define constant TODO = list("TODO: fill this in");

// The := operator (technically a function macro) is used to assign values to
// places. A place is a concept; it is an abstract "somewhere" where a value is
// stored.
define test test-setters ()
  // A place may be a variable.
  let a = 10;
  a := 1000;
  expect-equal(TODO, a);

  // A place may be an element of a collection.
  let b = list(1, 20, 30, 40, 50);
  b[0] := 10;
  expect-equal(TODO, b);

  // A place may be a function that has a corresponding -setter (in this case
  // first-setter).
  first(b) := 100;
  expect-equal(TODO, b);

  // A place may be a character in a string. (We copy the string because
  // modifying a literal string is undefined behavior.)
  let c = copy-sequence("I am Tom.");
  c[5] := 'B';
  c[7] := 'b';
  expect-equal(TODO, c);
end test;

// `select` is a built-in macro not unlike C or Go's "switch" statement.  It
// compares the input against a set of values and runs the code for the branch
// where a match is found.
define test test-select ()
  expect-equal(TODO,    select (4)
                          3 => #"three";
                          4 => #"four";
                          5 => #"five";
                          otherwise => #"none";
                        end);

  // `select` can match a set of keys.
  expect-equal(TODO,    select (4)
                          0, 2, 4, 6, 8 => #"even";
                          1, 3, 5, 7, 9 => #"odd";
                        end);

  // The default comparison test is == but you can use any test function.
  // (We use \ when referencing infix operators as functions.)
  expect-equal(TODO, select ("bar" by \=)
                       "Bar" => 1;
                       "bar" => 2;
                       "BAR" => 3;
                     end);

  // What if none of the expressions match?
  expect-condition(TODO,  select ("bar")
                            1 = 2 => 3;
                          end);
end test;

// `case` is a built-in macro that executes the branch for the first expression
// that returns a true value.
define test test-case ()
  // Which is the FIRST expression that matches?
  expect-equal(TODO,  case
                        3 == 3.0  => "foo";
                        3 = 3.0   => "bar";
                        3 = 3     => "baz";
                        otherwise => "quux";
                      end);

  // What if none of the expressions match?
  expect-equal(TODO, case
                       'a' = 'b' => 'c';
                     end);
end test;

run-test-application();
