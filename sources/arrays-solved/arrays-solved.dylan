Module: arrays-solved

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
  assert-equal(#"black", chess-board[0, 0]);
  assert-equal(#"white", chess-board[2, 3]);
  // The function `rank` returns the number of dimensions of the array.
  assert-equal(2, rank(chess-board));
  // The function `dimensions` returns the dimensions of an array.
  assert-equal(#(8, 8), dimensions(chess-board));
  // The generic function `size` returns the total number of elements in an
  // array.
  assert-equal(64, size(chess-board));
end test;

define test test-make-your-own-array ()
  // Make your own array that satisfies the test.
  let color-cube = make(<array>, dimensions: #(3, 3, 3));
  // You may need to modify your array after you create it.
  color-cube[0, 1, 2] := #"red";
  color-cube[2, 1, 0] := #"white";

  // You can access array elements with the `aref` function call or with array
  // indexing syntax.
  assert-equal(#"red",   aref(color-cube, 0, 1, 2));
  assert-equal(#"white", aref(color-cube, 2, 1, 0));
  assert-equal(#"white", color-cube[2, 1, 0]);
end test;

run-test-application();
