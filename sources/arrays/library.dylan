Module: dylan-user
Synopsis: Module and library definition for simple executable application

define library arrays
  use common-dylan;
  use io, import: { format-out };
  use testworks;
end library;

define module arrays
  use common-dylan;
  use format-out;
  use testworks;
end module;
