`unicode_data`
==============

Erlang source code based on the Elixir 1.4.0 source code for handling
[unicode](https://github.com/elixir-lang/elixir/tree/master/lib/elixir/unicode).

The `unicode.ex` module was converted to Erlang source code, using the
[ex2erl](https://github.com/okeuday/reltool_util/blob/master/ex2erl) script to
examine the generated source code.

The Erlang script `create_module.erl` generates Erlang source code for the
module `unicode_data` which provides a subset of the functionality found
in the Elixir `unicode.ex` file (specifically the functionality found
in the `Elixir.String.Unicode` Erlang module).

However, a List data type was used instead of Binaries, to keep all temporary
data on the Erlang process heap.

The Unicode version provided on the command line to the `create_module.erl`
script is added to the Erlang module output in the `vsn` data, with the
current timestamp as a suffix on the Erlang module version.

How To Use
----------

    ./create_module.erl 9.0.0 > unicode_data.erl
    erlc unicode_data.erl

