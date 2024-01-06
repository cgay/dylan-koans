Module: dylan-user
Synopsis: Module and library definition for simple executable application

define library builtin-macros-solved
  use common-dylan;
  use io, import: { format-out };
  use testworks;
end library;

define module builtin-macros-solved
  use common-dylan;
  use format-out;
  use testworks;
end module;
