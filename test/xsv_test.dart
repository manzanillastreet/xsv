import 'package:xsv/xsv.dart';
import 'package:test/test.dart';

void main() {
  test('csv-parse-columns', () {
    // xsv.csvParse("foo,bar\n1,2");
    var result = xsv.csvParse("foo,bar\n1,2");
    expect(result["columns"], ["foo", "bar"]);
  });
  test('csv-parse-data', () {
    // test xsv.csvParse("foo,bar\n1,2"); // [{foo: "1", bar: "2"}, columns: ["foo", "bar"]]
    var result = xsv.csvParse("foo,bar\n1,2");
    expect(result["data"], [{"foo": "1", "bar": "2"}]);
  });

// test xsv.csvParse("foo,bar\n1,2"); // [{foo: "1", bar: "2"}, columns: ["foo", "bar"]]
  test('csv-parse', () {
    var result = xsv.csvParse("foo,bar\n1,2");
    expect(result, {"columns": ["foo", "bar"], "data": [{"foo": "1", "bar": "2"}]});
  });

// test xsv.tsvParse("foo\tbar\n1\t2"); // [{foo: "1", bar: "2"}, columns: ["foo", "bar"]]
  test('tsv-parse', () {
    var result = xsv.tsvParse("foo\tbar\n1\t2");
    expect(result, {"columns": ["foo", "bar"], "data": [{"foo": "1", "bar": "2"}]});
  });

test('csv-format', () {
// test xsv.csvFormat([{foo: "1", bar: "2"}]); // "foo,bar\n1,2"
  var result = xsv.csvFormat([{"foo": "1", "bar": "2"}]);
  expect(result, "foo,bar\n1,2");
});

test('tsv-format', () {
// test xsv.tsvFormat([{foo: "1", bar: "2"}]); // "foo\tbar\n1\t2"
  var result = xsv.tsvFormat([{"foo": "1", "bar": "2"}]);
  expect(result, "foo\tbar\n1\t2");
});
}
