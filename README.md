# XSV : parse csv/tsv

<br>
<br>

## Example use
```dart
import 'package:xsv/xsv.dart' as xsv;

void main() {
  final csv = 'foo,bar\n1,2';
  final tsv = 'foo\tbar\n1\t2';

  print(xsv.csvParse(csv));
  // [{foo: "1", bar: "2"}, columns: ["foo", "bar"]]

  print(xsv.tsvParse(tsv));
  // [{foo: "1", bar: "2"}, columns: ["foo", "bar"]]

  print(xsv.csvFormat([{foo: "1", bar: "2"}]));
  // foo,bar\n1,2

  print(xsv.tsvFormat([{foo: "1", bar: "2"}]));
  // foo\tbar\n1\t2
}
```
<br>

## Testing
```bash
dart test test/xsv_test.dart
```

## Todo
- [x] csvParse
- [x] tsvParse
- [x] csvFormat
- [x] tsvFormat
- [] csvParseRows
- [] tsvParseRows
- [] csvFormatRows
- [] tsvFormatRows
- [] csvParseStream
- [] tsvParseStream
- [] csvFormatStream
- [] tsvFormatStream

<br>

## Author
- [asyong](https://github.com/motherfogger)



## license
MIT

<br>

## reference
- [xsv, csv-parse, dart]


