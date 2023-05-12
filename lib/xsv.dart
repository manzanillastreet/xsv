/*
usage
xsv.csvFormat([{foo: "1", bar: "2"}]); // "foo,bar\n1,2"
xsv.tsvFormat([{foo: "1", bar: "2"}]); // "foo\tbar\n1\t2"
*/

class xsv {
  static csvParse(String csv) {
    return parse(csv, ",");
  }
  static tsvParse(String tsv) {
    return parse(tsv, "\t");
  }
  static csvFormat(List<Map<String, String>> data) {
    return format(data, ",");
  }
  static tsvFormat(List<Map<String, String>> data) {
    return format(data, "\t");
  }
  
  static parse(String csv, String delimiter) {
    var lines = csv.split("\n");
    var columns = lines[0].split(delimiter);
    var result = [];
    for (var i = 1; i < lines.length; i++) {
      var line = lines[i];
      var values = line.split(delimiter);
      var obj = {};
      for (var j = 0; j < columns.length; j++) {
        obj[columns[j]] = values[j];
      }
      result.add(obj);
    }
    return {"columns": columns, "data": result};
  }

  static format(List<Map<String, String>> data, String delimiter) {
    var columns = data[0].keys.toList();
    var result = [columns.join(delimiter)];
    for (var i = 0; i < data.length; i++) {
      var obj = data[i];
      var values = [];
      for (var j = 0; j < columns.length; j++) {
        values.add(obj[columns[j]]);
      }
      result.add(values.join(delimiter));
    }
    return result.join("\n");
  }
}