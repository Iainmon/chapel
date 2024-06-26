class trio : writeSerializable {
  var x1;
  var x2;
  var x3;

  proc sum() do
    return x1 + x2 + x3;
}

override proc trio.serialize(writer, ref serializer) throws {
  writer.write("(", x1, " & ", x2, " & ", x3, ")");
}

var t1 = new owned trio(1, 2, 3);
var t2 = new owned trio(1.0, 2.0, 3.0);

writeln(t1);
writeln(t1.sum());

writeln(t2);
writeln(t2.sum());
