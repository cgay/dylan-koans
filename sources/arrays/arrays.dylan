Module: arrays

define test test-basic-array-stuff ()
  // We make an 8x8 array and then fill it with a checkerboard pattern.
  let chess-board = make(<array>, dimensions: #(8, 8));
  for (x from 0 below 8)
    for (y from 0 below 8)
      chess-board[x, y]
        := if (even?(x + y)) #"black" else #"white" end;
    end;
  end;
  assert-instance?(<array>, chess-board);
  assert-equal(TODO, chess-board[0, 0]);
  assert-equal(TODO, chess-board[2, 3]);
  // The function `rank` returns the number of dimensions of the array.
  assert-equal(TODO, rank(chess-board));
  // The function `dimensions` returns the dimensions of an array.
  assert-equal(TODO, dimensions(chess-board));
  // The generic function `size` returns the total number of elements in an
  // array.
  assert-equal(TODO, size(chess-board));
  // "Dot notation" is just syntactic sugar for calling a unary function.
  assert-equal(chess-board.size, size(TODO));
end test;

define test test-make-your-own-array ()
  // Make your own array that satisfies the test.
  let color-cube = TODO;
  // You may need to modify your array after you create it.
  color-cube[TODO, TODO, TODO] := #"red";
  color-cube[TODO, TODO, TODO] := #"white";

  // You can access array elements with the `aref` function call or with array
  // indexing syntax.
  assert-equal(#"red",   aref(color-cube, 0, 1, 2));
  assert-equal(#"white", aref(color-cube, 2, 1, 0));
  assert-equal(#"white", color-cube[2, 1, 0]);
end test;

run-test-application();
